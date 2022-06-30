contract main {




// =====================  Runtime code  =====================


#
#  - earn()
#
const controllerFeeUL = 5000

const controllerFeeMax = 10000

const buyBackRateMax = 10000

const fundManager = 0xa9186c17daa92dd89f521fb26d25d1101e423faf

const wbnbAddress = 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c

const uniRouterAddress = 0x10ed43c718714eb63d5aa57b78b54704e25602

const buyBackAddress = 57005

const token0Address = 0

const buyBackRateUL = 5000

const AFIAddress = 0xc6bfcf0469a74b36c070b807162ffcbf7b0a1103

const afiFarmAddress = 0x657d0420f696aaedc48b40545ba5e85b10e4c746

const entranceFeeFactorLL = 9950

const token1Address = 0

const receiveFee = 0x2b6c058dd1751658cfdc58c6c06c0b0a2421b234

const earnedAddress = 0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82

const wantAddress = 0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82

const entranceFeeFactorMax = 10000

const pid = 0

const WITHDRAWAL_MAX = 10000


address owner;
uint256 stor1;
uint8 stor2;
uint8 stor2; offset 8
uint8 stor2; offset 16
uint32 stor2;
address stor2;
address farmContractAddress; offset 24
uint256 stor2;
address govAddress;
uint256 WITHDRAWAL_FEE;
uint8 stor5;
uint256 lastEarnBlock;
uint256 stor7; offset 32
uint256 wantLockedTotal;
big480 stor7;
uint256 sharesTotal;
uint256 controllerFee;
uint256 buyBackRate;
uint256 entranceFeeFactor;
array of address earnedToAFIPath;
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
    return bool(stor5)
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

function farmContractAddress() payable {
    return farmContractAddress
}

function WITHDRAWAL_FEE() payable {
    return WITHDRAWAL_FEE
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

function isAfiComp() payable {
    return bool(uint8(stor2.field_16))
}

function earnedToAFIPath(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < earnedToAFIPath.length
    return earnedToAFIPath[arg1]
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
    stor5 = uint8(arg1)
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function pause() payable {
    if govAddress != msg.sender:
        revert with 0, 'Not authorised'
    if uint8(stor2.field_0):
        revert with 0, 'Pausable: paused'
    uint8(stor2.field_0) = 1
    emit Paused(msg.sender);
}

function setControllerFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if govAddress != msg.sender:
        revert with 0, 'Not authorised'
    if arg1 > 5000:
        revert with 0, 'too high'
    controllerFee = arg1
}

function unpause() payable {
    if govAddress != msg.sender:
        revert with 0, 'Not authorised'
    if not uint8(stor2.field_0):
        revert with 0, 'Pausable: not paused'
    uint8(stor2.field_0) = 0
    emit Unpaused(msg.sender);
}

function setbuyBackRate(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if govAddress != msg.sender:
        revert with 0, 'Not authorised'
    if buyBackRate > 5000:
        revert with 0, 'too high'
    buyBackRate = arg1
}

function setEntranceFeeFactor(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if govAddress != msg.sender:
        revert with 0, 'Not authorised'
    if arg1 <= 9950:
        revert with 0, '!safe - too low'
    if arg1 > 10000:
        revert with 0, '!safe - too high'
    entranceFeeFactor = arg1
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

function inCaseTokensGetStuck(address arg1, uint256 arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    if govAddress != msg.sender:
        revert with 0, '!gov'
    if 0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82 == arg1:
        revert with 0, '!safe'
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x4e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if not ext_code.size(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg3) << 64, 0, Mask(224, 32, arg2) >> 32
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

function farm() payable {
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    require ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82)
    staticcall 0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] + wantLockedTotal < wantLockedTotal:
        revert with 0, 'SafeMath: addition overflow'
    wantLockedTotal += ext_call.return_data[0]
    require ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82)
    staticcall 0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82.0xdd62ed3e with:
            gas gas_remaining wei
           args address(this.address), farmContractAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x4e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if not ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor2.field_0), uint32(stor2.field_0), Mask(224, 31, ext_call.return_data[0]) >> 31
    call 0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82 with:
       funct uint32(stor2.field_0)
         gas gas_remaining wei
        args Mask(224, 31, ext_call.return_data[0]) << 225, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor2.field_0), uint32(stor2.field_0), 2 * ext_call.return_data[0]
        if not approve(address arg1, uint256 arg2), Mask(224, 0, stor2.field_0):
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
    require ext_code.size(farmContractAddress)
    if not uint8(stor2.field_8):
        call farmContractAddress.deposit(uint256 arg1, uint256 arg2) with:
             gas gas_remaining wei
            args 0, ext_call.return_data[0]
    else:
        call farmContractAddress.enterStaking(uint256 arg1) with:
             gas gas_remaining wei
            args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor1 = 1
}

function convertDustToEarned() payable {
    if uint8(stor2.field_0):
        revert with 0, 'Pausable: paused'
    if not uint8(stor2.field_16):
        revert with 0, '!isAfiComp'
    if uint8(stor2.field_8):
        revert with 0, 'isCAKEStaking'
    require ext_code.size(0)
    staticcall 0x0.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0)
    if not ext_call.return_data[0]:
        staticcall 0x0.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            require ext_code.size(0)
            staticcall 0x0.0xdd62ed3e with:
                    gas gas_remaining wei
                   args address(this.address), 0x10ed43c718714eb63d5aa57b78b54704e25602
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x4e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
            if not ext_code.size(0):
                revert with 0, 'Address: call to non-contract'
            mem[260 len 64] = approve(address arg1, uint256 arg2), 20463264248468307118480037, 0, Mask(224, 31, ext_call.return_data[0]) >> 31
            mem[324 len 0] = 0
            call 0x0.0x4e25602 with:
                 gas gas_remaining wei
                args Mask(224, 31, ext_call.return_data[0]) << 225, mem[324 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address arg1, uint256 arg2), 20463264248468307118480037, 0, 2 * ext_call.return_data[0]
                if not approve(address arg1, uint256 arg2), 20463264248468307118480037:
                    revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                if not token1ToEarnedPath.length:
                    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e25602)
                    call 0x0010ed43c718714eb63d5aa57b78b54704e25602.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
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
                    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e25602)
                    call 0x0010ed43c718714eb63d5aa57b78b54704e25602.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 60, token1ToEarnedPath.length, mem[456 len 32 * token1ToEarnedPath.length]
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
                if not token1ToEarnedPath.length:
                    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e25602)
                    call 0x0010ed43c718714eb63d5aa57b78b54704e25602.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
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
                    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e25602)
                    call 0x0010ed43c718714eb63d5aa57b78b54704e25602.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 60, token1ToEarnedPath.length, mem[ceil32(return_data.size) + 457 len 32 * token1ToEarnedPath.length]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    else:
        staticcall 0x0.0xdd62ed3e with:
                gas gas_remaining wei
               args address(this.address), 0x10ed43c718714eb63d5aa57b78b54704e25602
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x4e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
        if not ext_code.size(0):
            revert with 0, 'Address: call to non-contract'
        mem[260 len 64] = approve(address arg1, uint256 arg2), 20463264248468307118480037, 0, Mask(224, 31, ext_call.return_data[0]) >> 31
        call 0x0.0x4e25602 with:
             gas gas_remaining wei
            args Mask(224, 31, ext_call.return_data[0]) << 225, mem[324 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with approve(address arg1, uint256 arg2), 20463264248468307118480037, 0, 2 * ext_call.return_data[0]
            if not approve(address arg1, uint256 arg2), 20463264248468307118480037:
                revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
            if not token0ToEarnedPath.length:
                require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e25602)
                call 0x0010ed43c718714eb63d5aa57b78b54704e25602.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 60, token0ToEarnedPath.length
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(0)
                staticcall 0x0.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    require ext_code.size(0)
                    staticcall 0x0.0xdd62ed3e with:
                            gas gas_remaining wei
                           args address(this.address), 0x10ed43c718714eb63d5aa57b78b54704e25602
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x4e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[530 len 26]
                    if not ext_code.size(0):
                        revert with 0, 'Address: call to non-contract'
                    mem[424 len 64] = approve(address arg1, uint256 arg2), 20463264248468307118480037, 81942018, Mask(224, 31, ext_call.return_data[0]) >> 31
                    call 0x0 with:
                       funct token0ToEarnedPath.length.field_224
                         gas gas_remaining wei
                        args Mask(224, 31, ext_call.return_data[0]) << 225, mem[488 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with approve(address arg1, uint256 arg2), 20463264248468307118480037, 0, 2 * ext_call.return_data[0]
                        if not approve(address arg1, uint256 arg2), 20463264248468307118480037:
                            revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[534 len 22]
                        if not token1ToEarnedPath.length:
                            require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e25602)
                            call 0x0010ed43c718714eb63d5aa57b78b54704e25602.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
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
                            require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e25602)
                            call 0x0010ed43c718714eb63d5aa57b78b54704e25602.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 60, token1ToEarnedPath.length, mem[620 len 32 * token1ToEarnedPath.length]
                    else:
                        mem[456 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[456]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 535 len 22]
                        if not token1ToEarnedPath.length:
                            require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e25602)
                            call 0x0010ed43c718714eb63d5aa57b78b54704e25602.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
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
                            require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e25602)
                            call 0x0010ed43c718714eb63d5aa57b78b54704e25602.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 60, token1ToEarnedPath.length, mem[ceil32(return_data.size) + 621 len 32 * token1ToEarnedPath.length]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
            else:
                mem[456] = address(token0ToEarnedPath.field_0)
                idx = 456
                s = 0
                while (32 * token0ToEarnedPath.length) + 456 > idx + 32:
                    mem[idx + 32] = token0ToEarnedPath[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e25602)
                call 0x0010ed43c718714eb63d5aa57b78b54704e25602.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 60, token0ToEarnedPath.length, mem[456 len 32 * token0ToEarnedPath.length]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(0)
                staticcall 0x0.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    require ext_code.size(0)
                    staticcall 0x0.0xdd62ed3e with:
                            gas gas_remaining wei
                           args address(this.address), 0x10ed43c718714eb63d5aa57b78b54704e25602
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x4e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[530 len 26]
                    if not ext_code.size(0):
                        revert with 0, 'Address: call to non-contract'
                    mem[424 len 64] = approve(address arg1, uint256 arg2), 20463264248468307118480037, 0, Mask(224, 31, ext_call.return_data[0]) >> 31
                    mem[488 len 0] = 0
                    call 0x0.0x4e25602 with:
                         gas gas_remaining wei
                        args Mask(224, 31, ext_call.return_data[0]) << 225, mem[488 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with approve(address arg1, uint256 arg2), 20463264248468307118480037, 0, 2 * ext_call.return_data[0]
                        if not approve(address arg1, uint256 arg2), 20463264248468307118480037:
                            revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[534 len 22]
                        if not token1ToEarnedPath.length:
                            require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e25602)
                            call 0x0010ed43c718714eb63d5aa57b78b54704e25602.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
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
                            require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e25602)
                            call 0x0010ed43c718714eb63d5aa57b78b54704e25602.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 60, token1ToEarnedPath.length, mem[620 len 32 * token1ToEarnedPath.length]
                    else:
                        mem[456 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[456]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 535 len 22]
                        if not token1ToEarnedPath.length:
                            require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e25602)
                            call 0x0010ed43c718714eb63d5aa57b78b54704e25602.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
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
                            require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e25602)
                            call 0x0010ed43c718714eb63d5aa57b78b54704e25602.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 60, token1ToEarnedPath.length, mem[ceil32(return_data.size) + 621 len 32 * token1ToEarnedPath.length]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
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
            if not token0ToEarnedPath.length:
                require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e25602)
                call 0x0010ed43c718714eb63d5aa57b78b54704e25602.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
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
                require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e25602)
                call 0x0010ed43c718714eb63d5aa57b78b54704e25602.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 60, token0ToEarnedPath.length, mem[ceil32(return_data.size) + 457 len 32 * token0ToEarnedPath.length]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(0)
            staticcall 0x0.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                require ext_code.size(0)
                staticcall 0x0.0xdd62ed3e with:
                        gas gas_remaining wei
                       args address(this.address), 0x10ed43c718714eb63d5aa57b78b54704e25602
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x4e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[ceil32(return_data.size) + 531 len 26]
                if not ext_code.size(0):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 425 len 64] = approve(address arg1, uint256 arg2), 20463264248468307118480037, 81942018, Mask(224, 31, ext_call.return_data[0]) >> 31
                call 0x0 with:
                   funct token0ToEarnedPath.length.field_224
                     gas gas_remaining wei
                    args Mask(224, 31, ext_call.return_data[0]) << 225, mem[ceil32(return_data.size) + 489 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with approve(address arg1, uint256 arg2), 20463264248468307118480037, 0, 2 * ext_call.return_data[0]
                    if not approve(address arg1, uint256 arg2), 20463264248468307118480037:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 535 len 22]
                    if not token1ToEarnedPath.length:
                        require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e25602)
                        call 0x0010ed43c718714eb63d5aa57b78b54704e25602.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
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
                        require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e25602)
                        call 0x0010ed43c718714eb63d5aa57b78b54704e25602.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 60, token1ToEarnedPath.length, mem[ceil32(return_data.size) + 621 len 32 * token1ToEarnedPath.length]
                else:
                    mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 
                                    'SafeERC20: low-level call failed',
                                    mem[(2 * ceil32(return_data.size)) + 526 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 457]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 536 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                    if not token1ToEarnedPath.length:
                        require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e25602)
                        call 0x0010ed43c718714eb63d5aa57b78b54704e25602.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
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
                        require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e25602)
                        call 0x0010ed43c718714eb63d5aa57b78b54704e25602.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 60, token1ToEarnedPath.length, mem[(2 * ceil32(return_data.size)) + 622 len (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) - (2 * ceil32(return_data.size))]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
}

