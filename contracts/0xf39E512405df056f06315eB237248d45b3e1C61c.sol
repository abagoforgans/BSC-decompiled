contract main {




// =====================  Runtime code  =====================


uint256 sub_8f7af475;
uint256 sub_838de3ab;
address sub_f816a2b9Address;
address sub_83c96605Address;

function sub_838de3ab(?) payable {
    return sub_838de3ab
}

function sub_83c96605(?) payable {
    return sub_83c96605Address
}

function sub_8f7af475(?) payable {
    return sub_8f7af475
}

function sub_f816a2b9(?) payable {
    return sub_f816a2b9Address
}

function _fallback() payable {
    revert
}

function kill() payable {
    if 0xaf012ced19f7529b59320b191e7282ac57d70859 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Not your contract bro, go to aviddot.com if interested'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_d4278269(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == address(arg2)
    require arg3 == arg3
    require arg4 == address(arg4)
    if 0xaf012ced19f7529b59320b191e7282ac57d70859 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Not your contract bro, go to aviddot.com if interested'
    require ext_code.size(address(arg4))
    call address(arg4).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0x10ed43c718714eb63d5aa57b78b54704e256024e, 0x4b3b4ca85a86c47a098a223fffffffff
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(address(arg2))
    call address(arg2).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0x10ed43c718714eb63d5aa57b78b54704e256024e, 0x4b3b4ca85a86c47a098a223fffffffff
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    sub_838de3ab = arg1
    sub_f816a2b9Address = address(arg2)
    sub_8f7af475 = arg3
    sub_83c96605Address = address(arg4)
}

function sub_f3db5490(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if 0xaf012ced19f7529b59320b191e7282ac57d70859 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Not your contract bro, go to aviddot.com if interested'
    mem[96] = 2
    mem[64] = 192
    mem[128] = sub_83c96605Address
    mem[160] = sub_f816a2b9Address
    idx = 0
    while arg1 > idx:
        if block.timestamp > -61:
            revert with 'NH{q', 17
        _10 = mem[64]
        mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = sub_8f7af475
        mem[mem[64] + 36] = sub_838de3ab
        mem[mem[64] + 68] = 160
        _11 = mem[96]
        mem[mem[64] + 164] = mem[96]
        s = 0
        t = 128
        u = mem[64] + 196
        while s < _11:
            mem[u] = mem[t + 12 len 20]
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        mem[_10 + 100] = this.address
        mem[_10 + 132] = block.timestamp + 60
        require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
        call 0x10ed43c718714eb63d5aa57b78b54704e256024e.mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _10 + (32 * _11) + -mem[64] + 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx > -2:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_ae2b1cf0(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if 0xaf012ced19f7529b59320b191e7282ac57d70859 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Not your contract bro, go to aviddot.com if interested'
    mem[128] = sub_f816a2b9Address
    mem[160] = sub_83c96605Address
    require ext_code.size(sub_f816a2b9Address)
    staticcall sub_f816a2b9Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if block.timestamp > -61:
        revert with 'NH{q', 17
    mem[ceil32(return_data.size) + 192] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 196] = ext_call.return_data[0]
    idx = 0
    s = 128
    t = ceil32(return_data.size) + 388
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
    call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args ext_call.return_data[0], arg1, Array(len=2, data=mem[ceil32(return_data.size) + 388 len 64]), address(this.address), block.timestamp + 60
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_a75b02fd(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if 0xaf012ced19f7529b59320b191e7282ac57d70859 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Not your contract bro, go to aviddot.com if interested'
    require ext_code.size(address(arg1))
    call address(arg1).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, 0x4b3b4ca85a86c47a098a223fffffffff
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(address(arg1))
    call address(arg1).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(this.address), 0x4b3b4ca85a86c47a098a223fffffffff
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(address(arg1))
    call address(arg1).0x23b872dd with:
         gas gas_remaining wei
        args address(this.address), 0xaf012ced19f7529b59320b191e7282ac57d70859, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_d3b715b7(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if 0xaf012ced19f7529b59320b191e7282ac57d70859 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Not your contract bro, go to aviddot.com if interested'
    require ext_code.size(address(arg1))
    call address(arg1).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, 0x4b3b4ca85a86c47a098a223fffffffff
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(address(arg1))
    call address(arg1).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(this.address), 0x4b3b4ca85a86c47a098a223fffffffff
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(address(arg1))
    call address(arg1).0x23b872dd with:
         gas gas_remaining wei
        args address(this.address), 0xaf012ced19f7529b59320b191e7282ac57d70859, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}



}
