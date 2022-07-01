contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;
address stor2;
mapping of uint256 sub_f9525c87;
mapping of uint8 stor4;
array of address sub_81404789;
address governanceAddress;

function governance() payable {
    return governanceAddress
}

function sub_6456ed88(?) payable {
    return sub_81404789.length
}

function sub_81404789(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_81404789.length
    return sub_81404789[arg1]
}

function sub_abca3791(?) payable {
    require calldata.size - 4 >= 32
    return bool(stor4[arg1])
}

function sub_f9525c87(?) payable {
    require calldata.size - 4 >= 32
    return sub_f9525c87[arg1]
}

function _fallback() payable {
    revert
}

function canClaimAmount(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(stor1)
    staticcall stor1.0x70a08231 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return (ext_call.return_data[0] / 10)
}

function sub_6dd91793(?) payable {
    if governanceAddress != msg.sender:
        revert with 0, 'forbid'
    require ext_code.size(stor0)
    staticcall stor0.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor0)
    call stor0.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_f011a9cf(?) payable {
    if governanceAddress != msg.sender:
        revert with 0, 'forbid'
    require ext_code.size(stor2)
    staticcall stor2.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor2)
    call stor2.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_6fac4668(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    if governanceAddress != msg.sender:
        revert with 0, 'forbid'
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 4
        stor4[mem[(32 * idx) + 140 len 20]] = 1
        idx = idx + 1
        continue 
}

function sub_fea53ee5(?) payable {
    if sub_f9525c87[address(msg.sender)] > 0:
        revert with 0, 'burned!'
    if bool(stor4[address(msg.sender)]) != 1:
        revert with 0, 'not in snapshot list'
    if ext_code.hash(msg.sender):
        if ext_code.hash(msg.sender) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
            revert with 0, 'forbid'
    require ext_code.size(stor0)
    staticcall stor0.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor0)
    call stor0.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor1)
    staticcall stor1.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor2)
    call stor2.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0] / 10
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    sub_f9525c87[address(msg.sender)] = (ext_call.return_data[0] / 10) + 1
    sub_81404789.length++
    sub_81404789[sub_81404789.length] = msg.sender
}



}
