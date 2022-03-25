contract main {




// =====================  Runtime code  =====================


address owner;

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 32, 32, code.data[15136 len 32]
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function finalize(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 32, 32, code.data[15136 len 32]
    require ext_code.size(arg1)
    call arg1.0xf2fde38b with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_e156b5ce(?) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 32, 32, code.data[15136 len 32]
    require ext_code.size(arg1)
    call arg1.setDuration(uint256 rg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_2c7d1f9a(?) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 32, 32, code.data[15136 len 32]
    require ext_code.size(arg1)
    call arg1.notifyRewardAmount(uint256 rg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 32, 32, code.data[15136 len 32]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 38, code.data[15098 len 38], mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_2ad2f959(?) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 32, 32, code.data[15136 len 32]
    create contract with 0 wei
                    code: code.data[2293 len 2402], address(arg1), arg2
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(arg2)
    call arg2.0x63169a09 with:
         gas gas_remaining wei
        args address(create.new_address)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return address(create.new_address)
}

function sub_7ffd3806(?) payable {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 32, 32, code.data[15136 len 32]
    create contract with 0 wei
                    code: code.data[4695 len 10403], 0x12e2fcfa079fc23ae82ab82707b402410321103f, address(arg1), address(arg2), 0x153f07b2cc2a2e3a3fd55eb4479a22f1d680822b
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0x153f07b2cc2a2e3a3fd55eb4479a22f1d680822b)
    call 0x153f07b2cc2a2e3a3fd55eb4479a22f1d680822b.set_admin(address rg1) with:
         gas gas_remaining wei
        args address(create.new_address)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0x12e2fcfa079fc23ae82ab82707b402410321103f)
    call 0x12e2fcfa079fc23ae82ab82707b402410321103f.0xa9059cbb with:
         gas gas_remaining wei
        args address(create.new_address), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return address(create.new_address)
}



}
