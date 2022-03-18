contract main {




// =====================  Runtime code  =====================


address owner;
address tokenContractAddress;
address escrowContractAddress;
address adminAddress;
address sub_1835172aAddress;
array of struct stor5;

function sub_136ea246(?) payable {
    return stor5.length
}

function sub_1835172a(?) payable {
    return sub_1835172aAddress
}

function tokenContract() payable {
    return tokenContractAddress
}

function owner() payable {
    return owner
}

function escrowContract() payable {
    return escrowContractAddress
}

function admin() payable {
    return adminAddress
}

function _fallback() payable {
    revert
}

function isOwner() payable {
    return (msg.sender == owner)
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Not Owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Not Owner'
    if not arg1:
        revert with 0, 'Zero address'
    adminAddress = arg1
}

function sub_c8ec2dda(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Not Owner'
    if not arg1:
        revert with 0, 'Zero address'
    sub_1835172aAddress = arg1
}

function setEscrowContract(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Not Owner'
    if not arg1:
        revert with 0, 'Zero address'
    escrowContractAddress = arg1
}

function sub_2d3fd819(?) payable {
    require calldata.size - 4 >= 64
    if sub_1835172aAddress != msg.sender:
        revert with 0, 'Only JNTR voting allowed'
    require arg1 < stor5.length
    stor5[arg1].field_256 = uint8(arg2)
    emit 0xdb507ec5: arg2, arg1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Not Owner'
    if not arg1:
        revert with 0, 'Zero address not allowed'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setTokenContract(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Not Owner'
    if not arg1:
        revert with 0, 'Change address not allowed'
    if tokenContractAddress:
        revert with 0, 'Change address not allowed'
    tokenContractAddress = arg1
}

function sub_42ed5af5(?) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Not Owner'
    require arg1 < stor5.length
    require ext_code.size(stor5[arg1].field_264)
    call stor5[arg1].field_264.0xf2fde38b with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_a6209ff1(?) payable {
    require calldata.size - 4 >= 96
    if adminAddress != msg.sender:
        revert with 0, 'Not admin'
    require arg1 < stor5.length
    require ext_code.size(stor5[arg1].field_264)
    call stor5[arg1].field_264.0x1c335703 with:
         gas gas_remaining wei
        args arg2, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_c08da6b8(?) payable {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'Not Owner'
    require arg1 < stor5.length
    require ext_code.size(stor5[arg1].field_264)
    call stor5[arg1].field_264.updateWallet(uint256 rg1, address rg2) with:
         gas gas_remaining wei
        args arg2, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_31b21826(?) payable {
    require calldata.size - 4 >= 96
    if sub_1835172aAddress != msg.sender:
        revert with 0, 'Only JNTR voting allowed'
    require arg1 < stor5.length
    require ext_code.size(stor5[arg1].field_264)
    call stor5[arg1].field_264.0xab3a6d0a with:
         gas gas_remaining wei
        args arg2, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_911cdec8(?) payable {
    require calldata.size - 4 >= 96
    if adminAddress != msg.sender:
        revert with 0, 'Not admin'
    require arg1 < stor5.length
    require ext_code.size(stor5[arg1].field_264)
    call stor5[arg1].field_264.transferTokens(uint256 rg1, uint256 rg2) with:
         gas gas_remaining wei
        args arg2, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_921377fd(?) payable {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    if adminAddress != msg.sender:
        revert with 0, 'Not admin'
    require arg1 < stor5.length
    require ext_code.size(stor5[arg1].field_264)
    call stor5[arg1].field_264.0xaa62784 with:
         gas gas_remaining wei
        args arg2, Array(len=arg3.length, data=arg3[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_389735ab(?) payable {
    require calldata.size - 4 >= 96
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Not Owner'
    if not arg3:
        revert with 0, 'Zero address'
    require arg1 < stor5.length
    require ext_code.size(stor5[arg1].field_264)
    call stor5[arg1].field_264 with:
         gas gas_remaining wei
        args Array(len=arg2.length, data=arg2[all]), address(arg3)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_f24130dc(?) payable {
    require calldata.size - 4 >= 64
    if adminAddress != msg.sender:
        revert with 0, 'Not admin'
    require arg2 < stor5.length
    require ext_code.size(stor5[arg2].field_264)
    call stor5[arg2].field_264.0xfae408a with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(escrowContractAddress)
    call escrowContractAddress.0xf24130dc with:
         gas gas_remaining wei
        args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_944378e5(?) payable {
    require calldata.size - 4 >= 128
    if adminAddress != msg.sender:
        revert with 0, 'Not admin'
    require arg1 < stor5.length
    require ext_code.size(stor5[arg1].field_264)
    call stor5[arg1].field_264.0x80e85ad with:
         gas gas_remaining wei
        args arg2, address(arg3), arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(escrowContractAddress)
    call escrowContractAddress.0x4edfb6b1 with:
         gas gas_remaining wei
        args 0, uint32(arg1), address(arg3), arg4, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_ae10441a(?) payable {
    require calldata.size - 4 >= 64
    if adminAddress != msg.sender:
        revert with 0, 'Not admin'
    require ext_code.size(escrowContractAddress)
    call escrowContractAddress.0xae10441a with:
         gas gas_remaining wei
        args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg2 < stor5.length
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.0x23b872dd with:
         gas gas_remaining wei
        args escrowContractAddress, stor5[arg2].field_256, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 34, code.data[14502 len 34], mem[198 len 30]
    require ext_code.size(stor5[arg2].field_264)
    call stor5[arg2].field_264.receiveTokens(uint256 rg1) with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_1d7a4993(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < stor5.length
    mem[128] = stor5[arg1].field_0
    idx = 128
    s = 0
    while stor5[arg1].length + 96 > idx:
        mem[idx + 32] = stor5[(2 * arg1) + s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    require arg1 < stor5.length
    require ext_code.size(stor5[arg1].field_264)
    staticcall stor5[arg1].field_264.received() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg1 < stor5.length
    require ext_code.size(stor5[arg1].field_264)
    staticcall stor5[arg1].field_264.0x7ab71b7a with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg1 < stor5.length
    require ext_code.size(stor5[arg1].field_264)
    staticcall stor5[arg1].field_264.0x4d7c910e with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return Array(len=stor5[arg1].length, data=mem[128 len stor5[arg1].length]), 
           stor5[arg1].field_256,
           bool(stor5[arg1].field_256),
           ext_call.return_data[0],
           ext_call.return_data[0],
           ext_call.return_data[0]
}

function sub_c7dd11bd(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    if owner != msg.sender:
        revert with 0, 'Not Owner'
    if stor5.length >= 251:
        revert with 0, 'Channels limit reached'
    stor5.length++
    require stor5.length < stor5.length + 1
    stor5[stor5.length][].field_0 = Array(len=arg1.length, data=arg1[all])
    mem[ceil32(arg1.length) + 128 len 6637] = code.data[7865 len 6637]
    mem[ceil32(arg1.length) + 6765] = tokenContractAddress
    mem[ceil32(arg1.length) + 6797] = escrowContractAddress
    mem[ceil32(arg1.length) + 6829] = 96
    mem[ceil32(arg1.length) + 6861] = arg1.length
    mem[ceil32(arg1.length) + 6893 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    if not arg1.length % 32:
        create contract with 0 wei
                        code: Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), code.data[arg1.length + -ceil32(arg1.length) + 7897 len -arg1.length + ceil32(arg1.length) + 6605], tokenContractAddress, escrowContractAddress, 96, arg1.length, Mask(8 * arg1.length, -(8 * arg1.length) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * arg1.length) - 256
    else:
        mem[floor32(arg1.length) + ceil32(arg1.length) + 6893] = mem[floor32(arg1.length) + ceil32(arg1.length) + -(arg1.length % 32) + 6925 len arg1.length % 32]
        create contract with 0 wei
                        code: Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), code.data[arg1.length + -ceil32(arg1.length) + 7897 len -arg1.length + ceil32(arg1.length) + 6605], tokenContractAddress, escrowContractAddress, 96, arg1.length, Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + 6893 len floor32(arg1.length) + -ceil32(arg1.length) + 32]
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    require stor5.length < stor5.length
    stor5[stor5.length].field_264 = address(create.new_address)
    mem[ceil32(arg1.length) + 128] = 32
    mem[ceil32(arg1.length) + 160] = arg1.length
    mem[ceil32(arg1.length) + 192 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    if not arg1.length % 32:
        emit 0x3a4a1e8c: Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len ceil32(arg1.length) + -arg1.length + 32], Mask(8 * arg1.length, -(8 * arg1.length) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * arg1.length) - 256, stor5.length, stor5[stor5.length].field_264
    else:
        mem[floor32(arg1.length) + ceil32(arg1.length) + 192] = mem[floor32(arg1.length) + ceil32(arg1.length) + -(arg1.length % 32) + 224 len arg1.length % 32]
        emit 0x3a4a1e8c: Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len ceil32(arg1.length) + -arg1.length + 32], Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + 192 len floor32(arg1.length) + -ceil32(arg1.length) + 32], stor5.length, stor5[stor5.length].field_264
}



}
