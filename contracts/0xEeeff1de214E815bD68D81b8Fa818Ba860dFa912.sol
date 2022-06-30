contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_8a0ced78(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    mem[100] = address(arg2)
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args address(arg2)
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] > 0:
        if ext_call.return_data[0] > test266151307():
            revert with 'NH{q', 65
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        mem[64] = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128
        if not ext_call.return_data[0]:
            idx = 0
            while idx < ext_call.return_data[0]:
                mem[mem[64] + 4] = address(arg2)
                mem[mem[64] + 36] = idx
                require ext_code.size(address(arg1))
                staticcall address(arg1).tokenOfOwnerByIndex(address arg1, uint256 arg2) with:
                        gas gas_remaining wei
                       args address(arg2), idx
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _38 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_38] == mem[_38]
                if idx >= mem[ceil32(return_data.size) + 96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + ceil32(return_data.size) + 128] = mem[_38]
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            _46 = mem[ceil32(return_data.size) + 96]
            idx = 0
            while idx < _46:
                if idx >= mem[ceil32(return_data.size) + 96]:
                    revert with 'NH{q', 50
                _50 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = address(arg2)
                mem[mem[64] + 36] = address(arg3)
                mem[mem[64] + 68] = _50
                require ext_code.size(address(arg1))
                call address(arg1).0x23b872dd with:
                     gas gas_remaining wei
                    args address(arg2), address(arg3), _50
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if idx == -1:
                    revert with 'NH{q', 17
                _46 = mem[ceil32(return_data.size) + 96]
                idx = idx + 1
                continue 
        else:
            mem[ceil32(return_data.size) + 128 len 32 * ext_call.return_data[0]] = call.data[calldata.size len 32 * ext_call.return_data[0]]
            idx = 0
            while idx < ext_call.return_data[0]:
                mem[mem[64] + 4] = address(arg2)
                mem[mem[64] + 36] = idx
                require ext_code.size(address(arg1))
                staticcall address(arg1).tokenOfOwnerByIndex(address arg1, uint256 arg2) with:
                        gas gas_remaining wei
                       args address(arg2), idx
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _39 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_39] == mem[_39]
                if idx >= mem[ceil32(return_data.size) + 96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + ceil32(return_data.size) + 128] = mem[_39]
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            _47 = mem[ceil32(return_data.size) + 96]
            idx = 0
            while idx < _47:
                if idx >= mem[ceil32(return_data.size) + 96]:
                    revert with 'NH{q', 50
                _52 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = address(arg2)
                mem[mem[64] + 36] = address(arg3)
                mem[mem[64] + 68] = _52
                require ext_code.size(address(arg1))
                call address(arg1).0x23b872dd with:
                     gas gas_remaining wei
                    args address(arg2), address(arg3), _52
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if idx == -1:
                    revert with 'NH{q', 17
                _47 = mem[ceil32(return_data.size) + 96]
                idx = idx + 1
                continue 
}



}
