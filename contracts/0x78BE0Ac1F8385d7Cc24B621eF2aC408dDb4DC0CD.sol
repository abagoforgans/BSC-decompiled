contract main {




// =====================  Runtime code  =====================


const getBalance = eth.balance(this.address)


uint8 feePercent; offset 160
address owner;

function feePercent() {
    return feePercent
}

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function minFee() {
    return (block.gasprice * gas_remaining * feePercent / 100)
}

function setFeePercent(uint8 arg1) {
    require msg.sender == owner
    feePercent = arg1
}

function claim(address arg1) {
    require msg.sender == owner
    if not arg1:
        call owner with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        require ext_code.size(arg1)
        call arg1.0x70a08231 with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args owner, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
}

function sendEth(address[] arg1, uint256[] arg2) payable {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require arg1.length == arg2.length
    require arg1.length <= 255
    require msg.value > block.gasprice * gas_remaining * feePercent / 100
    idx = 0
    s = msg.value - (block.gasprice * gas_remaining * feePercent / 100)
    while uint8(idx) < arg1.length:
        require uint8(idx) < arg2.length
        require s >= mem[(32 * uint8(idx)) + (32 * arg1.length) + 160]
        require uint8(idx) < arg2.length
        require uint8(idx) < arg1.length
        require uint8(idx) < arg2.length
        call mem[(32 * uint8(idx)) + 140 len 20] with:
           value mem[(32 * uint8(idx)) + (32 * arg1.length) + 160] wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        s = s - mem[(32 * uint8(idx)) + (32 * arg1.length) + 160]
        continue 
    return 1
}

function sendErc20(address arg1, address[] arg2, uint256[] arg3) payable {
    mem[96] = arg2.length
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 128] = arg3.length
    mem[(32 * arg2.length) + 160 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    require arg2.length == arg3.length
    require arg2.length <= 255
    idx = 0
    while uint8(idx) < arg2.length:
        require uint8(idx) < arg2.length
        _21 = mem[(32 * uint8(idx)) + 128]
        require uint8(idx) < arg3.length
        _23 = mem[(32 * uint8(idx)) + (32 * arg2.length) + 160]
        mem[(32 * arg2.length) + (32 * arg3.length) + 164] = msg.sender
        mem[(32 * arg2.length) + (32 * arg3.length) + 196] = address(_21)
        mem[(32 * arg2.length) + (32 * arg3.length) + 228] = _23
        require ext_code.size(arg1)
        call arg1.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(_21), _23
        mem[(32 * arg2.length) + (32 * arg3.length) + 160] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require bool(ext_call.return_data[0]) == 1
        idx = idx + 1
        continue 
    return 1
}



}
