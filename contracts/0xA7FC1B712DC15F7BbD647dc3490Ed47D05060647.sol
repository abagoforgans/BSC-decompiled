contract main {




// =====================  Runtime code  =====================


const balance = eth.balance(this.address)


uint256 totalDeposit;
address sub_7eb99f0fAddress;
address _owner;

function get_owner() {
    return _owner
}

function sub_7eb99f0f(?) {
    return sub_7eb99f0fAddress
}

function _owner() {
    return _owner
}

function totalDeposit() {
    return totalDeposit
}

function _fallback() payable {
    revert
}

function deposit() payable {
    totalDeposit += msg.value
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if _owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call arg1 with:
       value arg2 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'Failed to send Ether'
}

function withdraw(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if _owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if sub_7eb99f0fAddress == arg1:
        call _owner with:
           value arg2 wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with 0, 'Failed to send Ether'
}

function sub_71ba2e84(?) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    mem[ceil32(arg2.length) + 128 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32] = mem[floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32]
    call arg1 with:
       funct Mask(32, -(8 * ceil32(arg2.length) + -arg2.length + 4) + 256, 0) >> -(8 * ceil32(arg2.length) + -arg2.length + 4) + 256
       value msg.value wei
         gas 5000 wei
        args mem[ceil32(arg2.length) + 132 len arg2.length - 4]
    require ext_call.success
}

function sub_644c9004(?) payable {
    require calldata.size - 4 >= 128
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    mem[ceil32(arg2.length) + 128] = arg1
    mem[ceil32(arg2.length) + 192] = arg3
    mem[ceil32(arg2.length) + 224] = arg4
    mem[ceil32(arg2.length) + 160] = 128
    mem[ceil32(arg2.length) + 256] = arg2.length
    mem[ceil32(arg2.length) + 288 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    if not arg2.length % 32:
        emit 0xc917d5eb: Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len ceil32(arg2.length) + -arg2.length + 32], arg3, arg4, arg2.length, Mask(8 * arg2.length, -(8 * arg2.length) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * arg2.length) - 256
    else:
        mem[floor32(arg2.length) + ceil32(arg2.length) + 288] = mem[floor32(arg2.length) + ceil32(arg2.length) + -(arg2.length % 32) + 320 len arg2.length % 32]
        emit 0xc917d5eb: Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len ceil32(arg2.length) + -arg2.length + 32], arg3, arg4, arg2.length, Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + 288 len floor32(arg2.length) + -ceil32(arg2.length) + 32]
    mem[ceil32(arg2.length) + 128 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32] = mem[floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32]
    call arg1 with:
       funct Mask(32, -(8 * ceil32(arg2.length) + -arg2.length + 4) + 256, 0) >> -(8 * ceil32(arg2.length) + -arg2.length + 4) + 256
       value arg3 wei
         gas arg4 wei
        args mem[ceil32(arg2.length) + 132 len arg2.length - 4]
    require ext_call.success
}



}
