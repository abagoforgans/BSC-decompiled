contract main {




// =====================  Runtime code  =====================


address managerAddress;
uint256 sub_ed4e0ec1;

function getManager() payable {
    return managerAddress
}

function sub_ed4e0ec1(?) payable {
    return sub_ed4e0ec1
}

function _fallback() payable {
    revert
}

function changeManager(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if managerAddress != msg.sender:
        revert with 0, 'Caller is not manager'
    managerAddress = arg1
}

function sub_532fe3ff(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if managerAddress != msg.sender:
        revert with 0, 'Caller is not manager'
    idx = sub_ed4e0ec1
    while idx < arg1:
        require ext_code.size(0x7b8140c69a12f06d23503e5f4f3f09cc7ce0da25)
        staticcall 0x7b8140c69a12f06d23503e5f4f3f09cc7ce0da25.0xc72ea2d8 with:
                gas gas_remaining wei
               args idx
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _13 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        require mem[_13] == mem[_13]
        _15 = mem[_13 + 32]
        require mem[_13 + 32] == mem[_13 + 32]
        _16 = mem[_13 + 64]
        require mem[_13 + 64] == mem[_13 + 64]
        if not mem[_13]:
            mem[mem[64]] = 0x9de3351400000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = idx
            mem[mem[64] + 36] = 60
            mem[mem[64] + 68] = _15
            mem[mem[64] + 100] = _16
            require ext_code.size(0x7b8140c69a12f06d23503e5f4f3f09cc7ce0da25)
            call 0x7b8140c69a12f06d23503e5f4f3f09cc7ce0da25.0x9de33514 with:
                 gas gas_remaining wei
                args idx, 60, _15, _16
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    sub_ed4e0ec1 = arg1
}

function sub_e12ee9d6(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if managerAddress != msg.sender:
        revert with 0, 'Caller is not manager'
    idx = sub_ed4e0ec1
    while idx < arg1:
        require ext_code.size(0x7b8140c69a12f06d23503e5f4f3f09cc7ce0da25)
        staticcall 0x7b8140c69a12f06d23503e5f4f3f09cc7ce0da25.0xc72ea2d8 with:
                gas gas_remaining wei
               args idx
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _13 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        _14 = mem[_13]
        require mem[_13] == mem[_13]
        _15 = mem[_13 + 32]
        require mem[_13 + 32] == mem[_13 + 32]
        _16 = mem[_13 + 64]
        require mem[_13 + 64] == mem[_13 + 64]
        if not mem[_13]:
            mem[mem[64]] = 0x9de3351400000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = idx
            mem[mem[64] + 36] = _14
            mem[mem[64] + 68] = _15
            mem[mem[64] + 100] = _16
            require ext_code.size(0x7b8140c69a12f06d23503e5f4f3f09cc7ce0da25)
            call 0x7b8140c69a12f06d23503e5f4f3f09cc7ce0da25.0x9de33514 with:
                 gas gas_remaining wei
                args idx, _14, _15, _16
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    sub_ed4e0ec1 = arg1
}



}
