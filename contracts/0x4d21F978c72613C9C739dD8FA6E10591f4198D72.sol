contract main {




// =====================  Runtime code  =====================


const takerFeeBase = 100000


address owner;
address liquidtyAddr;
address stakeAddr;
uint32 takerFeeRate; offset 160
address feeAddr;
uint256 makerFixedFee;
uint8 stor5;
mapping of struct bidTakerAmount;
uint32 bidPoolCnt;

function feeAddr() {
    return feeAddr
}

function takerFeeRate() {
    return takerFeeRate
}

function liquidtyAddr() {
    return liquidtyAddr
}

function bidTakerAmount(uint32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    return bidTakerAmount[arg1 << 224][6][address(arg2)].field_0
}

function stakeAddr() {
    return stakeAddr
}

function owner() {
    return owner
}

function destructing() {
    return bool(stor5)
}

function makerFixedFee() {
    return makerFixedFee
}

function bidPoolCnt() {
    return bidPoolCnt
}

function bidPools(uint32 arg1) {
    require calldata.size - 4 >= 32
    mem[128] = bidTakerAmount[arg1].field_0
    idx = 128
    s = 0
    while bidTakerAmount[arg1].length + 96 > idx:
        mem[idx + 32] = bidTakerAmount[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=bidTakerAmount[arg1].length, data=mem[128 len bidTakerAmount[arg1].length]), 
           bidTakerAmount[arg1].field_256,
           bidTakerAmount[arg1].field_256,
           bool(bidTakerAmount[arg1].field_448),
           bidTakerAmount[arg1].field_512,
           bidTakerAmount[arg1].field_768,
           bidTakerAmount[arg1].field_1024,
           bidTakerAmount[arg1].field_1280,
           bool(bidTakerAmount[arg1].field_1792)
}

function destory() {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not stor5:
        revert with 0, 'destorying...'
    selfdestruct(owner)
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function preDestruct() {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if stor5:
        revert with 0, 'pre destory...'
    stor5 = 1
}

function updateFeeAddr(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    feeAddr = arg1
}

function updateStakeAddr(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    stakeAddr = arg1
}

function updateMakerFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    makerFixedFee = arg1
}

function updateTakerFeeRate(uint32 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    takerFeeRate = arg1
}

function updateLiquidityAddr(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    liquidtyAddr = arg1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x654f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function destructERC20(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not stor5:
        revert with 0, 'destorying...'
    if arg2:
        if arg2 <= 0:
            revert with 0, 'check balance'
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args owner, arg2
    else:
        require ext_code.size(arg1)
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= 0:
            revert with 0, 'check balance'
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args owner, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function bidPoolMakerWithdraw(uint32 arg1) {
    require calldata.size - 4 >= 32
    if block.timestamp <= bidTakerAmount[arg1 << 224].field_416:
        revert with 0, 'check after end time'
    if not bidTakerAmount[arg1 << 224].field_448:
        revert with 0, 'check pool enabled'
    if bidTakerAmount[arg1 << 224].field_256 != msg.sender:
        revert with 0, 'check pool owner'
    if bidTakerAmount[arg1 << 224].field_1024:
        if not bidTakerAmount[arg1 << 224].field_1280:
            revert with 0, 'check received value'
        bidTakerAmount[arg1 << 224].field_1280 = 0
        call msg.sender with:
           value bidTakerAmount[arg1 << 224].field_1280 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit Withdraw(bidTakerAmount[arg1 << 224].field_1280, 1, arg1, msg.sender);
    else:
        bidTakerAmount[arg1 << 224].field_448 = 0
        require ext_code.size(bidTakerAmount[arg1 << 224].field_512)
        call bidTakerAmount[arg1 << 224].field_512.0xa9059cbb with:
             gas gas_remaining wei
            args bidTakerAmount[arg1 << 224].field_256, bidTakerAmount[arg1 << 224].field_768
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
}

function bidPoolTakerWithdraw(uint32 arg1) {
    require calldata.size - 4 >= 32
    if block.timestamp <= bidTakerAmount[arg1 << 224].field_416:
        revert with 0, 'check after end time'
    if not bidTakerAmount[arg1 << 224][6][msg.sender].field_0:
        revert with 0, 'amount check'
    if bidTakerAmount[arg1 << 224].field_768 * bidTakerAmount[arg1 << 224][6][msg.sender].field_0 / bidTakerAmount[arg1 << 224][6][msg.sender].field_0 != bidTakerAmount[arg1 << 224].field_768:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not bidTakerAmount[arg1 << 224].field_1024:
        revert with 0, 'SafeMath: division by zero'
    bidTakerAmount[arg1 << 224][6][address(msg.sender)].field_0 = 0
    require ext_code.size(bidTakerAmount[arg1 << 224].field_512)
    call bidTakerAmount[arg1 << 224].field_512.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, bidTakerAmount[arg1 << 224].field_768 * bidTakerAmount[arg1 << 224][6][msg.sender].field_0 / bidTakerAmount[arg1 << 224].field_1024
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit Withdraw(bidTakerAmount[arg1 << 224].field_768 * bidTakerAmount[arg1 << 224][6][msg.sender].field_0 / bidTakerAmount[arg1 << 224].field_1024, 2, arg1, msg.sender);
}

function bidPoolJoin(uint32 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x65636865636b2074616b65722076616c75652c2076616c7565206d75737420626520677420,
                    mem[201 len 27]
    if not takerFeeRate:
        if arg2 > msg.value:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        49,
                        0x73636865636b2074616b65722066656520616e642076616c75652c20746f74616c206d757374206265206c652076616c75,
                        mem[213 len 15]
    else:
        if arg2 * takerFeeRate / 100000 <= 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0xfe636865636b2074616b6572206665652c20666565206d75737420626520677420,
                        mem[197 len 31]
        if arg2 * takerFeeRate / 100000 >= arg2:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        37,
                        0x30636865636b2074616b6572206665652c20666565206d757374206265206c652076616c75,
                        mem[201 len 27]
        if not feeAddr:
            revert with 0, 'check fee address, fail'
        require ext_code.size(feeAddr)
        call feeAddr.emitFee(address rg1, uint256 rg2) with:
           value arg2 * takerFeeRate / 100000 wei
             gas gas_remaining wei
            args msg.sender, arg2 * takerFeeRate / 100000
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if arg2 + (arg2 * takerFeeRate / 100000) > msg.value:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        49,
                        0x73636865636b2074616b65722066656520616e642076616c75652c20746f74616c206d757374206265206c652076616c75,
                        mem[213 len 15]
    if msg.value <= 0:
        revert with 0, 'check value, value must be gt 0'
    if arg2 > msg.value:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    39,
                    0x72636865636b2076616c75652c2076616c7565206d757374206265206c65206d73672e76616c75,
                    mem[203 len 25]
    if not bidTakerAmount[arg1 << 224].field_448:
        revert with 0, 'check pool exists'
    if block.timestamp >= bidTakerAmount[arg1 << 224].field_416:
        revert with 0, 'check before end time'
    if bidTakerAmount[arg1 << 224].field_1792:
        if stakeAddr:
            require ext_code.size(stakeAddr)
            call stakeAddr.hastaked(address rg1) with:
                 gas gas_remaining wei
                args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'only holder'
    if arg2 + bidTakerAmount[arg1 << 224][6][msg.sender].field_0 < bidTakerAmount[arg1 << 224][6][msg.sender].field_0:
        revert with 0, 'SafeMath: addition overflow'
    bidTakerAmount[arg1 << 224][6][address(msg.sender)].field_0 = arg2 + bidTakerAmount[arg1 << 224][6][msg.sender].field_0
    if arg2 + bidTakerAmount[arg1 << 224].field_1024 < bidTakerAmount[arg1 << 224].field_1024:
        revert with 0, 'SafeMath: addition overflow'
    bidTakerAmount[arg1 << 224].field_1024 += arg2
    if arg2 + bidTakerAmount[arg1 << 224].field_1280 < bidTakerAmount[arg1 << 224].field_1280:
        revert with 0, 'SafeMath: addition overflow'
    bidTakerAmount[arg1 << 224].field_1280 += arg2
    emit Join(0, arg2, bidTakerAmount[arg1 << 224].field_512, 0, arg1, msg.sender);
    if liquidtyAddr:
        require ext_code.size(liquidtyAddr)
        call liquidtyAddr.emitJoin(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args msg.sender, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function createBidPool(string arg1, address arg2, uint256 arg3, uint32 arg4, bool arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    if makerFixedFee:
        if msg.value < makerFixedFee:
            revert with 0, 
                        32,
                        37,
                        0x6c636865636b206d616b6572206665652c20666565206d757374206265206c652076616c75,
                        mem[ceil32(arg1.length) + 233 len 27]
        if not feeAddr:
            revert with 0, 'check fee address, fail'
        require ext_code.size(feeAddr)
        call feeAddr.emitFee(address rg1, uint256 rg2) with:
           value makerFixedFee wei
             gas gas_remaining wei
            args msg.sender, makerFixedFee
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if stor5:
            revert with 0, 'pre destory...'
        if arg3 <= 0:
            revert with 0, 'check create pool amount'
        mem[ceil32(arg1.length) + 128] = 100
        mem[ceil32(arg1.length) + 160 len 4] = unknown_0x23b872dd(?????)
        mem[64] = ceil32(arg1.length) + 324
        if eth.balance(this.address) < 0:
            revert with 0, 
                        32,
                        38,
                        0x30416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                        mem[ceil32(arg1.length) + 430 len 26]
        if not ext_code.size(arg2):
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(arg1.length) + 324 len floor32(0, 100)] = mem[ceil32(arg1.length) + 160 len floor32(0, 100)]
        mem[ceil32(arg1.length) + floor32(0, 100) + 352 len 4] = mem[ceil32(arg1.length) + floor32(0, 100) + 188 len 4]
        call arg2.mem[ceil32(arg1.length) + 324 len 4] with:
             gas gas_remaining wei
            args mem[ceil32(arg1.length) + 328 len 0, 100 - 4]
    else:
        if stor5:
            revert with 0, 'pre destory...'
        if arg3 <= 0:
            revert with 0, 'check create pool amount'
        mem[ceil32(arg1.length) + 164] = msg.sender
        mem[ceil32(arg1.length) + 196] = this.address
        mem[ceil32(arg1.length) + 228] = arg3
        mem[ceil32(arg1.length) + 128] = 100
        mem[ceil32(arg1.length) + 164 len 28] = Mask(224, 32, msg.sender) >> 32
        mem[ceil32(arg1.length) + 160 len 4] = unknown_0x23b872dd(?????)
        mem[64] = ceil32(arg1.length) + 324
        mem[ceil32(arg1.length) + 260] = 32
        mem[ceil32(arg1.length) + 292] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 
                        32,
                        38,
                        0x30416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                        mem[ceil32(arg1.length) + 430 len 26]
        if not ext_code.size(arg2):
            revert with 0, 'Address: call to non-contract'
        _27 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
        mem[ceil32(arg1.length) + 324 len floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])] = mem[ceil32(arg1.length) + 160 len floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])]
        mem[ceil32(arg1.length) + floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + 324] = mem[ceil32(arg1.length) + floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + -(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32) + 192 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32] or Mask(8 * -(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32) + 32, -(8 * -(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32) + 32) + 256, mem[ceil32(arg1.length) + floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + 324])
        call arg2.mem[ceil32(arg1.length) + 324 len 4] with:
             gas gas_remaining wei
            args mem[ceil32(arg1.length) + 328 len _27 - 4]
    if not return_data.size:
        if not ext_call.success:
            if arg1.length:
                revert with arg1[all]
            revert with 0, 'SafeERC20: low-level call failed'
        if arg1.length:
            require arg1.length >= 32
            if not mem[128]:
                revert with 0, 
                            32,
                            42,
                            0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(arg1.length) + 434 len 22]
    else:
        mem[ceil32(arg1.length) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[ceil32(arg1.length) + 356]:
                revert with 0, 
                            32,
                            42,
                            0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(arg1.length) + ceil32(return_data.size) + 435 len 22]
    bidTakerAmount[stor7][].field_0 = Array(len=arg1.length, data=arg1[all])
    bidTakerAmount[stor7].field_256 = msg.sender
    bidTakerAmount[stor7].field_416 = uint32(arg4 + block.timestamp)
    bidTakerAmount[stor7].field_448 = 1
    bidTakerAmount[stor7].field_512 = arg2
    bidTakerAmount[stor7].field_768 = arg3
    bidTakerAmount[stor7].field_1024 = 0
    bidTakerAmount[stor7].field_1280 = 0
    bidTakerAmount[stor7].field_1792 = uint8(arg5)
    emit CreatePool(0, address(arg2), arg3, 0, 0, bidPoolCnt, msg.sender);
    bidPoolCnt = uint32(bidPoolCnt + 1)
}



}
