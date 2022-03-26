contract main {




// =====================  Runtime code  =====================


#
#  - sub_ee805915(?)
#
function _fallback() payable {
    revert
}

function isContract(address arg1) payable {
    require calldata.size - 4 >= 32
    return (ext_code.size(arg1) > 0)
}

function sub_e4452978(?) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_dfd15878(?) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(arg1)
    staticcall arg1.ownerOf(uint256 rg1) with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[12 len 20]
}

function sub_740e3f34(?) payable {
    require calldata.size - 4 >= 96
    require ext_code.size(arg1)
    staticcall arg1.balanceOf(address rg1, uint256 rg2) with:
            gas gas_remaining wei
           args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_ac42a4eb(?) payable {
    require calldata.size - 4 >= 64
    if not arg1:
        return eth.balance(arg2)
    if ext_code.size(arg1) <= 0:
        return 0
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args address(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_442c1a06(?) payable {
    require calldata.size - 4 >= 32
    if ext_code.size(arg1) <= 0:
        return 0
    require ext_code.size(arg1)
    staticcall arg1.supportsInterface(bytes4 rg1) with:
            gas gas_remaining wei
           args 0x80ac58cd00000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        return 3
    require return_data.size >= 32
    if ext_call.return_data[0]:
        return 1
    require ext_code.size(arg1)
    staticcall arg1.supportsInterface(bytes4 rg1) with:
            gas gas_remaining wei
           args 0xd9b67a2600000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return 3
    return 2
}

function sub_6e0a6117(?) payable {
    require calldata.size - 4 >= 32
    if ext_code.size(arg1) <= 0:
        return 0
    require ext_code.size(arg1)
    staticcall arg1.supportsInterface(bytes4 rg1) with:
            gas gas_remaining wei
           args 0x80ac58cd00000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        return 1
    require ext_code.size(arg1)
    staticcall arg1.supportsInterface(bytes4 rg1) with:
            gas gas_remaining wei
           args 0xd9b67a2600000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return 3
    return 2
}

function sub_1badbbe3(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg1.length <= test266151307()
    mem[(32 * arg1.length) + 128] = arg1.length
    if arg1.length:
        mem[(32 * arg1.length) + 160 len 32 * arg1.length] = call.data[calldata.size len 32 * arg1.length]
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        if ext_code.size(mem[(32 * idx) + 128]) > 0:
            require idx < arg1.length
            require idx < arg1.length
            mem[(32 * idx) + (32 * arg1.length) + 160] = mem[(32 * idx) + 140 len 20]
        idx = idx + 1
        continue 
    mem[(64 * arg1.length) + 160] = 32
    mem[(64 * arg1.length) + 192] = arg1.length
    mem[(64 * arg1.length) + 224 len floor32(arg1.length)] = mem[(32 * arg1.length) + 160 len floor32(arg1.length)]
    return memory
      from (64 * arg1.length) + 160
       len (161 * arg1.length) + 64
}

function sub_7b4184a1(?) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require arg2.length <= test266151307()
    mem[(32 * arg2.length) + 128] = arg2.length
    if not arg2.length:
        idx = 0
        while idx < arg2.length:
            require idx < arg2.length
            _37 = mem[(32 * idx) + 128]
            mem[(64 * arg2.length) + 164] = mem[(32 * idx) + 128]
            require ext_code.size(arg1)
            staticcall arg1.ownerOf(uint256 rg1) with:
                    gas gas_remaining wei
                   args _37
            mem[(64 * arg2.length) + 160] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx < mem[(32 * arg2.length) + 128]
            mem[(32 * idx) + (32 * arg2.length) + 160] = address(ext_call.return_data[0])
            idx = idx + 1
            continue 
    else:
        mem[(32 * arg2.length) + 160 len 32 * arg2.length] = call.data[calldata.size len 32 * arg2.length]
        idx = 0
        while idx < arg2.length:
            require idx < arg2.length
            _41 = mem[(32 * idx) + 128]
            mem[(64 * arg2.length) + 164] = mem[(32 * idx) + 128]
            require ext_code.size(arg1)
            staticcall arg1.ownerOf(uint256 rg1) with:
                    gas gas_remaining wei
                   args _41
            mem[(64 * arg2.length) + 160] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx < mem[(32 * arg2.length) + 128]
            mem[(32 * idx) + (32 * arg2.length) + 160] = address(ext_call.return_data[0])
            idx = idx + 1
            continue 
    mem[(64 * arg2.length) + 160] = 32
    mem[(64 * arg2.length) + 192] = mem[(32 * arg2.length) + 128]
    mem[(64 * arg2.length) + 224 len floor32(mem[(32 * arg2.length) + 128])] = mem[(32 * arg2.length) + 160 len floor32(mem[(32 * arg2.length) + 128])]
    return 32, mem[(64 * arg2.length) + 192 len (32 * mem[(32 * arg2.length) + 128]) + 32]
}

function sub_db70c9e0(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= 4294967296
    require cd[36] + 36 <= calldata.size
    require ('cd', 36).length <= 4294967296 and cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require ('cd', 4).length * ('cd', 36).length <= test266151307()
    if ('cd', 4).length * ('cd', 36).length:
        mem[128 len 32 * ('cd', 4).length * ('cd', 36).length] = call.data[calldata.size len 32 * ('cd', 4).length * ('cd', 36).length]
    idx = 0
    while idx < ('cd', 36).length:
        s = 0
        while s < ('cd', 4).length:
            require idx < ('cd', 36).length
            if not address(cd[((32 * s) + cd[4] + 36)]):
                require s + (('cd', 4).length * idx) < ('cd', 4).length * ('cd', 36).length
                mem[(32 * s + (('cd', 4).length * idx)) + 128] = eth.balance(cd[((32 * idx) + cd[36] + 36)])
            else:
                if ext_code.size(address(cd[((32 * s) + cd[4] + 36)])) <= 0:
                    require s + (('cd', 4).length * idx) < ('cd', 4).length * ('cd', 36).length
                    mem[(32 * s + (('cd', 4).length * idx)) + 128] = 0
                else:
                    mem[(32 * ('cd', 4).length * ('cd', 36).length) + 132] = address(cd[((32 * idx) + cd[36] + 36)])
                    require ext_code.size(address(cd[((32 * s) + cd[4] + 36)]))
                    staticcall address(cd[((32 * s) + cd[4] + 36)]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(cd[((32 * idx) + cd[36] + 36)])
                    mem[(32 * ('cd', 4).length * ('cd', 36).length) + 128] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require s + (('cd', 4).length * idx) < ('cd', 4).length * ('cd', 36).length
                    mem[(32 * s + (('cd', 4).length * idx)) + 128] = ext_call.return_data[0]
            s = s + 1
            continue 
        idx = idx + 1
        continue 
    mem[(32 * ('cd', 4).length * ('cd', 36).length) + 128] = 32
    mem[(32 * ('cd', 4).length * ('cd', 36).length) + 160] = ('cd', 4).length * ('cd', 36).length
    mem[(32 * ('cd', 4).length * ('cd', 36).length) + 192 len floor32(('cd', 4).length * ('cd', 36).length)] = mem[128 len floor32(('cd', 4).length * ('cd', 36).length)]
    return Array(len=('cd', 4).length * ('cd', 36).length, data=mem[(32 * ('cd', 4).length * ('cd', 36).length) + 192 len 32 * ('cd', 4).length * ('cd', 36).length]), 
}

function sub_c90b5c5d(?) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require arg2.length <= test266151307()
    mem[(32 * arg2.length) + 128] = arg2.length
    if not arg2.length:
        idx = 0
        while idx < arg2.length:
            require idx < arg2.length
            _41 = mem[(32 * idx) + 128]
            if not arg1:
                require idx < mem[(32 * arg2.length) + 128]
                mem[(32 * idx) + (32 * arg2.length) + 160] = eth.balance(mem[(32 * idx) + 128])
            else:
                if ext_code.size(arg1) <= 0:
                    require idx < mem[(32 * arg2.length) + 128]
                    mem[(32 * idx) + (32 * arg2.length) + 160] = 0
                else:
                    mem[(64 * arg2.length) + 164] = mem[(32 * idx) + 140 len 20]
                    require ext_code.size(arg1)
                    staticcall arg1.0x70a08231 with:
                            gas gas_remaining wei
                           args address(_41)
                    mem[(64 * arg2.length) + 160] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require idx < mem[(32 * arg2.length) + 128]
                    mem[(32 * idx) + (32 * arg2.length) + 160] = ext_call.return_data[0]
            idx = idx + 1
            continue 
    else:
        mem[(32 * arg2.length) + 160 len 32 * arg2.length] = call.data[calldata.size len 32 * arg2.length]
        idx = 0
        while idx < arg2.length:
            require idx < arg2.length
            _45 = mem[(32 * idx) + 128]
            if not arg1:
                require idx < mem[(32 * arg2.length) + 128]
                mem[(32 * idx) + (32 * arg2.length) + 160] = eth.balance(mem[(32 * idx) + 128])
            else:
                if ext_code.size(arg1) <= 0:
                    require idx < mem[(32 * arg2.length) + 128]
                    mem[(32 * idx) + (32 * arg2.length) + 160] = 0
                else:
                    mem[(64 * arg2.length) + 164] = mem[(32 * idx) + 140 len 20]
                    require ext_code.size(arg1)
                    staticcall arg1.0x70a08231 with:
                            gas gas_remaining wei
                           args address(_45)
                    mem[(64 * arg2.length) + 160] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require idx < mem[(32 * arg2.length) + 128]
                    mem[(32 * idx) + (32 * arg2.length) + 160] = ext_call.return_data[0]
            idx = idx + 1
            continue 
    mem[(64 * arg2.length) + 160] = 32
    mem[(64 * arg2.length) + 192] = mem[(32 * arg2.length) + 128]
    mem[(64 * arg2.length) + 224 len floor32(mem[(32 * arg2.length) + 128])] = mem[(32 * arg2.length) + 160 len floor32(mem[(32 * arg2.length) + 128])]
    return 32, mem[(64 * arg2.length) + 192 len (32 * mem[(32 * arg2.length) + 128]) + 32]
}

function sub_af30f10f(?) payable {
    require calldata.size - 4 >= 96
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[(32 * arg2.length) + 128] = arg3.length
    mem[(32 * arg2.length) + 160 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    require arg2.length <= test266151307()
    mem[(32 * arg2.length) + (32 * arg3.length) + 160] = arg2.length
    if not arg2.length:
        idx = 0
        while idx < arg2.length:
            require idx < arg2.length
            require idx < mem[(32 * arg2.length) + 128]
            _49 = mem[(32 * idx) + (32 * arg2.length) + 160]
            mem[(64 * arg2.length) + (32 * arg3.length) + 196] = mem[(32 * idx) + 140 len 20]
            mem[(64 * arg2.length) + (32 * arg3.length) + 228] = _49
            require ext_code.size(arg1)
            staticcall arg1.balanceOf(address rg1, uint256 rg2) with:
                    gas gas_remaining wei
                   args mem[(64 * arg2.length) + (32 * arg3.length) + 196], _49
            mem[(64 * arg2.length) + (32 * arg3.length) + 192] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx < mem[(32 * arg2.length) + (32 * arg3.length) + 160]
            mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] = ext_call.return_data[0]
            idx = idx + 1
            continue 
    else:
        mem[(32 * arg2.length) + (32 * arg3.length) + 192 len 32 * arg2.length] = call.data[calldata.size len 32 * arg2.length]
        idx = 0
        while idx < arg2.length:
            require idx < arg2.length
            require idx < mem[(32 * arg2.length) + 128]
            _50 = mem[(32 * idx) + (32 * arg2.length) + 160]
            mem[(64 * arg2.length) + (32 * arg3.length) + 196] = mem[(32 * idx) + 140 len 20]
            mem[(64 * arg2.length) + (32 * arg3.length) + 228] = _50
            require ext_code.size(arg1)
            staticcall arg1.balanceOf(address rg1, uint256 rg2) with:
                    gas gas_remaining wei
                   args mem[(64 * arg2.length) + (32 * arg3.length) + 196], _50
            mem[(64 * arg2.length) + (32 * arg3.length) + 192] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx < mem[(32 * arg2.length) + (32 * arg3.length) + 160]
            mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] = ext_call.return_data[0]
            idx = idx + 1
            continue 
    mem[(64 * arg2.length) + (32 * arg3.length) + 192] = 32
    mem[(64 * arg2.length) + (32 * arg3.length) + 224] = mem[(32 * arg2.length) + (32 * arg3.length) + 160]
    mem[(64 * arg2.length) + (32 * arg3.length) + 256 len floor32(mem[(32 * arg2.length) + (32 * arg3.length) + 160])] = mem[(32 * arg2.length) + (32 * arg3.length) + 192 len floor32(mem[(32 * arg2.length) + (32 * arg3.length) + 160])]
    return 32, mem[(64 * arg2.length) + (32 * arg3.length) + 224 len (32 * mem[(32 * arg2.length) + (32 * arg3.length) + 160]) + 32], 
}

function sub_067660fc(?) payable {
    require calldata.size - 4 >= 32
    mem[96] = 0x6fdde0300000000000000000000000000000000000000000000000000000000
    require ext_code.size(arg1)
    staticcall arg1.name() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96]
    require mem[96] <= 4294967296
    require mem[96] + 32 <= return_data.size
    require mem[mem[96] + 96] <= 4294967296 and mem[96] + mem[mem[96] + 96] + 32 <= return_data.size
    mem[ceil32(return_data.size) + 96] = mem[mem[96] + 96]
    _7 = mem[_4 + 96]
    mem[ceil32(return_data.size) + 128 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
    if not _7 % 32:
        mem[_7 + ceil32(return_data.size) + 128] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
        require ext_code.size(arg1)
        staticcall arg1.0x95d89b41 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[_7 + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = _7 + (2 * ceil32(return_data.size)) + 128
        require return_data.size >= 32
        _103 = mem[_7 + ceil32(return_data.size) + 128]
        require mem[_7 + ceil32(return_data.size) + 128] <= 4294967296
        require mem[_7 + ceil32(return_data.size) + 128] + 32 <= return_data.size
        require mem[mem[_7 + ceil32(return_data.size) + 128] + _7 + ceil32(return_data.size) + 128] <= 4294967296 and mem[_7 + ceil32(return_data.size) + 128] + mem[mem[_7 + ceil32(return_data.size) + 128] + _7 + ceil32(return_data.size) + 128] + 32 <= return_data.size
        mem[_7 + (2 * ceil32(return_data.size)) + 128] = mem[mem[_7 + ceil32(return_data.size) + 128] + _7 + ceil32(return_data.size) + 128]
        _109 = mem[_103 + _7 + ceil32(return_data.size) + 128]
        mem[_7 + (2 * ceil32(return_data.size)) + 160 len ceil32(mem[_103 + _7 + ceil32(return_data.size) + 128])] = mem[_103 + _7 + ceil32(return_data.size) + 160 len ceil32(mem[_103 + _7 + ceil32(return_data.size) + 128])]
        if not _109 % 32:
            mem[64] = _109 + _7 + (2 * ceil32(return_data.size)) + 160
            mem[_109 + _7 + (2 * ceil32(return_data.size)) + 160] = 64
            mem[_109 + _7 + (2 * ceil32(return_data.size)) + 224] = mem[ceil32(return_data.size) + 96]
            _190 = mem[ceil32(return_data.size) + 96]
            mem[_109 + _7 + (2 * ceil32(return_data.size)) + 256 len ceil32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len ceil32(mem[ceil32(return_data.size) + 96])]
            if not mem[ceil32(return_data.size) + 96] % 32:
                mem[_109 + _7 + (2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + 96] + 96
                mem[mem[ceil32(return_data.size) + 96] + _109 + _7 + (2 * ceil32(return_data.size)) + 256] = mem[_7 + (2 * ceil32(return_data.size)) + 128]
                mem[mem[ceil32(return_data.size) + 96] + _109 + _7 + (2 * ceil32(return_data.size)) + 288 len ceil32(mem[_7 + (2 * ceil32(return_data.size)) + 128])] = mem[_7 + (2 * ceil32(return_data.size)) + 160 len ceil32(mem[_7 + (2 * ceil32(return_data.size)) + 128])]
                if not mem[_7 + (2 * ceil32(return_data.size)) + 128] % 32:
                    return 64, 
                           mem[_109 + _7 + (2 * ceil32(return_data.size)) + 192 len mem[_7 + (2 * ceil32(return_data.size)) + 128] + mem[ceil32(return_data.size) + 96] + 96]
                mem[floor32(mem[_7 + (2 * ceil32(return_data.size)) + 128]) + mem[ceil32(return_data.size) + 96] + _109 + _7 + (2 * ceil32(return_data.size)) + 288] = mem[floor32(mem[_7 + (2 * ceil32(return_data.size)) + 128]) + mem[ceil32(return_data.size) + 96] + _109 + _7 + (2 * ceil32(return_data.size)) + -(mem[_7 + (2 * ceil32(return_data.size)) + 128] % 32) + 320 len mem[_7 + (2 * ceil32(return_data.size)) + 128] % 32]
                return 64, 
                       mem[_109 + _7 + (2 * ceil32(return_data.size)) + 192 len floor32(mem[_7 + (2 * ceil32(return_data.size)) + 128]) + _190 + 128]
            mem[floor32(mem[ceil32(return_data.size) + 96]) + _109 + _7 + (2 * ceil32(return_data.size)) + 256] = mem[floor32(mem[ceil32(return_data.size) + 96]) + _109 + _7 + (2 * ceil32(return_data.size)) + -(mem[ceil32(return_data.size) + 96] % 32) + 288 len mem[ceil32(return_data.size) + 96] % 32]
            mem[_109 + _7 + (2 * ceil32(return_data.size)) + 192] = floor32(mem[ceil32(return_data.size) + 96]) + 128
            mem[floor32(mem[ceil32(return_data.size) + 96]) + _109 + _7 + (2 * ceil32(return_data.size)) + 288] = mem[_7 + (2 * ceil32(return_data.size)) + 128]
            mem[floor32(mem[ceil32(return_data.size) + 96]) + _109 + _7 + (2 * ceil32(return_data.size)) + 320 len ceil32(mem[_7 + (2 * ceil32(return_data.size)) + 128])] = mem[_7 + (2 * ceil32(return_data.size)) + 160 len ceil32(mem[_7 + (2 * ceil32(return_data.size)) + 128])]
            if not mem[_7 + (2 * ceil32(return_data.size)) + 128] % 32:
                return 64, 
                       mem[_109 + _7 + (2 * ceil32(return_data.size)) + 192 len mem[_7 + (2 * ceil32(return_data.size)) + 128] + floor32(mem[ceil32(return_data.size) + 96]) + 128]
            mem[floor32(mem[_7 + (2 * ceil32(return_data.size)) + 128]) + floor32(mem[ceil32(return_data.size) + 96]) + _109 + _7 + (2 * ceil32(return_data.size)) + 320] = mem[floor32(mem[_7 + (2 * ceil32(return_data.size)) + 128]) + floor32(mem[ceil32(return_data.size) + 96]) + _109 + _7 + (2 * ceil32(return_data.size)) + -(mem[_7 + (2 * ceil32(return_data.size)) + 128] % 32) + 352 len mem[_7 + (2 * ceil32(return_data.size)) + 128] % 32]
            return 64, 
                   mem[_109 + _7 + (2 * ceil32(return_data.size)) + 192 len floor32(mem[_7 + (2 * ceil32(return_data.size)) + 128]) + floor32(_190) + 160]
        mem[floor32(_109) + _7 + (2 * ceil32(return_data.size)) + 160] = mem[floor32(_109) + _7 + (2 * ceil32(return_data.size)) + -(_109 % 32) + 192 len _109 % 32]
        mem[64] = floor32(_109) + _7 + (2 * ceil32(return_data.size)) + 192
        mem[floor32(_109) + _7 + (2 * ceil32(return_data.size)) + 192] = 64
        mem[floor32(_109) + _7 + (2 * ceil32(return_data.size)) + 256] = mem[ceil32(return_data.size) + 96]
        _196 = mem[ceil32(return_data.size) + 96]
        mem[floor32(_109) + _7 + (2 * ceil32(return_data.size)) + 288 len ceil32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len ceil32(mem[ceil32(return_data.size) + 96])]
        if not mem[ceil32(return_data.size) + 96] % 32:
            mem[floor32(_109) + _7 + (2 * ceil32(return_data.size)) + 224] = mem[ceil32(return_data.size) + 96] + 96
            mem[mem[ceil32(return_data.size) + 96] + floor32(_109) + _7 + (2 * ceil32(return_data.size)) + 288] = mem[_7 + (2 * ceil32(return_data.size)) + 128]
            mem[mem[ceil32(return_data.size) + 96] + floor32(_109) + _7 + (2 * ceil32(return_data.size)) + 320 len ceil32(mem[_7 + (2 * ceil32(return_data.size)) + 128])] = mem[_7 + (2 * ceil32(return_data.size)) + 160 len ceil32(mem[_7 + (2 * ceil32(return_data.size)) + 128])]
            if not mem[_7 + (2 * ceil32(return_data.size)) + 128] % 32:
                return 64, 
                       mem[floor32(_109) + _7 + (2 * ceil32(return_data.size)) + 224 len mem[_7 + (2 * ceil32(return_data.size)) + 128] + mem[ceil32(return_data.size) + 96] + 96]
            mem[floor32(mem[_7 + (2 * ceil32(return_data.size)) + 128]) + mem[ceil32(return_data.size) + 96] + floor32(_109) + _7 + (2 * ceil32(return_data.size)) + 320] = mem[floor32(mem[_7 + (2 * ceil32(return_data.size)) + 128]) + mem[ceil32(return_data.size) + 96] + floor32(_109) + _7 + (2 * ceil32(return_data.size)) + -(mem[_7 + (2 * ceil32(return_data.size)) + 128] % 32) + 352 len mem[_7 + (2 * ceil32(return_data.size)) + 128] % 32]
            return 64, 
                   mem[floor32(_109) + _7 + (2 * ceil32(return_data.size)) + 224 len floor32(mem[_7 + (2 * ceil32(return_data.size)) + 128]) + _196 + 128]
        mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_109) + _7 + (2 * ceil32(return_data.size)) + 288] = mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_109) + _7 + (2 * ceil32(return_data.size)) + -(mem[ceil32(return_data.size) + 96] % 32) + 320 len mem[ceil32(return_data.size) + 96] % 32]
        mem[floor32(_109) + _7 + (2 * ceil32(return_data.size)) + 224] = floor32(mem[ceil32(return_data.size) + 96]) + 128
        mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_109) + _7 + (2 * ceil32(return_data.size)) + 320] = mem[_7 + (2 * ceil32(return_data.size)) + 128]
        mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_109) + _7 + (2 * ceil32(return_data.size)) + 352 len ceil32(mem[_7 + (2 * ceil32(return_data.size)) + 128])] = mem[_7 + (2 * ceil32(return_data.size)) + 160 len ceil32(mem[_7 + (2 * ceil32(return_data.size)) + 128])]
        if not mem[_7 + (2 * ceil32(return_data.size)) + 128] % 32:
            return 64, 
                   mem[floor32(_109) + _7 + (2 * ceil32(return_data.size)) + 224 len mem[_7 + (2 * ceil32(return_data.size)) + 128] + floor32(mem[ceil32(return_data.size) + 96]) + 128]
        mem[floor32(mem[_7 + (2 * ceil32(return_data.size)) + 128]) + floor32(mem[ceil32(return_data.size) + 96]) + floor32(_109) + _7 + (2 * ceil32(return_data.size)) + 352] = mem[floor32(mem[_7 + (2 * ceil32(return_data.size)) + 128]) + floor32(mem[ceil32(return_data.size) + 96]) + floor32(_109) + _7 + (2 * ceil32(return_data.size)) + -(mem[_7 + (2 * ceil32(return_data.size)) + 128] % 32) + 384 len mem[_7 + (2 * ceil32(return_data.size)) + 128] % 32]
        return 64, 
               mem[floor32(_109) + _7 + (2 * ceil32(return_data.size)) + 224 len floor32(mem[_7 + (2 * ceil32(return_data.size)) + 128]) + floor32(_196) + 160]
    mem[floor32(_7) + ceil32(return_data.size) + 128] = mem[floor32(_7) + ceil32(return_data.size) + -(_7 % 32) + 160 len _7 % 32]
    mem[floor32(_7) + ceil32(return_data.size) + 160] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
    require ext_code.size(arg1)
    staticcall arg1.0x95d89b41 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[floor32(_7) + ceil32(return_data.size) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = floor32(_7) + (2 * ceil32(return_data.size)) + 160
    require return_data.size >= 32
    _106 = mem[floor32(_7) + ceil32(return_data.size) + 160]
    require mem[floor32(_7) + ceil32(return_data.size) + 160] <= 4294967296
    require mem[floor32(_7) + ceil32(return_data.size) + 160] + 32 <= return_data.size
    require mem[mem[floor32(_7) + ceil32(return_data.size) + 160] + floor32(_7) + ceil32(return_data.size) + 160] <= 4294967296 and mem[floor32(_7) + ceil32(return_data.size) + 160] + mem[mem[floor32(_7) + ceil32(return_data.size) + 160] + floor32(_7) + ceil32(return_data.size) + 160] + 32 <= return_data.size
    mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] = mem[mem[floor32(_7) + ceil32(return_data.size) + 160] + floor32(_7) + ceil32(return_data.size) + 160]
    _111 = mem[_106 + floor32(_7) + ceil32(return_data.size) + 160]
    mem[floor32(_7) + (2 * ceil32(return_data.size)) + 192 len ceil32(mem[_106 + floor32(_7) + ceil32(return_data.size) + 160])] = mem[_106 + floor32(_7) + ceil32(return_data.size) + 192 len ceil32(mem[_106 + floor32(_7) + ceil32(return_data.size) + 160])]
    if not _111 % 32:
        mem[64] = _111 + floor32(_7) + (2 * ceil32(return_data.size)) + 192
        mem[_111 + floor32(_7) + (2 * ceil32(return_data.size)) + 192] = 64
        mem[_111 + floor32(_7) + (2 * ceil32(return_data.size)) + 256] = mem[ceil32(return_data.size) + 96]
        mem[_111 + floor32(_7) + (2 * ceil32(return_data.size)) + 288 len ceil32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len ceil32(mem[ceil32(return_data.size) + 96])]
        if not mem[ceil32(return_data.size) + 96] % 32:
            mem[_111 + floor32(_7) + (2 * ceil32(return_data.size)) + 224] = mem[ceil32(return_data.size) + 96] + 96
            mem[mem[ceil32(return_data.size) + 96] + _111 + floor32(_7) + (2 * ceil32(return_data.size)) + 288] = mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160]
            mem[mem[ceil32(return_data.size) + 96] + _111 + floor32(_7) + (2 * ceil32(return_data.size)) + 320 len ceil32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160])] = mem[floor32(_7) + (2 * ceil32(return_data.size)) + 192 len ceil32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160])]
            if not mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] % 32:
                return 64, 
                       mem[_111 + floor32(_7) + (2 * ceil32(return_data.size)) + 224 len mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] + mem[ceil32(return_data.size) + 96] + 96]
            mem[floor32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160]) + mem[ceil32(return_data.size) + 96] + _111 + floor32(_7) + (2 * ceil32(return_data.size)) + 320] = mem[floor32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160]) + mem[ceil32(return_data.size) + 96] + _111 + floor32(_7) + (2 * ceil32(return_data.size)) + -(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] % 32) + 352 len mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] % 32]
            return Array(len=mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160], data=mem[_111 + floor32(_7) + (2 * ceil32(return_data.size)) + mem[ceil32(return_data.size) + 96] + 320 len floor32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160]) + 32]), 
                   mem[_111 + floor32(_7) + (2 * ceil32(return_data.size)) + 224 len mem[ceil32(return_data.size) + 96] + 64]
        mem[floor32(mem[ceil32(return_data.size) + 96]) + _111 + floor32(_7) + (2 * ceil32(return_data.size)) + 288] = mem[floor32(mem[ceil32(return_data.size) + 96]) + _111 + floor32(_7) + (2 * ceil32(return_data.size)) + -(mem[ceil32(return_data.size) + 96] % 32) + 320 len mem[ceil32(return_data.size) + 96] % 32]
        mem[_111 + floor32(_7) + (2 * ceil32(return_data.size)) + 224] = floor32(mem[ceil32(return_data.size) + 96]) + 128
        mem[floor32(mem[ceil32(return_data.size) + 96]) + _111 + floor32(_7) + (2 * ceil32(return_data.size)) + 320] = mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160]
        mem[floor32(mem[ceil32(return_data.size) + 96]) + _111 + floor32(_7) + (2 * ceil32(return_data.size)) + 352 len ceil32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160])] = mem[floor32(_7) + (2 * ceil32(return_data.size)) + 192 len ceil32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160])]
        if not mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] % 32:
            return 64, 
                   mem[_111 + floor32(_7) + (2 * ceil32(return_data.size)) + 224 len mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] + floor32(mem[ceil32(return_data.size) + 96]) + 128]
        mem[floor32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160]) + floor32(mem[ceil32(return_data.size) + 96]) + _111 + floor32(_7) + (2 * ceil32(return_data.size)) + 352] = mem[floor32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160]) + floor32(mem[ceil32(return_data.size) + 96]) + _111 + floor32(_7) + (2 * ceil32(return_data.size)) + -(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] % 32) + 384 len mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] % 32]
        return Array(len=mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160], data=mem[_111 + floor32(_7) + (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + 96]) + 352 len floor32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160]) + 32]), 
               mem[_111 + floor32(_7) + (2 * ceil32(return_data.size)) + 224 len floor32(mem[ceil32(return_data.size) + 96]) + 96]
    mem[floor32(_111) + floor32(_7) + (2 * ceil32(return_data.size)) + 192] = mem[floor32(_111) + floor32(_7) + (2 * ceil32(return_data.size)) + -(_111 % 32) + 224 len _111 % 32]
    mem[64] = floor32(_111) + floor32(_7) + (2 * ceil32(return_data.size)) + 224
    mem[floor32(_111) + floor32(_7) + (2 * ceil32(return_data.size)) + 224] = 64
    mem[floor32(_111) + floor32(_7) + (2 * ceil32(return_data.size)) + 288] = mem[ceil32(return_data.size) + 96]
    mem[floor32(_111) + floor32(_7) + (2 * ceil32(return_data.size)) + 320 len ceil32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len ceil32(mem[ceil32(return_data.size) + 96])]
    if not mem[ceil32(return_data.size) + 96] % 32:
        mem[floor32(_111) + floor32(_7) + (2 * ceil32(return_data.size)) + 256] = mem[ceil32(return_data.size) + 96] + 96
        mem[mem[ceil32(return_data.size) + 96] + floor32(_111) + floor32(_7) + (2 * ceil32(return_data.size)) + 320] = mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160]
        mem[mem[ceil32(return_data.size) + 96] + floor32(_111) + floor32(_7) + (2 * ceil32(return_data.size)) + 352 len ceil32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160])] = mem[floor32(_7) + (2 * ceil32(return_data.size)) + 192 len ceil32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160])]
        if not mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] % 32:
            return 64, 
                   mem[floor32(_111) + floor32(_7) + (2 * ceil32(return_data.size)) + 256 len mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] + mem[ceil32(return_data.size) + 96] + 96]
        mem[floor32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160]) + mem[ceil32(return_data.size) + 96] + floor32(_111) + floor32(_7) + (2 * ceil32(return_data.size)) + 352] = mem[floor32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160]) + mem[ceil32(return_data.size) + 96] + floor32(_111) + floor32(_7) + (2 * ceil32(return_data.size)) + -(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] % 32) + 384 len mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] % 32]
        return Array(len=mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160], data=mem[floor32(_111) + floor32(_7) + (2 * ceil32(return_data.size)) + mem[ceil32(return_data.size) + 96] + 352 len floor32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160]) + 32]), 
               mem[floor32(_111) + floor32(_7) + (2 * ceil32(return_data.size)) + 256 len mem[ceil32(return_data.size) + 96] + 64]
    mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_111) + floor32(_7) + (2 * ceil32(return_data.size)) + 320] = mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_111) + floor32(_7) + (2 * ceil32(return_data.size)) + -(mem[ceil32(return_data.size) + 96] % 32) + 352 len mem[ceil32(return_data.size) + 96] % 32]
    mem[floor32(_111) + floor32(_7) + (2 * ceil32(return_data.size)) + 256] = floor32(mem[ceil32(return_data.size) + 96]) + 128
    mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_111) + floor32(_7) + (2 * ceil32(return_data.size)) + 352] = mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160]
    mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_111) + floor32(_7) + (2 * ceil32(return_data.size)) + 384 len ceil32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160])] = mem[floor32(_7) + (2 * ceil32(return_data.size)) + 192 len ceil32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160])]
    if not mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] % 32:
        return 64, 
               mem[floor32(_111) + floor32(_7) + (2 * ceil32(return_data.size)) + 256 len mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] + floor32(mem[ceil32(return_data.size) + 96]) + 128]
    mem[floor32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160]) + floor32(mem[ceil32(return_data.size) + 96]) + floor32(_111) + floor32(_7) + (2 * ceil32(return_data.size)) + 384] = mem[floor32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160]) + floor32(mem[ceil32(return_data.size) + 96]) + floor32(_111) + floor32(_7) + (2 * ceil32(return_data.size)) + -(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] % 32) + 416 len mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] % 32]
    return Array(len=mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160], data=mem[floor32(_111) + floor32(_7) + (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + 96]) + 384 len floor32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160]) + 32]), 
           mem[floor32(_111) + floor32(_7) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[ceil32(return_data.size) + 96]) + 96]
}

