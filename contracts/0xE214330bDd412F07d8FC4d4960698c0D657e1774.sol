contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_851fc685(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 96
    require cd[4] == address(cd[4])
    require cd[36] == cd[36]
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (64 * ('cd', 68).length) + 36 <= calldata.size
    idx = ('cd', 68).length
    while idx:
        require idx - 1 < ('cd', 68).length
        require cd[((64 * idx - 1) + cd[68] + 36)] == address(cd[((64 * idx - 1) + cd[68] + 36)])
        _19 = mem[64]
        mem[mem[64] + 36] = msg.sender
        mem[mem[64] + 68] = address(cd[((64 * idx - 1) + cd[68] + 36)])
        mem[mem[64] + 100] = cd[((64 * idx - 1) + cd[68] + 68)]
        _20 = mem[64]
        mem[mem[64]] = 100
        mem[64] = mem[64] + 132
        mem[_20 + 32] = mem[_20 + 36 len 28] or 0x23b872dd00000000000000000000000000000000000000000000000000000000
        _23 = mem[_20]
        s = 0
        while s < _23:
            mem[_19 + s + 132] = mem[_20 + s + 32]
            s = s + 32
            continue 
        if ceil32(_23) <= _23:
            call address(cd[4]).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _19 + _23 + -mem[64] + 128]
            if not return_data.size:
                require ext_call.success
                require mem[96] >= 32
                require mem[128] == bool(mem[128])
                require mem[128]
            else:
                _39 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_39] = return_data.size
                mem[_39 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                require ext_call.success
                require return_data.size >= 32
                require mem[_39 + 32] == bool(mem[_39 + 32])
                require mem[_39 + 32]
        else:
            mem[_19 + _23 + 132] = 0
            call address(cd[4]).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _19 + _23 + -mem[64] + 128]
            if not return_data.size:
                require ext_call.success
                require mem[96] >= 32
                require mem[128] == bool(mem[128])
                require mem[128]
            else:
                _41 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_41] = return_data.size
                mem[_41 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                require ext_call.success
                require return_data.size >= 32
                require mem[_41 + 32] == bool(mem[_41 + 32])
                require mem[_41 + 32]
        idx = idx - 1
        continue 
}



}