function deposit(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if uint8(stor2.field_0):
        revert with 0, 'Pausable: paused'
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x4e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
    if not ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82):
        revert with 0, 'Address: call to non-contract'
    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
    mem[416 len 4] = 0
    mem[388 len 0] = 0
    call 0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82 with:
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
        if not wantLockedTotal:
            if arg2 + sharesTotal < sharesTotal:
                revert with 0, 'SafeMath: addition overflow'
            sharesTotal += arg2
            if not uint8(stor2.field_16):
                if arg2 + wantLockedTotal < wantLockedTotal:
                    revert with 0, 'SafeMath: addition overflow'
                wantLockedTotal += arg2
            else:
                require ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82)
                staticcall 0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] + wantLockedTotal < wantLockedTotal:
                    revert with 0, 'SafeMath: addition overflow'
                wantLockedTotal += ext_call.return_data[0]
                require ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82)
                staticcall 0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82.0xdd62ed3e with:
                        gas gas_remaining wei
                       args address(this.address), farmContractAddress
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x4e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[562 len 26]
                if not ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82):
                    revert with 0, 'Address: call to non-contract'
                mem[456 len 64] = 0, address(stor2.field_0), Mask(224, 31, ext_call.return_data[0]) >> 31
                call 0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82 with:
                   funct uint32(stor2.field_0)
                     gas gas_remaining wei
                    args 2 * ext_call.return_data[0], mem[392 len 24], 0, mem[520 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2
                    if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[566 len 22]
                else:
                    mem[488 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[488]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 567 len 22]
                require ext_code.size(farmContractAddress)
                if not uint8(stor2.field_8):
                    call farmContractAddress.deposit(uint256 arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args 0, ext_call.return_data[0]
                else:
                    call farmContractAddress.enterStaking(uint256 arg1) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            return arg2
        if not arg2:
            if not wantLockedTotal:
                revert with 0, 'SafeMath: division by zero'
            if (0 / wantLockedTotal / 10000) + sharesTotal < sharesTotal:
                revert with 0, 'SafeMath: addition overflow'
            sharesTotal += 0 / wantLockedTotal / 10000
            if not uint8(stor2.field_16):
                if arg2 + wantLockedTotal < wantLockedTotal:
                    revert with 0, 'SafeMath: addition overflow'
                wantLockedTotal += arg2
            else:
                require ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82)
                staticcall 0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] + wantLockedTotal < wantLockedTotal:
                    revert with 0, 'SafeMath: addition overflow'
                wantLockedTotal += ext_call.return_data[0]
                require ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82)
                staticcall 0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82.0xdd62ed3e with:
                        gas gas_remaining wei
                       args address(this.address), farmContractAddress
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x4e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[690 len 26]
                if not ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82):
                    revert with 0, 'Address: call to non-contract'
                mem[584 len 64] = 0, address(stor2.field_0), Mask(224, 31, ext_call.return_data[0]) >> 31
                call 0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82 with:
                   funct uint32(stor2.field_0)
                     gas gas_remaining wei
                    args 2 * ext_call.return_data[0], mem[520 len 28], mem[648 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2
                    if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[694 len 22]
                else:
                    mem[616 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[616]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 695 len 22]
                require ext_code.size(farmContractAddress)
                if not uint8(stor2.field_8):
                    call farmContractAddress.deposit(uint256 arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args 0, ext_call.return_data[0]
                else:
                    call farmContractAddress.enterStaking(uint256 arg1) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            return (0 / wantLockedTotal / 10000)
        if sharesTotal * arg2 / arg2 != sharesTotal:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[393 len 23], 0, mem[420 len 4]
        if not sharesTotal * arg2:
            if not wantLockedTotal:
                revert with 0, 'SafeMath: division by zero'
            if (0 / wantLockedTotal / 10000) + sharesTotal < sharesTotal:
                revert with 0, 'SafeMath: addition overflow'
            sharesTotal += 0 / wantLockedTotal / 10000
            if not uint8(stor2.field_16):
                if arg2 + wantLockedTotal < wantLockedTotal:
                    revert with 0, 'SafeMath: addition overflow'
                wantLockedTotal += arg2
            else:
                require ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82)
                staticcall 0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] + wantLockedTotal < wantLockedTotal:
                    revert with 0, 'SafeMath: addition overflow'
                wantLockedTotal += ext_call.return_data[0]
                require ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82)
                staticcall 0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82.0xdd62ed3e with:
                        gas gas_remaining wei
                       args address(this.address), farmContractAddress
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x4e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[690 len 26]
                if not ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82):
                    revert with 0, 'Address: call to non-contract'
                mem[584 len 64] = 0, address(stor2.field_0), Mask(224, 31, ext_call.return_data[0]) >> 31
                call 0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82 with:
                   funct uint32(stor2.field_0)
                     gas gas_remaining wei
                    args 2 * ext_call.return_data[0], mem[520 len 28], mem[648 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2
                    if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[694 len 22]
                else:
                    mem[616 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[616]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 695 len 22]
                require ext_code.size(farmContractAddress)
                if not uint8(stor2.field_8):
                    call farmContractAddress.deposit(uint256 arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args 0, ext_call.return_data[0]
                else:
                    call farmContractAddress.enterStaking(uint256 arg1) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            return (0 / wantLockedTotal / 10000)
        if entranceFeeFactor * sharesTotal * arg2 / sharesTotal * arg2 != entranceFeeFactor:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[393 len 23], 0, mem[420 len 4]
        if not wantLockedTotal:
            revert with 0, 'SafeMath: division by zero'
        if (entranceFeeFactor * sharesTotal * arg2 / wantLockedTotal / 10000) + sharesTotal < sharesTotal:
            revert with 0, 'SafeMath: addition overflow'
        sharesTotal += entranceFeeFactor * sharesTotal * arg2 / wantLockedTotal / 10000
        if not uint8(stor2.field_16):
            if arg2 + wantLockedTotal < wantLockedTotal:
                revert with 0, 'SafeMath: addition overflow'
            wantLockedTotal += arg2
        else:
            require ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82)
            staticcall 0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] + wantLockedTotal < wantLockedTotal:
                revert with 0, 'SafeMath: addition overflow'
            wantLockedTotal += ext_call.return_data[0]
            require ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82)
            staticcall 0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82.0xdd62ed3e with:
                    gas gas_remaining wei
                   args address(this.address), farmContractAddress
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x4e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[690 len 26]
            if not ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82):
                revert with 0, 'Address: call to non-contract'
            mem[584 len 64] = 0, address(stor2.field_0), Mask(224, 31, ext_call.return_data[0]) >> 31
            call 0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82 with:
               funct uint32(stor2.field_0)
                 gas gas_remaining wei
                args 2 * ext_call.return_data[0], mem[520 len 28], mem[648 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2
                if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                    revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[694 len 22]
            else:
                mem[616 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[616]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 695 len 22]
            require ext_code.size(farmContractAddress)
            if not uint8(stor2.field_8):
                call farmContractAddress.deposit(uint256 arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args 0, ext_call.return_data[0]
            else:
                call farmContractAddress.enterStaking(uint256 arg1) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        return (entranceFeeFactor * sharesTotal * arg2 / wantLockedTotal / 10000)
    mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        if return_data.size:
            revert with ext_call.return_data[0 len return_data.size]
        revert with 0, 'SafeERC20: low-level call failed'
    if not return_data.size:
        if not wantLockedTotal:
            if arg2 + sharesTotal < sharesTotal:
                revert with 0, 'SafeMath: addition overflow'
            sharesTotal += arg2
            if not uint8(stor2.field_16):
                if arg2 + wantLockedTotal < wantLockedTotal:
                    revert with 0, 'SafeMath: addition overflow'
                wantLockedTotal += arg2
            else:
                require ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82)
                staticcall 0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] + wantLockedTotal < wantLockedTotal:
                    revert with 0, 'SafeMath: addition overflow'
                wantLockedTotal += ext_call.return_data[0]
                require ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82)
                staticcall 0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82.0xdd62ed3e with:
                        gas gas_remaining wei
                       args address(this.address), farmContractAddress
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x4e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[ceil32(return_data.size) + 563 len 26]
                if not ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 457 len 64] = 0, address(stor2.field_0), Mask(224, 31, ext_call.return_data[0]) >> 31
                mem[ceil32(return_data.size) + 549 len 4] = 0
                call 0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82 with:
                   funct uint32(stor2.field_0)
                     gas gas_remaining wei
                    args 2 * ext_call.return_data[0], mem[ceil32(return_data.size) + 393 len 28], mem[ceil32(return_data.size) + 521 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2
                    if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 567 len 22]
                    require ext_code.size(farmContractAddress)
                    if not uint8(stor2.field_8):
                        call farmContractAddress.deposit(uint256 arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args 0, ext_call.return_data[0]
                    else:
                        call farmContractAddress.enterStaking(uint256 arg1) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0]
                else:
                    mem[ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 
                                    'SafeERC20: low-level call failed',
                                    mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 489]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 568 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                    require ext_code.size(farmContractAddress)
                    if not uint8(stor2.field_8):
                        call farmContractAddress.deposit(uint256 arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args 0, ext_call.return_data[0], mem[(2 * ceil32(return_data.size)) + 526 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    else:
                        call farmContractAddress.enterStaking(uint256 arg1) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            return arg2
        if arg2:
            if sharesTotal * arg2 / arg2 != sharesTotal:
                revert with 0, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[ceil32(return_data.size) + 394 len 31]
            if sharesTotal * arg2:
                if entranceFeeFactor * sharesTotal * arg2 / sharesTotal * arg2 != entranceFeeFactor:
                    revert with 0, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[ceil32(return_data.size) + 394 len 31]
                if not wantLockedTotal:
                    revert with 0, 'SafeMath: division by zero'
                if (entranceFeeFactor * sharesTotal * arg2 / wantLockedTotal / 10000) + sharesTotal < sharesTotal:
                    revert with 0, 'SafeMath: addition overflow'
                sharesTotal += entranceFeeFactor * sharesTotal * arg2 / wantLockedTotal / 10000
                if not uint8(stor2.field_16):
                    if arg2 + wantLockedTotal < wantLockedTotal:
                        revert with 0, 'SafeMath: addition overflow'
                    wantLockedTotal += arg2
                else:
                    require ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82)
                    staticcall 0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] + wantLockedTotal < wantLockedTotal:
                        revert with 0, 'SafeMath: addition overflow'
                    wantLockedTotal += ext_call.return_data[0]
                    require ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82)
                    staticcall 0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82.0xdd62ed3e with:
                            gas gas_remaining wei
                           args address(this.address), farmContractAddress
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x4e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[ceil32(return_data.size) + 691 len 26]
                    if not ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 585 len 64] = 0, address(stor2.field_0), Mask(224, 31, ext_call.return_data[0]) >> 31
                    call 0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82 with:
                       funct uint32(stor2.field_0)
                         gas gas_remaining wei
                        args 2 * ext_call.return_data[0], mem[ceil32(return_data.size) + 521 len 28], mem[ceil32(return_data.size) + 649 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2
                        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 695 len 22]
                    else:
                        mem[ceil32(return_data.size) + 617 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 617]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 696 len 22]
                    require ext_code.size(farmContractAddress)
                    if not uint8(stor2.field_8):
                        call farmContractAddress.deposit(uint256 arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args 0, ext_call.return_data[0]
                    else:
                        call farmContractAddress.enterStaking(uint256 arg1) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                return (entranceFeeFactor * sharesTotal * arg2 / wantLockedTotal / 10000)
        if not wantLockedTotal:
            revert with 0, 'SafeMath: division by zero'
        if (0 / wantLockedTotal / 10000) + sharesTotal < sharesTotal:
            revert with 0, 'SafeMath: addition overflow'
        sharesTotal += 0 / wantLockedTotal / 10000
        if not uint8(stor2.field_16):
            if arg2 + wantLockedTotal < wantLockedTotal:
                revert with 0, 'SafeMath: addition overflow'
            wantLockedTotal += arg2
        else:
            require ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82)
            staticcall 0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] + wantLockedTotal < wantLockedTotal:
                revert with 0, 'SafeMath: addition overflow'
            wantLockedTotal += ext_call.return_data[0]
            require ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82)
            staticcall 0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82.0xdd62ed3e with:
                    gas gas_remaining wei
                   args address(this.address), farmContractAddress
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if eth.balance(this.address) < 0:
                revert with 0, 
                            32,
                            38,
                            0x4e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                            mem[ceil32(return_data.size) + 691 len 26]
            if not ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82):
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 585 len 64] = 0, address(stor2.field_0), Mask(224, 31, ext_call.return_data[0]) >> 31
            mem[ceil32(return_data.size) + 677 len 4] = 0
            call 0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82 with:
               funct uint32(stor2.field_0)
                 gas gas_remaining wei
                args 2 * ext_call.return_data[0], mem[ceil32(return_data.size) + 521 len 28], mem[ceil32(return_data.size) + 649 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2
                if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 695 len 22]
                require ext_code.size(farmContractAddress)
                if not uint8(stor2.field_8):
                    call farmContractAddress.deposit(uint256 arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args 0, ext_call.return_data[0]
                else:
                    call farmContractAddress.enterStaking(uint256 arg1) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
            else:
                mem[ceil32(return_data.size) + 617 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 
                                'SafeERC20: low-level call failed',
                                mem[(2 * ceil32(return_data.size)) + 686 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[ceil32(return_data.size) + 617]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + 696 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                require ext_code.size(farmContractAddress)
                if not uint8(stor2.field_8):
                    call farmContractAddress.deposit(uint256 arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args 0, ext_call.return_data[0], mem[(2 * ceil32(return_data.size)) + 654 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                else:
                    call farmContractAddress.enterStaking(uint256 arg1) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    else:
        require return_data.size >= 32
        if not mem[324]:
            revert with 0, 
                        32,
                        42,
                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[ceil32(return_data.size) + 403 len 22]
        if not wantLockedTotal:
            if arg2 + sharesTotal < sharesTotal:
                revert with 0, 'SafeMath: addition overflow'
            sharesTotal += arg2
            if not uint8(stor2.field_16):
                if arg2 + wantLockedTotal < wantLockedTotal:
                    revert with 0, 'SafeMath: addition overflow'
                wantLockedTotal += arg2
            else:
                require ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82)
                staticcall 0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] + wantLockedTotal < wantLockedTotal:
                    revert with 0, 'SafeMath: addition overflow'
                wantLockedTotal += ext_call.return_data[0]
                require ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82)
                staticcall 0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82.0xdd62ed3e with:
                        gas gas_remaining wei
                       args address(this.address), farmContractAddress
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x4e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[ceil32(return_data.size) + 563 len 26]
                if not ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 457 len 64] = 0, address(stor2.field_0), Mask(224, 31, ext_call.return_data[0]) >> 31
                call 0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82 with:
                   funct uint32(stor2.field_0)
                     gas gas_remaining wei
                    args 2 * ext_call.return_data[0], mem[ceil32(return_data.size) + 393 len 28], mem[ceil32(return_data.size) + 521 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2
                    if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 567 len 22]
                else:
                    mem[ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 489]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 568 len 22]
                require ext_code.size(farmContractAddress)
                if not uint8(stor2.field_8):
                    call farmContractAddress.deposit(uint256 arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args 0, ext_call.return_data[0]
                else:
                    call farmContractAddress.enterStaking(uint256 arg1) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            return arg2
        if not arg2:
            if not wantLockedTotal:
                revert with 0, 'SafeMath: division by zero'
            if (0 / wantLockedTotal / 10000) + sharesTotal < sharesTotal:
                revert with 0, 'SafeMath: addition overflow'
            sharesTotal += 0 / wantLockedTotal / 10000
            if not uint8(stor2.field_16):
                if arg2 + wantLockedTotal < wantLockedTotal:
                    revert with 0, 'SafeMath: addition overflow'
                wantLockedTotal += arg2
            else:
                require ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82)
                staticcall 0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] + wantLockedTotal < wantLockedTotal:
                    revert with 0, 'SafeMath: addition overflow'
                wantLockedTotal += ext_call.return_data[0]
                require ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82)
                staticcall 0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82.0xdd62ed3e with:
                        gas gas_remaining wei
                       args address(this.address), farmContractAddress
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x4e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[ceil32(return_data.size) + 691 len 26]
                if not ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 585 len 64] = 0, address(stor2.field_0), Mask(224, 31, ext_call.return_data[0]) >> 31
                call 0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82 with:
                   funct uint32(stor2.field_0)
                     gas gas_remaining wei
                    args 2 * ext_call.return_data[0], mem[ceil32(return_data.size) + 521 len 28], mem[ceil32(return_data.size) + 649 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2
                    if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 695 len 22]
                else:
                    mem[ceil32(return_data.size) + 617 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 617]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 696 len 22]
                require ext_code.size(farmContractAddress)
                if not uint8(stor2.field_8):
                    call farmContractAddress.deposit(uint256 arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args 0, ext_call.return_data[0]
                else:
                    call farmContractAddress.enterStaking(uint256 arg1) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        else:
            if sharesTotal * arg2 / arg2 != sharesTotal:
                revert with 0, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[ceil32(return_data.size) + 394 len 31]
            if sharesTotal * arg2:
                if entranceFeeFactor * sharesTotal * arg2 / sharesTotal * arg2 != entranceFeeFactor:
                    revert with 0, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[ceil32(return_data.size) + 394 len 31]
                if not wantLockedTotal:
                    revert with 0, 'SafeMath: division by zero'
                if (entranceFeeFactor * sharesTotal * arg2 / wantLockedTotal / 10000) + sharesTotal < sharesTotal:
                    revert with 0, 'SafeMath: addition overflow'
                sharesTotal += entranceFeeFactor * sharesTotal * arg2 / wantLockedTotal / 10000
                if not uint8(stor2.field_16):
                    if arg2 + wantLockedTotal < wantLockedTotal:
                        revert with 0, 'SafeMath: addition overflow'
                    wantLockedTotal += arg2
                else:
                    require ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82)
                    staticcall 0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] + wantLockedTotal < wantLockedTotal:
                        revert with 0, 'SafeMath: addition overflow'
                    wantLockedTotal += ext_call.return_data[0]
                    require ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82)
                    staticcall 0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82.0xdd62ed3e with:
                            gas gas_remaining wei
                           args address(this.address), farmContractAddress
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x4e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[ceil32(return_data.size) + 691 len 26]
                    if not ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 585 len 64] = 0, address(stor2.field_0), Mask(224, 31, ext_call.return_data[0]) >> 31
                    call 0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82 with:
                       funct uint32(stor2.field_0)
                         gas gas_remaining wei
                        args 2 * ext_call.return_data[0], mem[ceil32(return_data.size) + 521 len 28], mem[ceil32(return_data.size) + 649 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2
                        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 695 len 22]
                    else:
                        mem[ceil32(return_data.size) + 617 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 617]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 696 len 22]
                    require ext_code.size(farmContractAddress)
                    if not uint8(stor2.field_8):
                        call farmContractAddress.deposit(uint256 arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args 0, ext_call.return_data[0]
                    else:
                        call farmContractAddress.enterStaking(uint256 arg1) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                return (entranceFeeFactor * sharesTotal * arg2 / wantLockedTotal / 10000)
            if not wantLockedTotal:
                revert with 0, 'SafeMath: division by zero'
            if (0 / wantLockedTotal / 10000) + sharesTotal < sharesTotal:
                revert with 0, 'SafeMath: addition overflow'
            sharesTotal += 0 / wantLockedTotal / 10000
            if not uint8(stor2.field_16):
                if arg2 + wantLockedTotal < wantLockedTotal:
                    revert with 0, 'SafeMath: addition overflow'
                wantLockedTotal += arg2
            else:
                require ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82)
                staticcall 0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] + wantLockedTotal < wantLockedTotal:
                    revert with 0, 'SafeMath: addition overflow'
                wantLockedTotal += ext_call.return_data[0]
                require ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82)
                staticcall 0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82.0xdd62ed3e with:
                        gas gas_remaining wei
                       args address(this.address), farmContractAddress
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x4e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[ceil32(return_data.size) + 691 len 26]
                if not ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 585 len 64] = 0, address(stor2.field_0), Mask(224, 31, ext_call.return_data[0]) >> 31
                mem[ceil32(return_data.size) + 677 len 4] = 0
                call 0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82 with:
                   funct uint32(stor2.field_0)
                     gas gas_remaining wei
                    args 2 * ext_call.return_data[0], mem[ceil32(return_data.size) + 521 len 28], mem[ceil32(return_data.size) + 649 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2
                    if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 695 len 22]
                    require ext_code.size(farmContractAddress)
                    if not uint8(stor2.field_8):
                        call farmContractAddress.deposit(uint256 arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args 0, ext_call.return_data[0]
                    else:
                        call farmContractAddress.enterStaking(uint256 arg1) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0]
                else:
                    mem[ceil32(return_data.size) + 617 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 
                                    'SafeERC20: low-level call failed',
                                    mem[(2 * ceil32(return_data.size)) + 686 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 617]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 696 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                    require ext_code.size(farmContractAddress)
                    if not uint8(stor2.field_8):
                        call farmContractAddress.deposit(uint256 arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args 0, ext_call.return_data[0], mem[(2 * ceil32(return_data.size)) + 654 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    else:
                        call farmContractAddress.enterStaking(uint256 arg1) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
    return (0 / wantLockedTotal / 10000)
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
    if not uint8(stor2.field_16):
        require ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82)
        staticcall 0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if arg2 <= ext_call.return_data[0]:
            if wantLockedTotal >= arg2:
                if not arg2:
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x4e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[430 len 26]
                    if not ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82):
                        revert with 0, 'Address: call to non-contract'
                    mem[324 len 64] = unknown_0xa9059cbb(?????), 0x2b6c058dd1751658cfdc58c6, 0, 0
                    call 0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82.0x2421b234 with:
                         gas gas_remaining wei
                        args 0, mem[388 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: division by zero'
                    mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if not return_data.size:
                        if not arg2:
                            if not wantLockedTotal:
                                revert with 0, 'SafeMath: division by zero'
                            if 0 / wantLockedTotal <= sharesTotal:
                                sharesTotal -= 0 / wantLockedTotal
                                if arg2 > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                wantLockedTotal -= arg2
                                if 0 > arg2:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x4e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                mem[ceil32(return_data.size) + 851 len 26]
                                if not ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 745 len 64] = unknown_0xa9059cbb(?????), 0x657d0420f696aaedc48b4054, 283428678, Mask(224, 32, arg2) >> 32
                                mem[ceil32(return_data.size) + 837 len 4] = 0
                                call 0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82.0x10e4c746 with:
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg2) << 224, mem[ceil32(return_data.size) + 809 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: division by zero'
                                mem[ceil32(return_data.size) + 777 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 
                                                'SafeERC20: low-level call failed',
                                                mem[(2 * ceil32(return_data.size)) + 846 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[ceil32(return_data.size) + 777]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(2 * ceil32(return_data.size)) + 856 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                stor1 = 1
                                return 0 / wantLockedTotal, 
                                       mem[(2 * ceil32(return_data.size)) + 778 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        else:
                            if sharesTotal * arg2 / arg2 != sharesTotal:
                                revert with 0, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[ceil32(return_data.size) + 426 len 31]
                            if not wantLockedTotal:
                                revert with 0, 'SafeMath: division by zero'
                            if sharesTotal * arg2 / wantLockedTotal <= sharesTotal:
                                sharesTotal -= sharesTotal * arg2 / wantLockedTotal
                                if arg2 > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                wantLockedTotal -= arg2
                                if 0 > arg2:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x4e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                mem[ceil32(return_data.size) + 851 len 26]
                                if not ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 745 len 64] = unknown_0xa9059cbb(?????), 0x657d0420f696aaedc48b4054, 0, Mask(224, 32, arg2) >> 32
                                mem[ceil32(return_data.size) + 809 len 0] = 0
                                call 0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82.0x10e4c746 with:
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg2) << 224, mem[ceil32(return_data.size) + 809 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: division by zero'
                                mem[ceil32(return_data.size) + 777 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[ceil32(return_data.size) + 777]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(2 * ceil32(return_data.size)) + 856 len 22]
                                stor1 = 1
                                return (sharesTotal * arg2 / wantLockedTotal)
                        if sharesTotal > sharesTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        sharesTotal = 0
                        if arg2 > wantLockedTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        wantLockedTotal -= arg2
                        if 0 > arg2:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if eth.balance(this.address) < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0x4e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[ceil32(return_data.size) + 851 len 26]
                        if not ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 745 len 64] = unknown_0xa9059cbb(?????), 0x657d0420f696aaedc48b4054, 0, Mask(224, 32, arg2) >> 32
                        mem[ceil32(return_data.size) + 809 len 0] = 0
                        call 0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82.0x10e4c746 with:
                             gas gas_remaining wei
                            args Mask(224, 32, arg2) << 224, mem[ceil32(return_data.size) + 809 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[ceil32(return_data.size) + 777 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 777]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 856 len 22]
                        stor1 = 1
                        return sharesTotal
                    require return_data.size >= 32
                    if not mem[356]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 435 len 22]
                    if not arg2:
                        if not wantLockedTotal:
                            revert with 0, 'SafeMath: division by zero'
                        if 0 / wantLockedTotal <= sharesTotal:
                            sharesTotal -= 0 / wantLockedTotal
                            if arg2 > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal -= arg2
                            if 0 > arg2:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if eth.balance(this.address) < 0:
                                revert with 0, 
                                            32,
                                            38,
                                            0x4e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                            mem[ceil32(return_data.size) + 851 len 26]
                            if not ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 745 len 64] = unknown_0xa9059cbb(?????), 0x657d0420f696aaedc48b4054, 283428678, Mask(224, 32, arg2) >> 32
                            mem[ceil32(return_data.size) + 837 len 4] = 0
                            call 0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82.0x10e4c746 with:
                                 gas gas_remaining wei
                                args Mask(224, 32, arg2) << 224, mem[ceil32(return_data.size) + 809 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
                            mem[ceil32(return_data.size) + 777 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            'SafeERC20: low-level call failed',
                                            mem[(2 * ceil32(return_data.size)) + 846 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[ceil32(return_data.size) + 777]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 856 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                            stor1 = 1
                            return 0 / wantLockedTotal, 
                                   mem[(2 * ceil32(return_data.size)) + 778 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if sharesTotal > sharesTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        sharesTotal = 0
                        if arg2 > wantLockedTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        wantLockedTotal -= arg2
                        if 0 > arg2:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if eth.balance(this.address) < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0x4e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[ceil32(return_data.size) + 851 len 26]
                        if not ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 745 len 64] = unknown_0xa9059cbb(?????), 0x657d0420f696aaedc48b4054, 0, Mask(224, 32, arg2) >> 32
                        mem[ceil32(return_data.size) + 809 len 0] = 0
                        call 0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82.0x10e4c746 with:
                             gas gas_remaining wei
                            args Mask(224, 32, arg2) << 224, mem[ceil32(return_data.size) + 809 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[ceil32(return_data.size) + 777 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 777]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 856 len 22]
                        stor1 = 1
                        return sharesTotal
                    if sharesTotal * arg2 / arg2 != sharesTotal:
                        revert with 0, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[ceil32(return_data.size) + 426 len 31]
                    if not wantLockedTotal:
                        revert with 0, 'SafeMath: division by zero'
                    if sharesTotal * arg2 / wantLockedTotal <= sharesTotal:
                        sharesTotal -= sharesTotal * arg2 / wantLockedTotal
                        if arg2 > wantLockedTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        wantLockedTotal -= arg2
                        if 0 > arg2:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if eth.balance(this.address) < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0x4e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[ceil32(return_data.size) + 851 len 26]
                        if not ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 745 len 64] = unknown_0xa9059cbb(?????), 0x657d0420f696aaedc48b4054, 0, Mask(224, 32, arg2) >> 32
                        mem[ceil32(return_data.size) + 809 len 0] = 0
                        call 0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82.0x10e4c746 with:
                             gas gas_remaining wei
                            args Mask(224, 32, arg2) << 224, mem[ceil32(return_data.size) + 809 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[ceil32(return_data.size) + 777 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 777]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 856 len 22]
                        stor1 = 1
                        return (sharesTotal * arg2 / wantLockedTotal)
                    if sharesTotal > sharesTotal:
                        revert with 0, 'SafeMath: subtraction overflow'
                    sharesTotal = 0
                    if arg2 > wantLockedTotal:
                        revert with 0, 'SafeMath: subtraction overflow'
                    wantLockedTotal -= arg2
                    if 0 > arg2:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x4e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[ceil32(return_data.size) + 851 len 26]
                    if not ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 745 len 64] = unknown_0xa9059cbb(?????), 0x657d0420f696aaedc48b4054, 283428678, Mask(224, 32, arg2) >> 32
                    mem[ceil32(return_data.size) + 837 len 4] = 0
                    call 0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82.0x10e4c746 with:
                         gas gas_remaining wei
                        args Mask(224, 32, arg2) << 224, mem[ceil32(return_data.size) + 809 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: division by zero'
                    mem[ceil32(return_data.size) + 777 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 
                                    'SafeERC20: low-level call failed',
                                    mem[(2 * ceil32(return_data.size)) + 846 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 777]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 856 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                    stor1 = 1
                    return sharesTotal, 
                           mem[(2 * ceil32(return_data.size)) + 778 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if WITHDRAWAL_FEE * arg2 / arg2 != WITHDRAWAL_FEE:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x4e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[430 len 26]
                if not ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82):
                    revert with 0, 'Address: call to non-contract'
                mem[324 len 64] = unknown_0xa9059cbb(?????), 0x2b6c058dd1751658cfdc58c6, 0, Mask(224, 32, WITHDRAWAL_FEE * arg2 / 10000) >> 32
                mem[388 len 0] = 0
                call 0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82.0x2421b234 with:
                     gas gas_remaining wei
                    args Mask(224, 32, WITHDRAWAL_FEE * arg2 / 10000) << 224, mem[388 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 'SafeMath: division by zero'
                mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if not return_data.size:
                    if not arg2:
                        if not wantLockedTotal:
                            revert with 0, 'SafeMath: division by zero'
                        if 0 / wantLockedTotal <= sharesTotal:
                            sharesTotal -= 0 / wantLockedTotal
                            if arg2 > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal -= arg2
                            if WITHDRAWAL_FEE * arg2 / 10000 > arg2:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if eth.balance(this.address) < 0:
                                revert with 0, 
                                            32,
                                            38,
                                            0x4e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                            mem[ceil32(return_data.size) + 851 len 26]
                            if not ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 745 len 64] = 0, 0x657d0420f696aaedc48b40545ba5e85b10e4c746, Mask(224, 32, arg2 - (WITHDRAWAL_FEE * arg2 / 10000)) >> 32
                            call 0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82.0x10e4c746 with:
                                 gas gas_remaining wei
                                args arg2 - (WITHDRAWAL_FEE * arg2 / 10000), mem[ceil32(return_data.size) + 681 len 28], mem[ceil32(return_data.size) + 809 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
                            mem[ceil32(return_data.size) + 777 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            'SafeERC20: low-level call failed',
                                            mem[(2 * ceil32(return_data.size)) + 846 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[ceil32(return_data.size) + 777]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 856 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                            stor1 = 1
                            return (0 / wantLockedTotal)
                        if sharesTotal > sharesTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        sharesTotal = 0
                        if arg2 > wantLockedTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        wantLockedTotal -= arg2
                        if WITHDRAWAL_FEE * arg2 / 10000 > arg2:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if eth.balance(this.address) < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0x4e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[ceil32(return_data.size) + 851 len 26]
                        if not ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 745 len 64] = 0, 0x657d0420f696aaedc48b40545ba5e85b10e4c746, Mask(224, 32, arg2 - (WITHDRAWAL_FEE * arg2 / 10000)) >> 32
                        call 0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82.0x10e4c746 with:
                             gas gas_remaining wei
                            args arg2 - (WITHDRAWAL_FEE * arg2 / 10000), mem[ceil32(return_data.size) + 681 len 28], mem[ceil32(return_data.size) + 809 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[ceil32(return_data.size) + 777 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        'SafeERC20: low-level call failed',
                                        mem[(2 * ceil32(return_data.size)) + 846 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 777]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 856 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                    else:
                        if sharesTotal * arg2 / arg2 != sharesTotal:
                            revert with 0, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[ceil32(return_data.size) + 426 len 31]
                        if not wantLockedTotal:
                            revert with 0, 'SafeMath: division by zero'
                        if sharesTotal * arg2 / wantLockedTotal <= sharesTotal:
                            sharesTotal -= sharesTotal * arg2 / wantLockedTotal
                            if arg2 > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal -= arg2
                            if WITHDRAWAL_FEE * arg2 / 10000 > arg2:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if eth.balance(this.address) < 0:
                                revert with 0, 
                                            32,
                                            38,
                                            0x4e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                            mem[ceil32(return_data.size) + 851 len 26]
                            if not ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 745 len 64] = 0, 0x657d0420f696aaedc48b40545ba5e85b10e4c746, Mask(224, 32, arg2 - (WITHDRAWAL_FEE * arg2 / 10000)) >> 32
                            call 0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82.0x10e4c746 with:
                                 gas gas_remaining wei
                                args arg2 - (WITHDRAWAL_FEE * arg2 / 10000), mem[ceil32(return_data.size) + 681 len 28], mem[ceil32(return_data.size) + 809 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
                            mem[ceil32(return_data.size) + 777 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[ceil32(return_data.size) + 777]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 856 len 22]
                            stor1 = 1
                            return (sharesTotal * arg2 / wantLockedTotal)
                        if sharesTotal > sharesTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        sharesTotal = 0
                        if arg2 > wantLockedTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        wantLockedTotal -= arg2
                        if WITHDRAWAL_FEE * arg2 / 10000 > arg2:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if eth.balance(this.address) < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0x4e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[ceil32(return_data.size) + 851 len 26]
                        if not ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 745 len 64] = 0, 0x657d0420f696aaedc48b40545ba5e85b10e4c746, Mask(224, 32, arg2 - (WITHDRAWAL_FEE * arg2 / 10000)) >> 32
                        call 0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82.0x10e4c746 with:
                             gas gas_remaining wei
                            args arg2 - (WITHDRAWAL_FEE * arg2 / 10000), mem[ceil32(return_data.size) + 681 len 28], mem[ceil32(return_data.size) + 809 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[ceil32(return_data.size) + 777 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 777]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 856 len 22]
                else:
                    require return_data.size >= 32
                    if not mem[356]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 435 len 22]
                    if not arg2:
                        if not wantLockedTotal:
                            revert with 0, 'SafeMath: division by zero'
                        if 0 / wantLockedTotal <= sharesTotal:
                            sharesTotal -= 0 / wantLockedTotal
                            if arg2 > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal -= arg2
                            if WITHDRAWAL_FEE * arg2 / 10000 > arg2:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if eth.balance(this.address) < 0:
                                revert with 0, 
                                            32,
                                            38,
                                            0x4e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                            mem[ceil32(return_data.size) + 851 len 26]
                            if not ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 745 len 64] = 0, 0x657d0420f696aaedc48b40545ba5e85b10e4c746, Mask(224, 32, arg2 - (WITHDRAWAL_FEE * arg2 / 10000)) >> 32
                            call 0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82.0x10e4c746 with:
                                 gas gas_remaining wei
                                args arg2 - (WITHDRAWAL_FEE * arg2 / 10000), mem[ceil32(return_data.size) + 681 len 28], mem[ceil32(return_data.size) + 809 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
                            mem[ceil32(return_data.size) + 777 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[ceil32(return_data.size) + 777]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 856 len 22]
                            stor1 = 1
                            return (0 / wantLockedTotal)
                        if sharesTotal > sharesTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        sharesTotal = 0
                        if arg2 > wantLockedTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        wantLockedTotal -= arg2
                        if WITHDRAWAL_FEE * arg2 / 10000 > arg2:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if eth.balance(this.address) < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0x4e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[ceil32(return_data.size) + 851 len 26]
                        if not ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 745 len 64] = 0, 0x657d0420f696aaedc48b40545ba5e85b10e4c746, Mask(224, 32, arg2 - (WITHDRAWAL_FEE * arg2 / 10000)) >> 32
                        call 0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82.0x10e4c746 with:
                             gas gas_remaining wei
                            args arg2 - (WITHDRAWAL_FEE * arg2 / 10000), mem[ceil32(return_data.size) + 681 len 28], mem[ceil32(return_data.size) + 809 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[ceil32(return_data.size) + 777 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        'SafeERC20: low-level call failed',
                                        mem[(2 * ceil32(return_data.size)) + 846 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 777]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 856 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                    else:
                        if sharesTotal * arg2 / arg2 != sharesTotal:
                            revert with 0, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[ceil32(return_data.size) + 426 len 31]
                        if not wantLockedTotal:
                            revert with 0, 'SafeMath: division by zero'
                        if sharesTotal * arg2 / wantLockedTotal <= sharesTotal:
                            sharesTotal -= sharesTotal * arg2 / wantLockedTotal
                            if arg2 > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal -= arg2
                            if WITHDRAWAL_FEE * arg2 / 10000 > arg2:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if eth.balance(this.address) < 0:
                                revert with 0, 
                                            32,
                                            38,
                                            0x4e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                            mem[ceil32(return_data.size) + 851 len 26]
                            if not ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 745 len 64] = 0, 0x657d0420f696aaedc48b40545ba5e85b10e4c746, Mask(224, 32, arg2 - (WITHDRAWAL_FEE * arg2 / 10000)) >> 32
                            call 0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82.0x10e4c746 with:
                                 gas gas_remaining wei
                                args arg2 - (WITHDRAWAL_FEE * arg2 / 10000), mem[ceil32(return_data.size) + 681 len 28], mem[ceil32(return_data.size) + 809 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
                            mem[ceil32(return_data.size) + 777 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            'SafeERC20: low-level call failed',
                                            mem[(2 * ceil32(return_data.size)) + 846 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[ceil32(return_data.size) + 777]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 856 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                            stor1 = 1
                            return (sharesTotal * arg2 / wantLockedTotal)
                        if sharesTotal > sharesTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        sharesTotal = 0
                        if arg2 > wantLockedTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        wantLockedTotal -= arg2
                        if WITHDRAWAL_FEE * arg2 / 10000 > arg2:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if eth.balance(this.address) < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0x4e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[ceil32(return_data.size) + 851 len 26]
                        if not ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 745 len 64] = 0, 0x657d0420f696aaedc48b40545ba5e85b10e4c746, Mask(224, 32, arg2 - (WITHDRAWAL_FEE * arg2 / 10000)) >> 32
                        call 0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82.0x10e4c746 with:
                             gas gas_remaining wei
                            args arg2 - (WITHDRAWAL_FEE * arg2 / 10000), mem[ceil32(return_data.size) + 681 len 28], mem[ceil32(return_data.size) + 809 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[ceil32(return_data.size) + 777 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 777]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 856 len 22]
                stor1 = 1
                return sharesTotal
            if not wantLockedTotal:
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x4e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[430 len 26]
                if not ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82):
                    revert with 0, 'Address: call to non-contract'
                mem[324 len 64] = unknown_0xa9059cbb(?????), 0x2b6c058dd1751658cfdc58c6, 0, 0
                call 0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82.0x2421b234 with:
                     gas gas_remaining wei
                    args 0, mem[388 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 'SafeMath: division by zero'
                mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if not return_data.size:
                    if not wantLockedTotal:
                        revert with 0, 'SafeMath: division by zero'
                    if sharesTotal * wantLockedTotal / wantLockedTotal != sharesTotal:
                        revert with 0, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[ceil32(return_data.size) + 426 len 31]
                    if not wantLockedTotal:
                        revert with 0, 'SafeMath: division by zero'
                    if sharesTotal * wantLockedTotal / wantLockedTotal <= sharesTotal:
                        sharesTotal -= sharesTotal * wantLockedTotal / wantLockedTotal
                        if wantLockedTotal > wantLockedTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        wantLockedTotal = 0
                        if 0 > wantLockedTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if eth.balance(this.address) < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0x4e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[ceil32(return_data.size) + 851 len 26]
                        if not ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 745 len 64] = unknown_0xa9059cbb(?????), 0x657d0420f696aaedc48b4054, 283428678, Mask(224, 0, stor7.field_32)
                        mem[ceil32(return_data.size) + 837 len 4] = 0
                        call 0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82.0x10e4c746 with:
                             gas gas_remaining wei
                            args Mask(480, 0, stor7.field_0), mem[ceil32(return_data.size) + 809 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[ceil32(return_data.size) + 777 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        'SafeERC20: low-level call failed',
                                        mem[(2 * ceil32(return_data.size)) + 846 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 777]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 856 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                        stor1 = 1
                        return sharesTotal * wantLockedTotal / wantLockedTotal, 
                               mem[(2 * ceil32(return_data.size)) + 778 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if sharesTotal > sharesTotal:
                        revert with 0, 'SafeMath: subtraction overflow'
                    sharesTotal = 0
                    if wantLockedTotal > wantLockedTotal:
                        revert with 0, 'SafeMath: subtraction overflow'
                    wantLockedTotal = 0
                    if 0 > wantLockedTotal:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x4e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[ceil32(return_data.size) + 851 len 26]
                    if not ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 745 len 64] = unknown_0xa9059cbb(?????), 0x657d0420f696aaedc48b4054, 0, Mask(224, 0, stor7.field_32)
                    mem[ceil32(return_data.size) + 809 len 0] = 0
                    call 0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82.0x10e4c746 with:
                         gas gas_remaining wei
                        args Mask(480, 0, stor7.field_0), mem[ceil32(return_data.size) + 809 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: division by zero'
                    mem[ceil32(return_data.size) + 777 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 777]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 856 len 22]
                    stor1 = 1
                    return sharesTotal
                require return_data.size >= 32
                if not mem[356]:
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 435 len 22]
                if not wantLockedTotal:
                    revert with 0, 'SafeMath: division by zero'
                if sharesTotal * wantLockedTotal / wantLockedTotal != sharesTotal:
                    revert with 0, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[ceil32(return_data.size) + 426 len 31]
                if not wantLockedTotal:
                    revert with 0, 'SafeMath: division by zero'
                if sharesTotal * wantLockedTotal / wantLockedTotal <= sharesTotal:
                    sharesTotal -= sharesTotal * wantLockedTotal / wantLockedTotal
                    if wantLockedTotal > wantLockedTotal:
                        revert with 0, 'SafeMath: subtraction overflow'
                    wantLockedTotal = 0
                    if 0 > wantLockedTotal:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x4e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[ceil32(return_data.size) + 851 len 26]
                    if not ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 745 len 64] = unknown_0xa9059cbb(?????), 0x657d0420f696aaedc48b4054, 283428678, Mask(224, 0, stor7.field_32)
                    mem[ceil32(return_data.size) + 837 len 4] = 0
                    call 0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82.0x10e4c746 with:
                         gas gas_remaining wei
                        args Mask(480, 0, stor7.field_0), mem[ceil32(return_data.size) + 809 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: division by zero'
                    mem[ceil32(return_data.size) + 777 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 
                                    'SafeERC20: low-level call failed',
                                    mem[(2 * ceil32(return_data.size)) + 846 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 777]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 856 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                    stor1 = 1
                    return sharesTotal * wantLockedTotal / wantLockedTotal, 
                           mem[(2 * ceil32(return_data.size)) + 778 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if sharesTotal > sharesTotal:
                    revert with 0, 'SafeMath: subtraction overflow'
                sharesTotal = 0
                if wantLockedTotal > wantLockedTotal:
                    revert with 0, 'SafeMath: subtraction overflow'
                wantLockedTotal = 0
                if 0 > wantLockedTotal:
                    revert with 0, 'SafeMath: subtraction overflow'
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x4e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[ceil32(return_data.size) + 851 len 26]
                if not ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 745 len 64] = unknown_0xa9059cbb(?????), 0x657d0420f696aaedc48b4054, 283428678, Mask(224, 0, stor7.field_32)
                mem[ceil32(return_data.size) + 837 len 4] = 0
                call 0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82.0x10e4c746 with:
                     gas gas_remaining wei
                    args Mask(480, 0, stor7.field_0), mem[ceil32(return_data.size) + 809 len 4]
            else:
                if WITHDRAWAL_FEE * wantLockedTotal / wantLockedTotal != WITHDRAWAL_FEE:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x4e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[430 len 26]
                if not ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82):
                    revert with 0, 'Address: call to non-contract'
                mem[324 len 64] = unknown_0xa9059cbb(?????), 0x2b6c058dd1751658cfdc58c6, 0, Mask(224, 32, WITHDRAWAL_FEE * wantLockedTotal / 10000) >> 32
                call 0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82.0x2421b234 with:
                     gas gas_remaining wei
                    args Mask(224, 32, WITHDRAWAL_FEE * wantLockedTotal / 10000) << 224, mem[388 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 'SafeMath: division by zero'
                mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if not return_data.size:
                    if not wantLockedTotal:
                        revert with 0, 'SafeMath: division by zero'
                    if sharesTotal * wantLockedTotal / wantLockedTotal != sharesTotal:
                        revert with 0, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[ceil32(return_data.size) + 426 len 31]
                    if not wantLockedTotal:
                        revert with 0, 'SafeMath: division by zero'
                    if sharesTotal * wantLockedTotal / wantLockedTotal <= sharesTotal:
                        sharesTotal -= sharesTotal * wantLockedTotal / wantLockedTotal
                        if wantLockedTotal > wantLockedTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        wantLockedTotal = 0
                        if WITHDRAWAL_FEE * wantLockedTotal / 10000 > wantLockedTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if eth.balance(this.address) < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0x4e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[ceil32(return_data.size) + 851 len 26]
                        if not ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 745 len 64] = unknown_0xa9059cbb(?????), 0x657d0420f696aaedc48b4054, 0, Mask(224, 32, wantLockedTotal - (WITHDRAWAL_FEE * wantLockedTotal / 10000)) >> 32
                        mem[ceil32(return_data.size) + 809 len 0] = 0
                        call 0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82.0x10e4c746 with:
                             gas gas_remaining wei
                            args Mask(224, 32, wantLockedTotal - (WITHDRAWAL_FEE * wantLockedTotal / 10000)) << 224, mem[ceil32(return_data.size) + 809 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[ceil32(return_data.size) + 777 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 777]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 856 len 22]
                        stor1 = 1
                        return (sharesTotal * wantLockedTotal / wantLockedTotal)
                    if sharesTotal > sharesTotal:
                        revert with 0, 'SafeMath: subtraction overflow'
                    sharesTotal = 0
                    if wantLockedTotal > wantLockedTotal:
                        revert with 0, 'SafeMath: subtraction overflow'
                    wantLockedTotal = 0
                    if WITHDRAWAL_FEE * wantLockedTotal / 10000 > wantLockedTotal:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x4e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[ceil32(return_data.size) + 851 len 26]
                    if not ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 745 len 64] = unknown_0xa9059cbb(?????), 0x657d0420f696aaedc48b4054, 0, Mask(224, 32, wantLockedTotal - (WITHDRAWAL_FEE * wantLockedTotal / 10000)) >> 32
                    mem[ceil32(return_data.size) + 809 len 0] = 0
                    call 0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82.0x10e4c746 with:
                         gas gas_remaining wei
                        args Mask(224, 32, wantLockedTotal - (WITHDRAWAL_FEE * wantLockedTotal / 10000)) << 224, mem[ceil32(return_data.size) + 809 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: division by zero'
                    mem[ceil32(return_data.size) + 777 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 777]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 856 len 22]
                    stor1 = 1
                    return sharesTotal
                require return_data.size >= 32
                if not mem[356]:
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 435 len 22]
                if not wantLockedTotal:
                    revert with 0, 'SafeMath: division by zero'
                if sharesTotal * wantLockedTotal / wantLockedTotal != sharesTotal:
                    revert with 0, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[ceil32(return_data.size) + 426 len 31]
                if not wantLockedTotal:
                    revert with 0, 'SafeMath: division by zero'
                if sharesTotal * wantLockedTotal / wantLockedTotal <= sharesTotal:
                    sharesTotal -= sharesTotal * wantLockedTotal / wantLockedTotal
                    if wantLockedTotal > wantLockedTotal:
                        revert with 0, 'SafeMath: subtraction overflow'
                    wantLockedTotal = 0
                    if WITHDRAWAL_FEE * wantLockedTotal / 10000 > wantLockedTotal:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x4e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[ceil32(return_data.size) + 851 len 26]
                    if not ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 745 len 64] = unknown_0xa9059cbb(?????), 0x657d0420f696aaedc48b4054, 283428678, Mask(224, 32, wantLockedTotal - (WITHDRAWAL_FEE * wantLockedTotal / 10000)) >> 32
                    mem[ceil32(return_data.size) + 837 len 4] = 0
                    call 0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82.0x10e4c746 with:
                         gas gas_remaining wei
                        args Mask(224, 32, wantLockedTotal - (WITHDRAWAL_FEE * wantLockedTotal / 10000)) << 224, mem[ceil32(return_data.size) + 809 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: division by zero'
                    mem[ceil32(return_data.size) + 777 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 
                                    'SafeERC20: low-level call failed',
                                    mem[(2 * ceil32(return_data.size)) + 846 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 777]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 856 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                    stor1 = 1
                    return sharesTotal * wantLockedTotal / wantLockedTotal, 
                           mem[(2 * ceil32(return_data.size)) + 778 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if sharesTotal > sharesTotal:
                    revert with 0, 'SafeMath: subtraction overflow'
                sharesTotal = 0
                if wantLockedTotal > wantLockedTotal:
                    revert with 0, 'SafeMath: subtraction overflow'
                wantLockedTotal = 0
                if WITHDRAWAL_FEE * wantLockedTotal / 10000 > wantLockedTotal:
                    revert with 0, 'SafeMath: subtraction overflow'
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x4e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[ceil32(return_data.size) + 851 len 26]
                if not ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 745 len 64] = unknown_0xa9059cbb(?????), 0x657d0420f696aaedc48b4054, 283428678, Mask(224, 32, wantLockedTotal - (WITHDRAWAL_FEE * wantLockedTotal / 10000)) >> 32
                mem[ceil32(return_data.size) + 837 len 4] = 0
                call 0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82.0x10e4c746 with:
                     gas gas_remaining wei
                    args Mask(224, 32, wantLockedTotal - (WITHDRAWAL_FEE * wantLockedTotal / 10000)) << 224, mem[ceil32(return_data.size) + 809 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 'SafeMath: division by zero'
            mem[ceil32(return_data.size) + 777 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 
                            'SafeERC20: low-level call failed',
                            mem[(2 * ceil32(return_data.size)) + 846 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            if return_data.size:
                require return_data.size >= 32
                if not mem[ceil32(return_data.size) + 777]:
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(2 * ceil32(return_data.size)) + 856 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
            stor1 = 1
            return sharesTotal, 
                   mem[(2 * ceil32(return_data.size)) + 778 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
        if wantLockedTotal >= ext_call.return_data[0]:
            if not ext_call.return_data[0]:
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x4e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[430 len 26]
                if not ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82):
                    revert with 0, 'Address: call to non-contract'
                mem[324 len 64] = unknown_0xa9059cbb(?????), 0x2b6c058dd1751658cfdc58c6, 0, 0
                mem[388 len 0] = 0
                call 0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82.0x2421b234 with:
                     gas gas_remaining wei
                    args Mask(480, -256, unknown_0xa9059cbb(?????), 0x2b6c058dd1751658cfdc58c6, 0, 0) << 256, mem[388 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 'SafeMath: division by zero'
                mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if not return_data.size:
                    if not ext_call.return_data[0]:
                        if not wantLockedTotal:
                            revert with 0, 'SafeMath: division by zero'
                        if 0 / wantLockedTotal <= sharesTotal:
                            sharesTotal -= 0 / wantLockedTotal
                            if ext_call.return_data[0] > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal -= ext_call.return_data[0]
                            if 0 > ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if eth.balance(this.address) < 0:
                                revert with 0, 
                                            32,
                                            38,
                                            0x4e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                            mem[ceil32(return_data.size) + 851 len 26]
                            if not ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 745 len 64] = 0, 0x657d0420f696aaedc48b40545ba5e85b10e4c746, ext_call.return_data[0 len 28]
                            call 0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82.0x10e4c746 with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], mem[ceil32(return_data.size) + 681 len 28], mem[ceil32(return_data.size) + 809 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
                            mem[ceil32(return_data.size) + 777 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            'SafeERC20: low-level call failed',
                                            mem[(2 * ceil32(return_data.size)) + 846 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[ceil32(return_data.size) + 777]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 856 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                            stor1 = 1
                            return (0 / wantLockedTotal)
                        if sharesTotal > sharesTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        sharesTotal = 0
                        if ext_call.return_data[0] > wantLockedTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        wantLockedTotal -= ext_call.return_data[0]
                        if 0 > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if eth.balance(this.address) < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0x4e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[ceil32(return_data.size) + 851 len 26]
                        if not ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 745 len 64] = 0, 0x657d0420f696aaedc48b40545ba5e85b10e4c746, ext_call.return_data[0 len 28]
                        call 0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82.0x10e4c746 with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], mem[ceil32(return_data.size) + 681 len 28], mem[ceil32(return_data.size) + 809 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[ceil32(return_data.size) + 777 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        'SafeERC20: low-level call failed',
                                        mem[(2 * ceil32(return_data.size)) + 846 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 777]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 856 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                    else:
                        if sharesTotal * ext_call.return_data[0] / ext_call.return_data[0] != sharesTotal:
                            revert with 0, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[ceil32(return_data.size) + 426 len 31]
                        if not wantLockedTotal:
                            revert with 0, 'SafeMath: division by zero'
                        if sharesTotal * ext_call.return_data[0] / wantLockedTotal <= sharesTotal:
                            sharesTotal -= sharesTotal * ext_call.return_data[0] / wantLockedTotal
                            if ext_call.return_data[0] > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal -= ext_call.return_data[0]
                            if 0 > ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if eth.balance(this.address) < 0:
                                revert with 0, 
                                            32,
                                            38,
                                            0x4e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                            mem[ceil32(return_data.size) + 851 len 26]
                            if not ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 745 len 64] = 0, 0x657d0420f696aaedc48b40545ba5e85b10e4c746, ext_call.return_data[0 len 28]
                            call 0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82.0x10e4c746 with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], mem[ceil32(return_data.size) + 681 len 28], mem[ceil32(return_data.size) + 809 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
                            mem[ceil32(return_data.size) + 777 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[ceil32(return_data.size) + 777]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 856 len 22]
                            stor1 = 1
                            return (sharesTotal * ext_call.return_data[0] / wantLockedTotal)
                        if sharesTotal > sharesTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        sharesTotal = 0
                        if ext_call.return_data[0] > wantLockedTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        wantLockedTotal -= ext_call.return_data[0]
                        if 0 > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if eth.balance(this.address) < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0x4e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[ceil32(return_data.size) + 851 len 26]
                        if not ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 745 len 64] = 0, 0x657d0420f696aaedc48b40545ba5e85b10e4c746, ext_call.return_data[0 len 28]
                        call 0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82.0x10e4c746 with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], mem[ceil32(return_data.size) + 681 len 28], mem[ceil32(return_data.size) + 809 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[ceil32(return_data.size) + 777 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 777]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 856 len 22]
                else:
                    require return_data.size >= 32
                    if not mem[356]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 435 len 22]
                    if not ext_call.return_data[0]:
                        if not wantLockedTotal:
                            revert with 0, 'SafeMath: division by zero'
                        if 0 / wantLockedTotal <= sharesTotal:
                            sharesTotal -= 0 / wantLockedTotal
                            if ext_call.return_data[0] > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal -= ext_call.return_data[0]
                            if 0 > ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if eth.balance(this.address) < 0:
                                revert with 0, 
                                            32,
                                            38,
                                            0x4e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                            mem[ceil32(return_data.size) + 851 len 26]
                            if not ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 745 len 64] = 0, 0x657d0420f696aaedc48b40545ba5e85b10e4c746, ext_call.return_data[0 len 28]
                            call 0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82.0x10e4c746 with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], mem[ceil32(return_data.size) + 681 len 28], mem[ceil32(return_data.size) + 809 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
                            mem[ceil32(return_data.size) + 777 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            'SafeERC20: low-level call failed',
                                            mem[(2 * ceil32(return_data.size)) + 846 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[ceil32(return_data.size) + 777]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 856 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                            stor1 = 1
                            return (0 / wantLockedTotal)
                        if sharesTotal > sharesTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        sharesTotal = 0
                        if ext_call.return_data[0] > wantLockedTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        wantLockedTotal -= ext_call.return_data[0]
                        if 0 > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if eth.balance(this.address) < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0x4e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[ceil32(return_data.size) + 851 len 26]
                        if not ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 745 len 64] = 0, 0x657d0420f696aaedc48b40545ba5e85b10e4c746, ext_call.return_data[0 len 28]
                        call 0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82.0x10e4c746 with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], mem[ceil32(return_data.size) + 681 len 28], mem[ceil32(return_data.size) + 809 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[ceil32(return_data.size) + 777 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        'SafeERC20: low-level call failed',
                                        mem[(2 * ceil32(return_data.size)) + 846 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 777]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 856 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                    else:
                        if sharesTotal * ext_call.return_data[0] / ext_call.return_data[0] != sharesTotal:
                            revert with 0, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[ceil32(return_data.size) + 426 len 31]
                        if not wantLockedTotal:
                            revert with 0, 'SafeMath: division by zero'
                        if sharesTotal * ext_call.return_data[0] / wantLockedTotal <= sharesTotal:
                            sharesTotal -= sharesTotal * ext_call.return_data[0] / wantLockedTotal
                            if ext_call.return_data[0] > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal -= ext_call.return_data[0]
                            if 0 > ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if eth.balance(this.address) < 0:
                                revert with 0, 
                                            32,
                                            38,
                                            0x4e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                            mem[ceil32(return_data.size) + 851 len 26]
                            if not ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 745 len 64] = 0, 0x657d0420f696aaedc48b40545ba5e85b10e4c746, ext_call.return_data[0 len 28]
                            call 0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82.0x10e4c746 with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], mem[ceil32(return_data.size) + 681 len 28], mem[ceil32(return_data.size) + 809 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
                            mem[ceil32(return_data.size) + 777 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            'SafeERC20: low-level call failed',
                                            mem[(2 * ceil32(return_data.size)) + 846 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[ceil32(return_data.size) + 777]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 856 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                            stor1 = 1
                            return (sharesTotal * ext_call.return_data[0] / wantLockedTotal)
                        if sharesTotal > sharesTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        sharesTotal = 0
                        if ext_call.return_data[0] > wantLockedTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        wantLockedTotal -= ext_call.return_data[0]
                        if 0 > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if eth.balance(this.address) < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0x4e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[ceil32(return_data.size) + 851 len 26]
                        if not ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 745 len 64] = 0, 0x657d0420f696aaedc48b40545ba5e85b10e4c746, ext_call.return_data[0 len 28]
                        call 0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82.0x10e4c746 with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], mem[ceil32(return_data.size) + 681 len 28], mem[ceil32(return_data.size) + 809 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[ceil32(return_data.size) + 777 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 777]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 856 len 22]
            else:
                if WITHDRAWAL_FEE * ext_call.return_data[0] / ext_call.return_data[0] != WITHDRAWAL_FEE:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x4e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[430 len 26]
                if not ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82):
                    revert with 0, 'Address: call to non-contract'
                mem[324 len 64] = unknown_0xa9059cbb(?????), 0x2b6c058dd1751658cfdc58c6, 0, Mask(224, 32, WITHDRAWAL_FEE * ext_call.return_data[0] / 10000) >> 32
                mem[388 len 0] = 0
                call 0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82.0x2421b234 with:
                     gas gas_remaining wei
                    args Mask(224, 32, WITHDRAWAL_FEE * ext_call.return_data[0] / 10000) << 224, mem[388 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 'SafeMath: division by zero'
                mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if not return_data.size:
                    if not ext_call.return_data[0]:
                        if not wantLockedTotal:
                            revert with 0, 'SafeMath: division by zero'
                        if 0 / wantLockedTotal <= sharesTotal:
                            sharesTotal -= 0 / wantLockedTotal
                            if ext_call.return_data[0] > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal -= ext_call.return_data[0]
                            if WITHDRAWAL_FEE * ext_call.return_data[0] / 10000 > ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if eth.balance(this.address) < 0:
                                revert with 0, 
                                            32,
                                            38,
                                            0x4e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                            mem[ceil32(return_data.size) + 851 len 26]
                            if not ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 745 len 64] = 0, 0x657d0420f696aaedc48b40545ba5e85b10e4c746, Mask(224, 32, ext_call.return_data[0] - (WITHDRAWAL_FEE * ext_call.return_data[0] / 10000)) >> 32
                            call 0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82.0x10e4c746 with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0] - (WITHDRAWAL_FEE * ext_call.return_data[0] / 10000), mem[ceil32(return_data.size) + 681 len 28], mem[ceil32(return_data.size) + 809 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
                            mem[ceil32(return_data.size) + 777 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            'SafeERC20: low-level call failed',
                                            mem[(2 * ceil32(return_data.size)) + 846 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[ceil32(return_data.size) + 777]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 856 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                            stor1 = 1
                            return (0 / wantLockedTotal)
                        if sharesTotal > sharesTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        sharesTotal = 0
                        if ext_call.return_data[0] > wantLockedTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        wantLockedTotal -= ext_call.return_data[0]
                        if WITHDRAWAL_FEE * ext_call.return_data[0] / 10000 > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if eth.balance(this.address) < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0x4e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[ceil32(return_data.size) + 851 len 26]
                        if not ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 745 len 64] = 0, 0x657d0420f696aaedc48b40545ba5e85b10e4c746, Mask(224, 32, ext_call.return_data[0] - (WITHDRAWAL_FEE * ext_call.return_data[0] / 10000)) >> 32
                        call 0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82.0x10e4c746 with:
                             gas gas_remaining wei
                            args ext_call.return_data[0] - (WITHDRAWAL_FEE * ext_call.return_data[0] / 10000), mem[ceil32(return_data.size) + 681 len 28], mem[ceil32(return_data.size) + 809 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[ceil32(return_data.size) + 777 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 777]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 856 len 22]
                    else:
                        if sharesTotal * ext_call.return_data[0] / ext_call.return_data[0] != sharesTotal:
                            revert with 0, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[ceil32(return_data.size) + 426 len 31]
                        if not wantLockedTotal:
                            revert with 0, 'SafeMath: division by zero'
                        if sharesTotal * ext_call.return_data[0] / wantLockedTotal <= sharesTotal:
                            sharesTotal -= sharesTotal * ext_call.return_data[0] / wantLockedTotal
                            if ext_call.return_data[0] > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal -= ext_call.return_data[0]
                            if WITHDRAWAL_FEE * ext_call.return_data[0] / 10000 > ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if eth.balance(this.address) < 0:
                                revert with 0, 
                                            32,
                                            38,
                                            0x4e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                            mem[ceil32(return_data.size) + 851 len 26]
                            if not ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 745 len 64] = 0, 0x657d0420f696aaedc48b40545ba5e85b10e4c746, Mask(224, 32, ext_call.return_data[0] - (WITHDRAWAL_FEE * ext_call.return_data[0] / 10000)) >> 32
                            call 0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82.0x10e4c746 with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0] - (WITHDRAWAL_FEE * ext_call.return_data[0] / 10000), mem[ceil32(return_data.size) + 681 len 28], mem[ceil32(return_data.size) + 809 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
                            mem[ceil32(return_data.size) + 777 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[ceil32(return_data.size) + 777]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 856 len 22]
                            stor1 = 1
                            return (sharesTotal * ext_call.return_data[0] / wantLockedTotal)
                        if sharesTotal > sharesTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        sharesTotal = 0
                        if ext_call.return_data[0] > wantLockedTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        wantLockedTotal -= ext_call.return_data[0]
                        if WITHDRAWAL_FEE * ext_call.return_data[0] / 10000 > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if eth.balance(this.address) < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0x4e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[ceil32(return_data.size) + 851 len 26]
                        if not ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 745 len 64] = 0, 0x657d0420f696aaedc48b40545ba5e85b10e4c746, Mask(224, 32, ext_call.return_data[0] - (WITHDRAWAL_FEE * ext_call.return_data[0] / 10000)) >> 32
                        call 0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82.0x10e4c746 with:
                             gas gas_remaining wei
                            args ext_call.return_data[0] - (WITHDRAWAL_FEE * ext_call.return_data[0] / 10000), mem[ceil32(return_data.size) + 681 len 28], mem[ceil32(return_data.size) + 809 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[ceil32(return_data.size) + 777 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        'SafeERC20: low-level call failed',
                                        mem[(2 * ceil32(return_data.size)) + 846 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 777]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 856 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                else:
                    require return_data.size >= 32
                    if not mem[356]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 435 len 22]
                    if not ext_call.return_data[0]:
                        if not wantLockedTotal:
                            revert with 0, 'SafeMath: division by zero'
                        if 0 / wantLockedTotal <= sharesTotal:
                            sharesTotal -= 0 / wantLockedTotal
                            if ext_call.return_data[0] > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal -= ext_call.return_data[0]
                            if WITHDRAWAL_FEE * ext_call.return_data[0] / 10000 > ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if eth.balance(this.address) < 0:
                                revert with 0, 
                                            32,
                                            38,
                                            0x4e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                            mem[ceil32(return_data.size) + 851 len 26]
                            if not ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 745 len 64] = 0, 0x657d0420f696aaedc48b40545ba5e85b10e4c746, Mask(224, 32, ext_call.return_data[0] - (WITHDRAWAL_FEE * ext_call.return_data[0] / 10000)) >> 32
                            call 0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82.0x10e4c746 with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0] - (WITHDRAWAL_FEE * ext_call.return_data[0] / 10000), mem[ceil32(return_data.size) + 681 len 28], mem[ceil32(return_data.size) + 809 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
                            mem[ceil32(return_data.size) + 777 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            'SafeERC20: low-level call failed',
                                            mem[(2 * ceil32(return_data.size)) + 846 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[ceil32(return_data.size) + 777]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 856 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                            stor1 = 1
                            return (0 / wantLockedTotal)
                    else:
                        if sharesTotal * ext_call.return_data[0] / ext_call.return_data[0] != sharesTotal:
                            revert with 0, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[ceil32(return_data.size) + 426 len 31]
                        if not wantLockedTotal:
                            revert with 0, 'SafeMath: division by zero'
                        if sharesTotal * ext_call.return_data[0] / wantLockedTotal <= sharesTotal:
                            sharesTotal -= sharesTotal * ext_call.return_data[0] / wantLockedTotal
                            if ext_call.return_data[0] > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal -= ext_call.return_data[0]
                            if WITHDRAWAL_FEE * ext_call.return_data[0] / 10000 > ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if eth.balance(this.address) < 0:
                                revert with 0, 
                                            32,
                                            38,
                                            0x4e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                            mem[ceil32(return_data.size) + 851 len 26]
                            if not ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 745 len 64] = 0, 0x657d0420f696aaedc48b40545ba5e85b10e4c746, Mask(224, 32, ext_call.return_data[0] - (WITHDRAWAL_FEE * ext_call.return_data[0] / 10000)) >> 32
                            call 0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82.0x10e4c746 with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0] - (WITHDRAWAL_FEE * ext_call.return_data[0] / 10000), mem[ceil32(return_data.size) + 681 len 28], mem[ceil32(return_data.size) + 809 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
                            mem[ceil32(return_data.size) + 777 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            'SafeERC20: low-level call failed',
                                            mem[(2 * ceil32(return_data.size)) + 846 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[ceil32(return_data.size) + 777]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 856 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                            stor1 = 1
                            return (sharesTotal * ext_call.return_data[0] / wantLockedTotal)
                    if sharesTotal > sharesTotal:
                        revert with 0, 'SafeMath: subtraction overflow'
                    sharesTotal = 0
                    if ext_call.return_data[0] > wantLockedTotal:
                        revert with 0, 'SafeMath: subtraction overflow'
                    wantLockedTotal -= ext_call.return_data[0]
                    if WITHDRAWAL_FEE * ext_call.return_data[0] / 10000 > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x4e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[ceil32(return_data.size) + 851 len 26]
                    if not ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 745 len 64] = 0, 0x657d0420f696aaedc48b40545ba5e85b10e4c746, Mask(224, 32, ext_call.return_data[0] - (WITHDRAWAL_FEE * ext_call.return_data[0] / 10000)) >> 32
                    call 0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82.0x10e4c746 with:
                         gas gas_remaining wei
                        args ext_call.return_data[0] - (WITHDRAWAL_FEE * ext_call.return_data[0] / 10000), mem[ceil32(return_data.size) + 681 len 28], mem[ceil32(return_data.size) + 809 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: division by zero'
                    mem[ceil32(return_data.size) + 777 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 
                                    'SafeERC20: low-level call failed',
                                    mem[(2 * ceil32(return_data.size)) + 846 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 777]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 856 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
        else:
            if not wantLockedTotal:
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x4e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[430 len 26]
                if not ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82):
                    revert with 0, 'Address: call to non-contract'
                mem[324 len 64] = unknown_0xa9059cbb(?????), 0x2b6c058dd1751658cfdc58c6, 0, 0
                call 0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82.0x2421b234 with:
                     gas gas_remaining wei
                    args 0, mem[388 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 'SafeMath: division by zero'
                mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if not return_data.size:
                    if not wantLockedTotal:
                        revert with 0, 'SafeMath: division by zero'
                    if sharesTotal * wantLockedTotal / wantLockedTotal != sharesTotal:
                        revert with 0, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[ceil32(return_data.size) + 426 len 31]
                    if not wantLockedTotal:
                        revert with 0, 'SafeMath: division by zero'
                    if sharesTotal * wantLockedTotal / wantLockedTotal <= sharesTotal:
                        sharesTotal -= sharesTotal * wantLockedTotal / wantLockedTotal
                        if wantLockedTotal > wantLockedTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        wantLockedTotal = 0
                        if 0 > wantLockedTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if eth.balance(this.address) < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0x4e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[ceil32(return_data.size) + 851 len 26]
                        if not ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 745 len 64] = unknown_0xa9059cbb(?????), 0x657d0420f696aaedc48b4054, 0, Mask(224, 0, stor7.field_32)
                        mem[ceil32(return_data.size) + 809 len 0] = 0
                        call 0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82.0x10e4c746 with:
                             gas gas_remaining wei
                            args Mask(480, 0, stor7.field_0), mem[ceil32(return_data.size) + 809 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[ceil32(return_data.size) + 777 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 777]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 856 len 22]
                        stor1 = 1
                        return (sharesTotal * wantLockedTotal / wantLockedTotal)
                else:
                    require return_data.size >= 32
                    if not mem[356]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 435 len 22]
                    if not wantLockedTotal:
                        revert with 0, 'SafeMath: division by zero'
                    if sharesTotal * wantLockedTotal / wantLockedTotal != sharesTotal:
                        revert with 0, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[ceil32(return_data.size) + 426 len 31]
                    if not wantLockedTotal:
                        revert with 0, 'SafeMath: division by zero'
                    if sharesTotal * wantLockedTotal / wantLockedTotal <= sharesTotal:
                        sharesTotal -= sharesTotal * wantLockedTotal / wantLockedTotal
                        if wantLockedTotal > wantLockedTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        wantLockedTotal = 0
                        if 0 > wantLockedTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if eth.balance(this.address) < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0x4e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[ceil32(return_data.size) + 851 len 26]
                        if not ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 745 len 64] = unknown_0xa9059cbb(?????), 0x657d0420f696aaedc48b4054, 283428678, Mask(224, 0, stor7.field_32)
                        mem[ceil32(return_data.size) + 837 len 4] = 0
                        call 0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82.0x10e4c746 with:
                             gas gas_remaining wei
                            args Mask(480, 0, stor7.field_0), mem[ceil32(return_data.size) + 809 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[ceil32(return_data.size) + 777 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        'SafeERC20: low-level call failed',
                                        mem[(2 * ceil32(return_data.size)) + 846 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 777]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 856 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                        stor1 = 1
                        return sharesTotal * wantLockedTotal / wantLockedTotal, 
                               mem[(2 * ceil32(return_data.size)) + 778 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                ('gt', ('div', ('mul', ('stor', ('name', 'sharesTotal', 8)), ('stor', ('name', 'wantLockedTotal', 7))), ('stor', ('name', 'wantLockedTotal', 7))), ('stor', ('name', 'sharesTotal', 8)))
                if sharesTotal > sharesTotal:
                    revert with 0, 'SafeMath: subtraction overflow'
                sharesTotal = 0
                if wantLockedTotal > wantLockedTotal:
                    revert with 0, 'SafeMath: subtraction overflow'
                wantLockedTotal = 0
                if 0 > wantLockedTotal:
                    revert with 0, 'SafeMath: subtraction overflow'
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x4e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[ceil32(return_data.size) + 851 len 26]
                if not ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 745 len 64] = unknown_0xa9059cbb(?????), 0x657d0420f696aaedc48b4054, 0, Mask(224, 0, stor7.field_32)
                mem[ceil32(return_data.size) + 809 len 0] = 0
                call 0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82.0x10e4c746 with:
                     gas gas_remaining wei
                    args Mask(480, 0, stor7.field_0), mem[ceil32(return_data.size) + 809 len 4]
            else:
                if WITHDRAWAL_FEE * wantLockedTotal / wantLockedTotal != WITHDRAWAL_FEE:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x4e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[430 len 26]
                if not ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82):
                    revert with 0, 'Address: call to non-contract'
                mem[324 len 64] = unknown_0xa9059cbb(?????), 0x2b6c058dd1751658cfdc58c6, 0, Mask(224, 32, WITHDRAWAL_FEE * wantLockedTotal / 10000) >> 32
                mem[388 len 0] = 0
                call 0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82.0x2421b234 with:
                     gas gas_remaining wei
                    args Mask(224, 32, WITHDRAWAL_FEE * wantLockedTotal / 10000) << 224, mem[388 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 'SafeMath: division by zero'
                mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if not return_data.size:
                    if not wantLockedTotal:
                        revert with 0, 'SafeMath: division by zero'
                    if sharesTotal * wantLockedTotal / wantLockedTotal != sharesTotal:
                        revert with 0, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[ceil32(return_data.size) + 426 len 31]
                    if not wantLockedTotal:
                        revert with 0, 'SafeMath: division by zero'
                    if sharesTotal * wantLockedTotal / wantLockedTotal <= sharesTotal:
                        sharesTotal -= sharesTotal * wantLockedTotal / wantLockedTotal
                        if wantLockedTotal > wantLockedTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        wantLockedTotal = 0
                        if WITHDRAWAL_FEE * wantLockedTotal / 10000 > wantLockedTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if eth.balance(this.address) < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0x4e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[ceil32(return_data.size) + 851 len 26]
                        if not ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 745 len 64] = 0, 0x657d0420f696aaedc48b40545ba5e85b10e4c746, Mask(224, 32, wantLockedTotal - (WITHDRAWAL_FEE * wantLockedTotal / 10000)) >> 32
                        call 0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82.0x10e4c746 with:
                             gas gas_remaining wei
                            args wantLockedTotal - (WITHDRAWAL_FEE * wantLockedTotal / 10000), mem[ceil32(return_data.size) + 681 len 28], mem[ceil32(return_data.size) + 809 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[ceil32(return_data.size) + 777 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        'SafeERC20: low-level call failed',
                                        mem[(2 * ceil32(return_data.size)) + 846 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 777]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 856 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                        stor1 = 1
                        return (sharesTotal * wantLockedTotal / wantLockedTotal)
                else:
                    require return_data.size >= 32
                    if not mem[356]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 435 len 22]
                    if not wantLockedTotal:
                        revert with 0, 'SafeMath: division by zero'
                    if sharesTotal * wantLockedTotal / wantLockedTotal != sharesTotal:
                        revert with 0, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[ceil32(return_data.size) + 426 len 31]
                    if not wantLockedTotal:
                        revert with 0, 'SafeMath: division by zero'
                    if sharesTotal * wantLockedTotal / wantLockedTotal <= sharesTotal:
                        sharesTotal -= sharesTotal * wantLockedTotal / wantLockedTotal
                        if wantLockedTotal > wantLockedTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        wantLockedTotal = 0
                        if WITHDRAWAL_FEE * wantLockedTotal / 10000 > wantLockedTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if eth.balance(this.address) < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0x4e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[ceil32(return_data.size) + 851 len 26]
                        if not ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 745 len 64] = 0, 0x657d0420f696aaedc48b40545ba5e85b10e4c746, Mask(224, 32, wantLockedTotal - (WITHDRAWAL_FEE * wantLockedTotal / 10000)) >> 32
                        call 0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82.0x10e4c746 with:
                             gas gas_remaining wei
                            args wantLockedTotal - (WITHDRAWAL_FEE * wantLockedTotal / 10000), mem[ceil32(return_data.size) + 681 len 28], mem[ceil32(return_data.size) + 809 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[ceil32(return_data.size) + 777 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 777]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 856 len 22]
                        stor1 = 1
                        return (sharesTotal * wantLockedTotal / wantLockedTotal)
                ('gt', ('div', ('mul', ('stor', ('name', 'sharesTotal', 8)), ('stor', ('name', 'wantLockedTotal', 7))), ('stor', ('name', 'wantLockedTotal', 7))), ('stor', ('name', 'sharesTotal', 8)))
                if sharesTotal > sharesTotal:
                    revert with 0, 'SafeMath: subtraction overflow'
                sharesTotal = 0
                if wantLockedTotal > wantLockedTotal:
                    revert with 0, 'SafeMath: subtraction overflow'
                wantLockedTotal = 0
                if WITHDRAWAL_FEE * wantLockedTotal / 10000 > wantLockedTotal:
                    revert with 0, 'SafeMath: subtraction overflow'
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x4e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[ceil32(return_data.size) + 851 len 26]
                if not ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 745 len 64] = 0, 0x657d0420f696aaedc48b40545ba5e85b10e4c746, Mask(224, 32, wantLockedTotal - (WITHDRAWAL_FEE * wantLockedTotal / 10000)) >> 32
                call 0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82.0x10e4c746 with:
                     gas gas_remaining wei
                    args wantLockedTotal - (WITHDRAWAL_FEE * wantLockedTotal / 10000), mem[ceil32(return_data.size) + 681 len 28], mem[ceil32(return_data.size) + 809 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 'SafeMath: division by zero'
            mem[ceil32(return_data.size) + 777 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[ceil32(return_data.size) + 777]:
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(2 * ceil32(return_data.size)) + 856 len 22]
        stor1 = 1
        return sharesTotal
    require ext_code.size(farmContractAddress)
    if not uint8(stor2.field_8):
        call farmContractAddress.withdraw(uint256 arg1, uint256 arg2) with:
             gas gas_remaining wei
            args 0, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82)
        staticcall 0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if arg2 <= ext_call.return_data[0]:
            if wantLockedTotal >= arg2:
                if not arg2:
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x4e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[430 len 26]
                    if not ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82):
                        revert with 0, 'Address: call to non-contract'
                    mem[324 len 64] = unknown_0xa9059cbb(?????), 0x2b6c058dd1751658cfdc58c6, 0, 0
                    call 0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82.0x2421b234 with:
                         gas gas_remaining wei
                        args 0, mem[388 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: division by zero'
                    mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if not return_data.size:
                        if not arg2:
                            if not wantLockedTotal:
                                revert with 0, 'SafeMath: division by zero'
                            if 0 / wantLockedTotal <= sharesTotal:
                                sharesTotal -= 0 / wantLockedTotal
                                if arg2 > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                wantLockedTotal -= arg2
                                if 0 > arg2:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x4e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                mem[ceil32(return_data.size) + 851 len 26]
                                if not ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 745 len 64] = unknown_0xa9059cbb(?????), 0x657d0420f696aaedc48b4054, 283428678, Mask(224, 32, arg2) >> 32
                                mem[ceil32(return_data.size) + 837 len 4] = 0
                                call 0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82.0x10e4c746 with:
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg2) << 224, mem[ceil32(return_data.size) + 809 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: division by zero'
                                mem[ceil32(return_data.size) + 777 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 
                                                'SafeERC20: low-level call failed',
                                                mem[(2 * ceil32(return_data.size)) + 846 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[ceil32(return_data.size) + 777]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(2 * ceil32(return_data.size)) + 856 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                stor1 = 1
                                return 0 / wantLockedTotal, 
                                       mem[(2 * ceil32(return_data.size)) + 778 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            if sharesTotal > sharesTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            sharesTotal = 0
                            if arg2 > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal -= arg2
                            if 0 > arg2:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if eth.balance(this.address) < 0:
                                revert with 0, 
                                            32,
                                            38,
                                            0x4e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                            mem[ceil32(return_data.size) + 851 len 26]
                            if not ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 745 len 64] = unknown_0xa9059cbb(?????), 0x657d0420f696aaedc48b4054, 283428678, Mask(224, 32, arg2) >> 32
                            mem[ceil32(return_data.size) + 837 len 4] = 0
                            call 0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82.0x10e4c746 with:
                                 gas gas_remaining wei
                                args Mask(224, 32, arg2) << 224, mem[ceil32(return_data.size) + 809 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
                            mem[ceil32(return_data.size) + 777 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            'SafeERC20: low-level call failed',
                                            mem[(2 * ceil32(return_data.size)) + 846 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[ceil32(return_data.size) + 777]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 856 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                            stor1 = 1
                            return sharesTotal, 
                                   mem[(2 * ceil32(return_data.size)) + 778 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if sharesTotal * arg2 / arg2 != sharesTotal:
                            revert with 0, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[ceil32(return_data.size) + 426 len 31]
                        if not wantLockedTotal:
                            revert with 0, 'SafeMath: division by zero'
                        if sharesTotal * arg2 / wantLockedTotal <= sharesTotal:
                            sharesTotal -= sharesTotal * arg2 / wantLockedTotal
                            if arg2 > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal -= arg2
                            if 0 > arg2:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if eth.balance(this.address) < 0:
                                revert with 0, 
                                            32,
                                            38,
                                            0x4e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                            mem[ceil32(return_data.size) + 851 len 26]
                            if not ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 745 len 64] = unknown_0xa9059cbb(?????), 0x657d0420f696aaedc48b4054, 0, Mask(224, 32, arg2) >> 32
                            mem[ceil32(return_data.size) + 809 len 0] = 0
                            call 0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82.0x10e4c746 with:
                                 gas gas_remaining wei
                                args Mask(224, 32, arg2) << 224, mem[ceil32(return_data.size) + 809 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
                            mem[ceil32(return_data.size) + 777 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[ceil32(return_data.size) + 777]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 856 len 22]
                            stor1 = 1
                            return (sharesTotal * arg2 / wantLockedTotal)
                        if sharesTotal > sharesTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        sharesTotal = 0
                        if arg2 > wantLockedTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        wantLockedTotal -= arg2
                        if 0 > arg2:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if eth.balance(this.address) < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0x4e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[ceil32(return_data.size) + 851 len 26]
                        if not ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 745 len 64] = unknown_0xa9059cbb(?????), 0x657d0420f696aaedc48b4054, 0, Mask(224, 32, arg2) >> 32
                        mem[ceil32(return_data.size) + 809 len 0] = 0
                        call 0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82.0x10e4c746 with:
                             gas gas_remaining wei
                            args Mask(224, 32, arg2) << 224, mem[ceil32(return_data.size) + 809 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[ceil32(return_data.size) + 777 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 777]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 856 len 22]
                        stor1 = 1
                        return sharesTotal
                    require return_data.size >= 32
                    if not mem[356]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 435 len 22]
                    if not arg2:
                        if not wantLockedTotal:
                            revert with 0, 'SafeMath: division by zero'
                        if 0 / wantLockedTotal <= sharesTotal:
                            sharesTotal -= 0 / wantLockedTotal
                            if arg2 > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal -= arg2
                            if 0 > arg2:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if eth.balance(this.address) < 0:
                                revert with 0, 
                                            32,
                                            38,
                                            0x4e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                            mem[ceil32(return_data.size) + 851 len 26]
                            if not ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 745 len 64] = unknown_0xa9059cbb(?????), 0x657d0420f696aaedc48b4054, 0, Mask(224, 32, arg2) >> 32
                            mem[ceil32(return_data.size) + 809 len 0] = 0
                            call 0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82.0x10e4c746 with:
                                 gas gas_remaining wei
                                args Mask(224, 32, arg2) << 224, mem[ceil32(return_data.size) + 809 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
                            mem[ceil32(return_data.size) + 777 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[ceil32(return_data.size) + 777]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 856 len 22]
                            stor1 = 1
                            return (0 / wantLockedTotal)
                        if sharesTotal > sharesTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        sharesTotal = 0
                        if arg2 > wantLockedTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        wantLockedTotal -= arg2
                        if 0 > arg2:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if eth.balance(this.address) < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0x4e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[ceil32(return_data.size) + 851 len 26]
                        if not ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 745 len 64] = unknown_0xa9059cbb(?????), 0x657d0420f696aaedc48b4054, 0, Mask(224, 32, arg2) >> 32
                        mem[ceil32(return_data.size) + 809 len 0] = 0
                        call 0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82.0x10e4c746 with:
                             gas gas_remaining wei
                            args Mask(224, 32, arg2) << 224, mem[ceil32(return_data.size) + 809 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[ceil32(return_data.size) + 777 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 777]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 856 len 22]
                        stor1 = 1
                        return sharesTotal
                    if sharesTotal * arg2 / arg2 != sharesTotal:
                        revert with 0, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[ceil32(return_data.size) + 426 len 31]
                    if not wantLockedTotal:
                        revert with 0, 'SafeMath: division by zero'
                    if sharesTotal * arg2 / wantLockedTotal <= sharesTotal:
                        sharesTotal -= sharesTotal * arg2 / wantLockedTotal
                        if arg2 > wantLockedTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        wantLockedTotal -= arg2
                        if 0 > arg2:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if eth.balance(this.address) < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0x4e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[ceil32(return_data.size) + 851 len 26]
                        if not ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 745 len 64] = unknown_0xa9059cbb(?????), 0x657d0420f696aaedc48b4054, 283428678, Mask(224, 32, arg2) >> 32
                        mem[ceil32(return_data.size) + 837 len 4] = 0
                        call 0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82.0x10e4c746 with:
                             gas gas_remaining wei
                            args Mask(224, 32, arg2) << 224, mem[ceil32(return_data.size) + 809 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[ceil32(return_data.size) + 777 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        'SafeERC20: low-level call failed',
                                        mem[(2 * ceil32(return_data.size)) + 846 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 777]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 856 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                        stor1 = 1
                        return sharesTotal * arg2 / wantLockedTotal, 
                               mem[(2 * ceil32(return_data.size)) + 778 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if sharesTotal > sharesTotal:
                        revert with 0, 'SafeMath: subtraction overflow'
                    sharesTotal = 0
                    if arg2 > wantLockedTotal:
                        revert with 0, 'SafeMath: subtraction overflow'
                    wantLockedTotal -= arg2
                    if 0 > arg2:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x4e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[ceil32(return_data.size) + 851 len 26]
                    if not ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 745 len 64] = unknown_0xa9059cbb(?????), 0x657d0420f696aaedc48b4054, 283428678, Mask(224, 32, arg2) >> 32
                    mem[ceil32(return_data.size) + 837 len 4] = 0
                    call 0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82.0x10e4c746 with:
                         gas gas_remaining wei
                        args Mask(224, 32, arg2) << 224, mem[ceil32(return_data.size) + 809 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: division by zero'
                    mem[ceil32(return_data.size) + 777 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 
                                    'SafeERC20: low-level call failed',
                                    mem[(2 * ceil32(return_data.size)) + 846 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 777]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 856 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                    stor1 = 1
                    return sharesTotal, 
                           mem[(2 * ceil32(return_data.size)) + 778 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if WITHDRAWAL_FEE * arg2 / arg2 != WITHDRAWAL_FEE:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x4e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[430 len 26]
                if not ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82):
                    revert with 0, 'Address: call to non-contract'
                mem[324 len 64] = unknown_0xa9059cbb(?????), 0x2b6c058dd1751658cfdc58c6, 0, Mask(224, 32, WITHDRAWAL_FEE * arg2 / 10000) >> 32
                call 0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82.0x2421b234 with:
                     gas gas_remaining wei
                    args Mask(224, 32, WITHDRAWAL_FEE * arg2 / 10000) << 224, mem[388 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 'SafeMath: division by zero'
                mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if not return_data.size:
                    if not arg2:
                        if not wantLockedTotal:
                            revert with 0, 'SafeMath: division by zero'
                        if 0 / wantLockedTotal <= sharesTotal:
                            sharesTotal -= 0 / wantLockedTotal
                            if arg2 > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal -= arg2
                            if WITHDRAWAL_FEE * arg2 / 10000 > arg2:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if eth.balance(this.address) < 0:
                                revert with 0, 
                                            32,
                                            38,
                                            0x4e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                            mem[ceil32(return_data.size) + 851 len 26]
                            if not ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 745 len 64] = unknown_0xa9059cbb(?????), 0x657d0420f696aaedc48b4054, 283428678, Mask(224, 32, arg2 - (WITHDRAWAL_FEE * arg2 / 10000)) >> 32
                            mem[ceil32(return_data.size) + 837 len 4] = 0
                            call 0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82.0x10e4c746 with:
                                 gas gas_remaining wei
                                args Mask(224, 32, arg2 - (WITHDRAWAL_FEE * arg2 / 10000)) << 224, mem[ceil32(return_data.size) + 809 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
                            mem[ceil32(return_data.size) + 777 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            'SafeERC20: low-level call failed',
                                            mem[(2 * ceil32(return_data.size)) + 846 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[ceil32(return_data.size) + 777]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 856 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                            stor1 = 1
                            return 0 / wantLockedTotal, 
                                   mem[(2 * ceil32(return_data.size)) + 778 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if sharesTotal > sharesTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        sharesTotal = 0
                        if arg2 > wantLockedTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        wantLockedTotal -= arg2
                        if WITHDRAWAL_FEE * arg2 / 10000 > arg2:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if eth.balance(this.address) < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0x4e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[ceil32(return_data.size) + 851 len 26]
                        if not ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 745 len 64] = unknown_0xa9059cbb(?????), 0x657d0420f696aaedc48b4054, 0, Mask(224, 32, arg2 - (WITHDRAWAL_FEE * arg2 / 10000)) >> 32
                        mem[ceil32(return_data.size) + 809 len 0] = 0
                        call 0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82.0x10e4c746 with:
                             gas gas_remaining wei
                            args Mask(224, 32, arg2 - (WITHDRAWAL_FEE * arg2 / 10000)) << 224, mem[ceil32(return_data.size) + 809 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[ceil32(return_data.size) + 777 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 777]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 856 len 22]
                        stor1 = 1
                        return sharesTotal
                    if sharesTotal * arg2 / arg2 != sharesTotal:
                        revert with 0, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[ceil32(return_data.size) + 426 len 31]
                    if not wantLockedTotal:
                        revert with 0, 'SafeMath: division by zero'
                    if sharesTotal * arg2 / wantLockedTotal <= sharesTotal:
                        sharesTotal -= sharesTotal * arg2 / wantLockedTotal
                        if arg2 > wantLockedTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        wantLockedTotal -= arg2
                        if WITHDRAWAL_FEE * arg2 / 10000 > arg2:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if eth.balance(this.address) < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0x4e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[ceil32(return_data.size) + 851 len 26]
                        if not ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 745 len 64] = unknown_0xa9059cbb(?????), 0x657d0420f696aaedc48b4054, 0, Mask(224, 32, arg2 - (WITHDRAWAL_FEE * arg2 / 10000)) >> 32
                        mem[ceil32(return_data.size) + 809 len 0] = 0
                        call 0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82.0x10e4c746 with:
                             gas gas_remaining wei
                            args Mask(224, 32, arg2 - (WITHDRAWAL_FEE * arg2 / 10000)) << 224, mem[ceil32(return_data.size) + 809 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[ceil32(return_data.size) + 777 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 777]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 856 len 22]
                        stor1 = 1
                        return (sharesTotal * arg2 / wantLockedTotal)
                    if sharesTotal > sharesTotal:
                        revert with 0, 'SafeMath: subtraction overflow'
                    sharesTotal = 0
                    if arg2 > wantLockedTotal:
                        revert with 0, 'SafeMath: subtraction overflow'
                    wantLockedTotal -= arg2
                    if WITHDRAWAL_FEE * arg2 / 10000 > arg2:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x4e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[ceil32(return_data.size) + 851 len 26]
                    if not ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 745 len 64] = unknown_0xa9059cbb(?????), 0x657d0420f696aaedc48b4054, 283428678, Mask(224, 32, arg2 - (WITHDRAWAL_FEE * arg2 / 10000)) >> 32
                    mem[ceil32(return_data.size) + 837 len 4] = 0
                    call 0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82.0x10e4c746 with:
                         gas gas_remaining wei
                        args Mask(224, 32, arg2 - (WITHDRAWAL_FEE * arg2 / 10000)) << 224, mem[ceil32(return_data.size) + 809 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: division by zero'
                    mem[ceil32(return_data.size) + 777 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 
                                    'SafeERC20: low-level call failed',
                                    mem[(2 * ceil32(return_data.size)) + 846 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 777]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 856 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                    stor1 = 1
                    return sharesTotal, 
                           mem[(2 * ceil32(return_data.size)) + 778 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                require return_data.size >= 32
                if not mem[356]:
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 435 len 22]
                if not arg2:
                    if not wantLockedTotal:
                        revert with 0, 'SafeMath: division by zero'
                    if 0 / wantLockedTotal <= sharesTotal:
                        sharesTotal -= 0 / wantLockedTotal
                        if arg2 > wantLockedTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        wantLockedTotal -= arg2
                        if WITHDRAWAL_FEE * arg2 / 10000 > arg2:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if eth.balance(this.address) < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0x4e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[ceil32(return_data.size) + 851 len 26]
                        if not ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 745 len 64] = unknown_0xa9059cbb(?????), 0x657d0420f696aaedc48b4054, 0, Mask(224, 32, arg2 - (WITHDRAWAL_FEE * arg2 / 10000)) >> 32
                        mem[ceil32(return_data.size) + 809 len 0] = 0
                        call 0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82.0x10e4c746 with:
                             gas gas_remaining wei
                            args Mask(224, 32, arg2 - (WITHDRAWAL_FEE * arg2 / 10000)) << 224, mem[ceil32(return_data.size) + 809 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[ceil32(return_data.size) + 777 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 777]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 856 len 22]
                        stor1 = 1
                        return (0 / wantLockedTotal)
                else:
                    if sharesTotal * arg2 / arg2 != sharesTotal:
                        revert with 0, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[ceil32(return_data.size) + 426 len 31]
                    if not wantLockedTotal:
                        revert with 0, 'SafeMath: division by zero'
                    if sharesTotal * arg2 / wantLockedTotal <= sharesTotal:
                        sharesTotal -= sharesTotal * arg2 / wantLockedTotal
                        if arg2 > wantLockedTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        wantLockedTotal -= arg2
                        if WITHDRAWAL_FEE * arg2 / 10000 > arg2:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if eth.balance(this.address) < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0x4e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[ceil32(return_data.size) + 851 len 26]
                        if not ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 745 len 64] = unknown_0xa9059cbb(?????), 0x657d0420f696aaedc48b4054, 0, Mask(224, 32, arg2 - (WITHDRAWAL_FEE * arg2 / 10000)) >> 32
                        mem[ceil32(return_data.size) + 809 len 0] = 0
                        call 0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82.0x10e4c746 with:
                             gas gas_remaining wei
                            args Mask(224, 32, arg2 - (WITHDRAWAL_FEE * arg2 / 10000)) << 224, mem[ceil32(return_data.size) + 809 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[ceil32(return_data.size) + 777 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 777]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 856 len 22]
                        stor1 = 1
                        return (sharesTotal * arg2 / wantLockedTotal)
                if sharesTotal > sharesTotal:
                    revert with 0, 'SafeMath: subtraction overflow'
                sharesTotal = 0
                if arg2 > wantLockedTotal:
                    revert with 0, 'SafeMath: subtraction overflow'
                wantLockedTotal -= arg2
                if WITHDRAWAL_FEE * arg2 / 10000 > arg2:
                    revert with 0, 'SafeMath: subtraction overflow'
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x4e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[ceil32(return_data.size) + 851 len 26]
                if not ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 745 len 64] = unknown_0xa9059cbb(?????), 0x657d0420f696aaedc48b4054, 0, Mask(224, 32, arg2 - (WITHDRAWAL_FEE * arg2 / 10000)) >> 32
                mem[ceil32(return_data.size) + 809 len 0] = 0
                call 0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82.0x10e4c746 with:
                     gas gas_remaining wei
                    args Mask(224, 32, arg2 - (WITHDRAWAL_FEE * arg2 / 10000)) << 224, mem[ceil32(return_data.size) + 809 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 'SafeMath: division by zero'
                mem[ceil32(return_data.size) + 777 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[ceil32(return_data.size) + 777]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + 856 len 22]
            else:
                if not wantLockedTotal:
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x4e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[430 len 26]
                    if not ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82):
                        revert with 0, 'Address: call to non-contract'
                    mem[324 len 64] = unknown_0xa9059cbb(?????), 0x2b6c058dd1751658cfdc58c6, 0, 0
                    mem[388 len 0] = 0
                    call 0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82.0x2421b234 with:
                         gas gas_remaining wei
                        args Mask(480, -256, unknown_0xa9059cbb(?????), 0x2b6c058dd1751658cfdc58c6, 0, 0) << 256, mem[388 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: division by zero'
                    mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if not return_data.size:
                        if not wantLockedTotal:
                            revert with 0, 'SafeMath: division by zero'
                        if sharesTotal * wantLockedTotal / wantLockedTotal != sharesTotal:
                            revert with 0, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[ceil32(return_data.size) + 426 len 31]
                        if not wantLockedTotal:
                            revert with 0, 'SafeMath: division by zero'
                        if sharesTotal * wantLockedTotal / wantLockedTotal <= sharesTotal:
                            sharesTotal -= sharesTotal * wantLockedTotal / wantLockedTotal
                            if wantLockedTotal > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal = 0
                            if 0 > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if eth.balance(this.address) < 0:
                                revert with 0, 
                                            32,
                                            38,
                                            0x4e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                            mem[ceil32(return_data.size) + 851 len 26]
                            if not ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 745 len 64] = 0, 0x657d0420f696aaedc48b40545ba5e85b10e4c746, Mask(224, 0, stor7.field_32)
                            call 0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82.0x10e4c746 with:
                                 gas gas_remaining wei
                                args wantLockedTotal, mem[ceil32(return_data.size) + 681 len 28], mem[ceil32(return_data.size) + 809 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
                            mem[ceil32(return_data.size) + 777 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[ceil32(return_data.size) + 777]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 856 len 22]
                            stor1 = 1
                            return (sharesTotal * wantLockedTotal / wantLockedTotal)
                        if sharesTotal > sharesTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        sharesTotal = 0
                        if wantLockedTotal > wantLockedTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        wantLockedTotal = 0
                        if 0 > wantLockedTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if eth.balance(this.address) < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0x4e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[ceil32(return_data.size) + 851 len 26]
                        if not ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 745 len 64] = 0, 0x657d0420f696aaedc48b40545ba5e85b10e4c746, Mask(224, 0, stor7.field_32)
                        call 0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82.0x10e4c746 with:
                             gas gas_remaining wei
                            args wantLockedTotal, mem[ceil32(return_data.size) + 681 len 28], mem[ceil32(return_data.size) + 809 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[ceil32(return_data.size) + 777 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 777]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 856 len 22]
                    else:
                        require return_data.size >= 32
                        if not mem[356]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 435 len 22]
                        if not wantLockedTotal:
                            revert with 0, 'SafeMath: division by zero'
                        if sharesTotal * wantLockedTotal / wantLockedTotal != sharesTotal:
                            revert with 0, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[ceil32(return_data.size) + 426 len 31]
                        if not wantLockedTotal:
                            revert with 0, 'SafeMath: division by zero'
                        if sharesTotal * wantLockedTotal / wantLockedTotal <= sharesTotal:
                            sharesTotal -= sharesTotal * wantLockedTotal / wantLockedTotal
                            if wantLockedTotal > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal = 0
                            if 0 > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if eth.balance(this.address) < 0:
                                revert with 0, 
                                            32,
                                            38,
                                            0x4e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                            mem[ceil32(return_data.size) + 851 len 26]
                            if not ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 745 len 64] = 0, 0x657d0420f696aaedc48b40545ba5e85b10e4c746, Mask(224, 0, stor7.field_32)
                            call 0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82.0x10e4c746 with:
                                 gas gas_remaining wei
                                args wantLockedTotal, mem[ceil32(return_data.size) + 681 len 28], mem[ceil32(return_data.size) + 809 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
                            mem[ceil32(return_data.size) + 777 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[ceil32(return_data.size) + 777]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 856 len 22]
                            stor1 = 1
                            return (sharesTotal * wantLockedTotal / wantLockedTotal)
                        if sharesTotal > sharesTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        sharesTotal = 0
                        if wantLockedTotal > wantLockedTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        wantLockedTotal = 0
                        if 0 > wantLockedTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if eth.balance(this.address) < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0x4e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[ceil32(return_data.size) + 851 len 26]
                        if not ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 745 len 64] = 0, 0x657d0420f696aaedc48b40545ba5e85b10e4c746, Mask(224, 0, stor7.field_32)
                        call 0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82.0x10e4c746 with:
                             gas gas_remaining wei
                            args wantLockedTotal, mem[ceil32(return_data.size) + 681 len 28], mem[ceil32(return_data.size) + 809 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[ceil32(return_data.size) + 777 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        'SafeERC20: low-level call failed',
                                        mem[(2 * ceil32(return_data.size)) + 846 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 777]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 856 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                else:
                    if WITHDRAWAL_FEE * wantLockedTotal / wantLockedTotal != WITHDRAWAL_FEE:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x4e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[430 len 26]
                    if not ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82):
                        revert with 0, 'Address: call to non-contract'
                    mem[324 len 64] = unknown_0xa9059cbb(?????), 0x2b6c058dd1751658cfdc58c6, 0, Mask(224, 32, WITHDRAWAL_FEE * wantLockedTotal / 10000) >> 32
                    call 0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82.0x2421b234 with:
                         gas gas_remaining wei
                        args Mask(224, 32, WITHDRAWAL_FEE * wantLockedTotal / 10000) << 224, mem[388 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: division by zero'
                    mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if not return_data.size:
                        if not wantLockedTotal:
                            revert with 0, 'SafeMath: division by zero'
                        if sharesTotal * wantLockedTotal / wantLockedTotal != sharesTotal:
                            revert with 0, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[ceil32(return_data.size) + 426 len 31]
                        if not wantLockedTotal:
                            revert with 0, 'SafeMath: division by zero'
                        if sharesTotal * wantLockedTotal / wantLockedTotal <= sharesTotal:
                            sharesTotal -= sharesTotal * wantLockedTotal / wantLockedTotal
                            if wantLockedTotal > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal = 0
                            if WITHDRAWAL_FEE * wantLockedTotal / 10000 > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if eth.balance(this.address) < 0:
                                revert with 0, 
                                            32,
                                            38,
                                            0x4e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                            mem[ceil32(return_data.size) + 851 len 26]
                            if not ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 745 len 64] = unknown_0xa9059cbb(?????), 0x657d0420f696aaedc48b4054, 0, Mask(224, 32, wantLockedTotal - (WITHDRAWAL_FEE * wantLockedTotal / 10000)) >> 32
                            mem[ceil32(return_data.size) + 809 len 0] = 0
                            call 0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82.0x10e4c746 with:
                                 gas gas_remaining wei
                                args Mask(224, 32, wantLockedTotal - (WITHDRAWAL_FEE * wantLockedTotal / 10000)) << 224, mem[ceil32(return_data.size) + 809 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
                            mem[ceil32(return_data.size) + 777 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[ceil32(return_data.size) + 777]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 856 len 22]
                            stor1 = 1
                            return (sharesTotal * wantLockedTotal / wantLockedTotal)
                    else:
                        require return_data.size >= 32
                        if not mem[356]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 435 len 22]
                        if not wantLockedTotal:
                            revert with 0, 'SafeMath: division by zero'
                        if sharesTotal * wantLockedTotal / wantLockedTotal != sharesTotal:
                            revert with 0, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[ceil32(return_data.size) + 426 len 31]
                        if not wantLockedTotal:
                            revert with 0, 'SafeMath: division by zero'
                        if sharesTotal * wantLockedTotal / wantLockedTotal <= sharesTotal:
                            sharesTotal -= sharesTotal * wantLockedTotal / wantLockedTotal
                            if wantLockedTotal > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal = 0
                            if WITHDRAWAL_FEE * wantLockedTotal / 10000 > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if eth.balance(this.address) < 0:
                                revert with 0, 
                                            32,
                                            38,
                                            0x4e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                            mem[ceil32(return_data.size) + 851 len 26]
                            if not ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 745 len 64] = unknown_0xa9059cbb(?????), 0x657d0420f696aaedc48b4054, 283428678, Mask(224, 32, wantLockedTotal - (WITHDRAWAL_FEE * wantLockedTotal / 10000)) >> 32
                            mem[ceil32(return_data.size) + 837 len 4] = 0
                            call 0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82.0x10e4c746 with:
                                 gas gas_remaining wei
                                args Mask(224, 32, wantLockedTotal - (WITHDRAWAL_FEE * wantLockedTotal / 10000)) << 224, mem[ceil32(return_data.size) + 809 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
                            mem[ceil32(return_data.size) + 777 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            'SafeERC20: low-level call failed',
                                            mem[(2 * ceil32(return_data.size)) + 846 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[ceil32(return_data.size) + 777]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 856 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                            stor1 = 1
                            return sharesTotal * wantLockedTotal / wantLockedTotal, 
                                   mem[(2 * ceil32(return_data.size)) + 778 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    ('gt', ('div', ('mul', ('stor', ('name', 'sharesTotal', 8)), ('stor', ('name', 'wantLockedTotal', 7))), ('stor', ('name', 'wantLockedTotal', 7))), ('stor', ('name', 'sharesTotal', 8)))
                    if sharesTotal > sharesTotal:
                        revert with 0, 'SafeMath: subtraction overflow'
                    sharesTotal = 0
                    if wantLockedTotal > wantLockedTotal:
                        revert with 0, 'SafeMath: subtraction overflow'
                    wantLockedTotal = 0
                    if WITHDRAWAL_FEE * wantLockedTotal / 10000 > wantLockedTotal:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x4e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[ceil32(return_data.size) + 851 len 26]
                    if not ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 745 len 64] = unknown_0xa9059cbb(?????), 0x657d0420f696aaedc48b4054, 0, Mask(224, 32, wantLockedTotal - (WITHDRAWAL_FEE * wantLockedTotal / 10000)) >> 32
                    mem[ceil32(return_data.size) + 809 len 0] = 0
                    call 0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82.0x10e4c746 with:
                         gas gas_remaining wei
                        args Mask(224, 32, wantLockedTotal - (WITHDRAWAL_FEE * wantLockedTotal / 10000)) << 224, mem[ceil32(return_data.size) + 809 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: division by zero'
                    mem[ceil32(return_data.size) + 777 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 777]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 856 len 22]
        else:
            if wantLockedTotal >= ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x4e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[430 len 26]
                    if not ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82):
                        revert with 0, 'Address: call to non-contract'
                    mem[324 len 64] = unknown_0xa9059cbb(?????), 0x2b6c058dd1751658cfdc58c6, 0, 0
                    call 0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82.0x2421b234 with:
                         gas gas_remaining wei
                        args 0, mem[388 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: division by zero'
                    mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if not return_data.size:
                        if not ext_call.return_data[0]:
                            if not wantLockedTotal:
                                revert with 0, 'SafeMath: division by zero'
                            if 0 / wantLockedTotal <= sharesTotal:
                                sharesTotal -= 0 / wantLockedTotal
                                if ext_call.return_data[0] > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                wantLockedTotal -= ext_call.return_data[0]
                                if 0 > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x4e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                mem[ceil32(return_data.size) + 851 len 26]
                                if not ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 745 len 64] = unknown_0xa9059cbb(?????), 0x657d0420f696aaedc48b4054, 0, ext_call.return_data[0 len 28]
                                mem[ceil32(return_data.size) + 809 len 0] = 0
                                call 0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82.0x10e4c746 with:
                                     gas gas_remaining wei
                                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[ceil32(return_data.size) + 809 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: division by zero'
                                mem[ceil32(return_data.size) + 777 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[ceil32(return_data.size) + 777]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(2 * ceil32(return_data.size)) + 856 len 22]
                                stor1 = 1
                                return (0 / wantLockedTotal)
                        else:
                            if sharesTotal * ext_call.return_data[0] / ext_call.return_data[0] != sharesTotal:
                                revert with 0, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[ceil32(return_data.size) + 426 len 31]
                            if not wantLockedTotal:
                                revert with 0, 'SafeMath: division by zero'
                            if sharesTotal * ext_call.return_data[0] / wantLockedTotal <= sharesTotal:
                                sharesTotal -= sharesTotal * ext_call.return_data[0] / wantLockedTotal
                                if ext_call.return_data[0] > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                wantLockedTotal -= ext_call.return_data[0]
                                if 0 > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x4e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                mem[ceil32(return_data.size) + 851 len 26]
                                if not ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 745 len 64] = unknown_0xa9059cbb(?????), 0x657d0420f696aaedc48b4054, 283428678, ext_call.return_data[0 len 28]
                                mem[ceil32(return_data.size) + 837 len 4] = 0
                                call 0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82.0x10e4c746 with:
                                     gas gas_remaining wei
                                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[ceil32(return_data.size) + 809 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: division by zero'
                                mem[ceil32(return_data.size) + 777 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 
                                                'SafeERC20: low-level call failed',
                                                mem[(2 * ceil32(return_data.size)) + 846 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[ceil32(return_data.size) + 777]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(2 * ceil32(return_data.size)) + 856 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                stor1 = 1
                                return sharesTotal * ext_call.return_data[0] / wantLockedTotal, 
                                       mem[(2 * ceil32(return_data.size)) + 778 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if sharesTotal > sharesTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        sharesTotal = 0
                        if ext_call.return_data[0] > wantLockedTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        wantLockedTotal -= ext_call.return_data[0]
                        if 0 > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if eth.balance(this.address) < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0x4e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[ceil32(return_data.size) + 851 len 26]
                        if not ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 745 len 64] = unknown_0xa9059cbb(?????), 0x657d0420f696aaedc48b4054, 283428678, ext_call.return_data[0 len 28]
                        mem[ceil32(return_data.size) + 837 len 4] = 0
                        call 0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82.0x10e4c746 with:
                             gas gas_remaining wei
                            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[ceil32(return_data.size) + 809 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[ceil32(return_data.size) + 777 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        'SafeERC20: low-level call failed',
                                        mem[(2 * ceil32(return_data.size)) + 846 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 777]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 856 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                        stor1 = 1
                        return sharesTotal, 
                               mem[(2 * ceil32(return_data.size)) + 778 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    require return_data.size >= 32
                    if not mem[356]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 435 len 22]
                    if not ext_call.return_data[0]:
                        if not wantLockedTotal:
                            revert with 0, 'SafeMath: division by zero'
                        if 0 / wantLockedTotal <= sharesTotal:
                            sharesTotal -= 0 / wantLockedTotal
                            if ext_call.return_data[0] > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal -= ext_call.return_data[0]
                            if 0 > ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if eth.balance(this.address) < 0:
                                revert with 0, 
                                            32,
                                            38,
                                            0x4e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                            mem[ceil32(return_data.size) + 851 len 26]
                            if not ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 745 len 64] = unknown_0xa9059cbb(?????), 0x657d0420f696aaedc48b4054, 283428678, ext_call.return_data[0 len 28]
                            mem[ceil32(return_data.size) + 837 len 4] = 0
                            call 0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82.0x10e4c746 with:
                                 gas gas_remaining wei
                                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[ceil32(return_data.size) + 809 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
                            mem[ceil32(return_data.size) + 777 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            'SafeERC20: low-level call failed',
                                            mem[(2 * ceil32(return_data.size)) + 846 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[ceil32(return_data.size) + 777]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 856 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                            stor1 = 1
                            return 0 / wantLockedTotal, 
                                   mem[(2 * ceil32(return_data.size)) + 778 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if sharesTotal > sharesTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        sharesTotal = 0
                        if ext_call.return_data[0] > wantLockedTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        wantLockedTotal -= ext_call.return_data[0]
                        if 0 > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if eth.balance(this.address) < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0x4e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[ceil32(return_data.size) + 851 len 26]
                        if not ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 745 len 64] = unknown_0xa9059cbb(?????), 0x657d0420f696aaedc48b4054, 283428678, ext_call.return_data[0 len 28]
                        mem[ceil32(return_data.size) + 837 len 4] = 0
                        call 0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82.0x10e4c746 with:
                             gas gas_remaining wei
                            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[ceil32(return_data.size) + 809 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[ceil32(return_data.size) + 777 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        'SafeERC20: low-level call failed',
                                        mem[(2 * ceil32(return_data.size)) + 846 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 777]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 856 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                        stor1 = 1
                        return sharesTotal, 
                               mem[(2 * ceil32(return_data.size)) + 778 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if sharesTotal * ext_call.return_data[0] / ext_call.return_data[0] != sharesTotal:
                        revert with 0, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[ceil32(return_data.size) + 426 len 31]
                    if not wantLockedTotal:
                        revert with 0, 'SafeMath: division by zero'
                    if sharesTotal * ext_call.return_data[0] / wantLockedTotal <= sharesTotal:
                        sharesTotal -= sharesTotal * ext_call.return_data[0] / wantLockedTotal
                        if ext_call.return_data[0] > wantLockedTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        wantLockedTotal -= ext_call.return_data[0]
                        if 0 > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if eth.balance(this.address) < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0x4e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[ceil32(return_data.size) + 851 len 26]
                        if not ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 745 len 64] = unknown_0xa9059cbb(?????), 0x657d0420f696aaedc48b4054, 0, ext_call.return_data[0 len 28]
                        mem[ceil32(return_data.size) + 809 len 0] = 0
                        call 0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82.0x10e4c746 with:
                             gas gas_remaining wei
                            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[ceil32(return_data.size) + 809 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[ceil32(return_data.size) + 777 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 777]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 856 len 22]
                        stor1 = 1
                        return (sharesTotal * ext_call.return_data[0] / wantLockedTotal)
                    if sharesTotal > sharesTotal:
                        revert with 0, 'SafeMath: subtraction overflow'
                    sharesTotal = 0
                    if ext_call.return_data[0] > wantLockedTotal:
                        revert with 0, 'SafeMath: subtraction overflow'
                    wantLockedTotal -= ext_call.return_data[0]
                    if 0 > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x4e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[ceil32(return_data.size) + 851 len 26]
                    if not ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 745 len 64] = unknown_0xa9059cbb(?????), 0x657d0420f696aaedc48b4054, 0, ext_call.return_data[0 len 28]
                    mem[ceil32(return_data.size) + 809 len 0] = 0
                    call 0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82.0x10e4c746 with:
                         gas gas_remaining wei
                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[ceil32(return_data.size) + 809 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: division by zero'
                    mem[ceil32(return_data.size) + 777 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 777]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 856 len 22]
                else:
                    if WITHDRAWAL_FEE * ext_call.return_data[0] / ext_call.return_data[0] != WITHDRAWAL_FEE:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x4e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[430 len 26]
                    if not ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82):
                        revert with 0, 'Address: call to non-contract'
                    mem[324 len 64] = unknown_0xa9059cbb(?????), 0x2b6c058dd1751658cfdc58c6, 0, Mask(224, 32, WITHDRAWAL_FEE * ext_call.return_data[0] / 10000) >> 32
                    mem[388 len 0] = 0
                    call 0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82.0x2421b234 with:
                         gas gas_remaining wei
                        args Mask(224, 32, WITHDRAWAL_FEE * ext_call.return_data[0] / 10000) << 224, mem[388 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: division by zero'
                    mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if not return_data.size:
                        if not ext_call.return_data[0]:
                            if not wantLockedTotal:
                                revert with 0, 'SafeMath: division by zero'
                            if 0 / wantLockedTotal <= sharesTotal:
                                sharesTotal -= 0 / wantLockedTotal
                                if ext_call.return_data[0] > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                wantLockedTotal -= ext_call.return_data[0]
                                if WITHDRAWAL_FEE * ext_call.return_data[0] / 10000 > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x4e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                mem[ceil32(return_data.size) + 851 len 26]
                                if not ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 745 len 64] = 0, 0x657d0420f696aaedc48b40545ba5e85b10e4c746, Mask(224, 32, ext_call.return_data[0] - (WITHDRAWAL_FEE * ext_call.return_data[0] / 10000)) >> 32
                                call 0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82.0x10e4c746 with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0] - (WITHDRAWAL_FEE * ext_call.return_data[0] / 10000), mem[ceil32(return_data.size) + 681 len 28], mem[ceil32(return_data.size) + 809 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: division by zero'
                                mem[ceil32(return_data.size) + 777 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 
                                                'SafeERC20: low-level call failed',
                                                mem[(2 * ceil32(return_data.size)) + 846 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[ceil32(return_data.size) + 777]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(2 * ceil32(return_data.size)) + 856 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                stor1 = 1
                                return (0 / wantLockedTotal)
                            if sharesTotal > sharesTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            sharesTotal = 0
                            if ext_call.return_data[0] > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal -= ext_call.return_data[0]
                            if WITHDRAWAL_FEE * ext_call.return_data[0] / 10000 > ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if eth.balance(this.address) < 0:
                                revert with 0, 
                                            32,
                                            38,
                                            0x4e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                            mem[ceil32(return_data.size) + 851 len 26]
                            if not ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 745 len 64] = 0, 0x657d0420f696aaedc48b40545ba5e85b10e4c746, Mask(224, 32, ext_call.return_data[0] - (WITHDRAWAL_FEE * ext_call.return_data[0] / 10000)) >> 32
                            call 0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82.0x10e4c746 with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0] - (WITHDRAWAL_FEE * ext_call.return_data[0] / 10000), mem[ceil32(return_data.size) + 681 len 28], mem[ceil32(return_data.size) + 809 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
                            mem[ceil32(return_data.size) + 777 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            'SafeERC20: low-level call failed',
                                            mem[(2 * ceil32(return_data.size)) + 846 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[ceil32(return_data.size) + 777]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 856 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                        else:
                            if sharesTotal * ext_call.return_data[0] / ext_call.return_data[0] != sharesTotal:
                                revert with 0, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[ceil32(return_data.size) + 426 len 31]
                            if not wantLockedTotal:
                                revert with 0, 'SafeMath: division by zero'
                            if sharesTotal * ext_call.return_data[0] / wantLockedTotal <= sharesTotal:
                                sharesTotal -= sharesTotal * ext_call.return_data[0] / wantLockedTotal
                                if ext_call.return_data[0] > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                wantLockedTotal -= ext_call.return_data[0]
                                if WITHDRAWAL_FEE * ext_call.return_data[0] / 10000 > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x4e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                mem[ceil32(return_data.size) + 851 len 26]
                                if not ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 745 len 64] = 0, 0x657d0420f696aaedc48b40545ba5e85b10e4c746, Mask(224, 32, ext_call.return_data[0] - (WITHDRAWAL_FEE * ext_call.return_data[0] / 10000)) >> 32
                                call 0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82.0x10e4c746 with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0] - (WITHDRAWAL_FEE * ext_call.return_data[0] / 10000), mem[ceil32(return_data.size) + 681 len 28], mem[ceil32(return_data.size) + 809 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: division by zero'
                                mem[ceil32(return_data.size) + 777 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 
                                                'SafeERC20: low-level call failed',
                                                mem[(2 * ceil32(return_data.size)) + 846 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[ceil32(return_data.size) + 777]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(2 * ceil32(return_data.size)) + 856 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                stor1 = 1
                                return (sharesTotal * ext_call.return_data[0] / wantLockedTotal)
                            if sharesTotal > sharesTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            sharesTotal = 0
                            if ext_call.return_data[0] > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal -= ext_call.return_data[0]
                            if WITHDRAWAL_FEE * ext_call.return_data[0] / 10000 > ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if eth.balance(this.address) < 0:
                                revert with 0, 
                                            32,
                                            38,
                                            0x4e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                            mem[ceil32(return_data.size) + 851 len 26]
                            if not ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 745 len 64] = 0, 0x657d0420f696aaedc48b40545ba5e85b10e4c746, Mask(224, 32, ext_call.return_data[0] - (WITHDRAWAL_FEE * ext_call.return_data[0] / 10000)) >> 32
                            call 0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82.0x10e4c746 with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0] - (WITHDRAWAL_FEE * ext_call.return_data[0] / 10000), mem[ceil32(return_data.size) + 681 len 28], mem[ceil32(return_data.size) + 809 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
                            mem[ceil32(return_data.size) + 777 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[ceil32(return_data.size) + 777]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 856 len 22]
                    else:
                        require return_data.size >= 32
                        if not mem[356]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 435 len 22]
                        if not ext_call.return_data[0]:
                            if not wantLockedTotal:
                                revert with 0, 'SafeMath: division by zero'
                            if 0 / wantLockedTotal <= sharesTotal:
                                sharesTotal -= 0 / wantLockedTotal
                                if ext_call.return_data[0] > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                wantLockedTotal -= ext_call.return_data[0]
                                if WITHDRAWAL_FEE * ext_call.return_data[0] / 10000 > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x4e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                mem[ceil32(return_data.size) + 851 len 26]
                                if not ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 745 len 64] = 0, 0x657d0420f696aaedc48b40545ba5e85b10e4c746, Mask(224, 32, ext_call.return_data[0] - (WITHDRAWAL_FEE * ext_call.return_data[0] / 10000)) >> 32
                                call 0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82.0x10e4c746 with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0] - (WITHDRAWAL_FEE * ext_call.return_data[0] / 10000), mem[ceil32(return_data.size) + 681 len 28], mem[ceil32(return_data.size) + 809 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: division by zero'
                                mem[ceil32(return_data.size) + 777 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 
                                                'SafeERC20: low-level call failed',
                                                mem[(2 * ceil32(return_data.size)) + 846 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[ceil32(return_data.size) + 777]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(2 * ceil32(return_data.size)) + 856 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                stor1 = 1
                                return (0 / wantLockedTotal)
                            if sharesTotal > sharesTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            sharesTotal = 0
                            if ext_call.return_data[0] > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal -= ext_call.return_data[0]
                            if WITHDRAWAL_FEE * ext_call.return_data[0] / 10000 > ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if eth.balance(this.address) < 0:
                                revert with 0, 
                                            32,
                                            38,
                                            0x4e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                            mem[ceil32(return_data.size) + 851 len 26]
                            if not ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 745 len 64] = 0, 0x657d0420f696aaedc48b40545ba5e85b10e4c746, Mask(224, 32, ext_call.return_data[0] - (WITHDRAWAL_FEE * ext_call.return_data[0] / 10000)) >> 32
                            call 0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82.0x10e4c746 with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0] - (WITHDRAWAL_FEE * ext_call.return_data[0] / 10000), mem[ceil32(return_data.size) + 681 len 28], mem[ceil32(return_data.size) + 809 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
                            mem[ceil32(return_data.size) + 777 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[ceil32(return_data.size) + 777]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 856 len 22]
                        else:
                            if sharesTotal * ext_call.return_data[0] / ext_call.return_data[0] != sharesTotal:
                                revert with 0, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[ceil32(return_data.size) + 426 len 31]
                            if not wantLockedTotal:
                                revert with 0, 'SafeMath: division by zero'
                            if sharesTotal * ext_call.return_data[0] / wantLockedTotal <= sharesTotal:
                                sharesTotal -= sharesTotal * ext_call.return_data[0] / wantLockedTotal
                                if ext_call.return_data[0] > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                wantLockedTotal -= ext_call.return_data[0]
                                if WITHDRAWAL_FEE * ext_call.return_data[0] / 10000 > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x4e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                mem[ceil32(return_data.size) + 851 len 26]
                                if not ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 745 len 64] = 0, 0x657d0420f696aaedc48b40545ba5e85b10e4c746, Mask(224, 32, ext_call.return_data[0] - (WITHDRAWAL_FEE * ext_call.return_data[0] / 10000)) >> 32
                                call 0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82.0x10e4c746 with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0] - (WITHDRAWAL_FEE * ext_call.return_data[0] / 10000), mem[ceil32(return_data.size) + 681 len 28], mem[ceil32(return_data.size) + 809 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: division by zero'
                                mem[ceil32(return_data.size) + 777 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[ceil32(return_data.size) + 777]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(2 * ceil32(return_data.size)) + 856 len 22]
                                stor1 = 1
                                return (sharesTotal * ext_call.return_data[0] / wantLockedTotal)
                            if sharesTotal > sharesTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            sharesTotal = 0
                            if ext_call.return_data[0] > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal -= ext_call.return_data[0]
                            if WITHDRAWAL_FEE * ext_call.return_data[0] / 10000 > ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if eth.balance(this.address) < 0:
                                revert with 0, 
                                            32,
                                            38,
                                            0x4e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                            mem[ceil32(return_data.size) + 851 len 26]
                            if not ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 745 len 64] = 0, 0x657d0420f696aaedc48b40545ba5e85b10e4c746, Mask(224, 32, ext_call.return_data[0] - (WITHDRAWAL_FEE * ext_call.return_data[0] / 10000)) >> 32
                            call 0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82.0x10e4c746 with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0] - (WITHDRAWAL_FEE * ext_call.return_data[0] / 10000), mem[ceil32(return_data.size) + 681 len 28], mem[ceil32(return_data.size) + 809 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
                            mem[ceil32(return_data.size) + 777 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            'SafeERC20: low-level call failed',
                                            mem[(2 * ceil32(return_data.size)) + 846 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[ceil32(return_data.size) + 777]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 856 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
            else:
                if not wantLockedTotal:
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x4e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[430 len 26]
                    if not ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82):
                        revert with 0, 'Address: call to non-contract'
                    mem[324 len 64] = unknown_0xa9059cbb(?????), 0x2b6c058dd1751658cfdc58c6, 0, 0
                    mem[388 len 0] = 0
                    call 0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82.0x2421b234 with:
                         gas gas_remaining wei
                        args Mask(480, -256, unknown_0xa9059cbb(?????), 0x2b6c058dd1751658cfdc58c6, 0, 0) << 256, mem[388 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: division by zero'
                    mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if not return_data.size:
                        if not wantLockedTotal:
                            revert with 0, 'SafeMath: division by zero'
                        if sharesTotal * wantLockedTotal / wantLockedTotal != sharesTotal:
                            revert with 0, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[ceil32(return_data.size) + 426 len 31]
                        if not wantLockedTotal:
                            revert with 0, 'SafeMath: division by zero'
                        if sharesTotal * wantLockedTotal / wantLockedTotal <= sharesTotal:
                            sharesTotal -= sharesTotal * wantLockedTotal / wantLockedTotal
                            if wantLockedTotal > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal = 0
                            if 0 > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if eth.balance(this.address) < 0:
                                revert with 0, 
                                            32,
                                            38,
                                            0x4e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                            mem[ceil32(return_data.size) + 851 len 26]
                            if not ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 745 len 64] = 0, 0x657d0420f696aaedc48b40545ba5e85b10e4c746, Mask(224, 0, stor7.field_32)
                            call 0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82.0x10e4c746 with:
                                 gas gas_remaining wei
                                args wantLockedTotal, mem[ceil32(return_data.size) + 681 len 28], mem[ceil32(return_data.size) + 809 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
                            mem[ceil32(return_data.size) + 777 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[ceil32(return_data.size) + 777]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 856 len 22]
                            stor1 = 1
                            return (sharesTotal * wantLockedTotal / wantLockedTotal)
                        if sharesTotal > sharesTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        sharesTotal = 0
                        if wantLockedTotal > wantLockedTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        wantLockedTotal = 0
                        if 0 > wantLockedTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if eth.balance(this.address) < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0x4e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[ceil32(return_data.size) + 851 len 26]
                        if not ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 745 len 64] = 0, 0x657d0420f696aaedc48b40545ba5e85b10e4c746, Mask(224, 0, stor7.field_32)
                        call 0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82.0x10e4c746 with:
                             gas gas_remaining wei
                            args wantLockedTotal, mem[ceil32(return_data.size) + 681 len 28], mem[ceil32(return_data.size) + 809 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[ceil32(return_data.size) + 777 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        'SafeERC20: low-level call failed',
                                        mem[(2 * ceil32(return_data.size)) + 846 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 777]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 856 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                    else:
                        require return_data.size >= 32
                        if not mem[356]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 435 len 22]
                        if not wantLockedTotal:
                            revert with 0, 'SafeMath: division by zero'
                        if sharesTotal * wantLockedTotal / wantLockedTotal != sharesTotal:
                            revert with 0, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[ceil32(return_data.size) + 426 len 31]
                        if not wantLockedTotal:
                            revert with 0, 'SafeMath: division by zero'
                        if sharesTotal * wantLockedTotal / wantLockedTotal <= sharesTotal:
                            sharesTotal -= sharesTotal * wantLockedTotal / wantLockedTotal
                            if wantLockedTotal > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal = 0
                            if 0 > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if eth.balance(this.address) < 0:
                                revert with 0, 
                                            32,
                                            38,
                                            0x4e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                            mem[ceil32(return_data.size) + 851 len 26]
                            if not ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 745 len 64] = 0, 0x657d0420f696aaedc48b40545ba5e85b10e4c746, Mask(224, 0, stor7.field_32)
                            call 0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82.0x10e4c746 with:
                                 gas gas_remaining wei
                                args wantLockedTotal, mem[ceil32(return_data.size) + 681 len 28], mem[ceil32(return_data.size) + 809 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
                            mem[ceil32(return_data.size) + 777 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            'SafeERC20: low-level call failed',
                                            mem[(2 * ceil32(return_data.size)) + 846 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[ceil32(return_data.size) + 777]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 856 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                            stor1 = 1
                            return (sharesTotal * wantLockedTotal / wantLockedTotal)
                        if sharesTotal > sharesTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        sharesTotal = 0
                        if wantLockedTotal > wantLockedTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        wantLockedTotal = 0
                        if 0 > wantLockedTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if eth.balance(this.address) < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0x4e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[ceil32(return_data.size) + 851 len 26]
                        if not ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 745 len 64] = 0, 0x657d0420f696aaedc48b40545ba5e85b10e4c746, Mask(224, 0, stor7.field_32)
                        call 0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82.0x10e4c746 with:
                             gas gas_remaining wei
                            args wantLockedTotal, mem[ceil32(return_data.size) + 681 len 28], mem[ceil32(return_data.size) + 809 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[ceil32(return_data.size) + 777 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 777]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 856 len 22]
                else:
                    if WITHDRAWAL_FEE * wantLockedTotal / wantLockedTotal != WITHDRAWAL_FEE:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x4e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[430 len 26]
                    if not ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82):
                        revert with 0, 'Address: call to non-contract'
                    mem[324 len 64] = unknown_0xa9059cbb(?????), 0x2b6c058dd1751658cfdc58c6, 0, Mask(224, 32, WITHDRAWAL_FEE * wantLockedTotal / 10000) >> 32
                    mem[388 len 0] = 0
                    call 0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82.0x2421b234 with:
                         gas gas_remaining wei
                        args Mask(224, 32, WITHDRAWAL_FEE * wantLockedTotal / 10000) << 224, mem[388 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: division by zero'
                    mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if not return_data.size:
                        if not wantLockedTotal:
                            revert with 0, 'SafeMath: division by zero'
                        if sharesTotal * wantLockedTotal / wantLockedTotal != sharesTotal:
                            revert with 0, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[ceil32(return_data.size) + 426 len 31]
                        if not wantLockedTotal:
                            revert with 0, 'SafeMath: division by zero'
                        if sharesTotal * wantLockedTotal / wantLockedTotal <= sharesTotal:
                            sharesTotal -= sharesTotal * wantLockedTotal / wantLockedTotal
                            if wantLockedTotal > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal = 0
                            if WITHDRAWAL_FEE * wantLockedTotal / 10000 > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if eth.balance(this.address) < 0:
                                revert with 0, 
                                            32,
                                            38,
                                            0x4e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                            mem[ceil32(return_data.size) + 851 len 26]
                            if not ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 745 len 64] = 0, 0x657d0420f696aaedc48b40545ba5e85b10e4c746, Mask(224, 32, wantLockedTotal - (WITHDRAWAL_FEE * wantLockedTotal / 10000)) >> 32
                            call 0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82.0x10e4c746 with:
                                 gas gas_remaining wei
                                args wantLockedTotal - (WITHDRAWAL_FEE * wantLockedTotal / 10000), mem[ceil32(return_data.size) + 681 len 28], mem[ceil32(return_data.size) + 809 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
                            mem[ceil32(return_data.size) + 777 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            'SafeERC20: low-level call failed',
                                            mem[(2 * ceil32(return_data.size)) + 846 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[ceil32(return_data.size) + 777]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 856 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                            stor1 = 1
                            return (sharesTotal * wantLockedTotal / wantLockedTotal)
                        if sharesTotal > sharesTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        sharesTotal = 0
                        if wantLockedTotal > wantLockedTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        wantLockedTotal = 0
                        if WITHDRAWAL_FEE * wantLockedTotal / 10000 > wantLockedTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if eth.balance(this.address) < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0x4e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[ceil32(return_data.size) + 851 len 26]
                        if not ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 745 len 64] = 0, 0x657d0420f696aaedc48b40545ba5e85b10e4c746, Mask(224, 32, wantLockedTotal - (WITHDRAWAL_FEE * wantLockedTotal / 10000)) >> 32
                        call 0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82.0x10e4c746 with:
                             gas gas_remaining wei
                            args wantLockedTotal - (WITHDRAWAL_FEE * wantLockedTotal / 10000), mem[ceil32(return_data.size) + 681 len 28], mem[ceil32(return_data.size) + 809 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[ceil32(return_data.size) + 777 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        'SafeERC20: low-level call failed',
                                        mem[(2 * ceil32(return_data.size)) + 846 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 777]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 856 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                    else:
                        require return_data.size >= 32
                        if not mem[356]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 435 len 22]
                        if not wantLockedTotal:
                            revert with 0, 'SafeMath: division by zero'
                        if sharesTotal * wantLockedTotal / wantLockedTotal != sharesTotal:
                            revert with 0, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[ceil32(return_data.size) + 426 len 31]
                        if not wantLockedTotal:
                            revert with 0, 'SafeMath: division by zero'
                        if sharesTotal * wantLockedTotal / wantLockedTotal <= sharesTotal:
                            sharesTotal -= sharesTotal * wantLockedTotal / wantLockedTotal
                            if wantLockedTotal > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal = 0
                            if WITHDRAWAL_FEE * wantLockedTotal / 10000 > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if eth.balance(this.address) < 0:
                                revert with 0, 
                                            32,
                                            38,
                                            0x4e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                            mem[ceil32(return_data.size) + 851 len 26]
                            if not ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 745 len 64] = 0, 0x657d0420f696aaedc48b40545ba5e85b10e4c746, Mask(224, 32, wantLockedTotal - (WITHDRAWAL_FEE * wantLockedTotal / 10000)) >> 32
                            call 0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82.0x10e4c746 with:
                                 gas gas_remaining wei
                                args wantLockedTotal - (WITHDRAWAL_FEE * wantLockedTotal / 10000), mem[ceil32(return_data.size) + 681 len 28], mem[ceil32(return_data.size) + 809 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
                            mem[ceil32(return_data.size) + 777 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            'SafeERC20: low-level call failed',
                                            mem[(2 * ceil32(return_data.size)) + 846 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[ceil32(return_data.size) + 777]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 856 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                            stor1 = 1
                            return (sharesTotal * wantLockedTotal / wantLockedTotal)
                        if sharesTotal > sharesTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        sharesTotal = 0
                        if wantLockedTotal > wantLockedTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        wantLockedTotal = 0
                        if WITHDRAWAL_FEE * wantLockedTotal / 10000 > wantLockedTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if eth.balance(this.address) < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0x4e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[ceil32(return_data.size) + 851 len 26]
                        if not ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 745 len 64] = 0, 0x657d0420f696aaedc48b40545ba5e85b10e4c746, Mask(224, 32, wantLockedTotal - (WITHDRAWAL_FEE * wantLockedTotal / 10000)) >> 32
                        call 0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82.0x10e4c746 with:
                             gas gas_remaining wei
                            args wantLockedTotal - (WITHDRAWAL_FEE * wantLockedTotal / 10000), mem[ceil32(return_data.size) + 681 len 28], mem[ceil32(return_data.size) + 809 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[ceil32(return_data.size) + 777 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 777]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 856 len 22]
        stor1 = 1
        return sharesTotal
    call farmContractAddress.leaveStaking(uint256 arg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82)
    staticcall 0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg2 <= ext_call.return_data[0]:
        if wantLockedTotal >= arg2:
            if not arg2:
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x4e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[430 len 26]
                if not ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82):
                    revert with 0, 'Address: call to non-contract'
                mem[324 len 64] = unknown_0xa9059cbb(?????), 0x2b6c058dd1751658cfdc58c6, 0, 0
                call 0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82.0x2421b234 with:
                     gas gas_remaining wei
                    args 0, mem[388 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 'SafeMath: division by zero'
                mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if not return_data.size:
                    if not arg2:
                        if not wantLockedTotal:
                            revert with 0, 'SafeMath: division by zero'
                        if 0 / wantLockedTotal <= sharesTotal:
                            sharesTotal -= 0 / wantLockedTotal
                            if arg2 > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal -= arg2
                            if 0 > arg2:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if eth.balance(this.address) < 0:
                                revert with 0, 
                                            32,
                                            38,
                                            0x4e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                            mem[ceil32(return_data.size) + 851 len 26]
                            if not ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 745 len 64] = unknown_0xa9059cbb(?????), 0x657d0420f696aaedc48b4054, 283428678, Mask(224, 32, arg2) >> 32
                            mem[ceil32(return_data.size) + 837 len 4] = 0
                            call 0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82.0x10e4c746 with:
                                 gas gas_remaining wei
                                args Mask(224, 32, arg2) << 224, mem[ceil32(return_data.size) + 809 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
                            mem[ceil32(return_data.size) + 777 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            'SafeERC20: low-level call failed',
                                            mem[(2 * ceil32(return_data.size)) + 846 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[ceil32(return_data.size) + 777]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 856 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                            stor1 = 1
                            return 0 / wantLockedTotal, 
                                   mem[(2 * ceil32(return_data.size)) + 778 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if sharesTotal > sharesTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        sharesTotal = 0
                        if arg2 > wantLockedTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        wantLockedTotal -= arg2
                        if 0 > arg2:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if eth.balance(this.address) < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0x4e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[ceil32(return_data.size) + 851 len 26]
                        if not ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 745 len 64] = unknown_0xa9059cbb(?????), 0x657d0420f696aaedc48b4054, 283428678, Mask(224, 32, arg2) >> 32
                        mem[ceil32(return_data.size) + 837 len 4] = 0
                        call 0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82.0x10e4c746 with:
                             gas gas_remaining wei
                            args Mask(224, 32, arg2) << 224, mem[ceil32(return_data.size) + 809 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[ceil32(return_data.size) + 777 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        'SafeERC20: low-level call failed',
                                        mem[(2 * ceil32(return_data.size)) + 846 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 777]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 856 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                        stor1 = 1
                        return sharesTotal, 
                               mem[(2 * ceil32(return_data.size)) + 778 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if sharesTotal * arg2 / arg2 != sharesTotal:
                        revert with 0, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[ceil32(return_data.size) + 426 len 31]
                    if not wantLockedTotal:
                        revert with 0, 'SafeMath: division by zero'
                    if sharesTotal * arg2 / wantLockedTotal <= sharesTotal:
                        sharesTotal -= sharesTotal * arg2 / wantLockedTotal
                        if arg2 > wantLockedTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        wantLockedTotal -= arg2
                        if 0 > arg2:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if eth.balance(this.address) < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0x4e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[ceil32(return_data.size) + 851 len 26]
                        if not ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 745 len 64] = unknown_0xa9059cbb(?????), 0x657d0420f696aaedc48b4054, 283428678, Mask(224, 32, arg2) >> 32
                        mem[ceil32(return_data.size) + 837 len 4] = 0
                        call 0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82.0x10e4c746 with:
                             gas gas_remaining wei
                            args Mask(224, 32, arg2) << 224, mem[ceil32(return_data.size) + 809 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[ceil32(return_data.size) + 777 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        'SafeERC20: low-level call failed',
                                        mem[(2 * ceil32(return_data.size)) + 846 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 777]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 856 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                        stor1 = 1
                        return sharesTotal * arg2 / wantLockedTotal, 
                               mem[(2 * ceil32(return_data.size)) + 778 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if sharesTotal > sharesTotal:
                        revert with 0, 'SafeMath: subtraction overflow'
                    sharesTotal = 0
                    if arg2 > wantLockedTotal:
                        revert with 0, 'SafeMath: subtraction overflow'
                    wantLockedTotal -= arg2
                    if 0 > arg2:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x4e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[ceil32(return_data.size) + 851 len 26]
                    if not ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 745 len 64] = unknown_0xa9059cbb(?????), 0x657d0420f696aaedc48b4054, 0, Mask(224, 32, arg2) >> 32
                    mem[ceil32(return_data.size) + 809 len 0] = 0
                    call 0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82.0x10e4c746 with:
                         gas gas_remaining wei
                        args Mask(224, 32, arg2) << 224, mem[ceil32(return_data.size) + 809 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: division by zero'
                    mem[ceil32(return_data.size) + 777 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 777]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 856 len 22]
                    stor1 = 1
                    return sharesTotal
                require return_data.size >= 32
                if not mem[356]:
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 435 len 22]
                if not arg2:
                    if not wantLockedTotal:
                        revert with 0, 'SafeMath: division by zero'
                    if 0 / wantLockedTotal <= sharesTotal:
                        sharesTotal -= 0 / wantLockedTotal
                        if arg2 > wantLockedTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        wantLockedTotal -= arg2
                        if 0 > arg2:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if eth.balance(this.address) < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0x4e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[ceil32(return_data.size) + 851 len 26]
                        if not ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 745 len 64] = unknown_0xa9059cbb(?????), 0x657d0420f696aaedc48b4054, 283428678, Mask(224, 32, arg2) >> 32
                        mem[ceil32(return_data.size) + 837 len 4] = 0
                        call 0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82.0x10e4c746 with:
                             gas gas_remaining wei
                            args Mask(224, 32, arg2) << 224, mem[ceil32(return_data.size) + 809 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[ceil32(return_data.size) + 777 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        'SafeERC20: low-level call failed',
                                        mem[(2 * ceil32(return_data.size)) + 846 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 777]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 856 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                        stor1 = 1
                        return 0 / wantLockedTotal, 
                               mem[(2 * ceil32(return_data.size)) + 778 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                else:
                    if sharesTotal * arg2 / arg2 != sharesTotal:
                        revert with 0, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[ceil32(return_data.size) + 426 len 31]
                    if not wantLockedTotal:
                        revert with 0, 'SafeMath: division by zero'
                    if sharesTotal * arg2 / wantLockedTotal <= sharesTotal:
                        sharesTotal -= sharesTotal * arg2 / wantLockedTotal
                        if arg2 > wantLockedTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        wantLockedTotal -= arg2
                        if 0 > arg2:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if eth.balance(this.address) < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0x4e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[ceil32(return_data.size) + 851 len 26]
                        if not ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 745 len 64] = unknown_0xa9059cbb(?????), 0x657d0420f696aaedc48b4054, 0, Mask(224, 32, arg2) >> 32
                        mem[ceil32(return_data.size) + 809 len 0] = 0
                        call 0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82.0x10e4c746 with:
                             gas gas_remaining wei
                            args Mask(224, 32, arg2) << 224, mem[ceil32(return_data.size) + 809 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[ceil32(return_data.size) + 777 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 777]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 856 len 22]
                        stor1 = 1
                        return (sharesTotal * arg2 / wantLockedTotal)
                if sharesTotal > sharesTotal:
                    revert with 0, 'SafeMath: subtraction overflow'
                sharesTotal = 0
                if arg2 > wantLockedTotal:
                    revert with 0, 'SafeMath: subtraction overflow'
                wantLockedTotal -= arg2
                if 0 > arg2:
                    revert with 0, 'SafeMath: subtraction overflow'
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x4e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[ceil32(return_data.size) + 851 len 26]
                if not ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 745 len 64] = unknown_0xa9059cbb(?????), 0x657d0420f696aaedc48b4054, 283428678, Mask(224, 32, arg2) >> 32
                mem[ceil32(return_data.size) + 837 len 4] = 0
                call 0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82.0x10e4c746 with:
                     gas gas_remaining wei
                    args Mask(224, 32, arg2) << 224, mem[ceil32(return_data.size) + 809 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 'SafeMath: division by zero'
                mem[ceil32(return_data.size) + 777 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 
                                'SafeERC20: low-level call failed',
                                mem[(2 * ceil32(return_data.size)) + 846 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[ceil32(return_data.size) + 777]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + 856 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                stor1 = 1
                return sharesTotal, 
                       mem[(2 * ceil32(return_data.size)) + 778 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            if WITHDRAWAL_FEE * arg2 / arg2 != WITHDRAWAL_FEE:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x4e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[430 len 26]
            if not ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82):
                revert with 0, 'Address: call to non-contract'
            mem[324 len 64] = unknown_0xa9059cbb(?????), 0x2b6c058dd1751658cfdc58c6, 0, Mask(224, 32, WITHDRAWAL_FEE * arg2 / 10000) >> 32
            call 0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82.0x2421b234 with:
                 gas gas_remaining wei
                args Mask(224, 32, WITHDRAWAL_FEE * arg2 / 10000) << 224, mem[388 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 'SafeMath: division by zero'
            mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if not return_data.size:
                if not arg2:
                    if not wantLockedTotal:
                        revert with 0, 'SafeMath: division by zero'
                    if 0 / wantLockedTotal <= sharesTotal:
                        sharesTotal -= 0 / wantLockedTotal
                        if arg2 > wantLockedTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        wantLockedTotal -= arg2
                        if WITHDRAWAL_FEE * arg2 / 10000 > arg2:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if eth.balance(this.address) < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0x4e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[ceil32(return_data.size) + 851 len 26]
                        if not ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 745 len 64] = unknown_0xa9059cbb(?????), 0x657d0420f696aaedc48b4054, 283428678, Mask(224, 32, arg2 - (WITHDRAWAL_FEE * arg2 / 10000)) >> 32
                        mem[ceil32(return_data.size) + 837 len 4] = 0
                        call 0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82.0x10e4c746 with:
                             gas gas_remaining wei
                            args Mask(224, 32, arg2 - (WITHDRAWAL_FEE * arg2 / 10000)) << 224, mem[ceil32(return_data.size) + 809 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[ceil32(return_data.size) + 777 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        'SafeERC20: low-level call failed',
                                        mem[(2 * ceil32(return_data.size)) + 846 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 777]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 856 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                        stor1 = 1
                        return 0 / wantLockedTotal, 
                               mem[(2 * ceil32(return_data.size)) + 778 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if sharesTotal > sharesTotal:
                        revert with 0, 'SafeMath: subtraction overflow'
                    sharesTotal = 0
                    if arg2 > wantLockedTotal:
                        revert with 0, 'SafeMath: subtraction overflow'
                    wantLockedTotal -= arg2
                    if WITHDRAWAL_FEE * arg2 / 10000 > arg2:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x4e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[ceil32(return_data.size) + 851 len 26]
                    if not ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 745 len 64] = unknown_0xa9059cbb(?????), 0x657d0420f696aaedc48b4054, 283428678, Mask(224, 32, arg2 - (WITHDRAWAL_FEE * arg2 / 10000)) >> 32
                    mem[ceil32(return_data.size) + 837 len 4] = 0
                    call 0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82.0x10e4c746 with:
                         gas gas_remaining wei
                        args Mask(224, 32, arg2 - (WITHDRAWAL_FEE * arg2 / 10000)) << 224, mem[ceil32(return_data.size) + 809 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: division by zero'
                    mem[ceil32(return_data.size) + 777 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 
                                    'SafeERC20: low-level call failed',
                                    mem[(2 * ceil32(return_data.size)) + 846 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 777]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 856 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                    stor1 = 1
                    return sharesTotal, 
                           mem[(2 * ceil32(return_data.size)) + 778 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if sharesTotal * arg2 / arg2 != sharesTotal:
                    revert with 0, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[ceil32(return_data.size) + 426 len 31]
                if not wantLockedTotal:
                    revert with 0, 'SafeMath: division by zero'
                if sharesTotal * arg2 / wantLockedTotal <= sharesTotal:
                    sharesTotal -= sharesTotal * arg2 / wantLockedTotal
                    if arg2 > wantLockedTotal:
                        revert with 0, 'SafeMath: subtraction overflow'
                    wantLockedTotal -= arg2
                    if WITHDRAWAL_FEE * arg2 / 10000 > arg2:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x4e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[ceil32(return_data.size) + 851 len 26]
                    if not ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 745 len 64] = unknown_0xa9059cbb(?????), 0x657d0420f696aaedc48b4054, 0, Mask(224, 32, arg2 - (WITHDRAWAL_FEE * arg2 / 10000)) >> 32
                    mem[ceil32(return_data.size) + 809 len 0] = 0
                    call 0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82.0x10e4c746 with:
                         gas gas_remaining wei
                        args Mask(224, 32, arg2 - (WITHDRAWAL_FEE * arg2 / 10000)) << 224, mem[ceil32(return_data.size) + 809 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: division by zero'
                    mem[ceil32(return_data.size) + 777 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 777]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 856 len 22]
                    stor1 = 1
                    return (sharesTotal * arg2 / wantLockedTotal)
            else:
                require return_data.size >= 32
                if not mem[356]:
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 435 len 22]
                if not arg2:
                    if not wantLockedTotal:
                        revert with 0, 'SafeMath: division by zero'
                    if 0 / wantLockedTotal <= sharesTotal:
                        sharesTotal -= 0 / wantLockedTotal
                        if arg2 > wantLockedTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        wantLockedTotal -= arg2
                        if WITHDRAWAL_FEE * arg2 / 10000 > arg2:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if eth.balance(this.address) < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0x4e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[ceil32(return_data.size) + 851 len 26]
                        if not ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 745 len 64] = unknown_0xa9059cbb(?????), 0x657d0420f696aaedc48b4054, 283428678, Mask(224, 32, arg2 - (WITHDRAWAL_FEE * arg2 / 10000)) >> 32
                        mem[ceil32(return_data.size) + 837 len 4] = 0
                        call 0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82.0x10e4c746 with:
                             gas gas_remaining wei
                            args Mask(224, 32, arg2 - (WITHDRAWAL_FEE * arg2 / 10000)) << 224, mem[ceil32(return_data.size) + 809 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[ceil32(return_data.size) + 777 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        'SafeERC20: low-level call failed',
                                        mem[(2 * ceil32(return_data.size)) + 846 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 777]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 856 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                        stor1 = 1
                        return 0 / wantLockedTotal, 
                               mem[(2 * ceil32(return_data.size)) + 778 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                else:
                    if sharesTotal * arg2 / arg2 != sharesTotal:
                        revert with 0, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[ceil32(return_data.size) + 426 len 31]
                    if not wantLockedTotal:
                        revert with 0, 'SafeMath: division by zero'
                    if sharesTotal * arg2 / wantLockedTotal <= sharesTotal:
                        sharesTotal -= sharesTotal * arg2 / wantLockedTotal
                        if arg2 > wantLockedTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        wantLockedTotal -= arg2
                        if WITHDRAWAL_FEE * arg2 / 10000 > arg2:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if eth.balance(this.address) < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0x4e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[ceil32(return_data.size) + 851 len 26]
                        if not ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 745 len 64] = unknown_0xa9059cbb(?????), 0x657d0420f696aaedc48b4054, 0, Mask(224, 32, arg2 - (WITHDRAWAL_FEE * arg2 / 10000)) >> 32
                        mem[ceil32(return_data.size) + 809 len 0] = 0
                        call 0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82.0x10e4c746 with:
                             gas gas_remaining wei
                            args Mask(224, 32, arg2 - (WITHDRAWAL_FEE * arg2 / 10000)) << 224, mem[ceil32(return_data.size) + 809 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[ceil32(return_data.size) + 777 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 777]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 856 len 22]
                        stor1 = 1
                        return (sharesTotal * arg2 / wantLockedTotal)
            if sharesTotal > sharesTotal:
                revert with 0, 'SafeMath: subtraction overflow'
            sharesTotal = 0
            if arg2 > wantLockedTotal:
                revert with 0, 'SafeMath: subtraction overflow'
            wantLockedTotal -= arg2
            if WITHDRAWAL_FEE * arg2 / 10000 > arg2:
                revert with 0, 'SafeMath: subtraction overflow'
            if eth.balance(this.address) < 0:
                revert with 0, 
                            32,
                            38,
                            0x4e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                            mem[ceil32(return_data.size) + 851 len 26]
            if not ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82):
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 745 len 64] = unknown_0xa9059cbb(?????), 0x657d0420f696aaedc48b4054, 0, Mask(224, 32, arg2 - (WITHDRAWAL_FEE * arg2 / 10000)) >> 32
            mem[ceil32(return_data.size) + 809 len 0] = 0
            call 0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82.0x10e4c746 with:
                 gas gas_remaining wei
                args Mask(224, 32, arg2 - (WITHDRAWAL_FEE * arg2 / 10000)) << 224, mem[ceil32(return_data.size) + 809 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 'SafeMath: division by zero'
            mem[ceil32(return_data.size) + 777 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[ceil32(return_data.size) + 777]:
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(2 * ceil32(return_data.size)) + 856 len 22]
            stor1 = 1
            return sharesTotal
        if not wantLockedTotal:
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x4e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[430 len 26]
            if not ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82):
                revert with 0, 'Address: call to non-contract'
            mem[324 len 64] = unknown_0xa9059cbb(?????), 0x2b6c058dd1751658cfdc58c6, 0, 0
            call 0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82.0x2421b234 with:
                 gas gas_remaining wei
                args 0, mem[388 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 'SafeMath: division by zero'
            mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if not return_data.size:
                if not wantLockedTotal:
                    revert with 0, 'SafeMath: division by zero'
                if sharesTotal * wantLockedTotal / wantLockedTotal != sharesTotal:
                    revert with 0, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[ceil32(return_data.size) + 426 len 31]
                if not wantLockedTotal:
                    revert with 0, 'SafeMath: division by zero'
                if sharesTotal * wantLockedTotal / wantLockedTotal <= sharesTotal:
                    sharesTotal -= sharesTotal * wantLockedTotal / wantLockedTotal
                    if wantLockedTotal > wantLockedTotal:
                        revert with 0, 'SafeMath: subtraction overflow'
                    wantLockedTotal = 0
                    if 0 > wantLockedTotal:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x4e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[ceil32(return_data.size) + 851 len 26]
                    if not ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 745 len 64] = unknown_0xa9059cbb(?????), 0x657d0420f696aaedc48b4054, 0, Mask(224, 0, stor7.field_32)
                    mem[ceil32(return_data.size) + 809 len 0] = 0
                    call 0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82.0x10e4c746 with:
                         gas gas_remaining wei
                        args Mask(480, 0, stor7.field_0), mem[ceil32(return_data.size) + 809 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: division by zero'
                    mem[ceil32(return_data.size) + 777 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 777]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 856 len 22]
                    stor1 = 1
                    return (sharesTotal * wantLockedTotal / wantLockedTotal)
            else:
                require return_data.size >= 32
                if not mem[356]:
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 435 len 22]
                if not wantLockedTotal:
                    revert with 0, 'SafeMath: division by zero'
                if sharesTotal * wantLockedTotal / wantLockedTotal != sharesTotal:
                    revert with 0, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[ceil32(return_data.size) + 426 len 31]
                if not wantLockedTotal:
                    revert with 0, 'SafeMath: division by zero'
                if sharesTotal * wantLockedTotal / wantLockedTotal <= sharesTotal:
                    sharesTotal -= sharesTotal * wantLockedTotal / wantLockedTotal
                    if wantLockedTotal > wantLockedTotal:
                        revert with 0, 'SafeMath: subtraction overflow'
                    wantLockedTotal = 0
                    if 0 > wantLockedTotal:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x4e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[ceil32(return_data.size) + 851 len 26]
                    if not ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 745 len 64] = unknown_0xa9059cbb(?????), 0x657d0420f696aaedc48b4054, 283428678, Mask(224, 0, stor7.field_32)
                    mem[ceil32(return_data.size) + 837 len 4] = 0
                    call 0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82.0x10e4c746 with:
                         gas gas_remaining wei
                        args Mask(480, 0, stor7.field_0), mem[ceil32(return_data.size) + 809 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: division by zero'
                    mem[ceil32(return_data.size) + 777 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 
                                    'SafeERC20: low-level call failed',
                                    mem[(2 * ceil32(return_data.size)) + 846 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 777]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 856 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                    stor1 = 1
                    return sharesTotal * wantLockedTotal / wantLockedTotal, 
                           mem[(2 * ceil32(return_data.size)) + 778 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            ('gt', ('div', ('mul', ('stor', ('name', 'sharesTotal', 8)), ('stor', ('name', 'wantLockedTotal', 7))), ('stor', ('name', 'wantLockedTotal', 7))), ('stor', ('name', 'sharesTotal', 8)))
            if sharesTotal > sharesTotal:
                revert with 0, 'SafeMath: subtraction overflow'
            sharesTotal = 0
            if wantLockedTotal > wantLockedTotal:
                revert with 0, 'SafeMath: subtraction overflow'
            wantLockedTotal = 0
            if 0 > wantLockedTotal:
                revert with 0, 'SafeMath: subtraction overflow'
            if eth.balance(this.address) < 0:
                revert with 0, 
                            32,
                            38,
                            0x4e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                            mem[ceil32(return_data.size) + 851 len 26]
            if not ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82):
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 745 len 64] = unknown_0xa9059cbb(?????), 0x657d0420f696aaedc48b4054, 283428678, Mask(224, 0, stor7.field_32)
            mem[ceil32(return_data.size) + 837 len 4] = 0
            call 0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82.0x10e4c746 with:
                 gas gas_remaining wei
                args Mask(480, 0, stor7.field_0), mem[ceil32(return_data.size) + 809 len 4]
        else:
            if WITHDRAWAL_FEE * wantLockedTotal / wantLockedTotal != WITHDRAWAL_FEE:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x4e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[430 len 26]
            if not ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82):
                revert with 0, 'Address: call to non-contract'
            mem[324 len 64] = unknown_0xa9059cbb(?????), 0x2b6c058dd1751658cfdc58c6, 0, Mask(224, 32, WITHDRAWAL_FEE * wantLockedTotal / 10000) >> 32
            call 0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82.0x2421b234 with:
                 gas gas_remaining wei
                args Mask(224, 32, WITHDRAWAL_FEE * wantLockedTotal / 10000) << 224, mem[388 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 'SafeMath: division by zero'
            mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if not return_data.size:
                if not wantLockedTotal:
                    revert with 0, 'SafeMath: division by zero'
                if sharesTotal * wantLockedTotal / wantLockedTotal != sharesTotal:
                    revert with 0, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[ceil32(return_data.size) + 426 len 31]
                if not wantLockedTotal:
                    revert with 0, 'SafeMath: division by zero'
                if sharesTotal * wantLockedTotal / wantLockedTotal <= sharesTotal:
                    sharesTotal -= sharesTotal * wantLockedTotal / wantLockedTotal
                    if wantLockedTotal > wantLockedTotal:
                        revert with 0, 'SafeMath: subtraction overflow'
                    wantLockedTotal = 0
                    if WITHDRAWAL_FEE * wantLockedTotal / 10000 > wantLockedTotal:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x4e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[ceil32(return_data.size) + 851 len 26]
                    if not ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 745 len 64] = unknown_0xa9059cbb(?????), 0x657d0420f696aaedc48b4054, 0, Mask(224, 32, wantLockedTotal - (WITHDRAWAL_FEE * wantLockedTotal / 10000)) >> 32
                    mem[ceil32(return_data.size) + 809 len 0] = 0
                    call 0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82.0x10e4c746 with:
                         gas gas_remaining wei
                        args Mask(224, 32, wantLockedTotal - (WITHDRAWAL_FEE * wantLockedTotal / 10000)) << 224, mem[ceil32(return_data.size) + 809 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: division by zero'
                    mem[ceil32(return_data.size) + 777 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 777]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 856 len 22]
                    stor1 = 1
                    return (sharesTotal * wantLockedTotal / wantLockedTotal)
            else:
                require return_data.size >= 32
                if not mem[356]:
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 435 len 22]
                if not wantLockedTotal:
                    revert with 0, 'SafeMath: division by zero'
                if sharesTotal * wantLockedTotal / wantLockedTotal != sharesTotal:
                    revert with 0, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[ceil32(return_data.size) + 426 len 31]
                if not wantLockedTotal:
                    revert with 0, 'SafeMath: division by zero'
                if sharesTotal * wantLockedTotal / wantLockedTotal <= sharesTotal:
                    sharesTotal -= sharesTotal * wantLockedTotal / wantLockedTotal
                    if wantLockedTotal > wantLockedTotal:
                        revert with 0, 'SafeMath: subtraction overflow'
                    wantLockedTotal = 0
                    if WITHDRAWAL_FEE * wantLockedTotal / 10000 > wantLockedTotal:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x4e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[ceil32(return_data.size) + 851 len 26]
                    if not ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 745 len 64] = unknown_0xa9059cbb(?????), 0x657d0420f696aaedc48b4054, 283428678, Mask(224, 32, wantLockedTotal - (WITHDRAWAL_FEE * wantLockedTotal / 10000)) >> 32
                    mem[ceil32(return_data.size) + 837 len 4] = 0
                    call 0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82.0x10e4c746 with:
                         gas gas_remaining wei
                        args Mask(224, 32, wantLockedTotal - (WITHDRAWAL_FEE * wantLockedTotal / 10000)) << 224, mem[ceil32(return_data.size) + 809 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: division by zero'
                    mem[ceil32(return_data.size) + 777 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 
                                    'SafeERC20: low-level call failed',
                                    mem[(2 * ceil32(return_data.size)) + 846 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 777]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 856 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                    stor1 = 1
                    return sharesTotal * wantLockedTotal / wantLockedTotal, 
                           mem[(2 * ceil32(return_data.size)) + 778 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            ('gt', ('div', ('mul', ('stor', ('name', 'sharesTotal', 8)), ('stor', ('name', 'wantLockedTotal', 7))), ('stor', ('name', 'wantLockedTotal', 7))), ('stor', ('name', 'sharesTotal', 8)))
            if sharesTotal > sharesTotal:
                revert with 0, 'SafeMath: subtraction overflow'
            sharesTotal = 0
            if wantLockedTotal > wantLockedTotal:
                revert with 0, 'SafeMath: subtraction overflow'
            wantLockedTotal = 0
            if WITHDRAWAL_FEE * wantLockedTotal / 10000 > wantLockedTotal:
                revert with 0, 'SafeMath: subtraction overflow'
            if eth.balance(this.address) < 0:
                revert with 0, 
                            32,
                            38,
                            0x4e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                            mem[ceil32(return_data.size) + 851 len 26]
            if not ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82):
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 745 len 64] = unknown_0xa9059cbb(?????), 0x657d0420f696aaedc48b4054, 283428678, Mask(224, 32, wantLockedTotal - (WITHDRAWAL_FEE * wantLockedTotal / 10000)) >> 32
            mem[ceil32(return_data.size) + 837 len 4] = 0
            call 0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82.0x10e4c746 with:
                 gas gas_remaining wei
                args Mask(224, 32, wantLockedTotal - (WITHDRAWAL_FEE * wantLockedTotal / 10000)) << 224, mem[ceil32(return_data.size) + 809 len 4]
    else:
        if wantLockedTotal >= ext_call.return_data[0]:
            if not ext_call.return_data[0]:
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x4e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[430 len 26]
                if not ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82):
                    revert with 0, 'Address: call to non-contract'
                mem[324 len 64] = unknown_0xa9059cbb(?????), 0x2b6c058dd1751658cfdc58c6, 0, 0
                call 0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82.0x2421b234 with:
                     gas gas_remaining wei
                    args 0, mem[388 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 'SafeMath: division by zero'
                mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if not return_data.size:
                    if not ext_call.return_data[0]:
                        if not wantLockedTotal:
                            revert with 0, 'SafeMath: division by zero'
                        if 0 / wantLockedTotal <= sharesTotal:
                            sharesTotal -= 0 / wantLockedTotal
                            if ext_call.return_data[0] > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal -= ext_call.return_data[0]
                            if 0 > ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if eth.balance(this.address) < 0:
                                revert with 0, 
                                            32,
                                            38,
                                            0x4e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                            mem[ceil32(return_data.size) + 851 len 26]
                            if not ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 745 len 64] = unknown_0xa9059cbb(?????), 0x657d0420f696aaedc48b4054, 283428678, ext_call.return_data[0 len 28]
                            mem[ceil32(return_data.size) + 837 len 4] = 0
                            call 0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82.0x10e4c746 with:
                                 gas gas_remaining wei
                                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[ceil32(return_data.size) + 809 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
                            mem[ceil32(return_data.size) + 777 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            'SafeERC20: low-level call failed',
                                            mem[(2 * ceil32(return_data.size)) + 846 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[ceil32(return_data.size) + 777]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 856 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                            stor1 = 1
                            return 0 / wantLockedTotal, 
                                   mem[(2 * ceil32(return_data.size)) + 778 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    else:
                        if sharesTotal * ext_call.return_data[0] / ext_call.return_data[0] != sharesTotal:
                            revert with 0, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[ceil32(return_data.size) + 426 len 31]
                        if not wantLockedTotal:
                            revert with 0, 'SafeMath: division by zero'
                        if sharesTotal * ext_call.return_data[0] / wantLockedTotal <= sharesTotal:
                            sharesTotal -= sharesTotal * ext_call.return_data[0] / wantLockedTotal
                            if ext_call.return_data[0] > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal -= ext_call.return_data[0]
                            if 0 > ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if eth.balance(this.address) < 0:
                                revert with 0, 
                                            32,
                                            38,
                                            0x4e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                            mem[ceil32(return_data.size) + 851 len 26]
                            if not ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 745 len 64] = unknown_0xa9059cbb(?????), 0x657d0420f696aaedc48b4054, 283428678, ext_call.return_data[0 len 28]
                            mem[ceil32(return_data.size) + 837 len 4] = 0
                            call 0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82.0x10e4c746 with:
                                 gas gas_remaining wei
                                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[ceil32(return_data.size) + 809 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
                            mem[ceil32(return_data.size) + 777 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            'SafeERC20: low-level call failed',
                                            mem[(2 * ceil32(return_data.size)) + 846 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[ceil32(return_data.size) + 777]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 856 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                            stor1 = 1
                            return sharesTotal * ext_call.return_data[0] / wantLockedTotal, 
                                   mem[(2 * ceil32(return_data.size)) + 778 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if sharesTotal > sharesTotal:
                        revert with 0, 'SafeMath: subtraction overflow'
                    sharesTotal = 0
                    if ext_call.return_data[0] > wantLockedTotal:
                        revert with 0, 'SafeMath: subtraction overflow'
                    wantLockedTotal -= ext_call.return_data[0]
                    if 0 > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x4e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[ceil32(return_data.size) + 851 len 26]
                    if not ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 745 len 64] = unknown_0xa9059cbb(?????), 0x657d0420f696aaedc48b4054, 0, ext_call.return_data[0 len 28]
                    mem[ceil32(return_data.size) + 809 len 0] = 0
                    call 0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82.0x10e4c746 with:
                         gas gas_remaining wei
                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[ceil32(return_data.size) + 809 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: division by zero'
                    mem[ceil32(return_data.size) + 777 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 777]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 856 len 22]
                    stor1 = 1
                    return sharesTotal
                require return_data.size >= 32
                if not mem[356]:
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 435 len 22]
                if not ext_call.return_data[0]:
                    if not wantLockedTotal:
                        revert with 0, 'SafeMath: division by zero'
                    if 0 / wantLockedTotal <= sharesTotal:
                        sharesTotal -= 0 / wantLockedTotal
                        if ext_call.return_data[0] > wantLockedTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        wantLockedTotal -= ext_call.return_data[0]
                        if 0 > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if eth.balance(this.address) < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0x4e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[ceil32(return_data.size) + 851 len 26]
                        if not ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 745 len 64] = unknown_0xa9059cbb(?????), 0x657d0420f696aaedc48b4054, 0, ext_call.return_data[0 len 28]
                        mem[ceil32(return_data.size) + 809 len 0] = 0
                        call 0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82.0x10e4c746 with:
                             gas gas_remaining wei
                            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[ceil32(return_data.size) + 809 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[ceil32(return_data.size) + 777 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 777]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 856 len 22]
                        stor1 = 1
                        return (0 / wantLockedTotal)
                else:
                    if sharesTotal * ext_call.return_data[0] / ext_call.return_data[0] != sharesTotal:
                        revert with 0, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[ceil32(return_data.size) + 426 len 31]
                    if not wantLockedTotal:
                        revert with 0, 'SafeMath: division by zero'
                    if sharesTotal * ext_call.return_data[0] / wantLockedTotal <= sharesTotal:
                        sharesTotal -= sharesTotal * ext_call.return_data[0] / wantLockedTotal
                        if ext_call.return_data[0] > wantLockedTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        wantLockedTotal -= ext_call.return_data[0]
                        if 0 > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if eth.balance(this.address) < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0x4e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[ceil32(return_data.size) + 851 len 26]
                        if not ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 745 len 64] = unknown_0xa9059cbb(?????), 0x657d0420f696aaedc48b4054, 283428678, ext_call.return_data[0 len 28]
                        mem[ceil32(return_data.size) + 837 len 4] = 0
                        call 0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82.0x10e4c746 with:
                             gas gas_remaining wei
                            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[ceil32(return_data.size) + 809 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[ceil32(return_data.size) + 777 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        'SafeERC20: low-level call failed',
                                        mem[(2 * ceil32(return_data.size)) + 846 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 777]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 856 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                        stor1 = 1
                        return sharesTotal * ext_call.return_data[0] / wantLockedTotal, 
                               mem[(2 * ceil32(return_data.size)) + 778 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if sharesTotal > sharesTotal:
                    revert with 0, 'SafeMath: subtraction overflow'
                sharesTotal = 0
                if ext_call.return_data[0] > wantLockedTotal:
                    revert with 0, 'SafeMath: subtraction overflow'
                wantLockedTotal -= ext_call.return_data[0]
                if 0 > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x4e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[ceil32(return_data.size) + 851 len 26]
                if not ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 745 len 64] = unknown_0xa9059cbb(?????), 0x657d0420f696aaedc48b4054, 283428678, ext_call.return_data[0 len 28]
                mem[ceil32(return_data.size) + 837 len 4] = 0
                call 0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82.0x10e4c746 with:
                     gas gas_remaining wei
                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[ceil32(return_data.size) + 809 len 4]
            else:
                if WITHDRAWAL_FEE * ext_call.return_data[0] / ext_call.return_data[0] != WITHDRAWAL_FEE:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x4e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[430 len 26]
                if not ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82):
                    revert with 0, 'Address: call to non-contract'
                mem[324 len 64] = unknown_0xa9059cbb(?????), 0x2b6c058dd1751658cfdc58c6, 0, Mask(224, 32, WITHDRAWAL_FEE * ext_call.return_data[0] / 10000) >> 32
                call 0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82.0x2421b234 with:
                     gas gas_remaining wei
                    args Mask(224, 32, WITHDRAWAL_FEE * ext_call.return_data[0] / 10000) << 224, mem[388 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 'SafeMath: division by zero'
                mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if not return_data.size:
                    if not ext_call.return_data[0]:
                        if not wantLockedTotal:
                            revert with 0, 'SafeMath: division by zero'
                        if 0 / wantLockedTotal <= sharesTotal:
                            sharesTotal -= 0 / wantLockedTotal
                            if ext_call.return_data[0] > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal -= ext_call.return_data[0]
                            if WITHDRAWAL_FEE * ext_call.return_data[0] / 10000 > ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if eth.balance(this.address) < 0:
                                revert with 0, 
                                            32,
                                            38,
                                            0x4e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                            mem[ceil32(return_data.size) + 851 len 26]
                            if not ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 745 len 64] = unknown_0xa9059cbb(?????), 0x657d0420f696aaedc48b4054, 0, Mask(224, 32, ext_call.return_data[0] - (WITHDRAWAL_FEE * ext_call.return_data[0] / 10000)) >> 32
                            mem[ceil32(return_data.size) + 809 len 0] = 0
                            call 0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82.0x10e4c746 with:
                                 gas gas_remaining wei
                                args Mask(224, 32, ext_call.return_data[0] - (WITHDRAWAL_FEE * ext_call.return_data[0] / 10000)) << 224, mem[ceil32(return_data.size) + 809 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
                            mem[ceil32(return_data.size) + 777 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[ceil32(return_data.size) + 777]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 856 len 22]
                            stor1 = 1
                            return (0 / wantLockedTotal)
                        if sharesTotal > sharesTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        sharesTotal = 0
                        if ext_call.return_data[0] > wantLockedTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        wantLockedTotal -= ext_call.return_data[0]
                        if WITHDRAWAL_FEE * ext_call.return_data[0] / 10000 > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if eth.balance(this.address) < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0x4e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[ceil32(return_data.size) + 851 len 26]
                        if not ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 745 len 64] = unknown_0xa9059cbb(?????), 0x657d0420f696aaedc48b4054, 283428678, Mask(224, 32, ext_call.return_data[0] - (WITHDRAWAL_FEE * ext_call.return_data[0] / 10000)) >> 32
                        mem[ceil32(return_data.size) + 837 len 4] = 0
                        call 0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82.0x10e4c746 with:
                             gas gas_remaining wei
                            args Mask(224, 32, ext_call.return_data[0] - (WITHDRAWAL_FEE * ext_call.return_data[0] / 10000)) << 224, mem[ceil32(return_data.size) + 809 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[ceil32(return_data.size) + 777 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        'SafeERC20: low-level call failed',
                                        mem[(2 * ceil32(return_data.size)) + 846 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 777]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 856 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                        stor1 = 1
                        return sharesTotal, 
                               mem[(2 * ceil32(return_data.size)) + 778 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if sharesTotal * ext_call.return_data[0] / ext_call.return_data[0] != sharesTotal:
                        revert with 0, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[ceil32(return_data.size) + 426 len 31]
                    if not wantLockedTotal:
                        revert with 0, 'SafeMath: division by zero'
                    if sharesTotal * ext_call.return_data[0] / wantLockedTotal <= sharesTotal:
                        sharesTotal -= sharesTotal * ext_call.return_data[0] / wantLockedTotal
                        if ext_call.return_data[0] > wantLockedTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        wantLockedTotal -= ext_call.return_data[0]
                        if WITHDRAWAL_FEE * ext_call.return_data[0] / 10000 > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if eth.balance(this.address) < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0x4e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[ceil32(return_data.size) + 851 len 26]
                        if not ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 745 len 64] = unknown_0xa9059cbb(?????), 0x657d0420f696aaedc48b4054, 283428678, Mask(224, 32, ext_call.return_data[0] - (WITHDRAWAL_FEE * ext_call.return_data[0] / 10000)) >> 32
                        mem[ceil32(return_data.size) + 837 len 4] = 0
                        call 0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82.0x10e4c746 with:
                             gas gas_remaining wei
                            args Mask(224, 32, ext_call.return_data[0] - (WITHDRAWAL_FEE * ext_call.return_data[0] / 10000)) << 224, mem[ceil32(return_data.size) + 809 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[ceil32(return_data.size) + 777 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        'SafeERC20: low-level call failed',
                                        mem[(2 * ceil32(return_data.size)) + 846 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 777]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 856 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                        stor1 = 1
                        return sharesTotal * ext_call.return_data[0] / wantLockedTotal, 
                               mem[(2 * ceil32(return_data.size)) + 778 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if sharesTotal > sharesTotal:
                        revert with 0, 'SafeMath: subtraction overflow'
                    sharesTotal = 0
                    if ext_call.return_data[0] > wantLockedTotal:
                        revert with 0, 'SafeMath: subtraction overflow'
                    wantLockedTotal -= ext_call.return_data[0]
                    if WITHDRAWAL_FEE * ext_call.return_data[0] / 10000 > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x4e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[ceil32(return_data.size) + 851 len 26]
                    if not ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 745 len 64] = unknown_0xa9059cbb(?????), 0x657d0420f696aaedc48b4054, 0, Mask(224, 32, ext_call.return_data[0] - (WITHDRAWAL_FEE * ext_call.return_data[0] / 10000)) >> 32
                    mem[ceil32(return_data.size) + 809 len 0] = 0
                    call 0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82.0x10e4c746 with:
                         gas gas_remaining wei
                        args Mask(224, 32, ext_call.return_data[0] - (WITHDRAWAL_FEE * ext_call.return_data[0] / 10000)) << 224, mem[ceil32(return_data.size) + 809 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: division by zero'
                    mem[ceil32(return_data.size) + 777 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 777]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 856 len 22]
                    stor1 = 1
                    return sharesTotal
                require return_data.size >= 32
                if not mem[356]:
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 435 len 22]
                if not ext_call.return_data[0]:
                    if not wantLockedTotal:
                        revert with 0, 'SafeMath: division by zero'
                    if 0 / wantLockedTotal <= sharesTotal:
                        sharesTotal -= 0 / wantLockedTotal
                        if ext_call.return_data[0] > wantLockedTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        wantLockedTotal -= ext_call.return_data[0]
                        if WITHDRAWAL_FEE * ext_call.return_data[0] / 10000 > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if eth.balance(this.address) < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0x4e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[ceil32(return_data.size) + 851 len 26]
                        if not ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 745 len 64] = unknown_0xa9059cbb(?????), 0x657d0420f696aaedc48b4054, 0, Mask(224, 32, ext_call.return_data[0] - (WITHDRAWAL_FEE * ext_call.return_data[0] / 10000)) >> 32
                        mem[ceil32(return_data.size) + 809 len 0] = 0
                        call 0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82.0x10e4c746 with:
                             gas gas_remaining wei
                            args Mask(224, 32, ext_call.return_data[0] - (WITHDRAWAL_FEE * ext_call.return_data[0] / 10000)) << 224, mem[ceil32(return_data.size) + 809 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[ceil32(return_data.size) + 777 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 777]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 856 len 22]
                        stor1 = 1
                        return (0 / wantLockedTotal)
                else:
                    if sharesTotal * ext_call.return_data[0] / ext_call.return_data[0] != sharesTotal:
                        revert with 0, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[ceil32(return_data.size) + 426 len 31]
                    if not wantLockedTotal:
                        revert with 0, 'SafeMath: division by zero'
                    if sharesTotal * ext_call.return_data[0] / wantLockedTotal <= sharesTotal:
                        sharesTotal -= sharesTotal * ext_call.return_data[0] / wantLockedTotal
                        if ext_call.return_data[0] > wantLockedTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        wantLockedTotal -= ext_call.return_data[0]
                        if WITHDRAWAL_FEE * ext_call.return_data[0] / 10000 > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if eth.balance(this.address) < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0x4e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[ceil32(return_data.size) + 851 len 26]
                        if not ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 745 len 64] = unknown_0xa9059cbb(?????), 0x657d0420f696aaedc48b4054, 283428678, Mask(224, 32, ext_call.return_data[0] - (WITHDRAWAL_FEE * ext_call.return_data[0] / 10000)) >> 32
                        mem[ceil32(return_data.size) + 837 len 4] = 0
                        call 0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82.0x10e4c746 with:
                             gas gas_remaining wei
                            args Mask(224, 32, ext_call.return_data[0] - (WITHDRAWAL_FEE * ext_call.return_data[0] / 10000)) << 224, mem[ceil32(return_data.size) + 809 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[ceil32(return_data.size) + 777 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        'SafeERC20: low-level call failed',
                                        mem[(2 * ceil32(return_data.size)) + 846 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 777]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 856 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                        stor1 = 1
                        return sharesTotal * ext_call.return_data[0] / wantLockedTotal, 
                               mem[(2 * ceil32(return_data.size)) + 778 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if sharesTotal > sharesTotal:
                    revert with 0, 'SafeMath: subtraction overflow'
                sharesTotal = 0
                if ext_call.return_data[0] > wantLockedTotal:
                    revert with 0, 'SafeMath: subtraction overflow'
                wantLockedTotal -= ext_call.return_data[0]
                if WITHDRAWAL_FEE * ext_call.return_data[0] / 10000 > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x4e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[ceil32(return_data.size) + 851 len 26]
                if not ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 745 len 64] = unknown_0xa9059cbb(?????), 0x657d0420f696aaedc48b4054, 283428678, Mask(224, 32, ext_call.return_data[0] - (WITHDRAWAL_FEE * ext_call.return_data[0] / 10000)) >> 32
                mem[ceil32(return_data.size) + 837 len 4] = 0
                call 0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82.0x10e4c746 with:
                     gas gas_remaining wei
                    args Mask(224, 32, ext_call.return_data[0] - (WITHDRAWAL_FEE * ext_call.return_data[0] / 10000)) << 224, mem[ceil32(return_data.size) + 809 len 4]
        else:
            if not wantLockedTotal:
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x4e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[430 len 26]
                if not ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82):
                    revert with 0, 'Address: call to non-contract'
                mem[324 len 64] = unknown_0xa9059cbb(?????), 0x2b6c058dd1751658cfdc58c6, 0, 0
                call 0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82.0x2421b234 with:
                     gas gas_remaining wei
                    args 0, mem[388 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 'SafeMath: division by zero'
                mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if not return_data.size:
                    if not wantLockedTotal:
                        revert with 0, 'SafeMath: division by zero'
                    if sharesTotal * wantLockedTotal / wantLockedTotal != sharesTotal:
                        revert with 0, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[ceil32(return_data.size) + 426 len 31]
                    if not wantLockedTotal:
                        revert with 0, 'SafeMath: division by zero'
                    if sharesTotal * wantLockedTotal / wantLockedTotal <= sharesTotal:
                        sharesTotal -= sharesTotal * wantLockedTotal / wantLockedTotal
                        if wantLockedTotal > wantLockedTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        wantLockedTotal = 0
                        if 0 > wantLockedTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if eth.balance(this.address) < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0x4e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[ceil32(return_data.size) + 851 len 26]
                        if not ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 745 len 64] = unknown_0xa9059cbb(?????), 0x657d0420f696aaedc48b4054, 283428678, Mask(224, 0, stor7.field_32)
                        mem[ceil32(return_data.size) + 837 len 4] = 0
                        call 0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82.0x10e4c746 with:
                             gas gas_remaining wei
                            args Mask(480, 0, stor7.field_0), mem[ceil32(return_data.size) + 809 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[ceil32(return_data.size) + 777 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        'SafeERC20: low-level call failed',
                                        mem[(2 * ceil32(return_data.size)) + 846 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 777]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 856 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                        stor1 = 1
                        return sharesTotal * wantLockedTotal / wantLockedTotal, 
                               mem[(2 * ceil32(return_data.size)) + 778 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                else:
                    require return_data.size >= 32
                    if not mem[356]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 435 len 22]
                    if not wantLockedTotal:
                        revert with 0, 'SafeMath: division by zero'
                    if sharesTotal * wantLockedTotal / wantLockedTotal != sharesTotal:
                        revert with 0, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[ceil32(return_data.size) + 426 len 31]
                    if not wantLockedTotal:
                        revert with 0, 'SafeMath: division by zero'
                    if sharesTotal * wantLockedTotal / wantLockedTotal <= sharesTotal:
                        sharesTotal -= sharesTotal * wantLockedTotal / wantLockedTotal
                        if wantLockedTotal > wantLockedTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        wantLockedTotal = 0
                        if 0 > wantLockedTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if eth.balance(this.address) < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0x4e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[ceil32(return_data.size) + 851 len 26]
                        if not ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 745 len 64] = unknown_0xa9059cbb(?????), 0x657d0420f696aaedc48b4054, 0, Mask(224, 0, stor7.field_32)
                        mem[ceil32(return_data.size) + 809 len 0] = 0
                        call 0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82.0x10e4c746 with:
                             gas gas_remaining wei
                            args Mask(480, 0, stor7.field_0), mem[ceil32(return_data.size) + 809 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[ceil32(return_data.size) + 777 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 777]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 856 len 22]
                        stor1 = 1
                        return (sharesTotal * wantLockedTotal / wantLockedTotal)
                ('gt', ('div', ('mul', ('stor', ('name', 'sharesTotal', 8)), ('stor', ('name', 'wantLockedTotal', 7))), ('stor', ('name', 'wantLockedTotal', 7))), ('stor', ('name', 'sharesTotal', 8)))
                if sharesTotal > sharesTotal:
                    revert with 0, 'SafeMath: subtraction overflow'
                sharesTotal = 0
                if wantLockedTotal > wantLockedTotal:
                    revert with 0, 'SafeMath: subtraction overflow'
                wantLockedTotal = 0
                if 0 > wantLockedTotal:
                    revert with 0, 'SafeMath: subtraction overflow'
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x4e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[ceil32(return_data.size) + 851 len 26]
                if not ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 745 len 64] = unknown_0xa9059cbb(?????), 0x657d0420f696aaedc48b4054, 0, Mask(224, 0, stor7.field_32)
                mem[ceil32(return_data.size) + 809 len 0] = 0
                call 0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82.0x10e4c746 with:
                     gas gas_remaining wei
                    args Mask(480, 0, stor7.field_0), mem[ceil32(return_data.size) + 809 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 'SafeMath: division by zero'
                mem[ceil32(return_data.size) + 777 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[ceil32(return_data.size) + 777]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + 856 len 22]
                stor1 = 1
                return sharesTotal
            if WITHDRAWAL_FEE * wantLockedTotal / wantLockedTotal != WITHDRAWAL_FEE:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x4e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[430 len 26]
            if not ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82):
                revert with 0, 'Address: call to non-contract'
            mem[324 len 64] = unknown_0xa9059cbb(?????), 0x2b6c058dd1751658cfdc58c6, 0, Mask(224, 32, WITHDRAWAL_FEE * wantLockedTotal / 10000) >> 32
            call 0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82.0x2421b234 with:
                 gas gas_remaining wei
                args Mask(224, 32, WITHDRAWAL_FEE * wantLockedTotal / 10000) << 224, mem[388 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 'SafeMath: division by zero'
            mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[356]:
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 435 len 22]
            if not wantLockedTotal:
                revert with 0, 'SafeMath: division by zero'
            if sharesTotal * wantLockedTotal / wantLockedTotal != sharesTotal:
                revert with 0, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[ceil32(return_data.size) + 426 len 31]
            if not wantLockedTotal:
                revert with 0, 'SafeMath: division by zero'
            if sharesTotal * wantLockedTotal / wantLockedTotal <= sharesTotal:
                sharesTotal -= sharesTotal * wantLockedTotal / wantLockedTotal
                if wantLockedTotal > wantLockedTotal:
                    revert with 0, 'SafeMath: subtraction overflow'
                wantLockedTotal = 0
                if WITHDRAWAL_FEE * wantLockedTotal / 10000 > wantLockedTotal:
                    revert with 0, 'SafeMath: subtraction overflow'
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x4e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[ceil32(return_data.size) + 851 len 26]
                if not ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 745 len 64] = unknown_0xa9059cbb(?????), 0x657d0420f696aaedc48b4054, 0, Mask(224, 32, wantLockedTotal - (WITHDRAWAL_FEE * wantLockedTotal / 10000)) >> 32
                mem[ceil32(return_data.size) + 809 len 0] = 0
                call 0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82.0x10e4c746 with:
                     gas gas_remaining wei
                    args Mask(224, 32, wantLockedTotal - (WITHDRAWAL_FEE * wantLockedTotal / 10000)) << 224, mem[ceil32(return_data.size) + 809 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 'SafeMath: division by zero'
                mem[ceil32(return_data.size) + 777 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[ceil32(return_data.size) + 777]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + 856 len 22]
                stor1 = 1
                return (sharesTotal * wantLockedTotal / wantLockedTotal)
            if sharesTotal > sharesTotal:
                revert with 0, 'SafeMath: subtraction overflow'
            sharesTotal = 0
            if wantLockedTotal > wantLockedTotal:
                revert with 0, 'SafeMath: subtraction overflow'
            wantLockedTotal = 0
            if WITHDRAWAL_FEE * wantLockedTotal / 10000 > wantLockedTotal:
                revert with 0, 'SafeMath: subtraction overflow'
            if eth.balance(this.address) < 0:
                revert with 0, 
                            32,
                            38,
                            0x4e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                            mem[ceil32(return_data.size) + 851 len 26]
            if not ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82):
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 745 len 64] = unknown_0xa9059cbb(?????), 0x657d0420f696aaedc48b4054, 283428678, Mask(224, 32, wantLockedTotal - (WITHDRAWAL_FEE * wantLockedTotal / 10000)) >> 32
            mem[ceil32(return_data.size) + 837 len 4] = 0
            call 0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82.0x10e4c746 with:
                 gas gas_remaining wei
                args Mask(224, 32, wantLockedTotal - (WITHDRAWAL_FEE * wantLockedTotal / 10000)) << 224, mem[ceil32(return_data.size) + 809 len 4]
    if not return_data.size:
        require not ext_call.success
        revert with 'SafeMath: division by zero'
    mem[ceil32(return_data.size) + 777 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        if return_data.size:
            revert with ext_call.return_data[0 len return_data.size]
        revert with 0, 
                    'SafeERC20: low-level call failed',
                    mem[(2 * ceil32(return_data.size)) + 846 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
    if return_data.size:
        require return_data.size >= 32
        if not mem[ceil32(return_data.size) + 777]:
            revert with 0, 
                        32,
                        42,
                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[(2 * ceil32(return_data.size)) + 856 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
    stor1 = 1
    return sharesTotal, 
           mem[(2 * ceil32(return_data.size)) + 778 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
}



}
