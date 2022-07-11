contract main {




// =====================  Runtime code  =====================


mapping of uint8 stor0;
address stor1;
address stor2;
address stor3;

function _admins(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor0[arg1])
}

function k() {
    if bool(stor0[address(msg.sender)]) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'This address can not call this function.'
    selfdestruct(msg.sender)
}

function _fallback() payable {
    revert
}

function setNft(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if bool(stor0[address(msg.sender)]) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'This address can not call this function.'
    stor3 = arg1
}

function sub_1f47f01a(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if bool(stor0[address(msg.sender)]) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'This address can not call this function.'
    stor2 = address(arg1)
}

function sub_58d745b5(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if bool(stor0[address(msg.sender)]) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'This address can not call this function.'
    stor1 = address(arg1)
}

function sub_294fb709(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if bool(stor0[address(msg.sender)]) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'This address can not call this function.'
    stor0[address(arg1)] = uint8(bool(arg2))
}

function onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    return 0x150b7a0200000000000000000000000000000000000000000000000000000000
}

function sub_38e5178d(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    if bool(stor0[address(msg.sender)]) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'This address can not call this function.'
    require ext_code.size(stor3)
    call stor3.0x23b872dd with:
         gas gas_remaining wei
        args address(this.address), address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_d67170c5(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if bool(stor0[address(msg.sender)]) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'This address can not call this function.'
    require ext_code.size(0xe9e7cea3dedca5984780bafc599bd69add087d56)
    call 0xe9e7cea3dedca5984780bafc599bd69add087d56.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), 100000000000000 * 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_0c6d3e2c(?) {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == arg4
    if bool(stor0[address(msg.sender)]) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'This address can not call this function.'
    if not address(arg3):
        revert with 0, 'recipient is zero.'
    if address(arg2) == this.address:
        if not address(arg1):
            call address(arg3) with:
               value arg4 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        else:
            require ext_code.size(address(arg1))
            call address(arg1).0xa9059cbb with:
                 gas gas_remaining wei
                args address(arg3), arg4
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
    else:
        require ext_code.size(address(arg1))
        if arg4:
            call address(arg1).0x23b872dd with:
                 gas gas_remaining wei
                args address(arg2), address(arg3), arg4
        else:
            staticcall address(arg1).0x70a08231 with:
                    gas gas_remaining wei
                   args address(arg2)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            require ext_code.size(address(arg1))
            call address(arg1).0x23b872dd with:
                 gas gas_remaining wei
                args address(arg2), address(arg3), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_44924219(?) {
    mem[0] = msg.sender
    mem[32] = 0
    if bool(stor0[address(msg.sender)]) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'This address can not call this function.'
    require ext_code.size(stor2)
    call stor2.0x44924219 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[100] = this.address
    mem[132] = 0
    require ext_code.size(stor3)
    staticcall stor3.tokenOfOwnerByIndex(address arg1, uint256 arg2) with:
            gas gas_remaining wei
           args address(this.address), 0
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[ceil32(return_data.size) + 96] = 0x9507d39a00000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 100] = ext_call.return_data[0]
    require ext_code.size(stor1)
    staticcall stor1.get(uint256 arg1) with:
            gas gas_remaining wei
           args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 96
    require return_data.size >= 128
    _13 = mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32
    require mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 127 < ceil32(return_data.size) + return_data.size + 96
    _14 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96]
    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96] > test266151307():
        revert with 'NH{q', 65
    if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96]) + 97 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96]) + 97
    mem[(2 * ceil32(return_data.size)) + 96] = _14
    require _13 + (32 * _14) + 32 <= return_data.size
    idx = 0
    s = ceil32(return_data.size) + _13 + 128
    t = (2 * ceil32(return_data.size)) + 128
    while idx < _14:
        require mem[s] == mem[s + 28 len 4]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    _28 = mem[ceil32(return_data.size) + 128]
    require mem[ceil32(return_data.size) + 128] == mem[ceil32(return_data.size) + 128]
    _29 = mem[ceil32(return_data.size) + 160]
    require mem[ceil32(return_data.size) + 160] <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 160] + 127 < ceil32(return_data.size) + return_data.size + 96
    _30 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 160] + 96]
    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 160] + 96] > test266151307():
        revert with 'NH{q', 65
    if mem[64] + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 160] + 96]) + 1 > test266151307() or mem[64] + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 160] + 96]) + 1 < mem[64]:
        revert with 'NH{q', 65
    mem[mem[64]] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 160] + 96]
    require _29 + (32 * _30) + 32 <= return_data.size
    idx = 0
    s = ceil32(return_data.size) + _29 + 128
    t = mem[64] + 32
    while idx < _30:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require mem[ceil32(return_data.size) + 192] == mem[ceil32(return_data.size) + 192]
    if _28 < 4:
        revert with 0, 'XWG grade too low.'
    require ext_code.size(stor3)
    call stor3.0x23b872dd with:
         gas gas_remaining wei
        args address(this.address), msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
