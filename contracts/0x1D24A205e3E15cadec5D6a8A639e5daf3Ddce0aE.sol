contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint8 stor1;

function owner() {
    return owner
}

function traders(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor1[arg1])
}

function _fallback() payable {
    revert
}

function drainEth(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require owner == msg.sender
    call arg2 with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
}

function drainToken(address arg1, uint256 arg2, address arg3) {
    require calldata.size - 4 >= 96
    require owner == msg.sender
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg3), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_49ec6559(?) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    require msg.sender == owner
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 1
        stor1[mem[(32 * idx) + 140 len 20]] = 0
        idx = idx + 1
        continue 
}

function sub_535f953f(?) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    require msg.sender == owner
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 1
        stor1[mem[(32 * idx) + 140 len 20]] = 1
        idx = idx + 1
        continue 
}

function sub_fc523d5d(?) {
    require calldata.size - 4 >= 128
    require cd[68] <= 4294967296
    require cd[68] + 36 <= calldata.size
    require ('cd', 68).length <= 4294967296 and cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    require cd[100] <= 4294967296
    require cd[100] + 36 <= calldata.size
    require ('cd', 100).length <= 4294967296 and cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    require ('cd', 68).length <= test266151307()
    mem[96] = ('cd', 68).length
    if not ('cd', 68).length:
        require 0 < ('cd', 68).length
        mem[128] = cd[4]
        idx = 0
        while idx < ('cd', 100).length:
            require idx < ('cd', 68).length
            require idx + 1 < ('cd', 68).length
            require idx < ('cd', 100).length
            require ext_code.size(address(cd[((32 * idx) + cd[100] + 36)]))
            staticcall address(cd[((32 * idx) + cd[100] + 36)]).getReserves() with:
                    gas gas_remaining wei
            mem[(32 * ('cd', 68).length) + 128 len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require idx < ('cd', 68).length
            if 997 * mem[(32 * idx) + 128] / 997 != mem[(32 * idx) + 128]:
                revert with 0, 'ds-math-mul-overflow'
            if address(cd[((32 * idx) + cd[68] + 36)]) < address(cd[((32 * idx + 1) + cd[68] + 36)]):
                if address(cd[((32 * idx) + cd[68] + 36)]) == address(cd[((32 * idx) + cd[68] + 36)]):
                    if not Mask(112, 0, ext_call.return_data[32]):
                        if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx) + 128]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-add-overflow'
                        require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx) + 128])
                        require idx + 1 < ('cd', 68).length
                        mem[(32 * idx + 1) + 128] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx) + 128])
                    else:
                        require Mask(112, 0, ext_call.return_data[32])
                        if 997 * mem[(32 * idx) + 128] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 997 * mem[(32 * idx) + 128]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx) + 128]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-add-overflow'
                        require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx) + 128])
                        require idx + 1 < ('cd', 68).length
                        mem[(32 * idx + 1) + 128] = 997 * mem[(32 * idx) + 128] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx) + 128])
                else:
                    if not Mask(112, 0, ext_call.return_data[0]):
                        if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx) + 128]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-add-overflow'
                        require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx) + 128])
                        require idx + 1 < ('cd', 68).length
                        mem[(32 * idx + 1) + 128] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx) + 128])
                    else:
                        require Mask(112, 0, ext_call.return_data[0])
                        if 997 * mem[(32 * idx) + 128] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 997 * mem[(32 * idx) + 128]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx) + 128]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-add-overflow'
                        require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx) + 128])
                        require idx + 1 < ('cd', 68).length
                        mem[(32 * idx + 1) + 128] = 997 * mem[(32 * idx) + 128] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx) + 128])
            else:
                if address(cd[((32 * idx) + cd[68] + 36)]) == address(cd[((32 * idx + 1) + cd[68] + 36)]):
                    if not Mask(112, 0, ext_call.return_data[32]):
                        if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx) + 128]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-add-overflow'
                        require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx) + 128])
                        require idx + 1 < ('cd', 68).length
                        mem[(32 * idx + 1) + 128] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx) + 128])
                    else:
                        require Mask(112, 0, ext_call.return_data[32])
                        if 997 * mem[(32 * idx) + 128] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 997 * mem[(32 * idx) + 128]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx) + 128]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-add-overflow'
                        require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx) + 128])
                        require idx + 1 < ('cd', 68).length
                        mem[(32 * idx + 1) + 128] = 997 * mem[(32 * idx) + 128] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx) + 128])
                else:
                    if not Mask(112, 0, ext_call.return_data[0]):
                        if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx) + 128]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-add-overflow'
                        require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx) + 128])
                        require idx + 1 < ('cd', 68).length
                        mem[(32 * idx + 1) + 128] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx) + 128])
                    else:
                        require Mask(112, 0, ext_call.return_data[0])
                        if 997 * mem[(32 * idx) + 128] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 997 * mem[(32 * idx) + 128]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx) + 128]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-add-overflow'
                        require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx) + 128])
                        require idx + 1 < ('cd', 68).length
                        mem[(32 * idx + 1) + 128] = 997 * mem[(32 * idx) + 128] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx) + 128])
            idx = idx + 1
            continue 
        require ('cd', 68).length - 1 < ('cd', 68).length
        if cd[36] > mem[(32 * ('cd', 68).length - 1) + 128]:
            return 0
        mem[0] = msg.sender
        mem[32] = 1
        require stor1[address(msg.sender)]
        require 0 < ('cd', 68).length
        require 0 < ('cd', 100).length
        mem[(32 * ('cd', 68).length) + 132] = address(('cd', 100)[0])
        mem[(32 * ('cd', 68).length) + 164] = cd[4]
        require ext_code.size(address(('cd', 68)[0]))
        call address(('cd', 68)[0]).0xa9059cbb with:
             gas gas_remaining wei
            args address(('cd', 100)[0]), cd[4]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(32 * ('cd', 68).length) + 128] = ('cd', 68).length
        mem[(32 * ('cd', 68).length) + 160 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
        mem[64] = (64 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192
        mem[(64 * ('cd', 68).length) + 160] = ('cd', 100).length
        mem[(64 * ('cd', 68).length) + 192 len 32 * ('cd', 100).length] = call.data[cd[100] + 36 len 32 * ('cd', 100).length]
        mem[(64 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192] = 0
        idx = 0
        while idx < ('cd', 100).length:
            require idx < mem[(32 * ('cd', 68).length) + 128]
            require idx + 1 < mem[(32 * ('cd', 68).length) + 128]
            require idx + 1 < mem[96]
            if mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20] < mem[(32 * idx + 1) + (32 * ('cd', 68).length) + 172 len 20]:
                _804 = mem[(32 * idx + 1) + 128]
                if mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20] == mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]:
                    if idx >= mem[(64 * ('cd', 68).length) + 160] - 1:
                        require idx < mem[(64 * ('cd', 68).length) + 160]
                        _841 = mem[(32 * idx) + (64 * ('cd', 68).length) + 192]
                        _857 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_857 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_857 + 36] = 0
                        mem[_857 + 68] = _804
                        mem[_857 + 100] = this.address
                        mem[_857 + 132] = 128
                        mem[_857 + 164] = mem[_857]
                        s = 0
                        while s < mem[_857]:
                            mem[_857 + s + 196] = mem[_857 + s + 32]
                            s = s + 32
                            continue 
                        if not mem[_857] % 32:
                            require ext_code.size(address(_841))
                            call address(_841).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _804, address(this.address), 128, mem[_857 + 164 len mem[_857] + 32]
                        else:
                            mem[floor32(mem[_857]) + _857 + 196] = mem[floor32(mem[_857]) + _857 + -(mem[_857] % 32) + 228 len mem[_857] % 32]
                            require ext_code.size(address(_841))
                            call address(_841).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _804, address(this.address), 128, mem[_857], mem[_857 + 196 len floor32(mem[_857]) + 32]
                    else:
                        require idx + 1 < mem[(64 * ('cd', 68).length) + 160]
                        _824 = mem[(32 * idx + 1) + (64 * ('cd', 68).length) + 192]
                        require idx < mem[(64 * ('cd', 68).length) + 160]
                        _856 = mem[(32 * idx) + (64 * ('cd', 68).length) + 192]
                        _872 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_872 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_872 + 36] = 0
                        mem[_872 + 68] = _804
                        mem[_872 + 100] = address(_824)
                        mem[_872 + 132] = 128
                        mem[_872 + 164] = mem[_872]
                        s = 0
                        while s < mem[_872]:
                            mem[_872 + s + 196] = mem[_872 + s + 32]
                            s = s + 32
                            continue 
                        if not mem[_872] % 32:
                            require ext_code.size(address(_856))
                            call address(_856).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _804, address(_824), 128, mem[_872 + 164 len mem[_872] + 32]
                        else:
                            mem[floor32(mem[_872]) + _872 + 196] = mem[floor32(mem[_872]) + _872 + -(mem[_872] % 32) + 228 len mem[_872] % 32]
                            require ext_code.size(address(_856))
                            call address(_856).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _804, address(_824), 128, mem[_872], mem[_872 + 196 len floor32(mem[_872]) + 32]
                else:
                    if idx >= mem[(64 * ('cd', 68).length) + 160] - 1:
                        require idx < mem[(64 * ('cd', 68).length) + 160]
                        _843 = mem[(32 * idx) + (64 * ('cd', 68).length) + 192]
                        _859 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_859 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_859 + 36] = _804
                        mem[_859 + 68] = 0
                        mem[_859 + 100] = this.address
                        mem[_859 + 132] = 128
                        mem[_859 + 164] = mem[_859]
                        s = 0
                        while s < mem[_859]:
                            mem[_859 + s + 196] = mem[_859 + s + 32]
                            s = s + 32
                            continue 
                        if not mem[_859] % 32:
                            require ext_code.size(address(_843))
                            call address(_843).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _804, 0, address(this.address), 128, mem[_859 + 164 len mem[_859] + 32]
                        else:
                            mem[floor32(mem[_859]) + _859 + 196] = mem[floor32(mem[_859]) + _859 + -(mem[_859] % 32) + 228 len mem[_859] % 32]
                            require ext_code.size(address(_843))
                            call address(_843).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _804, 0, address(this.address), 128, mem[_859], mem[_859 + 196 len floor32(mem[_859]) + 32]
                    else:
                        require idx + 1 < mem[(64 * ('cd', 68).length) + 160]
                        _826 = mem[(32 * idx + 1) + (64 * ('cd', 68).length) + 192]
                        require idx < mem[(64 * ('cd', 68).length) + 160]
                        _858 = mem[(32 * idx) + (64 * ('cd', 68).length) + 192]
                        _876 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_876 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_876 + 36] = _804
                        mem[_876 + 68] = 0
                        mem[_876 + 100] = address(_826)
                        mem[_876 + 132] = 128
                        mem[_876 + 164] = mem[_876]
                        s = 0
                        while s < mem[_876]:
                            mem[_876 + s + 196] = mem[_876 + s + 32]
                            s = s + 32
                            continue 
                        if not mem[_876] % 32:
                            require ext_code.size(address(_858))
                            call address(_858).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _804, 0, address(_826), 128, mem[_876 + 164 len mem[_876] + 32]
                        else:
                            mem[floor32(mem[_876]) + _876 + 196] = mem[floor32(mem[_876]) + _876 + -(mem[_876] % 32) + 228 len mem[_876] % 32]
                            require ext_code.size(address(_858))
                            call address(_858).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _804, 0, address(_826), 128, mem[_876], mem[_876 + 196 len floor32(mem[_876]) + 32]
            else:
                _805 = mem[(32 * idx + 1) + 128]
                if mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20] == mem[(32 * idx + 1) + (32 * ('cd', 68).length) + 172 len 20]:
                    if idx >= mem[(64 * ('cd', 68).length) + 160] - 1:
                        require idx < mem[(64 * ('cd', 68).length) + 160]
                        _845 = mem[(32 * idx) + (64 * ('cd', 68).length) + 192]
                        _861 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_861 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_861 + 36] = 0
                        mem[_861 + 68] = _805
                        mem[_861 + 100] = this.address
                        mem[_861 + 132] = 128
                        mem[_861 + 164] = mem[_861]
                        s = 0
                        while s < mem[_861]:
                            mem[_861 + s + 196] = mem[_861 + s + 32]
                            s = s + 32
                            continue 
                        if not mem[_861] % 32:
                            require ext_code.size(address(_845))
                            call address(_845).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _805, address(this.address), 128, mem[_861 + 164 len mem[_861] + 32]
                        else:
                            mem[floor32(mem[_861]) + _861 + 196] = mem[floor32(mem[_861]) + _861 + -(mem[_861] % 32) + 228 len mem[_861] % 32]
                            require ext_code.size(address(_845))
                            call address(_845).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _805, address(this.address), 128, mem[_861], mem[_861 + 196 len floor32(mem[_861]) + 32]
                    else:
                        require idx + 1 < mem[(64 * ('cd', 68).length) + 160]
                        _828 = mem[(32 * idx + 1) + (64 * ('cd', 68).length) + 192]
                        require idx < mem[(64 * ('cd', 68).length) + 160]
                        _860 = mem[(32 * idx) + (64 * ('cd', 68).length) + 192]
                        _880 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_880 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_880 + 36] = 0
                        mem[_880 + 68] = _805
                        mem[_880 + 100] = address(_828)
                        mem[_880 + 132] = 128
                        mem[_880 + 164] = mem[_880]
                        s = 0
                        while s < mem[_880]:
                            mem[_880 + s + 196] = mem[_880 + s + 32]
                            s = s + 32
                            continue 
                        if not mem[_880] % 32:
                            require ext_code.size(address(_860))
                            call address(_860).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _805, address(_828), 128, mem[_880 + 164 len mem[_880] + 32]
                        else:
                            mem[floor32(mem[_880]) + _880 + 196] = mem[floor32(mem[_880]) + _880 + -(mem[_880] % 32) + 228 len mem[_880] % 32]
                            require ext_code.size(address(_860))
                            call address(_860).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _805, address(_828), 128, mem[_880], mem[_880 + 196 len floor32(mem[_880]) + 32]
                else:
                    if idx >= mem[(64 * ('cd', 68).length) + 160] - 1:
                        require idx < mem[(64 * ('cd', 68).length) + 160]
                        _847 = mem[(32 * idx) + (64 * ('cd', 68).length) + 192]
                        _863 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_863 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_863 + 36] = _805
                        mem[_863 + 68] = 0
                        mem[_863 + 100] = this.address
                        mem[_863 + 132] = 128
                        mem[_863 + 164] = mem[_863]
                        s = 0
                        while s < mem[_863]:
                            mem[_863 + s + 196] = mem[_863 + s + 32]
                            s = s + 32
                            continue 
                        if not mem[_863] % 32:
                            require ext_code.size(address(_847))
                            call address(_847).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _805, 0, address(this.address), 128, mem[_863 + 164 len mem[_863] + 32]
                        else:
                            mem[floor32(mem[_863]) + _863 + 196] = mem[floor32(mem[_863]) + _863 + -(mem[_863] % 32) + 228 len mem[_863] % 32]
                            require ext_code.size(address(_847))
                            call address(_847).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _805, 0, address(this.address), 128, mem[_863], mem[_863 + 196 len floor32(mem[_863]) + 32]
                    else:
                        require idx + 1 < mem[(64 * ('cd', 68).length) + 160]
                        _830 = mem[(32 * idx + 1) + (64 * ('cd', 68).length) + 192]
                        require idx < mem[(64 * ('cd', 68).length) + 160]
                        _862 = mem[(32 * idx) + (64 * ('cd', 68).length) + 192]
                        _884 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_884 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_884 + 36] = _805
                        mem[_884 + 68] = 0
                        mem[_884 + 100] = address(_830)
                        mem[_884 + 132] = 128
                        mem[_884 + 164] = mem[_884]
                        s = 0
                        while s < mem[_884]:
                            mem[_884 + s + 196] = mem[_884 + s + 32]
                            s = s + 32
                            continue 
                        if not mem[_884] % 32:
                            require ext_code.size(address(_862))
                            call address(_862).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _805, 0, address(_830), 128, mem[_884 + 164 len mem[_884] + 32]
                        else:
                            mem[floor32(mem[_884]) + _884 + 196] = mem[floor32(mem[_884]) + _884 + -(mem[_884] % 32) + 228 len mem[_884] % 32]
                            require ext_code.size(address(_862))
                            call address(_862).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _805, 0, address(_830), 128, mem[_884], mem[_884 + 196 len floor32(mem[_884]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            continue 
    else:
        mem[128 len 32 * ('cd', 68).length] = call.data[calldata.size len 32 * ('cd', 68).length]
        require 0 < ('cd', 68).length
        mem[128] = cd[4]
        idx = 0
        while idx < ('cd', 100).length:
            require idx < ('cd', 68).length
            require idx + 1 < ('cd', 68).length
            require idx < ('cd', 100).length
            require ext_code.size(address(cd[((32 * idx) + cd[100] + 36)]))
            staticcall address(cd[((32 * idx) + cd[100] + 36)]).getReserves() with:
                    gas gas_remaining wei
            mem[(32 * ('cd', 68).length) + 128 len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require idx < ('cd', 68).length
            if 997 * mem[(32 * idx) + 128] / 997 != mem[(32 * idx) + 128]:
                revert with 0, 'ds-math-mul-overflow'
            if address(cd[((32 * idx) + cd[68] + 36)]) < address(cd[((32 * idx + 1) + cd[68] + 36)]):
                if address(cd[((32 * idx) + cd[68] + 36)]) == address(cd[((32 * idx) + cd[68] + 36)]):
                    if not Mask(112, 0, ext_call.return_data[32]):
                        if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx) + 128]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-add-overflow'
                        require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx) + 128])
                        require idx + 1 < ('cd', 68).length
                        mem[(32 * idx + 1) + 128] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx) + 128])
                    else:
                        require Mask(112, 0, ext_call.return_data[32])
                        if 997 * mem[(32 * idx) + 128] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 997 * mem[(32 * idx) + 128]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx) + 128]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-add-overflow'
                        require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx) + 128])
                        require idx + 1 < ('cd', 68).length
                        mem[(32 * idx + 1) + 128] = 997 * mem[(32 * idx) + 128] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx) + 128])
                else:
                    if not Mask(112, 0, ext_call.return_data[0]):
                        if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx) + 128]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-add-overflow'
                        require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx) + 128])
                        require idx + 1 < ('cd', 68).length
                        mem[(32 * idx + 1) + 128] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx) + 128])
                    else:
                        require Mask(112, 0, ext_call.return_data[0])
                        if 997 * mem[(32 * idx) + 128] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 997 * mem[(32 * idx) + 128]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx) + 128]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-add-overflow'
                        require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx) + 128])
                        require idx + 1 < ('cd', 68).length
                        mem[(32 * idx + 1) + 128] = 997 * mem[(32 * idx) + 128] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx) + 128])
            else:
                if address(cd[((32 * idx) + cd[68] + 36)]) == address(cd[((32 * idx + 1) + cd[68] + 36)]):
                    if not Mask(112, 0, ext_call.return_data[32]):
                        if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx) + 128]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-add-overflow'
                        require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx) + 128])
                        require idx + 1 < ('cd', 68).length
                        mem[(32 * idx + 1) + 128] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx) + 128])
                    else:
                        require Mask(112, 0, ext_call.return_data[32])
                        if 997 * mem[(32 * idx) + 128] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 997 * mem[(32 * idx) + 128]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx) + 128]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-add-overflow'
                        require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx) + 128])
                        require idx + 1 < ('cd', 68).length
                        mem[(32 * idx + 1) + 128] = 997 * mem[(32 * idx) + 128] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx) + 128])
                else:
                    if not Mask(112, 0, ext_call.return_data[0]):
                        if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx) + 128]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-add-overflow'
                        require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx) + 128])
                        require idx + 1 < ('cd', 68).length
                        mem[(32 * idx + 1) + 128] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx) + 128])
                    else:
                        require Mask(112, 0, ext_call.return_data[0])
                        if 997 * mem[(32 * idx) + 128] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 997 * mem[(32 * idx) + 128]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx) + 128]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-add-overflow'
                        require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx) + 128])
                        require idx + 1 < ('cd', 68).length
                        mem[(32 * idx + 1) + 128] = 997 * mem[(32 * idx) + 128] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx) + 128])
            idx = idx + 1
            continue 
        require ('cd', 68).length - 1 < ('cd', 68).length
        if cd[36] > mem[(32 * ('cd', 68).length - 1) + 128]:
            return 0
        mem[0] = msg.sender
        mem[32] = 1
        require stor1[address(msg.sender)]
        require 0 < ('cd', 68).length
        require 0 < ('cd', 100).length
        mem[(32 * ('cd', 68).length) + 132] = address(('cd', 100)[0])
        mem[(32 * ('cd', 68).length) + 164] = cd[4]
        require ext_code.size(address(('cd', 68)[0]))
        call address(('cd', 68)[0]).0xa9059cbb with:
             gas gas_remaining wei
            args address(('cd', 100)[0]), cd[4]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(32 * ('cd', 68).length) + 128] = ('cd', 68).length
        mem[(32 * ('cd', 68).length) + 160 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
        mem[64] = (64 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192
        mem[(64 * ('cd', 68).length) + 160] = ('cd', 100).length
        mem[(64 * ('cd', 68).length) + 192 len 32 * ('cd', 100).length] = call.data[cd[100] + 36 len 32 * ('cd', 100).length]
        mem[(64 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192] = 0
        idx = 0
        while idx < ('cd', 100).length:
            require idx < mem[(32 * ('cd', 68).length) + 128]
            require idx + 1 < mem[(32 * ('cd', 68).length) + 128]
            require idx + 1 < mem[96]
            if mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20] < mem[(32 * idx + 1) + (32 * ('cd', 68).length) + 172 len 20]:
                _806 = mem[(32 * idx + 1) + 128]
                if mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20] == mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]:
                    if idx >= mem[(64 * ('cd', 68).length) + 160] - 1:
                        require idx < mem[(64 * ('cd', 68).length) + 160]
                        _849 = mem[(32 * idx) + (64 * ('cd', 68).length) + 192]
                        _865 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_865 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_865 + 36] = 0
                        mem[_865 + 68] = _806
                        mem[_865 + 100] = this.address
                        mem[_865 + 132] = 128
                        mem[_865 + 164] = mem[_865]
                        s = 0
                        while s < mem[_865]:
                            mem[_865 + s + 196] = mem[_865 + s + 32]
                            s = s + 32
                            continue 
                        if not mem[_865] % 32:
                            require ext_code.size(address(_849))
                            call address(_849).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _806, address(this.address), 128, mem[_865 + 164 len mem[_865] + 32]
                        else:
                            mem[floor32(mem[_865]) + _865 + 196] = mem[floor32(mem[_865]) + _865 + -(mem[_865] % 32) + 228 len mem[_865] % 32]
                            require ext_code.size(address(_849))
                            call address(_849).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _806, address(this.address), 128, mem[_865], mem[_865 + 196 len floor32(mem[_865]) + 32]
                    else:
                        require idx + 1 < mem[(64 * ('cd', 68).length) + 160]
                        _832 = mem[(32 * idx + 1) + (64 * ('cd', 68).length) + 192]
                        require idx < mem[(64 * ('cd', 68).length) + 160]
                        _864 = mem[(32 * idx) + (64 * ('cd', 68).length) + 192]
                        _888 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_888 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_888 + 36] = 0
                        mem[_888 + 68] = _806
                        mem[_888 + 100] = address(_832)
                        mem[_888 + 132] = 128
                        mem[_888 + 164] = mem[_888]
                        s = 0
                        while s < mem[_888]:
                            mem[_888 + s + 196] = mem[_888 + s + 32]
                            s = s + 32
                            continue 
                        if not mem[_888] % 32:
                            require ext_code.size(address(_864))
                            call address(_864).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _806, address(_832), 128, mem[_888 + 164 len mem[_888] + 32]
                        else:
                            mem[floor32(mem[_888]) + _888 + 196] = mem[floor32(mem[_888]) + _888 + -(mem[_888] % 32) + 228 len mem[_888] % 32]
                            require ext_code.size(address(_864))
                            call address(_864).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _806, address(_832), 128, mem[_888], mem[_888 + 196 len floor32(mem[_888]) + 32]
                else:
                    if idx >= mem[(64 * ('cd', 68).length) + 160] - 1:
                        require idx < mem[(64 * ('cd', 68).length) + 160]
                        _851 = mem[(32 * idx) + (64 * ('cd', 68).length) + 192]
                        _867 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_867 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_867 + 36] = _806
                        mem[_867 + 68] = 0
                        mem[_867 + 100] = this.address
                        mem[_867 + 132] = 128
                        mem[_867 + 164] = mem[_867]
                        s = 0
                        while s < mem[_867]:
                            mem[_867 + s + 196] = mem[_867 + s + 32]
                            s = s + 32
                            continue 
                        if not mem[_867] % 32:
                            require ext_code.size(address(_851))
                            call address(_851).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _806, 0, address(this.address), 128, mem[_867 + 164 len mem[_867] + 32]
                        else:
                            mem[floor32(mem[_867]) + _867 + 196] = mem[floor32(mem[_867]) + _867 + -(mem[_867] % 32) + 228 len mem[_867] % 32]
                            require ext_code.size(address(_851))
                            call address(_851).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _806, 0, address(this.address), 128, mem[_867], mem[_867 + 196 len floor32(mem[_867]) + 32]
                    else:
                        require idx + 1 < mem[(64 * ('cd', 68).length) + 160]
                        _834 = mem[(32 * idx + 1) + (64 * ('cd', 68).length) + 192]
                        require idx < mem[(64 * ('cd', 68).length) + 160]
                        _866 = mem[(32 * idx) + (64 * ('cd', 68).length) + 192]
                        _892 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_892 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_892 + 36] = _806
                        mem[_892 + 68] = 0
                        mem[_892 + 100] = address(_834)
                        mem[_892 + 132] = 128
                        mem[_892 + 164] = mem[_892]
                        s = 0
                        while s < mem[_892]:
                            mem[_892 + s + 196] = mem[_892 + s + 32]
                            s = s + 32
                            continue 
                        if not mem[_892] % 32:
                            require ext_code.size(address(_866))
                            call address(_866).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _806, 0, address(_834), 128, mem[_892 + 164 len mem[_892] + 32]
                        else:
                            mem[floor32(mem[_892]) + _892 + 196] = mem[floor32(mem[_892]) + _892 + -(mem[_892] % 32) + 228 len mem[_892] % 32]
                            require ext_code.size(address(_866))
                            call address(_866).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _806, 0, address(_834), 128, mem[_892], mem[_892 + 196 len floor32(mem[_892]) + 32]
            else:
                _807 = mem[(32 * idx + 1) + 128]
                if mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20] == mem[(32 * idx + 1) + (32 * ('cd', 68).length) + 172 len 20]:
                    if idx >= mem[(64 * ('cd', 68).length) + 160] - 1:
                        require idx < mem[(64 * ('cd', 68).length) + 160]
                        _853 = mem[(32 * idx) + (64 * ('cd', 68).length) + 192]
                        _869 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_869 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_869 + 36] = 0
                        mem[_869 + 68] = _807
                        mem[_869 + 100] = this.address
                        mem[_869 + 132] = 128
                        mem[_869 + 164] = mem[_869]
                        s = 0
                        while s < mem[_869]:
                            mem[_869 + s + 196] = mem[_869 + s + 32]
                            s = s + 32
                            continue 
                        if not mem[_869] % 32:
                            require ext_code.size(address(_853))
                            call address(_853).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _807, address(this.address), 128, mem[_869 + 164 len mem[_869] + 32]
                        else:
                            mem[floor32(mem[_869]) + _869 + 196] = mem[floor32(mem[_869]) + _869 + -(mem[_869] % 32) + 228 len mem[_869] % 32]
                            require ext_code.size(address(_853))
                            call address(_853).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _807, address(this.address), 128, mem[_869], mem[_869 + 196 len floor32(mem[_869]) + 32]
                    else:
                        require idx + 1 < mem[(64 * ('cd', 68).length) + 160]
                        _836 = mem[(32 * idx + 1) + (64 * ('cd', 68).length) + 192]
                        require idx < mem[(64 * ('cd', 68).length) + 160]
                        _868 = mem[(32 * idx) + (64 * ('cd', 68).length) + 192]
                        _896 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_896 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_896 + 36] = 0
                        mem[_896 + 68] = _807
                        mem[_896 + 100] = address(_836)
                        mem[_896 + 132] = 128
                        mem[_896 + 164] = mem[_896]
                        s = 0
                        while s < mem[_896]:
                            mem[_896 + s + 196] = mem[_896 + s + 32]
                            s = s + 32
                            continue 
                        if not mem[_896] % 32:
                            require ext_code.size(address(_868))
                            call address(_868).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _807, address(_836), 128, mem[_896 + 164 len mem[_896] + 32]
                        else:
                            mem[floor32(mem[_896]) + _896 + 196] = mem[floor32(mem[_896]) + _896 + -(mem[_896] % 32) + 228 len mem[_896] % 32]
                            require ext_code.size(address(_868))
                            call address(_868).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _807, address(_836), 128, mem[_896], mem[_896 + 196 len floor32(mem[_896]) + 32]
                else:
                    if idx >= mem[(64 * ('cd', 68).length) + 160] - 1:
                        require idx < mem[(64 * ('cd', 68).length) + 160]
                        _855 = mem[(32 * idx) + (64 * ('cd', 68).length) + 192]
                        _871 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_871 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_871 + 36] = _807
                        mem[_871 + 68] = 0
                        mem[_871 + 100] = this.address
                        mem[_871 + 132] = 128
                        mem[_871 + 164] = mem[_871]
                        s = 0
                        while s < mem[_871]:
                            mem[_871 + s + 196] = mem[_871 + s + 32]
                            s = s + 32
                            continue 
                        if not mem[_871] % 32:
                            require ext_code.size(address(_855))
                            call address(_855).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _807, 0, address(this.address), 128, mem[_871 + 164 len mem[_871] + 32]
                        else:
                            mem[floor32(mem[_871]) + _871 + 196] = mem[floor32(mem[_871]) + _871 + -(mem[_871] % 32) + 228 len mem[_871] % 32]
                            require ext_code.size(address(_855))
                            call address(_855).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _807, 0, address(this.address), 128, mem[_871], mem[_871 + 196 len floor32(mem[_871]) + 32]
                    else:
                        require idx + 1 < mem[(64 * ('cd', 68).length) + 160]
                        _838 = mem[(32 * idx + 1) + (64 * ('cd', 68).length) + 192]
                        require idx < mem[(64 * ('cd', 68).length) + 160]
                        _870 = mem[(32 * idx) + (64 * ('cd', 68).length) + 192]
                        _900 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_900 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_900 + 36] = _807
                        mem[_900 + 68] = 0
                        mem[_900 + 100] = address(_838)
                        mem[_900 + 132] = 128
                        mem[_900 + 164] = mem[_900]
                        s = 0
                        while s < mem[_900]:
                            mem[_900 + s + 196] = mem[_900 + s + 32]
                            s = s + 32
                            continue 
                        if not mem[_900] % 32:
                            require ext_code.size(address(_870))
                            call address(_870).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _807, 0, address(_838), 128, mem[_900 + 164 len mem[_900] + 32]
                        else:
                            mem[floor32(mem[_900]) + _900 + 196] = mem[floor32(mem[_900]) + _900 + -(mem[_900] % 32) + 228 len mem[_900] % 32]
                            require ext_code.size(address(_870))
                            call address(_870).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _807, 0, address(_838), 128, mem[_900], mem[_900 + 196 len floor32(mem[_900]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            continue 
    require mem[96] - 1 < mem[96]
    mem[mem[64]] = mem[(32 * mem[96] - 1) + 128]
    return memory
      from mem[64]
       len 32
}



}
