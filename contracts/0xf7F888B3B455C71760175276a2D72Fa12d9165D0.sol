contract main {




// =====================  Runtime code  =====================


const getBalances = eth.balance(this.address)


address receiverAddress;
address stor1;

function receiver() {
    return receiverAddress
}

function selfDestroy() {
    selfdestruct(stor1)
}

function _fallback() payable {
    revert
}

function deposit() payable {
    emit Deposited(msg.value, msg.sender);
}

function transfer(uint256 arg1) {
    require calldata.size - 4 >= 32
    call stor1 with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function approve() {
    require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
    call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0x10ed43c718714eb63d5aa57b78b54704e256024e, 100 * 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x55d398326f99059ff775485246999027b3197955)
    call 0x55d398326f99059ff775485246999027b3197955.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0x10ed43c718714eb63d5aa57b78b54704e256024e, 100 * 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
    call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(this.address), 100 * 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x55d398326f99059ff775485246999027b3197955)
    call 0x55d398326f99059ff775485246999027b3197955.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(this.address), 100 * 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_375ba378(?) payable {
    mem[160] = 0x55d398326f99059ff775485246999027b3197955
    mem[192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
    mem[196] = 10^18
    mem[228] = 64
    mem[260] = 2
    mem[292 len 0] = None
    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
    staticcall 0x10ed43c718714eb63d5aa57b78b54704e256024e.getAmountsIn(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args 10^18, 64, 2, mem[292 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    _50 = mem[192 len 4], 232830643
    require mem[192 len 4], 232830643 <= 4294967296
    require mem[192 len 4], 232830643 + 32 <= return_data.size
    require mem[mem[192 len 4], 232830643 + 192] <= 4294967296 and mem[192 len 4], 232830643 + (32 * mem[mem[192 len 4], 232830643 + 192]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], 232830643 + 192]
    _53 = mem[_50 + 192]
    mem[ceil32(return_data.size) + 224 len floor32(mem[_50 + 192])] = mem[_50 + 224 len floor32(mem[_50 + 192])]
    require 0 < mem[ceil32(return_data.size) + 192]
    if not mem[ceil32(return_data.size) + 224]:
        mem[(32 * _53) + ceil32(return_data.size) + 256] = 'SafeMath: division by zero'
        mem[(32 * _53) + ceil32(return_data.size) + 288] = 0xfb3bdb4100000000000000000000000000000000000000000000000000000000
        mem[(32 * _53) + ceil32(return_data.size) + 292] = 10^18
        mem[(32 * _53) + ceil32(return_data.size) + 356] = this.address
        mem[(32 * _53) + ceil32(return_data.size) + 388] = block.timestamp + 600
        mem[(32 * _53) + ceil32(return_data.size) + 324] = 128
        mem[(32 * _53) + ceil32(return_data.size) + 420] = 2
        mem[(32 * _53) + ceil32(return_data.size) + 452 len 0] = None
        require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
        call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapETHForExactTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
             gas gas_remaining wei
            args 10^18, 128, address(this.address), block.timestamp + 600, 2, mem[(32 * _53) + ceil32(return_data.size) + 452 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _53) + ceil32(return_data.size) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _53) + (2 * ceil32(return_data.size)) + 288
        require return_data.size >= 32
        require mem[(32 * _53) + ceil32(return_data.size) + 288 len 4], 232830643 <= 4294967296
        require mem[(32 * _53) + ceil32(return_data.size) + 288 len 4], 232830643 + 32 <= return_data.size
        require mem[mem[(32 * _53) + ceil32(return_data.size) + 288 len 4], 232830643 + (32 * _53) + ceil32(return_data.size) + 288] <= 4294967296 and mem[(32 * _53) + ceil32(return_data.size) + 288 len 4], 232830643 + (32 * mem[mem[(32 * _53) + ceil32(return_data.size) + 288 len 4], 232830643 + (32 * _53) + ceil32(return_data.size) + 288]) + 32 <= return_data.size
        return 0
    require mem[ceil32(return_data.size) + 224]
    if 10 * mem[ceil32(return_data.size) + 224] / mem[ceil32(return_data.size) + 224] != 10:
        revert with 0, 
                    32,
                    33,
                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[(32 * _53) + ceil32(return_data.size) + 325 len 31]
    mem[(32 * _53) + ceil32(return_data.size) + 256] = 'SafeMath: division by zero'
    mem[(32 * _53) + ceil32(return_data.size) + 288] = 0xfb3bdb4100000000000000000000000000000000000000000000000000000000
    mem[(32 * _53) + ceil32(return_data.size) + 292] = 10^18
    mem[(32 * _53) + ceil32(return_data.size) + 356] = this.address
    mem[(32 * _53) + ceil32(return_data.size) + 388] = block.timestamp + 600
    mem[(32 * _53) + ceil32(return_data.size) + 324] = 128
    mem[(32 * _53) + ceil32(return_data.size) + 420] = 2
    mem[(32 * _53) + ceil32(return_data.size) + 452 len 0] = None
    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
    call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapETHForExactTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
       value 10 * mem[ceil32(return_data.size) + 224] / 11 wei
         gas gas_remaining wei
        args 10^18, 128, address(this.address), block.timestamp + 600, 2, mem[(32 * _53) + ceil32(return_data.size) + 452 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * _53) + ceil32(return_data.size) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * _53) + (2 * ceil32(return_data.size)) + 288
    require return_data.size >= 32
    _126 = mem[(32 * _53) + ceil32(return_data.size) + 288 len 4], 232830643
    require mem[(32 * _53) + ceil32(return_data.size) + 288 len 4], 232830643 <= 4294967296
    require mem[(32 * _53) + ceil32(return_data.size) + 288 len 4], 232830643 + 32 <= return_data.size
    require mem[mem[(32 * _53) + ceil32(return_data.size) + 288 len 4], 232830643 + (32 * _53) + ceil32(return_data.size) + 288] <= 4294967296 and mem[(32 * _53) + ceil32(return_data.size) + 288 len 4], 232830643 + (32 * mem[mem[(32 * _53) + ceil32(return_data.size) + 288 len 4], 232830643 + (32 * _53) + ceil32(return_data.size) + 288]) + 32 <= return_data.size
    mem[(32 * _53) + (2 * ceil32(return_data.size)) + 288] = mem[mem[(32 * _53) + ceil32(return_data.size) + 288 len 4], 232830643 + (32 * _53) + ceil32(return_data.size) + 288]
    mem[(32 * _53) + (2 * ceil32(return_data.size)) + 320 len floor32(mem[_126 + (32 * _53) + ceil32(return_data.size) + 288])] = mem[_126 + (32 * _53) + ceil32(return_data.size) + 320 len floor32(mem[_126 + (32 * _53) + ceil32(return_data.size) + 288])]
    return (10 * mem[ceil32(return_data.size) + 224] / 11)
}



}
