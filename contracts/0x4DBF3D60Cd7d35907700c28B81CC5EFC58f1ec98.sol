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

function approve() {
  stop
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

function sub_3ada13da(?) payable {
    require calldata.size - 4 >= 32
    mem[160] = 0x55d398326f99059ff775485246999027b3197955
    mem[192] = 0xfb3bdb4100000000000000000000000000000000000000000000000000000000
    mem[196] = 10^18
    mem[260] = this.address
    mem[292] = block.timestamp + 600
    mem[228] = 128
    mem[324] = 2
    mem[356 len 0] = None
    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
    call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapETHForExactTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
       value 10^18 * arg1 wei
         gas gas_remaining wei
        args 10^18, 128, address(this.address), block.timestamp + 600, 2, mem[356 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    require mem[192 len 4], 232830643 <= 4294967296
    require mem[192 len 4], 232830643 + 32 <= return_data.size
    require mem[mem[192 len 4], 232830643 + 192] <= 4294967296 and mem[192 len 4], 232830643 + (32 * mem[mem[192 len 4], 232830643 + 192]) + 32 <= return_data.size
    return 1
}



}
