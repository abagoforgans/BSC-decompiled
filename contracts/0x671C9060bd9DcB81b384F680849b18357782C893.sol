contract main {




// =====================  Runtime code  =====================


const controllerFeeUL = 300

const controllerFeeMax = 10000

const buyBackRateMax = 10000

const wbnbAddress = 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c

const buyBackRateUL = 800

const entranceFeeFactorLL = 9950

const entranceFeeFactorMax = 10000


address owner;
uint256 stor1;
uint8 stor2;
uint8 stor2; offset 8
address wantAddress; offset 16
address earnedAddress;
uint32 stor4;
address uniRouterAddress;
uint256 stor4;
uint32 stor5;
address autoFarmAddress;
uint256 stor5;
address aUTOAddress;
uint32 stor7;
address govAddress;
uint256 stor7;
uint8 stor8; offset 160
uint128 stor8; offset 160
address devAddress;
uint256 lastEarnBlock;
uint256 sharesTotal;
uint256 controllerFee;
uint256 buyBackRate;
address buyBackAddress;
uint256 entranceFeeFactor;
array of struct earnedToAUTOPath;

function onlyGov() payable {
    return bool(uint8(stor8.field_160))
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

function devAddress() payable {
    return devAddress
}

function sharesTotal() payable {
    return sharesTotal
}

function govAddress() payable {
    return address(govAddress)
}

function paused() payable {
    return bool(uint8(stor2.field_0))
}

function earnedToAUTOPath(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < earnedToAUTOPath.length
    return earnedToAUTOPath[arg1].field_0
}

function uniRouterAddress() payable {
    return address(uniRouterAddress)
}

function buyBackAddress() payable {
    return buyBackAddress
}

function controllerFee() payable {
    return controllerFee
}

function owner() payable {
    return owner
}

function isAutoComp() payable {
    return bool(uint8(stor2.field_8))
}

function earnedAddress() payable {
    return earnedAddress
}

function wantAddress() payable {
    return wantAddress
}

function autoFarmAddress() payable {
    return address(autoFarmAddress)
}

function _fallback() payable {
    revert
}

function setGov(address arg1) payable {
    require calldata.size - 4 >= 32
    if address(govAddress) != msg.sender:
        revert with 0, '!gov'
    address(govAddress) = arg1
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setUniRouterAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    if address(govAddress) != msg.sender:
        revert with 0, '!gov'
    address(uniRouterAddress) = arg1
}

function setOnlyGov(bool arg1) payable {
    require calldata.size - 4 >= 32
    if address(govAddress) != msg.sender:
        revert with 0, '!gov'
    Mask(96, 0, stor8.field_160) = Mask(96, 0, arg1)
}

function pause() payable {
    if address(govAddress) != msg.sender:
        revert with 0, 'Not authorised'
    if uint8(stor2.field_0):
        revert with 0, 'Pausable: paused'
    uint8(stor2.field_0) = 1
    emit Paused(msg.sender);
}

function setControllerFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if address(govAddress) != msg.sender:
        revert with 0, 'Not authorised'
    if arg1 > 300:
        revert with 0, 'too high'
    controllerFee = arg1
}

function setbuyBackRate(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if address(govAddress) != msg.sender:
        revert with 0, 'Not authorised'
    if buyBackRate > 800:
        revert with 0, 'too high'
    buyBackRate = arg1
}

function unpause() payable {
    if address(govAddress) != msg.sender:
        revert with 0, 'Not authorised'
    if not uint8(stor2.field_0):
        revert with 0, 'Pausable: not paused'
    uint8(stor2.field_0) = 0
    emit Unpaused(msg.sender);
}

function setEntranceFeeFactor(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if address(govAddress) != msg.sender:
        revert with 0, 'Not authorised'
    if arg1 <= 9950:
        revert with 0, '!safe - too low'
    if arg1 > 10000:
        revert with 0, '!safe - too high'
    entranceFeeFactor = arg1
}

function wantLockedTotal() payable {
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function wrapBNB() payable {
    if address(govAddress) != msg.sender:
        revert with 0, 'Not authorised'
    if eth.balance(this.address) > 0:
        require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
        call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.0xd0e30db0 with:
           value eth.balance(this.address) wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
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
    if address(govAddress) != msg.sender:
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
    mem[324 len 0] = 0
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

function deposit(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if uint8(stor2.field_0):
        revert with 0, 'Pausable: paused'
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
    if ext_code.size(wantAddress) <= 0:
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
                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[402 len 14],
                        0,
                        mem[420 len 4]
        require ext_code.size(wantAddress)
        staticcall wantAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= 0:
            if sharesTotal + arg2 < sharesTotal:
                revert with 0, 'SafeMath: addition overflow'
            sharesTotal += arg2
            return arg2
        require ext_code.size(wantAddress)
        staticcall wantAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not arg2:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if sharesTotal + (0 / ext_call.return_data[0] / 10000) < sharesTotal:
                revert with 0, 'SafeMath: addition overflow'
            sharesTotal += 0 / ext_call.return_data[0] / 10000
            return (0 / ext_call.return_data[0] / 10000)
        require arg2
        if arg2 * sharesTotal / arg2 != sharesTotal:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[393 len 23], 0, mem[420 len 4]
        if not arg2 * sharesTotal:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if sharesTotal + (0 / ext_call.return_data[0] / 10000) < sharesTotal:
                revert with 0, 'SafeMath: addition overflow'
            sharesTotal += 0 / ext_call.return_data[0] / 10000
            return (0 / ext_call.return_data[0] / 10000)
        require arg2 * sharesTotal
        if arg2 * sharesTotal * entranceFeeFactor / arg2 * sharesTotal != entranceFeeFactor:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[393 len 23], 0, mem[420 len 4]
    else:
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
        require ext_code.size(wantAddress)
        staticcall wantAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= 0:
            if sharesTotal + arg2 < sharesTotal:
                revert with 0, 'SafeMath: addition overflow'
            sharesTotal += arg2
            return arg2
        require ext_code.size(wantAddress)
        staticcall wantAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not arg2:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if sharesTotal + (0 / ext_call.return_data[0] / 10000) < sharesTotal:
                revert with 0, 'SafeMath: addition overflow'
            sharesTotal += 0 / ext_call.return_data[0] / 10000
            return (0 / ext_call.return_data[0] / 10000)
        require arg2
        if arg2 * sharesTotal / arg2 != sharesTotal:
            revert with 0, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[ceil32(return_data.size) + 394 len 31]
        if not arg2 * sharesTotal:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if sharesTotal + (0 / ext_call.return_data[0] / 10000) < sharesTotal:
                revert with 0, 'SafeMath: addition overflow'
            sharesTotal += 0 / ext_call.return_data[0] / 10000
            return (0 / ext_call.return_data[0] / 10000)
        require arg2 * sharesTotal
        if arg2 * sharesTotal * entranceFeeFactor / arg2 * sharesTotal != entranceFeeFactor:
            revert with 0, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[ceil32(return_data.size) + 394 len 31]
    ('eq', ('div', ('mul', ('param', 'arg2'), ('stor', ('name', 'sharesTotal', 10)), ('stor', ('name', 'entranceFeeFactor', 14))), ('mul', ('param', 'arg2'), ('stor', ('name', 'sharesTotal', 10)))), ('stor', ('name', 'entranceFeeFactor', 14)))
    if ext_call.return_data[0] <= 0:
        revert with 0, 'SafeMath: division by zero'
    require ext_call.return_data[0]
    if sharesTotal + (arg2 * sharesTotal * entranceFeeFactor / ext_call.return_data[0] / 10000) < sharesTotal:
        revert with 0, 'SafeMath: addition overflow'
    sharesTotal += arg2 * sharesTotal * entranceFeeFactor / ext_call.return_data[0] / 10000
    return (arg2 * sharesTotal * entranceFeeFactor / ext_call.return_data[0] / 10000)
}

function convertTokenToWBNB(address[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    if msg.sender == address(govAddress):
        require 0 < arg1.length
        _3 = mem[128]
        require arg1.length - 1 < arg1.length
        if arg1.length > 3:
            revert with 0, '_path length too long'
        if mem[140 len 20] == aUTOAddress:
            revert with 0, 'Cannot sell AUTO'
        if mem[140 len 20] == 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
            revert with 0, 'Cannot sell WBNB'
        if mem[(32 * arg1.length - 1) + 140 len 20] != 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
            revert with 0, 'Must end with WBNB'
        if mem[(32 * arg1.length - 1) + 140 len 20] == aUTOAddress:
            revert with 0, 'Cannot end with AUTO'
        require ext_code.size(mem[140 len 20])
        staticcall mem[140 len 20].0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > 0:
            require ext_code.size(mem[140 len 20])
            staticcall mem[140 len 20].0xdd62ed3e with:
                    gas gas_remaining wei
                   args address(this.address), address(uniRouterAddress)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            mem[(32 * arg1.length) + 128] = 68
            if eth.balance(this.address) < 0:
                revert with 0, 
                            32,
                            38,
                            0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                            mem[(32 * arg1.length) + 398 len 26]
            if ext_code.size(address(_3)) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[(32 * arg1.length) + 292 len 64] = approve(address rg1, uint256 rg2), Mask(224, 0, stor4), uint32(stor4), Mask(224, 31, ext_call.return_data[0]) >> 31
            mem[(32 * arg1.length) + 356 len 0] = 0
            call address(_3) with:
               funct uint32(stor4)
                 gas gas_remaining wei
                args Mask(224, 31, ext_call.return_data[0]) << 225, mem[(32 * arg1.length) + 356 len 4]
            if not return_data.size:
                if not ext_call.success:
                    if arg1.length > 0:
                        revert with memory
                          from 128
                           len arg1.length
                    revert with 0, 'SafeERC20: low-level call failed'
                if arg1.length > 0:
                    require arg1.length >= 32
                    if not mem[128]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * arg1.length) + 402 len 22]
                mem[(32 * arg1.length) + 488 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                require ext_code.size(address(uniRouterAddress))
                call address(uniRouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 60, arg1.length, call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + floor32(arg1.length) + 488 len (32 * arg1.length) - floor32(arg1.length)]
            else:
                mem[(32 * arg1.length) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[(32 * arg1.length) + 324]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * arg1.length) + ceil32(return_data.size) + 403 len 22]
                mem[(32 * arg1.length) + ceil32(return_data.size) + 489 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                require ext_code.size(address(uniRouterAddress))
                call address(uniRouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 60, arg1.length, call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + ceil32(return_data.size) + floor32(arg1.length) + 489 len (32 * arg1.length) - floor32(arg1.length)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    else:
        if devAddress != msg.sender:
            revert with 0, '!authorised'
        require 0 < arg1.length
        _11 = mem[128]
        require arg1.length - 1 < arg1.length
        if arg1.length > 3:
            revert with 0, '_path length too long'
        if mem[140 len 20] == aUTOAddress:
            revert with 0, 'Cannot sell AUTO'
        if mem[140 len 20] == 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
            revert with 0, 'Cannot sell WBNB'
        if mem[(32 * arg1.length - 1) + 140 len 20] != 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
            revert with 0, 'Must end with WBNB'
        if mem[(32 * arg1.length - 1) + 140 len 20] == aUTOAddress:
            revert with 0, 'Cannot end with AUTO'
        require ext_code.size(mem[140 len 20])
        staticcall mem[140 len 20].0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > 0:
            require ext_code.size(mem[140 len 20])
            staticcall mem[140 len 20].0xdd62ed3e with:
                    gas gas_remaining wei
                   args address(this.address), address(uniRouterAddress)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            mem[(32 * arg1.length) + 128] = 68
            if eth.balance(this.address) < 0:
                revert with 0, 
                            32,
                            38,
                            0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                            mem[(32 * arg1.length) + 398 len 26]
            if ext_code.size(address(_11)) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[(32 * arg1.length) + 292 len 64] = approve(address rg1, uint256 rg2), Mask(224, 0, stor4), uint32(stor4), Mask(224, 31, ext_call.return_data[0]) >> 31
            mem[(32 * arg1.length) + 356 len 0] = 0
            call address(_11) with:
               funct uint32(stor4)
                 gas gas_remaining wei
                args Mask(224, 31, ext_call.return_data[0]) << 225, mem[(32 * arg1.length) + 356 len 4]
            if not return_data.size:
                if not ext_call.success:
                    if arg1.length > 0:
                        revert with memory
                          from 128
                           len arg1.length
                    revert with 0, 'SafeERC20: low-level call failed'
                if arg1.length > 0:
                    require arg1.length >= 32
                    if not mem[128]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * arg1.length) + 402 len 22]
                mem[(32 * arg1.length) + 488 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                require ext_code.size(address(uniRouterAddress))
                call address(uniRouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 60, arg1.length, call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + floor32(arg1.length) + 488 len (32 * arg1.length) - floor32(arg1.length)]
            else:
                mem[(32 * arg1.length) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[(32 * arg1.length) + 324]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * arg1.length) + ceil32(return_data.size) + 403 len 22]
                mem[(32 * arg1.length) + ceil32(return_data.size) + 489 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                require ext_code.size(address(uniRouterAddress))
                call address(uniRouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 60, arg1.length, call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + ceil32(return_data.size) + floor32(arg1.length) + 489 len (32 * arg1.length) - floor32(arg1.length)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
}

function earn() payable {
    if uint8(stor2.field_0):
        revert with 0, 'Pausable: paused'
    if not uint8(stor2.field_8):
        revert with 0, '!isAutoComp'
    if uint8(stor8.field_160):
        if address(govAddress) != msg.sender:
            revert with 0, 'Not authorised'
    if eth.balance(this.address) > 0:
        require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
        call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.0xd0e30db0 with:
           value eth.balance(this.address) wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(earnedAddress)
    staticcall earnedAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        if buyBackRate > 0:
            require ext_code.size(earnedAddress)
            staticcall earnedAddress.0xdd62ed3e with:
                    gas gas_remaining wei
                   args address(this.address), address(uniRouterAddress)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
            if ext_code.size(earnedAddress) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[260 len 64] = approve(address rg1, uint256 rg2), Mask(224, 0, stor4), uint32(stor4), Mask(224, 31, ext_call.return_data[0]) >> 31
            mem[324 len 0] = 0
            call earnedAddress with:
               funct uint32(stor4)
                 gas gas_remaining wei
                args Mask(224, 31, ext_call.return_data[0]) << 225, mem[324 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address rg1, uint256 rg2), Mask(224, 0, stor4), uint32(stor4), 2 * ext_call.return_data[0]
                if not approve(address rg1, uint256 rg2), Mask(224, 0, stor4):
                    revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                if not earnedToAUTOPath.length:
                    require ext_code.size(address(uniRouterAddress))
                    call address(uniRouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], 0, 160, buyBackAddress, block.timestamp + 60, earnedToAUTOPath.length
                else:
                    mem[456] = address(earnedToAUTOPath.field_0)
                    idx = 456
                    s = 0
                    while (32 * earnedToAUTOPath.length) + 456 > idx + 32:
                        mem[idx + 32] = earnedToAUTOPath[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    require ext_code.size(address(uniRouterAddress))
                    call address(uniRouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], 0, 160, buyBackAddress, block.timestamp + 60, earnedToAUTOPath.length, mem[456 len 32 * earnedToAUTOPath.length]
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
                if not earnedToAUTOPath.length:
                    require ext_code.size(address(uniRouterAddress))
                    call address(uniRouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], 0, 160, buyBackAddress, block.timestamp + 60, earnedToAUTOPath.length
                else:
                    mem[ceil32(return_data.size) + 457] = address(earnedToAUTOPath.field_0)
                    idx = ceil32(return_data.size) + 457
                    s = 0
                    while ceil32(return_data.size) + (32 * earnedToAUTOPath.length) + 457 > idx + 32:
                        mem[idx + 32] = earnedToAUTOPath[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    require ext_code.size(address(uniRouterAddress))
                    call address(uniRouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], 0, 160, buyBackAddress, block.timestamp + 60, earnedToAUTOPath.length, mem[ceil32(return_data.size) + 457 len 32 * earnedToAUTOPath.length]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if ext_call.return_data[0] > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
    else:
        if controllerFee <= 0:
            if buyBackRate > 0:
                require ext_code.size(earnedAddress)
                staticcall earnedAddress.0xdd62ed3e with:
                        gas gas_remaining wei
                       args address(this.address), address(uniRouterAddress)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                if ext_code.size(earnedAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[260 len 64] = approve(address rg1, uint256 rg2), Mask(224, 0, stor4), uint32(stor4), Mask(224, 31, ext_call.return_data[0]) >> 31
                mem[324 len 0] = 0
                call earnedAddress with:
                   funct uint32(stor4)
                     gas gas_remaining wei
                    args Mask(224, 31, ext_call.return_data[0]) << 225, mem[324 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with approve(address rg1, uint256 rg2), Mask(224, 0, stor4), uint32(stor4), 2 * ext_call.return_data[0]
                    if not approve(address rg1, uint256 rg2), Mask(224, 0, stor4):
                        revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                    if not earnedToAUTOPath.length:
                        require ext_code.size(address(uniRouterAddress))
                        call address(uniRouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, buyBackAddress, block.timestamp + 60, earnedToAUTOPath.length
                    else:
                        mem[456] = address(earnedToAUTOPath.field_0)
                        idx = 456
                        s = 0
                        while (32 * earnedToAUTOPath.length) + 456 > idx + 32:
                            mem[idx + 32] = earnedToAUTOPath[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        require ext_code.size(address(uniRouterAddress))
                        call address(uniRouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, buyBackAddress, block.timestamp + 60, earnedToAUTOPath.length, mem[456 len 32 * earnedToAUTOPath.length]
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
                    if not earnedToAUTOPath.length:
                        require ext_code.size(address(uniRouterAddress))
                        call address(uniRouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, buyBackAddress, block.timestamp + 60, earnedToAUTOPath.length
                    else:
                        mem[ceil32(return_data.size) + 457] = address(earnedToAUTOPath.field_0)
                        idx = ceil32(return_data.size) + 457
                        s = 0
                        while ceil32(return_data.size) + (32 * earnedToAUTOPath.length) + 457 > idx + 32:
                            mem[idx + 32] = earnedToAUTOPath[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        require ext_code.size(address(uniRouterAddress))
                        call address(uniRouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, buyBackAddress, block.timestamp + 60, earnedToAUTOPath.length, mem[ceil32(return_data.size) + 457 len 32 * earnedToAUTOPath.length]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if ext_call.return_data[0] > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
        else:
            if not ext_call.return_data[0]:
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[430 len 26]
                if ext_code.size(earnedAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[324 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor7), uint32(stor7), 0
                mem[388 len 0] = 0
                call earnedAddress with:
                   funct uint32(stor7)
                     gas gas_remaining wei
                    args Mask(480, -256, unknown_0xa9059cbb(?????), Mask(224, 0, stor7), uint32(stor7), 0) << 256, mem[388 len 4]
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
                if 0 > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if buyBackRate > 0:
                    require ext_code.size(earnedAddress)
                    staticcall earnedAddress.0xdd62ed3e with:
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
                                    mem[ceil32(return_data.size) + 659 len 26]
                    if ext_code.size(earnedAddress) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 553 len 64] = 0, address(uniRouterAddress), Mask(224, 31, ext_call.return_data[0]) >> 31
                    call earnedAddress with:
                       funct uint32(stor4)
                         gas gas_remaining wei
                        args 2 * ext_call.return_data[0], mem[ceil32(return_data.size) + 489 len 28], mem[ceil32(return_data.size) + 617 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: division by zero'
                    mem[ceil32(return_data.size) + 585 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 
                                    'SafeERC20: low-level call failed',
                                    mem[(2 * ceil32(return_data.size)) + 654 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 585]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 664 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                    if not earnedToAUTOPath.length:
                        require ext_code.size(address(uniRouterAddress))
                        call address(uniRouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, buyBackAddress, block.timestamp + 60, earnedToAUTOPath.length, mem[(2 * ceil32(return_data.size)) + 750 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    else:
                        mem[(2 * ceil32(return_data.size)) + 750] = address(earnedToAUTOPath.field_0)
                        idx = (2 * ceil32(return_data.size)) + 750
                        s = 0
                        while (2 * ceil32(return_data.size)) + (32 * earnedToAUTOPath.length) + 750 > idx + 32:
                            mem[idx + 32] = earnedToAUTOPath[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        require ext_code.size(address(uniRouterAddress))
                        call address(uniRouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, buyBackAddress, block.timestamp + 60, earnedToAUTOPath.length, mem[(2 * ceil32(return_data.size)) + 750 len (2 * ceil32(return_data.size)) + (32 * earnedToAUTOPath.length) - (2 * ceil32(return_data.size))]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if ext_call.return_data[0] > ext_call.return_data[0]:
                        revert with 0, 
                                    'SafeMath: subtraction overflow',
                                    mem[(2 * ceil32(return_data.size)) + 718 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            else:
                require ext_call.return_data[0]
                if ext_call.return_data[0] * controllerFee / ext_call.return_data[0] != controllerFee:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[430 len 26]
                if ext_code.size(earnedAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[324 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor7), uint32(stor7), Mask(224, 32, ext_call.return_data[0] * controllerFee / 10000) >> 32
                mem[388 len 0] = 0
                call earnedAddress with:
                   funct uint32(stor7)
                     gas gas_remaining wei
                    args Mask(224, 32, ext_call.return_data[0] * controllerFee / 10000) << 224, mem[388 len 4]
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
                if ext_call.return_data[0] * controllerFee / 10000 > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if buyBackRate > 0:
                    require ext_code.size(earnedAddress)
                    staticcall earnedAddress.0xdd62ed3e with:
                            gas gas_remaining wei
                           args address(this.address), address(uniRouterAddress)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if (2 * ext_call.return_data[0]) - (ext_call.return_data[0] * controllerFee / 10000) < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[ceil32(return_data.size) + 659 len 26]
                    if ext_code.size(earnedAddress) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 553 len 64] = 0, address(uniRouterAddress), Mask(224, 32, (2 * ext_call.return_data[0]) - (ext_call.return_data[0] * controllerFee / 10000)) >> 32
                    call earnedAddress with:
                       funct uint32(stor4)
                         gas gas_remaining wei
                        args (2 * ext_call.return_data[0]) - (ext_call.return_data[0] * controllerFee / 10000), mem[ceil32(return_data.size) + 489 len 28], mem[ceil32(return_data.size) + 617 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: division by zero'
                    mem[ceil32(return_data.size) + 585 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 
                                    'SafeERC20: low-level call failed',
                                    mem[(2 * ceil32(return_data.size)) + 654 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 585]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 664 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                    if not earnedToAUTOPath.length:
                        require ext_code.size(address(uniRouterAddress))
                        call address(uniRouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0] - (ext_call.return_data[0] * controllerFee / 10000), 0, 160, buyBackAddress, block.timestamp + 60, earnedToAUTOPath.length, mem[(2 * ceil32(return_data.size)) + 750 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    else:
                        mem[(2 * ceil32(return_data.size)) + 750] = address(earnedToAUTOPath.field_0)
                        idx = (2 * ceil32(return_data.size)) + 750
                        s = 0
                        while (2 * ceil32(return_data.size)) + (32 * earnedToAUTOPath.length) + 750 > idx + 32:
                            mem[idx + 32] = earnedToAUTOPath[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        require ext_code.size(address(uniRouterAddress))
                        call address(uniRouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0] - (ext_call.return_data[0] * controllerFee / 10000), 0, 160, buyBackAddress, block.timestamp + 60, earnedToAUTOPath.length, mem[(2 * ceil32(return_data.size)) + 750 len (2 * ceil32(return_data.size)) + (32 * earnedToAUTOPath.length) - (2 * ceil32(return_data.size))]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
}

function withdraw(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    else:
        if stor1 == 2:
            revert with 0, 'ReentrancyGuard: reentrant call'
        else:
            stor1 = 2
            if arg2 <= 0:
                revert with 0, '_wantAmt <= 0'
            else:
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                else:
                    require return_data.size >= 32
                    if arg2 <= ext_call.return_data[0]:
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require return_data.size >= 32
                            if ext_call.return_data[0] >= arg2:
                                require ext_code.size(wantAddress)
                                staticcall wantAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    if arg2:
                                        require arg2
                                        if arg2 * sharesTotal / arg2 != sharesTotal:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        else:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            else:
                                                require ext_call.return_data[0]
                                                if arg2 * sharesTotal / ext_call.return_data[0] <= sharesTotal:
                                                    sharesTotal -= arg2 * sharesTotal / ext_call.return_data[0]
                                                    if eth.balance(this.address) < 0:
                                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[494 len 26]
                                                    else:
                                                        if ext_code.size(wantAddress) <= 0:
                                                            revert with 0, 'Address: call to non-contract'
                                                        else:
                                                            mem[388 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), Mask(224, 32, arg2) >> 32
                                                            mem[452 len 0] = 0
                                                            call wantAddress with:
                                                               funct uint32(stor5)
                                                                 gas gas_remaining wei
                                                                args Mask(224, 32, arg2) << 224, mem[452 len 4]
                                                            if not return_data.size:
                                                                require not ext_call.success
                                                                revert with 'SafeMath: division by zero'
                                                            else:
                                                                mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                if not ext_call.success:
                                                                    if return_data.size > 0:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        revert with 0, 'SafeERC20: low-level call failed'
                                                                else:
                                                                    if return_data.size <= 0:
                                                                        stor1 = 1
                                                                        return (arg2 * sharesTotal / ext_call.return_data[0])
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        if not mem[420]:
                                                                            revert with 0, 
                                                                                        32,
                                                                                        42,
                                                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                                        mem[ceil32(return_data.size) + 499 len 22]
                                                                        else:
                                                                            stor1 = 1
                                                                            return (arg2 * sharesTotal / ext_call.return_data[0])
                                                else:
                                                    if sharesTotal > sharesTotal:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    else:
                                                        sharesTotal = 0
                                                        if eth.balance(this.address) < 0:
                                                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[494 len 26]
                                                        else:
                                                            if ext_code.size(wantAddress) <= 0:
                                                                revert with 0, 'Address: call to non-contract'
                                                            else:
                                                                mem[388 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), Mask(224, 32, arg2) >> 32
                                                                mem[452 len 0] = 0
                                                                call wantAddress with:
                                                                   funct uint32(stor5)
                                                                     gas gas_remaining wei
                                                                    args Mask(224, 32, arg2) << 224, mem[452 len 4]
                                                                if not return_data.size:
                                                                    require not ext_call.success
                                                                    revert with 'SafeMath: division by zero'
                                                                else:
                                                                    mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                    if not ext_call.success:
                                                                        if return_data.size > 0:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            revert with 0, 'SafeERC20: low-level call failed'
                                                                    else:
                                                                        if return_data.size <= 0:
                                                                            stor1 = 1
                                                                            return sharesTotal
                                                                        else:
                                                                            require return_data.size >= 32
                                                                            if not mem[420]:
                                                                                revert with 0, 
                                                                                            32,
                                                                                            42,
                                                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                                            mem[ceil32(return_data.size) + 499 len 22]
                                                                            else:
                                                                                stor1 = 1
                                                                                return sharesTotal
                                    else:
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        else:
                                            require ext_call.return_data[0]
                                            if 0 / ext_call.return_data[0] <= sharesTotal:
                                                sharesTotal -= 0 / ext_call.return_data[0]
                                                if eth.balance(this.address) < 0:
                                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[494 len 26]
                                                else:
                                                    if ext_code.size(wantAddress) <= 0:
                                                        revert with 0, 'Address: call to non-contract'
                                                    else:
                                                        mem[388 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), Mask(224, 32, arg2) >> 32
                                                        mem[452 len 0] = 0
                                                        call wantAddress with:
                                                           funct uint32(stor5)
                                                             gas gas_remaining wei
                                                            args Mask(224, 32, arg2) << 224, mem[452 len 4]
                                                        if not return_data.size:
                                                            require not ext_call.success
                                                            revert with 'SafeMath: division by zero'
                                                        else:
                                                            mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                            if not ext_call.success:
                                                                if return_data.size > 0:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                            else:
                                                                if return_data.size <= 0:
                                                                    stor1 = 1
                                                                    return (0 / ext_call.return_data[0])
                                                                else:
                                                                    require return_data.size >= 32
                                                                    if not mem[420]:
                                                                        revert with 0, 
                                                                                    32,
                                                                                    42,
                                                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                                    mem[ceil32(return_data.size) + 499 len 22]
                                                                    else:
                                                                        stor1 = 1
                                                                        return (0 / ext_call.return_data[0])
                                            else:
                                                if sharesTotal > sharesTotal:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                else:
                                                    sharesTotal = 0
                                                    if eth.balance(this.address) < 0:
                                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[494 len 26]
                                                    else:
                                                        if ext_code.size(wantAddress) <= 0:
                                                            revert with 0, 'Address: call to non-contract'
                                                        else:
                                                            mem[388 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), Mask(224, 32, arg2) >> 32
                                                            mem[452 len 0] = 0
                                                            call wantAddress with:
                                                               funct uint32(stor5)
                                                                 gas gas_remaining wei
                                                                args Mask(224, 32, arg2) << 224, mem[452 len 4]
                                                            if not return_data.size:
                                                                require not ext_call.success
                                                                revert with 'SafeMath: division by zero'
                                                            else:
                                                                mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                if not ext_call.success:
                                                                    if return_data.size > 0:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        revert with 0, 'SafeERC20: low-level call failed'
                                                                else:
                                                                    if return_data.size <= 0:
                                                                        stor1 = 1
                                                                        return sharesTotal
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        if not mem[420]:
                                                                            revert with 0, 
                                                                                        32,
                                                                                        42,
                                                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                                        mem[ceil32(return_data.size) + 499 len 22]
                                                                        else:
                                                                            stor1 = 1
                                                                            return sharesTotal
                            else:
                                require ext_code.size(wantAddress)
                                staticcall wantAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    require ext_code.size(wantAddress)
                                    staticcall wantAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        if ext_call.return_data[0]:
                                            require ext_call.return_data[0]
                                            if ext_call.return_data[0] * sharesTotal / ext_call.return_data[0] != sharesTotal:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            else:
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                else:
                                                    require ext_call.return_data[0]
                                                    if ext_call.return_data[0] * sharesTotal / ext_call.return_data[0] <= sharesTotal:
                                                        sharesTotal -= ext_call.return_data[0] * sharesTotal / ext_call.return_data[0]
                                                        if eth.balance(this.address) < 0:
                                                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[494 len 26]
                                                        else:
                                                            if ext_code.size(wantAddress) <= 0:
                                                                revert with 0, 'Address: call to non-contract'
                                                            else:
                                                                mem[388 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), ext_call.return_data[0 len 28]
                                                                mem[452 len 0] = 0
                                                                call wantAddress with:
                                                                   funct uint32(stor5)
                                                                     gas gas_remaining wei
                                                                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[452 len 4]
                                                                if not return_data.size:
                                                                    require not ext_call.success
                                                                    revert with 'SafeMath: division by zero'
                                                                else:
                                                                    mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                    if not ext_call.success:
                                                                        if return_data.size > 0:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            revert with 0, 'SafeERC20: low-level call failed'
                                                                    else:
                                                                        if return_data.size <= 0:
                                                                            stor1 = 1
                                                                            return (ext_call.return_data[0] * sharesTotal / ext_call.return_data[0])
                                                                        else:
                                                                            require return_data.size >= 32
                                                                            if not mem[420]:
                                                                                revert with 0, 
                                                                                            32,
                                                                                            42,
                                                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                                            mem[ceil32(return_data.size) + 499 len 22]
                                                                            else:
                                                                                stor1 = 1
                                                                                return (ext_call.return_data[0] * sharesTotal / ext_call.return_data[0])
                                                    else:
                                                        if sharesTotal > sharesTotal:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        else:
                                                            sharesTotal = 0
                                                            if eth.balance(this.address) < 0:
                                                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[494 len 26]
                                                            else:
                                                                if ext_code.size(wantAddress) <= 0:
                                                                    revert with 0, 'Address: call to non-contract'
                                                                else:
                                                                    mem[388 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), ext_call.return_data[0 len 28]
                                                                    mem[452 len 0] = 0
                                                                    call wantAddress with:
                                                                       funct uint32(stor5)
                                                                         gas gas_remaining wei
                                                                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[452 len 4]
                                                                    if not return_data.size:
                                                                        require not ext_call.success
                                                                        revert with 'SafeMath: division by zero'
                                                                    else:
                                                                        mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                        if not ext_call.success:
                                                                            if return_data.size > 0:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                revert with 0, 'SafeERC20: low-level call failed'
                                                                        else:
                                                                            if return_data.size <= 0:
                                                                                stor1 = 1
                                                                                return sharesTotal
                                                                            else:
                                                                                require return_data.size >= 32
                                                                                if not mem[420]:
                                                                                    revert with 0, 
                                                                                                32,
                                                                                                42,
                                                                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                                                mem[ceil32(return_data.size) + 499 len 22]
                                                                                else:
                                                                                    stor1 = 1
                                                                                    return sharesTotal
                                        else:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            else:
                                                require ext_call.return_data[0]
                                                if 0 / ext_call.return_data[0] <= sharesTotal:
                                                    sharesTotal -= 0 / ext_call.return_data[0]
                                                    if eth.balance(this.address) < 0:
                                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[494 len 26]
                                                    else:
                                                        if ext_code.size(wantAddress) <= 0:
                                                            revert with 0, 'Address: call to non-contract'
                                                        else:
                                                            mem[388 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), ext_call.return_data[0 len 28]
                                                            mem[452 len 0] = 0
                                                            call wantAddress with:
                                                               funct uint32(stor5)
                                                                 gas gas_remaining wei
                                                                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[452 len 4]
                                                            if not return_data.size:
                                                                require not ext_call.success
                                                                revert with 'SafeMath: division by zero'
                                                            else:
                                                                mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                if not ext_call.success:
                                                                    if return_data.size > 0:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        revert with 0, 'SafeERC20: low-level call failed'
                                                                else:
                                                                    if return_data.size <= 0:
                                                                        stor1 = 1
                                                                        return (0 / ext_call.return_data[0])
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        if not mem[420]:
                                                                            revert with 0, 
                                                                                        32,
                                                                                        42,
                                                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                                        mem[ceil32(return_data.size) + 499 len 22]
                                                                        else:
                                                                            stor1 = 1
                                                                            return (0 / ext_call.return_data[0])
                                                else:
                                                    if sharesTotal > sharesTotal:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    else:
                                                        sharesTotal = 0
                                                        if eth.balance(this.address) < 0:
                                                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[494 len 26]
                                                        else:
                                                            if ext_code.size(wantAddress) <= 0:
                                                                revert with 0, 'Address: call to non-contract'
                                                            else:
                                                                mem[388 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), ext_call.return_data[0 len 28]
                                                                mem[452 len 0] = 0
                                                                call wantAddress with:
                                                                   funct uint32(stor5)
                                                                     gas gas_remaining wei
                                                                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[452 len 4]
                                                                if not return_data.size:
                                                                    require not ext_call.success
                                                                    revert with 'SafeMath: division by zero'
                                                                else:
                                                                    mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                    if not ext_call.success:
                                                                        if return_data.size > 0:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            revert with 0, 'SafeERC20: low-level call failed'
                                                                    else:
                                                                        if return_data.size <= 0:
                                                                            stor1 = 1
                                                                            return sharesTotal
                                                                        else:
                                                                            require return_data.size >= 32
                                                                            if not mem[420]:
                                                                                revert with 0, 
                                                                                            32,
                                                                                            42,
                                                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                                            mem[ceil32(return_data.size) + 499 len 22]
                                                                            else:
                                                                                stor1 = 1
                                                                                return sharesTotal
                    else:
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require return_data.size >= 32
                            if ext_call.return_data[0] >= ext_call.return_data[0]:
                                require ext_code.size(wantAddress)
                                staticcall wantAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    if ext_call.return_data[0]:
                                        require ext_call.return_data[0]
                                        if ext_call.return_data[0] * sharesTotal / ext_call.return_data[0] != sharesTotal:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        else:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            else:
                                                require ext_call.return_data[0]
                                                if ext_call.return_data[0] * sharesTotal / ext_call.return_data[0] <= sharesTotal:
                                                    sharesTotal -= ext_call.return_data[0] * sharesTotal / ext_call.return_data[0]
                                                    if eth.balance(this.address) < 0:
                                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[494 len 26]
                                                    else:
                                                        if ext_code.size(wantAddress) <= 0:
                                                            revert with 0, 'Address: call to non-contract'
                                                        else:
                                                            mem[388 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), ext_call.return_data[0 len 28]
                                                            mem[452 len 0] = 0
                                                            call wantAddress with:
                                                               funct uint32(stor5)
                                                                 gas gas_remaining wei
                                                                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[452 len 4]
                                                            if not return_data.size:
                                                                require not ext_call.success
                                                                revert with 'SafeMath: division by zero'
                                                            else:
                                                                mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                if not ext_call.success:
                                                                    if return_data.size > 0:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        revert with 0, 'SafeERC20: low-level call failed'
                                                                else:
                                                                    if return_data.size <= 0:
                                                                        stor1 = 1
                                                                        return (ext_call.return_data[0] * sharesTotal / ext_call.return_data[0])
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        if not mem[420]:
                                                                            revert with 0, 
                                                                                        32,
                                                                                        42,
                                                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                                        mem[ceil32(return_data.size) + 499 len 22]
                                                                        else:
                                                                            stor1 = 1
                                                                            return (ext_call.return_data[0] * sharesTotal / ext_call.return_data[0])
                                                else:
                                                    if sharesTotal > sharesTotal:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    else:
                                                        sharesTotal = 0
                                                        if eth.balance(this.address) < 0:
                                                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[494 len 26]
                                                        else:
                                                            if ext_code.size(wantAddress) <= 0:
                                                                revert with 0, 'Address: call to non-contract'
                                                            else:
                                                                mem[388 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), ext_call.return_data[0 len 28]
                                                                mem[452 len 0] = 0
                                                                call wantAddress with:
                                                                   funct uint32(stor5)
                                                                     gas gas_remaining wei
                                                                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[452 len 4]
                                                                if not return_data.size:
                                                                    require not ext_call.success
                                                                    revert with 'SafeMath: division by zero'
                                                                else:
                                                                    mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                    if not ext_call.success:
                                                                        if return_data.size > 0:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            revert with 0, 'SafeERC20: low-level call failed'
                                                                    else:
                                                                        if return_data.size <= 0:
                                                                            stor1 = 1
                                                                            return sharesTotal
                                                                        else:
                                                                            require return_data.size >= 32
                                                                            if not mem[420]:
                                                                                revert with 0, 
                                                                                            32,
                                                                                            42,
                                                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                                            mem[ceil32(return_data.size) + 499 len 22]
                                                                            else:
                                                                                stor1 = 1
                                                                                return sharesTotal
                                    else:
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        else:
                                            require ext_call.return_data[0]
                                            if 0 / ext_call.return_data[0] <= sharesTotal:
                                                sharesTotal -= 0 / ext_call.return_data[0]
                                                if eth.balance(this.address) < 0:
                                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[494 len 26]
                                                else:
                                                    if ext_code.size(wantAddress) <= 0:
                                                        revert with 0, 'Address: call to non-contract'
                                                    else:
                                                        mem[388 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), ext_call.return_data[0 len 28]
                                                        mem[452 len 0] = 0
                                                        call wantAddress with:
                                                           funct uint32(stor5)
                                                             gas gas_remaining wei
                                                            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[452 len 4]
                                                        if not return_data.size:
                                                            require not ext_call.success
                                                            revert with 'SafeMath: division by zero'
                                                        else:
                                                            mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                            if not ext_call.success:
                                                                if return_data.size > 0:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                            else:
                                                                if return_data.size <= 0:
                                                                    stor1 = 1
                                                                    return (0 / ext_call.return_data[0])
                                                                else:
                                                                    require return_data.size >= 32
                                                                    if not mem[420]:
                                                                        revert with 0, 
                                                                                    32,
                                                                                    42,
                                                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                                    mem[ceil32(return_data.size) + 499 len 22]
                                                                    else:
                                                                        stor1 = 1
                                                                        return (0 / ext_call.return_data[0])
                                            else:
                                                if sharesTotal > sharesTotal:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                else:
                                                    sharesTotal = 0
                                                    if eth.balance(this.address) < 0:
                                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[494 len 26]
                                                    else:
                                                        if ext_code.size(wantAddress) <= 0:
                                                            revert with 0, 'Address: call to non-contract'
                                                        else:
                                                            mem[388 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), ext_call.return_data[0 len 28]
                                                            mem[452 len 0] = 0
                                                            call wantAddress with:
                                                               funct uint32(stor5)
                                                                 gas gas_remaining wei
                                                                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[452 len 4]
                                                            if not return_data.size:
                                                                require not ext_call.success
                                                                revert with 'SafeMath: division by zero'
                                                            else:
                                                                mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                if not ext_call.success:
                                                                    if return_data.size > 0:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        revert with 0, 'SafeERC20: low-level call failed'
                                                                else:
                                                                    if return_data.size <= 0:
                                                                        stor1 = 1
                                                                        return sharesTotal
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        if not mem[420]:
                                                                            revert with 0, 
                                                                                        32,
                                                                                        42,
                                                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                                        mem[ceil32(return_data.size) + 499 len 22]
                                                                        else:
                                                                            stor1 = 1
                                                                            return sharesTotal
                            else:
                                require ext_code.size(wantAddress)
                                staticcall wantAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    require ext_code.size(wantAddress)
                                    staticcall wantAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        if ext_call.return_data[0]:
                                            require ext_call.return_data[0]
                                            if ext_call.return_data[0] * sharesTotal / ext_call.return_data[0] != sharesTotal:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            else:
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                else:
                                                    require ext_call.return_data[0]
                                                    if ext_call.return_data[0] * sharesTotal / ext_call.return_data[0] <= sharesTotal:
                                                        sharesTotal -= ext_call.return_data[0] * sharesTotal / ext_call.return_data[0]
                                                        if eth.balance(this.address) < 0:
                                                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[494 len 26]
                                                        else:
                                                            if ext_code.size(wantAddress) <= 0:
                                                                revert with 0, 'Address: call to non-contract'
                                                            else:
                                                                mem[388 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), ext_call.return_data[0 len 28]
                                                                mem[452 len 0] = 0
                                                                call wantAddress with:
                                                                   funct uint32(stor5)
                                                                     gas gas_remaining wei
                                                                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[452 len 4]
                                                                if not return_data.size:
                                                                    require not ext_call.success
                                                                    revert with 'SafeMath: division by zero'
                                                                else:
                                                                    mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                    if not ext_call.success:
                                                                        if return_data.size > 0:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            revert with 0, 'SafeERC20: low-level call failed'
                                                                    else:
                                                                        if return_data.size <= 0:
                                                                            stor1 = 1
                                                                            return (ext_call.return_data[0] * sharesTotal / ext_call.return_data[0])
                                                                        else:
                                                                            require return_data.size >= 32
                                                                            if not mem[420]:
                                                                                revert with 0, 
                                                                                            32,
                                                                                            42,
                                                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                                            mem[ceil32(return_data.size) + 499 len 22]
                                                                            else:
                                                                                stor1 = 1
                                                                                return (ext_call.return_data[0] * sharesTotal / ext_call.return_data[0])
                                                    else:
                                                        if sharesTotal > sharesTotal:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        else:
                                                            sharesTotal = 0
                                                            if eth.balance(this.address) < 0:
                                                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[494 len 26]
                                                            else:
                                                                if ext_code.size(wantAddress) <= 0:
                                                                    revert with 0, 'Address: call to non-contract'
                                                                else:
                                                                    mem[388 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), ext_call.return_data[0 len 28]
                                                                    mem[452 len 0] = 0
                                                                    call wantAddress with:
                                                                       funct uint32(stor5)
                                                                         gas gas_remaining wei
                                                                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[452 len 4]
                                                                    if not return_data.size:
                                                                        require not ext_call.success
                                                                        revert with 'SafeMath: division by zero'
                                                                    else:
                                                                        mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                        if not ext_call.success:
                                                                            if return_data.size > 0:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                revert with 0, 'SafeERC20: low-level call failed'
                                                                        else:
                                                                            if return_data.size <= 0:
                                                                                stor1 = 1
                                                                                return sharesTotal
                                                                            else:
                                                                                require return_data.size >= 32
                                                                                if not mem[420]:
                                                                                    revert with 0, 
                                                                                                32,
                                                                                                42,
                                                                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                                                mem[ceil32(return_data.size) + 499 len 22]
                                                                                else:
                                                                                    stor1 = 1
                                                                                    return sharesTotal
                                        else:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            else:
                                                require ext_call.return_data[0]
                                                if 0 / ext_call.return_data[0] <= sharesTotal:
                                                    sharesTotal -= 0 / ext_call.return_data[0]
                                                    if eth.balance(this.address) < 0:
                                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[494 len 26]
                                                    else:
                                                        if ext_code.size(wantAddress) <= 0:
                                                            revert with 0, 'Address: call to non-contract'
                                                        else:
                                                            mem[388 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), ext_call.return_data[0 len 28]
                                                            mem[452 len 0] = 0
                                                            call wantAddress with:
                                                               funct uint32(stor5)
                                                                 gas gas_remaining wei
                                                                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[452 len 4]
                                                            if not return_data.size:
                                                                require not ext_call.success
                                                                revert with 'SafeMath: division by zero'
                                                            else:
                                                                mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                if not ext_call.success:
                                                                    if return_data.size > 0:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        revert with 0, 'SafeERC20: low-level call failed'
                                                                else:
                                                                    if return_data.size <= 0:
                                                                        stor1 = 1
                                                                        return (0 / ext_call.return_data[0])
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        if not mem[420]:
                                                                            revert with 0, 
                                                                                        32,
                                                                                        42,
                                                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                                        mem[ceil32(return_data.size) + 499 len 22]
                                                                        else:
                                                                            stor1 = 1
                                                                            return (0 / ext_call.return_data[0])
                                                else:
                                                    if sharesTotal > sharesTotal:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    else:
                                                        sharesTotal = 0
                                                        if eth.balance(this.address) < 0:
                                                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[494 len 26]
                                                        else:
                                                            if ext_code.size(wantAddress) <= 0:
                                                                revert with 0, 'Address: call to non-contract'
                                                            else:
                                                                mem[388 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), ext_call.return_data[0 len 28]
                                                                mem[452 len 0] = 0
                                                                call wantAddress with:
                                                                   funct uint32(stor5)
                                                                     gas gas_remaining wei
                                                                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[452 len 4]
                                                                if not return_data.size:
                                                                    require not ext_call.success
                                                                    revert with 'SafeMath: division by zero'
                                                                else:
                                                                    mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                    if not ext_call.success:
                                                                        if return_data.size > 0:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            revert with 0, 'SafeERC20: low-level call failed'
                                                                    else:
                                                                        if return_data.size <= 0:
                                                                            stor1 = 1
                                                                            return sharesTotal
                                                                        else:
                                                                            require return_data.size >= 32
                                                                            if not mem[420]:
                                                                                revert with 0, 
                                                                                            32,
                                                                                            42,
                                                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                                            mem[ceil32(return_data.size) + 499 len 22]
                                                                            else:
                                                                                stor1 = 1
                                                                                return sharesTotal
}



}
