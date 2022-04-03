contract main {




// =====================  Runtime code  =====================


const name = 'End of World'

const decimals = 1

const symbol = 'EoW'

const INITIAL_SUPPLY = 202100


uint256 unallocatedEth;
uint256 stor1;
mapping of address stor2;
mapping of uint8 stor3;
uint256 totalSupply;
uint256 totalStaked;
mapping of struct dividendsOf;
address stor7;

function dividendsOf(address arg1) {
    require calldata.size - 4 >= 32
    return dividendsOf[address(arg1)].field_768
}

function totalSupply() {
    return totalSupply
}

function allInfoFor(address arg1) {
    require calldata.size - 4 >= 32
    return dividendsOf[address(arg1)].field_0 - dividendsOf[address(arg1)].field_256, 
           dividendsOf[address(arg1)].field_256,
           dividendsOf[address(arg1)].field_768,
           dividendsOf[address(arg1)].field_1024
}

function totalStaked() {
    return totalStaked
}

function userTotalEarned(address arg1) {
    require calldata.size - 4 >= 32
    return dividendsOf[address(arg1)].field_1024
}

function stakedOf(address arg1) {
    require calldata.size - 4 >= 32
    return dividendsOf[address(arg1)].field_256
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return dividendsOf[address(arg1)][2][address(arg2)].field_0
}

function unallocatedEth() {
    return unallocatedEth
}

function _fallback() payable {
    revert
}

function info() {
    return totalSupply, totalStaked, stor7
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return (dividendsOf[address(arg1)].field_0 - dividendsOf[address(arg1)].field_256)
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    dividendsOf[address(msg.sender)][2][address(arg1)].field_0 = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function sendDividend() payable {
    if stor7 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe6f6e6c792061646d696e2063616e206368616e6765207472616e73616374696f6e20666565,
                    mem[202 len 26]
    unallocatedEth += msg.value
    return unallocatedEth
}

function stake(uint256 arg1) {
    require calldata.size - 4 >= 32
    if dividendsOf[address(msg.sender)].field_0 - dividendsOf[address(msg.sender)].field_256 < arg1:
        revert with 0, 'insufficient funds'
    totalStaked += arg1
    dividendsOf[address(msg.sender)].field_256 += arg1
    dividendsOf[address(msg.sender)].field_1280 = block.timestamp
    emit Transfer(arg1, msg.sender, this.address);
    emit Stake(arg1, msg.sender);
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if dividendsOf[address(msg.sender)].field_0 - dividendsOf[address(msg.sender)].field_256 < arg2:
        revert with 0, 'insufficient funds'
    if not stor3[address(arg1)]:
        stor2[stor1] = arg1
        stor3[address(arg1)] = 1
        stor1++
    dividendsOf[address(msg.sender)].field_0 -= arg2
    dividendsOf[address(arg1)].field_0 += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function collectDividend() {
    if dividendsOf[address(msg.sender)].field_768 < 0:
        revert with 0, 'no dividends to recieve'
    call msg.sender with:
       value dividendsOf[address(msg.sender)].field_768 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Collect(dividendsOf[address(msg.sender)].field_768, msg.sender);
    dividendsOf[address(msg.sender)].field_768 = 0
    dividendsOf[address(msg.sender)].field_1024 += dividendsOf[address(msg.sender)].field_768
    return dividendsOf[address(msg.sender)].field_768
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require dividendsOf[address(arg1)][2][address(msg.sender)].field_0 >= arg3
    dividendsOf[address(arg1)][2][address(msg.sender)].field_0 -= arg3
    if dividendsOf[address(arg1)].field_0 - dividendsOf[address(arg1)].field_256 < arg3:
        revert with 0, 'insufficient funds'
    if not stor3[address(arg2)]:
        stor2[stor1] = arg2
        stor3[address(arg2)] = 1
        stor1++
    dividendsOf[address(arg1)].field_0 -= arg3
    dividendsOf[address(arg2)].field_0 += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function transferAndCall(address arg1, uint256 arg2, bytes arg3) {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    if dividendsOf[address(msg.sender)].field_0 - dividendsOf[address(msg.sender)].field_256 < arg2:
        revert with 0, 'insufficient funds'
    if not stor3[address(arg1)]:
        stor2[stor1] = arg1
        stor3[address(arg1)] = 1
        stor1++
    dividendsOf[address(msg.sender)].field_0 -= arg2
    dividendsOf[address(arg1)].field_0 += arg2
    emit Transfer(arg2, msg.sender, arg1);
    if uint32(ext_code.size(arg1)) > 0:
        mem[228 len arg3.length] = arg3[all]
        mem[arg3.length + 228] = 0
        require ext_code.size(arg1)
        call arg1.tokenCallback(address rg1, uint256 rg2, bytes rg3) with:
             gas gas_remaining wei
            args 0, uint32(msg.sender), arg2, 96, arg3.length, arg3[all], mem[arg3.length + 228 len ceil32(arg3.length) - arg3.length]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
    return 1
}

function unstake(uint256 arg1) {
    require calldata.size - 4 >= 32
    if dividendsOf[address(msg.sender)].field_256 < arg1:
        revert with 0, 'user stake already 0'
    if dividendsOf[address(msg.sender)].field_1280 + (24 * 3600) > block.timestamp:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x206d757374207761697420323420686f757273206265666f726520756e7374616b696e,
                    mem[199 len 29]
    if dividendsOf[address(msg.sender)].field_768 > 0:
        if dividendsOf[address(msg.sender)].field_768 < 0:
            revert with 0, 'no dividends to recieve'
        call msg.sender with:
           value dividendsOf[address(msg.sender)].field_768 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit Collect(dividendsOf[address(msg.sender)].field_768, msg.sender);
        dividendsOf[address(msg.sender)].field_768 = 0
        dividendsOf[address(msg.sender)].field_1024 += dividendsOf[address(msg.sender)].field_768
    totalStaked -= arg1
    dividendsOf[address(msg.sender)].field_256 -= arg1
    emit Unstake(arg1, msg.sender);
}

function bulkTransfer(address[] arg1, uint256[] arg2) {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    require arg1.length == arg2.length
    idx = 0
    while idx < arg1.length:
        require idx < arg2.length
        if dividendsOf[address(msg.sender)].field_0 - dividendsOf[address(msg.sender)].field_256 < cd[((32 * idx) + arg2 + 36)]:
            revert with 0, 'insufficient funds'
        if not stor3[address(cd[((32 * idx) + arg1 + 36)])]:
            stor2[stor1] = address(cd[((32 * idx) + arg1 + 36)])
            stor3[address(cd[((32 * idx) + arg1 + 36)])] = 1
            stor1++
        dividendsOf[address(msg.sender)].field_0 -= cd[((32 * idx) + arg2 + 36)]
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 6
        dividendsOf[address(cd[((32 * idx) + arg1 + 36)])].field_0 += cd[((32 * idx) + arg2 + 36)]
        mem[96] = cd[((32 * idx) + arg2 + 36)]
        emit Transfer(cd[((32 * idx) + arg2 + 36)], msg.sender, address(cd[((32 * idx) + arg1 + 36)]));
        idx = idx + 1
        continue 
}

function distribute() {
    if stor7 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe6f6e6c792061646d696e2063616e206368616e6765207472616e73616374696f6e20666565,
                    mem[202 len 26]
    if totalStaked <= 0:
        revert with 0, 'no stakers to distribute'
    if eth.balance(this.address) <= 0:
        revert with 0, 'no dividend to distribute'
    mem[64] = 224
    mem[192] = 'invaid holding supply'
    if totalStaked / 100 * 10^6 <= 0:
        revert with 0, 'invaid holding supply'
    require totalStaked / 100 * 10^6
    idx = 1
    s = 0
    while idx < stor1:
        mem[0] = stor2[idx]
        mem[32] = 6
        if dividendsOf[stor2[idx]].field_256 <= 0:
            idx = idx + 1
            s = s
            continue 
        mem[0] = stor2[idx]
        mem[32] = 6
        _53 = mem[64]
        mem[64] = mem[64] + 64
        mem[_53] = 14
        mem[_53 + 32] = 'division error'
        if not unallocatedEth / totalStaked / 100 * 10^6:
            mem[0] = stor2[idx]
            mem[32] = 6
            _63 = mem[64]
            mem[64] = mem[64] + 64
            mem[_63] = 14
            mem[_63 + 32] = 'division error'
        else:
            require unallocatedEth / totalStaked / 100 * 10^6
            if unallocatedEth / totalStaked / 100 * 10^6 * dividendsOf[stor2[idx]].field_256 / 100 * 10^6 / unallocatedEth / totalStaked / 100 * 10^6 != dividendsOf[stor2[idx]].field_256 / 100 * 10^6:
                revert with 0, 32, 33, 0x67536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            dividendsOf[stor2[idx]].field_768 += unallocatedEth / totalStaked / 100 * 10^6 * dividendsOf[stor2[idx]].field_256 / 100 * 10^6
            mem[0] = stor2[idx]
            mem[32] = 6
            _65 = mem[64]
            mem[64] = mem[64] + 64
            mem[_65] = 14
            mem[_65 + 32] = 'division error'
        if unallocatedEth / totalStaked / 100 * 10^6:
            require unallocatedEth / totalStaked / 100 * 10^6
            if unallocatedEth / totalStaked / 100 * 10^6 * dividendsOf[stor2[idx]].field_256 / 100 * 10^6 / unallocatedEth / totalStaked / 100 * 10^6 != dividendsOf[stor2[idx]].field_256 / 100 * 10^6:
                revert with 0, 32, 33, 0x67536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        idx = idx + 1
        s = s + 1
        continue 
    emit POOLDDIVIDENDCALCULATE(totalStaked, unallocatedEth, unallocatedEth / totalStaked / 100 * 10^6, s, 0);
    call stor7 with:
       value unallocatedEth wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if unallocatedEth / totalStaked / 100 * 10^6 > 0:
        unallocatedEth = 0
}



}
