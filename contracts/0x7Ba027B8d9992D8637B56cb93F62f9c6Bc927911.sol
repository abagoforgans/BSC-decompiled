contract main {




// =====================  Runtime code  =====================


address owner;
address proxyAddress;

function owner() {
    return owner
}

function proxy() {
    return proxyAddress
}

function _fallback() payable {
    revert
}

function setProxy(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    proxyAddress = arg1
}

function drainEth(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    call arg2 with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
}

function drainToken(address arg1, uint256 arg2, address arg3) {
    require calldata.size - 4 >= 96
    require msg.sender == owner
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg3), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function drainProxy(address arg1, uint256 arg2, address arg3) {
    require calldata.size - 4 >= 96
    require msg.sender == owner
    require ext_code.size(proxyAddress)
    call proxyAddress.0x19ff1cf5 with:
         gas gas_remaining wei
        args address(arg1), arg2, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(arg1)
    call arg1.withdraw(uint256 rg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function rebalance(address[] arg1, uint256[] arg2, address arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = 0
    require msg.sender == owner
    if arg4:
        mem[(32 * arg1.length) + (32 * arg2.length) + 196] = arg4
        mem[(32 * arg1.length) + (32 * arg2.length) + 228] = this.address
        require ext_code.size(proxyAddress)
        call proxyAddress.0x19ff1cf5 with:
             gas gas_remaining wei
            args address(arg3), arg4, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * arg1.length) + (32 * arg2.length) + 160] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
        mem[(32 * arg1.length) + (32 * arg2.length) + 164] = arg4
        require ext_code.size(arg3)
        call arg3.withdraw(uint256 rg1) with:
             gas gas_remaining wei
            args arg4
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    require arg1.length == arg2.length
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        require idx < arg2.length
        call mem[(32 * idx) + 140 len 20] with:
           value mem[(32 * idx) + (32 * arg1.length) + 160] wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
}



}
