contract main {




// =====================  Runtime code  =====================


mapping of uint8 stor0;
address stor1;
address ROUTERAddress;
address stor3;

function ROUTER() {
    return ROUTERAddress
}

function sub_3955a2bc(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor0[arg1])
}

function addOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require stor0[msg.sender]
    stor0[address(arg1)] = 1
}

function setRouter(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require stor0[msg.sender]
    ROUTERAddress = arg1
    stor3 = arg1
}

function withdraw(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require stor0[msg.sender]
    call arg1 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdrawPartial(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require stor0[msg.sender]
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_d2885592(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require stor0[msg.sender]
    call address(arg2).0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function withdrawToken(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require stor0[msg.sender]
    staticcall arg2.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    call arg2.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_12fe4f0a(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = cd[4] + 36
    s = 128
    while idx < cd[4] + (32 * ('cd', 4).length) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    require cd[36] == uint8(cd[36])
    if 0 >= ('cd', 4).length:
        revert with 0, 50
    _58 = mem[128]
    mem[ceil32(32 * ('cd', 4).length) + 101] = ROUTERAddress
    mem[ceil32(32 * ('cd', 4).length) + 133] = msg.value
    call address(_58).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args ROUTERAddress, msg.value
    mem[ceil32(32 * ('cd', 4).length) + 97] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if 100 < uint8(cd[36]):
        revert with 0, 17
    if msg.value and uint8(-uint8(cd[36]) + 100) > -1 / msg.value:
        revert with 0, 17
    mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 97] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 101] = msg.value * uint8(-uint8(cd[36]) + 100) / 100
    mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 133] = 64
    mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 165] = ('cd', 4).length
    idx = 0
    s = 128
    t = ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 197
    while idx < ('cd', 4).length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    staticcall stor3.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args msg.value * uint8(-uint8(cd[36]) + 100) / 100, Array(len=('cd', 4).length, data=mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 197 len 32 * ('cd', 4).length])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 97 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(32 * ('cd', 4).length) + (2 * ceil32(return_data.size)) + 97
    require return_data.size >= 32
    _115 = mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 97 len 4], Mask(224, 32, msg.value * uint8(-uint8(cd[36]) + 100) / 100) >> 32
    require mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 97 len 4], Mask(224, 32, msg.value * uint8(-uint8(cd[36]) + 100) / 100) >> 32 <= test266151307()
    require ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + return_data.size + 97 > ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 97 len 4], Mask(224, 32, msg.value * uint8(-uint8(cd[36]) + 100) / 100) >> 32 + 128
    _116 = mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 97 len 4], Mask(224, 32, msg.value * uint8(-uint8(cd[36]) + 100) / 100) >> 32 + 97]
    if mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 97 len 4], Mask(224, 32, msg.value * uint8(-uint8(cd[36]) + 100) / 100) >> 32 + 97] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 97 len 4], Mask(224, 32, msg.value * uint8(-uint8(cd[36]) + 100) / 100) >> 32 + 97]) + 1 < 0 or ceil32(32 * ('cd', 4).length) + (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 97 len 4], Mask(224, 32, msg.value * uint8(-uint8(cd[36]) + 100) / 100) >> 32 + 97]) + 98 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * ('cd', 4).length) + (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 97 len 4], Mask(224, 32, msg.value * uint8(-uint8(cd[36]) + 100) / 100) >> 32 + 97]) + 98
    mem[ceil32(32 * ('cd', 4).length) + (2 * ceil32(return_data.size)) + 97] = _116
    require _115 + (32 * _116) + 32 <= return_data.size
    mem[ceil32(32 * ('cd', 4).length) + (2 * ceil32(return_data.size)) + 129 len ceil32(32 * _116)] = mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + _115 + 129 len ceil32(32 * _116)]
    if ('cd', 4).length < 1:
        revert with 0, 17
    if ('cd', 4).length - 1 >= _116:
        revert with 0, 50
    _162 = mem[(32 * ('cd', 4).length - 1) + ceil32(32 * ('cd', 4).length) + (2 * ceil32(return_data.size)) + 129]
    mem[mem[64]] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = _162
    mem[mem[64] + 36] = 128
    mem[mem[64] + 132] = ('cd', 4).length
    idx = 0
    s = 128
    t = mem[64] + 164
    while idx < ('cd', 4).length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 68] = stor1
    mem[mem[64] + 100] = block.timestamp
    require ext_code.size(stor3)
    call stor3.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
       value msg.value wei
         gas gas_remaining wei
        args _162, Array(len=('cd', 4).length, data=mem[mem[64] + 164 len 32 * ('cd', 4).length]), stor1, block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if ('cd', 4).length < 1:
        revert with 0, 17
    if ('cd', 4).length - 1 >= ('cd', 4).length:
        revert with 0, 50
    mem[mem[64] + 4] = stor1
    staticcall mem[(32 * ('cd', 4).length - 1) + 140 len 20].0x70a08231 with:
            gas gas_remaining wei
           args stor1
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _207 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _208 = mem[_207]
    if ('cd', 4).length < 1:
        revert with 0, 17
    if ('cd', 4).length - 1 >= ('cd', 4).length:
        revert with 0, 50
    mem[mem[64] + 4] = ROUTERAddress
    staticcall mem[(32 * ('cd', 4).length - 1) + 140 len 20].0x70a08231 with:
            gas gas_remaining wei
           args ROUTERAddress
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _214 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _215 = mem[_214]
    if 0 >= ('cd', 4).length:
        revert with 0, 50
    _217 = mem[128]
    mem[mem[64] + 4] = ROUTERAddress
    mem[mem[64] + 36] = _208
    call address(_217).0xa9059cbb with:
         gas gas_remaining wei
        args ROUTERAddress, _208
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _220 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_220] == bool(mem[_220])
    if ('cd', 4).length < 1:
        revert with 0, 17
    if ('cd', 4).length - 1 >= ('cd', 4).length:
        revert with 0, 50
    mem[mem[64] + 4] = ROUTERAddress
    staticcall mem[(32 * ('cd', 4).length - 1) + 140 len 20].0x70a08231 with:
            gas gas_remaining wei
           args ROUTERAddress
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _227 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _228 = mem[_227]
    if mem[_227] < _215:
        revert with 0, 17
    if mem[_227] - _215 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
        revert with 0, 17
    if not _208:
        revert with 0, 18
    if 1000 < (1000 * mem[_227]) - (1000 * _215) / _208:
        revert with 0, 17
    if not -((1000 * mem[_227]) - (1000 * _215) / _208) + 1000:
        revert with 0, '0', 0
    s = 0
    idx = -((1000 * mem[_227]) - (1000 * _215) / _208) + 1000
    while idx:
        if s == -1:
            revert with 0, 17
        s = s + 1
        idx = idx / 10
        continue 
    if s > test266151307():
        revert with 0, 65
    _236 = mem[64]
    mem[mem[64]] = s
    mem[64] = mem[64] + ceil32(s) + 32
    if not s:
        t = s
        idx = -((1000 * _228) - (1000 * _215) / _208) + 1000
        while idx:
            if t < 1:
                revert with 0, 17
            if idx / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                revert with 0, 17
            if idx < 10 * idx / 10:
                revert with 0, 17
            if 48 > -uint8(idx - (10 * idx / 10)) + 255:
                revert with 0, 17
            if t - 1 >= mem[_236]:
                revert with 0, 50
            mem[t + _236 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        _253 = mem[_236]
        mem[mem[64] + 36] = mem[_236]
        mem[mem[64] + 68 len ceil32(_253)] = mem[_236 + 32 len ceil32(_253)]
        if ceil32(_253) > _253:
            mem[mem[64] + _253 + 68] = 0
        revert with 0, 32, mem[mem[64] + 36 len ceil32(_253) + 32]
    mem[_236 + 32 len s] = call.data[calldata.size len s]
    t = s
    idx = -((1000 * _228) - (1000 * _215) / _208) + 1000
    while idx:
        if t < 1:
            revert with 0, 17
        if idx / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
            revert with 0, 17
        if idx < 10 * idx / 10:
            revert with 0, 17
        if 48 > -uint8(idx - (10 * idx / 10)) + 255:
            revert with 0, 17
        if t - 1 >= mem[_236]:
            revert with 0, 50
        mem[t + _236 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = 32
    _254 = mem[_236]
    mem[mem[64] + 36] = mem[_236]
    mem[mem[64] + 68 len ceil32(_254)] = mem[_236 + 32 len ceil32(_254)]
    if ceil32(_254) > _254:
        mem[mem[64] + _254 + 68] = 0
    revert with 0, 32, mem[mem[64] + 36 len ceil32(_254) + 32]
}

function sub_d318cfd0(?) payable {
    require calldata.size - 4 >= 128
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = cd[4] + 36
    s = 128
    while idx < cd[4] + (32 * ('cd', 4).length) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 36).length) + 98 < 97 or ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98 > test266151307():
        revert with 0, 65
    mem[ceil32(32 * ('cd', 4).length) + 97] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = cd[36] + 36
    s = ceil32(32 * ('cd', 4).length) + 129
    while idx < cd[36] + (32 * ('cd', 36).length) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    require cd[68] == uint8(cd[68])
    require cd[100] == uint8(cd[100])
    if 0 >= ('cd', 4).length:
        revert with 0, 50
    _109 = mem[128]
    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 102] = ROUTERAddress
    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 134] = msg.value
    call address(_109).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args ROUTERAddress, msg.value
    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if 100 < uint8(cd[68]):
        revert with 0, 17
    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 98] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 102] = msg.value
    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 134] = 64
    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 166] = ('cd', 4).length
    idx = 0
    s = 128
    t = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 198
    while idx < ('cd', 4).length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    staticcall stor3.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args msg.value, Array(len=('cd', 4).length, data=mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 198 len 32 * ('cd', 4).length])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 98 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + 98
    require return_data.size >= 32
    _163 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 98 len 4], Mask(224, 32, msg.value) >> 32
    require mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 98 len 4], Mask(224, 32, msg.value) >> 32 <= test266151307()
    require ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + return_data.size + 98 > ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 98 len 4], Mask(224, 32, msg.value) >> 32 + 129
    _164 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 98 len 4], Mask(224, 32, msg.value) >> 32 + 98]
    if mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 98 len 4], Mask(224, 32, msg.value) >> 32 + 98] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 98 len 4], Mask(224, 32, msg.value) >> 32 + 98]) + 1 < 0 or ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 98 len 4], Mask(224, 32, msg.value) >> 32 + 98]) + 99 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 98 len 4], Mask(224, 32, msg.value) >> 32 + 98]) + 99
    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + 98] = _164
    require _163 + (32 * _164) + 32 <= return_data.size
    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + 130 len ceil32(32 * _164)] = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + _163 + 130 len ceil32(32 * _164)]
    if ('cd', 4).length < 1:
        revert with 0, 17
    if ('cd', 4).length - 1 >= _164:
        revert with 0, 50
    _207 = mem[(32 * ('cd', 4).length - 1) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + 130]
    if mem[(32 * ('cd', 4).length - 1) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + 130] and uint8(-uint8(cd[68]) + 100) > -1 / mem[(32 * ('cd', 4).length - 1) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + 130]:
        revert with 0, 17
    mem[mem[64]] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = _207 * uint8(-uint8(cd[68]) + 100) / 100
    mem[mem[64] + 36] = 128
    mem[mem[64] + 132] = ('cd', 4).length
    idx = 0
    s = 128
    t = mem[64] + 164
    while idx < ('cd', 4).length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 68] = stor1
    mem[mem[64] + 100] = block.timestamp
    require ext_code.size(stor3)
    call stor3.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
       value msg.value wei
         gas gas_remaining wei
        args _207 * uint8(-uint8(cd[68]) + 100) / 100, Array(len=('cd', 4).length, data=mem[mem[64] + 164 len 32 * ('cd', 4).length]), stor1, block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if 0 >= mem[ceil32(32 * ('cd', 4).length) + 97]:
        revert with 0, 50
    _245 = mem[ceil32(32 * ('cd', 4).length) + 129]
    mem[mem[64] + 4] = stor1
    staticcall address(_245).0x70a08231 with:
            gas gas_remaining wei
           args stor1
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _248 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _249 = mem[_248]
    if not mem[_248]:
        revert with 0, 'Broke'
    if 0 >= mem[ceil32(32 * ('cd', 4).length) + 97]:
        revert with 0, 50
    _252 = mem[ceil32(32 * ('cd', 4).length) + 129]
    mem[mem[64] + 4] = ROUTERAddress
    mem[mem[64] + 36] = _249
    call address(_252).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args ROUTERAddress, _249
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _256 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_256] == bool(mem[_256])
    if 100 < uint8(cd[100]):
        revert with 0, 17
    mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = _249
    mem[mem[64] + 36] = 64
    _259 = mem[ceil32(32 * ('cd', 4).length) + 97]
    mem[mem[64] + 68] = mem[ceil32(32 * ('cd', 4).length) + 97]
    idx = 0
    s = ceil32(32 * ('cd', 4).length) + 129
    t = mem[64] + 100
    while idx < _259:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    staticcall stor3.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args _249, 64, mem[mem[64] + 68 len (32 * _259) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _276 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _277 = mem[_276]
    require mem[_276] <= test266151307()
    require _276 + return_data.size > _276 + mem[_276] + 31
    _278 = mem[_276 + mem[_276]]
    if mem[_276 + mem[_276]] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[_276 + mem[_276]]) + 1 < 0 or _276 + ceil32(return_data.size) + ceil32(32 * mem[_276 + mem[_276]]) + 1 > test266151307():
        revert with 0, 65
    mem[64] = _276 + ceil32(return_data.size) + ceil32(32 * mem[_276 + mem[_276]]) + 1
    mem[_276 + ceil32(return_data.size)] = _278
    require _277 + (32 * _278) + 32 <= return_data.size
    mem[_276 + ceil32(return_data.size) + 32 len ceil32(32 * _278)] = mem[_276 + _277 + 32 len ceil32(32 * _278)]
    if mem[ceil32(32 * ('cd', 4).length) + 97] < 1:
        revert with 0, 17
    if mem[ceil32(32 * ('cd', 4).length) + 97] - 1 >= _278:
        revert with 0, 50
    _291 = mem[(32 * mem[ceil32(32 * ('cd', 4).length) + 97] - 1) + _276 + ceil32(return_data.size) + 32]
    if mem[(32 * mem[ceil32(32 * ('cd', 4).length) + 97] - 1) + _276 + ceil32(return_data.size) + 32] and uint8(-uint8(cd[100]) + 100) > -1 / mem[(32 * mem[ceil32(32 * ('cd', 4).length) + 97] - 1) + _276 + ceil32(return_data.size) + 32]:
        revert with 0, 17
    mem[mem[64]] = 0x791ac94700000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = _249
    mem[mem[64] + 36] = _291 * uint8(-uint8(cd[100]) + 100) / 100
    mem[mem[64] + 68] = 160
    _293 = mem[ceil32(32 * ('cd', 4).length) + 97]
    mem[mem[64] + 164] = mem[ceil32(32 * ('cd', 4).length) + 97]
    idx = 0
    s = ceil32(32 * ('cd', 4).length) + 129
    t = mem[64] + 196
    while idx < _293:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(stor3)
    call stor3.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args _249, _291 * uint8(-uint8(cd[100]) + 100) / 100, 160, msg.sender, block.timestamp, mem[mem[64] + 164 len (32 * _293) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_4762e988(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = cd[4] + 36
    s = 128
    while idx < cd[4] + (32 * ('cd', 4).length) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    if 0 >= ('cd', 4).length:
        revert with 0, 50
    _42 = mem[128]
    mem[ceil32(32 * ('cd', 4).length) + 101] = ROUTERAddress
    mem[ceil32(32 * ('cd', 4).length) + 133] = msg.value
    call address(_42).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args ROUTERAddress, msg.value
    mem[ceil32(32 * ('cd', 4).length) + 97] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 97
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    idx = 0
    while uint8(idx) < 100:
        if 100 < uint8(idx):
            revert with 0, 17
        if msg.value and uint8(-uint8(idx) + 100) > -1 / msg.value:
            revert with 0, 17
        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = msg.value * uint8(-uint8(idx) + 100) / 100
        mem[mem[64] + 36] = 64
        mem[mem[64] + 68] = mem[96]
        s = 0
        t = 128
        u = mem[64] + 100
        while s < mem[96]:
            mem[u] = mem[t + 12 len 20]
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        staticcall stor3.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args msg.value * uint8(-uint8(idx) + 100) / 100, 64, mem[mem[64] + 68 len (32 * mem[96]) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _117 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _118 = mem[_117]
        require mem[_117] <= test266151307()
        require _117 + return_data.size > _117 + mem[_117] + 31
        _119 = mem[_117 + mem[_117]]
        if mem[_117 + mem[_117]] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[_117 + mem[_117]]) + 1 < 0 or _117 + ceil32(return_data.size) + ceil32(32 * mem[_117 + mem[_117]]) + 1 > test266151307():
            revert with 0, 65
        mem[64] = _117 + ceil32(return_data.size) + ceil32(32 * mem[_117 + mem[_117]]) + 1
        mem[_117 + ceil32(return_data.size)] = _119
        require _118 + (32 * _119) + 32 <= return_data.size
        t = _117 + ceil32(return_data.size) + 32
        s = _117 + _118 + 32
        while s < _117 + _118 + (32 * _119) + 32:
            mem[t] = mem[s]
            t = t + 32
            s = s + 32
            continue 
        if mem[96] < 1:
            revert with 0, 17
        if mem[96] - 1 >= _119:
            revert with 0, 50
        _149 = mem[(32 * mem[96] - 1) + _117 + ceil32(return_data.size) + 32]
        mem[mem[64]] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _149
        mem[mem[64] + 36] = 128
        mem[mem[64] + 132] = mem[96]
        s = 0
        t = 128
        u = mem[64] + 164
        while s < mem[96]:
            mem[u] = mem[t + 12 len 20]
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        mem[mem[64] + 68] = stor1
        mem[mem[64] + 100] = block.timestamp
        require ext_code.size(stor3)
        call stor3.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
           value msg.value wei
             gas gas_remaining wei
            args _149, 128, stor1, block.timestamp, mem[mem[64] + 132 len (32 * mem[96]) + 32]
        if ext_call.success:
            if not uint8(idx):
                _174 = mem[64]
                mem[64] = mem[64] + 64
                mem[_174] = 1
                mem[_174 + 32] = '0'
                _175 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 1
                idx = 0
                while idx < 1:
                    mem[idx + _175 + 68] = mem[idx + _174 + 32]
                    idx = idx + 32
                    continue 
                mem[_175 + 69] = 0
                revert with memory
                  from mem[64]
                   len _175 + -mem[64] + 100
            t = 0
            s = uint8(t)
            while s:
                if t == -1:
                    revert with 0, 17
                t = t + 1
                s = s / 10
                continue 
            if t > test266151307():
                revert with 0, 65
            _191 = mem[64]
            mem[mem[64]] = t
            mem[64] = mem[64] + ceil32(t) + 32
            if not t:
                s = t
                idx = uint8(t)
                while idx:
                    if s < 1:
                        revert with 0, 17
                    if idx / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                        revert with 0, 17
                    if idx < 10 * idx / 10:
                        revert with 0, 17
                    if 48 > -uint8(idx - (10 * idx / 10)) + 255:
                        revert with 0, 17
                    if s - 1 >= mem[_191]:
                        revert with 0, 50
                    mem[s + _191 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
                    s = s - 1
                    idx = idx / 10
                    continue 
                _206 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _208 = mem[_191]
                mem[mem[64] + 36] = mem[_191]
                idx = 0
                while idx < _208:
                    mem[idx + _206 + 68] = mem[idx + _191 + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_208) > _208:
                    mem[_206 + _208 + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(_208) + _206 + -mem[64] + 68
            mem[_191 + 32 len t] = call.data[calldata.size len t]
            s = t
            idx = uint8(t)
            while idx:
                if s < 1:
                    revert with 0, 17
                if idx / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                    revert with 0, 17
                if idx < 10 * idx / 10:
                    revert with 0, 17
                if 48 > -uint8(idx - (10 * idx / 10)) + 255:
                    revert with 0, 17
                if s - 1 >= mem[_191]:
                    revert with 0, 50
                mem[s + _191 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
                s = s - 1
                idx = idx / 10
                continue 
            _207 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _209 = mem[_191]
            mem[mem[64] + 36] = mem[_191]
            idx = 0
            while idx < _209:
                mem[idx + _207 + 68] = mem[idx + _191 + 32]
                idx = idx + 32
                continue 
            if ceil32(_209) > _209:
                mem[_207 + _209 + 68] = 0
            revert with memory
              from mem[64]
               len ceil32(_209) + _207 + -mem[64] + 68
        if return_data.size <= 3:
            if return_data.size:
                _177 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_177] = return_data.size
                mem[_177 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        else:
            mem[0 len 4] = ext_call.return_data[0 len 4]
            if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
                if return_data.size:
                    _178 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_178] = return_data.size
                    mem[_178 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            else:
                if return_data.size < 68:
                    if return_data.size:
                        _185 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_185] = return_data.size
                        mem[_185 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                else:
                    _179 = mem[64]
                    mem[mem[64] len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
                    if 0, Mask(224, 32, _149) >> 32 > test266151307() or 0, Mask(224, 32, _149) >> 32 + 36 > return_data.size:
                        if return_data.size:
                            _186 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_186] = return_data.size
                            mem[_186 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    else:
                        if mem[mem[64] + 0, Mask(224, 32, _149) >> 32] > test266151307():
                            if return_data.size:
                                _187 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_187] = return_data.size
                                mem[_187 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        else:
                            if 0, Mask(224, 32, _149) >> 32 + mem[mem[64] + 0, Mask(224, 32, _149) >> 32] + 32 > return_data.size - 4:
                                if return_data.size:
                                    _188 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_188] = return_data.size
                                    mem[_188 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            else:
                                if mem[64] + floor32(0, Mask(224, 32, _149) >> 32 + mem[mem[64] + 0, Mask(224, 32, _149) >> 32] + 31) + 1 < mem[64] or mem[64] + floor32(0, Mask(224, 32, _149) >> 32 + mem[mem[64] + 0, Mask(224, 32, _149) >> 32] + 31) + 1 > test266151307():
                                    revert with 0, 65
                                mem[64] = mem[64] + floor32(0, Mask(224, 32, _149) >> 32 + mem[mem[64] + 0, Mask(224, 32, _149) >> 32] + 31) + 1
                                if not _179 + 0, Mask(224, 32, _149) >> 32:
                                    if return_data.size:
                                        _189 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_189] = return_data.size
                                        mem[_189 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if uint8(idx) == 255:
            revert with 0, 17
        idx = uint8(idx) + 1
        continue 
    revert with 0, '100'
}

function sub_2eef3878(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = cd[4] + 36
    s = 128
    while idx < cd[4] + (32 * ('cd', 4).length) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 36).length) + 98 < 97 or ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98 > test266151307():
        revert with 0, 65
    mem[ceil32(32 * ('cd', 4).length) + 97] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = cd[36] + 36
    s = ceil32(32 * ('cd', 4).length) + 129
    while idx < cd[36] + (32 * ('cd', 36).length) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    require cd[68] == uint8(cd[68])
    if 0 >= ('cd', 4).length:
        revert with 0, 50
    _139 = mem[128]
    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 102] = ROUTERAddress
    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 134] = msg.value
    call address(_139).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args ROUTERAddress, msg.value
    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if 100 < uint8(cd[68]):
        revert with 0, 17
    if msg.value and uint8(-uint8(cd[68]) + 100) > -1 / msg.value:
        revert with 0, 17
    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 98] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 102] = msg.value * uint8(-uint8(cd[68]) + 100) / 100
    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 134] = 64
    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 166] = ('cd', 4).length
    idx = 0
    s = 128
    t = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 198
    while idx < ('cd', 4).length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    staticcall stor3.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args msg.value * uint8(-uint8(cd[68]) + 100) / 100, Array(len=('cd', 4).length, data=mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 198 len 32 * ('cd', 4).length])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 98 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + 98
    require return_data.size >= 32
    _208 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 98 len 4], Mask(224, 32, msg.value * uint8(-uint8(cd[68]) + 100) / 100) >> 32
    require mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 98 len 4], Mask(224, 32, msg.value * uint8(-uint8(cd[68]) + 100) / 100) >> 32 <= test266151307()
    require ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + return_data.size + 98 > ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 98 len 4], Mask(224, 32, msg.value * uint8(-uint8(cd[68]) + 100) / 100) >> 32 + 129
    _209 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 98 len 4], Mask(224, 32, msg.value * uint8(-uint8(cd[68]) + 100) / 100) >> 32 + 98]
    if mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 98 len 4], Mask(224, 32, msg.value * uint8(-uint8(cd[68]) + 100) / 100) >> 32 + 98] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 98 len 4], Mask(224, 32, msg.value * uint8(-uint8(cd[68]) + 100) / 100) >> 32 + 98]) + 1 < 0 or ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 98 len 4], Mask(224, 32, msg.value * uint8(-uint8(cd[68]) + 100) / 100) >> 32 + 98]) + 99 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 98 len 4], Mask(224, 32, msg.value * uint8(-uint8(cd[68]) + 100) / 100) >> 32 + 98]) + 99
    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + 98] = _209
    require _208 + (32 * _209) + 32 <= return_data.size
    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + 130 len ceil32(32 * _209)] = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + _208 + 130 len ceil32(32 * _209)]
    if ('cd', 4).length < 1:
        revert with 0, 17
    if ('cd', 4).length - 1 >= _209:
        revert with 0, 50
    _267 = mem[(32 * ('cd', 4).length - 1) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + 130]
    mem[mem[64]] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = _267
    mem[mem[64] + 36] = 128
    mem[mem[64] + 132] = ('cd', 4).length
    idx = 0
    s = 128
    t = mem[64] + 164
    while idx < ('cd', 4).length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 68] = stor1
    mem[mem[64] + 100] = block.timestamp
    require ext_code.size(stor3)
    call stor3.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
       value msg.value wei
         gas gas_remaining wei
        args _267, Array(len=('cd', 4).length, data=mem[mem[64] + 164 len 32 * ('cd', 4).length]), stor1, block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if 0 >= mem[ceil32(32 * ('cd', 4).length) + 97]:
        revert with 0, 50
    _320 = mem[ceil32(32 * ('cd', 4).length) + 129]
    mem[mem[64] + 4] = stor1
    staticcall address(_320).0x70a08231 with:
            gas gas_remaining wei
           args stor1
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _323 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _324 = mem[_323]
    if 0 >= mem[ceil32(32 * ('cd', 4).length) + 97]:
        revert with 0, 50
    _326 = mem[ceil32(32 * ('cd', 4).length) + 129]
    mem[mem[64] + 4] = ROUTERAddress
    mem[mem[64] + 36] = _324
    call address(_326).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args ROUTERAddress, _324
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _329 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_329] == bool(mem[_329])
    idx = 0
    while uint8(idx) < 100:
        if 100 < uint8(idx):
            revert with 0, 17
        if _324 and uint8(-uint8(idx) + 100) > -1 / _324:
            revert with 0, 17
        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _324 * uint8(-uint8(idx) + 100) / 100
        mem[mem[64] + 36] = 64
        _367 = mem[ceil32(32 * ('cd', 4).length) + 97]
        mem[mem[64] + 68] = mem[ceil32(32 * ('cd', 4).length) + 97]
        s = 0
        t = ceil32(32 * ('cd', 4).length) + 129
        u = mem[64] + 100
        while s < _367:
            mem[u] = mem[t + 12 len 20]
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        staticcall stor3.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args _324 * uint8(-uint8(idx) + 100) / 100, 64, mem[mem[64] + 68 len (32 * _367) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _401 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _402 = mem[_401]
        require mem[_401] <= test266151307()
        require _401 + return_data.size > _401 + mem[_401] + 31
        _403 = mem[_401 + mem[_401]]
        if mem[_401 + mem[_401]] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[_401 + mem[_401]]) + 1 < 0 or _401 + ceil32(return_data.size) + ceil32(32 * mem[_401 + mem[_401]]) + 1 > test266151307():
            revert with 0, 65
        mem[64] = _401 + ceil32(return_data.size) + ceil32(32 * mem[_401 + mem[_401]]) + 1
        mem[_401 + ceil32(return_data.size)] = _403
        require _402 + (32 * _403) + 32 <= return_data.size
        t = _401 + ceil32(return_data.size) + 32
        s = _401 + _402 + 32
        while s < _401 + _402 + (32 * _403) + 32:
            mem[t] = mem[s]
            t = t + 32
            s = s + 32
            continue 
        if mem[ceil32(32 * ('cd', 4).length) + 97] < 1:
            revert with 0, 17
        if mem[ceil32(32 * ('cd', 4).length) + 97] - 1 >= _403:
            revert with 0, 50
        _433 = mem[(32 * mem[ceil32(32 * ('cd', 4).length) + 97] - 1) + _401 + ceil32(return_data.size) + 32]
        _434 = mem[64]
        mem[mem[64]] = 0x791ac94700000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _324
        mem[mem[64] + 36] = _433
        mem[mem[64] + 68] = 160
        _435 = mem[ceil32(32 * ('cd', 4).length) + 97]
        mem[mem[64] + 164] = mem[ceil32(32 * ('cd', 4).length) + 97]
        s = 0
        t = ceil32(32 * ('cd', 4).length) + 129
        u = mem[64] + 196
        while s < _435:
            mem[u] = mem[t + 12 len 20]
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        mem[_434 + 100] = stor1
        mem[_434 + 132] = block.timestamp
        require ext_code.size(stor3)
        call stor3.mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _434 + (32 * _435) + -mem[64] + 192]
        if ext_call.success:
            if not uint8(idx):
                _458 = mem[64]
                mem[64] = mem[64] + 64
                mem[_458] = 1
                mem[_458 + 32] = '0'
                _459 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 1
                idx = 0
                while idx < 1:
                    mem[idx + _459 + 68] = mem[idx + _458 + 32]
                    idx = idx + 32
                    continue 
                mem[_459 + 69] = 0
                revert with memory
                  from mem[64]
                   len _459 + -mem[64] + 100
            t = 0
            s = uint8(t)
            while s:
                if t == -1:
                    revert with 0, 17
                t = t + 1
                s = s / 10
                continue 
            if t > test266151307():
                revert with 0, 65
            _475 = mem[64]
            mem[mem[64]] = t
            mem[64] = mem[64] + ceil32(t) + 32
            if not t:
                s = t
                idx = uint8(t)
                while idx:
                    if s < 1:
                        revert with 0, 17
                    if idx / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                        revert with 0, 17
                    if idx < 10 * idx / 10:
                        revert with 0, 17
                    if 48 > -uint8(idx - (10 * idx / 10)) + 255:
                        revert with 0, 17
                    if s - 1 >= mem[_475]:
                        revert with 0, 50
                    mem[s + _475 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
                    s = s - 1
                    idx = idx / 10
                    continue 
                _490 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _492 = mem[_475]
                mem[mem[64] + 36] = mem[_475]
                idx = 0
                while idx < _492:
                    mem[idx + _490 + 68] = mem[idx + _475 + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_492) > _492:
                    mem[_490 + _492 + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(_492) + _490 + -mem[64] + 68
            mem[_475 + 32 len t] = call.data[calldata.size len t]
            s = t
            idx = uint8(t)
            while idx:
                if s < 1:
                    revert with 0, 17
                if idx / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                    revert with 0, 17
                if idx < 10 * idx / 10:
                    revert with 0, 17
                if 48 > -uint8(idx - (10 * idx / 10)) + 255:
                    revert with 0, 17
                if s - 1 >= mem[_475]:
                    revert with 0, 50
                mem[s + _475 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
                s = s - 1
                idx = idx / 10
                continue 
            _491 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _493 = mem[_475]
            mem[mem[64] + 36] = mem[_475]
            idx = 0
            while idx < _493:
                mem[idx + _491 + 68] = mem[idx + _475 + 32]
                idx = idx + 32
                continue 
            if ceil32(_493) > _493:
                mem[_491 + _493 + 68] = 0
            revert with memory
              from mem[64]
               len ceil32(_493) + _491 + -mem[64] + 68
        if return_data.size <= 3:
            if return_data.size:
                _461 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_461] = return_data.size
                mem[_461 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        else:
            mem[0 len 4] = ext_call.return_data[0 len 4]
            if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
                if return_data.size:
                    _462 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_462] = return_data.size
                    mem[_462 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            else:
                if return_data.size < 68:
                    if return_data.size:
                        _469 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_469] = return_data.size
                        mem[_469 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                else:
                    _463 = mem[64]
                    mem[mem[64] len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
                    _464 = mem[mem[64]]
                    if mem[mem[64]] > test266151307() or mem[mem[64]] + 36 > return_data.size:
                        if return_data.size:
                            _470 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_470] = return_data.size
                            mem[_470 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    else:
                        if mem[mem[64] + mem[mem[64]]] > test266151307():
                            if return_data.size:
                                _471 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_471] = return_data.size
                                mem[_471 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        else:
                            if mem[mem[64]] + mem[mem[64] + mem[mem[64]]] + 32 > return_data.size - 4:
                                if return_data.size:
                                    _472 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_472] = return_data.size
                                    mem[_472 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            else:
                                if mem[64] + floor32(mem[mem[64]] + mem[mem[64] + mem[mem[64]]] + 31) + 1 < mem[64] or mem[64] + floor32(mem[mem[64]] + mem[mem[64] + mem[mem[64]]] + 31) + 1 > test266151307():
                                    revert with 0, 65
                                mem[64] = mem[64] + floor32(mem[mem[64]] + mem[mem[64] + mem[mem[64]]] + 31) + 1
                                if not _463 + _464:
                                    if return_data.size:
                                        _473 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_473] = return_data.size
                                        mem[_473 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if uint8(idx) == 255:
            revert with 0, 17
        idx = uint8(idx) + 1
        continue 
    revert with 0, '100'
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
    else:
        if unknown_0x51cff8d9(?????) > uint32(call.func_hash) >> 224:
            if unknown_0x3955a2bc(?????) <= uint32(call.func_hash) >> 224:
                if unknown_0x3955a2bc(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require cd[4] == address(cd[4])
                    return bool(stor0[cd[4]])
                if unknown_0x3aeac4e1(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require cd[4] == address(cd[4])
                    require cd[36] == address(cd[36])
                    require stor0[msg.sender]
                    staticcall address(cd[36]).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    call address(cd[36]).0xa9059cbb with:
                         gas gas_remaining wei
                        args address(cd[4]), ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                require unknown_0x4762e988(?????) == uint32(call.func_hash) >> 224
                require calldata.size - 4 >= 32
                require cd[4] <= test266151307()
                require cd[4] + 35 < calldata.size
                if ('cd', 4).length > test266151307():
                    revert with 0, 65
                if ceil32(32 * ('cd', 4).length) + 129 < 128 or ceil32(32 * ('cd', 4).length) + 129 > test266151307():
                    revert with 0, 65
                mem[128] = ('cd', 4).length
                require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
                idx = cd[4] + 36
                s = 160
                while idx < cd[4] + (32 * ('cd', 4).length) + 36:
                    require cd[idx] == address(cd[idx])
                    mem[s] = cd[idx]
                    idx = idx + 32
                    s = s + 32
                    continue 
                if 0 >= ('cd', 4).length:
                    revert with 0, 50
                _247 = mem[160]
                mem[ceil32(32 * ('cd', 4).length) + 133] = ROUTERAddress
                mem[ceil32(32 * ('cd', 4).length) + 165] = msg.value
                call address(_247).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args ROUTERAddress, msg.value
                mem[ceil32(32 * ('cd', 4).length) + 129] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 129
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                idx = 0
                while uint8(idx) < 100:
                    if 100 < uint8(idx):
                        revert with 0, 17
                    if msg.value and uint8(-uint8(idx) + 100) > -1 / msg.value:
                        revert with 0, 17
                    mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.value * uint8(-uint8(idx) + 100) / 100
                    mem[mem[64] + 36] = 64
                    mem[mem[64] + 68] = mem[128]
                    s = 0
                    t = 160
                    u = mem[64] + 100
                    while s < mem[128]:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    staticcall stor3.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args msg.value * uint8(-uint8(idx) + 100) / 100, 64, mem[mem[64] + 68 len (32 * mem[128]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _671 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _677 = mem[_671]
                    require mem[_671] <= test266151307()
                    require _671 + return_data.size > _671 + mem[_671] + 31
                    _681 = mem[_671 + mem[_671]]
                    if mem[_671 + mem[_671]] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[_671 + mem[_671]]) + 1 < 0 or _671 + ceil32(return_data.size) + ceil32(32 * mem[_671 + mem[_671]]) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = _671 + ceil32(return_data.size) + ceil32(32 * mem[_671 + mem[_671]]) + 1
                    mem[_671 + ceil32(return_data.size)] = _681
                    require _677 + (32 * _681) + 32 <= return_data.size
                    t = _671 + ceil32(return_data.size) + 32
                    s = _671 + _677 + 32
                    while s < _671 + _677 + (32 * _681) + 32:
                        mem[t] = mem[s]
                        t = t + 32
                        s = s + 32
                        continue 
                    if mem[128] < 1:
                        revert with 0, 17
                    if mem[128] - 1 >= _681:
                        revert with 0, 50
                    _851 = mem[(32 * mem[128] - 1) + _671 + ceil32(return_data.size) + 32]
                    mem[mem[64]] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _851
                    mem[mem[64] + 36] = 128
                    mem[mem[64] + 132] = mem[128]
                    s = 0
                    t = 160
                    u = mem[64] + 164
                    while s < mem[128]:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[mem[64] + 68] = stor1
                    mem[mem[64] + 100] = block.timestamp
                    require ext_code.size(stor3)
                    call stor3.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                       value msg.value wei
                         gas gas_remaining wei
                        args _851, 128, stor1, block.timestamp, mem[mem[64] + 132 len (32 * mem[128]) + 32]
                    if ext_call.success:
                        if not uint8(idx):
                            _1015 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1015] = 1
                            mem[_1015 + 32] = '0'
                            _1019 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 1
                            idx = 0
                            while idx < 1:
                                mem[idx + _1019 + 68] = mem[idx + _1015 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1019 + 69] = 0
                            revert with memory
                              from mem[64]
                               len _1019 + -mem[64] + 100
                        t = 0
                        s = uint8(t)
                        while s:
                            if t == -1:
                                revert with 0, 17
                            t = t + 1
                            s = s / 10
                            continue 
                        if t > test266151307():
                            revert with 0, 65
                        _1108 = mem[64]
                        mem[mem[64]] = t
                        mem[64] = mem[64] + ceil32(t) + 32
                        if not t:
                            s = t
                            idx = uint8(t)
                            while idx:
                                if s < 1:
                                    revert with 0, 17
                                if idx / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                                    revert with 0, 17
                                if idx < 10 * idx / 10:
                                    revert with 0, 17
                                if 48 > -uint8(idx - (10 * idx / 10)) + 255:
                                    revert with 0, 17
                                if s - 1 >= mem[_1108]:
                                    revert with 0, 50
                                mem[s + _1108 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
                                s = s - 1
                                idx = idx / 10
                                continue 
                            _1183 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            _1189 = mem[_1108]
                            mem[mem[64] + 36] = mem[_1108]
                            idx = 0
                            while idx < _1189:
                                mem[idx + _1183 + 68] = mem[idx + _1108 + 32]
                                idx = idx + 32
                                continue 
                            if ceil32(_1189) > _1189:
                                mem[_1183 + _1189 + 68] = 0
                            revert with memory
                              from mem[64]
                               len ceil32(_1189) + _1183 + -mem[64] + 68
                        mem[_1108 + 32 len t] = call.data[calldata.size len t]
                        s = t
                        idx = uint8(t)
                        while idx:
                            if s < 1:
                                revert with 0, 17
                            if idx / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                                revert with 0, 17
                            if idx < 10 * idx / 10:
                                revert with 0, 17
                            if 48 > -uint8(idx - (10 * idx / 10)) + 255:
                                revert with 0, 17
                            if s - 1 >= mem[_1108]:
                                revert with 0, 50
                            mem[s + _1108 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
                            s = s - 1
                            idx = idx / 10
                            continue 
                        _1184 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        _1190 = mem[_1108]
                        mem[mem[64] + 36] = mem[_1108]
                        idx = 0
                        while idx < _1190:
                            mem[idx + _1184 + 68] = mem[idx + _1108 + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_1190) > _1190:
                            mem[_1184 + _1190 + 68] = 0
                        revert with memory
                          from mem[64]
                           len ceil32(_1190) + _1184 + -mem[64] + 68
                    if return_data.size <= 3:
                        if return_data.size:
                            _1030 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_1030] = return_data.size
                            mem[_1030 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    else:
                        mem[0 len 4] = ext_call.return_data[0 len 4]
                        if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
                            if return_data.size:
                                _1036 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_1036] = return_data.size
                                mem[_1036 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        else:
                            if return_data.size < 68:
                                if return_data.size:
                                    _1046 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_1046] = return_data.size
                                    mem[_1046 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            else:
                                _1037 = mem[64]
                                mem[mem[64] len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
                                if 0, Mask(224, 32, _851) >> 32 > test266151307() or 0, Mask(224, 32, _851) >> 32 + 36 > return_data.size:
                                    if return_data.size:
                                        _1047 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_1047] = return_data.size
                                        mem[_1047 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    if mem[mem[64] + 0, Mask(224, 32, _851) >> 32] > test266151307():
                                        if return_data.size:
                                            _1048 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_1048] = return_data.size
                                            mem[_1048 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if 0, Mask(224, 32, _851) >> 32 + mem[mem[64] + 0, Mask(224, 32, _851) >> 32] + 32 > return_data.size - 4:
                                            if return_data.size:
                                                _1050 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_1050] = return_data.size
                                                mem[_1050 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if mem[64] + floor32(0, Mask(224, 32, _851) >> 32 + mem[mem[64] + 0, Mask(224, 32, _851) >> 32] + 31) + 1 < mem[64] or mem[64] + floor32(0, Mask(224, 32, _851) >> 32 + mem[mem[64] + 0, Mask(224, 32, _851) >> 32] + 31) + 1 > test266151307():
                                                revert with 0, 65
                                            mem[64] = mem[64] + floor32(0, Mask(224, 32, _851) >> 32 + mem[mem[64] + 0, Mask(224, 32, _851) >> 32] + 31) + 1
                                            if not _1037 + 0, Mask(224, 32, _851) >> 32:
                                                if return_data.size:
                                                    _1054 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_1054] = return_data.size
                                                    mem[_1054 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if uint8(idx) == 255:
                        revert with 0, 17
                    idx = uint8(idx) + 1
                    continue 
                revert with 0, '100'
            if uint32(call.func_hash) >> 224 != unknown_0x12fe4f0a(?????):
                if uint32(call.func_hash) >> 224 != unknown_0x2eef3878(?????):
                    require unknown_0x32fe7b26(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    return ROUTERAddress
                require calldata.size - 4 >= 96
                require cd[4] <= test266151307()
                require cd[4] + 35 < calldata.size
                if ('cd', 4).length > test266151307():
                    revert with 0, 65
                if ceil32(32 * ('cd', 4).length) + 129 < 128 or ceil32(32 * ('cd', 4).length) + 129 > test266151307():
                    revert with 0, 65
                mem[128] = ('cd', 4).length
                require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
                idx = cd[4] + 36
                s = 160
                while idx < cd[4] + (32 * ('cd', 4).length) + 36:
                    require cd[idx] == address(cd[idx])
                    mem[s] = cd[idx]
                    idx = idx + 32
                    s = s + 32
                    continue 
                require cd[36] <= test266151307()
                require cd[36] + 35 < calldata.size
                if ('cd', 36).length > test266151307():
                    revert with 0, 65
                if ceil32(32 * ('cd', 36).length) + 130 < 129 or ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130 > test266151307():
                    revert with 0, 65
                mem[ceil32(32 * ('cd', 4).length) + 129] = ('cd', 36).length
                require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
                idx = cd[36] + 36
                s = ceil32(32 * ('cd', 4).length) + 161
                while idx < cd[36] + (32 * ('cd', 36).length) + 36:
                    require cd[idx] == address(cd[idx])
                    mem[s] = cd[idx]
                    idx = idx + 32
                    s = s + 32
                    continue 
                require cd[68] == uint8(cd[68])
                if 0 >= ('cd', 4).length:
                    revert with 0, 50
                _469 = mem[160]
                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 134] = ROUTERAddress
                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 166] = msg.value
                call address(_469).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args ROUTERAddress, msg.value
                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if 100 < uint8(cd[68]):
                    revert with 0, 17
                if msg.value and uint8(-uint8(cd[68]) + 100) > -1 / msg.value:
                    revert with 0, 17
                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 130] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 134] = msg.value * uint8(-uint8(cd[68]) + 100) / 100
                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 166] = 64
                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 198] = ('cd', 4).length
                idx = 0
                s = 160
                t = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 230
                while idx < ('cd', 4).length:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                staticcall stor3.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args msg.value * uint8(-uint8(cd[68]) + 100) / 100, Array(len=('cd', 4).length, data=mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 230 len 32 * ('cd', 4).length])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 130 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + 130
                require return_data.size >= 32
                _676 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 130 len 4], Mask(224, 32, msg.value * uint8(-uint8(cd[68]) + 100) / 100) >> 32
                require mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 130 len 4], Mask(224, 32, msg.value * uint8(-uint8(cd[68]) + 100) / 100) >> 32 <= test266151307()
                require ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + return_data.size + 130 > ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 130 len 4], Mask(224, 32, msg.value * uint8(-uint8(cd[68]) + 100) / 100) >> 32 + 161
                _680 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 130 len 4], Mask(224, 32, msg.value * uint8(-uint8(cd[68]) + 100) / 100) >> 32 + 130]
                if mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 130 len 4], Mask(224, 32, msg.value * uint8(-uint8(cd[68]) + 100) / 100) >> 32 + 130] > test266151307():
                    revert with 0, 65
                if ceil32(32 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 130 len 4], Mask(224, 32, msg.value * uint8(-uint8(cd[68]) + 100) / 100) >> 32 + 130]) + 1 < 0 or ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 130 len 4], Mask(224, 32, msg.value * uint8(-uint8(cd[68]) + 100) / 100) >> 32 + 130]) + 131 > test266151307():
                    revert with 0, 65
                mem[64] = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 130 len 4], Mask(224, 32, msg.value * uint8(-uint8(cd[68]) + 100) / 100) >> 32 + 130]) + 131
                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + 130] = _680
                require _676 + (32 * _680) + 32 <= return_data.size
                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + 162 len ceil32(32 * _680)] = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + _676 + 162 len ceil32(32 * _680)]
                if ('cd', 4).length < 1:
                    revert with 0, 17
                if ('cd', 4).length - 1 >= _680:
                    revert with 0, 50
                _849 = mem[(32 * ('cd', 4).length - 1) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + 162]
                mem[mem[64]] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _849
                mem[mem[64] + 36] = 128
                mem[mem[64] + 132] = ('cd', 4).length
                idx = 0
                s = 160
                t = mem[64] + 164
                while idx < ('cd', 4).length:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 68] = stor1
                mem[mem[64] + 100] = block.timestamp
                require ext_code.size(stor3)
                call stor3.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                   value msg.value wei
                     gas gas_remaining wei
                    args _849, Array(len=('cd', 4).length, data=mem[mem[64] + 164 len 32 * ('cd', 4).length]), stor1, block.timestamp
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if 0 >= mem[ceil32(32 * ('cd', 4).length) + 129]:
                    revert with 0, 50
                _1001 = mem[ceil32(32 * ('cd', 4).length) + 161]
                mem[mem[64] + 4] = stor1
                staticcall address(_1001).0x70a08231 with:
                        gas gas_remaining wei
                       args stor1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1009 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1014 = mem[_1009]
                if 0 >= mem[ceil32(32 * ('cd', 4).length) + 129]:
                    revert with 0, 50
                _1021 = mem[ceil32(32 * ('cd', 4).length) + 161]
                mem[mem[64] + 4] = ROUTERAddress
                mem[mem[64] + 36] = _1014
                call address(_1021).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args ROUTERAddress, _1014
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1029 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1029] == bool(mem[_1029])
                idx = 0
                while uint8(idx) < 100:
                    if 100 < uint8(idx):
                        revert with 0, 17
                    if _1014 and uint8(-uint8(idx) + 100) > -1 / _1014:
                        revert with 0, 17
                    mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _1014 * uint8(-uint8(idx) + 100) / 100
                    mem[mem[64] + 36] = 64
                    _1132 = mem[ceil32(32 * ('cd', 4).length) + 129]
                    mem[mem[64] + 68] = mem[ceil32(32 * ('cd', 4).length) + 129]
                    s = 0
                    t = ceil32(32 * ('cd', 4).length) + 161
                    u = mem[64] + 100
                    while s < _1132:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    staticcall stor3.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args _1014 * uint8(-uint8(idx) + 100) / 100, 64, mem[mem[64] + 68 len (32 * _1132) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1193 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1197 = mem[_1193]
                    require mem[_1193] <= test266151307()
                    require _1193 + return_data.size > _1193 + mem[_1193] + 31
                    _1201 = mem[_1193 + mem[_1193]]
                    if mem[_1193 + mem[_1193]] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[_1193 + mem[_1193]]) + 1 < 0 or _1193 + ceil32(return_data.size) + ceil32(32 * mem[_1193 + mem[_1193]]) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = _1193 + ceil32(return_data.size) + ceil32(32 * mem[_1193 + mem[_1193]]) + 1
                    mem[_1193 + ceil32(return_data.size)] = _1201
                    require _1197 + (32 * _1201) + 32 <= return_data.size
                    t = _1193 + ceil32(return_data.size) + 32
                    s = _1193 + _1197 + 32
                    while s < _1193 + _1197 + (32 * _1201) + 32:
                        mem[t] = mem[s]
                        t = t + 32
                        s = s + 32
                        continue 
                    if mem[ceil32(32 * ('cd', 4).length) + 129] < 1:
                        revert with 0, 17
                    if mem[ceil32(32 * ('cd', 4).length) + 129] - 1 >= _1201:
                        revert with 0, 50
                    _1247 = mem[(32 * mem[ceil32(32 * ('cd', 4).length) + 129] - 1) + _1193 + ceil32(return_data.size) + 32]
                    _1248 = mem[64]
                    mem[mem[64]] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _1014
                    mem[mem[64] + 36] = _1247
                    mem[mem[64] + 68] = 160
                    _1249 = mem[ceil32(32 * ('cd', 4).length) + 129]
                    mem[mem[64] + 164] = mem[ceil32(32 * ('cd', 4).length) + 129]
                    s = 0
                    t = ceil32(32 * ('cd', 4).length) + 161
                    u = mem[64] + 196
                    while s < _1249:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[_1248 + 100] = stor1
                    mem[_1248 + 132] = block.timestamp
                    require ext_code.size(stor3)
                    call stor3.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _1248 + (32 * _1249) + -mem[64] + 192]
                    if ext_call.success:
                        if not uint8(idx):
                            _1272 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1272] = 1
                            mem[_1272 + 32] = '0'
                            _1273 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 1
                            idx = 0
                            while idx < 1:
                                mem[idx + _1273 + 68] = mem[idx + _1272 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1273 + 69] = 0
                            revert with memory
                              from mem[64]
                               len _1273 + -mem[64] + 100
                        t = 0
                        s = uint8(t)
                        while s:
                            if t == -1:
                                revert with 0, 17
                            t = t + 1
                            s = s / 10
                            continue 
                        if t > test266151307():
                            revert with 0, 65
                        _1289 = mem[64]
                        mem[mem[64]] = t
                        mem[64] = mem[64] + ceil32(t) + 32
                        if not t:
                            s = t
                            idx = uint8(t)
                            while idx:
                                if s < 1:
                                    revert with 0, 17
                                if idx / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                                    revert with 0, 17
                                if idx < 10 * idx / 10:
                                    revert with 0, 17
                                if 48 > -uint8(idx - (10 * idx / 10)) + 255:
                                    revert with 0, 17
                                if s - 1 >= mem[_1289]:
                                    revert with 0, 50
                                mem[s + _1289 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
                                s = s - 1
                                idx = idx / 10
                                continue 
                            _1304 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            _1306 = mem[_1289]
                            mem[mem[64] + 36] = mem[_1289]
                            idx = 0
                            while idx < _1306:
                                mem[idx + _1304 + 68] = mem[idx + _1289 + 32]
                                idx = idx + 32
                                continue 
                            if ceil32(_1306) > _1306:
                                mem[_1304 + _1306 + 68] = 0
                            revert with memory
                              from mem[64]
                               len ceil32(_1306) + _1304 + -mem[64] + 68
                        mem[_1289 + 32 len t] = call.data[calldata.size len t]
                        s = t
                        idx = uint8(t)
                        while idx:
                            if s < 1:
                                revert with 0, 17
                            if idx / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                                revert with 0, 17
                            if idx < 10 * idx / 10:
                                revert with 0, 17
                            if 48 > -uint8(idx - (10 * idx / 10)) + 255:
                                revert with 0, 17
                            if s - 1 >= mem[_1289]:
                                revert with 0, 50
                            mem[s + _1289 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
                            s = s - 1
                            idx = idx / 10
                            continue 
                        _1305 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        _1307 = mem[_1289]
                        mem[mem[64] + 36] = mem[_1289]
                        idx = 0
                        while idx < _1307:
                            mem[idx + _1305 + 68] = mem[idx + _1289 + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_1307) > _1307:
                            mem[_1305 + _1307 + 68] = 0
                        revert with memory
                          from mem[64]
                           len ceil32(_1307) + _1305 + -mem[64] + 68
                    if return_data.size <= 3:
                        if return_data.size:
                            _1275 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_1275] = return_data.size
                            mem[_1275 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    else:
                        mem[0 len 4] = ext_call.return_data[0 len 4]
                        if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
                            if return_data.size:
                                _1276 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_1276] = return_data.size
                                mem[_1276 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        else:
                            if return_data.size < 68:
                                if return_data.size:
                                    _1283 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_1283] = return_data.size
                                    mem[_1283 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            else:
                                _1277 = mem[64]
                                mem[mem[64] len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
                                _1278 = mem[mem[64]]
                                if mem[mem[64]] > test266151307() or mem[mem[64]] + 36 > return_data.size:
                                    if return_data.size:
                                        _1284 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_1284] = return_data.size
                                        mem[_1284 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    if mem[mem[64] + mem[mem[64]]] > test266151307():
                                        if return_data.size:
                                            _1285 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_1285] = return_data.size
                                            mem[_1285 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if mem[mem[64]] + mem[mem[64] + mem[mem[64]]] + 32 > return_data.size - 4:
                                            if return_data.size:
                                                _1286 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_1286] = return_data.size
                                                mem[_1286 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if mem[64] + floor32(mem[mem[64]] + mem[mem[64] + mem[mem[64]]] + 31) + 1 < mem[64] or mem[64] + floor32(mem[mem[64]] + mem[mem[64] + mem[mem[64]]] + 31) + 1 > test266151307():
                                                revert with 0, 65
                                            mem[64] = mem[64] + floor32(mem[mem[64]] + mem[mem[64] + mem[mem[64]]] + 31) + 1
                                            if not _1277 + _1278:
                                                if return_data.size:
                                                    _1287 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_1287] = return_data.size
                                                    mem[_1287 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if uint8(idx) == 255:
                        revert with 0, 17
                    idx = uint8(idx) + 1
                    continue 
                revert with 0, '100'
            require calldata.size - 4 >= 64
            require cd[4] <= test266151307()
            require cd[4] + 35 < calldata.size
            if ('cd', 4).length > test266151307():
                revert with 0, 65
            if ceil32(32 * ('cd', 4).length) + 129 < 128 or ceil32(32 * ('cd', 4).length) + 129 > test266151307():
                revert with 0, 65
            mem[128] = ('cd', 4).length
            require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
            idx = cd[4] + 36
            s = 160
            while idx < cd[4] + (32 * ('cd', 4).length) + 36:
                require cd[idx] == address(cd[idx])
                mem[s] = cd[idx]
                idx = idx + 32
                s = s + 32
                continue 
            require cd[36] == uint8(cd[36])
            if 0 >= ('cd', 4).length:
                revert with 0, 50
            _252 = mem[160]
            mem[ceil32(32 * ('cd', 4).length) + 133] = ROUTERAddress
            mem[ceil32(32 * ('cd', 4).length) + 165] = msg.value
            call address(_252).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args ROUTERAddress, msg.value
            mem[ceil32(32 * ('cd', 4).length) + 129] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if 100 < uint8(cd[36]):
                revert with 0, 17
            if msg.value and uint8(-uint8(cd[36]) + 100) > -1 / msg.value:
                revert with 0, 17
            mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 129] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 133] = msg.value * uint8(-uint8(cd[36]) + 100) / 100
            mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 165] = 64
            mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 197] = ('cd', 4).length
            idx = 0
            s = 160
            t = ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 229
            while idx < ('cd', 4).length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            staticcall stor3.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args msg.value * uint8(-uint8(cd[36]) + 100) / 100, Array(len=('cd', 4).length, data=mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 229 len 32 * ('cd', 4).length])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 129 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(32 * ('cd', 4).length) + (2 * ceil32(return_data.size)) + 129
            require return_data.size >= 32
            _466 = mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 129 len 4], Mask(224, 32, msg.value * uint8(-uint8(cd[36]) + 100) / 100) >> 32
            require mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 129 len 4], Mask(224, 32, msg.value * uint8(-uint8(cd[36]) + 100) / 100) >> 32 <= test266151307()
            require ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + return_data.size + 129 > ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 129 len 4], Mask(224, 32, msg.value * uint8(-uint8(cd[36]) + 100) / 100) >> 32 + 160
            _468 = mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 129 len 4], Mask(224, 32, msg.value * uint8(-uint8(cd[36]) + 100) / 100) >> 32 + 129]
            if mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 129 len 4], Mask(224, 32, msg.value * uint8(-uint8(cd[36]) + 100) / 100) >> 32 + 129] > test266151307():
                revert with 0, 65
            if ceil32(32 * mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 129 len 4], Mask(224, 32, msg.value * uint8(-uint8(cd[36]) + 100) / 100) >> 32 + 129]) + 1 < 0 or ceil32(32 * ('cd', 4).length) + (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 129 len 4], Mask(224, 32, msg.value * uint8(-uint8(cd[36]) + 100) / 100) >> 32 + 129]) + 130 > test266151307():
                revert with 0, 65
            mem[64] = ceil32(32 * ('cd', 4).length) + (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 129 len 4], Mask(224, 32, msg.value * uint8(-uint8(cd[36]) + 100) / 100) >> 32 + 129]) + 130
            mem[ceil32(32 * ('cd', 4).length) + (2 * ceil32(return_data.size)) + 129] = _468
            require _466 + (32 * _468) + 32 <= return_data.size
            mem[ceil32(32 * ('cd', 4).length) + (2 * ceil32(return_data.size)) + 161 len ceil32(32 * _468)] = mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + _466 + 161 len ceil32(32 * _468)]
            if ('cd', 4).length < 1:
                revert with 0, 17
            if ('cd', 4).length - 1 >= _468:
                revert with 0, 50
            _674 = mem[(32 * ('cd', 4).length - 1) + ceil32(32 * ('cd', 4).length) + (2 * ceil32(return_data.size)) + 161]
            mem[mem[64]] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _674
            mem[mem[64] + 36] = 128
            mem[mem[64] + 132] = ('cd', 4).length
            idx = 0
            s = 160
            t = mem[64] + 164
            while idx < ('cd', 4).length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 68] = stor1
            mem[mem[64] + 100] = block.timestamp
            require ext_code.size(stor3)
            call stor3.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
               value msg.value wei
                 gas gas_remaining wei
                args _674, Array(len=('cd', 4).length, data=mem[mem[64] + 164 len 32 * ('cd', 4).length]), stor1, block.timestamp
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if ('cd', 4).length < 1:
                revert with 0, 17
            if ('cd', 4).length - 1 >= ('cd', 4).length:
                revert with 0, 50
            mem[mem[64] + 4] = stor1
            staticcall mem[(32 * ('cd', 4).length - 1) + 172 len 20].0x70a08231 with:
                    gas gas_remaining wei
                   args stor1
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _860 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _863 = mem[_860]
            if ('cd', 4).length < 1:
                revert with 0, 17
            if ('cd', 4).length - 1 >= ('cd', 4).length:
                revert with 0, 50
            mem[mem[64] + 4] = ROUTERAddress
            staticcall mem[(32 * ('cd', 4).length - 1) + 172 len 20].0x70a08231 with:
                    gas gas_remaining wei
                   args ROUTERAddress
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _880 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _886 = mem[_880]
            if 0 >= ('cd', 4).length:
                revert with 0, 50
            _898 = mem[160]
            mem[mem[64] + 4] = ROUTERAddress
            mem[mem[64] + 36] = _863
            call address(_898).0xa9059cbb with:
                 gas gas_remaining wei
                args ROUTERAddress, _863
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _906 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_906] == bool(mem[_906])
            if ('cd', 4).length < 1:
                revert with 0, 17
            if ('cd', 4).length - 1 >= ('cd', 4).length:
                revert with 0, 50
            mem[mem[64] + 4] = ROUTERAddress
            staticcall mem[(32 * ('cd', 4).length - 1) + 172 len 20].0x70a08231 with:
                    gas gas_remaining wei
                   args ROUTERAddress
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _930 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _932 = mem[_930]
            if mem[_930] < _886:
                revert with 0, 17
            if mem[_930] - _886 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                revert with 0, 17
            if not _863:
                revert with 0, 18
            if 1000 < (1000 * mem[_930]) - (1000 * _886) / _863:
                revert with 0, 17
            if not -((1000 * mem[_930]) - (1000 * _886) / _863) + 1000:
                revert with 0, '0', 0
            s = 0
            idx = -((1000 * mem[_930]) - (1000 * _886) / _863) + 1000
            while idx:
                if s == -1:
                    revert with 0, 17
                s = s + 1
                idx = idx / 10
                continue 
            if s > test266151307():
                revert with 0, 65
            _992 = mem[64]
            mem[mem[64]] = s
            mem[64] = mem[64] + ceil32(s) + 32
            if not s:
                t = s
                idx = -((1000 * _932) - (1000 * _886) / _863) + 1000
                while idx:
                    if t < 1:
                        revert with 0, 17
                    if idx / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                        revert with 0, 17
                    if idx < 10 * idx / 10:
                        revert with 0, 17
                    if 48 > -uint8(idx - (10 * idx / 10)) + 255:
                        revert with 0, 17
                    if t - 1 >= mem[_992]:
                        revert with 0, 50
                    mem[t + _992 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _1109 = mem[_992]
                mem[mem[64] + 36] = mem[_992]
                mem[mem[64] + 68 len ceil32(_1109)] = mem[_992 + 32 len ceil32(_1109)]
                if ceil32(_1109) > _1109:
                    mem[mem[64] + _1109 + 68] = 0
                revert with 0, 32, mem[mem[64] + 36 len ceil32(_1109) + 32]
            mem[_992 + 32 len s] = call.data[calldata.size len s]
            t = s
            idx = -((1000 * _932) - (1000 * _886) / _863) + 1000
            while idx:
                if t < 1:
                    revert with 0, 17
                if idx / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                    revert with 0, 17
                if idx < 10 * idx / 10:
                    revert with 0, 17
                if 48 > -uint8(idx - (10 * idx / 10)) + 255:
                    revert with 0, 17
                if t - 1 >= mem[_992]:
                    revert with 0, 50
                mem[t + _992 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _1110 = mem[_992]
            mem[mem[64] + 36] = mem[_992]
            mem[mem[64] + 68 len ceil32(_1110)] = mem[_992 + 32 len ceil32(_1110)]
            if ceil32(_1110) > _1110:
                mem[mem[64] + _1110 + 68] = 0
            revert with 0, 32, mem[mem[64] + 36 len ceil32(_1110) + 32]
        if unknown_0xc0d78655(?????) > uint32(call.func_hash) >> 224:
            if unknown_0x51cff8d9(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 32
                require cd[4] == address(cd[4])
                require stor0[msg.sender]
                call address(cd[4]) with:
                   value eth.balance(this.address) wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                if unknown_0x7065cb48(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require cd[4] == address(cd[4])
                    require stor0[msg.sender]
                    stor0[address(cd[4])] = 1
                else:
                    require unknown_0x84522aec(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require cd[4] == address(cd[4])
                    require stor0[msg.sender]
                    call address(cd[4]) with:
                       value cd[36] wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
        else:
            if unknown_0xc0d78655(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 32
                require cd[4] == address(cd[4])
                require stor0[msg.sender]
                ROUTERAddress = address(cd[4])
                stor3 = address(cd[4])
            else:
                if unknown_0xd2885592(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 96
                    require cd[4] == address(cd[4])
                    require cd[36] == address(cd[36])
                    require stor0[msg.sender]
                    call address(cd[36]).0xa9059cbb with:
                         gas gas_remaining wei
                        args address(cd[4]), cd[68]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                else:
                    require unknown_0xd318cfd0(?????) == uint32(call.func_hash) >> 224
                    require calldata.size - 4 >= 128
                    require cd[4] <= test266151307()
                    require cd[4] + 35 < calldata.size
                    if ('cd', 4).length > test266151307():
                        revert with 0, 65
                    if ceil32(32 * ('cd', 4).length) + 129 < 128 or ceil32(32 * ('cd', 4).length) + 129 > test266151307():
                        revert with 0, 65
                    mem[128] = ('cd', 4).length
                    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
                    idx = cd[4] + 36
                    s = 160
                    while idx < cd[4] + (32 * ('cd', 4).length) + 36:
                        require cd[idx] == address(cd[idx])
                        mem[s] = cd[idx]
                        idx = idx + 32
                        s = s + 32
                        continue 
                    require cd[36] <= test266151307()
                    require cd[36] + 35 < calldata.size
                    if ('cd', 36).length > test266151307():
                        revert with 0, 65
                    if ceil32(32 * ('cd', 36).length) + 130 < 129 or ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130 > test266151307():
                        revert with 0, 65
                    mem[ceil32(32 * ('cd', 4).length) + 129] = ('cd', 36).length
                    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
                    idx = cd[36] + 36
                    s = ceil32(32 * ('cd', 4).length) + 161
                    while idx < cd[36] + (32 * ('cd', 36).length) + 36:
                        require cd[idx] == address(cd[idx])
                        mem[s] = cd[idx]
                        idx = idx + 32
                        s = s + 32
                        continue 
                    require cd[68] == uint8(cd[68])
                    require cd[100] == uint8(cd[100])
                    if 0 >= ('cd', 4).length:
                        revert with 0, 50
                    _477 = mem[160]
                    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 134] = ROUTERAddress
                    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 166] = msg.value
                    call address(_477).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args ROUTERAddress, msg.value
                    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if 100 < uint8(cd[68]):
                        revert with 0, 17
                    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 130] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 134] = msg.value
                    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 166] = 64
                    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 198] = ('cd', 4).length
                    idx = 0
                    s = 160
                    t = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 230
                    while idx < ('cd', 4).length:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    staticcall stor3.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args msg.value, Array(len=('cd', 4).length, data=mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 230 len 32 * ('cd', 4).length])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 130 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + 130
                    require return_data.size >= 32
                    _678 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 130 len 4], Mask(224, 32, msg.value) >> 32
                    require mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 130 len 4], Mask(224, 32, msg.value) >> 32 <= test266151307()
                    require ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + return_data.size + 130 > ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 130 len 4], Mask(224, 32, msg.value) >> 32 + 161
                    _682 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 130 len 4], Mask(224, 32, msg.value) >> 32 + 130]
                    if mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 130 len 4], Mask(224, 32, msg.value) >> 32 + 130] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 130 len 4], Mask(224, 32, msg.value) >> 32 + 130]) + 1 < 0 or ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 130 len 4], Mask(224, 32, msg.value) >> 32 + 130]) + 131 > test266151307():
                        revert with 0, 65
                    mem[64] = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 130 len 4], Mask(224, 32, msg.value) >> 32 + 130]) + 131
                    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + 130] = _682
                    require _678 + (32 * _682) + 32 <= return_data.size
                    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + 162 len ceil32(32 * _682)] = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + _678 + 162 len ceil32(32 * _682)]
                    if ('cd', 4).length < 1:
                        revert with 0, 17
                    if ('cd', 4).length - 1 >= _682:
                        revert with 0, 50
                    _853 = mem[(32 * ('cd', 4).length - 1) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + 162]
                    if mem[(32 * ('cd', 4).length - 1) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + 162] and uint8(-uint8(cd[68]) + 100) > -1 / mem[(32 * ('cd', 4).length - 1) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + 162]:
                        revert with 0, 17
                    mem[mem[64]] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _853 * uint8(-uint8(cd[68]) + 100) / 100
                    mem[mem[64] + 36] = 128
                    mem[mem[64] + 132] = ('cd', 4).length
                    idx = 0
                    s = 160
                    t = mem[64] + 164
                    while idx < ('cd', 4).length:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 68] = stor1
                    mem[mem[64] + 100] = block.timestamp
                    require ext_code.size(stor3)
                    call stor3.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                       value msg.value wei
                         gas gas_remaining wei
                        args _853 * uint8(-uint8(cd[68]) + 100) / 100, Array(len=('cd', 4).length, data=mem[mem[64] + 164 len 32 * ('cd', 4).length]), stor1, block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if 0 >= mem[ceil32(32 * ('cd', 4).length) + 129]:
                        revert with 0, 50
                    _1004 = mem[ceil32(32 * ('cd', 4).length) + 161]
                    mem[mem[64] + 4] = stor1
                    staticcall address(_1004).0x70a08231 with:
                            gas gas_remaining wei
                           args stor1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1010 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1016 = mem[_1010]
                    if not mem[_1010]:
                        revert with 0, 'Broke'
                    if 0 >= mem[ceil32(32 * ('cd', 4).length) + 129]:
                        revert with 0, 50
                    _1031 = mem[ceil32(32 * ('cd', 4).length) + 161]
                    mem[mem[64] + 4] = ROUTERAddress
                    mem[mem[64] + 36] = _1016
                    call address(_1031).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args ROUTERAddress, _1016
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1040 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1040] == bool(mem[_1040])
                    if 100 < uint8(cd[100]):
                        revert with 0, 17
                    mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _1016
                    mem[mem[64] + 36] = 64
                    _1053 = mem[ceil32(32 * ('cd', 4).length) + 129]
                    mem[mem[64] + 68] = mem[ceil32(32 * ('cd', 4).length) + 129]
                    idx = 0
                    s = ceil32(32 * ('cd', 4).length) + 161
                    t = mem[64] + 100
                    while idx < _1053:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    staticcall stor3.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args _1016, 64, mem[mem[64] + 68 len (32 * _1053) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1114 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1118 = mem[_1114]
                    require mem[_1114] <= test266151307()
                    require _1114 + return_data.size > _1114 + mem[_1114] + 31
                    _1126 = mem[_1114 + mem[_1114]]
                    if mem[_1114 + mem[_1114]] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[_1114 + mem[_1114]]) + 1 < 0 or _1114 + ceil32(return_data.size) + ceil32(32 * mem[_1114 + mem[_1114]]) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = _1114 + ceil32(return_data.size) + ceil32(32 * mem[_1114 + mem[_1114]]) + 1
                    mem[_1114 + ceil32(return_data.size)] = _1126
                    require _1118 + (32 * _1126) + 32 <= return_data.size
                    mem[_1114 + ceil32(return_data.size) + 32 len ceil32(32 * _1126)] = mem[_1114 + _1118 + 32 len ceil32(32 * _1126)]
                    if mem[ceil32(32 * ('cd', 4).length) + 129] < 1:
                        revert with 0, 17
                    if mem[ceil32(32 * ('cd', 4).length) + 129] - 1 >= _1126:
                        revert with 0, 50
                    _1198 = mem[(32 * mem[ceil32(32 * ('cd', 4).length) + 129] - 1) + _1114 + ceil32(return_data.size) + 32]
                    if mem[(32 * mem[ceil32(32 * ('cd', 4).length) + 129] - 1) + _1114 + ceil32(return_data.size) + 32] and uint8(-uint8(cd[100]) + 100) > -1 / mem[(32 * mem[ceil32(32 * ('cd', 4).length) + 129] - 1) + _1114 + ceil32(return_data.size) + 32]:
                        revert with 0, 17
                    mem[mem[64]] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _1016
                    mem[mem[64] + 36] = _1198 * uint8(-uint8(cd[100]) + 100) / 100
                    mem[mem[64] + 68] = 160
                    _1206 = mem[ceil32(32 * ('cd', 4).length) + 129]
                    mem[mem[64] + 164] = mem[ceil32(32 * ('cd', 4).length) + 129]
                    idx = 0
                    s = ceil32(32 * ('cd', 4).length) + 161
                    t = mem[64] + 196
                    while idx < _1206:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(stor3)
                    call stor3.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args _1016, _1198 * uint8(-uint8(cd[100]) + 100) / 100, 160, msg.sender, block.timestamp, mem[mem[64] + 164 len (32 * _1206) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
}



}
