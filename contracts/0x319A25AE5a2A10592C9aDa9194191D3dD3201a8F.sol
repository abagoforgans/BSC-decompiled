contract main {




// =====================  Runtime code  =====================


address sub_ead88dbcAddress;
address sub_d5bfbe4cAddress;
address WBNBAddress;
address stor3;

function WBNB() {
    return WBNBAddress
}

function sub_d5bfbe4c(?) {
    return sub_d5bfbe4cAddress
}

function sub_ead88dbc(?) {
    return sub_ead88dbcAddress
}

function _fallback() payable {
    revert
}

function isOwner() {
    return (msg.sender == stor3)
}

function sub_dd9a05be(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= 4294967296
    require cd[36] + 36 <= calldata.size
    require ('cd', 36).length <= 4294967296 and cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if stor3 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0x5446756e6374696f6e2061636365737369626c65206f6e6c7920627920746865206f776e65722021,
                    mem[204 len 24]
    mem[96] = 2
    require 0 < ('cd', 36).length
    mem[128] = address(('cd', 36)[0])
    require 1 < ('cd', 36).length
    mem[160] = address(('cd', 36)[1])
    require 0 < ('cd', 4).length
    mem[192] = 2
    mem[64] = 288
    mem[224 len 64] = call.data[calldata.size len 64]
    mem[224] = msg.value
    idx = 0
    while idx < 1:
        require idx < 2
        _3023 = mem[(32 * idx) + 128]
        require idx + 1 < 2
        _3032 = mem[(32 * idx + 1) + 128]
        if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
            revert with 0, 32, 35, 0x2150616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[391 len 29]
        if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
            if not mem[(32 * idx) + 140 len 20]:
                revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
            require ext_code.size(address(('cd', 4)[0]))
            staticcall address(('cd', 4)[0]).getReserves() with:
                    gas gas_remaining wei
            mem[288 len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require idx < 2
            if mem[(32 * idx) + 224] <= 0:
                revert with 0, 32, 41, 0xfe50616e63616b654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e, mem[397 len 23]
            if address(_3023) == address(_3023):
                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                    revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[394 len 26]
                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                    revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[394 len 26]
                if 9975 * mem[(32 * idx) + 224] / 9975 != mem[(32 * idx) + 224]:
                    revert with 0, 'ds-math-mul-overflow'
                if not Mask(112, 0, ext_call.return_data[32]):
                    if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'ds-math-mul-overflow'
                    if (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + 224]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'ds-math-add-overflow'
                    require (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + 224])
                    require idx + 1 < 2
                    mem[(32 * idx + 1) + 224] = 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + 224])
                else:
                    require Mask(112, 0, ext_call.return_data[32])
                    if 9975 * mem[(32 * idx) + 224] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 9975 * mem[(32 * idx) + 224]:
                        revert with 0, 'ds-math-mul-overflow'
                    if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'ds-math-mul-overflow'
                    if (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + 224]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'ds-math-add-overflow'
                    require (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + 224])
                    require idx + 1 < 2
                    mem[(32 * idx + 1) + 224] = 9975 * mem[(32 * idx) + 224] * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + 224])
            else:
                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                    revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[394 len 26]
                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                    revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[394 len 26]
                if 9975 * mem[(32 * idx) + 224] / 9975 != mem[(32 * idx) + 224]:
                    revert with 0, 'ds-math-mul-overflow'
                if not Mask(112, 0, ext_call.return_data[0]):
                    if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'ds-math-mul-overflow'
                    if (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + 224]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'ds-math-add-overflow'
                    require (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + 224])
                    require idx + 1 < 2
                    mem[(32 * idx + 1) + 224] = 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + 224])
                else:
                    require Mask(112, 0, ext_call.return_data[0])
                    if 9975 * mem[(32 * idx) + 224] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 9975 * mem[(32 * idx) + 224]:
                        revert with 0, 'ds-math-mul-overflow'
                    if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'ds-math-mul-overflow'
                    if (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + 224]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'ds-math-add-overflow'
                    require (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + 224])
                    require idx + 1 < 2
                    mem[(32 * idx + 1) + 224] = 9975 * mem[(32 * idx) + 224] * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + 224])
        else:
            if not mem[(32 * idx + 1) + 140 len 20]:
                revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
            require ext_code.size(address(('cd', 4)[0]))
            staticcall address(('cd', 4)[0]).getReserves() with:
                    gas gas_remaining wei
            mem[288 len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require idx < 2
            if mem[(32 * idx) + 224] <= 0:
                revert with 0, 32, 41, 0xfe50616e63616b654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e, mem[397 len 23]
            if address(_3032) == address(_3023):
                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                    revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[394 len 26]
                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                    revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[394 len 26]
                if 9975 * mem[(32 * idx) + 224] / 9975 != mem[(32 * idx) + 224]:
                    revert with 0, 'ds-math-mul-overflow'
                if not Mask(112, 0, ext_call.return_data[32]):
                    if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'ds-math-mul-overflow'
                    if (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + 224]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'ds-math-add-overflow'
                    require (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + 224])
                    require idx + 1 < 2
                    mem[(32 * idx + 1) + 224] = 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + 224])
                else:
                    require Mask(112, 0, ext_call.return_data[32])
                    if 9975 * mem[(32 * idx) + 224] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 9975 * mem[(32 * idx) + 224]:
                        revert with 0, 'ds-math-mul-overflow'
                    if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'ds-math-mul-overflow'
                    if (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + 224]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'ds-math-add-overflow'
                    require (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + 224])
                    require idx + 1 < 2
                    mem[(32 * idx + 1) + 224] = 9975 * mem[(32 * idx) + 224] * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + 224])
            else:
                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                    revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[394 len 26]
                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                    revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[394 len 26]
                if 9975 * mem[(32 * idx) + 224] / 9975 != mem[(32 * idx) + 224]:
                    revert with 0, 'ds-math-mul-overflow'
                if not Mask(112, 0, ext_call.return_data[0]):
                    if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'ds-math-mul-overflow'
                    if (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + 224]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'ds-math-add-overflow'
                    require (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + 224])
                    require idx + 1 < 2
                    mem[(32 * idx + 1) + 224] = 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + 224])
                else:
                    require Mask(112, 0, ext_call.return_data[0])
                    if 9975 * mem[(32 * idx) + 224] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 9975 * mem[(32 * idx) + 224]:
                        revert with 0, 'ds-math-mul-overflow'
                    if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'ds-math-mul-overflow'
                    if (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + 224]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'ds-math-add-overflow'
                    require (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + 224])
                    require idx + 1 < 2
                    mem[(32 * idx + 1) + 224] = 9975 * mem[(32 * idx) + 224] * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + 224])
        idx = idx + 1
        continue 
    require ext_code.size(WBNBAddress)
    call WBNBAddress.0xd0e30db0 with:
       value msg.value wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require 0 < ('cd', 4).length
    if uint64(('cd', 36)[0]) << 96 != WBNBAddress:
        revert with 0, 'PancakeRouter: INVALID_PATH'
    mem[292] = address(('cd', 4)[0])
    mem[324] = msg.value
    require ext_code.size(WBNBAddress)
    call WBNBAddress.0xa9059cbb with:
         gas gas_remaining wei
        args address(('cd', 4)[0]), msg.value
    mem[288] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    idx = 0
    while idx < 1:
        require idx < mem[96]
        require idx + 1 < mem[96]
        if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
            revert with 0, 32, 35, 0x2150616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 103 len 29]
        if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
            if not mem[(32 * idx) + 140 len 20]:
                revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
            require idx + 1 < mem[192]
            _6067 = mem[(32 * idx + 1) + 224]
            if mem[(32 * idx) + 140 len 20] == mem[(32 * idx) + 140 len 20]:
                if idx < mem[96] - 2:
                    _6115 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_6115 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_6115 + 36] = 0
                    mem[_6115 + 68] = _6067
                    mem[_6115 + 100] = address(('cd', 4)[0])
                    mem[_6115 + 132] = 128
                    mem[_6115 + 164] = mem[_6115]
                    s = 0
                    while s < mem[_6115]:
                        mem[s + _6115 + 196] = mem[s + _6115 + 32]
                        s = s + 32
                        continue 
                    if not mem[_6115] % 32:
                        require ext_code.size(address(('cd', 4)[0]))
                        call address(('cd', 4)[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, _6067, address(('cd', 4)[0]), 128, mem[_6115 + 164 len mem[_6115] + 32]
                    else:
                        mem[floor32(mem[_6115]) + _6115 + 196] = mem[floor32(mem[_6115]) + _6115 + -(mem[_6115] % 32) + 228 len mem[_6115] % 32]
                        require ext_code.size(address(('cd', 4)[0]))
                        call address(('cd', 4)[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, _6067, address(('cd', 4)[0]), 128, mem[_6115], mem[_6115 + 196 len floor32(mem[_6115]) + 32]
                else:
                    _6119 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_6119 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_6119 + 36] = 0
                    mem[_6119 + 68] = _6067
                    mem[_6119 + 100] = this.address
                    mem[_6119 + 132] = 128
                    mem[_6119 + 164] = mem[_6119]
                    s = 0
                    while s < mem[_6119]:
                        mem[s + _6119 + 196] = mem[s + _6119 + 32]
                        s = s + 32
                        continue 
                    if not mem[_6119] % 32:
                        require ext_code.size(address(('cd', 4)[0]))
                        call address(('cd', 4)[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, _6067, address(this.address), 128, mem[_6119 + 164 len mem[_6119] + 32]
                    else:
                        mem[floor32(mem[_6119]) + _6119 + 196] = mem[floor32(mem[_6119]) + _6119 + -(mem[_6119] % 32) + 228 len mem[_6119] % 32]
                        require ext_code.size(address(('cd', 4)[0]))
                        call address(('cd', 4)[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, _6067, address(this.address), 128, mem[_6119], mem[_6119 + 196 len floor32(mem[_6119]) + 32]
            else:
                if idx < mem[96] - 2:
                    _6123 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_6123 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_6123 + 36] = _6067
                    mem[_6123 + 68] = 0
                    mem[_6123 + 100] = address(('cd', 4)[0])
                    mem[_6123 + 132] = 128
                    mem[_6123 + 164] = mem[_6123]
                    s = 0
                    while s < mem[_6123]:
                        mem[s + _6123 + 196] = mem[s + _6123 + 32]
                        s = s + 32
                        continue 
                    if not mem[_6123] % 32:
                        require ext_code.size(address(('cd', 4)[0]))
                        call address(('cd', 4)[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args _6067, 0, address(('cd', 4)[0]), 128, mem[_6123 + 164 len mem[_6123] + 32]
                    else:
                        mem[floor32(mem[_6123]) + _6123 + 196] = mem[floor32(mem[_6123]) + _6123 + -(mem[_6123] % 32) + 228 len mem[_6123] % 32]
                        require ext_code.size(address(('cd', 4)[0]))
                        call address(('cd', 4)[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args _6067, 0, address(('cd', 4)[0]), 128, mem[_6123], mem[_6123 + 196 len floor32(mem[_6123]) + 32]
                else:
                    _6127 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_6127 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_6127 + 36] = _6067
                    mem[_6127 + 68] = 0
                    mem[_6127 + 100] = this.address
                    mem[_6127 + 132] = 128
                    mem[_6127 + 164] = mem[_6127]
                    s = 0
                    while s < mem[_6127]:
                        mem[s + _6127 + 196] = mem[s + _6127 + 32]
                        s = s + 32
                        continue 
                    if not mem[_6127] % 32:
                        require ext_code.size(address(('cd', 4)[0]))
                        call address(('cd', 4)[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args _6067, 0, address(this.address), 128, mem[_6127 + 164 len mem[_6127] + 32]
                    else:
                        mem[floor32(mem[_6127]) + _6127 + 196] = mem[floor32(mem[_6127]) + _6127 + -(mem[_6127] % 32) + 228 len mem[_6127] % 32]
                        require ext_code.size(address(('cd', 4)[0]))
                        call address(('cd', 4)[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args _6067, 0, address(this.address), 128, mem[_6127], mem[_6127 + 196 len floor32(mem[_6127]) + 32]
        else:
            if not mem[(32 * idx + 1) + 140 len 20]:
                revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
            require idx + 1 < mem[192]
            _6068 = mem[(32 * idx + 1) + 224]
            if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                if idx < mem[96] - 2:
                    _6131 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_6131 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_6131 + 36] = 0
                    mem[_6131 + 68] = _6068
                    mem[_6131 + 100] = address(('cd', 4)[0])
                    mem[_6131 + 132] = 128
                    mem[_6131 + 164] = mem[_6131]
                    s = 0
                    while s < mem[_6131]:
                        mem[s + _6131 + 196] = mem[s + _6131 + 32]
                        s = s + 32
                        continue 
                    if not mem[_6131] % 32:
                        require ext_code.size(address(('cd', 4)[0]))
                        call address(('cd', 4)[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, _6068, address(('cd', 4)[0]), 128, mem[_6131 + 164 len mem[_6131] + 32]
                    else:
                        mem[floor32(mem[_6131]) + _6131 + 196] = mem[floor32(mem[_6131]) + _6131 + -(mem[_6131] % 32) + 228 len mem[_6131] % 32]
                        require ext_code.size(address(('cd', 4)[0]))
                        call address(('cd', 4)[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, _6068, address(('cd', 4)[0]), 128, mem[_6131], mem[_6131 + 196 len floor32(mem[_6131]) + 32]
                else:
                    _6135 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_6135 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_6135 + 36] = 0
                    mem[_6135 + 68] = _6068
                    mem[_6135 + 100] = this.address
                    mem[_6135 + 132] = 128
                    mem[_6135 + 164] = mem[_6135]
                    s = 0
                    while s < mem[_6135]:
                        mem[s + _6135 + 196] = mem[s + _6135 + 32]
                        s = s + 32
                        continue 
                    if not mem[_6135] % 32:
                        require ext_code.size(address(('cd', 4)[0]))
                        call address(('cd', 4)[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, _6068, address(this.address), 128, mem[_6135 + 164 len mem[_6135] + 32]
                    else:
                        mem[floor32(mem[_6135]) + _6135 + 196] = mem[floor32(mem[_6135]) + _6135 + -(mem[_6135] % 32) + 228 len mem[_6135] % 32]
                        require ext_code.size(address(('cd', 4)[0]))
                        call address(('cd', 4)[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, _6068, address(this.address), 128, mem[_6135], mem[_6135 + 196 len floor32(mem[_6135]) + 32]
            else:
                if idx < mem[96] - 2:
                    _6139 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_6139 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_6139 + 36] = _6068
                    mem[_6139 + 68] = 0
                    mem[_6139 + 100] = address(('cd', 4)[0])
                    mem[_6139 + 132] = 128
                    mem[_6139 + 164] = mem[_6139]
                    s = 0
                    while s < mem[_6139]:
                        mem[s + _6139 + 196] = mem[s + _6139 + 32]
                        s = s + 32
                        continue 
                    if not mem[_6139] % 32:
                        require ext_code.size(address(('cd', 4)[0]))
                        call address(('cd', 4)[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args _6068, 0, address(('cd', 4)[0]), 128, mem[_6139 + 164 len mem[_6139] + 32]
                    else:
                        mem[floor32(mem[_6139]) + _6139 + 196] = mem[floor32(mem[_6139]) + _6139 + -(mem[_6139] % 32) + 228 len mem[_6139] % 32]
                        require ext_code.size(address(('cd', 4)[0]))
                        call address(('cd', 4)[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args _6068, 0, address(('cd', 4)[0]), 128, mem[_6139], mem[_6139 + 196 len floor32(mem[_6139]) + 32]
                else:
                    _6143 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_6143 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_6143 + 36] = _6068
                    mem[_6143 + 68] = 0
                    mem[_6143 + 100] = this.address
                    mem[_6143 + 132] = 128
                    mem[_6143 + 164] = mem[_6143]
                    s = 0
                    while s < mem[_6143]:
                        mem[s + _6143 + 196] = mem[s + _6143 + 32]
                        s = s + 32
                        continue 
                    if not mem[_6143] % 32:
                        require ext_code.size(address(('cd', 4)[0]))
                        call address(('cd', 4)[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args _6068, 0, address(this.address), 128, mem[_6143 + 164 len mem[_6143] + 32]
                    else:
                        mem[floor32(mem[_6143]) + _6143 + 196] = mem[floor32(mem[_6143]) + _6143 + -(mem[_6143] % 32) + 228 len mem[_6143] % 32]
                        require ext_code.size(address(('cd', 4)[0]))
                        call address(('cd', 4)[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args _6068, 0, address(this.address), 128, mem[_6143], mem[_6143 + 196 len floor32(mem[_6143]) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
    require 1 < mem[96]
    _6031 = mem[160]
    mem[mem[64] + 4] = this.address
    mem[mem[64] + 36] = -1
    require ext_code.size(address(_6031))
    call address(_6031).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args this.address, -1
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 1 < mem[96]
    _6046 = mem[160]
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(_6046))
    staticcall address(_6046).0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    _6070 = mem[64]
    mem[mem[64]] = 2
    mem[64] = mem[64] + 96
    require 2 < ('cd', 36).length
    require 0 < mem[_6070]
    mem[_6070 + 32] = address(('cd', 36)[2])
    require 3 < ('cd', 36).length
    require 1 < mem[_6070]
    mem[_6070 + 64] = address(('cd', 36)[3])
    require 1 < ('cd', 4).length
    if mem[_6070] < 2:
        revert with 0, 'PancakeLibrary: INVALID_PATH'
    _6216 = mem[_6070]
    require mem[_6070] <= test266151307()
    mem[_6070 + 96] = mem[_6070]
    mem[64] = _6070 + (32 * mem[_6070]) + 128
    if not _6216:
        require 0 < mem[_6070 + 96]
        mem[_6070 + 128] = ext_call.return_data[0]
        _8775 = mem[_6070]
        idx = 0
        while idx < _8775 - 1:
            require idx < mem[_6070]
            _8820 = mem[(32 * idx) + _6070 + 32]
            require idx + 1 < mem[_6070]
            _8857 = mem[(32 * idx + 1) + _6070 + 32]
            if mem[(32 * idx) + _6070 + 44 len 20] == mem[(32 * idx + 1) + _6070 + 44 len 20]:
                revert with 0, 32, 35, 0x2150616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 103 len 29]
            if mem[(32 * idx) + _6070 + 44 len 20] < mem[(32 * idx + 1) + _6070 + 44 len 20]:
                if not mem[(32 * idx) + _6070 + 44 len 20]:
                    revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                require ext_code.size(address(('cd', 4)[1]))
                staticcall address(('cd', 4)[1]).getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require idx < mem[_6070 + 96]
                if mem[(32 * idx) + _6070 + 128] <= 0:
                    revert with 0, 
                                32,
                                41,
                                0xfe50616e63616b654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                mem[mem[64] + 109 len 23]
                if address(_8820) == address(_8820):
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                    if 9975 * mem[(32 * idx) + _6070 + 128] / 9975 != mem[(32 * idx) + _6070 + 128]:
                        revert with 0, 'ds-math-mul-overflow'
                    if not Mask(112, 0, ext_call.return_data[32]):
                        if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + _6070 + 128]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-add-overflow'
                        require (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + _6070 + 128])
                        require idx + 1 < mem[_6070 + 96]
                        mem[(32 * idx + 1) + _6070 + 128] = 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + _6070 + 128])
                    else:
                        require Mask(112, 0, ext_call.return_data[32])
                        if 9975 * mem[(32 * idx) + _6070 + 128] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 9975 * mem[(32 * idx) + _6070 + 128]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + _6070 + 128]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-add-overflow'
                        require (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + _6070 + 128])
                        require idx + 1 < mem[_6070 + 96]
                        mem[(32 * idx + 1) + _6070 + 128] = 9975 * mem[(32 * idx) + _6070 + 128] * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + _6070 + 128])
                else:
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                    if 9975 * mem[(32 * idx) + _6070 + 128] / 9975 != mem[(32 * idx) + _6070 + 128]:
                        revert with 0, 'ds-math-mul-overflow'
                    if not Mask(112, 0, ext_call.return_data[0]):
                        if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + _6070 + 128]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-add-overflow'
                        require (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + _6070 + 128])
                        require idx + 1 < mem[_6070 + 96]
                        mem[(32 * idx + 1) + _6070 + 128] = 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + _6070 + 128])
                    else:
                        require Mask(112, 0, ext_call.return_data[0])
                        if 9975 * mem[(32 * idx) + _6070 + 128] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 9975 * mem[(32 * idx) + _6070 + 128]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + _6070 + 128]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-add-overflow'
                        require (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + _6070 + 128])
                        require idx + 1 < mem[_6070 + 96]
                        mem[(32 * idx + 1) + _6070 + 128] = 9975 * mem[(32 * idx) + _6070 + 128] * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + _6070 + 128])
            else:
                if not mem[(32 * idx + 1) + _6070 + 44 len 20]:
                    revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                require ext_code.size(address(('cd', 4)[1]))
                staticcall address(('cd', 4)[1]).getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require idx < mem[_6070 + 96]
                if mem[(32 * idx) + _6070 + 128] <= 0:
                    revert with 0, 
                                32,
                                41,
                                0xfe50616e63616b654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                mem[mem[64] + 109 len 23]
                if address(_8857) == address(_8820):
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                    if 9975 * mem[(32 * idx) + _6070 + 128] / 9975 != mem[(32 * idx) + _6070 + 128]:
                        revert with 0, 'ds-math-mul-overflow'
                    if not Mask(112, 0, ext_call.return_data[32]):
                        if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + _6070 + 128]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-add-overflow'
                        require (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + _6070 + 128])
                        require idx + 1 < mem[_6070 + 96]
                        mem[(32 * idx + 1) + _6070 + 128] = 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + _6070 + 128])
                    else:
                        require Mask(112, 0, ext_call.return_data[32])
                        if 9975 * mem[(32 * idx) + _6070 + 128] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 9975 * mem[(32 * idx) + _6070 + 128]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + _6070 + 128]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-add-overflow'
                        require (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + _6070 + 128])
                        require idx + 1 < mem[_6070 + 96]
                        mem[(32 * idx + 1) + _6070 + 128] = 9975 * mem[(32 * idx) + _6070 + 128] * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + _6070 + 128])
                else:
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                    if 9975 * mem[(32 * idx) + _6070 + 128] / 9975 != mem[(32 * idx) + _6070 + 128]:
                        revert with 0, 'ds-math-mul-overflow'
                    if not Mask(112, 0, ext_call.return_data[0]):
                        if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + _6070 + 128]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-add-overflow'
                        require (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + _6070 + 128])
                        require idx + 1 < mem[_6070 + 96]
                        mem[(32 * idx + 1) + _6070 + 128] = 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + _6070 + 128])
                    else:
                        require Mask(112, 0, ext_call.return_data[0])
                        if 9975 * mem[(32 * idx) + _6070 + 128] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 9975 * mem[(32 * idx) + _6070 + 128]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + _6070 + 128]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-add-overflow'
                        require (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + _6070 + 128])
                        require idx + 1 < mem[_6070 + 96]
                        mem[(32 * idx + 1) + _6070 + 128] = 9975 * mem[(32 * idx) + _6070 + 128] * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + _6070 + 128])
            idx = idx + 1
            continue 
        require 0 < mem[_6070]
        _8855 = mem[_6070 + 32]
        require 0 < mem[_6070 + 96]
        _8875 = mem[_6070 + 128]
        mem[mem[64] + 4] = address(('cd', 4)[1])
        mem[mem[64] + 36] = _8875
        require ext_code.size(address(_8855))
        call address(_8855).0xa9059cbb with:
             gas gas_remaining wei
            args address(('cd', 4)[1]), _8875
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        _11387 = mem[_6070]
        idx = 0
        while idx < _11387 - 1:
            require idx < mem[_6070]
            require idx + 1 < mem[_6070]
            if mem[(32 * idx) + _6070 + 44 len 20] == mem[(32 * idx + 1) + _6070 + 44 len 20]:
                revert with 0, 32, 35, 0x2150616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 103 len 29]
            if mem[(32 * idx) + _6070 + 44 len 20] < mem[(32 * idx + 1) + _6070 + 44 len 20]:
                if not mem[(32 * idx) + _6070 + 44 len 20]:
                    revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                require idx + 1 < mem[_6070 + 96]
                _11484 = mem[(32 * idx + 1) + _6070 + 128]
                if mem[(32 * idx) + _6070 + 44 len 20] == mem[(32 * idx) + _6070 + 44 len 20]:
                    if idx < mem[_6070] - 2:
                        _11580 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_11580 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_11580 + 36] = 0
                        mem[_11580 + 68] = _11484
                        mem[_11580 + 100] = address(('cd', 4)[1])
                        mem[_11580 + 132] = 128
                        mem[_11580 + 164] = mem[_11580]
                        s = 0
                        while s < mem[_11580]:
                            mem[s + _11580 + 196] = mem[s + _11580 + 32]
                            s = s + 32
                            continue 
                        if not mem[_11580] % 32:
                            require ext_code.size(address(('cd', 4)[1]))
                            call address(('cd', 4)[1]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _11484, address(('cd', 4)[1]), 128, mem[_11580 + 164 len mem[_11580] + 32]
                        else:
                            mem[floor32(mem[_11580]) + _11580 + 196] = mem[floor32(mem[_11580]) + _11580 + -(mem[_11580] % 32) + 228 len mem[_11580] % 32]
                            require ext_code.size(address(('cd', 4)[1]))
                            call address(('cd', 4)[1]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _11484, address(('cd', 4)[1]), 128, mem[_11580], mem[_11580 + 196 len floor32(mem[_11580]) + 32]
                    else:
                        _11584 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_11584 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_11584 + 36] = 0
                        mem[_11584 + 68] = _11484
                        mem[_11584 + 100] = this.address
                        mem[_11584 + 132] = 128
                        mem[_11584 + 164] = mem[_11584]
                        s = 0
                        while s < mem[_11584]:
                            mem[s + _11584 + 196] = mem[s + _11584 + 32]
                            s = s + 32
                            continue 
                        if not mem[_11584] % 32:
                            require ext_code.size(address(('cd', 4)[1]))
                            call address(('cd', 4)[1]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _11484, address(this.address), 128, mem[_11584 + 164 len mem[_11584] + 32]
                        else:
                            mem[floor32(mem[_11584]) + _11584 + 196] = mem[floor32(mem[_11584]) + _11584 + -(mem[_11584] % 32) + 228 len mem[_11584] % 32]
                            require ext_code.size(address(('cd', 4)[1]))
                            call address(('cd', 4)[1]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _11484, address(this.address), 128, mem[_11584], mem[_11584 + 196 len floor32(mem[_11584]) + 32]
                else:
                    if idx < mem[_6070] - 2:
                        _11588 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_11588 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_11588 + 36] = _11484
                        mem[_11588 + 68] = 0
                        mem[_11588 + 100] = address(('cd', 4)[1])
                        mem[_11588 + 132] = 128
                        mem[_11588 + 164] = mem[_11588]
                        s = 0
                        while s < mem[_11588]:
                            mem[s + _11588 + 196] = mem[s + _11588 + 32]
                            s = s + 32
                            continue 
                        if not mem[_11588] % 32:
                            require ext_code.size(address(('cd', 4)[1]))
                            call address(('cd', 4)[1]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _11484, 0, address(('cd', 4)[1]), 128, mem[_11588 + 164 len mem[_11588] + 32]
                        else:
                            mem[floor32(mem[_11588]) + _11588 + 196] = mem[floor32(mem[_11588]) + _11588 + -(mem[_11588] % 32) + 228 len mem[_11588] % 32]
                            require ext_code.size(address(('cd', 4)[1]))
                            call address(('cd', 4)[1]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _11484, 0, address(('cd', 4)[1]), 128, mem[_11588], mem[_11588 + 196 len floor32(mem[_11588]) + 32]
                    else:
                        _11592 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_11592 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_11592 + 36] = _11484
                        mem[_11592 + 68] = 0
                        mem[_11592 + 100] = this.address
                        mem[_11592 + 132] = 128
                        mem[_11592 + 164] = mem[_11592]
                        s = 0
                        while s < mem[_11592]:
                            mem[s + _11592 + 196] = mem[s + _11592 + 32]
                            s = s + 32
                            continue 
                        if not mem[_11592] % 32:
                            require ext_code.size(address(('cd', 4)[1]))
                            call address(('cd', 4)[1]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _11484, 0, address(this.address), 128, mem[_11592 + 164 len mem[_11592] + 32]
                        else:
                            mem[floor32(mem[_11592]) + _11592 + 196] = mem[floor32(mem[_11592]) + _11592 + -(mem[_11592] % 32) + 228 len mem[_11592] % 32]
                            require ext_code.size(address(('cd', 4)[1]))
                            call address(('cd', 4)[1]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _11484, 0, address(this.address), 128, mem[_11592], mem[_11592 + 196 len floor32(mem[_11592]) + 32]
            else:
                if not mem[(32 * idx + 1) + _6070 + 44 len 20]:
                    revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                require idx + 1 < mem[_6070 + 96]
                _11485 = mem[(32 * idx + 1) + _6070 + 128]
                if mem[(32 * idx) + _6070 + 44 len 20] == mem[(32 * idx + 1) + _6070 + 44 len 20]:
                    if idx < mem[_6070] - 2:
                        _11596 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_11596 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_11596 + 36] = 0
                        mem[_11596 + 68] = _11485
                        mem[_11596 + 100] = address(('cd', 4)[1])
                        mem[_11596 + 132] = 128
                        mem[_11596 + 164] = mem[_11596]
                        s = 0
                        while s < mem[_11596]:
                            mem[s + _11596 + 196] = mem[s + _11596 + 32]
                            s = s + 32
                            continue 
                        if not mem[_11596] % 32:
                            require ext_code.size(address(('cd', 4)[1]))
                            call address(('cd', 4)[1]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _11485, address(('cd', 4)[1]), 128, mem[_11596 + 164 len mem[_11596] + 32]
                        else:
                            mem[floor32(mem[_11596]) + _11596 + 196] = mem[floor32(mem[_11596]) + _11596 + -(mem[_11596] % 32) + 228 len mem[_11596] % 32]
                            require ext_code.size(address(('cd', 4)[1]))
                            call address(('cd', 4)[1]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _11485, address(('cd', 4)[1]), 128, mem[_11596], mem[_11596 + 196 len floor32(mem[_11596]) + 32]
                    else:
                        _11600 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_11600 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_11600 + 36] = 0
                        mem[_11600 + 68] = _11485
                        mem[_11600 + 100] = this.address
                        mem[_11600 + 132] = 128
                        mem[_11600 + 164] = mem[_11600]
                        s = 0
                        while s < mem[_11600]:
                            mem[s + _11600 + 196] = mem[s + _11600 + 32]
                            s = s + 32
                            continue 
                        if not mem[_11600] % 32:
                            require ext_code.size(address(('cd', 4)[1]))
                            call address(('cd', 4)[1]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _11485, address(this.address), 128, mem[_11600 + 164 len mem[_11600] + 32]
                        else:
                            mem[floor32(mem[_11600]) + _11600 + 196] = mem[floor32(mem[_11600]) + _11600 + -(mem[_11600] % 32) + 228 len mem[_11600] % 32]
                            require ext_code.size(address(('cd', 4)[1]))
                            call address(('cd', 4)[1]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _11485, address(this.address), 128, mem[_11600], mem[_11600 + 196 len floor32(mem[_11600]) + 32]
                else:
                    if idx < mem[_6070] - 2:
                        _11604 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_11604 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_11604 + 36] = _11485
                        mem[_11604 + 68] = 0
                        mem[_11604 + 100] = address(('cd', 4)[1])
                        mem[_11604 + 132] = 128
                        mem[_11604 + 164] = mem[_11604]
                        s = 0
                        while s < mem[_11604]:
                            mem[s + _11604 + 196] = mem[s + _11604 + 32]
                            s = s + 32
                            continue 
                        if not mem[_11604] % 32:
                            require ext_code.size(address(('cd', 4)[1]))
                            call address(('cd', 4)[1]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _11485, 0, address(('cd', 4)[1]), 128, mem[_11604 + 164 len mem[_11604] + 32]
                        else:
                            mem[floor32(mem[_11604]) + _11604 + 196] = mem[floor32(mem[_11604]) + _11604 + -(mem[_11604] % 32) + 228 len mem[_11604] % 32]
                            require ext_code.size(address(('cd', 4)[1]))
                            call address(('cd', 4)[1]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _11485, 0, address(('cd', 4)[1]), 128, mem[_11604], mem[_11604 + 196 len floor32(mem[_11604]) + 32]
                    else:
                        _11608 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_11608 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_11608 + 36] = _11485
                        mem[_11608 + 68] = 0
                        mem[_11608 + 100] = this.address
                        mem[_11608 + 132] = 128
                        mem[_11608 + 164] = mem[_11608]
                        s = 0
                        while s < mem[_11608]:
                            mem[s + _11608 + 196] = mem[s + _11608 + 32]
                            s = s + 32
                            continue 
                        if not mem[_11608] % 32:
                            require ext_code.size(address(('cd', 4)[1]))
                            call address(('cd', 4)[1]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _11485, 0, address(this.address), 128, mem[_11608 + 164 len mem[_11608] + 32]
                        else:
                            mem[floor32(mem[_11608]) + _11608 + 196] = mem[floor32(mem[_11608]) + _11608 + -(mem[_11608] % 32) + 228 len mem[_11608] % 32]
                            require ext_code.size(address(('cd', 4)[1]))
                            call address(('cd', 4)[1]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _11485, 0, address(this.address), 128, mem[_11608], mem[_11608 + 196 len floor32(mem[_11608]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            continue 
        require 1 < mem[_6070]
        _11413 = mem[_6070 + 64]
        mem[mem[64] + 4] = this.address
        mem[mem[64] + 36] = -1
        require ext_code.size(address(_11413))
        call address(_11413).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args this.address, -1
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require 1 < mem[_6070]
        _11443 = mem[_6070 + 64]
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(_11443))
        staticcall address(_11443).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        _11491 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        require 4 < ('cd', 36).length
        require 0 < mem[_11491]
        mem[_11491 + 32] = address(('cd', 36)[4])
        require 5 < ('cd', 36).length
        require 1 < mem[_11491]
        mem[_11491 + 64] = address(('cd', 36)[5])
        require 2 < ('cd', 4).length
        if mem[_11491] < 2:
            revert with 0, 'PancakeLibrary: INVALID_PATH'
        _11783 = mem[_11491]
        require mem[_11491] <= test266151307()
        mem[_11491 + 96] = mem[_11491]
        mem[64] = _11491 + (32 * mem[_11491]) + 128
        if not _11783:
            require 0 < mem[_11491 + 96]
            mem[_11491 + 128] = ext_call.return_data[0]
            _13469 = mem[_11491]
            idx = 0
            while idx < _13469 - 1:
                require idx < mem[_11491]
                _13558 = mem[(32 * idx) + _11491 + 32]
                require idx + 1 < mem[_11491]
                _13631 = mem[(32 * idx + 1) + _11491 + 32]
                if mem[(32 * idx) + _11491 + 44 len 20] == mem[(32 * idx + 1) + _11491 + 44 len 20]:
                    revert with 0, 32, 35, 0x2150616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 103 len 29]
                if mem[(32 * idx) + _11491 + 44 len 20] < mem[(32 * idx + 1) + _11491 + 44 len 20]:
                    if not mem[(32 * idx) + _11491 + 44 len 20]:
                        revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                    require ext_code.size(address(('cd', 4)[2]))
                    staticcall address(('cd', 4)[2]).getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require idx < mem[_11491 + 96]
                    if mem[(32 * idx) + _11491 + 128] <= 0:
                        revert with 0, 
                                    32,
                                    41,
                                    0xfe50616e63616b654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                    mem[mem[64] + 109 len 23]
                    if address(_13558) == address(_13558):
                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                            revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                            revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                        if 9975 * mem[(32 * idx) + _11491 + 128] / 9975 != mem[(32 * idx) + _11491 + 128]:
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[32]):
                            if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + _11491 + 128]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + _11491 + 128])
                            require idx + 1 < mem[_11491 + 96]
                            mem[(32 * idx + 1) + _11491 + 128] = 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + _11491 + 128])
                        else:
                            require Mask(112, 0, ext_call.return_data[32])
                            if 9975 * mem[(32 * idx) + _11491 + 128] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 9975 * mem[(32 * idx) + _11491 + 128]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + _11491 + 128]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + _11491 + 128])
                            require idx + 1 < mem[_11491 + 96]
                            mem[(32 * idx + 1) + _11491 + 128] = 9975 * mem[(32 * idx) + _11491 + 128] * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + _11491 + 128])
                    else:
                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                            revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                            revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                        if 9975 * mem[(32 * idx) + _11491 + 128] / 9975 != mem[(32 * idx) + _11491 + 128]:
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[0]):
                            if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + _11491 + 128]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + _11491 + 128])
                            require idx + 1 < mem[_11491 + 96]
                            mem[(32 * idx + 1) + _11491 + 128] = 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + _11491 + 128])
                        else:
                            require Mask(112, 0, ext_call.return_data[0])
                            if 9975 * mem[(32 * idx) + _11491 + 128] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 9975 * mem[(32 * idx) + _11491 + 128]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + _11491 + 128]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + _11491 + 128])
                            require idx + 1 < mem[_11491 + 96]
                            mem[(32 * idx + 1) + _11491 + 128] = 9975 * mem[(32 * idx) + _11491 + 128] * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + _11491 + 128])
                else:
                    if not mem[(32 * idx + 1) + _11491 + 44 len 20]:
                        revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                    require ext_code.size(address(('cd', 4)[2]))
                    staticcall address(('cd', 4)[2]).getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require idx < mem[_11491 + 96]
                    if mem[(32 * idx) + _11491 + 128] <= 0:
                        revert with 0, 
                                    32,
                                    41,
                                    0xfe50616e63616b654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                    mem[mem[64] + 109 len 23]
                    if address(_13631) == address(_13558):
                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                            revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                            revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                        if 9975 * mem[(32 * idx) + _11491 + 128] / 9975 != mem[(32 * idx) + _11491 + 128]:
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[32]):
                            if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + _11491 + 128]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + _11491 + 128])
                            require idx + 1 < mem[_11491 + 96]
                            mem[(32 * idx + 1) + _11491 + 128] = 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + _11491 + 128])
                        else:
                            require Mask(112, 0, ext_call.return_data[32])
                            if 9975 * mem[(32 * idx) + _11491 + 128] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 9975 * mem[(32 * idx) + _11491 + 128]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + _11491 + 128]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + _11491 + 128])
                            require idx + 1 < mem[_11491 + 96]
                            mem[(32 * idx + 1) + _11491 + 128] = 9975 * mem[(32 * idx) + _11491 + 128] * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + _11491 + 128])
                    else:
                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                            revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                            revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                        if 9975 * mem[(32 * idx) + _11491 + 128] / 9975 != mem[(32 * idx) + _11491 + 128]:
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[0]):
                            if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + _11491 + 128]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + _11491 + 128])
                            require idx + 1 < mem[_11491 + 96]
                            mem[(32 * idx + 1) + _11491 + 128] = 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + _11491 + 128])
                        else:
                            require Mask(112, 0, ext_call.return_data[0])
                            if 9975 * mem[(32 * idx) + _11491 + 128] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 9975 * mem[(32 * idx) + _11491 + 128]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + _11491 + 128]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + _11491 + 128])
                            require idx + 1 < mem[_11491 + 96]
                            mem[(32 * idx + 1) + _11491 + 128] = 9975 * mem[(32 * idx) + _11491 + 128] * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + _11491 + 128])
                idx = idx + 1
                continue 
            require 0 < mem[_11491]
            _13629 = mem[_11491 + 32]
            require 0 < mem[_11491 + 96]
            _13669 = mem[_11491 + 128]
            mem[mem[64] + 4] = address(('cd', 4)[2])
            mem[mem[64] + 36] = _13669
            require ext_code.size(address(_13629))
            call address(_13629).0xa9059cbb with:
                 gas gas_remaining wei
                args address(('cd', 4)[2]), _13669
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            _15261 = mem[_11491]
            idx = 0
            while idx < _15261 - 1:
                require idx < mem[_11491]
                require idx + 1 < mem[_11491]
                if mem[(32 * idx) + _11491 + 44 len 20] == mem[(32 * idx + 1) + _11491 + 44 len 20]:
                    revert with 0, 32, 35, 0x2150616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 103 len 29]
                if mem[(32 * idx) + _11491 + 44 len 20] < mem[(32 * idx + 1) + _11491 + 44 len 20]:
                    if not mem[(32 * idx) + _11491 + 44 len 20]:
                        revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                    require idx + 1 < mem[_11491 + 96]
                    _15433 = mem[(32 * idx + 1) + _11491 + 128]
                    if mem[(32 * idx) + _11491 + 44 len 20] == mem[(32 * idx) + _11491 + 44 len 20]:
                        if idx < mem[_11491] - 2:
                            _15601 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_15601 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_15601 + 36] = 0
                            mem[_15601 + 68] = _15433
                            mem[_15601 + 100] = address(('cd', 4)[2])
                            mem[_15601 + 132] = 128
                            mem[_15601 + 164] = mem[_15601]
                            s = 0
                            while s < mem[_15601]:
                                mem[s + _15601 + 196] = mem[s + _15601 + 32]
                                s = s + 32
                                continue 
                            if not mem[_15601] % 32:
                                require ext_code.size(address(('cd', 4)[2]))
                                call address(('cd', 4)[2]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _15433, address(('cd', 4)[2]), 128, mem[_15601 + 164 len mem[_15601] + 32]
                            else:
                                mem[floor32(mem[_15601]) + _15601 + 196] = mem[floor32(mem[_15601]) + _15601 + -(mem[_15601] % 32) + 228 len mem[_15601] % 32]
                                require ext_code.size(address(('cd', 4)[2]))
                                call address(('cd', 4)[2]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _15433, address(('cd', 4)[2]), 128, mem[_15601], mem[_15601 + 196 len floor32(mem[_15601]) + 32]
                        else:
                            _15605 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_15605 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_15605 + 36] = 0
                            mem[_15605 + 68] = _15433
                            mem[_15605 + 100] = address(cd[68])
                            mem[_15605 + 132] = 128
                            mem[_15605 + 164] = mem[_15605]
                            s = 0
                            while s < mem[_15605]:
                                mem[s + _15605 + 196] = mem[s + _15605 + 32]
                                s = s + 32
                                continue 
                            if not mem[_15605] % 32:
                                require ext_code.size(address(('cd', 4)[2]))
                                call address(('cd', 4)[2]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _15433, address(cd[68]), 128, mem[_15605 + 164 len mem[_15605] + 32]
                            else:
                                mem[floor32(mem[_15605]) + _15605 + 196] = mem[floor32(mem[_15605]) + _15605 + -(mem[_15605] % 32) + 228 len mem[_15605] % 32]
                                require ext_code.size(address(('cd', 4)[2]))
                                call address(('cd', 4)[2]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _15433, address(cd[68]), 128, mem[_15605], mem[_15605 + 196 len floor32(mem[_15605]) + 32]
                    else:
                        if idx < mem[_11491] - 2:
                            _15609 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_15609 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_15609 + 36] = _15433
                            mem[_15609 + 68] = 0
                            mem[_15609 + 100] = address(('cd', 4)[2])
                            mem[_15609 + 132] = 128
                            mem[_15609 + 164] = mem[_15609]
                            s = 0
                            while s < mem[_15609]:
                                mem[s + _15609 + 196] = mem[s + _15609 + 32]
                                s = s + 32
                                continue 
                            if not mem[_15609] % 32:
                                require ext_code.size(address(('cd', 4)[2]))
                                call address(('cd', 4)[2]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _15433, 0, address(('cd', 4)[2]), 128, mem[_15609 + 164 len mem[_15609] + 32]
                            else:
                                mem[floor32(mem[_15609]) + _15609 + 196] = mem[floor32(mem[_15609]) + _15609 + -(mem[_15609] % 32) + 228 len mem[_15609] % 32]
                                require ext_code.size(address(('cd', 4)[2]))
                                call address(('cd', 4)[2]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _15433, 0, address(('cd', 4)[2]), 128, mem[_15609], mem[_15609 + 196 len floor32(mem[_15609]) + 32]
                        else:
                            _15613 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_15613 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_15613 + 36] = _15433
                            mem[_15613 + 68] = 0
                            mem[_15613 + 100] = address(cd[68])
                            mem[_15613 + 132] = 128
                            mem[_15613 + 164] = mem[_15613]
                            s = 0
                            while s < mem[_15613]:
                                mem[s + _15613 + 196] = mem[s + _15613 + 32]
                                s = s + 32
                                continue 
                            if not mem[_15613] % 32:
                                require ext_code.size(address(('cd', 4)[2]))
                                call address(('cd', 4)[2]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _15433, 0, address(cd[68]), 128, mem[_15613 + 164 len mem[_15613] + 32]
                            else:
                                mem[floor32(mem[_15613]) + _15613 + 196] = mem[floor32(mem[_15613]) + _15613 + -(mem[_15613] % 32) + 228 len mem[_15613] % 32]
                                require ext_code.size(address(('cd', 4)[2]))
                                call address(('cd', 4)[2]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _15433, 0, address(cd[68]), 128, mem[_15613], mem[_15613 + 196 len floor32(mem[_15613]) + 32]
                else:
                    if not mem[(32 * idx + 1) + _11491 + 44 len 20]:
                        revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                    require idx + 1 < mem[_11491 + 96]
                    _15434 = mem[(32 * idx + 1) + _11491 + 128]
                    if mem[(32 * idx) + _11491 + 44 len 20] == mem[(32 * idx + 1) + _11491 + 44 len 20]:
                        if idx < mem[_11491] - 2:
                            _15617 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_15617 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_15617 + 36] = 0
                            mem[_15617 + 68] = _15434
                            mem[_15617 + 100] = address(('cd', 4)[2])
                            mem[_15617 + 132] = 128
                            mem[_15617 + 164] = mem[_15617]
                            s = 0
                            while s < mem[_15617]:
                                mem[s + _15617 + 196] = mem[s + _15617 + 32]
                                s = s + 32
                                continue 
                            if not mem[_15617] % 32:
                                require ext_code.size(address(('cd', 4)[2]))
                                call address(('cd', 4)[2]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _15434, address(('cd', 4)[2]), 128, mem[_15617 + 164 len mem[_15617] + 32]
                            else:
                                mem[floor32(mem[_15617]) + _15617 + 196] = mem[floor32(mem[_15617]) + _15617 + -(mem[_15617] % 32) + 228 len mem[_15617] % 32]
                                require ext_code.size(address(('cd', 4)[2]))
                                call address(('cd', 4)[2]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _15434, address(('cd', 4)[2]), 128, mem[_15617], mem[_15617 + 196 len floor32(mem[_15617]) + 32]
                        else:
                            _15621 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_15621 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_15621 + 36] = 0
                            mem[_15621 + 68] = _15434
                            mem[_15621 + 100] = address(cd[68])
                            mem[_15621 + 132] = 128
                            mem[_15621 + 164] = mem[_15621]
                            s = 0
                            while s < mem[_15621]:
                                mem[s + _15621 + 196] = mem[s + _15621 + 32]
                                s = s + 32
                                continue 
                            if not mem[_15621] % 32:
                                require ext_code.size(address(('cd', 4)[2]))
                                call address(('cd', 4)[2]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _15434, address(cd[68]), 128, mem[_15621 + 164 len mem[_15621] + 32]
                            else:
                                mem[floor32(mem[_15621]) + _15621 + 196] = mem[floor32(mem[_15621]) + _15621 + -(mem[_15621] % 32) + 228 len mem[_15621] % 32]
                                require ext_code.size(address(('cd', 4)[2]))
                                call address(('cd', 4)[2]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _15434, address(cd[68]), 128, mem[_15621], mem[_15621 + 196 len floor32(mem[_15621]) + 32]
                    else:
                        if idx < mem[_11491] - 2:
                            _15625 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_15625 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_15625 + 36] = _15434
                            mem[_15625 + 68] = 0
                            mem[_15625 + 100] = address(('cd', 4)[2])
                            mem[_15625 + 132] = 128
                            mem[_15625 + 164] = mem[_15625]
                            s = 0
                            while s < mem[_15625]:
                                mem[s + _15625 + 196] = mem[s + _15625 + 32]
                                s = s + 32
                                continue 
                            if not mem[_15625] % 32:
                                require ext_code.size(address(('cd', 4)[2]))
                                call address(('cd', 4)[2]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _15434, 0, address(('cd', 4)[2]), 128, mem[_15625 + 164 len mem[_15625] + 32]
                            else:
                                mem[floor32(mem[_15625]) + _15625 + 196] = mem[floor32(mem[_15625]) + _15625 + -(mem[_15625] % 32) + 228 len mem[_15625] % 32]
                                require ext_code.size(address(('cd', 4)[2]))
                                call address(('cd', 4)[2]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _15434, 0, address(('cd', 4)[2]), 128, mem[_15625], mem[_15625 + 196 len floor32(mem[_15625]) + 32]
                        else:
                            _15629 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_15629 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_15629 + 36] = _15434
                            mem[_15629 + 68] = 0
                            mem[_15629 + 100] = address(cd[68])
                            mem[_15629 + 132] = 128
                            mem[_15629 + 164] = mem[_15629]
                            s = 0
                            while s < mem[_15629]:
                                mem[s + _15629 + 196] = mem[s + _15629 + 32]
                                s = s + 32
                                continue 
                            if not mem[_15629] % 32:
                                require ext_code.size(address(('cd', 4)[2]))
                                call address(('cd', 4)[2]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _15434, 0, address(cd[68]), 128, mem[_15629 + 164 len mem[_15629] + 32]
                            else:
                                mem[floor32(mem[_15629]) + _15629 + 196] = mem[floor32(mem[_15629]) + _15629 + -(mem[_15629] % 32) + 228 len mem[_15629] % 32]
                                require ext_code.size(address(('cd', 4)[2]))
                                call address(('cd', 4)[2]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _15434, 0, address(cd[68]), 128, mem[_15629], mem[_15629 + 196 len floor32(mem[_15629]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
        else:
            mem[_11491 + 128 len 32 * _11783] = call.data[calldata.size len 32 * _11783]
            require 0 < mem[_11491 + 96]
            mem[_11491 + 128] = ext_call.return_data[0]
            _13470 = mem[_11491]
            idx = 0
            while idx < _13470 - 1:
                require idx < mem[_11491]
                _13561 = mem[(32 * idx) + _11491 + 32]
                require idx + 1 < mem[_11491]
                _13634 = mem[(32 * idx + 1) + _11491 + 32]
                if mem[(32 * idx) + _11491 + 44 len 20] == mem[(32 * idx + 1) + _11491 + 44 len 20]:
                    revert with 0, 32, 35, 0x2150616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 103 len 29]
                if mem[(32 * idx) + _11491 + 44 len 20] < mem[(32 * idx + 1) + _11491 + 44 len 20]:
                    if not mem[(32 * idx) + _11491 + 44 len 20]:
                        revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                    require ext_code.size(address(('cd', 4)[2]))
                    staticcall address(('cd', 4)[2]).getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require idx < mem[_11491 + 96]
                    if mem[(32 * idx) + _11491 + 128] <= 0:
                        revert with 0, 
                                    32,
                                    41,
                                    0xfe50616e63616b654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                    mem[mem[64] + 109 len 23]
                    if address(_13561) == address(_13561):
                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                            revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                            revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                        if 9975 * mem[(32 * idx) + _11491 + 128] / 9975 != mem[(32 * idx) + _11491 + 128]:
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[32]):
                            if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + _11491 + 128]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + _11491 + 128])
                            require idx + 1 < mem[_11491 + 96]
                            mem[(32 * idx + 1) + _11491 + 128] = 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + _11491 + 128])
                        else:
                            require Mask(112, 0, ext_call.return_data[32])
                            if 9975 * mem[(32 * idx) + _11491 + 128] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 9975 * mem[(32 * idx) + _11491 + 128]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + _11491 + 128]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + _11491 + 128])
                            require idx + 1 < mem[_11491 + 96]
                            mem[(32 * idx + 1) + _11491 + 128] = 9975 * mem[(32 * idx) + _11491 + 128] * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + _11491 + 128])
                    else:
                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                            revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                            revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                        if 9975 * mem[(32 * idx) + _11491 + 128] / 9975 != mem[(32 * idx) + _11491 + 128]:
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[0]):
                            if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + _11491 + 128]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + _11491 + 128])
                            require idx + 1 < mem[_11491 + 96]
                            mem[(32 * idx + 1) + _11491 + 128] = 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + _11491 + 128])
                        else:
                            require Mask(112, 0, ext_call.return_data[0])
                            if 9975 * mem[(32 * idx) + _11491 + 128] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 9975 * mem[(32 * idx) + _11491 + 128]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + _11491 + 128]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + _11491 + 128])
                            require idx + 1 < mem[_11491 + 96]
                            mem[(32 * idx + 1) + _11491 + 128] = 9975 * mem[(32 * idx) + _11491 + 128] * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + _11491 + 128])
                else:
                    if not mem[(32 * idx + 1) + _11491 + 44 len 20]:
                        revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                    require ext_code.size(address(('cd', 4)[2]))
                    staticcall address(('cd', 4)[2]).getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require idx < mem[_11491 + 96]
                    if mem[(32 * idx) + _11491 + 128] <= 0:
                        revert with 0, 
                                    32,
                                    41,
                                    0xfe50616e63616b654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                    mem[mem[64] + 109 len 23]
                    if address(_13634) == address(_13561):
                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                            revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                            revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                        if 9975 * mem[(32 * idx) + _11491 + 128] / 9975 != mem[(32 * idx) + _11491 + 128]:
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[32]):
                            if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + _11491 + 128]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + _11491 + 128])
                            require idx + 1 < mem[_11491 + 96]
                            mem[(32 * idx + 1) + _11491 + 128] = 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + _11491 + 128])
                        else:
                            require Mask(112, 0, ext_call.return_data[32])
                            if 9975 * mem[(32 * idx) + _11491 + 128] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 9975 * mem[(32 * idx) + _11491 + 128]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + _11491 + 128]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + _11491 + 128])
                            require idx + 1 < mem[_11491 + 96]
                            mem[(32 * idx + 1) + _11491 + 128] = 9975 * mem[(32 * idx) + _11491 + 128] * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + _11491 + 128])
                    else:
                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                            revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                            revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                        if 9975 * mem[(32 * idx) + _11491 + 128] / 9975 != mem[(32 * idx) + _11491 + 128]:
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[0]):
                            if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + _11491 + 128]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + _11491 + 128])
                            require idx + 1 < mem[_11491 + 96]
                            mem[(32 * idx + 1) + _11491 + 128] = 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + _11491 + 128])
                        else:
                            require Mask(112, 0, ext_call.return_data[0])
                            if 9975 * mem[(32 * idx) + _11491 + 128] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 9975 * mem[(32 * idx) + _11491 + 128]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + _11491 + 128]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + _11491 + 128])
                            require idx + 1 < mem[_11491 + 96]
                            mem[(32 * idx + 1) + _11491 + 128] = 9975 * mem[(32 * idx) + _11491 + 128] * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + _11491 + 128])
                idx = idx + 1
                continue 
            require 0 < mem[_11491]
            _13632 = mem[_11491 + 32]
            require 0 < mem[_11491 + 96]
            _13672 = mem[_11491 + 128]
            mem[mem[64] + 4] = address(('cd', 4)[2])
            mem[mem[64] + 36] = _13672
            require ext_code.size(address(_13632))
            call address(_13632).0xa9059cbb with:
                 gas gas_remaining wei
                args address(('cd', 4)[2]), _13672
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            _15262 = mem[_11491]
            idx = 0
            while idx < _15262 - 1:
                require idx < mem[_11491]
                require idx + 1 < mem[_11491]
                if mem[(32 * idx) + _11491 + 44 len 20] == mem[(32 * idx + 1) + _11491 + 44 len 20]:
                    revert with 0, 32, 35, 0x2150616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 103 len 29]
                if mem[(32 * idx) + _11491 + 44 len 20] < mem[(32 * idx + 1) + _11491 + 44 len 20]:
                    if not mem[(32 * idx) + _11491 + 44 len 20]:
                        revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                    require idx + 1 < mem[_11491 + 96]
                    _15435 = mem[(32 * idx + 1) + _11491 + 128]
                    if mem[(32 * idx) + _11491 + 44 len 20] == mem[(32 * idx) + _11491 + 44 len 20]:
                        if idx < mem[_11491] - 2:
                            _15633 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_15633 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_15633 + 36] = 0
                            mem[_15633 + 68] = _15435
                            mem[_15633 + 100] = address(('cd', 4)[2])
                            mem[_15633 + 132] = 128
                            mem[_15633 + 164] = mem[_15633]
                            s = 0
                            while s < mem[_15633]:
                                mem[s + _15633 + 196] = mem[s + _15633 + 32]
                                s = s + 32
                                continue 
                            if not mem[_15633] % 32:
                                require ext_code.size(address(('cd', 4)[2]))
                                call address(('cd', 4)[2]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _15435, address(('cd', 4)[2]), 128, mem[_15633 + 164 len mem[_15633] + 32]
                            else:
                                mem[floor32(mem[_15633]) + _15633 + 196] = mem[floor32(mem[_15633]) + _15633 + -(mem[_15633] % 32) + 228 len mem[_15633] % 32]
                                require ext_code.size(address(('cd', 4)[2]))
                                call address(('cd', 4)[2]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _15435, address(('cd', 4)[2]), 128, mem[_15633], mem[_15633 + 196 len floor32(mem[_15633]) + 32]
                        else:
                            _15637 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_15637 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_15637 + 36] = 0
                            mem[_15637 + 68] = _15435
                            mem[_15637 + 100] = address(cd[68])
                            mem[_15637 + 132] = 128
                            mem[_15637 + 164] = mem[_15637]
                            s = 0
                            while s < mem[_15637]:
                                mem[s + _15637 + 196] = mem[s + _15637 + 32]
                                s = s + 32
                                continue 
                            if not mem[_15637] % 32:
                                require ext_code.size(address(('cd', 4)[2]))
                                call address(('cd', 4)[2]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _15435, address(cd[68]), 128, mem[_15637 + 164 len mem[_15637] + 32]
                            else:
                                mem[floor32(mem[_15637]) + _15637 + 196] = mem[floor32(mem[_15637]) + _15637 + -(mem[_15637] % 32) + 228 len mem[_15637] % 32]
                                require ext_code.size(address(('cd', 4)[2]))
                                call address(('cd', 4)[2]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _15435, address(cd[68]), 128, mem[_15637], mem[_15637 + 196 len floor32(mem[_15637]) + 32]
                    else:
                        if idx < mem[_11491] - 2:
                            _15641 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_15641 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_15641 + 36] = _15435
                            mem[_15641 + 68] = 0
                            mem[_15641 + 100] = address(('cd', 4)[2])
                            mem[_15641 + 132] = 128
                            mem[_15641 + 164] = mem[_15641]
                            s = 0
                            while s < mem[_15641]:
                                mem[s + _15641 + 196] = mem[s + _15641 + 32]
                                s = s + 32
                                continue 
                            if not mem[_15641] % 32:
                                require ext_code.size(address(('cd', 4)[2]))
                                call address(('cd', 4)[2]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _15435, 0, address(('cd', 4)[2]), 128, mem[_15641 + 164 len mem[_15641] + 32]
                            else:
                                mem[floor32(mem[_15641]) + _15641 + 196] = mem[floor32(mem[_15641]) + _15641 + -(mem[_15641] % 32) + 228 len mem[_15641] % 32]
                                require ext_code.size(address(('cd', 4)[2]))
                                call address(('cd', 4)[2]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _15435, 0, address(('cd', 4)[2]), 128, mem[_15641], mem[_15641 + 196 len floor32(mem[_15641]) + 32]
                        else:
                            _15645 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_15645 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_15645 + 36] = _15435
                            mem[_15645 + 68] = 0
                            mem[_15645 + 100] = address(cd[68])
                            mem[_15645 + 132] = 128
                            mem[_15645 + 164] = mem[_15645]
                            s = 0
                            while s < mem[_15645]:
                                mem[s + _15645 + 196] = mem[s + _15645 + 32]
                                s = s + 32
                                continue 
                            if not mem[_15645] % 32:
                                require ext_code.size(address(('cd', 4)[2]))
                                call address(('cd', 4)[2]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _15435, 0, address(cd[68]), 128, mem[_15645 + 164 len mem[_15645] + 32]
                            else:
                                mem[floor32(mem[_15645]) + _15645 + 196] = mem[floor32(mem[_15645]) + _15645 + -(mem[_15645] % 32) + 228 len mem[_15645] % 32]
                                require ext_code.size(address(('cd', 4)[2]))
                                call address(('cd', 4)[2]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _15435, 0, address(cd[68]), 128, mem[_15645], mem[_15645 + 196 len floor32(mem[_15645]) + 32]
                else:
                    if not mem[(32 * idx + 1) + _11491 + 44 len 20]:
                        revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                    require idx + 1 < mem[_11491 + 96]
                    _15436 = mem[(32 * idx + 1) + _11491 + 128]
                    if mem[(32 * idx) + _11491 + 44 len 20] == mem[(32 * idx + 1) + _11491 + 44 len 20]:
                        if idx < mem[_11491] - 2:
                            _15649 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_15649 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_15649 + 36] = 0
                            mem[_15649 + 68] = _15436
                            mem[_15649 + 100] = address(('cd', 4)[2])
                            mem[_15649 + 132] = 128
                            mem[_15649 + 164] = mem[_15649]
                            s = 0
                            while s < mem[_15649]:
                                mem[s + _15649 + 196] = mem[s + _15649 + 32]
                                s = s + 32
                                continue 
                            if not mem[_15649] % 32:
                                require ext_code.size(address(('cd', 4)[2]))
                                call address(('cd', 4)[2]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _15436, address(('cd', 4)[2]), 128, mem[_15649 + 164 len mem[_15649] + 32]
                            else:
                                mem[floor32(mem[_15649]) + _15649 + 196] = mem[floor32(mem[_15649]) + _15649 + -(mem[_15649] % 32) + 228 len mem[_15649] % 32]
                                require ext_code.size(address(('cd', 4)[2]))
                                call address(('cd', 4)[2]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _15436, address(('cd', 4)[2]), 128, mem[_15649], mem[_15649 + 196 len floor32(mem[_15649]) + 32]
                        else:
                            _15653 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_15653 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_15653 + 36] = 0
                            mem[_15653 + 68] = _15436
                            mem[_15653 + 100] = address(cd[68])
                            mem[_15653 + 132] = 128
                            mem[_15653 + 164] = mem[_15653]
                            s = 0
                            while s < mem[_15653]:
                                mem[s + _15653 + 196] = mem[s + _15653 + 32]
                                s = s + 32
                                continue 
                            if not mem[_15653] % 32:
                                require ext_code.size(address(('cd', 4)[2]))
                                call address(('cd', 4)[2]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _15436, address(cd[68]), 128, mem[_15653 + 164 len mem[_15653] + 32]
                            else:
                                mem[floor32(mem[_15653]) + _15653 + 196] = mem[floor32(mem[_15653]) + _15653 + -(mem[_15653] % 32) + 228 len mem[_15653] % 32]
                                require ext_code.size(address(('cd', 4)[2]))
                                call address(('cd', 4)[2]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _15436, address(cd[68]), 128, mem[_15653], mem[_15653 + 196 len floor32(mem[_15653]) + 32]
                    else:
                        if idx < mem[_11491] - 2:
                            _15657 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_15657 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_15657 + 36] = _15436
                            mem[_15657 + 68] = 0
                            mem[_15657 + 100] = address(('cd', 4)[2])
                            mem[_15657 + 132] = 128
                            mem[_15657 + 164] = mem[_15657]
                            s = 0
                            while s < mem[_15657]:
                                mem[s + _15657 + 196] = mem[s + _15657 + 32]
                                s = s + 32
                                continue 
                            if not mem[_15657] % 32:
                                require ext_code.size(address(('cd', 4)[2]))
                                call address(('cd', 4)[2]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _15436, 0, address(('cd', 4)[2]), 128, mem[_15657 + 164 len mem[_15657] + 32]
                            else:
                                mem[floor32(mem[_15657]) + _15657 + 196] = mem[floor32(mem[_15657]) + _15657 + -(mem[_15657] % 32) + 228 len mem[_15657] % 32]
                                require ext_code.size(address(('cd', 4)[2]))
                                call address(('cd', 4)[2]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _15436, 0, address(('cd', 4)[2]), 128, mem[_15657], mem[_15657 + 196 len floor32(mem[_15657]) + 32]
                        else:
                            _15661 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_15661 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_15661 + 36] = _15436
                            mem[_15661 + 68] = 0
                            mem[_15661 + 100] = address(cd[68])
                            mem[_15661 + 132] = 128
                            mem[_15661 + 164] = mem[_15661]
                            s = 0
                            while s < mem[_15661]:
                                mem[s + _15661 + 196] = mem[s + _15661 + 32]
                                s = s + 32
                                continue 
                            if not mem[_15661] % 32:
                                require ext_code.size(address(('cd', 4)[2]))
                                call address(('cd', 4)[2]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _15436, 0, address(cd[68]), 128, mem[_15661 + 164 len mem[_15661] + 32]
                            else:
                                mem[floor32(mem[_15661]) + _15661 + 196] = mem[floor32(mem[_15661]) + _15661 + -(mem[_15661] % 32) + 228 len mem[_15661] % 32]
                                require ext_code.size(address(('cd', 4)[2]))
                                call address(('cd', 4)[2]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _15436, 0, address(cd[68]), 128, mem[_15661], mem[_15661 + 196 len floor32(mem[_15661]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
        require 1 < mem[_11491 + 96]
        require 0 < mem[192]
        if mem[_11491 + 160] <= mem[224]:
            revert with 0, '-,-'
        mem[mem[64]] = mem[_11491 + 160]
    else:
        mem[_6070 + 128 len 32 * _6216] = call.data[calldata.size len 32 * _6216]
        require 0 < mem[_6070 + 96]
        mem[_6070 + 128] = ext_call.return_data[0]
        _8776 = mem[_6070]
        idx = 0
        while idx < _8776 - 1:
            require idx < mem[_6070]
            _8823 = mem[(32 * idx) + _6070 + 32]
            require idx + 1 < mem[_6070]
            _8860 = mem[(32 * idx + 1) + _6070 + 32]
            if mem[(32 * idx) + _6070 + 44 len 20] == mem[(32 * idx + 1) + _6070 + 44 len 20]:
                revert with 0, 32, 35, 0x2150616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 103 len 29]
            if mem[(32 * idx) + _6070 + 44 len 20] < mem[(32 * idx + 1) + _6070 + 44 len 20]:
                if not mem[(32 * idx) + _6070 + 44 len 20]:
                    revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                require ext_code.size(address(('cd', 4)[1]))
                staticcall address(('cd', 4)[1]).getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require idx < mem[_6070 + 96]
                if mem[(32 * idx) + _6070 + 128] <= 0:
                    revert with 0, 
                                32,
                                41,
                                0xfe50616e63616b654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                mem[mem[64] + 109 len 23]
                if address(_8823) == address(_8823):
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                    if 9975 * mem[(32 * idx) + _6070 + 128] / 9975 != mem[(32 * idx) + _6070 + 128]:
                        revert with 0, 'ds-math-mul-overflow'
                    if not Mask(112, 0, ext_call.return_data[32]):
                        if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + _6070 + 128]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-add-overflow'
                        require (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + _6070 + 128])
                        require idx + 1 < mem[_6070 + 96]
                        mem[(32 * idx + 1) + _6070 + 128] = 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + _6070 + 128])
                    else:
                        require Mask(112, 0, ext_call.return_data[32])
                        if 9975 * mem[(32 * idx) + _6070 + 128] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 9975 * mem[(32 * idx) + _6070 + 128]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + _6070 + 128]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-add-overflow'
                        require (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + _6070 + 128])
                        require idx + 1 < mem[_6070 + 96]
                        mem[(32 * idx + 1) + _6070 + 128] = 9975 * mem[(32 * idx) + _6070 + 128] * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + _6070 + 128])
                else:
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                    if 9975 * mem[(32 * idx) + _6070 + 128] / 9975 != mem[(32 * idx) + _6070 + 128]:
                        revert with 0, 'ds-math-mul-overflow'
                    if not Mask(112, 0, ext_call.return_data[0]):
                        if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + _6070 + 128]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-add-overflow'
                        require (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + _6070 + 128])
                        require idx + 1 < mem[_6070 + 96]
                        mem[(32 * idx + 1) + _6070 + 128] = 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + _6070 + 128])
                    else:
                        require Mask(112, 0, ext_call.return_data[0])
                        if 9975 * mem[(32 * idx) + _6070 + 128] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 9975 * mem[(32 * idx) + _6070 + 128]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + _6070 + 128]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-add-overflow'
                        require (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + _6070 + 128])
                        require idx + 1 < mem[_6070 + 96]
                        mem[(32 * idx + 1) + _6070 + 128] = 9975 * mem[(32 * idx) + _6070 + 128] * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + _6070 + 128])
            else:
                if not mem[(32 * idx + 1) + _6070 + 44 len 20]:
                    revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                require ext_code.size(address(('cd', 4)[1]))
                staticcall address(('cd', 4)[1]).getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require idx < mem[_6070 + 96]
                if mem[(32 * idx) + _6070 + 128] <= 0:
                    revert with 0, 
                                32,
                                41,
                                0xfe50616e63616b654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                mem[mem[64] + 109 len 23]
                if address(_8860) == address(_8823):
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                    if 9975 * mem[(32 * idx) + _6070 + 128] / 9975 != mem[(32 * idx) + _6070 + 128]:
                        revert with 0, 'ds-math-mul-overflow'
                    if not Mask(112, 0, ext_call.return_data[32]):
                        if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + _6070 + 128]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-add-overflow'
                        require (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + _6070 + 128])
                        require idx + 1 < mem[_6070 + 96]
                        mem[(32 * idx + 1) + _6070 + 128] = 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + _6070 + 128])
                    else:
                        require Mask(112, 0, ext_call.return_data[32])
                        if 9975 * mem[(32 * idx) + _6070 + 128] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 9975 * mem[(32 * idx) + _6070 + 128]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + _6070 + 128]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-add-overflow'
                        require (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + _6070 + 128])
                        require idx + 1 < mem[_6070 + 96]
                        mem[(32 * idx + 1) + _6070 + 128] = 9975 * mem[(32 * idx) + _6070 + 128] * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + _6070 + 128])
                else:
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                    if 9975 * mem[(32 * idx) + _6070 + 128] / 9975 != mem[(32 * idx) + _6070 + 128]:
                        revert with 0, 'ds-math-mul-overflow'
                    if not Mask(112, 0, ext_call.return_data[0]):
                        if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + _6070 + 128]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-add-overflow'
                        require (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + _6070 + 128])
                        require idx + 1 < mem[_6070 + 96]
                        mem[(32 * idx + 1) + _6070 + 128] = 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + _6070 + 128])
                    else:
                        require Mask(112, 0, ext_call.return_data[0])
                        if 9975 * mem[(32 * idx) + _6070 + 128] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 9975 * mem[(32 * idx) + _6070 + 128]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + _6070 + 128]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-add-overflow'
                        require (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + _6070 + 128])
                        require idx + 1 < mem[_6070 + 96]
                        mem[(32 * idx + 1) + _6070 + 128] = 9975 * mem[(32 * idx) + _6070 + 128] * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + _6070 + 128])
            idx = idx + 1
            continue 
        require 0 < mem[_6070]
        _8858 = mem[_6070 + 32]
        require 0 < mem[_6070 + 96]
        _8878 = mem[_6070 + 128]
        mem[mem[64] + 4] = address(('cd', 4)[1])
        mem[mem[64] + 36] = _8878
        require ext_code.size(address(_8858))
        call address(_8858).0xa9059cbb with:
             gas gas_remaining wei
            args address(('cd', 4)[1]), _8878
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        _11388 = mem[_6070]
        idx = 0
        while idx < _11388 - 1:
            require idx < mem[_6070]
            require idx + 1 < mem[_6070]
            if mem[(32 * idx) + _6070 + 44 len 20] == mem[(32 * idx + 1) + _6070 + 44 len 20]:
                revert with 0, 32, 35, 0x2150616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 103 len 29]
            if mem[(32 * idx) + _6070 + 44 len 20] < mem[(32 * idx + 1) + _6070 + 44 len 20]:
                if not mem[(32 * idx) + _6070 + 44 len 20]:
                    revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                require idx + 1 < mem[_6070 + 96]
                _11487 = mem[(32 * idx + 1) + _6070 + 128]
                if mem[(32 * idx) + _6070 + 44 len 20] == mem[(32 * idx) + _6070 + 44 len 20]:
                    if idx < mem[_6070] - 2:
                        _11613 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_11613 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_11613 + 36] = 0
                        mem[_11613 + 68] = _11487
                        mem[_11613 + 100] = address(('cd', 4)[1])
                        mem[_11613 + 132] = 128
                        mem[_11613 + 164] = mem[_11613]
                        s = 0
                        while s < mem[_11613]:
                            mem[s + _11613 + 196] = mem[s + _11613 + 32]
                            s = s + 32
                            continue 
                        if not mem[_11613] % 32:
                            require ext_code.size(address(('cd', 4)[1]))
                            call address(('cd', 4)[1]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _11487, address(('cd', 4)[1]), 128, mem[_11613 + 164 len mem[_11613] + 32]
                        else:
                            mem[floor32(mem[_11613]) + _11613 + 196] = mem[floor32(mem[_11613]) + _11613 + -(mem[_11613] % 32) + 228 len mem[_11613] % 32]
                            require ext_code.size(address(('cd', 4)[1]))
                            call address(('cd', 4)[1]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _11487, address(('cd', 4)[1]), 128, mem[_11613], mem[_11613 + 196 len floor32(mem[_11613]) + 32]
                    else:
                        _11617 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_11617 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_11617 + 36] = 0
                        mem[_11617 + 68] = _11487
                        mem[_11617 + 100] = this.address
                        mem[_11617 + 132] = 128
                        mem[_11617 + 164] = mem[_11617]
                        s = 0
                        while s < mem[_11617]:
                            mem[s + _11617 + 196] = mem[s + _11617 + 32]
                            s = s + 32
                            continue 
                        if not mem[_11617] % 32:
                            require ext_code.size(address(('cd', 4)[1]))
                            call address(('cd', 4)[1]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _11487, address(this.address), 128, mem[_11617 + 164 len mem[_11617] + 32]
                        else:
                            mem[floor32(mem[_11617]) + _11617 + 196] = mem[floor32(mem[_11617]) + _11617 + -(mem[_11617] % 32) + 228 len mem[_11617] % 32]
                            require ext_code.size(address(('cd', 4)[1]))
                            call address(('cd', 4)[1]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _11487, address(this.address), 128, mem[_11617], mem[_11617 + 196 len floor32(mem[_11617]) + 32]
                else:
                    if idx < mem[_6070] - 2:
                        _11621 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_11621 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_11621 + 36] = _11487
                        mem[_11621 + 68] = 0
                        mem[_11621 + 100] = address(('cd', 4)[1])
                        mem[_11621 + 132] = 128
                        mem[_11621 + 164] = mem[_11621]
                        s = 0
                        while s < mem[_11621]:
                            mem[s + _11621 + 196] = mem[s + _11621 + 32]
                            s = s + 32
                            continue 
                        if not mem[_11621] % 32:
                            require ext_code.size(address(('cd', 4)[1]))
                            call address(('cd', 4)[1]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _11487, 0, address(('cd', 4)[1]), 128, mem[_11621 + 164 len mem[_11621] + 32]
                        else:
                            mem[floor32(mem[_11621]) + _11621 + 196] = mem[floor32(mem[_11621]) + _11621 + -(mem[_11621] % 32) + 228 len mem[_11621] % 32]
                            require ext_code.size(address(('cd', 4)[1]))
                            call address(('cd', 4)[1]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _11487, 0, address(('cd', 4)[1]), 128, mem[_11621], mem[_11621 + 196 len floor32(mem[_11621]) + 32]
                    else:
                        _11625 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_11625 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_11625 + 36] = _11487
                        mem[_11625 + 68] = 0
                        mem[_11625 + 100] = this.address
                        mem[_11625 + 132] = 128
                        mem[_11625 + 164] = mem[_11625]
                        s = 0
                        while s < mem[_11625]:
                            mem[s + _11625 + 196] = mem[s + _11625 + 32]
                            s = s + 32
                            continue 
                        if not mem[_11625] % 32:
                            require ext_code.size(address(('cd', 4)[1]))
                            call address(('cd', 4)[1]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _11487, 0, address(this.address), 128, mem[_11625 + 164 len mem[_11625] + 32]
                        else:
                            mem[floor32(mem[_11625]) + _11625 + 196] = mem[floor32(mem[_11625]) + _11625 + -(mem[_11625] % 32) + 228 len mem[_11625] % 32]
                            require ext_code.size(address(('cd', 4)[1]))
                            call address(('cd', 4)[1]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _11487, 0, address(this.address), 128, mem[_11625], mem[_11625 + 196 len floor32(mem[_11625]) + 32]
            else:
                if not mem[(32 * idx + 1) + _6070 + 44 len 20]:
                    revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                require idx + 1 < mem[_6070 + 96]
                _11488 = mem[(32 * idx + 1) + _6070 + 128]
                if mem[(32 * idx) + _6070 + 44 len 20] == mem[(32 * idx + 1) + _6070 + 44 len 20]:
                    if idx < mem[_6070] - 2:
                        _11629 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_11629 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_11629 + 36] = 0
                        mem[_11629 + 68] = _11488
                        mem[_11629 + 100] = address(('cd', 4)[1])
                        mem[_11629 + 132] = 128
                        mem[_11629 + 164] = mem[_11629]
                        s = 0
                        while s < mem[_11629]:
                            mem[s + _11629 + 196] = mem[s + _11629 + 32]
                            s = s + 32
                            continue 
                        if not mem[_11629] % 32:
                            require ext_code.size(address(('cd', 4)[1]))
                            call address(('cd', 4)[1]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _11488, address(('cd', 4)[1]), 128, mem[_11629 + 164 len mem[_11629] + 32]
                        else:
                            mem[floor32(mem[_11629]) + _11629 + 196] = mem[floor32(mem[_11629]) + _11629 + -(mem[_11629] % 32) + 228 len mem[_11629] % 32]
                            require ext_code.size(address(('cd', 4)[1]))
                            call address(('cd', 4)[1]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _11488, address(('cd', 4)[1]), 128, mem[_11629], mem[_11629 + 196 len floor32(mem[_11629]) + 32]
                    else:
                        _11633 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_11633 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_11633 + 36] = 0
                        mem[_11633 + 68] = _11488
                        mem[_11633 + 100] = this.address
                        mem[_11633 + 132] = 128
                        mem[_11633 + 164] = mem[_11633]
                        s = 0
                        while s < mem[_11633]:
                            mem[s + _11633 + 196] = mem[s + _11633 + 32]
                            s = s + 32
                            continue 
                        if not mem[_11633] % 32:
                            require ext_code.size(address(('cd', 4)[1]))
                            call address(('cd', 4)[1]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _11488, address(this.address), 128, mem[_11633 + 164 len mem[_11633] + 32]
                        else:
                            mem[floor32(mem[_11633]) + _11633 + 196] = mem[floor32(mem[_11633]) + _11633 + -(mem[_11633] % 32) + 228 len mem[_11633] % 32]
                            require ext_code.size(address(('cd', 4)[1]))
                            call address(('cd', 4)[1]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _11488, address(this.address), 128, mem[_11633], mem[_11633 + 196 len floor32(mem[_11633]) + 32]
                else:
                    if idx < mem[_6070] - 2:
                        _11637 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_11637 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_11637 + 36] = _11488
                        mem[_11637 + 68] = 0
                        mem[_11637 + 100] = address(('cd', 4)[1])
                        mem[_11637 + 132] = 128
                        mem[_11637 + 164] = mem[_11637]
                        s = 0
                        while s < mem[_11637]:
                            mem[s + _11637 + 196] = mem[s + _11637 + 32]
                            s = s + 32
                            continue 
                        if not mem[_11637] % 32:
                            require ext_code.size(address(('cd', 4)[1]))
                            call address(('cd', 4)[1]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _11488, 0, address(('cd', 4)[1]), 128, mem[_11637 + 164 len mem[_11637] + 32]
                        else:
                            mem[floor32(mem[_11637]) + _11637 + 196] = mem[floor32(mem[_11637]) + _11637 + -(mem[_11637] % 32) + 228 len mem[_11637] % 32]
                            require ext_code.size(address(('cd', 4)[1]))
                            call address(('cd', 4)[1]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _11488, 0, address(('cd', 4)[1]), 128, mem[_11637], mem[_11637 + 196 len floor32(mem[_11637]) + 32]
                    else:
                        _11641 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_11641 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_11641 + 36] = _11488
                        mem[_11641 + 68] = 0
                        mem[_11641 + 100] = this.address
                        mem[_11641 + 132] = 128
                        mem[_11641 + 164] = mem[_11641]
                        s = 0
                        while s < mem[_11641]:
                            mem[s + _11641 + 196] = mem[s + _11641 + 32]
                            s = s + 32
                            continue 
                        if not mem[_11641] % 32:
                            require ext_code.size(address(('cd', 4)[1]))
                            call address(('cd', 4)[1]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _11488, 0, address(this.address), 128, mem[_11641 + 164 len mem[_11641] + 32]
                        else:
                            mem[floor32(mem[_11641]) + _11641 + 196] = mem[floor32(mem[_11641]) + _11641 + -(mem[_11641] % 32) + 228 len mem[_11641] % 32]
                            require ext_code.size(address(('cd', 4)[1]))
                            call address(('cd', 4)[1]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _11488, 0, address(this.address), 128, mem[_11641], mem[_11641 + 196 len floor32(mem[_11641]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            continue 
        require 1 < mem[_6070]
        _11417 = mem[_6070 + 64]
        mem[mem[64] + 4] = this.address
        mem[mem[64] + 36] = -1
        require ext_code.size(address(_11417))
        call address(_11417).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args this.address, -1
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require 1 < mem[_6070]
        _11446 = mem[_6070 + 64]
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(_11446))
        staticcall address(_11446).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        _11492 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        require 4 < ('cd', 36).length
        require 0 < mem[_11492]
        mem[_11492 + 32] = address(('cd', 36)[4])
        require 5 < ('cd', 36).length
        require 1 < mem[_11492]
        mem[_11492 + 64] = address(('cd', 36)[5])
        require 2 < ('cd', 4).length
        if mem[_11492] < 2:
            revert with 0, 'PancakeLibrary: INVALID_PATH'
        _11786 = mem[_11492]
        require mem[_11492] <= test266151307()
        mem[_11492 + 96] = mem[_11492]
        mem[64] = _11492 + (32 * mem[_11492]) + 128
        if not _11786:
            require 0 < mem[_11492 + 96]
            mem[_11492 + 128] = ext_call.return_data[0]
            _13471 = mem[_11492]
            idx = 0
            while idx < _13471 - 1:
                require idx < mem[_11492]
                _13580 = mem[(32 * idx) + _11492 + 32]
                require idx + 1 < mem[_11492]
                _13645 = mem[(32 * idx + 1) + _11492 + 32]
                if mem[(32 * idx) + _11492 + 44 len 20] == mem[(32 * idx + 1) + _11492 + 44 len 20]:
                    revert with 0, 32, 35, 0x2150616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 103 len 29]
                if mem[(32 * idx) + _11492 + 44 len 20] < mem[(32 * idx + 1) + _11492 + 44 len 20]:
                    if not mem[(32 * idx) + _11492 + 44 len 20]:
                        revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                    require ext_code.size(address(('cd', 4)[2]))
                    staticcall address(('cd', 4)[2]).getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require idx < mem[_11492 + 96]
                    if mem[(32 * idx) + _11492 + 128] <= 0:
                        revert with 0, 
                                    32,
                                    41,
                                    0xfe50616e63616b654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                    mem[mem[64] + 109 len 23]
                    if address(_13580) == address(_13580):
                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                            revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                            revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                        if 9975 * mem[(32 * idx) + _11492 + 128] / 9975 != mem[(32 * idx) + _11492 + 128]:
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[32]):
                            if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + _11492 + 128]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + _11492 + 128])
                            require idx + 1 < mem[_11492 + 96]
                            mem[(32 * idx + 1) + _11492 + 128] = 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + _11492 + 128])
                        else:
                            require Mask(112, 0, ext_call.return_data[32])
                            if 9975 * mem[(32 * idx) + _11492 + 128] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 9975 * mem[(32 * idx) + _11492 + 128]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + _11492 + 128]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + _11492 + 128])
                            require idx + 1 < mem[_11492 + 96]
                            mem[(32 * idx + 1) + _11492 + 128] = 9975 * mem[(32 * idx) + _11492 + 128] * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + _11492 + 128])
                    else:
                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                            revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                            revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                        if 9975 * mem[(32 * idx) + _11492 + 128] / 9975 != mem[(32 * idx) + _11492 + 128]:
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[0]):
                            if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + _11492 + 128]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + _11492 + 128])
                            require idx + 1 < mem[_11492 + 96]
                            mem[(32 * idx + 1) + _11492 + 128] = 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + _11492 + 128])
                        else:
                            require Mask(112, 0, ext_call.return_data[0])
                            if 9975 * mem[(32 * idx) + _11492 + 128] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 9975 * mem[(32 * idx) + _11492 + 128]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + _11492 + 128]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + _11492 + 128])
                            require idx + 1 < mem[_11492 + 96]
                            mem[(32 * idx + 1) + _11492 + 128] = 9975 * mem[(32 * idx) + _11492 + 128] * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + _11492 + 128])
                else:
                    if not mem[(32 * idx + 1) + _11492 + 44 len 20]:
                        revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                    require ext_code.size(address(('cd', 4)[2]))
                    staticcall address(('cd', 4)[2]).getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require idx < mem[_11492 + 96]
                    if mem[(32 * idx) + _11492 + 128] <= 0:
                        revert with 0, 
                                    32,
                                    41,
                                    0xfe50616e63616b654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                    mem[mem[64] + 109 len 23]
                    if address(_13645) == address(_13580):
                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                            revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                            revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                        if 9975 * mem[(32 * idx) + _11492 + 128] / 9975 != mem[(32 * idx) + _11492 + 128]:
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[32]):
                            if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + _11492 + 128]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + _11492 + 128])
                            require idx + 1 < mem[_11492 + 96]
                            mem[(32 * idx + 1) + _11492 + 128] = 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + _11492 + 128])
                        else:
                            require Mask(112, 0, ext_call.return_data[32])
                            if 9975 * mem[(32 * idx) + _11492 + 128] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 9975 * mem[(32 * idx) + _11492 + 128]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + _11492 + 128]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + _11492 + 128])
                            require idx + 1 < mem[_11492 + 96]
                            mem[(32 * idx + 1) + _11492 + 128] = 9975 * mem[(32 * idx) + _11492 + 128] * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + _11492 + 128])
                    else:
                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                            revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                            revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                        if 9975 * mem[(32 * idx) + _11492 + 128] / 9975 != mem[(32 * idx) + _11492 + 128]:
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[0]):
                            if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + _11492 + 128]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + _11492 + 128])
                            require idx + 1 < mem[_11492 + 96]
                            mem[(32 * idx + 1) + _11492 + 128] = 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + _11492 + 128])
                        else:
                            require Mask(112, 0, ext_call.return_data[0])
                            if 9975 * mem[(32 * idx) + _11492 + 128] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 9975 * mem[(32 * idx) + _11492 + 128]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + _11492 + 128]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + _11492 + 128])
                            require idx + 1 < mem[_11492 + 96]
                            mem[(32 * idx + 1) + _11492 + 128] = 9975 * mem[(32 * idx) + _11492 + 128] * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + _11492 + 128])
                idx = idx + 1
                continue 
            require 0 < mem[_11492]
            _13643 = mem[_11492 + 32]
            require 0 < mem[_11492 + 96]
            _13675 = mem[_11492 + 128]
            mem[mem[64] + 4] = address(('cd', 4)[2])
            mem[mem[64] + 36] = _13675
            require ext_code.size(address(_13643))
            call address(_13643).0xa9059cbb with:
                 gas gas_remaining wei
                args address(('cd', 4)[2]), _13675
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            _15263 = mem[_11492]
            idx = 0
            while idx < _15263 - 1:
                require idx < mem[_11492]
                require idx + 1 < mem[_11492]
                if mem[(32 * idx) + _11492 + 44 len 20] == mem[(32 * idx + 1) + _11492 + 44 len 20]:
                    revert with 0, 32, 35, 0x2150616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 103 len 29]
                if mem[(32 * idx) + _11492 + 44 len 20] < mem[(32 * idx + 1) + _11492 + 44 len 20]:
                    if not mem[(32 * idx) + _11492 + 44 len 20]:
                        revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                    require idx + 1 < mem[_11492 + 96]
                    _15437 = mem[(32 * idx + 1) + _11492 + 128]
                    if mem[(32 * idx) + _11492 + 44 len 20] == mem[(32 * idx) + _11492 + 44 len 20]:
                        if idx < mem[_11492] - 2:
                            _15665 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_15665 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_15665 + 36] = 0
                            mem[_15665 + 68] = _15437
                            mem[_15665 + 100] = address(('cd', 4)[2])
                            mem[_15665 + 132] = 128
                            mem[_15665 + 164] = mem[_15665]
                            s = 0
                            while s < mem[_15665]:
                                mem[s + _15665 + 196] = mem[s + _15665 + 32]
                                s = s + 32
                                continue 
                            if not mem[_15665] % 32:
                                require ext_code.size(address(('cd', 4)[2]))
                                call address(('cd', 4)[2]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _15437, address(('cd', 4)[2]), 128, mem[_15665 + 164 len mem[_15665] + 32]
                            else:
                                mem[floor32(mem[_15665]) + _15665 + 196] = mem[floor32(mem[_15665]) + _15665 + -(mem[_15665] % 32) + 228 len mem[_15665] % 32]
                                require ext_code.size(address(('cd', 4)[2]))
                                call address(('cd', 4)[2]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _15437, address(('cd', 4)[2]), 128, mem[_15665], mem[_15665 + 196 len floor32(mem[_15665]) + 32]
                        else:
                            _15669 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_15669 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_15669 + 36] = 0
                            mem[_15669 + 68] = _15437
                            mem[_15669 + 100] = address(cd[68])
                            mem[_15669 + 132] = 128
                            mem[_15669 + 164] = mem[_15669]
                            s = 0
                            while s < mem[_15669]:
                                mem[s + _15669 + 196] = mem[s + _15669 + 32]
                                s = s + 32
                                continue 
                            if not mem[_15669] % 32:
                                require ext_code.size(address(('cd', 4)[2]))
                                call address(('cd', 4)[2]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _15437, address(cd[68]), 128, mem[_15669 + 164 len mem[_15669] + 32]
                            else:
                                mem[floor32(mem[_15669]) + _15669 + 196] = mem[floor32(mem[_15669]) + _15669 + -(mem[_15669] % 32) + 228 len mem[_15669] % 32]
                                require ext_code.size(address(('cd', 4)[2]))
                                call address(('cd', 4)[2]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _15437, address(cd[68]), 128, mem[_15669], mem[_15669 + 196 len floor32(mem[_15669]) + 32]
                    else:
                        if idx < mem[_11492] - 2:
                            _15673 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_15673 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_15673 + 36] = _15437
                            mem[_15673 + 68] = 0
                            mem[_15673 + 100] = address(('cd', 4)[2])
                            mem[_15673 + 132] = 128
                            mem[_15673 + 164] = mem[_15673]
                            s = 0
                            while s < mem[_15673]:
                                mem[s + _15673 + 196] = mem[s + _15673 + 32]
                                s = s + 32
                                continue 
                            if not mem[_15673] % 32:
                                require ext_code.size(address(('cd', 4)[2]))
                                call address(('cd', 4)[2]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _15437, 0, address(('cd', 4)[2]), 128, mem[_15673 + 164 len mem[_15673] + 32]
                            else:
                                mem[floor32(mem[_15673]) + _15673 + 196] = mem[floor32(mem[_15673]) + _15673 + -(mem[_15673] % 32) + 228 len mem[_15673] % 32]
                                require ext_code.size(address(('cd', 4)[2]))
                                call address(('cd', 4)[2]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _15437, 0, address(('cd', 4)[2]), 128, mem[_15673], mem[_15673 + 196 len floor32(mem[_15673]) + 32]
                        else:
                            _15677 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_15677 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_15677 + 36] = _15437
                            mem[_15677 + 68] = 0
                            mem[_15677 + 100] = address(cd[68])
                            mem[_15677 + 132] = 128
                            mem[_15677 + 164] = mem[_15677]
                            s = 0
                            while s < mem[_15677]:
                                mem[s + _15677 + 196] = mem[s + _15677 + 32]
                                s = s + 32
                                continue 
                            if not mem[_15677] % 32:
                                require ext_code.size(address(('cd', 4)[2]))
                                call address(('cd', 4)[2]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _15437, 0, address(cd[68]), 128, mem[_15677 + 164 len mem[_15677] + 32]
                            else:
                                mem[floor32(mem[_15677]) + _15677 + 196] = mem[floor32(mem[_15677]) + _15677 + -(mem[_15677] % 32) + 228 len mem[_15677] % 32]
                                require ext_code.size(address(('cd', 4)[2]))
                                call address(('cd', 4)[2]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _15437, 0, address(cd[68]), 128, mem[_15677], mem[_15677 + 196 len floor32(mem[_15677]) + 32]
                else:
                    if not mem[(32 * idx + 1) + _11492 + 44 len 20]:
                        revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                    require idx + 1 < mem[_11492 + 96]
                    _15438 = mem[(32 * idx + 1) + _11492 + 128]
                    if mem[(32 * idx) + _11492 + 44 len 20] == mem[(32 * idx + 1) + _11492 + 44 len 20]:
                        if idx < mem[_11492] - 2:
                            _15681 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_15681 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_15681 + 36] = 0
                            mem[_15681 + 68] = _15438
                            mem[_15681 + 100] = address(('cd', 4)[2])
                            mem[_15681 + 132] = 128
                            mem[_15681 + 164] = mem[_15681]
                            s = 0
                            while s < mem[_15681]:
                                mem[s + _15681 + 196] = mem[s + _15681 + 32]
                                s = s + 32
                                continue 
                            if not mem[_15681] % 32:
                                require ext_code.size(address(('cd', 4)[2]))
                                call address(('cd', 4)[2]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _15438, address(('cd', 4)[2]), 128, mem[_15681 + 164 len mem[_15681] + 32]
                            else:
                                mem[floor32(mem[_15681]) + _15681 + 196] = mem[floor32(mem[_15681]) + _15681 + -(mem[_15681] % 32) + 228 len mem[_15681] % 32]
                                require ext_code.size(address(('cd', 4)[2]))
                                call address(('cd', 4)[2]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _15438, address(('cd', 4)[2]), 128, mem[_15681], mem[_15681 + 196 len floor32(mem[_15681]) + 32]
                        else:
                            _15685 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_15685 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_15685 + 36] = 0
                            mem[_15685 + 68] = _15438
                            mem[_15685 + 100] = address(cd[68])
                            mem[_15685 + 132] = 128
                            mem[_15685 + 164] = mem[_15685]
                            s = 0
                            while s < mem[_15685]:
                                mem[s + _15685 + 196] = mem[s + _15685 + 32]
                                s = s + 32
                                continue 
                            if not mem[_15685] % 32:
                                require ext_code.size(address(('cd', 4)[2]))
                                call address(('cd', 4)[2]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _15438, address(cd[68]), 128, mem[_15685 + 164 len mem[_15685] + 32]
                            else:
                                mem[floor32(mem[_15685]) + _15685 + 196] = mem[floor32(mem[_15685]) + _15685 + -(mem[_15685] % 32) + 228 len mem[_15685] % 32]
                                require ext_code.size(address(('cd', 4)[2]))
                                call address(('cd', 4)[2]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _15438, address(cd[68]), 128, mem[_15685], mem[_15685 + 196 len floor32(mem[_15685]) + 32]
                    else:
                        if idx < mem[_11492] - 2:
                            _15689 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_15689 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_15689 + 36] = _15438
                            mem[_15689 + 68] = 0
                            mem[_15689 + 100] = address(('cd', 4)[2])
                            mem[_15689 + 132] = 128
                            mem[_15689 + 164] = mem[_15689]
                            s = 0
                            while s < mem[_15689]:
                                mem[s + _15689 + 196] = mem[s + _15689 + 32]
                                s = s + 32
                                continue 
                            if not mem[_15689] % 32:
                                require ext_code.size(address(('cd', 4)[2]))
                                call address(('cd', 4)[2]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _15438, 0, address(('cd', 4)[2]), 128, mem[_15689 + 164 len mem[_15689] + 32]
                            else:
                                mem[floor32(mem[_15689]) + _15689 + 196] = mem[floor32(mem[_15689]) + _15689 + -(mem[_15689] % 32) + 228 len mem[_15689] % 32]
                                require ext_code.size(address(('cd', 4)[2]))
                                call address(('cd', 4)[2]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _15438, 0, address(('cd', 4)[2]), 128, mem[_15689], mem[_15689 + 196 len floor32(mem[_15689]) + 32]
                        else:
                            _15693 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_15693 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_15693 + 36] = _15438
                            mem[_15693 + 68] = 0
                            mem[_15693 + 100] = address(cd[68])
                            mem[_15693 + 132] = 128
                            mem[_15693 + 164] = mem[_15693]
                            s = 0
                            while s < mem[_15693]:
                                mem[s + _15693 + 196] = mem[s + _15693 + 32]
                                s = s + 32
                                continue 
                            if not mem[_15693] % 32:
                                require ext_code.size(address(('cd', 4)[2]))
                                call address(('cd', 4)[2]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _15438, 0, address(cd[68]), 128, mem[_15693 + 164 len mem[_15693] + 32]
                            else:
                                mem[floor32(mem[_15693]) + _15693 + 196] = mem[floor32(mem[_15693]) + _15693 + -(mem[_15693] % 32) + 228 len mem[_15693] % 32]
                                require ext_code.size(address(('cd', 4)[2]))
                                call address(('cd', 4)[2]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _15438, 0, address(cd[68]), 128, mem[_15693], mem[_15693 + 196 len floor32(mem[_15693]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
        else:
            mem[_11492 + 128 len 32 * _11786] = call.data[calldata.size len 32 * _11786]
            require 0 < mem[_11492 + 96]
            mem[_11492 + 128] = ext_call.return_data[0]
            _13472 = mem[_11492]
            idx = 0
            while idx < _13472 - 1:
                require idx < mem[_11492]
                _13583 = mem[(32 * idx) + _11492 + 32]
                require idx + 1 < mem[_11492]
                _13648 = mem[(32 * idx + 1) + _11492 + 32]
                if mem[(32 * idx) + _11492 + 44 len 20] == mem[(32 * idx + 1) + _11492 + 44 len 20]:
                    revert with 0, 32, 35, 0x2150616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 103 len 29]
                if mem[(32 * idx) + _11492 + 44 len 20] < mem[(32 * idx + 1) + _11492 + 44 len 20]:
                    if not mem[(32 * idx) + _11492 + 44 len 20]:
                        revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                    require ext_code.size(address(('cd', 4)[2]))
                    staticcall address(('cd', 4)[2]).getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require idx < mem[_11492 + 96]
                    if mem[(32 * idx) + _11492 + 128] <= 0:
                        revert with 0, 
                                    32,
                                    41,
                                    0xfe50616e63616b654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                    mem[mem[64] + 109 len 23]
                    if address(_13583) == address(_13583):
                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                            revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                            revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                        if 9975 * mem[(32 * idx) + _11492 + 128] / 9975 != mem[(32 * idx) + _11492 + 128]:
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[32]):
                            if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + _11492 + 128]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + _11492 + 128])
                            require idx + 1 < mem[_11492 + 96]
                            mem[(32 * idx + 1) + _11492 + 128] = 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + _11492 + 128])
                        else:
                            require Mask(112, 0, ext_call.return_data[32])
                            if 9975 * mem[(32 * idx) + _11492 + 128] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 9975 * mem[(32 * idx) + _11492 + 128]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + _11492 + 128]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + _11492 + 128])
                            require idx + 1 < mem[_11492 + 96]
                            mem[(32 * idx + 1) + _11492 + 128] = 9975 * mem[(32 * idx) + _11492 + 128] * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + _11492 + 128])
                    else:
                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                            revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                            revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                        if 9975 * mem[(32 * idx) + _11492 + 128] / 9975 != mem[(32 * idx) + _11492 + 128]:
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[0]):
                            if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + _11492 + 128]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + _11492 + 128])
                            require idx + 1 < mem[_11492 + 96]
                            mem[(32 * idx + 1) + _11492 + 128] = 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + _11492 + 128])
                        else:
                            require Mask(112, 0, ext_call.return_data[0])
                            if 9975 * mem[(32 * idx) + _11492 + 128] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 9975 * mem[(32 * idx) + _11492 + 128]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + _11492 + 128]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + _11492 + 128])
                            require idx + 1 < mem[_11492 + 96]
                            mem[(32 * idx + 1) + _11492 + 128] = 9975 * mem[(32 * idx) + _11492 + 128] * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + _11492 + 128])
                else:
                    if not mem[(32 * idx + 1) + _11492 + 44 len 20]:
                        revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                    require ext_code.size(address(('cd', 4)[2]))
                    staticcall address(('cd', 4)[2]).getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require idx < mem[_11492 + 96]
                    if mem[(32 * idx) + _11492 + 128] <= 0:
                        revert with 0, 
                                    32,
                                    41,
                                    0xfe50616e63616b654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                    mem[mem[64] + 109 len 23]
                    if address(_13648) == address(_13583):
                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                            revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                            revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                        if 9975 * mem[(32 * idx) + _11492 + 128] / 9975 != mem[(32 * idx) + _11492 + 128]:
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[32]):
                            if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + _11492 + 128]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + _11492 + 128])
                            require idx + 1 < mem[_11492 + 96]
                            mem[(32 * idx + 1) + _11492 + 128] = 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + _11492 + 128])
                        else:
                            require Mask(112, 0, ext_call.return_data[32])
                            if 9975 * mem[(32 * idx) + _11492 + 128] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 9975 * mem[(32 * idx) + _11492 + 128]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + _11492 + 128]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + _11492 + 128])
                            require idx + 1 < mem[_11492 + 96]
                            mem[(32 * idx + 1) + _11492 + 128] = 9975 * mem[(32 * idx) + _11492 + 128] * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + _11492 + 128])
                    else:
                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                            revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                            revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                        if 9975 * mem[(32 * idx) + _11492 + 128] / 9975 != mem[(32 * idx) + _11492 + 128]:
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[0]):
                            if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + _11492 + 128]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + _11492 + 128])
                            require idx + 1 < mem[_11492 + 96]
                            mem[(32 * idx + 1) + _11492 + 128] = 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + _11492 + 128])
                        else:
                            require Mask(112, 0, ext_call.return_data[0])
                            if 9975 * mem[(32 * idx) + _11492 + 128] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 9975 * mem[(32 * idx) + _11492 + 128]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + _11492 + 128]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + _11492 + 128])
                            require idx + 1 < mem[_11492 + 96]
                            mem[(32 * idx + 1) + _11492 + 128] = 9975 * mem[(32 * idx) + _11492 + 128] * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + _11492 + 128])
                idx = idx + 1
                continue 
            require 0 < mem[_11492]
            _13646 = mem[_11492 + 32]
            require 0 < mem[_11492 + 96]
            _13678 = mem[_11492 + 128]
            mem[mem[64] + 4] = address(('cd', 4)[2])
            mem[mem[64] + 36] = _13678
            require ext_code.size(address(_13646))
            call address(_13646).0xa9059cbb with:
                 gas gas_remaining wei
                args address(('cd', 4)[2]), _13678
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            _15264 = mem[_11492]
            idx = 0
            while idx < _15264 - 1:
                require idx < mem[_11492]
                require idx + 1 < mem[_11492]
                if mem[(32 * idx) + _11492 + 44 len 20] == mem[(32 * idx + 1) + _11492 + 44 len 20]:
                    revert with 0, 32, 35, 0x2150616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 103 len 29]
                if mem[(32 * idx) + _11492 + 44 len 20] < mem[(32 * idx + 1) + _11492 + 44 len 20]:
                    if not mem[(32 * idx) + _11492 + 44 len 20]:
                        revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                    require idx + 1 < mem[_11492 + 96]
                    _15439 = mem[(32 * idx + 1) + _11492 + 128]
                    if mem[(32 * idx) + _11492 + 44 len 20] == mem[(32 * idx) + _11492 + 44 len 20]:
                        if idx < mem[_11492] - 2:
                            _15697 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_15697 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_15697 + 36] = 0
                            mem[_15697 + 68] = _15439
                            mem[_15697 + 100] = address(('cd', 4)[2])
                            mem[_15697 + 132] = 128
                            mem[_15697 + 164] = mem[_15697]
                            s = 0
                            while s < mem[_15697]:
                                mem[s + _15697 + 196] = mem[s + _15697 + 32]
                                s = s + 32
                                continue 
                            if not mem[_15697] % 32:
                                require ext_code.size(address(('cd', 4)[2]))
                                call address(('cd', 4)[2]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _15439, address(('cd', 4)[2]), 128, mem[_15697 + 164 len mem[_15697] + 32]
                            else:
                                mem[floor32(mem[_15697]) + _15697 + 196] = mem[floor32(mem[_15697]) + _15697 + -(mem[_15697] % 32) + 228 len mem[_15697] % 32]
                                require ext_code.size(address(('cd', 4)[2]))
                                call address(('cd', 4)[2]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _15439, address(('cd', 4)[2]), 128, mem[_15697], mem[_15697 + 196 len floor32(mem[_15697]) + 32]
                        else:
                            _15701 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_15701 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_15701 + 36] = 0
                            mem[_15701 + 68] = _15439
                            mem[_15701 + 100] = address(cd[68])
                            mem[_15701 + 132] = 128
                            mem[_15701 + 164] = mem[_15701]
                            s = 0
                            while s < mem[_15701]:
                                mem[s + _15701 + 196] = mem[s + _15701 + 32]
                                s = s + 32
                                continue 
                            if not mem[_15701] % 32:
                                require ext_code.size(address(('cd', 4)[2]))
                                call address(('cd', 4)[2]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _15439, address(cd[68]), 128, mem[_15701 + 164 len mem[_15701] + 32]
                            else:
                                mem[floor32(mem[_15701]) + _15701 + 196] = mem[floor32(mem[_15701]) + _15701 + -(mem[_15701] % 32) + 228 len mem[_15701] % 32]
                                require ext_code.size(address(('cd', 4)[2]))
                                call address(('cd', 4)[2]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _15439, address(cd[68]), 128, mem[_15701], mem[_15701 + 196 len floor32(mem[_15701]) + 32]
                    else:
                        if idx < mem[_11492] - 2:
                            _15705 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_15705 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_15705 + 36] = _15439
                            mem[_15705 + 68] = 0
                            mem[_15705 + 100] = address(('cd', 4)[2])
                            mem[_15705 + 132] = 128
                            mem[_15705 + 164] = mem[_15705]
                            s = 0
                            while s < mem[_15705]:
                                mem[s + _15705 + 196] = mem[s + _15705 + 32]
                                s = s + 32
                                continue 
                            if not mem[_15705] % 32:
                                require ext_code.size(address(('cd', 4)[2]))
                                call address(('cd', 4)[2]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _15439, 0, address(('cd', 4)[2]), 128, mem[_15705 + 164 len mem[_15705] + 32]
                            else:
                                mem[floor32(mem[_15705]) + _15705 + 196] = mem[floor32(mem[_15705]) + _15705 + -(mem[_15705] % 32) + 228 len mem[_15705] % 32]
                                require ext_code.size(address(('cd', 4)[2]))
                                call address(('cd', 4)[2]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _15439, 0, address(('cd', 4)[2]), 128, mem[_15705], mem[_15705 + 196 len floor32(mem[_15705]) + 32]
                        else:
                            _15709 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_15709 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_15709 + 36] = _15439
                            mem[_15709 + 68] = 0
                            mem[_15709 + 100] = address(cd[68])
                            mem[_15709 + 132] = 128
                            mem[_15709 + 164] = mem[_15709]
                            s = 0
                            while s < mem[_15709]:
                                mem[s + _15709 + 196] = mem[s + _15709 + 32]
                                s = s + 32
                                continue 
                            if not mem[_15709] % 32:
                                require ext_code.size(address(('cd', 4)[2]))
                                call address(('cd', 4)[2]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _15439, 0, address(cd[68]), 128, mem[_15709 + 164 len mem[_15709] + 32]
                            else:
                                mem[floor32(mem[_15709]) + _15709 + 196] = mem[floor32(mem[_15709]) + _15709 + -(mem[_15709] % 32) + 228 len mem[_15709] % 32]
                                require ext_code.size(address(('cd', 4)[2]))
                                call address(('cd', 4)[2]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _15439, 0, address(cd[68]), 128, mem[_15709], mem[_15709 + 196 len floor32(mem[_15709]) + 32]
                else:
                    if not mem[(32 * idx + 1) + _11492 + 44 len 20]:
                        revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                    require idx + 1 < mem[_11492 + 96]
                    _15440 = mem[(32 * idx + 1) + _11492 + 128]
                    if mem[(32 * idx) + _11492 + 44 len 20] == mem[(32 * idx + 1) + _11492 + 44 len 20]:
                        if idx < mem[_11492] - 2:
                            _15713 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_15713 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_15713 + 36] = 0
                            mem[_15713 + 68] = _15440
                            mem[_15713 + 100] = address(('cd', 4)[2])
                            mem[_15713 + 132] = 128
                            mem[_15713 + 164] = mem[_15713]
                            s = 0
                            while s < mem[_15713]:
                                mem[s + _15713 + 196] = mem[s + _15713 + 32]
                                s = s + 32
                                continue 
                            if not mem[_15713] % 32:
                                require ext_code.size(address(('cd', 4)[2]))
                                call address(('cd', 4)[2]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _15440, address(('cd', 4)[2]), 128, mem[_15713 + 164 len mem[_15713] + 32]
                            else:
                                mem[floor32(mem[_15713]) + _15713 + 196] = mem[floor32(mem[_15713]) + _15713 + -(mem[_15713] % 32) + 228 len mem[_15713] % 32]
                                require ext_code.size(address(('cd', 4)[2]))
                                call address(('cd', 4)[2]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _15440, address(('cd', 4)[2]), 128, mem[_15713], mem[_15713 + 196 len floor32(mem[_15713]) + 32]
                        else:
                            _15717 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_15717 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_15717 + 36] = 0
                            mem[_15717 + 68] = _15440
                            mem[_15717 + 100] = address(cd[68])
                            mem[_15717 + 132] = 128
                            mem[_15717 + 164] = mem[_15717]
                            s = 0
                            while s < mem[_15717]:
                                mem[s + _15717 + 196] = mem[s + _15717 + 32]
                                s = s + 32
                                continue 
                            if not mem[_15717] % 32:
                                require ext_code.size(address(('cd', 4)[2]))
                                call address(('cd', 4)[2]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _15440, address(cd[68]), 128, mem[_15717 + 164 len mem[_15717] + 32]
                            else:
                                mem[floor32(mem[_15717]) + _15717 + 196] = mem[floor32(mem[_15717]) + _15717 + -(mem[_15717] % 32) + 228 len mem[_15717] % 32]
                                require ext_code.size(address(('cd', 4)[2]))
                                call address(('cd', 4)[2]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _15440, address(cd[68]), 128, mem[_15717], mem[_15717 + 196 len floor32(mem[_15717]) + 32]
                    else:
                        if idx < mem[_11492] - 2:
                            _15721 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_15721 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_15721 + 36] = _15440
                            mem[_15721 + 68] = 0
                            mem[_15721 + 100] = address(('cd', 4)[2])
                            mem[_15721 + 132] = 128
                            mem[_15721 + 164] = mem[_15721]
                            s = 0
                            while s < mem[_15721]:
                                mem[s + _15721 + 196] = mem[s + _15721 + 32]
                                s = s + 32
                                continue 
                            if not mem[_15721] % 32:
                                require ext_code.size(address(('cd', 4)[2]))
                                call address(('cd', 4)[2]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _15440, 0, address(('cd', 4)[2]), 128, mem[_15721 + 164 len mem[_15721] + 32]
                            else:
                                mem[floor32(mem[_15721]) + _15721 + 196] = mem[floor32(mem[_15721]) + _15721 + -(mem[_15721] % 32) + 228 len mem[_15721] % 32]
                                require ext_code.size(address(('cd', 4)[2]))
                                call address(('cd', 4)[2]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _15440, 0, address(('cd', 4)[2]), 128, mem[_15721], mem[_15721 + 196 len floor32(mem[_15721]) + 32]
                        else:
                            _15725 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_15725 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_15725 + 36] = _15440
                            mem[_15725 + 68] = 0
                            mem[_15725 + 100] = address(cd[68])
                            mem[_15725 + 132] = 128
                            mem[_15725 + 164] = mem[_15725]
                            s = 0
                            while s < mem[_15725]:
                                mem[s + _15725 + 196] = mem[s + _15725 + 32]
                                s = s + 32
                                continue 
                            if not mem[_15725] % 32:
                                require ext_code.size(address(('cd', 4)[2]))
                                call address(('cd', 4)[2]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _15440, 0, address(cd[68]), 128, mem[_15725 + 164 len mem[_15725] + 32]
                            else:
                                mem[floor32(mem[_15725]) + _15725 + 196] = mem[floor32(mem[_15725]) + _15725 + -(mem[_15725] % 32) + 228 len mem[_15725] % 32]
                                require ext_code.size(address(('cd', 4)[2]))
                                call address(('cd', 4)[2]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _15440, 0, address(cd[68]), 128, mem[_15725], mem[_15725 + 196 len floor32(mem[_15725]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
        require 1 < mem[_11492 + 96]
        require 0 < mem[192]
        if mem[_11492 + 160] <= mem[224]:
            revert with 0, '-,-'
        mem[mem[64]] = mem[_11492 + 160]
    return memory
      from mem[64]
       len 32
}

function sub_6f2cbafa(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(arg1)
    staticcall arg1.factory() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    else:
        require return_data.size >= 32
        if sub_d5bfbe4cAddress != ext_call.return_data[12 len 20]:
            revert with 0, 'not v2'
        else:
            require ext_code.size(arg1)
            staticcall arg1.token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            else:
                require return_data.size >= 32
                require ext_code.size(arg1)
                staticcall arg1.token1() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                else:
                    require return_data.size >= 32
                    if WBNBAddress == address(ext_call.return_data[0]):
                        revert with 0, 'no wbnb'
                    else:
                        if WBNBAddress == ext_call.return_data[12 len 20]:
                            revert with 0, 'no wbnb'
                        else:
                            require ext_code.size(arg1)
                            staticcall arg1.getReserves() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require return_data.size >= 96
                                require ext_code.size(sub_d5bfbe4cAddress)
                                staticcall sub_d5bfbe4cAddress.getPair(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args address(ext_call.return_data[0]), WBNBAddress
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    require ext_code.size(sub_d5bfbe4cAddress)
                                    staticcall sub_d5bfbe4cAddress.getPair(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args address(ext_call.return_data[0]), WBNBAddress
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        if not address(ext_call.return_data[0]):
                                            revert with 0, '0x'
                                        else:
                                            if not ext_call.return_data[12 len 20]:
                                                revert with 0, '0x'
                                            else:
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                staticcall address(ext_call.return_data[0]).token0() with:
                                                        gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                    staticcall address(ext_call.return_data[0]).token0() with:
                                                            gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                        staticcall address(ext_call.return_data[0]).getReserves() with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 96
                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                            staticcall address(ext_call.return_data[0]).getReserves() with:
                                                                    gas gas_remaining wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 96
                                                                if WBNBAddress != address(ext_call.return_data[0]):
                                                                    if WBNBAddress == address(ext_call.return_data[0]):
                                                                        if msg.value <= 0:
                                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                        32,
                                                                                        41,
                                                                                        0xfe50616e63616b654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                                                                        mem[205 len 23]
                                                                        else:
                                                                            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                            32,
                                                                                            38,
                                                                                            0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                                                                            mem[202 len 26]
                                                                            else:
                                                                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                                32,
                                                                                                38,
                                                                                                0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                                                                                mem[202 len 26]
                                                                                else:
                                                                                    if 9975 * msg.value / 9975 != msg.value:
                                                                                        revert with 0, 'ds-math-mul-overflow'
                                                                                    else:
                                                                                        if not Mask(112, 0, ext_call.return_data[0]):
                                                                                            if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                                                                                                revert with 0, 'ds-math-mul-overflow'
                                                                                            else:
                                                                                                if (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                                                                                                    revert with 0, 'ds-math-add-overflow'
                                                                                                else:
                                                                                                    require (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value)
                                                                                                    if 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value) <= 0:
                                                                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                                                    32,
                                                                                                                    41,
                                                                                                                    0xfe50616e63616b654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                                                                                                    mem[205 len 23]
                                                                                                    else:
                                                                                                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                                                        32,
                                                                                                                        38,
                                                                                                                        0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                                                                                                        mem[202 len 26]
                                                                                                        else:
                                                                                                            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                                                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                                                            32,
                                                                                                                            38,
                                                                                                                            0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                                                                                                            mem[202 len 26]
                                                                                                            else:
                                                                                                                if 9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value) / 9975 != 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value):
                                                                                                                    revert with 0, 'ds-math-mul-overflow'
                                                                                                                else:
                                                                                                                    if not Mask(112, 0, ext_call.return_data[32]):
                                                                                                                        if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                                                                                                                            revert with 0, 'ds-math-mul-overflow'
                                                                                                                        else:
                                                                                                                            if (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value)) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                                                                                                                revert with 0, 'ds-math-add-overflow'
                                                                                                                            else:
                                                                                                                                require (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value))
                                                                                                                                if 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value)) <= 0:
                                                                                                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                                                                                32,
                                                                                                                                                41,
                                                                                                                                                0xfe50616e63616b654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                                                                                                                                mem[205 len 23]
                                                                                                                                else:
                                                                                                                                    if ext_call.return_data[50 len 14] <= 0:
                                                                                                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                                                                                    32,
                                                                                                                                                    38,
                                                                                                                                                    0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                                                                                                                                    mem[202 len 26]
                                                                                                                                    else:
                                                                                                                                        if ext_call.return_data[18 len 14] <= 0:
                                                                                                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                                                                                        32,
                                                                                                                                                        38,
                                                                                                                                                        0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                                                                                                                                        mem[202 len 26]
                                                                                                                                        else:
                                                                                                                                            if 9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value)) / 9975 != 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value)):
                                                                                                                                                revert with 0, 'ds-math-mul-overflow'
                                                                                                                                            else:
                                                                                                                                                if not ext_call.return_data[18 len 14]:
                                                                                                                                                    if 10000 * ext_call.return_data[50 len 14] / 10000 != ext_call.return_data[50 len 14]:
                                                                                                                                                        revert with 0, 'ds-math-mul-overflow'
                                                                                                                                                    else:
                                                                                                                                                        if (10000 * ext_call.return_data[50 len 14]) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value))) < 10000 * ext_call.return_data[50 len 14]:
                                                                                                                                                            revert with 0, 'ds-math-add-overflow'
                                                                                                                                                        else:
                                                                                                                                                            require (10000 * ext_call.return_data[50 len 14]) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value)))
                                                                                                                                                            return address(ext_call.return_data[0]), 
                                                                                                                                                                   ext_call.return_data[32 len 64],
                                                                                                                                                                   address(ext_call.return_data[0]),
                                                                                                                                                                   0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value),
                                                                                                                                                                   0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value)),
                                                                                                                                                                   0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value))),
                                                                                                                                                                   4
                                                                                                                                                else:
                                                                                                                                                    require ext_call.return_data[18 len 14]
                                                                                                                                                    if 9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value)) * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value)):
                                                                                                                                                        revert with 0, 'ds-math-mul-overflow'
                                                                                                                                                    else:
                                                                                                                                                        if 10000 * ext_call.return_data[50 len 14] / 10000 != ext_call.return_data[50 len 14]:
                                                                                                                                                            revert with 0, 'ds-math-mul-overflow'
                                                                                                                                                        else:
                                                                                                                                                            if (10000 * ext_call.return_data[50 len 14]) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value))) < 10000 * ext_call.return_data[50 len 14]:
                                                                                                                                                                revert with 0, 'ds-math-add-overflow'
                                                                                                                                                            else:
                                                                                                                                                                require (10000 * ext_call.return_data[50 len 14]) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value)))
                                                                                                                                                                return address(ext_call.return_data[0]), 
                                                                                                                                                                       ext_call.return_data[32 len 64],
                                                                                                                                                                       address(ext_call.return_data[0]),
                                                                                                                                                                       0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value),
                                                                                                                                                                       0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value)),
                                                                                                                                                                       9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value)) * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value))),
                                                                                                                                                                       4
                                                                                                                    else:
                                                                                                                        require Mask(112, 0, ext_call.return_data[32])
                                                                                                                        if 9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value):
                                                                                                                            revert with 0, 'ds-math-mul-overflow'
                                                                                                                        else:
                                                                                                                            if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                                                                                                                                revert with 0, 'ds-math-mul-overflow'
                                                                                                                            else:
                                                                                                                                if (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value)) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                                                                                                                    revert with 0, 'ds-math-add-overflow'
                                                                                                                                else:
                                                                                                                                    require (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value))
                                                                                                                                    if 9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value)) <= 0:
                                                                                                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                                                                                    32,
                                                                                                                                                    41,
                                                                                                                                                    0xfe50616e63616b654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                                                                                                                                    mem[205 len 23]
                                                                                                                                    else:
                                                                                                                                        if ext_call.return_data[50 len 14] <= 0:
                                                                                                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                                                                                        32,
                                                                                                                                                        38,
                                                                                                                                                        0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                                                                                                                                        mem[202 len 26]
                                                                                                                                        else:
                                                                                                                                            if ext_call.return_data[18 len 14] <= 0:
                                                                                                                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                                                                                            32,
                                                                                                                                                            38,
                                                                                                                                                            0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                                                                                                                                            mem[202 len 26]
                                                                                                                                            else:
                                                                                                                                                if 9975 * 9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value)) / 9975 != 9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value)):
                                                                                                                                                    revert with 0, 'ds-math-mul-overflow'
                                                                                                                                                else:
                                                                                                                                                    if not ext_call.return_data[18 len 14]:
                                                                                                                                                        if 10000 * ext_call.return_data[50 len 14] / 10000 != ext_call.return_data[50 len 14]:
                                                                                                                                                            revert with 0, 'ds-math-mul-overflow'
                                                                                                                                                        else:
                                                                                                                                                            if (10000 * ext_call.return_data[50 len 14]) + (9975 * 9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value))) < 10000 * ext_call.return_data[50 len 14]:
                                                                                                                                                                revert with 0, 'ds-math-add-overflow'
                                                                                                                                                            else:
                                                                                                                                                                require (10000 * ext_call.return_data[50 len 14]) + (9975 * 9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value)))
                                                                                                                                                                return address(ext_call.return_data[0]), 
                                                                                                                                                                       ext_call.return_data[32 len 64],
                                                                                                                                                                       address(ext_call.return_data[0]),
                                                                                                                                                                       0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value),
                                                                                                                                                                       9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value)),
                                                                                                                                                                       0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * 9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value))),
                                                                                                                                                                       4
                                                                                                                                                    else:
                                                                                                                                                        require ext_call.return_data[18 len 14]
                                                                                                                                                        if 9975 * 9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value)) * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 9975 * 9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value)):
                                                                                                                                                            revert with 0, 'ds-math-mul-overflow'
                                                                                                                                                        else:
                                                                                                                                                            if 10000 * ext_call.return_data[50 len 14] / 10000 != ext_call.return_data[50 len 14]:
                                                                                                                                                                revert with 0, 'ds-math-mul-overflow'
                                                                                                                                                            else:
                                                                                                                                                                if (10000 * ext_call.return_data[50 len 14]) + (9975 * 9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value))) < 10000 * ext_call.return_data[50 len 14]:
                                                                                                                                                                    revert with 0, 'ds-math-add-overflow'
                                                                                                                                                                else:
                                                                                                                                                                    require (10000 * ext_call.return_data[50 len 14]) + (9975 * 9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value)))
                                                                                                                                                                    return address(ext_call.return_data[0]), 
                                                                                                                                                                           ext_call.return_data[32 len 64],
                                                                                                                                                                           address(ext_call.return_data[0]),
                                                                                                                                                                           0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value),
                                                                                                                                                                           9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value)),
                                                                                                                                                                           9975 * 9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value)) * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * 9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value))),
                                                                                                                                                                           4
                                                                                        else:
                                                                                            require Mask(112, 0, ext_call.return_data[0])
                                                                                            if 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 9975 * msg.value:
                                                                                                revert with 0, 'ds-math-mul-overflow'
                                                                                            else:
                                                                                                if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                                                                                                    revert with 0, 'ds-math-mul-overflow'
                                                                                                else:
                                                                                                    if (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                                                                                                        revert with 0, 'ds-math-add-overflow'
                                                                                                    else:
                                                                                                        require (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value)
                                                                                                        if 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value) <= 0:
                                                                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                                                        32,
                                                                                                                        41,
                                                                                                                        0xfe50616e63616b654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                                                                                                        mem[205 len 23]
                                                                                                        else:
                                                                                                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                                                            32,
                                                                                                                            38,
                                                                                                                            0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                                                                                                            mem[202 len 26]
                                                                                                            else:
                                                                                                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                                                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                                                                32,
                                                                                                                                38,
                                                                                                                                0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                                                                                                                mem[202 len 26]
                                                                                                                else:
                                                                                                                    if 9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value) / 9975 != 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value):
                                                                                                                        revert with 0, 'ds-math-mul-overflow'
                                                                                                                    else:
                                                                                                                        if not Mask(112, 0, ext_call.return_data[32]):
                                                                                                                            if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                                                                                                                                revert with 0, 'ds-math-mul-overflow'
                                                                                                                            else:
                                                                                                                                if (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value)) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                                                                                                                    revert with 0, 'ds-math-add-overflow'
                                                                                                                                else:
                                                                                                                                    require (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value))
                                                                                                                                    if 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value)) <= 0:
                                                                                                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                                                                                    32,
                                                                                                                                                    41,
                                                                                                                                                    0xfe50616e63616b654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                                                                                                                                    mem[205 len 23]
                                                                                                                                    else:
                                                                                                                                        if ext_call.return_data[50 len 14] <= 0:
                                                                                                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                                                                                        32,
                                                                                                                                                        38,
                                                                                                                                                        0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                                                                                                                                        mem[202 len 26]
                                                                                                                                        else:
                                                                                                                                            if ext_call.return_data[18 len 14] <= 0:
                                                                                                                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                                                                                            32,
                                                                                                                                                            38,
                                                                                                                                                            0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                                                                                                                                            mem[202 len 26]
                                                                                                                                            else:
                                                                                                                                                if 9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value)) / 9975 != 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value)):
                                                                                                                                                    revert with 0, 'ds-math-mul-overflow'
                                                                                                                                                else:
                                                                                                                                                    if not ext_call.return_data[18 len 14]:
                                                                                                                                                        if 10000 * ext_call.return_data[50 len 14] / 10000 != ext_call.return_data[50 len 14]:
                                                                                                                                                            revert with 0, 'ds-math-mul-overflow'
                                                                                                                                                        else:
                                                                                                                                                            if (10000 * ext_call.return_data[50 len 14]) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value))) < 10000 * ext_call.return_data[50 len 14]:
                                                                                                                                                                revert with 0, 'ds-math-add-overflow'
                                                                                                                                                            else:
                                                                                                                                                                require (10000 * ext_call.return_data[50 len 14]) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value)))
                                                                                                                                                                return address(ext_call.return_data[0]), 
                                                                                                                                                                       ext_call.return_data[32 len 64],
                                                                                                                                                                       address(ext_call.return_data[0]),
                                                                                                                                                                       9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value),
                                                                                                                                                                       0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value)),
                                                                                                                                                                       0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value))),
                                                                                                                                                                       4
                                                                                                                                                    else:
                                                                                                                                                        require ext_call.return_data[18 len 14]
                                                                                                                                                        if 9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value)) * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value)):
                                                                                                                                                            revert with 0, 'ds-math-mul-overflow'
                                                                                                                                                        else:
                                                                                                                                                            if 10000 * ext_call.return_data[50 len 14] / 10000 != ext_call.return_data[50 len 14]:
                                                                                                                                                                revert with 0, 'ds-math-mul-overflow'
                                                                                                                                                            else:
                                                                                                                                                                if (10000 * ext_call.return_data[50 len 14]) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value))) < 10000 * ext_call.return_data[50 len 14]:
                                                                                                                                                                    revert with 0, 'ds-math-add-overflow'
                                                                                                                                                                else:
                                                                                                                                                                    require (10000 * ext_call.return_data[50 len 14]) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value)))
                                                                                                                                                                    return address(ext_call.return_data[0]), 
                                                                                                                                                                           ext_call.return_data[32 len 64],
                                                                                                                                                                           address(ext_call.return_data[0]),
                                                                                                                                                                           9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value),
                                                                                                                                                                           0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value)),
                                                                                                                                                                           9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value)) * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value))),
                                                                                                                                                                           4
                                                                                                                        else:
                                                                                                                            require Mask(112, 0, ext_call.return_data[32])
                                                                                                                            if 9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value):
                                                                                                                                revert with 0, 'ds-math-mul-overflow'
                                                                                                                            else:
                                                                                                                                if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                                                                                                                                    revert with 0, 'ds-math-mul-overflow'
                                                                                                                                else:
                                                                                                                                    if (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value)) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                                                                                                                        revert with 0, 'ds-math-add-overflow'
                                                                                                                                    else:
                                                                                                                                        require (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value))
                                                                                                                                        if 9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value)) <= 0:
                                                                                                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                                                                                        32,
                                                                                                                                                        41,
                                                                                                                                                        0xfe50616e63616b654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                                                                                                                                        mem[205 len 23]
                                                                                                                                        else:
                                                                                                                                            if ext_call.return_data[50 len 14] <= 0:
                                                                                                                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                                                                                            32,
                                                                                                                                                            38,
                                                                                                                                                            0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                                                                                                                                            mem[202 len 26]
                                                                                                                                            else:
                                                                                                                                                if ext_call.return_data[18 len 14] <= 0:
                                                                                                                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                                                                                                32,
                                                                                                                                                                38,
                                                                                                                                                                0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                                                                                                                                                mem[202 len 26]
                                                                                                                                                else:
                                                                                                                                                    if 9975 * 9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value)) / 9975 != 9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value)):
                                                                                                                                                        revert with 0, 'ds-math-mul-overflow'
                                                                                                                                                    else:
                                                                                                                                                        if not ext_call.return_data[18 len 14]:
                                                                                                                                                            if 10000 * ext_call.return_data[50 len 14] / 10000 != ext_call.return_data[50 len 14]:
                                                                                                                                                                revert with 0, 'ds-math-mul-overflow'
                                                                                                                                                            else:
                                                                                                                                                                if (10000 * ext_call.return_data[50 len 14]) + (9975 * 9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value))) < 10000 * ext_call.return_data[50 len 14]:
                                                                                                                                                                    revert with 0, 'ds-math-add-overflow'
                                                                                                                                                                else:
                                                                                                                                                                    require (10000 * ext_call.return_data[50 len 14]) + (9975 * 9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value)))
                                                                                                                                                                    return address(ext_call.return_data[0]), 
                                                                                                                                                                           ext_call.return_data[32 len 64],
                                                                                                                                                                           address(ext_call.return_data[0]),
                                                                                                                                                                           9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value),
                                                                                                                                                                           9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value)),
                                                                                                                                                                           0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * 9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value))),
                                                                                                                                                                           4
                                                                                                                                                        else:
                                                                                                                                                            require ext_call.return_data[18 len 14]
                                                                                                                                                            if 9975 * 9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value)) * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 9975 * 9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value)):
                                                                                                                                                                revert with 0, 'ds-math-mul-overflow'
                                                                                                                                                            else:
                                                                                                                                                                if 10000 * ext_call.return_data[50 len 14] / 10000 != ext_call.return_data[50 len 14]:
                                                                                                                                                                    revert with 0, 'ds-math-mul-overflow'
                                                                                                                                                                else:
                                                                                                                                                                    if (10000 * ext_call.return_data[50 len 14]) + (9975 * 9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value))) < 10000 * ext_call.return_data[50 len 14]:
                                                                                                                                                                        revert with 0, 'ds-math-add-overflow'
                                                                                                                                                                    else:
                                                                                                                                                                        require (10000 * ext_call.return_data[50 len 14]) + (9975 * 9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value)))
                                                                                                                                                                        return address(ext_call.return_data[0]), 
                                                                                                                                                                               ext_call.return_data[32 len 64],
                                                                                                                                                                               address(ext_call.return_data[0]),
                                                                                                                                                                               9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value),
                                                                                                                                                                               9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value)),
                                                                                                                                                                               9975 * 9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value)) * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * 9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value))),
                                                                                                                                                                               4
                                                                    else:
                                                                        if msg.value <= 0:
                                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                        32,
                                                                                        41,
                                                                                        0xfe50616e63616b654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                                                                        mem[205 len 23]
                                                                        else:
                                                                            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                            32,
                                                                                            38,
                                                                                            0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                                                                            mem[202 len 26]
                                                                            else:
                                                                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                                32,
                                                                                                38,
                                                                                                0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                                                                                mem[202 len 26]
                                                                                else:
                                                                                    if 9975 * msg.value / 9975 != msg.value:
                                                                                        revert with 0, 'ds-math-mul-overflow'
                                                                                    else:
                                                                                        if not Mask(112, 0, ext_call.return_data[0]):
                                                                                            if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                                                                                                revert with 0, 'ds-math-mul-overflow'
                                                                                            else:
                                                                                                if (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                                                                                                    revert with 0, 'ds-math-add-overflow'
                                                                                                else:
                                                                                                    require (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value)
                                                                                                    if 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value) <= 0:
                                                                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                                                    32,
                                                                                                                    41,
                                                                                                                    0xfe50616e63616b654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                                                                                                    mem[205 len 23]
                                                                                                    else:
                                                                                                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                                                        32,
                                                                                                                        38,
                                                                                                                        0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                                                                                                        mem[202 len 26]
                                                                                                        else:
                                                                                                            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                                                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                                                            32,
                                                                                                                            38,
                                                                                                                            0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                                                                                                            mem[202 len 26]
                                                                                                            else:
                                                                                                                if 9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value) / 9975 != 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value):
                                                                                                                    revert with 0, 'ds-math-mul-overflow'
                                                                                                                else:
                                                                                                                    if not Mask(112, 0, ext_call.return_data[32]):
                                                                                                                        if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                                                                                                                            revert with 0, 'ds-math-mul-overflow'
                                                                                                                        else:
                                                                                                                            if (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value)) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                                                                                                                revert with 0, 'ds-math-add-overflow'
                                                                                                                            else:
                                                                                                                                require (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value))
                                                                                                                                if 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value)) <= 0:
                                                                                                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                                                                                32,
                                                                                                                                                41,
                                                                                                                                                0xfe50616e63616b654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                                                                                                                                mem[205 len 23]
                                                                                                                                else:
                                                                                                                                    if ext_call.return_data[18 len 14] <= 0:
                                                                                                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                                                                                    32,
                                                                                                                                                    38,
                                                                                                                                                    0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                                                                                                                                    mem[202 len 26]
                                                                                                                                    else:
                                                                                                                                        if ext_call.return_data[50 len 14] <= 0:
                                                                                                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                                                                                        32,
                                                                                                                                                        38,
                                                                                                                                                        0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                                                                                                                                        mem[202 len 26]
                                                                                                                                        else:
                                                                                                                                            if 9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value)) / 9975 != 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value)):
                                                                                                                                                revert with 0, 'ds-math-mul-overflow'
                                                                                                                                            else:
                                                                                                                                                if not ext_call.return_data[50 len 14]:
                                                                                                                                                    if 10000 * ext_call.return_data[18 len 14] / 10000 != ext_call.return_data[18 len 14]:
                                                                                                                                                        revert with 0, 'ds-math-mul-overflow'
                                                                                                                                                    else:
                                                                                                                                                        if (10000 * ext_call.return_data[18 len 14]) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value))) < 10000 * ext_call.return_data[18 len 14]:
                                                                                                                                                            revert with 0, 'ds-math-add-overflow'
                                                                                                                                                        else:
                                                                                                                                                            require (10000 * ext_call.return_data[18 len 14]) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value)))
                                                                                                                                                            return address(ext_call.return_data[0]), 
                                                                                                                                                                   ext_call.return_data[32 len 64],
                                                                                                                                                                   address(ext_call.return_data[0]),
                                                                                                                                                                   0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value),
                                                                                                                                                                   0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value)),
                                                                                                                                                                   0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value))),
                                                                                                                                                                   3
                                                                                                                                                else:
                                                                                                                                                    require ext_call.return_data[50 len 14]
                                                                                                                                                    if 9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value)) * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value)):
                                                                                                                                                        revert with 0, 'ds-math-mul-overflow'
                                                                                                                                                    else:
                                                                                                                                                        if 10000 * ext_call.return_data[18 len 14] / 10000 != ext_call.return_data[18 len 14]:
                                                                                                                                                            revert with 0, 'ds-math-mul-overflow'
                                                                                                                                                        else:
                                                                                                                                                            if (10000 * ext_call.return_data[18 len 14]) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value))) < 10000 * ext_call.return_data[18 len 14]:
                                                                                                                                                                revert with 0, 'ds-math-add-overflow'
                                                                                                                                                            else:
                                                                                                                                                                require (10000 * ext_call.return_data[18 len 14]) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value)))
                                                                                                                                                                return address(ext_call.return_data[0]), 
                                                                                                                                                                       ext_call.return_data[32 len 64],
                                                                                                                                                                       address(ext_call.return_data[0]),
                                                                                                                                                                       0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value),
                                                                                                                                                                       0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value)),
                                                                                                                                                                       9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value)) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value))),
                                                                                                                                                                       3
                                                                                                                    else:
                                                                                                                        require Mask(112, 0, ext_call.return_data[32])
                                                                                                                        if 9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value):
                                                                                                                            revert with 0, 'ds-math-mul-overflow'
                                                                                                                        else:
                                                                                                                            if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                                                                                                                                revert with 0, 'ds-math-mul-overflow'
                                                                                                                            else:
                                                                                                                                if (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value)) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                                                                                                                    revert with 0, 'ds-math-add-overflow'
                                                                                                                                else:
                                                                                                                                    require (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value))
                                                                                                                                    if 9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value)) <= 0:
                                                                                                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                                                                                    32,
                                                                                                                                                    41,
                                                                                                                                                    0xfe50616e63616b654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                                                                                                                                    mem[205 len 23]
                                                                                                                                    else:
                                                                                                                                        if ext_call.return_data[18 len 14] <= 0:
                                                                                                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                                                                                        32,
                                                                                                                                                        38,
                                                                                                                                                        0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                                                                                                                                        mem[202 len 26]
                                                                                                                                        else:
                                                                                                                                            if ext_call.return_data[50 len 14] <= 0:
                                                                                                                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                                                                                            32,
                                                                                                                                                            38,
                                                                                                                                                            0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                                                                                                                                            mem[202 len 26]
                                                                                                                                            else:
                                                                                                                                                if 9975 * 9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value)) / 9975 != 9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value)):
                                                                                                                                                    revert with 0, 'ds-math-mul-overflow'
                                                                                                                                                else:
                                                                                                                                                    if not ext_call.return_data[50 len 14]:
                                                                                                                                                        if 10000 * ext_call.return_data[18 len 14] / 10000 != ext_call.return_data[18 len 14]:
                                                                                                                                                            revert with 0, 'ds-math-mul-overflow'
                                                                                                                                                        else:
                                                                                                                                                            if (10000 * ext_call.return_data[18 len 14]) + (9975 * 9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value))) < 10000 * ext_call.return_data[18 len 14]:
                                                                                                                                                                revert with 0, 'ds-math-add-overflow'
                                                                                                                                                            else:
                                                                                                                                                                require (10000 * ext_call.return_data[18 len 14]) + (9975 * 9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value)))
                                                                                                                                                                return address(ext_call.return_data[0]), 
                                                                                                                                                                       ext_call.return_data[32 len 64],
                                                                                                                                                                       address(ext_call.return_data[0]),
                                                                                                                                                                       0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value),
                                                                                                                                                                       9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value)),
                                                                                                                                                                       0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value))),
                                                                                                                                                                       3
                                                                                                                                                    else:
                                                                                                                                                        require ext_call.return_data[50 len 14]
                                                                                                                                                        if 9975 * 9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value)) * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 9975 * 9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value)):
                                                                                                                                                            revert with 0, 'ds-math-mul-overflow'
                                                                                                                                                        else:
                                                                                                                                                            if 10000 * ext_call.return_data[18 len 14] / 10000 != ext_call.return_data[18 len 14]:
                                                                                                                                                                revert with 0, 'ds-math-mul-overflow'
                                                                                                                                                            else:
                                                                                                                                                                if (10000 * ext_call.return_data[18 len 14]) + (9975 * 9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value))) < 10000 * ext_call.return_data[18 len 14]:
                                                                                                                                                                    revert with 0, 'ds-math-add-overflow'
                                                                                                                                                                else:
                                                                                                                                                                    require (10000 * ext_call.return_data[18 len 14]) + (9975 * 9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value)))
                                                                                                                                                                    return address(ext_call.return_data[0]), 
                                                                                                                                                                           ext_call.return_data[32 len 64],
                                                                                                                                                                           address(ext_call.return_data[0]),
                                                                                                                                                                           0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value),
                                                                                                                                                                           9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value)),
                                                                                                                                                                           9975 * 9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value)) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value))),
                                                                                                                                                                           3
                                                                                        else:
                                                                                            require Mask(112, 0, ext_call.return_data[0])
                                                                                            if 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 9975 * msg.value:
                                                                                                revert with 0, 'ds-math-mul-overflow'
                                                                                            else:
                                                                                                if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                                                                                                    revert with 0, 'ds-math-mul-overflow'
                                                                                                else:
                                                                                                    if (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                                                                                                        revert with 0, 'ds-math-add-overflow'
                                                                                                    else:
                                                                                                        require (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value)
                                                                                                        if 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value) <= 0:
                                                                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                                                        32,
                                                                                                                        41,
                                                                                                                        0xfe50616e63616b654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                                                                                                        mem[205 len 23]
                                                                                                        else:
                                                                                                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                                                            32,
                                                                                                                            38,
                                                                                                                            0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                                                                                                            mem[202 len 26]
                                                                                                            else:
                                                                                                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                                                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                                                                32,
                                                                                                                                38,
                                                                                                                                0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                                                                                                                mem[202 len 26]
                                                                                                                else:
                                                                                                                    if 9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value) / 9975 != 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value):
                                                                                                                        revert with 0, 'ds-math-mul-overflow'
                                                                                                                    else:
                                                                                                                        if not Mask(112, 0, ext_call.return_data[32]):
                                                                                                                            if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                                                                                                                                revert with 0, 'ds-math-mul-overflow'
                                                                                                                            else:
                                                                                                                                if (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value)) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                                                                                                                    revert with 0, 'ds-math-add-overflow'
                                                                                                                                else:
                                                                                                                                    require (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value))
                                                                                                                                    if 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value)) <= 0:
                                                                                                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                                                                                    32,
                                                                                                                                                    41,
                                                                                                                                                    0xfe50616e63616b654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                                                                                                                                    mem[205 len 23]
                                                                                                                                    else:
                                                                                                                                        if ext_call.return_data[18 len 14] <= 0:
                                                                                                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                                                                                        32,
                                                                                                                                                        38,
                                                                                                                                                        0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                                                                                                                                        mem[202 len 26]
                                                                                                                                        else:
                                                                                                                                            if ext_call.return_data[50 len 14] <= 0:
                                                                                                                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                                                                                            32,
                                                                                                                                                            38,
                                                                                                                                                            0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                                                                                                                                            mem[202 len 26]
                                                                                                                                            else:
                                                                                                                                                if 9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value)) / 9975 != 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value)):
                                                                                                                                                    revert with 0, 'ds-math-mul-overflow'
                                                                                                                                                else:
                                                                                                                                                    if not ext_call.return_data[50 len 14]:
                                                                                                                                                        if 10000 * ext_call.return_data[18 len 14] / 10000 != ext_call.return_data[18 len 14]:
                                                                                                                                                            revert with 0, 'ds-math-mul-overflow'
                                                                                                                                                        else:
                                                                                                                                                            if (10000 * ext_call.return_data[18 len 14]) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value))) < 10000 * ext_call.return_data[18 len 14]:
                                                                                                                                                                revert with 0, 'ds-math-add-overflow'
                                                                                                                                                            else:
                                                                                                                                                                require (10000 * ext_call.return_data[18 len 14]) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value)))
                                                                                                                                                                return address(ext_call.return_data[0]), 
                                                                                                                                                                       ext_call.return_data[32 len 64],
                                                                                                                                                                       address(ext_call.return_data[0]),
                                                                                                                                                                       9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value),
                                                                                                                                                                       0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value)),
                                                                                                                                                                       0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value))),
                                                                                                                                                                       3
                                                                                                                                                    else:
                                                                                                                                                        require ext_call.return_data[50 len 14]
                                                                                                                                                        if 9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value)) * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value)):
                                                                                                                                                            revert with 0, 'ds-math-mul-overflow'
                                                                                                                                                        else:
                                                                                                                                                            if 10000 * ext_call.return_data[18 len 14] / 10000 != ext_call.return_data[18 len 14]:
                                                                                                                                                                revert with 0, 'ds-math-mul-overflow'
                                                                                                                                                            else:
                                                                                                                                                                if (10000 * ext_call.return_data[18 len 14]) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value))) < 10000 * ext_call.return_data[18 len 14]:
                                                                                                                                                                    revert with 0, 'ds-math-add-overflow'
                                                                                                                                                                else:
                                                                                                                                                                    require (10000 * ext_call.return_data[18 len 14]) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value)))
                                                                                                                                                                    return address(ext_call.return_data[0]), 
                                                                                                                                                                           ext_call.return_data[32 len 64],
                                                                                                                                                                           address(ext_call.return_data[0]),
                                                                                                                                                                           9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value),
                                                                                                                                                                           0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value)),
                                                                                                                                                                           9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value)) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value))),
                                                                                                                                                                           3
                                                                                                                        else:
                                                                                                                            require Mask(112, 0, ext_call.return_data[32])
                                                                                                                            if 9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value):
                                                                                                                                revert with 0, 'ds-math-mul-overflow'
                                                                                                                            else:
                                                                                                                                if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                                                                                                                                    revert with 0, 'ds-math-mul-overflow'
                                                                                                                                else:
                                                                                                                                    if (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value)) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                                                                                                                        revert with 0, 'ds-math-add-overflow'
                                                                                                                                    else:
                                                                                                                                        require (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value))
                                                                                                                                        if 9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value)) <= 0:
                                                                                                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                                                                                        32,
                                                                                                                                                        41,
                                                                                                                                                        0xfe50616e63616b654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                                                                                                                                        mem[205 len 23]
                                                                                                                                        else:
                                                                                                                                            if ext_call.return_data[18 len 14] <= 0:
                                                                                                                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                                                                                            32,
                                                                                                                                                            38,
                                                                                                                                                            0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                                                                                                                                            mem[202 len 26]
                                                                                                                                            else:
                                                                                                                                                if ext_call.return_data[50 len 14] <= 0:
                                                                                                                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                                                                                                32,
                                                                                                                                                                38,
                                                                                                                                                                0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                                                                                                                                                mem[202 len 26]
                                                                                                                                                else:
                                                                                                                                                    if 9975 * 9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value)) / 9975 != 9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value)):
                                                                                                                                                        revert with 0, 'ds-math-mul-overflow'
                                                                                                                                                    else:
                                                                                                                                                        if not ext_call.return_data[50 len 14]:
                                                                                                                                                            if 10000 * ext_call.return_data[18 len 14] / 10000 != ext_call.return_data[18 len 14]:
                                                                                                                                                                revert with 0, 'ds-math-mul-overflow'
                                                                                                                                                            else:
                                                                                                                                                                if (10000 * ext_call.return_data[18 len 14]) + (9975 * 9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value))) < 10000 * ext_call.return_data[18 len 14]:
                                                                                                                                                                    revert with 0, 'ds-math-add-overflow'
                                                                                                                                                                else:
                                                                                                                                                                    require (10000 * ext_call.return_data[18 len 14]) + (9975 * 9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value)))
                                                                                                                                                                    return address(ext_call.return_data[0]), 
                                                                                                                                                                           ext_call.return_data[32 len 64],
                                                                                                                                                                           address(ext_call.return_data[0]),
                                                                                                                                                                           9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value),
                                                                                                                                                                           9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value)),
                                                                                                                                                                           0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value))),
                                                                                                                                                                           3
                                                                                                                                                        else:
                                                                                                                                                            require ext_call.return_data[50 len 14]
                                                                                                                                                            if 9975 * 9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value)) * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 9975 * 9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value)):
                                                                                                                                                                revert with 0, 'ds-math-mul-overflow'
                                                                                                                                                            else:
                                                                                                                                                                if 10000 * ext_call.return_data[18 len 14] / 10000 != ext_call.return_data[18 len 14]:
                                                                                                                                                                    revert with 0, 'ds-math-mul-overflow'
                                                                                                                                                                else:
                                                                                                                                                                    if (10000 * ext_call.return_data[18 len 14]) + (9975 * 9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value))) < 10000 * ext_call.return_data[18 len 14]:
                                                                                                                                                                        revert with 0, 'ds-math-add-overflow'
                                                                                                                                                                    else:
                                                                                                                                                                        require (10000 * ext_call.return_data[18 len 14]) + (9975 * 9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value)))
                                                                                                                                                                        return address(ext_call.return_data[0]), 
                                                                                                                                                                               ext_call.return_data[32 len 64],
                                                                                                                                                                               address(ext_call.return_data[0]),
                                                                                                                                                                               9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value),
                                                                                                                                                                               9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value)),
                                                                                                                                                                               9975 * 9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value)) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value))),
                                                                                                                                                                               3
                                                                else:
                                                                    if WBNBAddress != address(ext_call.return_data[0]):
                                                                        if msg.value <= 0:
                                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                        32,
                                                                                        41,
                                                                                        0xfe50616e63616b654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                                                                        mem[205 len 23]
                                                                        else:
                                                                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                            32,
                                                                                            38,
                                                                                            0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                                                                            mem[202 len 26]
                                                                            else:
                                                                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                                32,
                                                                                                38,
                                                                                                0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                                                                                mem[202 len 26]
                                                                                else:
                                                                                    if 9975 * msg.value / 9975 != msg.value:
                                                                                        revert with 0, 'ds-math-mul-overflow'
                                                                                    else:
                                                                                        if not Mask(112, 0, ext_call.return_data[32]):
                                                                                            if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                                                                                                revert with 0, 'ds-math-mul-overflow'
                                                                                            else:
                                                                                                if (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                                                                                    revert with 0, 'ds-math-add-overflow'
                                                                                                else:
                                                                                                    require (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value)
                                                                                                    if 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value) <= 0:
                                                                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                                                    32,
                                                                                                                    41,
                                                                                                                    0xfe50616e63616b654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                                                                                                    mem[205 len 23]
                                                                                                    else:
                                                                                                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                                                        32,
                                                                                                                        38,
                                                                                                                        0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                                                                                                        mem[202 len 26]
                                                                                                        else:
                                                                                                            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                                                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                                                            32,
                                                                                                                            38,
                                                                                                                            0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                                                                                                            mem[202 len 26]
                                                                                                            else:
                                                                                                                if 9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value) / 9975 != 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value):
                                                                                                                    revert with 0, 'ds-math-mul-overflow'
                                                                                                                else:
                                                                                                                    if not Mask(112, 0, ext_call.return_data[32]):
                                                                                                                        if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                                                                                                                            revert with 0, 'ds-math-mul-overflow'
                                                                                                                        else:
                                                                                                                            if (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value)) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                                                                                                                revert with 0, 'ds-math-add-overflow'
                                                                                                                            else:
                                                                                                                                require (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value))
                                                                                                                                if 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value)) <= 0:
                                                                                                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                                                                                32,
                                                                                                                                                41,
                                                                                                                                                0xfe50616e63616b654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                                                                                                                                mem[205 len 23]
                                                                                                                                else:
                                                                                                                                    if ext_call.return_data[18 len 14] <= 0:
                                                                                                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                                                                                    32,
                                                                                                                                                    38,
                                                                                                                                                    0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                                                                                                                                    mem[202 len 26]
                                                                                                                                    else:
                                                                                                                                        if ext_call.return_data[50 len 14] <= 0:
                                                                                                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                                                                                        32,
                                                                                                                                                        38,
                                                                                                                                                        0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                                                                                                                                        mem[202 len 26]
                                                                                                                                        else:
                                                                                                                                            if 9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value)) / 9975 != 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value)):
                                                                                                                                                revert with 0, 'ds-math-mul-overflow'
                                                                                                                                            else:
                                                                                                                                                if not ext_call.return_data[50 len 14]:
                                                                                                                                                    if 10000 * ext_call.return_data[18 len 14] / 10000 != ext_call.return_data[18 len 14]:
                                                                                                                                                        revert with 0, 'ds-math-mul-overflow'
                                                                                                                                                    else:
                                                                                                                                                        if (10000 * ext_call.return_data[18 len 14]) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value))) < 10000 * ext_call.return_data[18 len 14]:
                                                                                                                                                            revert with 0, 'ds-math-add-overflow'
                                                                                                                                                        else:
                                                                                                                                                            require (10000 * ext_call.return_data[18 len 14]) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value)))
                                                                                                                                                            return address(ext_call.return_data[0]), 
                                                                                                                                                                   ext_call.return_data[32 len 64],
                                                                                                                                                                   address(ext_call.return_data[0]),
                                                                                                                                                                   0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value),
                                                                                                                                                                   0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value)),
                                                                                                                                                                   0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value))),
                                                                                                                                                                   2
                                                                                                                                                else:
                                                                                                                                                    require ext_call.return_data[50 len 14]
                                                                                                                                                    if 9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value)) * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value)):
                                                                                                                                                        revert with 0, 'ds-math-mul-overflow'
                                                                                                                                                    else:
                                                                                                                                                        if 10000 * ext_call.return_data[18 len 14] / 10000 != ext_call.return_data[18 len 14]:
                                                                                                                                                            revert with 0, 'ds-math-mul-overflow'
                                                                                                                                                        else:
                                                                                                                                                            if (10000 * ext_call.return_data[18 len 14]) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value))) < 10000 * ext_call.return_data[18 len 14]:
                                                                                                                                                                revert with 0, 'ds-math-add-overflow'
                                                                                                                                                            else:
                                                                                                                                                                require (10000 * ext_call.return_data[18 len 14]) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value)))
                                                                                                                                                                return address(ext_call.return_data[0]), 
                                                                                                                                                                       ext_call.return_data[32 len 64],
                                                                                                                                                                       address(ext_call.return_data[0]),
                                                                                                                                                                       0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value),
                                                                                                                                                                       0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value)),
                                                                                                                                                                       9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value)) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value))),
                                                                                                                                                                       2
                                                                                                                    else:
                                                                                                                        require Mask(112, 0, ext_call.return_data[32])
                                                                                                                        if 9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value):
                                                                                                                            revert with 0, 'ds-math-mul-overflow'
                                                                                                                        else:
                                                                                                                            if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                                                                                                                                revert with 0, 'ds-math-mul-overflow'
                                                                                                                            else:
                                                                                                                                if (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value)) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                                                                                                                    revert with 0, 'ds-math-add-overflow'
                                                                                                                                else:
                                                                                                                                    require (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value))
                                                                                                                                    if 9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value)) <= 0:
                                                                                                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                                                                                    32,
                                                                                                                                                    41,
                                                                                                                                                    0xfe50616e63616b654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                                                                                                                                    mem[205 len 23]
                                                                                                                                    else:
                                                                                                                                        if ext_call.return_data[18 len 14] <= 0:
                                                                                                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                                                                                        32,
                                                                                                                                                        38,
                                                                                                                                                        0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                                                                                                                                        mem[202 len 26]
                                                                                                                                        else:
                                                                                                                                            if ext_call.return_data[50 len 14] <= 0:
                                                                                                                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                                                                                            32,
                                                                                                                                                            38,
                                                                                                                                                            0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                                                                                                                                            mem[202 len 26]
                                                                                                                                            else:
                                                                                                                                                if 9975 * 9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value)) / 9975 != 9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value)):
                                                                                                                                                    revert with 0, 'ds-math-mul-overflow'
                                                                                                                                                else:
                                                                                                                                                    if not ext_call.return_data[50 len 14]:
                                                                                                                                                        if 10000 * ext_call.return_data[18 len 14] / 10000 != ext_call.return_data[18 len 14]:
                                                                                                                                                            revert with 0, 'ds-math-mul-overflow'
                                                                                                                                                        else:
                                                                                                                                                            if (10000 * ext_call.return_data[18 len 14]) + (9975 * 9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value))) < 10000 * ext_call.return_data[18 len 14]:
                                                                                                                                                                revert with 0, 'ds-math-add-overflow'
                                                                                                                                                            else:
                                                                                                                                                                require (10000 * ext_call.return_data[18 len 14]) + (9975 * 9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value)))
                                                                                                                                                                return address(ext_call.return_data[0]), 
                                                                                                                                                                       ext_call.return_data[32 len 64],
                                                                                                                                                                       address(ext_call.return_data[0]),
                                                                                                                                                                       0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value),
                                                                                                                                                                       9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value)),
                                                                                                                                                                       0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value))),
                                                                                                                                                                       2
                                                                                                                                                    else:
                                                                                                                                                        require ext_call.return_data[50 len 14]
                                                                                                                                                        if 9975 * 9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value)) * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 9975 * 9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value)):
                                                                                                                                                            revert with 0, 'ds-math-mul-overflow'
                                                                                                                                                        else:
                                                                                                                                                            if 10000 * ext_call.return_data[18 len 14] / 10000 != ext_call.return_data[18 len 14]:
                                                                                                                                                                revert with 0, 'ds-math-mul-overflow'
                                                                                                                                                            else:
                                                                                                                                                                if (10000 * ext_call.return_data[18 len 14]) + (9975 * 9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value))) < 10000 * ext_call.return_data[18 len 14]:
                                                                                                                                                                    revert with 0, 'ds-math-add-overflow'
                                                                                                                                                                else:
                                                                                                                                                                    require (10000 * ext_call.return_data[18 len 14]) + (9975 * 9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value)))
                                                                                                                                                                    return address(ext_call.return_data[0]), 
                                                                                                                                                                           ext_call.return_data[32 len 64],
                                                                                                                                                                           address(ext_call.return_data[0]),
                                                                                                                                                                           0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value),
                                                                                                                                                                           9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value)),
                                                                                                                                                                           9975 * 9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value)) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value))),
                                                                                                                                                                           2
                                                                                        else:
                                                                                            require Mask(112, 0, ext_call.return_data[32])
                                                                                            if 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 9975 * msg.value:
                                                                                                revert with 0, 'ds-math-mul-overflow'
                                                                                            else:
                                                                                                if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                                                                                                    revert with 0, 'ds-math-mul-overflow'
                                                                                                else:
                                                                                                    if (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                                                                                        revert with 0, 'ds-math-add-overflow'
                                                                                                    else:
                                                                                                        require (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value)
                                                                                                        if 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value) <= 0:
                                                                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                                                        32,
                                                                                                                        41,
                                                                                                                        0xfe50616e63616b654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                                                                                                        mem[205 len 23]
                                                                                                        else:
                                                                                                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                                                            32,
                                                                                                                            38,
                                                                                                                            0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                                                                                                            mem[202 len 26]
                                                                                                            else:
                                                                                                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                                                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                                                                32,
                                                                                                                                38,
                                                                                                                                0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                                                                                                                mem[202 len 26]
                                                                                                                else:
                                                                                                                    if 9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value) / 9975 != 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value):
                                                                                                                        revert with 0, 'ds-math-mul-overflow'
                                                                                                                    else:
                                                                                                                        if not Mask(112, 0, ext_call.return_data[32]):
                                                                                                                            if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                                                                                                                                revert with 0, 'ds-math-mul-overflow'
                                                                                                                            else:
                                                                                                                                if (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value)) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                                                                                                                    revert with 0, 'ds-math-add-overflow'
                                                                                                                                else:
                                                                                                                                    require (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value))
                                                                                                                                    if 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value)) <= 0:
                                                                                                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                                                                                    32,
                                                                                                                                                    41,
                                                                                                                                                    0xfe50616e63616b654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                                                                                                                                    mem[205 len 23]
                                                                                                                                    else:
                                                                                                                                        if ext_call.return_data[18 len 14] <= 0:
                                                                                                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                                                                                        32,
                                                                                                                                                        38,
                                                                                                                                                        0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                                                                                                                                        mem[202 len 26]
                                                                                                                                        else:
                                                                                                                                            if ext_call.return_data[50 len 14] <= 0:
                                                                                                                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                                                                                            32,
                                                                                                                                                            38,
                                                                                                                                                            0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                                                                                                                                            mem[202 len 26]
                                                                                                                                            else:
                                                                                                                                                if 9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value)) / 9975 != 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value)):
                                                                                                                                                    revert with 0, 'ds-math-mul-overflow'
                                                                                                                                                else:
                                                                                                                                                    if not ext_call.return_data[50 len 14]:
                                                                                                                                                        if 10000 * ext_call.return_data[18 len 14] / 10000 != ext_call.return_data[18 len 14]:
                                                                                                                                                            revert with 0, 'ds-math-mul-overflow'
                                                                                                                                                        else:
                                                                                                                                                            if (10000 * ext_call.return_data[18 len 14]) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value))) < 10000 * ext_call.return_data[18 len 14]:
                                                                                                                                                                revert with 0, 'ds-math-add-overflow'
                                                                                                                                                            else:
                                                                                                                                                                require (10000 * ext_call.return_data[18 len 14]) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value)))
                                                                                                                                                                return address(ext_call.return_data[0]), 
                                                                                                                                                                       ext_call.return_data[32 len 64],
                                                                                                                                                                       address(ext_call.return_data[0]),
                                                                                                                                                                       9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value),
                                                                                                                                                                       0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value)),
                                                                                                                                                                       0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value))),
                                                                                                                                                                       2
                                                                                                                                                    else:
                                                                                                                                                        require ext_call.return_data[50 len 14]
                                                                                                                                                        if 9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value)) * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value)):
                                                                                                                                                            revert with 0, 'ds-math-mul-overflow'
                                                                                                                                                        else:
                                                                                                                                                            if 10000 * ext_call.return_data[18 len 14] / 10000 != ext_call.return_data[18 len 14]:
                                                                                                                                                                revert with 0, 'ds-math-mul-overflow'
                                                                                                                                                            else:
                                                                                                                                                                if (10000 * ext_call.return_data[18 len 14]) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value))) < 10000 * ext_call.return_data[18 len 14]:
                                                                                                                                                                    revert with 0, 'ds-math-add-overflow'
                                                                                                                                                                else:
                                                                                                                                                                    require (10000 * ext_call.return_data[18 len 14]) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value)))
                                                                                                                                                                    return address(ext_call.return_data[0]), 
                                                                                                                                                                           ext_call.return_data[32 len 64],
                                                                                                                                                                           address(ext_call.return_data[0]),
                                                                                                                                                                           9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value),
                                                                                                                                                                           0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value)),
                                                                                                                                                                           9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value)) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value))),
                                                                                                                                                                           2
                                                                                                                        else:
                                                                                                                            require Mask(112, 0, ext_call.return_data[32])
                                                                                                                            if 9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value):
                                                                                                                                revert with 0, 'ds-math-mul-overflow'
                                                                                                                            else:
                                                                                                                                if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                                                                                                                                    revert with 0, 'ds-math-mul-overflow'
                                                                                                                                else:
                                                                                                                                    if (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value)) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                                                                                                                        revert with 0, 'ds-math-add-overflow'
                                                                                                                                    else:
                                                                                                                                        require (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value))
                                                                                                                                        if 9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value)) <= 0:
                                                                                                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                                                                                        32,
                                                                                                                                                        41,
                                                                                                                                                        0xfe50616e63616b654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                                                                                                                                        mem[205 len 23]
                                                                                                                                        else:
                                                                                                                                            if ext_call.return_data[18 len 14] <= 0:
                                                                                                                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                                                                                            32,
                                                                                                                                                            38,
                                                                                                                                                            0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                                                                                                                                            mem[202 len 26]
                                                                                                                                            else:
                                                                                                                                                if ext_call.return_data[50 len 14] <= 0:
                                                                                                                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                                                                                                32,
                                                                                                                                                                38,
                                                                                                                                                                0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                                                                                                                                                mem[202 len 26]
                                                                                                                                                else:
                                                                                                                                                    if 9975 * 9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value)) / 9975 != 9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value)):
                                                                                                                                                        revert with 0, 'ds-math-mul-overflow'
                                                                                                                                                    else:
                                                                                                                                                        if not ext_call.return_data[50 len 14]:
                                                                                                                                                            if 10000 * ext_call.return_data[18 len 14] / 10000 != ext_call.return_data[18 len 14]:
                                                                                                                                                                revert with 0, 'ds-math-mul-overflow'
                                                                                                                                                            else:
                                                                                                                                                                if (10000 * ext_call.return_data[18 len 14]) + (9975 * 9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value))) < 10000 * ext_call.return_data[18 len 14]:
                                                                                                                                                                    revert with 0, 'ds-math-add-overflow'
                                                                                                                                                                else:
                                                                                                                                                                    require (10000 * ext_call.return_data[18 len 14]) + (9975 * 9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value)))
                                                                                                                                                                    return address(ext_call.return_data[0]), 
                                                                                                                                                                           ext_call.return_data[32 len 64],
                                                                                                                                                                           address(ext_call.return_data[0]),
                                                                                                                                                                           9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value),
                                                                                                                                                                           9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value)),
                                                                                                                                                                           0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value))),
                                                                                                                                                                           2
                                                                                                                                                        else:
                                                                                                                                                            require ext_call.return_data[50 len 14]
                                                                                                                                                            if 9975 * 9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value)) * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 9975 * 9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value)):
                                                                                                                                                                revert with 0, 'ds-math-mul-overflow'
                                                                                                                                                            else:
                                                                                                                                                                if 10000 * ext_call.return_data[18 len 14] / 10000 != ext_call.return_data[18 len 14]:
                                                                                                                                                                    revert with 0, 'ds-math-mul-overflow'
                                                                                                                                                                else:
                                                                                                                                                                    if (10000 * ext_call.return_data[18 len 14]) + (9975 * 9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value))) < 10000 * ext_call.return_data[18 len 14]:
                                                                                                                                                                        revert with 0, 'ds-math-add-overflow'
                                                                                                                                                                    else:
                                                                                                                                                                        require (10000 * ext_call.return_data[18 len 14]) + (9975 * 9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value)))
                                                                                                                                                                        return address(ext_call.return_data[0]), 
                                                                                                                                                                               ext_call.return_data[32 len 64],
                                                                                                                                                                               address(ext_call.return_data[0]),
                                                                                                                                                                               9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value),
                                                                                                                                                                               9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value)),
                                                                                                                                                                               9975 * 9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value)) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value))),
                                                                                                                                                                               2
                                                                    else:
                                                                        if msg.value <= 0:
                                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                        32,
                                                                                        41,
                                                                                        0xfe50616e63616b654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                                                                        mem[205 len 23]
                                                                        else:
                                                                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                            32,
                                                                                            38,
                                                                                            0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                                                                            mem[202 len 26]
                                                                            else:
                                                                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                                32,
                                                                                                38,
                                                                                                0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                                                                                mem[202 len 26]
                                                                                else:
                                                                                    if 9975 * msg.value / 9975 != msg.value:
                                                                                        revert with 0, 'ds-math-mul-overflow'
                                                                                    else:
                                                                                        if not Mask(112, 0, ext_call.return_data[32]):
                                                                                            if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                                                                                                revert with 0, 'ds-math-mul-overflow'
                                                                                            else:
                                                                                                if (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                                                                                    revert with 0, 'ds-math-add-overflow'
                                                                                                else:
                                                                                                    require (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value)
                                                                                                    if 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value) <= 0:
                                                                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                                                    32,
                                                                                                                    41,
                                                                                                                    0xfe50616e63616b654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                                                                                                    mem[205 len 23]
                                                                                                    else:
                                                                                                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                                                        32,
                                                                                                                        38,
                                                                                                                        0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                                                                                                        mem[202 len 26]
                                                                                                        else:
                                                                                                            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                                                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                                                            32,
                                                                                                                            38,
                                                                                                                            0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                                                                                                            mem[202 len 26]
                                                                                                            else:
                                                                                                                if 9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value) / 9975 != 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value):
                                                                                                                    revert with 0, 'ds-math-mul-overflow'
                                                                                                                else:
                                                                                                                    if not Mask(112, 0, ext_call.return_data[32]):
                                                                                                                        if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                                                                                                                            revert with 0, 'ds-math-mul-overflow'
                                                                                                                        else:
                                                                                                                            if (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value)) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                                                                                                                revert with 0, 'ds-math-add-overflow'
                                                                                                                            else:
                                                                                                                                require (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value))
                                                                                                                                if 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value)) <= 0:
                                                                                                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                                                                                32,
                                                                                                                                                41,
                                                                                                                                                0xfe50616e63616b654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                                                                                                                                mem[205 len 23]
                                                                                                                                else:
                                                                                                                                    if ext_call.return_data[50 len 14] <= 0:
                                                                                                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                                                                                    32,
                                                                                                                                                    38,
                                                                                                                                                    0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                                                                                                                                    mem[202 len 26]
                                                                                                                                    else:
                                                                                                                                        if ext_call.return_data[18 len 14] <= 0:
                                                                                                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                                                                                        32,
                                                                                                                                                        38,
                                                                                                                                                        0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                                                                                                                                        mem[202 len 26]
                                                                                                                                        else:
                                                                                                                                            if 9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value)) / 9975 != 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value)):
                                                                                                                                                revert with 0, 'ds-math-mul-overflow'
                                                                                                                                            else:
                                                                                                                                                if not ext_call.return_data[18 len 14]:
                                                                                                                                                    if 10000 * ext_call.return_data[50 len 14] / 10000 != ext_call.return_data[50 len 14]:
                                                                                                                                                        revert with 0, 'ds-math-mul-overflow'
                                                                                                                                                    else:
                                                                                                                                                        if (10000 * ext_call.return_data[50 len 14]) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value))) < 10000 * ext_call.return_data[50 len 14]:
                                                                                                                                                            revert with 0, 'ds-math-add-overflow'
                                                                                                                                                        else:
                                                                                                                                                            require (10000 * ext_call.return_data[50 len 14]) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value)))
                                                                                                                                                            return address(ext_call.return_data[0]), 
                                                                                                                                                                   ext_call.return_data[32 len 64],
                                                                                                                                                                   address(ext_call.return_data[0]),
                                                                                                                                                                   0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value),
                                                                                                                                                                   0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value)),
                                                                                                                                                                   0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value))),
                                                                                                                                                                   1
                                                                                                                                                else:
                                                                                                                                                    require ext_call.return_data[18 len 14]
                                                                                                                                                    if 9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value)) * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value)):
                                                                                                                                                        revert with 0, 'ds-math-mul-overflow'
                                                                                                                                                    else:
                                                                                                                                                        if 10000 * ext_call.return_data[50 len 14] / 10000 != ext_call.return_data[50 len 14]:
                                                                                                                                                            revert with 0, 'ds-math-mul-overflow'
                                                                                                                                                        else:
                                                                                                                                                            if (10000 * ext_call.return_data[50 len 14]) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value))) < 10000 * ext_call.return_data[50 len 14]:
                                                                                                                                                                revert with 0, 'ds-math-add-overflow'
                                                                                                                                                            else:
                                                                                                                                                                require (10000 * ext_call.return_data[50 len 14]) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value)))
                                                                                                                                                                return address(ext_call.return_data[0]), 
                                                                                                                                                                       ext_call.return_data[32 len 64],
                                                                                                                                                                       address(ext_call.return_data[0]),
                                                                                                                                                                       0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value),
                                                                                                                                                                       0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value)),
                                                                                                                                                                       9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value)) * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value))),
                                                                                                                                                                       1
                                                                                                                    else:
                                                                                                                        require Mask(112, 0, ext_call.return_data[32])
                                                                                                                        if 9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value):
                                                                                                                            revert with 0, 'ds-math-mul-overflow'
                                                                                                                        else:
                                                                                                                            if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                                                                                                                                revert with 0, 'ds-math-mul-overflow'
                                                                                                                            else:
                                                                                                                                if (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value)) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                                                                                                                    revert with 0, 'ds-math-add-overflow'
                                                                                                                                else:
                                                                                                                                    require (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value))
                                                                                                                                    if 9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value)) <= 0:
                                                                                                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                                                                                    32,
                                                                                                                                                    41,
                                                                                                                                                    0xfe50616e63616b654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                                                                                                                                    mem[205 len 23]
                                                                                                                                    else:
                                                                                                                                        if ext_call.return_data[50 len 14] <= 0:
                                                                                                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                                                                                        32,
                                                                                                                                                        38,
                                                                                                                                                        0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                                                                                                                                        mem[202 len 26]
                                                                                                                                        else:
                                                                                                                                            if ext_call.return_data[18 len 14] <= 0:
                                                                                                                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                                                                                            32,
                                                                                                                                                            38,
                                                                                                                                                            0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                                                                                                                                            mem[202 len 26]
                                                                                                                                            else:
                                                                                                                                                if 9975 * 9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value)) / 9975 != 9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value)):
                                                                                                                                                    revert with 0, 'ds-math-mul-overflow'
                                                                                                                                                else:
                                                                                                                                                    if not ext_call.return_data[18 len 14]:
                                                                                                                                                        if 10000 * ext_call.return_data[50 len 14] / 10000 != ext_call.return_data[50 len 14]:
                                                                                                                                                            revert with 0, 'ds-math-mul-overflow'
                                                                                                                                                        else:
                                                                                                                                                            if (10000 * ext_call.return_data[50 len 14]) + (9975 * 9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value))) < 10000 * ext_call.return_data[50 len 14]:
                                                                                                                                                                revert with 0, 'ds-math-add-overflow'
                                                                                                                                                            else:
                                                                                                                                                                require (10000 * ext_call.return_data[50 len 14]) + (9975 * 9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value)))
                                                                                                                                                                return address(ext_call.return_data[0]), 
                                                                                                                                                                       ext_call.return_data[32 len 64],
                                                                                                                                                                       address(ext_call.return_data[0]),
                                                                                                                                                                       0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value),
                                                                                                                                                                       9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value)),
                                                                                                                                                                       0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * 9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value))),
                                                                                                                                                                       1
                                                                                                                                                    else:
                                                                                                                                                        require ext_call.return_data[18 len 14]
                                                                                                                                                        if 9975 * 9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value)) * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 9975 * 9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value)):
                                                                                                                                                            revert with 0, 'ds-math-mul-overflow'
                                                                                                                                                        else:
                                                                                                                                                            if 10000 * ext_call.return_data[50 len 14] / 10000 != ext_call.return_data[50 len 14]:
                                                                                                                                                                revert with 0, 'ds-math-mul-overflow'
                                                                                                                                                            else:
                                                                                                                                                                if (10000 * ext_call.return_data[50 len 14]) + (9975 * 9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value))) < 10000 * ext_call.return_data[50 len 14]:
                                                                                                                                                                    revert with 0, 'ds-math-add-overflow'
                                                                                                                                                                else:
                                                                                                                                                                    require (10000 * ext_call.return_data[50 len 14]) + (9975 * 9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value)))
                                                                                                                                                                    return address(ext_call.return_data[0]), 
                                                                                                                                                                           ext_call.return_data[32 len 64],
                                                                                                                                                                           address(ext_call.return_data[0]),
                                                                                                                                                                           0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value),
                                                                                                                                                                           9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value)),
                                                                                                                                                                           9975 * 9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value)) * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * 9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value))),
                                                                                                                                                                           1
                                                                                        else:
                                                                                            require Mask(112, 0, ext_call.return_data[32])
                                                                                            if 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 9975 * msg.value:
                                                                                                revert with 0, 'ds-math-mul-overflow'
                                                                                            else:
                                                                                                if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                                                                                                    revert with 0, 'ds-math-mul-overflow'
                                                                                                else:
                                                                                                    if (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                                                                                        revert with 0, 'ds-math-add-overflow'
                                                                                                    else:
                                                                                                        require (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value)
                                                                                                        if 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value) <= 0:
                                                                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                                                        32,
                                                                                                                        41,
                                                                                                                        0xfe50616e63616b654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                                                                                                        mem[205 len 23]
                                                                                                        else:
                                                                                                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                                                            32,
                                                                                                                            38,
                                                                                                                            0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                                                                                                            mem[202 len 26]
                                                                                                            else:
                                                                                                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                                                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                                                                32,
                                                                                                                                38,
                                                                                                                                0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                                                                                                                mem[202 len 26]
                                                                                                                else:
                                                                                                                    if 9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value) / 9975 != 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value):
                                                                                                                        revert with 0, 'ds-math-mul-overflow'
                                                                                                                    else:
                                                                                                                        if not Mask(112, 0, ext_call.return_data[32]):
                                                                                                                            if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                                                                                                                                revert with 0, 'ds-math-mul-overflow'
                                                                                                                            else:
                                                                                                                                if (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value)) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                                                                                                                    revert with 0, 'ds-math-add-overflow'
                                                                                                                                else:
                                                                                                                                    require (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value))
                                                                                                                                    if 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value)) <= 0:
                                                                                                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                                                                                    32,
                                                                                                                                                    41,
                                                                                                                                                    0xfe50616e63616b654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                                                                                                                                    mem[205 len 23]
                                                                                                                                    else:
                                                                                                                                        if ext_call.return_data[50 len 14] <= 0:
                                                                                                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                                                                                        32,
                                                                                                                                                        38,
                                                                                                                                                        0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                                                                                                                                        mem[202 len 26]
                                                                                                                                        else:
                                                                                                                                            if ext_call.return_data[18 len 14] <= 0:
                                                                                                                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                                                                                            32,
                                                                                                                                                            38,
                                                                                                                                                            0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                                                                                                                                            mem[202 len 26]
                                                                                                                                            else:
                                                                                                                                                if 9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value)) / 9975 != 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value)):
                                                                                                                                                    revert with 0, 'ds-math-mul-overflow'
                                                                                                                                                else:
                                                                                                                                                    if not ext_call.return_data[18 len 14]:
                                                                                                                                                        if 10000 * ext_call.return_data[50 len 14] / 10000 != ext_call.return_data[50 len 14]:
                                                                                                                                                            revert with 0, 'ds-math-mul-overflow'
                                                                                                                                                        else:
                                                                                                                                                            if (10000 * ext_call.return_data[50 len 14]) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value))) < 10000 * ext_call.return_data[50 len 14]:
                                                                                                                                                                revert with 0, 'ds-math-add-overflow'
                                                                                                                                                            else:
                                                                                                                                                                require (10000 * ext_call.return_data[50 len 14]) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value)))
                                                                                                                                                                return address(ext_call.return_data[0]), 
                                                                                                                                                                       ext_call.return_data[32 len 64],
                                                                                                                                                                       address(ext_call.return_data[0]),
                                                                                                                                                                       9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value),
                                                                                                                                                                       0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value)),
                                                                                                                                                                       0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value))),
                                                                                                                                                                       1
                                                                                                                                                    else:
                                                                                                                                                        require ext_call.return_data[18 len 14]
                                                                                                                                                        if 9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value)) * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value)):
                                                                                                                                                            revert with 0, 'ds-math-mul-overflow'
                                                                                                                                                        else:
                                                                                                                                                            if 10000 * ext_call.return_data[50 len 14] / 10000 != ext_call.return_data[50 len 14]:
                                                                                                                                                                revert with 0, 'ds-math-mul-overflow'
                                                                                                                                                            else:
                                                                                                                                                                if (10000 * ext_call.return_data[50 len 14]) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value))) < 10000 * ext_call.return_data[50 len 14]:
                                                                                                                                                                    revert with 0, 'ds-math-add-overflow'
                                                                                                                                                                else:
                                                                                                                                                                    require (10000 * ext_call.return_data[50 len 14]) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value)))
                                                                                                                                                                    return address(ext_call.return_data[0]), 
                                                                                                                                                                           ext_call.return_data[32 len 64],
                                                                                                                                                                           address(ext_call.return_data[0]),
                                                                                                                                                                           9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value),
                                                                                                                                                                           0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value)),
                                                                                                                                                                           9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value)) * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value))),
                                                                                                                                                                           1
                                                                                                                        else:
                                                                                                                            require Mask(112, 0, ext_call.return_data[32])
                                                                                                                            if 9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value):
                                                                                                                                revert with 0, 'ds-math-mul-overflow'
                                                                                                                            else:
                                                                                                                                if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                                                                                                                                    revert with 0, 'ds-math-mul-overflow'
                                                                                                                                else:
                                                                                                                                    if (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value)) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                                                                                                                        revert with 0, 'ds-math-add-overflow'
                                                                                                                                    else:
                                                                                                                                        require (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value))
                                                                                                                                        if 9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value)) <= 0:
                                                                                                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                                                                                        32,
                                                                                                                                                        41,
                                                                                                                                                        0xfe50616e63616b654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                                                                                                                                        mem[205 len 23]
                                                                                                                                        else:
                                                                                                                                            if ext_call.return_data[50 len 14] <= 0:
                                                                                                                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                                                                                            32,
                                                                                                                                                            38,
                                                                                                                                                            0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                                                                                                                                            mem[202 len 26]
                                                                                                                                            else:
                                                                                                                                                if ext_call.return_data[18 len 14] <= 0:
                                                                                                                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                                                                                                32,
                                                                                                                                                                38,
                                                                                                                                                                0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                                                                                                                                                mem[202 len 26]
                                                                                                                                                else:
                                                                                                                                                    if 9975 * 9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value)) / 9975 != 9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value)):
                                                                                                                                                        revert with 0, 'ds-math-mul-overflow'
                                                                                                                                                    else:
                                                                                                                                                        if not ext_call.return_data[18 len 14]:
                                                                                                                                                            if 10000 * ext_call.return_data[50 len 14] / 10000 != ext_call.return_data[50 len 14]:
                                                                                                                                                                revert with 0, 'ds-math-mul-overflow'
                                                                                                                                                            else:
                                                                                                                                                                if (10000 * ext_call.return_data[50 len 14]) + (9975 * 9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value))) < 10000 * ext_call.return_data[50 len 14]:
                                                                                                                                                                    revert with 0, 'ds-math-add-overflow'
                                                                                                                                                                else:
                                                                                                                                                                    require (10000 * ext_call.return_data[50 len 14]) + (9975 * 9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value)))
                                                                                                                                                                    return address(ext_call.return_data[0]), 
                                                                                                                                                                           ext_call.return_data[32 len 64],
                                                                                                                                                                           address(ext_call.return_data[0]),
                                                                                                                                                                           9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value),
                                                                                                                                                                           9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value)),
                                                                                                                                                                           0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * 9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value))),
                                                                                                                                                                           1
                                                                                                                                                        else:
                                                                                                                                                            require ext_call.return_data[18 len 14]
                                                                                                                                                            if 9975 * 9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value)) * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 9975 * 9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value)):
                                                                                                                                                                revert with 0, 'ds-math-mul-overflow'
                                                                                                                                                            else:
                                                                                                                                                                if 10000 * ext_call.return_data[50 len 14] / 10000 != ext_call.return_data[50 len 14]:
                                                                                                                                                                    revert with 0, 'ds-math-mul-overflow'
                                                                                                                                                                else:
                                                                                                                                                                    if (10000 * ext_call.return_data[50 len 14]) + (9975 * 9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value))) < 10000 * ext_call.return_data[50 len 14]:
                                                                                                                                                                        revert with 0, 'ds-math-add-overflow'
                                                                                                                                                                    else:
                                                                                                                                                                        require (10000 * ext_call.return_data[50 len 14]) + (9975 * 9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value)))
                                                                                                                                                                        return address(ext_call.return_data[0]), 
                                                                                                                                                                               ext_call.return_data[32 len 64],
                                                                                                                                                                               address(ext_call.return_data[0]),
                                                                                                                                                                               9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value),
                                                                                                                                                                               9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value)),
                                                                                                                                                                               9975 * 9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value)) * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * 9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value))),
                                                                                                                                                                               1
}



}