function sub_bbd83ac3(?) payable {
    require calldata.size - 4 >= 32
    mem[96] = 0x6fdde0300000000000000000000000000000000000000000000000000000000
    require ext_code.size(arg1)
    staticcall arg1.name() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96]
    require mem[96] <= 4294967296
    require mem[96] + 32 <= return_data.size
    require mem[mem[96] + 96] <= 4294967296 and mem[96] + mem[mem[96] + 96] + 32 <= return_data.size
    mem[ceil32(return_data.size) + 96] = mem[mem[96] + 96]
    _7 = mem[_4 + 96]
    mem[ceil32(return_data.size) + 128 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
    if not _7 % 32:
        mem[_7 + ceil32(return_data.size) + 128] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
        require ext_code.size(arg1)
        staticcall arg1.0x95d89b41 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[_7 + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = _7 + (2 * ceil32(return_data.size)) + 128
        require return_data.size >= 32
        _119 = mem[_7 + ceil32(return_data.size) + 128]
        require mem[_7 + ceil32(return_data.size) + 128] <= 4294967296
        require mem[_7 + ceil32(return_data.size) + 128] + 32 <= return_data.size
        require mem[mem[_7 + ceil32(return_data.size) + 128] + _7 + ceil32(return_data.size) + 128] <= 4294967296 and mem[_7 + ceil32(return_data.size) + 128] + mem[mem[_7 + ceil32(return_data.size) + 128] + _7 + ceil32(return_data.size) + 128] + 32 <= return_data.size
        mem[_7 + (2 * ceil32(return_data.size)) + 128] = mem[mem[_7 + ceil32(return_data.size) + 128] + _7 + ceil32(return_data.size) + 128]
        _125 = mem[_119 + _7 + ceil32(return_data.size) + 128]
        mem[_7 + (2 * ceil32(return_data.size)) + 160 len ceil32(mem[_119 + _7 + ceil32(return_data.size) + 128])] = mem[_119 + _7 + ceil32(return_data.size) + 160 len ceil32(mem[_119 + _7 + ceil32(return_data.size) + 128])]
        if not _125 % 32:
            mem[64] = _125 + _7 + (2 * ceil32(return_data.size)) + 160
            require ext_code.size(arg1)
            staticcall arg1.0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[_125 + _7 + (2 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
            mem[_125 + _7 + (2 * ceil32(return_data.size)) + 160] = 96
            mem[_125 + _7 + (2 * ceil32(return_data.size)) + 256] = mem[ceil32(return_data.size) + 96]
            _236 = mem[ceil32(return_data.size) + 96]
            mem[_125 + _7 + (2 * ceil32(return_data.size)) + 288 len ceil32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len ceil32(mem[ceil32(return_data.size) + 96])]
            if not mem[ceil32(return_data.size) + 96] % 32:
                mem[_125 + _7 + (2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + 96] + 128
                mem[mem[ceil32(return_data.size) + 96] + _125 + _7 + (2 * ceil32(return_data.size)) + 288] = mem[_7 + (2 * ceil32(return_data.size)) + 128]
                mem[mem[ceil32(return_data.size) + 96] + _125 + _7 + (2 * ceil32(return_data.size)) + 320 len ceil32(mem[_7 + (2 * ceil32(return_data.size)) + 128])] = mem[_7 + (2 * ceil32(return_data.size)) + 160 len ceil32(mem[_7 + (2 * ceil32(return_data.size)) + 128])]
                if not mem[_7 + (2 * ceil32(return_data.size)) + 128] % 32:
                    return 96, 
                           mem[_125 + _7 + (2 * ceil32(return_data.size)) + 192],
                           ext_call.return_data[0],
                           mem[_125 + _7 + (2 * ceil32(return_data.size)) + 256 len mem[_7 + (2 * ceil32(return_data.size)) + 128] + mem[ceil32(return_data.size) + 96] + 64]
                mem[floor32(mem[_7 + (2 * ceil32(return_data.size)) + 128]) + mem[ceil32(return_data.size) + 96] + _125 + _7 + (2 * ceil32(return_data.size)) + 320] = mem[floor32(mem[_7 + (2 * ceil32(return_data.size)) + 128]) + mem[ceil32(return_data.size) + 96] + _125 + _7 + (2 * ceil32(return_data.size)) + -(mem[_7 + (2 * ceil32(return_data.size)) + 128] % 32) + 352 len mem[_7 + (2 * ceil32(return_data.size)) + 128] % 32]
                return 96, 
                       mem[_125 + _7 + (2 * ceil32(return_data.size)) + 192],
                       ext_call.return_data[0],
                       mem[_125 + _7 + (2 * ceil32(return_data.size)) + 256 len floor32(mem[_7 + (2 * ceil32(return_data.size)) + 128]) + _236 + 96]
            mem[floor32(mem[ceil32(return_data.size) + 96]) + _125 + _7 + (2 * ceil32(return_data.size)) + 288] = mem[floor32(mem[ceil32(return_data.size) + 96]) + _125 + _7 + (2 * ceil32(return_data.size)) + -(mem[ceil32(return_data.size) + 96] % 32) + 320 len mem[ceil32(return_data.size) + 96] % 32]
            mem[_125 + _7 + (2 * ceil32(return_data.size)) + 192] = floor32(mem[ceil32(return_data.size) + 96]) + 160
            mem[floor32(mem[ceil32(return_data.size) + 96]) + _125 + _7 + (2 * ceil32(return_data.size)) + 320] = mem[_7 + (2 * ceil32(return_data.size)) + 128]
            mem[floor32(mem[ceil32(return_data.size) + 96]) + _125 + _7 + (2 * ceil32(return_data.size)) + 352 len ceil32(mem[_7 + (2 * ceil32(return_data.size)) + 128])] = mem[_7 + (2 * ceil32(return_data.size)) + 160 len ceil32(mem[_7 + (2 * ceil32(return_data.size)) + 128])]
            if not mem[_7 + (2 * ceil32(return_data.size)) + 128] % 32:
                return 96, 
                       mem[_125 + _7 + (2 * ceil32(return_data.size)) + 192],
                       ext_call.return_data[0],
                       mem[_125 + _7 + (2 * ceil32(return_data.size)) + 256 len mem[_7 + (2 * ceil32(return_data.size)) + 128] + floor32(mem[ceil32(return_data.size) + 96]) + 96]
            mem[floor32(mem[_7 + (2 * ceil32(return_data.size)) + 128]) + floor32(mem[ceil32(return_data.size) + 96]) + _125 + _7 + (2 * ceil32(return_data.size)) + 352] = mem[floor32(mem[_7 + (2 * ceil32(return_data.size)) + 128]) + floor32(mem[ceil32(return_data.size) + 96]) + _125 + _7 + (2 * ceil32(return_data.size)) + -(mem[_7 + (2 * ceil32(return_data.size)) + 128] % 32) + 384 len mem[_7 + (2 * ceil32(return_data.size)) + 128] % 32]
            return 96, 
                   mem[_125 + _7 + (2 * ceil32(return_data.size)) + 192],
                   ext_call.return_data[0],
                   mem[_125 + _7 + (2 * ceil32(return_data.size)) + 256 len floor32(mem[_7 + (2 * ceil32(return_data.size)) + 128]) + floor32(_236) + 128]
        mem[floor32(_125) + _7 + (2 * ceil32(return_data.size)) + 160] = mem[floor32(_125) + _7 + (2 * ceil32(return_data.size)) + -(_125 % 32) + 192 len _125 % 32]
        mem[64] = floor32(_125) + _7 + (2 * ceil32(return_data.size)) + 192
        require ext_code.size(arg1)
        staticcall arg1.0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[floor32(_125) + _7 + (2 * ceil32(return_data.size)) + 256] = ext_call.return_data[0]
        mem[floor32(_125) + _7 + (2 * ceil32(return_data.size)) + 192] = 96
        mem[floor32(_125) + _7 + (2 * ceil32(return_data.size)) + 288] = mem[ceil32(return_data.size) + 96]
        _244 = mem[ceil32(return_data.size) + 96]
        mem[floor32(_125) + _7 + (2 * ceil32(return_data.size)) + 320 len ceil32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len ceil32(mem[ceil32(return_data.size) + 96])]
        if not mem[ceil32(return_data.size) + 96] % 32:
            mem[floor32(_125) + _7 + (2 * ceil32(return_data.size)) + 224] = mem[ceil32(return_data.size) + 96] + 128
            mem[mem[ceil32(return_data.size) + 96] + floor32(_125) + _7 + (2 * ceil32(return_data.size)) + 320] = mem[_7 + (2 * ceil32(return_data.size)) + 128]
            mem[mem[ceil32(return_data.size) + 96] + floor32(_125) + _7 + (2 * ceil32(return_data.size)) + 352 len ceil32(mem[_7 + (2 * ceil32(return_data.size)) + 128])] = mem[_7 + (2 * ceil32(return_data.size)) + 160 len ceil32(mem[_7 + (2 * ceil32(return_data.size)) + 128])]
            if not mem[_7 + (2 * ceil32(return_data.size)) + 128] % 32:
                return 96, 
                       mem[floor32(_125) + _7 + (2 * ceil32(return_data.size)) + 224],
                       ext_call.return_data[0],
                       mem[floor32(_125) + _7 + (2 * ceil32(return_data.size)) + 288 len mem[_7 + (2 * ceil32(return_data.size)) + 128] + mem[ceil32(return_data.size) + 96] + 64]
            mem[floor32(mem[_7 + (2 * ceil32(return_data.size)) + 128]) + mem[ceil32(return_data.size) + 96] + floor32(_125) + _7 + (2 * ceil32(return_data.size)) + 352] = mem[floor32(mem[_7 + (2 * ceil32(return_data.size)) + 128]) + mem[ceil32(return_data.size) + 96] + floor32(_125) + _7 + (2 * ceil32(return_data.size)) + -(mem[_7 + (2 * ceil32(return_data.size)) + 128] % 32) + 384 len mem[_7 + (2 * ceil32(return_data.size)) + 128] % 32]
            return 96, 
                   mem[floor32(_125) + _7 + (2 * ceil32(return_data.size)) + 224],
                   ext_call.return_data[0],
                   mem[floor32(_125) + _7 + (2 * ceil32(return_data.size)) + 288 len floor32(mem[_7 + (2 * ceil32(return_data.size)) + 128]) + _244 + 96]
        mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_125) + _7 + (2 * ceil32(return_data.size)) + 320] = mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_125) + _7 + (2 * ceil32(return_data.size)) + -(mem[ceil32(return_data.size) + 96] % 32) + 352 len mem[ceil32(return_data.size) + 96] % 32]
        mem[floor32(_125) + _7 + (2 * ceil32(return_data.size)) + 224] = floor32(mem[ceil32(return_data.size) + 96]) + 160
        mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_125) + _7 + (2 * ceil32(return_data.size)) + 352] = mem[_7 + (2 * ceil32(return_data.size)) + 128]
        mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_125) + _7 + (2 * ceil32(return_data.size)) + 384 len ceil32(mem[_7 + (2 * ceil32(return_data.size)) + 128])] = mem[_7 + (2 * ceil32(return_data.size)) + 160 len ceil32(mem[_7 + (2 * ceil32(return_data.size)) + 128])]
        if not mem[_7 + (2 * ceil32(return_data.size)) + 128] % 32:
            return 96, 
                   mem[floor32(_125) + _7 + (2 * ceil32(return_data.size)) + 224],
                   ext_call.return_data[0],
                   mem[floor32(_125) + _7 + (2 * ceil32(return_data.size)) + 288 len mem[_7 + (2 * ceil32(return_data.size)) + 128] + floor32(mem[ceil32(return_data.size) + 96]) + 96]
        mem[floor32(mem[_7 + (2 * ceil32(return_data.size)) + 128]) + floor32(mem[ceil32(return_data.size) + 96]) + floor32(_125) + _7 + (2 * ceil32(return_data.size)) + 384] = mem[floor32(mem[_7 + (2 * ceil32(return_data.size)) + 128]) + floor32(mem[ceil32(return_data.size) + 96]) + floor32(_125) + _7 + (2 * ceil32(return_data.size)) + -(mem[_7 + (2 * ceil32(return_data.size)) + 128] % 32) + 416 len mem[_7 + (2 * ceil32(return_data.size)) + 128] % 32]
        return 96, 
               mem[floor32(_125) + _7 + (2 * ceil32(return_data.size)) + 224],
               ext_call.return_data[0],
               mem[floor32(_125) + _7 + (2 * ceil32(return_data.size)) + 288 len floor32(mem[_7 + (2 * ceil32(return_data.size)) + 128]) + floor32(_244) + 128]
    mem[floor32(_7) + ceil32(return_data.size) + 128] = mem[floor32(_7) + ceil32(return_data.size) + -(_7 % 32) + 160 len _7 % 32]
    mem[floor32(_7) + ceil32(return_data.size) + 160] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
    require ext_code.size(arg1)
    staticcall arg1.0x95d89b41 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[floor32(_7) + ceil32(return_data.size) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = floor32(_7) + (2 * ceil32(return_data.size)) + 160
    require return_data.size >= 32
    _122 = mem[floor32(_7) + ceil32(return_data.size) + 160]
    require mem[floor32(_7) + ceil32(return_data.size) + 160] <= 4294967296
    require mem[floor32(_7) + ceil32(return_data.size) + 160] + 32 <= return_data.size
    require mem[mem[floor32(_7) + ceil32(return_data.size) + 160] + floor32(_7) + ceil32(return_data.size) + 160] <= 4294967296 and mem[floor32(_7) + ceil32(return_data.size) + 160] + mem[mem[floor32(_7) + ceil32(return_data.size) + 160] + floor32(_7) + ceil32(return_data.size) + 160] + 32 <= return_data.size
    mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] = mem[mem[floor32(_7) + ceil32(return_data.size) + 160] + floor32(_7) + ceil32(return_data.size) + 160]
    _127 = mem[_122 + floor32(_7) + ceil32(return_data.size) + 160]
    mem[floor32(_7) + (2 * ceil32(return_data.size)) + 192 len ceil32(mem[_122 + floor32(_7) + ceil32(return_data.size) + 160])] = mem[_122 + floor32(_7) + ceil32(return_data.size) + 192 len ceil32(mem[_122 + floor32(_7) + ceil32(return_data.size) + 160])]
    if not _127 % 32:
        mem[64] = _127 + floor32(_7) + (2 * ceil32(return_data.size)) + 192
        require ext_code.size(arg1)
        staticcall arg1.0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[_127 + floor32(_7) + (2 * ceil32(return_data.size)) + 256] = ext_call.return_data[0]
        mem[_127 + floor32(_7) + (2 * ceil32(return_data.size)) + 192] = 96
        mem[_127 + floor32(_7) + (2 * ceil32(return_data.size)) + 288] = mem[ceil32(return_data.size) + 96]
        mem[_127 + floor32(_7) + (2 * ceil32(return_data.size)) + 320 len ceil32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len ceil32(mem[ceil32(return_data.size) + 96])]
        if not mem[ceil32(return_data.size) + 96] % 32:
            mem[_127 + floor32(_7) + (2 * ceil32(return_data.size)) + 224] = mem[ceil32(return_data.size) + 96] + 128
            mem[mem[ceil32(return_data.size) + 96] + _127 + floor32(_7) + (2 * ceil32(return_data.size)) + 320] = mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160]
            mem[mem[ceil32(return_data.size) + 96] + _127 + floor32(_7) + (2 * ceil32(return_data.size)) + 352 len ceil32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160])] = mem[floor32(_7) + (2 * ceil32(return_data.size)) + 192 len ceil32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160])]
            if not mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] % 32:
                return 96, 
                       mem[_127 + floor32(_7) + (2 * ceil32(return_data.size)) + 224],
                       ext_call.return_data[0],
                       mem[_127 + floor32(_7) + (2 * ceil32(return_data.size)) + 288 len mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] + mem[ceil32(return_data.size) + 96] + 64]
            mem[floor32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160]) + mem[ceil32(return_data.size) + 96] + _127 + floor32(_7) + (2 * ceil32(return_data.size)) + 352] = mem[floor32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160]) + mem[ceil32(return_data.size) + 96] + _127 + floor32(_7) + (2 * ceil32(return_data.size)) + -(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] % 32) + 384 len mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] % 32]
            return Array(len=mem[_127 + floor32(_7) + (2 * ceil32(return_data.size)) + 288 len mem[ceil32(return_data.size) + 96] + 32], data=mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160], mem[_127 + floor32(_7) + (2 * ceil32(return_data.size)) + mem[ceil32(return_data.size) + 96] + 352 len floor32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160]) + 32]), 
                   mem[_127 + floor32(_7) + (2 * ceil32(return_data.size)) + 224],
                   ext_call.return_data[0]
        mem[floor32(mem[ceil32(return_data.size) + 96]) + _127 + floor32(_7) + (2 * ceil32(return_data.size)) + 320] = mem[floor32(mem[ceil32(return_data.size) + 96]) + _127 + floor32(_7) + (2 * ceil32(return_data.size)) + -(mem[ceil32(return_data.size) + 96] % 32) + 352 len mem[ceil32(return_data.size) + 96] % 32]
        mem[_127 + floor32(_7) + (2 * ceil32(return_data.size)) + 224] = floor32(mem[ceil32(return_data.size) + 96]) + 160
        mem[floor32(mem[ceil32(return_data.size) + 96]) + _127 + floor32(_7) + (2 * ceil32(return_data.size)) + 352] = mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160]
        mem[floor32(mem[ceil32(return_data.size) + 96]) + _127 + floor32(_7) + (2 * ceil32(return_data.size)) + 384 len ceil32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160])] = mem[floor32(_7) + (2 * ceil32(return_data.size)) + 192 len ceil32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160])]
        if not mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] % 32:
            return 96, 
                   mem[_127 + floor32(_7) + (2 * ceil32(return_data.size)) + 224],
                   ext_call.return_data[0],
                   mem[_127 + floor32(_7) + (2 * ceil32(return_data.size)) + 288 len mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] + floor32(mem[ceil32(return_data.size) + 96]) + 96]
        mem[floor32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160]) + floor32(mem[ceil32(return_data.size) + 96]) + _127 + floor32(_7) + (2 * ceil32(return_data.size)) + 384] = mem[floor32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160]) + floor32(mem[ceil32(return_data.size) + 96]) + _127 + floor32(_7) + (2 * ceil32(return_data.size)) + -(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] % 32) + 416 len mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] % 32]
        return Array(len=mem[_127 + floor32(_7) + (2 * ceil32(return_data.size)) + 288 len floor32(mem[ceil32(return_data.size) + 96]) + 64], data=mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160], mem[_127 + floor32(_7) + (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + 96]) + 384 len floor32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160]) + 32]), 
               mem[_127 + floor32(_7) + (2 * ceil32(return_data.size)) + 224],
               ext_call.return_data[0]
    mem[floor32(_127) + floor32(_7) + (2 * ceil32(return_data.size)) + 192] = mem[floor32(_127) + floor32(_7) + (2 * ceil32(return_data.size)) + -(_127 % 32) + 224 len _127 % 32]
    mem[64] = floor32(_127) + floor32(_7) + (2 * ceil32(return_data.size)) + 224
    require ext_code.size(arg1)
    staticcall arg1.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[floor32(_127) + floor32(_7) + (2 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
    mem[floor32(_127) + floor32(_7) + (2 * ceil32(return_data.size)) + 224] = 96
    mem[floor32(_127) + floor32(_7) + (2 * ceil32(return_data.size)) + 320] = mem[ceil32(return_data.size) + 96]
    mem[floor32(_127) + floor32(_7) + (2 * ceil32(return_data.size)) + 352 len ceil32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len ceil32(mem[ceil32(return_data.size) + 96])]
    if not mem[ceil32(return_data.size) + 96] % 32:
        mem[floor32(_127) + floor32(_7) + (2 * ceil32(return_data.size)) + 256] = mem[ceil32(return_data.size) + 96] + 128
        mem[mem[ceil32(return_data.size) + 96] + floor32(_127) + floor32(_7) + (2 * ceil32(return_data.size)) + 352] = mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160]
        mem[mem[ceil32(return_data.size) + 96] + floor32(_127) + floor32(_7) + (2 * ceil32(return_data.size)) + 384 len ceil32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160])] = mem[floor32(_7) + (2 * ceil32(return_data.size)) + 192 len ceil32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160])]
        if not mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] % 32:
            return 96, 
                   mem[floor32(_127) + floor32(_7) + (2 * ceil32(return_data.size)) + 256],
                   ext_call.return_data[0],
                   mem[floor32(_127) + floor32(_7) + (2 * ceil32(return_data.size)) + 320 len mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] + mem[ceil32(return_data.size) + 96] + 64]
        mem[floor32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160]) + mem[ceil32(return_data.size) + 96] + floor32(_127) + floor32(_7) + (2 * ceil32(return_data.size)) + 384] = mem[floor32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160]) + mem[ceil32(return_data.size) + 96] + floor32(_127) + floor32(_7) + (2 * ceil32(return_data.size)) + -(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] % 32) + 416 len mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] % 32]
        return Array(len=mem[floor32(_127) + floor32(_7) + (2 * ceil32(return_data.size)) + 320 len mem[ceil32(return_data.size) + 96] + 32], data=mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160], mem[floor32(_127) + floor32(_7) + (2 * ceil32(return_data.size)) + mem[ceil32(return_data.size) + 96] + 384 len floor32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160]) + 32]), 
               mem[floor32(_127) + floor32(_7) + (2 * ceil32(return_data.size)) + 256],
               ext_call.return_data[0]
    mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_127) + floor32(_7) + (2 * ceil32(return_data.size)) + 352] = mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_127) + floor32(_7) + (2 * ceil32(return_data.size)) + -(mem[ceil32(return_data.size) + 96] % 32) + 384 len mem[ceil32(return_data.size) + 96] % 32]
    mem[floor32(_127) + floor32(_7) + (2 * ceil32(return_data.size)) + 256] = floor32(mem[ceil32(return_data.size) + 96]) + 160
    mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_127) + floor32(_7) + (2 * ceil32(return_data.size)) + 384] = mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160]
    mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_127) + floor32(_7) + (2 * ceil32(return_data.size)) + 416 len ceil32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160])] = mem[floor32(_7) + (2 * ceil32(return_data.size)) + 192 len ceil32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160])]
    if not mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] % 32:
        return 96, 
               mem[floor32(_127) + floor32(_7) + (2 * ceil32(return_data.size)) + 256],
               ext_call.return_data[0],
               mem[floor32(_127) + floor32(_7) + (2 * ceil32(return_data.size)) + 320 len mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] + floor32(mem[ceil32(return_data.size) + 96]) + 96]
    mem[floor32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160]) + floor32(mem[ceil32(return_data.size) + 96]) + floor32(_127) + floor32(_7) + (2 * ceil32(return_data.size)) + 416] = mem[floor32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160]) + floor32(mem[ceil32(return_data.size) + 96]) + floor32(_127) + floor32(_7) + (2 * ceil32(return_data.size)) + -(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] % 32) + 448 len mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] % 32]
    return Array(len=mem[floor32(_127) + floor32(_7) + (2 * ceil32(return_data.size)) + 320 len floor32(mem[ceil32(return_data.size) + 96]) + 64], data=mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160], mem[floor32(_127) + floor32(_7) + (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + 96]) + 416 len floor32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160]) + 32]), 
           mem[floor32(_127) + floor32(_7) + (2 * ceil32(return_data.size)) + 256],
           ext_call.return_data[0]
}

