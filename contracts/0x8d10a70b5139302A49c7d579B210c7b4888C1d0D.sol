contract main {




// =====================  Runtime code  =====================


#
#  - sub_61a2456e(?)
#  - sub_7c00d96f(?)
#  - sub_b35c236a(?)
#  - sub_e0ef9598(?)
#
array of address stor0;
mapping of address stor1;
mapping of uint256 stor2;
mapping of uint256 stor3;
array of address stor4;
mapping of uint256 stor5;
mapping of uint8 stor6;

function _fallback() payable {
    revert
}

function sub_62221f31(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if this.address == msg.sender:
        require ext_code.size(address(arg1))
        staticcall address(arg1).allPairsLength() with:
                gas gas_remaining wei
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 96
        require return_data.size >= 32
        if ext_call.return_data[0]:
            idx = 0
            while idx < ext_call.return_data[0]:
                mem[mem[64] + 4] = idx
                require ext_code.size(address(arg1))
                staticcall address(arg1).allPairs(uint256 rg1) with:
                        gas gas_remaining wei
                       args idx
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _25 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_25] == mem[_25 + 12 len 20]
                mem[0] = mem[_25 + 12 len 20]
                mem[32] = 6
                stor6[mem[0]] = 1
                idx = idx + 1
                continue 
    else:
        if msg.sender != 0x9d201bb5da57460496f0d94afd60a5a13a3231d9:
            revert with 0, 'O_F'
        require ext_code.size(address(arg1))
        staticcall address(arg1).allPairsLength() with:
                gas gas_remaining wei
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 96
        require return_data.size >= 32
        if ext_call.return_data[0]:
            idx = 0
            while idx < ext_call.return_data[0]:
                mem[mem[64] + 4] = idx
                require ext_code.size(address(arg1))
                staticcall address(arg1).allPairs(uint256 rg1) with:
                        gas gas_remaining wei
                       args idx
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _26 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_26] == mem[_26 + 12 len 20]
                mem[0] = mem[_26 + 12 len 20]
                mem[32] = 6
                stor6[mem[0]] = 1
                idx = idx + 1
                continue 
}

function sub_3247d940(?) payable {
    require calldata.size - 4 >= 128
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    require ('cd', 100).length <= test266151307()
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    if msg.sender != this.address:
        if msg.sender != 0x9d201bb5da57460496f0d94afd60a5a13a3231d9:
            revert with 0, 'O_F'
    if not ('cd', 4).length:
        revert with 0, 'P_F'
    if ('cd', 4).length != ('cd', 36).length:
        revert with 0, 'P_F'
    if ('cd', 4).length != ('cd', 68).length:
        revert with 0, 'P_F'
    if ('cd', 4).length != ('cd', 100).length:
        revert with 0, 'P_F'
    if ('cd', 4).length:
        mem[128 len 32 * ('cd', 4).length] = code.data[20848 len 32 * ('cd', 4).length]
    stor0.length = ('cd', 4).length
    if not ('cd', 4).length:
        idx = 0
        while stor0.length > idx:
            stor0[idx] = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * ('cd', 4).length) + 128 > idx:
            stor0[s] = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 4).length) + 31) >> 5
        while stor0.length > idx:
            stor0[idx] = 0
            idx = idx + 1
            continue 
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        require idx < stor0.length
        stor0[idx] = address(cd[((32 * idx) + cd[4] + 36)])
        require idx < ('cd', 36).length
        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
        require idx < ('cd', 4).length
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        stor1[address(cd[((32 * idx) + cd[4] + 36)])] = address(cd[((32 * idx) + cd[36] + 36)])
        require idx < ('cd', 68).length
        require idx < ('cd', 4).length
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        stor2[address(cd[((32 * idx) + cd[4] + 36)])] = cd[((32 * idx) + cd[68] + 36)]
        require idx < ('cd', 100).length
        require idx < ('cd', 4).length
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 3
        stor3[address(cd[((32 * idx) + cd[4] + 36)])] = cd[((32 * idx) + cd[100] + 36)]
        idx = idx + 1
        continue 
}

