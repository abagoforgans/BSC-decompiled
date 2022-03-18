contract main {




// =====================  Runtime code  =====================


const checkBalance = eth.balance(this.address)


address stor0;

function destroy() {
    require msg.sender == stor0
    selfdestruct(msg.sender)
}

function _fallback() payable {
  stop
}

function transferEth(address arg1) payable {
    require arg1
    require msg.sender == stor0
    call arg1 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function transferEthsAvg(address[] arg1) payable {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg1.length > 0
    require msg.sender == stor0
    require arg1.length
    idx = 0
    while uint32(idx) < arg1.length:
        require uint32(idx) < arg1.length
        call mem[(32 * uint32(idx)) + 140 len 20] with:
           value eth.balance(this.address) / arg1.length wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
    return 1
}

function transferEths(address[] arg1, uint256[] arg2) payable {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require arg1.length > 0
    require msg.sender == stor0
    idx = 0
    while uint32(idx) < arg1.length:
        require uint32(idx) < arg1.length
        require uint32(idx) < arg2.length
        call mem[(32 * uint32(idx)) + 140 len 20] with:
           value mem[(32 * uint32(idx)) + (32 * arg1.length) + 160] wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
    return 1
}

function transferTokensAvg(address arg1, address arg2, address[] arg3, uint256 arg4) {
    mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    require arg3.length > 0
    mem[(32 * arg3.length) + 128] = 'transferFrom(address,address,uin'
    idx = 0
    while idx < arg3.length:
        require idx < arg3.length
        _17 = mem[(32 * idx) + 128]
        mem[(32 * arg3.length) + 128] = Mask(32, 224, sha3('transferFrom(address,address,uin', 't256)'))
        mem[(32 * arg3.length) + 132] = arg1
        mem[(32 * arg3.length) + 164] = address(_17)
        mem[(32 * arg3.length) + 196] = arg4
        call arg2 with:
           funct Mask(32, 224, sha3('transferFrom(address,address,uin', 't256)')) >> 224
             gas gas_remaining wei
            args address(arg1), address(_17), arg4
        idx = idx + 1
        continue 
    return 1
}

function transferTokens(address arg1, address arg2, address[] arg3, uint256[] arg4) {
    mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg3.length) + 128] = arg4.length
    mem[(32 * arg3.length) + 160 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    require arg3.length > 0
    require arg4.length > 0
    require arg4.length == arg3.length
    mem[(32 * arg3.length) + (32 * arg4.length) + 160] = 'transferFrom(address,address,uin'
    mem[(32 * arg3.length) + (32 * arg4.length) + 192] = 't256)'
    idx = 0
    while idx < arg3.length:
        require idx < arg3.length
        _23 = mem[(32 * idx) + 128]
        require idx < arg4.length
        _25 = mem[(32 * idx) + (32 * arg3.length) + 160]
        mem[(32 * arg3.length) + (32 * arg4.length) + 160] = Mask(32, 224, sha3('transferFrom(address,address,uin', 't256)'))
        mem[(32 * arg3.length) + (32 * arg4.length) + 164] = arg1
        mem[(32 * arg3.length) + (32 * arg4.length) + 196] = address(_23)
        mem[(32 * arg3.length) + (32 * arg4.length) + 228] = _25
        call arg2 with:
           funct Mask(32, 224, sha3('transferFrom(address,address,uin', 't256)')) >> 224
             gas gas_remaining wei
            args address(arg1), address(_23), _25
        idx = idx + 1
        continue 
    return 1
}



}
