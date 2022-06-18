contract main {




// =====================  Runtime code  =====================


address contractOwner;
address sub_52301291Address;
uint256 sub_a350fe07;

function sub_52301291(?) {
    return sub_52301291Address
}

function sub_a350fe07(?) {
    return sub_a350fe07
}

function contractOwner() {
    return contractOwner
}

function sub_cbdf2393(?) {
    require calldata.size - 4 >= 32
    sub_a350fe07 = arg1
}

function setContractOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    contractOwner = arg1
}

function sub_3f4cf806(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require msg.sender == contractOwner
    mem[96] = 2
    mem[128] = address(arg1)
    mem[160] = address(arg2)
    mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[196] = msg.value
    mem[228] = 64
    mem[260] = 2
    idx = 0
    s = 128
    t = 292
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(sub_52301291Address)
    staticcall sub_52301291Address.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args msg.value, Array(len=2, data=mem[292 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    _33 = mem[192 len 4], Mask(224, 32, msg.value) >> 32
    require mem[192 len 4], Mask(224, 32, msg.value) >> 32 <= test266151307()
    require mem[192 len 4], Mask(224, 32, msg.value) >> 32 + 223 < return_data.size + 192
    _34 = mem[mem[192 len 4], Mask(224, 32, msg.value) >> 32 + 192]
    if mem[mem[192 len 4], Mask(224, 32, msg.value) >> 32 + 192] > test266151307():
        revert with 0, 65
    if ceil32(return_data.size) + ceil32(32 * mem[mem[192 len 4], Mask(224, 32, msg.value) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[mem[192 len 4], Mask(224, 32, msg.value) >> 32 + 192]) + 1 < 0:
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[192 len 4], Mask(224, 32, msg.value) >> 32 + 192]) + 193
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, msg.value) >> 32 + 192]
    require return_data.size >= _33 + (32 * _34) + 32
    mem[ceil32(return_data.size) + 224 len 32 * _34] = mem[_33 + 224 len 32 * _34]
    mem[mem[64]] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = 0
    mem[mem[64] + 36] = 128
    mem[mem[64] + 132] = 2
    idx = 0
    s = 128
    t = mem[64] + 164
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 68] = address(arg3)
    mem[mem[64] + 100] = arg4
    require ext_code.size(sub_52301291Address)
    call sub_52301291Address.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
       value msg.value wei
         gas gas_remaining wei
        args 0, 128, address(arg3), arg4, 2, mem[mem[64] + 164 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _74 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _75 = mem[_74]
    require mem[_74] <= test266151307()
    require _74 + mem[_74] + 31 < _74 + return_data.size
    _76 = mem[_74 + mem[_74]]
    if mem[_74 + mem[_74]] > test266151307():
        revert with 0, 65
    if _74 + ceil32(return_data.size) + ceil32(32 * mem[_74 + mem[_74]]) + 1 > test266151307() or ceil32(32 * mem[_74 + mem[_74]]) + 1 < 0:
        revert with 0, 65
    mem[64] = _74 + ceil32(return_data.size) + ceil32(32 * mem[_74 + mem[_74]]) + 1
    mem[_74 + ceil32(return_data.size)] = _76
    require return_data.size >= _75 + (32 * _76) + 32
    mem[_74 + ceil32(return_data.size) + 32 len 32 * _76] = mem[_74 + _75 + 32 len 32 * _76]
    mem[mem[64] + 4] = address(arg3)
    require ext_code.size(address(arg2))
    staticcall address(arg2).0x70a08231 with:
            gas gas_remaining wei
           args address(arg3)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _90 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    if 1 >= mem[ceil32(return_data.size) + 192]:
        revert with 0, 50
    if mem[ceil32(return_data.size) + 256] < mem[_90]:
        revert with 0, 17
    if 1 >= mem[ceil32(return_data.size) + 192]:
        revert with 0, 50
    if not mem[ceil32(return_data.size) + 256]:
        revert with 0, 18
    if mem[ceil32(return_data.size) + 256] - mem[_90] / mem[ceil32(return_data.size) + 256] > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
        revert with 0, 17
    require 100 * mem[ceil32(return_data.size) + 256] - mem[_90] / mem[ceil32(return_data.size) + 256] < sub_a350fe07
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
    else:
        if uint32(call.func_hash) >> 224 != unknown_0x3f4cf806(?????):
            if unknown_0x52301291(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return sub_52301291Address
            if unknown_0xa34d42b8(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 32
                require arg1 == address(arg1)
                contractOwner = address(arg1)
            else:
                if unknown_0xa350fe07(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return sub_a350fe07
                if uint32(call.func_hash) >> 224 != unknown_0xcbdf2393(?????):
                    require unknown_0xce606ee0(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    return contractOwner
                require not msg.value
                require calldata.size - 4 >= 32
                sub_a350fe07 = arg1
        else:
            require calldata.size - 4 >= 128
            require arg1 == address(arg1)
            require arg2 == address(arg2)
            require arg3 == address(arg3)
            require msg.sender == contractOwner
            mem[128] = 2
            mem[160] = address(arg1)
            mem[192] = address(arg2)
            mem[224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[228] = msg.value
            mem[260] = 64
            mem[292] = 2
            idx = 0
            s = 160
            t = 324
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(sub_52301291Address)
            staticcall sub_52301291Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args msg.value, Array(len=2, data=mem[324 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 224
            require return_data.size >= 32
            _39 = mem[224 len 4], Mask(224, 32, msg.value) >> 32
            require mem[224 len 4], Mask(224, 32, msg.value) >> 32 <= test266151307()
            require mem[224 len 4], Mask(224, 32, msg.value) >> 32 + 255 < return_data.size + 224
            _40 = mem[mem[224 len 4], Mask(224, 32, msg.value) >> 32 + 224]
            if mem[mem[224 len 4], Mask(224, 32, msg.value) >> 32 + 224] > test266151307():
                revert with 0, 65
            if ceil32(return_data.size) + ceil32(32 * mem[mem[224 len 4], Mask(224, 32, msg.value) >> 32 + 224]) + 225 > test266151307() or ceil32(32 * mem[mem[224 len 4], Mask(224, 32, msg.value) >> 32 + 224]) + 1 < 0:
                revert with 0, 65
            mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[224 len 4], Mask(224, 32, msg.value) >> 32 + 224]) + 225
            mem[ceil32(return_data.size) + 224] = mem[mem[224 len 4], Mask(224, 32, msg.value) >> 32 + 224]
            require return_data.size >= _39 + (32 * _40) + 32
            mem[ceil32(return_data.size) + 256 len 32 * _40] = mem[_39 + 256 len 32 * _40]
            mem[mem[64]] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 0
            mem[mem[64] + 36] = 128
            mem[mem[64] + 132] = 2
            idx = 0
            s = 160
            t = mem[64] + 164
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 68] = address(arg3)
            mem[mem[64] + 100] = arg4
            require ext_code.size(sub_52301291Address)
            call sub_52301291Address.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
               value msg.value wei
                 gas gas_remaining wei
                args 0, 128, address(arg3), arg4, 2, mem[mem[64] + 164 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _80 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _81 = mem[_80]
            require mem[_80] <= test266151307()
            require _80 + mem[_80] + 31 < _80 + return_data.size
            _82 = mem[_80 + mem[_80]]
            if mem[_80 + mem[_80]] > test266151307():
                revert with 0, 65
            if _80 + ceil32(return_data.size) + ceil32(32 * mem[_80 + mem[_80]]) + 1 > test266151307() or ceil32(32 * mem[_80 + mem[_80]]) + 1 < 0:
                revert with 0, 65
            mem[64] = _80 + ceil32(return_data.size) + ceil32(32 * mem[_80 + mem[_80]]) + 1
            mem[_80 + ceil32(return_data.size)] = _82
            require return_data.size >= _81 + (32 * _82) + 32
            mem[_80 + ceil32(return_data.size) + 32 len 32 * _82] = mem[_80 + _81 + 32 len 32 * _82]
            mem[mem[64] + 4] = address(arg3)
            require ext_code.size(address(arg2))
            staticcall address(arg2).0x70a08231 with:
                    gas gas_remaining wei
                   args address(arg3)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _96 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if 1 >= mem[ceil32(return_data.size) + 224]:
                revert with 0, 50
            if mem[ceil32(return_data.size) + 288] < mem[_96]:
                revert with 0, 17
            if 1 >= mem[ceil32(return_data.size) + 224]:
                revert with 0, 50
            if not mem[ceil32(return_data.size) + 288]:
                revert with 0, 18
            if mem[ceil32(return_data.size) + 288] - mem[_96] / mem[ceil32(return_data.size) + 288] > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                revert with 0, 17
            require 100 * mem[ceil32(return_data.size) + 288] - mem[_96] / mem[ceil32(return_data.size) + 288] < sub_a350fe07
}



}
