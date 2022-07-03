contract main {




// =====================  Runtime code  =====================


address owner;
address stor1;
uint256 sub_683f0b84;
uint8 stor3;
uint256 stor4;
uint256 sub_0788af29;
array of address sub_ec1b3903;

function sub_0788af29(?) {
    return sub_0788af29
}

function sub_683f0b84(?) {
    return sub_683f0b84
}

function sub_83e19ec6(?) {
    return bool(stor3)
}

function owner() {
    return owner
}

function getLockerCount() {
    return sub_ec1b3903.length
}

function sub_ec1b3903(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_ec1b3903.length
    return sub_ec1b3903[arg1]
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function updateFees(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_683f0b84 = arg1
}

function sub_b517da2d(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor1 = address(arg1)
}

function sub_d4883342(?) {
    require calldata.size - 4 >= 64
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor3 = uint8(bool(arg1))
    stor4 = arg2
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function sub_1dd0042f(?) {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(stor1)
    staticcall stor1.0xb17b6394 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    call ext_call.return_data[12 len 20] with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_a034cf8b(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(arg1))
    call address(arg1).0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_63a4f2f2(?) {
    if sub_ec1b3903.length > test266151307():
        revert with 0, 65
    mem[96] = sub_ec1b3903.length
    mem[64] = (32 * sub_ec1b3903.length) + 128
    if sub_ec1b3903.length:
        mem[128 len 32 * sub_ec1b3903.length] = call.data[calldata.size len 32 * sub_ec1b3903.length]
    idx = 0
    while idx < sub_ec1b3903.length:
        mem[0] = 6
        if idx >= sub_ec1b3903.length:
            revert with 0, 50
        mem[(32 * idx) + 128] = sub_ec1b3903[idx]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    mem[(32 * sub_ec1b3903.length) + 128] = 32
    mem[(32 * sub_ec1b3903.length) + 160] = sub_ec1b3903.length
    s = 0
    s = mem[64] + 64
    t = 128
    while sub_ec1b3903.length < sub_ec1b3903.length:
        mem[s] = mem[t + 12 len 20]
        s = sub_ec1b3903.length + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len s - mem[64]
}

function sub_ac613708(?) payable {
    require calldata.size - 4 >= 160
    require arg1 == address(arg1)
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg3.length)) + 97 < 96 or ceil32(ceil32(arg3.length)) + 97 > test266151307():
        revert with 0, 65
    require arg3 + arg3.length + 36 <= calldata.size
    require arg5 == bool(arg5)
    if arg4 <= 0:
        revert with 0, 'can't lock 0 Tokens'
    stor3 = uint8(bool(arg5))
    if not uint8(bool(arg5)):
        if msg.value < sub_683f0b84:
            revert with 0, 'err : Please pay the price'
    require ext_code.size(stor1)
    call stor1.0x47978e0d with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor1)
    staticcall stor1.0xb17b6394 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    call ext_call.return_data[12 len 20] with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if sub_0788af29 > !sub_683f0b84:
        revert with 0, 17
    sub_0788af29 += sub_683f0b84
    create contract with 0 wei
                    code: code.data[4109 len 4939], address(arg1), arg2, ext_call.return_data[0], stor1, arg4, bool(stor3), stor4
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(arg1))
    call address(arg1).0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(create.new_address), arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Entry failed due to failed transfer.'
    require ext_code.size(stor1)
    call stor1.0x747b158f with:
         gas gas_remaining wei
        args address(arg1), arg2, address(create.new_address), arg4, Array(len=arg3.length, data=arg3[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    sub_ec1b3903.length++
    sub_ec1b3903[sub_ec1b3903.length] = address(create.new_address)
    return address(create.new_address)
}



}
