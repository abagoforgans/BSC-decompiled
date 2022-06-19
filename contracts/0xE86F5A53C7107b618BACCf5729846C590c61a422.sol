contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = msg.sender
    return code.data[48 len 780]
}



// =====================  Runtime code  =====================


address owner;

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function withdrawalToken(address arg1) {
    require owner == msg.sender
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args owner, ext_call.return_data[0]
    require ext_call.success
}

function sub_d7f0c9fe(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require owner == msg.sender
    require arg1.length > 0
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _14 = mem[(32 * idx) + 128]
        mem[(32 * arg1.length) + 128] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
        mem[(32 * arg1.length) + 132] = address(_14)
        mem[(32 * arg1.length) + 164] = arg2
        require ext_code.size(arg3)
        call arg3.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args address(_14), arg2
        require ext_call.success
        idx = idx + 1
        continue 
    return 1
}



}
