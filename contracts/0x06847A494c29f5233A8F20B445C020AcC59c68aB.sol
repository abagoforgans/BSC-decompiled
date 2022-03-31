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
mapping of struct fixedPools;
uint32 fixedPoolCnt;
uint32 privFixedPoolCnt;

function fixedPools(uint32 arg1) {
    require calldata.size - 4 >= 32
    mem[128] = fixedPools[arg1].field_0
    idx = 128
    s = 0
    while fixedPools[arg1].length + 96 > idx:
        mem[idx + 32] = fixedPools[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=fixedPools[arg1].length, data=mem[128 len fixedPools[arg1].length]), 
           fixedPools[arg1].field_256,
           fixedPools[arg1].field_256,
           bool(fixedPools[arg1].field_448),
           fixedPools[arg1].field_512,
           fixedPools[arg1].field_768,
           fixedPools[arg1].field_1024,
           fixedPools[arg1].field_1280,
           bool(fixedPools[arg1].field_1536)
}

function fixedPoolCnt() {
    return fixedPoolCnt
}

function feeAddr() {
    return feeAddr
}

function takerFeeRate() {
    return takerFeeRate
}

function liquidtyAddr() {
    return liquidtyAddr
}

function stakeAddr() {
    return stakeAddr
}

function privFixedPoolCnt() {
    return privFixedPoolCnt
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

function privFixedPools(uint32 arg1) {
    require calldata.size - 4 >= 32
    mem[128] = privFixedPools[arg1].field_0
    idx = 128
    s = 0
    while privFixedPools[arg1].length + 96 > idx:
        mem[idx + 32] = privFixedPools[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=privFixedPools[arg1].length, data=mem[128 len privFixedPools[arg1].length]), 
           privFixedPools[arg1].field_256,
           privFixedPools[arg1].field_256,
           bool(privFixedPools[arg1].field_448),
           privFixedPools[arg1].field_512,
           privFixedPools[arg1].field_768,
           privFixedPools[arg1].field_1024,
           privFixedPools[arg1].field_1280
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

function fixedPoolClose(uint32 arg1) {
    require calldata.size - 4 >= 32
    if not fixedPools[arg1 << 224].field_448:
        revert with 0, 'check pool exists'
    if fixedPools[arg1 << 224].field_256 != msg.sender:
        revert with 0, 'check maker owner'
    fixedPools[arg1 << 224].field_448 = 0
    require ext_code.size(fixedPools[arg1 << 224].field_768)
    call fixedPools[arg1 << 224].field_768.0xa9059cbb with:
         gas gas_remaining wei
        args fixedPools[arg1 << 224].field_256, fixedPools[arg1 << 224].field_1024
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit Close(0, arg1);
}

function privFixedPoolClose(uint32 arg1) {
    require calldata.size - 4 >= 32
    if not privFixedPools[arg1 << 224].field_448:
        revert with 0, 'check pool exists'
    if privFixedPools[arg1 << 224].field_256 != msg.sender:
        revert with 0, 'check maker owner'
    privFixedPools[arg1 << 224].field_448 = 0
    require ext_code.size(privFixedPools[arg1 << 224].field_768)
    call privFixedPools[arg1 << 224].field_768.0xa9059cbb with:
         gas gas_remaining wei
        args privFixedPools[arg1 << 224].field_256, privFixedPools[arg1 << 224].field_1024
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit Close(1, arg1);
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

function privFixedPoolTakers(uint32 arg1) {
    require calldata.size - 4 >= 32
    if not privFixedPools[arg1 << 224].field_1536:
        mem[(32 * privFixedPools[arg1 << 224].field_1536) + 128] = 32
        mem[(32 * privFixedPools[arg1 << 224].field_1536) + 160] = privFixedPools[arg1 << 224].field_1536
        mem[(32 * privFixedPools[arg1 << 224].field_1536) + 192 len floor32(privFixedPools[arg1 << 224].field_1536)] = mem[128 len floor32(privFixedPools[arg1 << 224].field_1536)]
        return memory
          from (32 * privFixedPools[arg1 << 224].field_1536) + 128
           len (96 * privFixedPools[arg1 << 224].field_1536) + 64
    mem[128] = privFixedPools[arg1 << 224][6].field_0
    idx = 128
    s = 0
    while (32 * privFixedPools[arg1 << 224].field_1536) + 96 > idx:
        mem[idx + 32] = privFixedPools[arg1 << 224][s + 6].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * privFixedPools[arg1 << 224].field_1536) + 192 len floor32(privFixedPools[arg1 << 224].field_1536)] = mem[128 len floor32(privFixedPools[arg1 << 224].field_1536)]
    return Array(len=privFixedPools[arg1 << 224].field_1536, data=mem[128 len floor32(privFixedPools[arg1 << 224].field_1536)], mem[(32 * privFixedPools[arg1 << 224].field_1536) + floor32(privFixedPools[arg1 << 224].field_1536) + 192 len (32 * privFixedPools[arg1 << 224].field_1536) - floor32(privFixedPools[arg1 << 224].field_1536)]), 
}

function privFixedPoolJoin(uint32 arg1, uint32 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if arg3 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x65636865636b2074616b65722076616c75652c2076616c7565206d75737420626520677420,
                    mem[201 len 27]
    if not takerFeeRate:
        if arg3 > msg.value:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        49,
                        0x73636865636b2074616b65722066656520616e642076616c75652c20746f74616c206d757374206265206c652076616c75,
                        mem[213 len 15]
    else:
        if arg3 * takerFeeRate / 100000 <= 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0xfe636865636b2074616b6572206665652c20666565206d75737420626520677420,
                        mem[197 len 31]
        if arg3 * takerFeeRate / 100000 >= arg3:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        37,
                        0x30636865636b2074616b6572206665652c20666565206d757374206265206c652076616c75,
                        mem[201 len 27]
        if not feeAddr:
            revert with 0, 'check fee address, fail'
        require ext_code.size(feeAddr)
        call feeAddr.emitFee(address rg1, uint256 rg2) with:
           value arg3 * takerFeeRate / 100000 wei
             gas gas_remaining wei
            args msg.sender, arg3 * takerFeeRate / 100000
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if arg3 + (arg3 * takerFeeRate / 100000) > msg.value:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        49,
                        0x73636865636b2074616b65722066656520616e642076616c75652c20746f74616c206d757374206265206c652076616c75,
                        mem[213 len 15]
    if msg.value <= 0:
        revert with 0, 'check value, value must be gt 0'
    if arg3 > msg.value:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    39,
                    0x72636865636b2076616c75652c2076616c7565206d757374206265206c65206d73672e76616c75,
                    mem[203 len 25]
    if not privFixedPools[arg1 << 224].field_448:
        revert with 0, 'check pool exists'
    if block.timestamp >= privFixedPools[arg1 << 224].field_416:
        revert with 0, 'check before end time'
    require arg2 < privFixedPools[arg1 << 224].field_1536
    if stor[('array', 6, ('map', ('mask_shl', 32, 0, 224, ('param', 'arg1')), ('name', 'privFixedPools', 8))) + arg2].field_0 != msg.sender:
        revert with 0, 'check taker limit'
    if not msg.value:
        if not privFixedPools[arg1 << 224].field_1280:
            revert with 0, 'SafeMath: division by zero'
        if 0 / privFixedPools[arg1 << 224].field_1280 <= 0:
            revert with 0, 'check taker amount'
        if 0 / privFixedPools[arg1 << 224].field_1280 > privFixedPools[arg1 << 224].field_1024:
            revert with 0, 'check left token amount'
        privFixedPools[arg1 << 224].field_1024 -= 0 / privFixedPools[arg1 << 224].field_1280
        call privFixedPools[arg1 << 224].field_256 with:
           value arg3 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(privFixedPools[arg1 << 224].field_768)
        call privFixedPools[arg1 << 224].field_768.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, 0 / privFixedPools[arg1 << 224].field_1280
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        emit Join(1, msg.value, privFixedPools[arg1 << 224].field_768, 0 / privFixedPools[arg1 << 224].field_1280, arg1, msg.sender);
    else:
        if privFixedPools[arg1 << 224].field_512 * msg.value / msg.value != privFixedPools[arg1 << 224].field_512:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not privFixedPools[arg1 << 224].field_1280:
            revert with 0, 'SafeMath: division by zero'
        if privFixedPools[arg1 << 224].field_512 * msg.value / privFixedPools[arg1 << 224].field_1280 <= 0:
            revert with 0, 'check taker amount'
        if privFixedPools[arg1 << 224].field_512 * msg.value / privFixedPools[arg1 << 224].field_1280 > privFixedPools[arg1 << 224].field_1024:
            revert with 0, 'check left token amount'
        privFixedPools[arg1 << 224].field_1024 -= privFixedPools[arg1 << 224].field_512 * msg.value / privFixedPools[arg1 << 224].field_1280
        call privFixedPools[arg1 << 224].field_256 with:
           value arg3 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(privFixedPools[arg1 << 224].field_768)
        call privFixedPools[arg1 << 224].field_768.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, privFixedPools[arg1 << 224].field_512 * msg.value / privFixedPools[arg1 << 224].field_1280
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        emit Join(1, msg.value, privFixedPools[arg1 << 224].field_768, privFixedPools[arg1 << 224].field_512 * msg.value / privFixedPools[arg1 << 224].field_1280, arg1, msg.sender);
    if liquidtyAddr:
        require ext_code.size(liquidtyAddr)
        call liquidtyAddr.emitJoin(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args msg.sender, msg.value
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function fixedPoolJoin(uint32 arg1, uint256 arg2) payable {
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
    if not fixedPools[arg1 << 224].field_448:
        revert with 0, 'check pool exists'
    if fixedPools[arg1 << 224].field_1536:
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
    if block.timestamp >= fixedPools[arg1 << 224].field_416:
        revert with 0, 'check before end time'
    if not arg2:
        if not fixedPools[arg1 << 224].field_1280:
            revert with 0, 'SafeMath: division by zero'
        if 0 / fixedPools[arg1 << 224].field_1280 <= 0:
            revert with 0, 'check taker amount'
        if 0 / fixedPools[arg1 << 224].field_1280 > fixedPools[arg1 << 224].field_1024:
            revert with 0, 'check left token amount'
        fixedPools[arg1 << 224].field_1024 -= 0 / fixedPools[arg1 << 224].field_1280
        call fixedPools[arg1 << 224].field_256 with:
           value arg2 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(fixedPools[arg1 << 224].field_768)
        call fixedPools[arg1 << 224].field_768.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, 0 / fixedPools[arg1 << 224].field_1280
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        emit Join(0, arg2, fixedPools[arg1 << 224].field_768, 0 / fixedPools[arg1 << 224].field_1280, arg1, msg.sender);
    else:
        if fixedPools[arg1 << 224].field_512 * arg2 / arg2 != fixedPools[arg1 << 224].field_512:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not fixedPools[arg1 << 224].field_1280:
            revert with 0, 'SafeMath: division by zero'
        if fixedPools[arg1 << 224].field_512 * arg2 / fixedPools[arg1 << 224].field_1280 <= 0:
            revert with 0, 'check taker amount'
        if fixedPools[arg1 << 224].field_512 * arg2 / fixedPools[arg1 << 224].field_1280 > fixedPools[arg1 << 224].field_1024:
            revert with 0, 'check left token amount'
        fixedPools[arg1 << 224].field_1024 -= fixedPools[arg1 << 224].field_512 * arg2 / fixedPools[arg1 << 224].field_1280
        call fixedPools[arg1 << 224].field_256 with:
           value arg2 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(fixedPools[arg1 << 224].field_768)
        call fixedPools[arg1 << 224].field_768.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, fixedPools[arg1 << 224].field_512 * arg2 / fixedPools[arg1 << 224].field_1280
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        emit Join(0, arg2, fixedPools[arg1 << 224].field_768, fixedPools[arg1 << 224].field_512 * arg2 / fixedPools[arg1 << 224].field_1280, arg1, msg.sender);
    if liquidtyAddr:
        require ext_code.size(liquidtyAddr)
        call liquidtyAddr.emitJoin(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args msg.sender, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function createFixedPool(string arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint32 arg6, bool arg7) payable {
    require calldata.size - 4 >= 224
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
        if arg4 <= 0:
            revert with 0, 'check create pool rate'
        if arg5 <= 0:
            revert with 0, 'check create pool units'
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
        if arg4 <= 0:
            revert with 0, 'check create pool rate'
        if arg5 <= 0:
            revert with 0, 'check create pool units'
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
        _35 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
        mem[ceil32(arg1.length) + 324 len floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])] = mem[ceil32(arg1.length) + 160 len floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])]
        mem[ceil32(arg1.length) + floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + 324] = mem[ceil32(arg1.length) + floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + -(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32) + 192 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32] or Mask(8 * -(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32) + 32, -(8 * -(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32) + 32) + 256, mem[ceil32(arg1.length) + floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + 324])
        call arg2.mem[ceil32(arg1.length) + 324 len 4] with:
             gas gas_remaining wei
            args mem[ceil32(arg1.length) + 328 len _35 - 4]
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
    fixedPools[stor7][].field_0 = Array(len=arg1.length, data=arg1[all])
    fixedPools[stor7].field_256 = msg.sender
    fixedPools[stor7].field_416 = uint32(arg6 + block.timestamp)
    fixedPools[stor7].field_448 = 1
    fixedPools[stor7].field_512 = arg4
    fixedPools[stor7].field_768 = arg2
    fixedPools[stor7].field_1024 = arg3
    fixedPools[stor7].field_1280 = arg5
    fixedPools[stor7].field_1536 = uint8(arg7)
    emit CreatePool(0, address(arg2), arg3, arg4, arg5, fixedPoolCnt, msg.sender);
    fixedPoolCnt = uint32(fixedPoolCnt + 1)
}

function createPrivFixedPool(string arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint32 arg6, address[] arg7) payable {
    require calldata.size - 4 >= 224
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require arg7 <= 4294967296
    require arg7 + 36 <= calldata.size
    require arg7.length <= 4294967296 and arg7 + (32 * arg7.length) + 36 <= calldata.size
    mem[ceil32(arg1.length) + 128] = arg7.length
    mem[ceil32(arg1.length) + 160 len 32 * arg7.length] = call.data[arg7 + 36 len 32 * arg7.length]
    if makerFixedFee:
        if msg.value < makerFixedFee:
            revert with 0, 
                        32,
                        37,
                        0x6c636865636b206d616b6572206665652c20666565206d757374206265206c652076616c75,
                        mem[ceil32(arg1.length) + (32 * arg7.length) + 265 len 27]
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
    if arg4 <= 0:
        revert with 0, 'check create pool amount'
    if arg5 <= 0:
        revert with 0, 'check create pool amount'
    mem[ceil32(arg1.length) + (32 * arg7.length) + 196] = msg.sender
    mem[ceil32(arg1.length) + (32 * arg7.length) + 228] = this.address
    mem[ceil32(arg1.length) + (32 * arg7.length) + 260] = arg3
    mem[ceil32(arg1.length) + (32 * arg7.length) + 160] = 100
    mem[ceil32(arg1.length) + (32 * arg7.length) + 196 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[ceil32(arg1.length) + (32 * arg7.length) + 192 len 4] = unknown_0x23b872dd(?????)
    mem[ceil32(arg1.length) + (32 * arg7.length) + 292] = 32
    mem[ceil32(arg1.length) + (32 * arg7.length) + 324] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 
                    32,
                    38,
                    0x30416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                    mem[ceil32(arg1.length) + (32 * arg7.length) + 462 len 26]
    if not ext_code.size(arg2):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(arg1.length) + (32 * arg7.length) + 356 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg3) >> 32
    mem[ceil32(arg1.length) + (32 * arg7.length) + 480 len 4] = 0
    mem[ceil32(arg1.length) + (32 * arg7.length) + 452 len 0] = 0
    call arg2 with:
         gas gas_remaining wei
        args Mask(224, 32, arg3) << 480, mem[ceil32(arg1.length) + (32 * arg7.length) + 452 len 4]
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
                            mem[ceil32(arg1.length) + (32 * arg7.length) + 466 len 14],
                            0,
                            mem[ceil32(arg1.length) + (32 * arg7.length) + 484 len 4]
        mem[64] = ceil32(arg1.length) + (32 * arg7.length) + 644
        mem[ceil32(arg1.length) + (32 * arg7.length) + 356] = 96
        mem[ceil32(arg1.length) + (32 * arg7.length) + 388] = msg.sender
        mem[ceil32(arg1.length) + (32 * arg7.length) + 420] = uint32(arg6 + block.timestamp)
        mem[ceil32(arg1.length) + (32 * arg7.length) + 452] = 1
        mem[ceil32(arg1.length) + (32 * arg7.length) + 484] = arg4
        mem[ceil32(arg1.length) + (32 * arg7.length) + 516] = arg2
        mem[ceil32(arg1.length) + (32 * arg7.length) + 548] = arg3
        mem[ceil32(arg1.length) + (32 * arg7.length) + 580] = arg5
        mem[ceil32(arg1.length) + (32 * arg7.length) + 612] = ceil32(arg1.length) + 128
    else:
        mem[ceil32(arg1.length) + (32 * arg7.length) + 356] = return_data.size
        mem[ceil32(arg1.length) + (32 * arg7.length) + 388 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[ceil32(arg1.length) + (32 * arg7.length) + 388]:
                revert with 0, 
                            32,
                            42,
                            0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(arg1.length) + (32 * arg7.length) + ceil32(return_data.size) + 467 len 22]
        mem[64] = ceil32(arg1.length) + (32 * arg7.length) + ceil32(return_data.size) + 645
        mem[ceil32(arg1.length) + (32 * arg7.length) + ceil32(return_data.size) + 357] = 96
        mem[ceil32(arg1.length) + (32 * arg7.length) + ceil32(return_data.size) + 389] = msg.sender
        mem[ceil32(arg1.length) + (32 * arg7.length) + ceil32(return_data.size) + 421] = uint32(arg6 + block.timestamp)
        mem[ceil32(arg1.length) + (32 * arg7.length) + ceil32(return_data.size) + 453] = 1
        mem[ceil32(arg1.length) + (32 * arg7.length) + ceil32(return_data.size) + 485] = arg4
        mem[ceil32(arg1.length) + (32 * arg7.length) + ceil32(return_data.size) + 517] = arg2
        mem[ceil32(arg1.length) + (32 * arg7.length) + ceil32(return_data.size) + 549] = arg3
        mem[ceil32(arg1.length) + (32 * arg7.length) + ceil32(return_data.size) + 581] = arg5
        mem[ceil32(arg1.length) + (32 * arg7.length) + ceil32(return_data.size) + 613] = ceil32(arg1.length) + 128
    mem[32] = 8
    privFixedPools[stor9][].field_0 = Array(len=arg1.length, data=arg1[all])
    privFixedPools[stor9].field_256 = msg.sender
    privFixedPools[stor9].field_416 = uint32(arg6 + block.timestamp)
    privFixedPools[stor9].field_448 = 1
    privFixedPools[stor9].field_512 = arg4
    privFixedPools[stor9].field_768 = arg2
    privFixedPools[stor9].field_1024 = arg3
    privFixedPools[stor9].field_1280 = arg5
    privFixedPools[stor9].field_1536 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
    mem[0] = sha3(privFixedPoolCnt, 8) + 6
    if not Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]:
        idx = 0
        while privFixedPools[stor9].field_1536 > idx:
            privFixedPools[stor9][idx + 6].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = ceil32(arg1.length) + 160
        while ceil32(arg1.length) + (32 * Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + 160 > idx:
            privFixedPools[stor9][s + 6].field_0 = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + 31) >> 5
        while privFixedPools[stor9].field_1536 > idx:
            privFixedPools[stor9][idx + 6].field_0 = 0
            idx = idx + 1
            continue 
    emit CreatePool(1, address(arg2), arg3, arg4, arg5, privFixedPoolCnt, msg.sender);
    privFixedPoolCnt = uint32(privFixedPoolCnt + 1)
}



}
