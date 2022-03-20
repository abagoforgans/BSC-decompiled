contract main {




// =====================  Runtime code  =====================


address exAddress;
uint256 stor0;
address sub_6ae76d4fAddress;
uint256 key;
address stor3;

function key() payable {
    return key
}

function sub_6ae76d4f(?) payable {
    return sub_6ae76d4fAddress
}

function ex() payable {
    return address(exAddress)
}

function _fallback() payable {
    revert
}

function sub_f722bec1(?) payable {
    require calldata.size - 4 >= 64
    return address(sha3(0, this.address, arg1 + arg2, sha3(code.data[3489 len 4098])))
}

function remove() payable {
    if stor3 != msg.sender:
        revert with 0, 'only factory'
    require ext_code.size(sub_6ae76d4fAddress)
    staticcall sub_6ae76d4fAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_6ae76d4fAddress)
    call sub_6ae76d4fAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_2351f51b(?) payable {
    require calldata.size - 4 >= 128
    if not uint32(ext_code.size(address(sha3(0, this.address, msg.sender + arg4, sha3(code.data[3489 len 4098]))))):
        create2 contract with 0 wei
                        salt: (msg.sender + arg4)
                        code: code.data[3489 len 4098]
        mem[4601 len 192] = 310925036, address(arg1) << 64, 0, address(arg2), address(arg3), key, 1, 0
        mem[4821 len 4] = 0
        call address(create2.new_address).0x1 with:
             gas gas_remaining wei
            args Mask(1504, -1280, 310925036, address(arg1) << 64, 0, address(arg2), address(arg3), key, 1, 0) << 1280, mem[4793 len 4]
        if not return_data.size:
            call address(create2.new_address) with:
               funct Mask(32, -320, 310925036, address(arg1) << 64, 0, address(arg2), address(arg3), key, 1, 0) << 320
                 gas gas_remaining wei
                args Mask(224, 0, stor0), Mask(32, -576, 310925036, address(arg1) << 64, 0, address(arg2), address(arg3), key, 1, 0) << 576
        else:
            call address(create2.new_address) with:
                 gas gas_remaining wei
                args Mask(224, 0, stor0), mem[ceil32(return_data.size) + 4702 len 4]
        sub_6ae76d4fAddress = arg2
}

function run(address arg1, uint256 arg2) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    mem[100] = this.address
    require ext_code.size(sub_6ae76d4fAddress)
    staticcall sub_6ae76d4fAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    idx = arg2
    while idx > 0:
        mem[mem[64] + 4] = arg1
        require ext_code.size(sub_6ae76d4fAddress)
        call sub_6ae76d4fAddress.0xa9059cbb with:
             gas gas_remaining wei
            args address(arg1), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        _23 = mem[64]
        mem[mem[64] + 36] = idx
        mem[mem[64] + 68] = ext_call.return_data[0]
        _24 = mem[64]
        mem[mem[64]] = 68
        mem[64] = mem[64] + 100
        mem[_24 + 32] = mem[_24 + 36 len 28] or 0x7b0472f000000000000000000000000000000000000000000000000000000000
        _27 = mem[_24]
        t = _24 + 32
        u = mem[64]
        s = mem[_24]
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[mem[64] + floor32(mem[_24])] = mem[_24 + floor32(mem[_24]) + -(mem[_24] % 32) + 64 len mem[_24] % 32] or Mask(8 * -(mem[_24] % 32) + 32, -(8 * -(mem[_24] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_24])])
        call arg1.mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _27 + _23 + -mem[64] + 96]
        if return_data.size:
            _37 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_37] = return_data.size
            mem[_37 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        idx = idx - 1
        continue 
}



}