function sub_6863d2e5(?) payable {
    require calldata.size - 4 >= 64
    mem[96] = 0x6fdde0300000000000000000000000000000000000000000000000000000000
    require ext_code.size(arg1)
    staticcall arg1.name() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96]
    require mem[96] <= 4294967296
    require mem[96] + 32 <= return_data.size
    require mem[mem[96] + 96] <= 4294967296 and mem[96] + mem[mem[96] + 96] + 32 <= return_data.size
    mem[ceil32(return_data.size) + 96] = mem[mem[96] + 96]
    _7 = mem[_4 + 96]
    mem[ceil32(return_data.size) + 128 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
    if not _7 % 32:
        mem[_7 + ceil32(return_data.size) + 128] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
        require ext_code.size(arg1)
        staticcall arg1.0x95d89b41 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[_7 + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = _7 + (2 * ceil32(return_data.size)) + 128
        require return_data.size >= 32
        _119 = mem[_7 + ceil32(return_data.size) + 128]
        require mem[_7 + ceil32(return_data.size) + 128] <= 4294967296
        require mem[_7 + ceil32(return_data.size) + 128] + 32 <= return_data.size
        require mem[mem[_7 + ceil32(return_data.size) + 128] + _7 + ceil32(return_data.size) + 128] <= 4294967296 and mem[_7 + ceil32(return_data.size) + 128] + mem[mem[_7 + ceil32(return_data.size) + 128] + _7 + ceil32(return_data.size) + 128] + 32 <= return_data.size
        mem[_7 + (2 * ceil32(return_data.size)) + 128] = mem[mem[_7 + ceil32(return_data.size) + 128] + _7 + ceil32(return_data.size) + 128]
        _125 = mem[_119 + _7 + ceil32(return_data.size) + 128]
        mem[_7 + (2 * ceil32(return_data.size)) + 160 len ceil32(mem[_119 + _7 + ceil32(return_data.size) + 128])] = mem[_119 + _7 + ceil32(return_data.size) + 160 len ceil32(mem[_119 + _7 + ceil32(return_data.size) + 128])]
        if not _125 % 32:
            mem[64] = _125 + _7 + (2 * ceil32(return_data.size)) + 160
            mem[_125 + _7 + (2 * ceil32(return_data.size)) + 164] = arg2
            require ext_code.size(arg1)
            staticcall arg1.0x70a08231 with:
                    gas gas_remaining wei
                   args arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[_125 + _7 + (2 * ceil32(return_data.size)) + 224] = 0
            mem[_125 + _7 + (2 * ceil32(return_data.size)) + 256] = 1
            mem[_125 + _7 + (2 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
            mem[_125 + _7 + (2 * ceil32(return_data.size)) + 320] = 0
            mem[_125 + _7 + (2 * ceil32(return_data.size)) + 160] = 192
            mem[_125 + _7 + (2 * ceil32(return_data.size)) + 352] = mem[ceil32(return_data.size) + 96]
            _236 = mem[ceil32(return_data.size) + 96]
            mem[_125 + _7 + (2 * ceil32(return_data.size)) + 384 len ceil32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len ceil32(mem[ceil32(return_data.size) + 96])]
            if not mem[ceil32(return_data.size) + 96] % 32:
                mem[_125 + _7 + (2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + 96] + 224
                mem[mem[ceil32(return_data.size) + 96] + _125 + _7 + (2 * ceil32(return_data.size)) + 384] = mem[_7 + (2 * ceil32(return_data.size)) + 128]
                mem[mem[ceil32(return_data.size) + 96] + _125 + _7 + (2 * ceil32(return_data.size)) + 416 len ceil32(mem[_7 + (2 * ceil32(return_data.size)) + 128])] = mem[_7 + (2 * ceil32(return_data.size)) + 160 len ceil32(mem[_7 + (2 * ceil32(return_data.size)) + 128])]
                if not mem[_7 + (2 * ceil32(return_data.size)) + 128] % 32:
                    return 192, 
                           mem[_125 + _7 + (2 * ceil32(return_data.size)) + 192],
                           0,
                           1,
                           ext_call.return_data[0],
                           0,
                           mem[_125 + _7 + (2 * ceil32(return_data.size)) + 352 len mem[_7 + (2 * ceil32(return_data.size)) + 128] + mem[ceil32(return_data.size) + 96] + 64]
                mem[floor32(mem[_7 + (2 * ceil32(return_data.size)) + 128]) + mem[ceil32(return_data.size) + 96] + _125 + _7 + (2 * ceil32(return_data.size)) + 416] = mem[floor32(mem[_7 + (2 * ceil32(return_data.size)) + 128]) + mem[ceil32(return_data.size) + 96] + _125 + _7 + (2 * ceil32(return_data.size)) + -(mem[_7 + (2 * ceil32(return_data.size)) + 128] % 32) + 448 len mem[_7 + (2 * ceil32(return_data.size)) + 128] % 32]
                return 192, 
                       mem[_125 + _7 + (2 * ceil32(return_data.size)) + 192],
                       0,
                       1,
                       ext_call.return_data[0],
                       0,
                       mem[_125 + _7 + (2 * ceil32(return_data.size)) + 352 len floor32(mem[_7 + (2 * ceil32(return_data.size)) + 128]) + _236 + 96]
            mem[floor32(mem[ceil32(return_data.size) + 96]) + _125 + _7 + (2 * ceil32(return_data.size)) + 384] = mem[floor32(mem[ceil32(return_data.size) + 96]) + _125 + _7 + (2 * ceil32(return_data.size)) + -(mem[ceil32(return_data.size) + 96] % 32) + 416 len mem[ceil32(return_data.size) + 96] % 32]
            mem[_125 + _7 + (2 * ceil32(return_data.size)) + 192] = floor32(mem[ceil32(return_data.size) + 96]) + 256
            mem[floor32(mem[ceil32(return_data.size) + 96]) + _125 + _7 + (2 * ceil32(return_data.size)) + 416] = mem[_7 + (2 * ceil32(return_data.size)) + 128]
            mem[floor32(mem[ceil32(return_data.size) + 96]) + _125 + _7 + (2 * ceil32(return_data.size)) + 448 len ceil32(mem[_7 + (2 * ceil32(return_data.size)) + 128])] = mem[_7 + (2 * ceil32(return_data.size)) + 160 len ceil32(mem[_7 + (2 * ceil32(return_data.size)) + 128])]
            if not mem[_7 + (2 * ceil32(return_data.size)) + 128] % 32:
                return 192, 
                       mem[_125 + _7 + (2 * ceil32(return_data.size)) + 192],
                       0,
                       1,
                       ext_call.return_data[0],
                       0,
                       mem[_125 + _7 + (2 * ceil32(return_data.size)) + 352 len mem[_7 + (2 * ceil32(return_data.size)) + 128] + floor32(mem[ceil32(return_data.size) + 96]) + 96]
            mem[floor32(mem[_7 + (2 * ceil32(return_data.size)) + 128]) + floor32(mem[ceil32(return_data.size) + 96]) + _125 + _7 + (2 * ceil32(return_data.size)) + 448] = mem[floor32(mem[_7 + (2 * ceil32(return_data.size)) + 128]) + floor32(mem[ceil32(return_data.size) + 96]) + _125 + _7 + (2 * ceil32(return_data.size)) + -(mem[_7 + (2 * ceil32(return_data.size)) + 128] % 32) + 480 len mem[_7 + (2 * ceil32(return_data.size)) + 128] % 32]
            return 192, 
                   mem[_125 + _7 + (2 * ceil32(return_data.size)) + 192],
                   0,
                   1,
                   ext_call.return_data[0],
                   0,
                   mem[_125 + _7 + (2 * ceil32(return_data.size)) + 352 len floor32(mem[_7 + (2 * ceil32(return_data.size)) + 128]) + floor32(_236) + 128]
        mem[floor32(_125) + _7 + (2 * ceil32(return_data.size)) + 160] = mem[floor32(_125) + _7 + (2 * ceil32(return_data.size)) + -(_125 % 32) + 192 len _125 % 32]
        mem[64] = floor32(_125) + _7 + (2 * ceil32(return_data.size)) + 192
        mem[floor32(_125) + _7 + (2 * ceil32(return_data.size)) + 196] = arg2
        require ext_code.size(arg1)
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[floor32(_125) + _7 + (2 * ceil32(return_data.size)) + 256] = 0
        mem[floor32(_125) + _7 + (2 * ceil32(return_data.size)) + 288] = 1
        mem[floor32(_125) + _7 + (2 * ceil32(return_data.size)) + 320] = ext_call.return_data[0]
        mem[floor32(_125) + _7 + (2 * ceil32(return_data.size)) + 352] = 0
        mem[floor32(_125) + _7 + (2 * ceil32(return_data.size)) + 192] = 192
        mem[floor32(_125) + _7 + (2 * ceil32(return_data.size)) + 384] = mem[ceil32(return_data.size) + 96]
        _244 = mem[ceil32(return_data.size) + 96]
        mem[floor32(_125) + _7 + (2 * ceil32(return_data.size)) + 416 len ceil32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len ceil32(mem[ceil32(return_data.size) + 96])]
        if not mem[ceil32(return_data.size) + 96] % 32:
            mem[floor32(_125) + _7 + (2 * ceil32(return_data.size)) + 224] = mem[ceil32(return_data.size) + 96] + 224
            mem[mem[ceil32(return_data.size) + 96] + floor32(_125) + _7 + (2 * ceil32(return_data.size)) + 416] = mem[_7 + (2 * ceil32(return_data.size)) + 128]
            mem[mem[ceil32(return_data.size) + 96] + floor32(_125) + _7 + (2 * ceil32(return_data.size)) + 448 len ceil32(mem[_7 + (2 * ceil32(return_data.size)) + 128])] = mem[_7 + (2 * ceil32(return_data.size)) + 160 len ceil32(mem[_7 + (2 * ceil32(return_data.size)) + 128])]
            if not mem[_7 + (2 * ceil32(return_data.size)) + 128] % 32:
                return 192, 
                       mem[floor32(_125) + _7 + (2 * ceil32(return_data.size)) + 224],
                       0,
                       1,
                       ext_call.return_data[0],
                       0,
                       mem[floor32(_125) + _7 + (2 * ceil32(return_data.size)) + 384 len mem[_7 + (2 * ceil32(return_data.size)) + 128] + mem[ceil32(return_data.size) + 96] + 64]
            mem[floor32(mem[_7 + (2 * ceil32(return_data.size)) + 128]) + mem[ceil32(return_data.size) + 96] + floor32(_125) + _7 + (2 * ceil32(return_data.size)) + 448] = mem[floor32(mem[_7 + (2 * ceil32(return_data.size)) + 128]) + mem[ceil32(return_data.size) + 96] + floor32(_125) + _7 + (2 * ceil32(return_data.size)) + -(mem[_7 + (2 * ceil32(return_data.size)) + 128] % 32) + 480 len mem[_7 + (2 * ceil32(return_data.size)) + 128] % 32]
            return 192, 
                   mem[floor32(_125) + _7 + (2 * ceil32(return_data.size)) + 224],
                   0,
                   1,
                   ext_call.return_data[0],
                   0,
                   mem[floor32(_125) + _7 + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_7 + (2 * ceil32(return_data.size)) + 128]) + _244 + 96]
        mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_125) + _7 + (2 * ceil32(return_data.size)) + 416] = mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_125) + _7 + (2 * ceil32(return_data.size)) + -(mem[ceil32(return_data.size) + 96] % 32) + 448 len mem[ceil32(return_data.size) + 96] % 32]
        mem[floor32(_125) + _7 + (2 * ceil32(return_data.size)) + 224] = floor32(mem[ceil32(return_data.size) + 96]) + 256
        mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_125) + _7 + (2 * ceil32(return_data.size)) + 448] = mem[_7 + (2 * ceil32(return_data.size)) + 128]
        mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_125) + _7 + (2 * ceil32(return_data.size)) + 480 len ceil32(mem[_7 + (2 * ceil32(return_data.size)) + 128])] = mem[_7 + (2 * ceil32(return_data.size)) + 160 len ceil32(mem[_7 + (2 * ceil32(return_data.size)) + 128])]
        if not mem[_7 + (2 * ceil32(return_data.size)) + 128] % 32:
            return 192, 
                   mem[floor32(_125) + _7 + (2 * ceil32(return_data.size)) + 224],
                   0,
                   1,
                   ext_call.return_data[0],
                   0,
                   mem[floor32(_125) + _7 + (2 * ceil32(return_data.size)) + 384 len mem[_7 + (2 * ceil32(return_data.size)) + 128] + floor32(mem[ceil32(return_data.size) + 96]) + 96]
        mem[floor32(mem[_7 + (2 * ceil32(return_data.size)) + 128]) + floor32(mem[ceil32(return_data.size) + 96]) + floor32(_125) + _7 + (2 * ceil32(return_data.size)) + 480] = mem[floor32(mem[_7 + (2 * ceil32(return_data.size)) + 128]) + floor32(mem[ceil32(return_data.size) + 96]) + floor32(_125) + _7 + (2 * ceil32(return_data.size)) + -(mem[_7 + (2 * ceil32(return_data.size)) + 128] % 32) + 512 len mem[_7 + (2 * ceil32(return_data.size)) + 128] % 32]
        return 192, 
               mem[floor32(_125) + _7 + (2 * ceil32(return_data.size)) + 224],
               0,
               1,
               ext_call.return_data[0],
               0,
               mem[floor32(_125) + _7 + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_7 + (2 * ceil32(return_data.size)) + 128]) + floor32(_244) + 128]
    mem[floor32(_7) + ceil32(return_data.size) + 128] = mem[floor32(_7) + ceil32(return_data.size) + -(_7 % 32) + 160 len _7 % 32]
    mem[floor32(_7) + ceil32(return_data.size) + 160] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
    require ext_code.size(arg1)
    staticcall arg1.0x95d89b41 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[floor32(_7) + ceil32(return_data.size) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = floor32(_7) + (2 * ceil32(return_data.size)) + 160
    require return_data.size >= 32
    _122 = mem[floor32(_7) + ceil32(return_data.size) + 160]
    require mem[floor32(_7) + ceil32(return_data.size) + 160] <= 4294967296
    require mem[floor32(_7) + ceil32(return_data.size) + 160] + 32 <= return_data.size
    require mem[mem[floor32(_7) + ceil32(return_data.size) + 160] + floor32(_7) + ceil32(return_data.size) + 160] <= 4294967296 and mem[floor32(_7) + ceil32(return_data.size) + 160] + mem[mem[floor32(_7) + ceil32(return_data.size) + 160] + floor32(_7) + ceil32(return_data.size) + 160] + 32 <= return_data.size
    mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] = mem[mem[floor32(_7) + ceil32(return_data.size) + 160] + floor32(_7) + ceil32(return_data.size) + 160]
    _127 = mem[_122 + floor32(_7) + ceil32(return_data.size) + 160]
    mem[floor32(_7) + (2 * ceil32(return_data.size)) + 192 len ceil32(mem[_122 + floor32(_7) + ceil32(return_data.size) + 160])] = mem[_122 + floor32(_7) + ceil32(return_data.size) + 192 len ceil32(mem[_122 + floor32(_7) + ceil32(return_data.size) + 160])]
    if not _127 % 32:
        mem[64] = _127 + floor32(_7) + (2 * ceil32(return_data.size)) + 192
        mem[_127 + floor32(_7) + (2 * ceil32(return_data.size)) + 196] = arg2
        require ext_code.size(arg1)
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[_127 + floor32(_7) + (2 * ceil32(return_data.size)) + 256] = 0
        mem[_127 + floor32(_7) + (2 * ceil32(return_data.size)) + 288] = 1
        mem[_127 + floor32(_7) + (2 * ceil32(return_data.size)) + 320] = ext_call.return_data[0]
        mem[_127 + floor32(_7) + (2 * ceil32(return_data.size)) + 352] = 0
        mem[_127 + floor32(_7) + (2 * ceil32(return_data.size)) + 192] = 192
        mem[_127 + floor32(_7) + (2 * ceil32(return_data.size)) + 384] = mem[ceil32(return_data.size) + 96]
        mem[_127 + floor32(_7) + (2 * ceil32(return_data.size)) + 416 len ceil32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len ceil32(mem[ceil32(return_data.size) + 96])]
        if not mem[ceil32(return_data.size) + 96] % 32:
            mem[_127 + floor32(_7) + (2 * ceil32(return_data.size)) + 224] = mem[ceil32(return_data.size) + 96] + 224
            mem[mem[ceil32(return_data.size) + 96] + _127 + floor32(_7) + (2 * ceil32(return_data.size)) + 416] = mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160]
            mem[mem[ceil32(return_data.size) + 96] + _127 + floor32(_7) + (2 * ceil32(return_data.size)) + 448 len ceil32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160])] = mem[floor32(_7) + (2 * ceil32(return_data.size)) + 192 len ceil32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160])]
            if not mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] % 32:
                return 192, 
                       mem[_127 + floor32(_7) + (2 * ceil32(return_data.size)) + 224],
                       0,
                       1,
                       ext_call.return_data[0],
                       0,
                       mem[_127 + floor32(_7) + (2 * ceil32(return_data.size)) + 384 len mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] + mem[ceil32(return_data.size) + 96] + 64]
            mem[floor32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160]) + mem[ceil32(return_data.size) + 96] + _127 + floor32(_7) + (2 * ceil32(return_data.size)) + 448] = mem[floor32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160]) + mem[ceil32(return_data.size) + 96] + _127 + floor32(_7) + (2 * ceil32(return_data.size)) + -(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] % 32) + 480 len mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] % 32]
            return 192, 
                   mem[_127 + floor32(_7) + (2 * ceil32(return_data.size)) + 224],
                   0,
                   1,
                   ext_call.return_data[0],
                   0,
                   mem[_127 + floor32(_7) + (2 * ceil32(return_data.size)) + 384 len mem[ceil32(return_data.size) + 96] + 32],
                   mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160],
                   mem[_127 + floor32(_7) + (2 * ceil32(return_data.size)) + mem[ceil32(return_data.size) + 96] + 448 len floor32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160]) + 32]
        mem[floor32(mem[ceil32(return_data.size) + 96]) + _127 + floor32(_7) + (2 * ceil32(return_data.size)) + 416] = mem[floor32(mem[ceil32(return_data.size) + 96]) + _127 + floor32(_7) + (2 * ceil32(return_data.size)) + -(mem[ceil32(return_data.size) + 96] % 32) + 448 len mem[ceil32(return_data.size) + 96] % 32]
        mem[_127 + floor32(_7) + (2 * ceil32(return_data.size)) + 224] = floor32(mem[ceil32(return_data.size) + 96]) + 256
        mem[floor32(mem[ceil32(return_data.size) + 96]) + _127 + floor32(_7) + (2 * ceil32(return_data.size)) + 448] = mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160]
        mem[floor32(mem[ceil32(return_data.size) + 96]) + _127 + floor32(_7) + (2 * ceil32(return_data.size)) + 480 len ceil32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160])] = mem[floor32(_7) + (2 * ceil32(return_data.size)) + 192 len ceil32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160])]
        if not mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] % 32:
            return 192, 
                   mem[_127 + floor32(_7) + (2 * ceil32(return_data.size)) + 224],
                   0,
                   1,
                   ext_call.return_data[0],
                   0,
                   mem[_127 + floor32(_7) + (2 * ceil32(return_data.size)) + 384 len mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] + floor32(mem[ceil32(return_data.size) + 96]) + 96]
        mem[floor32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160]) + floor32(mem[ceil32(return_data.size) + 96]) + _127 + floor32(_7) + (2 * ceil32(return_data.size)) + 480] = mem[floor32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160]) + floor32(mem[ceil32(return_data.size) + 96]) + _127 + floor32(_7) + (2 * ceil32(return_data.size)) + -(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] % 32) + 512 len mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] % 32]
        return 192, 
               mem[_127 + floor32(_7) + (2 * ceil32(return_data.size)) + 224],
               0,
               1,
               ext_call.return_data[0],
               0,
               mem[_127 + floor32(_7) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[ceil32(return_data.size) + 96]) + 64],
               mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160],
               mem[_127 + floor32(_7) + (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + 96]) + 480 len floor32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160]) + 32]
    mem[floor32(_127) + floor32(_7) + (2 * ceil32(return_data.size)) + 192] = mem[floor32(_127) + floor32(_7) + (2 * ceil32(return_data.size)) + -(_127 % 32) + 224 len _127 % 32]
    mem[64] = floor32(_127) + floor32(_7) + (2 * ceil32(return_data.size)) + 224
    mem[floor32(_127) + floor32(_7) + (2 * ceil32(return_data.size)) + 228] = arg2
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[floor32(_127) + floor32(_7) + (2 * ceil32(return_data.size)) + 288] = 0
    mem[floor32(_127) + floor32(_7) + (2 * ceil32(return_data.size)) + 320] = 1
    mem[floor32(_127) + floor32(_7) + (2 * ceil32(return_data.size)) + 352] = ext_call.return_data[0]
    mem[floor32(_127) + floor32(_7) + (2 * ceil32(return_data.size)) + 384] = 0
    mem[floor32(_127) + floor32(_7) + (2 * ceil32(return_data.size)) + 224] = 192
    mem[floor32(_127) + floor32(_7) + (2 * ceil32(return_data.size)) + 416] = mem[ceil32(return_data.size) + 96]
    mem[floor32(_127) + floor32(_7) + (2 * ceil32(return_data.size)) + 448 len ceil32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len ceil32(mem[ceil32(return_data.size) + 96])]
    if not mem[ceil32(return_data.size) + 96] % 32:
        mem[floor32(_127) + floor32(_7) + (2 * ceil32(return_data.size)) + 256] = mem[ceil32(return_data.size) + 96] + 224
        mem[mem[ceil32(return_data.size) + 96] + floor32(_127) + floor32(_7) + (2 * ceil32(return_data.size)) + 448] = mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160]
        mem[mem[ceil32(return_data.size) + 96] + floor32(_127) + floor32(_7) + (2 * ceil32(return_data.size)) + 480 len ceil32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160])] = mem[floor32(_7) + (2 * ceil32(return_data.size)) + 192 len ceil32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160])]
        if not mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] % 32:
            return 192, 
                   mem[floor32(_127) + floor32(_7) + (2 * ceil32(return_data.size)) + 256],
                   0,
                   1,
                   ext_call.return_data[0],
                   0,
                   mem[floor32(_127) + floor32(_7) + (2 * ceil32(return_data.size)) + 416 len mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] + mem[ceil32(return_data.size) + 96] + 64]
        mem[floor32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160]) + mem[ceil32(return_data.size) + 96] + floor32(_127) + floor32(_7) + (2 * ceil32(return_data.size)) + 480] = mem[floor32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160]) + mem[ceil32(return_data.size) + 96] + floor32(_127) + floor32(_7) + (2 * ceil32(return_data.size)) + -(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] % 32) + 512 len mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] % 32]
        return 192, 
               mem[floor32(_127) + floor32(_7) + (2 * ceil32(return_data.size)) + 256],
               0,
               1,
               ext_call.return_data[0],
               0,
               mem[floor32(_127) + floor32(_7) + (2 * ceil32(return_data.size)) + 416 len mem[ceil32(return_data.size) + 96] + 32],
               mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160],
               mem[floor32(_127) + floor32(_7) + (2 * ceil32(return_data.size)) + mem[ceil32(return_data.size) + 96] + 480 len floor32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160]) + 32]
    mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_127) + floor32(_7) + (2 * ceil32(return_data.size)) + 448] = mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_127) + floor32(_7) + (2 * ceil32(return_data.size)) + -(mem[ceil32(return_data.size) + 96] % 32) + 480 len mem[ceil32(return_data.size) + 96] % 32]
    mem[floor32(_127) + floor32(_7) + (2 * ceil32(return_data.size)) + 256] = floor32(mem[ceil32(return_data.size) + 96]) + 256
    mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_127) + floor32(_7) + (2 * ceil32(return_data.size)) + 480] = mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160]
    mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_127) + floor32(_7) + (2 * ceil32(return_data.size)) + 512 len ceil32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160])] = mem[floor32(_7) + (2 * ceil32(return_data.size)) + 192 len ceil32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160])]
    if not mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] % 32:
        return 192, 
               mem[floor32(_127) + floor32(_7) + (2 * ceil32(return_data.size)) + 256],
               0,
               1,
               ext_call.return_data[0],
               0,
               mem[floor32(_127) + floor32(_7) + (2 * ceil32(return_data.size)) + 416 len mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] + floor32(mem[ceil32(return_data.size) + 96]) + 96]
    mem[floor32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160]) + floor32(mem[ceil32(return_data.size) + 96]) + floor32(_127) + floor32(_7) + (2 * ceil32(return_data.size)) + 512] = mem[floor32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160]) + floor32(mem[ceil32(return_data.size) + 96]) + floor32(_127) + floor32(_7) + (2 * ceil32(return_data.size)) + -(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] % 32) + 544 len mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] % 32]
    return 192, 
           mem[floor32(_127) + floor32(_7) + (2 * ceil32(return_data.size)) + 256],
           0,
           1,
           ext_call.return_data[0],
           0,
           mem[floor32(_127) + floor32(_7) + (2 * ceil32(return_data.size)) + 416 len floor32(mem[ceil32(return_data.size) + 96]) + 64],
           mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160],
           mem[floor32(_127) + floor32(_7) + (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + 96]) + 512 len floor32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160]) + 32]
}



}