function sub_ddfb3ccf(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if this.address == msg.sender:
        if not ('cd', 4).length:
            revert with 0, 'P_F'
        if ('cd', 4).length != ('cd', 36).length:
            revert with 0, 'P_F'
        mem[96] = ('cd', 4).length
        mem[64] = (32 * ('cd', 4).length) + 128
        if not ('cd', 4).length:
            stor4.length = ('cd', 4).length
            mem[0] = 4
            if not ('cd', 4).length:
                idx = 0
                while stor4.length > idx:
                    stor4[idx] = 0
                    idx = idx + 1
                    continue 
                idx = 0
                while idx < ('cd', 4).length:
                    require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                    require idx < ('cd', 36).length
                    require idx < stor4.length
                    require idx < ('cd', 4).length
                    require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                    mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
                    mem[32] = 5
                    stor5[address(cd[((32 * idx) + cd[4] + 36)])] = cd[((32 * idx) + cd[36] + 36)]
                    stor4[idx] = address(cd[((32 * idx) + cd[4] + 36)])
                    require idx < ('cd', 4).length
                    require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0xbf6527834dbb89cdc97a79fcd62e6c08b19f8ec0
                    require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                    staticcall address(cd[((32 * idx) + cd[4] + 36)]).0xdd62ed3e with:
                            gas gas_remaining wei
                           args address(this.address), 0xbf6527834dbb89cdc97a79fcd62e6c08b19f8ec0
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _213 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_213] != -1:
                        require idx < ('cd', 4).length
                        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                        mem[mem[64] + 4] = 0xbf6527834dbb89cdc97a79fcd62e6c08b19f8ec0
                        mem[mem[64] + 36] = -1
                        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                        call address(cd[((32 * idx) + cd[4] + 36)]).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args 0xbf6527834dbb89cdc97a79fcd62e6c08b19f8ec0, -1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _245 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_245] == bool(mem[_245])
                    idx = idx + 1
                    continue 
            else:
                s = 0
                idx = 128
                while (32 * ('cd', 4).length) + 128 > idx:
                    stor4[s] = mem[idx + 12 len 20]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = Mask(251, 0, (32 * ('cd', 4).length) + 31) >> 5
                while stor4.length > idx:
                    stor4[idx] = 0
                    idx = idx + 1
                    continue 
                idx = 0
                while idx < ('cd', 4).length:
                    require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                    require idx < ('cd', 36).length
                    require idx < stor4.length
                    require idx < ('cd', 4).length
                    require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                    mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
                    mem[32] = 5
                    stor5[address(cd[((32 * idx) + cd[4] + 36)])] = cd[((32 * idx) + cd[36] + 36)]
                    stor4[idx] = address(cd[((32 * idx) + cd[4] + 36)])
                    require idx < ('cd', 4).length
                    require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0xbf6527834dbb89cdc97a79fcd62e6c08b19f8ec0
                    require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                    staticcall address(cd[((32 * idx) + cd[4] + 36)]).0xdd62ed3e with:
                            gas gas_remaining wei
                           args address(this.address), 0xbf6527834dbb89cdc97a79fcd62e6c08b19f8ec0
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _285 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_285] != -1:
                        require idx < ('cd', 4).length
                        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                        mem[mem[64] + 4] = 0xbf6527834dbb89cdc97a79fcd62e6c08b19f8ec0
                        mem[mem[64] + 36] = -1
                        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                        call address(cd[((32 * idx) + cd[4] + 36)]).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args 0xbf6527834dbb89cdc97a79fcd62e6c08b19f8ec0, -1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _301 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_301] == bool(mem[_301])
                    idx = idx + 1
                    continue 
        else:
            mem[128 len 32 * ('cd', 4).length] = code.data[20848 len 32 * ('cd', 4).length]
            stor4.length = ('cd', 4).length
            mem[0] = 4
            if not ('cd', 4).length:
                idx = 0
                while stor4.length > idx:
                    stor4[idx] = 0
                    idx = idx + 1
                    continue 
                idx = 0
                while idx < ('cd', 4).length:
                    require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                    require idx < ('cd', 36).length
                    require idx < stor4.length
                    require idx < ('cd', 4).length
                    require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                    mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
                    mem[32] = 5
                    stor5[address(cd[((32 * idx) + cd[4] + 36)])] = cd[((32 * idx) + cd[36] + 36)]
                    stor4[idx] = address(cd[((32 * idx) + cd[4] + 36)])
                    require idx < ('cd', 4).length
                    require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0xbf6527834dbb89cdc97a79fcd62e6c08b19f8ec0
                    require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                    staticcall address(cd[((32 * idx) + cd[4] + 36)]).0xdd62ed3e with:
                            gas gas_remaining wei
                           args address(this.address), 0xbf6527834dbb89cdc97a79fcd62e6c08b19f8ec0
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _214 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_214] != -1:
                        require idx < ('cd', 4).length
                        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                        mem[mem[64] + 4] = 0xbf6527834dbb89cdc97a79fcd62e6c08b19f8ec0
                        mem[mem[64] + 36] = -1
                        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                        call address(cd[((32 * idx) + cd[4] + 36)]).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args 0xbf6527834dbb89cdc97a79fcd62e6c08b19f8ec0, -1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _246 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_246] == bool(mem[_246])
                    idx = idx + 1
                    continue 
            else:
                s = 0
                idx = 128
                while (32 * ('cd', 4).length) + 128 > idx:
                    stor4[s] = mem[idx + 12 len 20]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = Mask(251, 0, (32 * ('cd', 4).length) + 31) >> 5
                while stor4.length > idx:
                    stor4[idx] = 0
                    idx = idx + 1
                    continue 
                idx = 0
                while idx < ('cd', 4).length:
                    require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                    require idx < ('cd', 36).length
                    require idx < stor4.length
                    require idx < ('cd', 4).length
                    require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                    mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
                    mem[32] = 5
                    stor5[address(cd[((32 * idx) + cd[4] + 36)])] = cd[((32 * idx) + cd[36] + 36)]
                    stor4[idx] = address(cd[((32 * idx) + cd[4] + 36)])
                    require idx < ('cd', 4).length
                    require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0xbf6527834dbb89cdc97a79fcd62e6c08b19f8ec0
                    require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                    staticcall address(cd[((32 * idx) + cd[4] + 36)]).0xdd62ed3e with:
                            gas gas_remaining wei
                           args address(this.address), 0xbf6527834dbb89cdc97a79fcd62e6c08b19f8ec0
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _286 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_286] != -1:
                        require idx < ('cd', 4).length
                        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                        mem[mem[64] + 4] = 0xbf6527834dbb89cdc97a79fcd62e6c08b19f8ec0
                        mem[mem[64] + 36] = -1
                        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                        call address(cd[((32 * idx) + cd[4] + 36)]).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args 0xbf6527834dbb89cdc97a79fcd62e6c08b19f8ec0, -1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _302 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_302] == bool(mem[_302])
                    idx = idx + 1
                    continue 
    else:
        if msg.sender != 0x9d201bb5da57460496f0d94afd60a5a13a3231d9:
            revert with 0, 'O_F'
        if not ('cd', 4).length:
            revert with 0, 'P_F'
        if ('cd', 4).length != ('cd', 36).length:
            revert with 0, 'P_F'
        mem[96] = ('cd', 4).length
        mem[64] = (32 * ('cd', 4).length) + 128
        if not ('cd', 4).length:
            stor4.length = ('cd', 4).length
            mem[0] = 4
            if not ('cd', 4).length:
                idx = 0
                while stor4.length > idx:
                    stor4[idx] = 0
                    idx = idx + 1
                    continue 
                idx = 0
                while idx < ('cd', 4).length:
                    require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                    require idx < ('cd', 36).length
                    require idx < stor4.length
                    require idx < ('cd', 4).length
                    require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                    mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
                    mem[32] = 5
                    stor5[address(cd[((32 * idx) + cd[4] + 36)])] = cd[((32 * idx) + cd[36] + 36)]
                    stor4[idx] = address(cd[((32 * idx) + cd[4] + 36)])
                    require idx < ('cd', 4).length
                    require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0xbf6527834dbb89cdc97a79fcd62e6c08b19f8ec0
                    require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                    staticcall address(cd[((32 * idx) + cd[4] + 36)]).0xdd62ed3e with:
                            gas gas_remaining wei
                           args address(this.address), 0xbf6527834dbb89cdc97a79fcd62e6c08b19f8ec0
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _215 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_215] != -1:
                        require idx < ('cd', 4).length
                        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                        mem[mem[64] + 4] = 0xbf6527834dbb89cdc97a79fcd62e6c08b19f8ec0
                        mem[mem[64] + 36] = -1
                        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                        call address(cd[((32 * idx) + cd[4] + 36)]).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args 0xbf6527834dbb89cdc97a79fcd62e6c08b19f8ec0, -1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _247 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_247] == bool(mem[_247])
                    idx = idx + 1
                    continue 
            else:
                s = 0
                idx = 128
                while (32 * ('cd', 4).length) + 128 > idx:
                    stor4[s] = mem[idx + 12 len 20]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = Mask(251, 0, (32 * ('cd', 4).length) + 31) >> 5
                while stor4.length > idx:
                    stor4[idx] = 0
                    idx = idx + 1
                    continue 
                idx = 0
                while idx < ('cd', 4).length:
                    require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                    require idx < ('cd', 36).length
                    require idx < stor4.length
                    require idx < ('cd', 4).length
                    require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                    mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
                    mem[32] = 5
                    stor5[address(cd[((32 * idx) + cd[4] + 36)])] = cd[((32 * idx) + cd[36] + 36)]
                    stor4[idx] = address(cd[((32 * idx) + cd[4] + 36)])
                    require idx < ('cd', 4).length
                    require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0xbf6527834dbb89cdc97a79fcd62e6c08b19f8ec0
                    require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                    staticcall address(cd[((32 * idx) + cd[4] + 36)]).0xdd62ed3e with:
                            gas gas_remaining wei
                           args address(this.address), 0xbf6527834dbb89cdc97a79fcd62e6c08b19f8ec0
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _287 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_287] != -1:
                        require idx < ('cd', 4).length
                        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                        mem[mem[64] + 4] = 0xbf6527834dbb89cdc97a79fcd62e6c08b19f8ec0
                        mem[mem[64] + 36] = -1
                        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                        call address(cd[((32 * idx) + cd[4] + 36)]).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args 0xbf6527834dbb89cdc97a79fcd62e6c08b19f8ec0, -1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _303 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_303] == bool(mem[_303])
                    idx = idx + 1
                    continue 
        else:
            mem[128 len 32 * ('cd', 4).length] = code.data[20848 len 32 * ('cd', 4).length]
            stor4.length = ('cd', 4).length
            mem[0] = 4
            if not ('cd', 4).length:
                idx = 0
                while stor4.length > idx:
                    stor4[idx] = 0
                    idx = idx + 1
                    continue 
                idx = 0
                while idx < ('cd', 4).length:
                    require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                    require idx < ('cd', 36).length
                    require idx < stor4.length
                    require idx < ('cd', 4).length
                    require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                    mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
                    mem[32] = 5
                    stor5[address(cd[((32 * idx) + cd[4] + 36)])] = cd[((32 * idx) + cd[36] + 36)]
                    stor4[idx] = address(cd[((32 * idx) + cd[4] + 36)])
                    require idx < ('cd', 4).length
                    require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0xbf6527834dbb89cdc97a79fcd62e6c08b19f8ec0
                    require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                    staticcall address(cd[((32 * idx) + cd[4] + 36)]).0xdd62ed3e with:
                            gas gas_remaining wei
                           args address(this.address), 0xbf6527834dbb89cdc97a79fcd62e6c08b19f8ec0
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _216 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_216] != -1:
                        require idx < ('cd', 4).length
                        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                        mem[mem[64] + 4] = 0xbf6527834dbb89cdc97a79fcd62e6c08b19f8ec0
                        mem[mem[64] + 36] = -1
                        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                        call address(cd[((32 * idx) + cd[4] + 36)]).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args 0xbf6527834dbb89cdc97a79fcd62e6c08b19f8ec0, -1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _248 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_248] == bool(mem[_248])
                    idx = idx + 1
                    continue 
            else:
                s = 0
                idx = 128
                while (32 * ('cd', 4).length) + 128 > idx:
                    stor4[s] = mem[idx + 12 len 20]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = Mask(251, 0, (32 * ('cd', 4).length) + 31) >> 5
                while stor4.length > idx:
                    stor4[idx] = 0
                    idx = idx + 1
                    continue 
                idx = 0
                while idx < ('cd', 4).length:
                    require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                    require idx < ('cd', 36).length
                    require idx < stor4.length
                    require idx < ('cd', 4).length
                    require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                    mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
                    mem[32] = 5
                    stor5[address(cd[((32 * idx) + cd[4] + 36)])] = cd[((32 * idx) + cd[36] + 36)]
                    stor4[idx] = address(cd[((32 * idx) + cd[4] + 36)])
                    require idx < ('cd', 4).length
                    require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0xbf6527834dbb89cdc97a79fcd62e6c08b19f8ec0
                    require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                    staticcall address(cd[((32 * idx) + cd[4] + 36)]).0xdd62ed3e with:
                            gas gas_remaining wei
                           args address(this.address), 0xbf6527834dbb89cdc97a79fcd62e6c08b19f8ec0
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _288 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_288] != -1:
                        require idx < ('cd', 4).length
                        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                        mem[mem[64] + 4] = 0xbf6527834dbb89cdc97a79fcd62e6c08b19f8ec0
                        mem[mem[64] + 36] = -1
                        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                        call address(cd[((32 * idx) + cd[4] + 36)]).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args 0xbf6527834dbb89cdc97a79fcd62e6c08b19f8ec0, -1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _304 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_304] == bool(mem[_304])
                    idx = idx + 1
                    continue 
}



}
