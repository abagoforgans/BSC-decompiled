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
    if totalDeposit > -msg.value - 1:
        revert with 'NH{q', 17
    totalDeposit += msg.value
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
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
    require arg1 == arg1
    require arg2 == arg2
    if _owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 == sub_7eb99f0fAddress:
        call _owner with:
           value arg2 wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with 0, 'Failed to send Ether'
}

function sub_71ba2e84(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg2.length)) + 97 > test266151307() or ceil32(ceil32(arg2.length)) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = arg2.length
    require arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    mem[ceil32(ceil32(arg2.length)) + 97 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    if ceil32(arg2.length) > arg2.length:
        mem[ceil32(ceil32(arg2.length)) + arg2.length + 97] = 0
    call address(arg1).mem[ceil32(ceil32(arg2.length)) + 97 len 4] with:
       value msg.value wei
         gas 5000 wei
        args mem[ceil32(ceil32(arg2.length)) + 101 len arg2.length - 4]
    require ext_call.success
}

function sub_644c9004(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg2.length)) + 97 > test266151307() or ceil32(ceil32(arg2.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    require arg3 == arg3
    require arg4 == arg4
    mem[ceil32(ceil32(arg2.length)) + 97] = address(arg1)
    mem[ceil32(ceil32(arg2.length)) + 129] = 128
    mem[ceil32(ceil32(arg2.length)) + 225] = arg2.length
    mem[ceil32(ceil32(arg2.length)) + 257 len ceil32(arg2.length)] = arg2[all], 0
    mem[ceil32(ceil32(arg2.length)) + 161] = arg3
    mem[ceil32(ceil32(arg2.length)) + 193] = arg4
    emit 0xc917d5eb: address(arg1), 128, arg3, arg4, arg2.length, arg2[all], 0
    mem[ceil32(ceil32(arg2.length)) + 97 len ceil32(arg2.length)] = arg2[all], 0
    if ceil32(arg2.length) > arg2.length:
        mem[ceil32(ceil32(arg2.length)) + arg2.length + 97] = 0
    call address(arg1).mem[ceil32(ceil32(arg2.length)) + 97 len 4] with:
       value arg3 wei
         gas arg4 wei
        args mem[ceil32(ceil32(arg2.length)) + 101 len arg2.length - 4]
    require ext_call.success
}



}
