contract main {




// =====================  Runtime code  =====================


const ETH = 0


address stor1;

function deposit() payable {
  stop
}

function _fallback() payable {
    revert
}

function sub_3461ccf1(?) {
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getBalanceOf(address arg1) {
    require calldata.size - 4 >= 32
    if not arg1:
        return eth.balance(this.address)
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_0614a515(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_57bc551a(?) {
    require calldata.size - 4 >= 96
    mem[160] = arg3
    if not arg1:
        mem[192] = 0x9cf6891100000000000000000000000000000000000000000000000000000000
        mem[196] = 0
        mem[260] = this.address
        mem[292] = block.timestamp + 15
        mem[228] = 128
        mem[324] = 2
        mem[356 len 0] = None
        require ext_code.size(stor1)
        call stor1.0x9cf68911 with:
           value arg2 wei
             gas gas_remaining wei
            args 0, 128, this.address, block.timestamp + 15, 2, mem[356 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 192
        require return_data.size >= 32
        require mem[192 len 4], 0 <= 4294967296
        require mem[192 len 4], 0 + 32 <= return_data.size
        require mem[mem[192 len 4], 0 + 192] <= 4294967296 and mem[192 len 4], 0 + (32 * mem[mem[192 len 4], 0 + 192]) + 32 <= return_data.size
    else:
        require ext_code.size(arg1)
        call arg1.approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args stor1, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[192] = 0x5d616c5b00000000000000000000000000000000000000000000000000000000
        mem[196] = arg2
        mem[228] = 0
        mem[292] = this.address
        mem[324] = block.timestamp + 15
        mem[260] = 160
        mem[356] = 2
        mem[388 len 0] = None
        require ext_code.size(stor1)
        call stor1.0x5d616c5b with:
             gas gas_remaining wei
            args arg2, 0, 160, this.address, block.timestamp + 15, 2, mem[388 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 192
        require return_data.size >= 32
        require mem[192 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
        require mem[192 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
        require mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 32 <= return_data.size
}



}
