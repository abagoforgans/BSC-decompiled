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
    _59 = mem[128]
    mem[ceil32(32 * ('cd', 4).length) + 101] = ROUTERAddress
    mem[ceil32(32 * ('cd', 4).length) + 133] = msg.value
    call address(_59).approve(address arg1, uint256 arg2) with:
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
    _117 = mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 97 len 4], Mask(224, 32, msg.value * uint8(-uint8(cd[36]) + 100) / 100) >> 32
    require mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 97 len 4], Mask(224, 32, msg.value * uint8(-uint8(cd[36]) + 100) / 100) >> 32 <= test266151307()
    require ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + return_data.size + 97 > ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 97 len 4], Mask(224, 32, msg.value * uint8(-uint8(cd[36]) + 100) / 100) >> 32 + 128
    _118 = mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 97 len 4], Mask(224, 32, msg.value * uint8(-uint8(cd[36]) + 100) / 100) >> 32 + 97]
    if mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 97 len 4], Mask(224, 32, msg.value * uint8(-uint8(cd[36]) + 100) / 100) >> 32 + 97] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 97 len 4], Mask(224, 32, msg.value * uint8(-uint8(cd[36]) + 100) / 100) >> 32 + 97]) + 1 < 0 or ceil32(32 * ('cd', 4).length) + (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 97 len 4], Mask(224, 32, msg.value * uint8(-uint8(cd[36]) + 100) / 100) >> 32 + 97]) + 98 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * ('cd', 4).length) + (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 97 len 4], Mask(224, 32, msg.value * uint8(-uint8(cd[36]) + 100) / 100) >> 32 + 97]) + 98
    mem[ceil32(32 * ('cd', 4).length) + (2 * ceil32(return_data.size)) + 97] = _118
    require _117 + (32 * _118) + 32 <= return_data.size
    mem[ceil32(32 * ('cd', 4).length) + (2 * ceil32(return_data.size)) + 129 len ceil32(32 * _118)] = mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + _117 + 129 len ceil32(32 * _118)]
    if ('cd', 4).length < 1:
        revert with 0, 17
    if ('cd', 4).length - 1 >= _118:
        revert with 0, 50
    _165 = mem[(32 * ('cd', 4).length - 1) + ceil32(32 * ('cd', 4).length) + (2 * ceil32(return_data.size)) + 129]
    mem[mem[64]] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = _165
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
        args _165, Array(len=('cd', 4).length, data=mem[mem[64] + 164 len 32 * ('cd', 4).length]), stor1, block.timestamp
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
    _211 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _212 = mem[_211]
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
    _218 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _219 = mem[_218]
    if ('cd', 4).length < 1:
        revert with 0, 17
    if ('cd', 4).length - 1 >= ('cd', 4).length:
        revert with 0, 50
    mem[mem[64] + 4] = ROUTERAddress
    mem[mem[64] + 36] = _212
    call mem[(32 * ('cd', 4).length - 1) + 140 len 20].0xa9059cbb with:
         gas gas_remaining wei
        args ROUTERAddress, _212
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _225 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_225] == bool(mem[_225])
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
    _232 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _233 = mem[_232]
    if mem[_232] < _219:
        revert with 0, 17
    if mem[_232] - _219 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
        revert with 0, 17
    if not _212:
        revert with 0, 18
    if 1000 < (1000 * mem[_232]) - (1000 * _219) / _212:
        revert with 0, 17
    if not -((1000 * mem[_232]) - (1000 * _219) / _212) + 1000:
        revert with 0, '0', 0
    s = 0
    idx = -((1000 * mem[_232]) - (1000 * _219) / _212) + 1000
    while idx:
        if s == -1:
            revert with 0, 17
        s = s + 1
        idx = idx / 10
        continue 
    if s > test266151307():
        revert with 0, 65
    _241 = mem[64]
    mem[mem[64]] = s
    mem[64] = mem[64] + ceil32(s) + 32
    if not s:
        t = s
        idx = -((1000 * _233) - (1000 * _219) / _212) + 1000
        while idx:
            if t < 1:
                revert with 0, 17
            if idx / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                revert with 0, 17
            if idx < 10 * idx / 10:
                revert with 0, 17
            if 48 > -uint8(idx - (10 * idx / 10)) + 255:
                revert with 0, 17
            if t - 1 >= mem[_241]:
                revert with 0, 50
            mem[t + _241 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        _258 = mem[_241]
        mem[mem[64] + 36] = mem[_241]
        mem[mem[64] + 68 len ceil32(_258)] = mem[_241 + 32 len ceil32(_258)]
        if ceil32(_258) > _258:
            mem[mem[64] + _258 + 68] = 0
        revert with 0, 32, mem[mem[64] + 36 len ceil32(_258) + 32]
    mem[_241 + 32 len s] = call.data[calldata.size len s]
    t = s
    idx = -((1000 * _233) - (1000 * _219) / _212) + 1000
    while idx:
        if t < 1:
            revert with 0, 17
        if idx / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
            revert with 0, 17
        if idx < 10 * idx / 10:
            revert with 0, 17
        if 48 > -uint8(idx - (10 * idx / 10)) + 255:
            revert with 0, 17
        if t - 1 >= mem[_241]:
            revert with 0, 50
        mem[t + _241 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = 32
    _259 = mem[_241]
    mem[mem[64] + 36] = mem[_241]
    mem[mem[64] + 68 len ceil32(_259)] = mem[_241 + 32 len ceil32(_259)]
    if ceil32(_259) > _259:
        mem[mem[64] + _259 + 68] = 0
    revert with 0, 32, mem[mem[64] + 36 len ceil32(_259) + 32]
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
                _248 = mem[160]
                mem[ceil32(32 * ('cd', 4).length) + 133] = ROUTERAddress
                mem[ceil32(32 * ('cd', 4).length) + 165] = msg.value
                call address(_248).approve(address arg1, uint256 arg2) with:
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
                    _674 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _680 = mem[_674]
                    require mem[_674] <= test266151307()
                    require _674 + return_data.size > _674 + mem[_674] + 31
                    _684 = mem[_674 + mem[_674]]
                    if mem[_674 + mem[_674]] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[_674 + mem[_674]]) + 1 < 0 or _674 + ceil32(return_data.size) + ceil32(32 * mem[_674 + mem[_674]]) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = _674 + ceil32(return_data.size) + ceil32(32 * mem[_674 + mem[_674]]) + 1
                    mem[_674 + ceil32(return_data.size)] = _684
                    require _680 + (32 * _684) + 32 <= return_data.size
                    t = _674 + ceil32(return_data.size) + 32
                    s = _674 + _680 + 32
                    while s < _674 + _680 + (32 * _684) + 32:
                        mem[t] = mem[s]
                        t = t + 32
                        s = s + 32
                        continue 
                    if mem[128] < 1:
                        revert with 0, 17
                    if mem[128] - 1 >= _684:
                        revert with 0, 50
                    _855 = mem[(32 * mem[128] - 1) + _674 + ceil32(return_data.size) + 32]
                    mem[mem[64]] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _855
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
                        args _855, 128, stor1, block.timestamp, mem[mem[64] + 132 len (32 * mem[128]) + 32]
                    if ext_call.success:
                        if not uint8(idx):
                            _1020 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1020] = 1
                            mem[_1020 + 32] = '0'
                            _1024 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 1
                            idx = 0
                            while idx < 1:
                                mem[idx + _1024 + 68] = mem[idx + _1020 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1024 + 69] = 0
                            revert with memory
                              from mem[64]
                               len _1024 + -mem[64] + 100
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
                        _1113 = mem[64]
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
                                if s - 1 >= mem[_1113]:
                                    revert with 0, 50
                                mem[s + _1113 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
                                s = s - 1
                                idx = idx / 10
                                continue 
                            _1188 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            _1194 = mem[_1113]
                            mem[mem[64] + 36] = mem[_1113]
                            idx = 0
                            while idx < _1194:
                                mem[idx + _1188 + 68] = mem[idx + _1113 + 32]
                                idx = idx + 32
                                continue 
                            if ceil32(_1194) > _1194:
                                mem[_1188 + _1194 + 68] = 0
                            revert with memory
                              from mem[64]
                               len ceil32(_1194) + _1188 + -mem[64] + 68
                        mem[_1113 + 32 len t] = call.data[calldata.size len t]
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
                            if s - 1 >= mem[_1113]:
                                revert with 0, 50
                            mem[s + _1113 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
                            s = s - 1
                            idx = idx / 10
                            continue 
                        _1189 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        _1195 = mem[_1113]
                        mem[mem[64] + 36] = mem[_1113]
                        idx = 0
                        while idx < _1195:
                            mem[idx + _1189 + 68] = mem[idx + _1113 + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_1195) > _1195:
                            mem[_1189 + _1195 + 68] = 0
                        revert with memory
                          from mem[64]
                           len ceil32(_1195) + _1189 + -mem[64] + 68
                    if return_data.size <= 3:
                        if return_data.size:
                            _1035 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_1035] = return_data.size
                            mem[_1035 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    else:
                        mem[0 len 4] = ext_call.return_data[0 len 4]
                        if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
                            if return_data.size:
                                _1041 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_1041] = return_data.size
                                mem[_1041 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        else:
                            if return_data.size < 68:
                                if return_data.size:
                                    _1051 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_1051] = return_data.size
                                    mem[_1051 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            else:
                                _1042 = mem[64]
                                mem[mem[64] len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
                                if 0, Mask(224, 32, _855) >> 32 > test266151307() or 0, Mask(224, 32, _855) >> 32 + 36 > return_data.size:
                                    if return_data.size:
                                        _1052 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_1052] = return_data.size
                                        mem[_1052 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    if mem[mem[64] + 0, Mask(224, 32, _855) >> 32] > test266151307():
                                        if return_data.size:
                                            _1053 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_1053] = return_data.size
                                            mem[_1053 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if 0, Mask(224, 32, _855) >> 32 + mem[mem[64] + 0, Mask(224, 32, _855) >> 32] + 32 > return_data.size - 4:
                                            if return_data.size:
                                                _1055 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_1055] = return_data.size
                                                mem[_1055 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if mem[64] + floor32(0, Mask(224, 32, _855) >> 32 + mem[mem[64] + 0, Mask(224, 32, _855) >> 32] + 31) + 1 < mem[64] or mem[64] + floor32(0, Mask(224, 32, _855) >> 32 + mem[mem[64] + 0, Mask(224, 32, _855) >> 32] + 31) + 1 > test266151307():
                                                revert with 0, 65
                                            mem[64] = mem[64] + floor32(0, Mask(224, 32, _855) >> 32 + mem[mem[64] + 0, Mask(224, 32, _855) >> 32] + 31) + 1
                                            if not _1042 + 0, Mask(224, 32, _855) >> 32:
                                                if return_data.size:
                                                    _1059 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_1059] = return_data.size
                                                    mem[_1059 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
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
                _471 = mem[160]
                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 134] = ROUTERAddress
                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 166] = msg.value
                call address(_471).approve(address arg1, uint256 arg2) with:
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
                _679 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 130 len 4], Mask(224, 32, msg.value * uint8(-uint8(cd[68]) + 100) / 100) >> 32
                require mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 130 len 4], Mask(224, 32, msg.value * uint8(-uint8(cd[68]) + 100) / 100) >> 32 <= test266151307()
                require ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + return_data.size + 130 > ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 130 len 4], Mask(224, 32, msg.value * uint8(-uint8(cd[68]) + 100) / 100) >> 32 + 161
                _683 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 130 len 4], Mask(224, 32, msg.value * uint8(-uint8(cd[68]) + 100) / 100) >> 32 + 130]
                if mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 130 len 4], Mask(224, 32, msg.value * uint8(-uint8(cd[68]) + 100) / 100) >> 32 + 130] > test266151307():
                    revert with 0, 65
                if ceil32(32 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 130 len 4], Mask(224, 32, msg.value * uint8(-uint8(cd[68]) + 100) / 100) >> 32 + 130]) + 1 < 0 or ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 130 len 4], Mask(224, 32, msg.value * uint8(-uint8(cd[68]) + 100) / 100) >> 32 + 130]) + 131 > test266151307():
                    revert with 0, 65
                mem[64] = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 130 len 4], Mask(224, 32, msg.value * uint8(-uint8(cd[68]) + 100) / 100) >> 32 + 130]) + 131
                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + 130] = _683
                require _679 + (32 * _683) + 32 <= return_data.size
                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + 162 len ceil32(32 * _683)] = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + _679 + 162 len ceil32(32 * _683)]
                if ('cd', 4).length < 1:
                    revert with 0, 17
                if ('cd', 4).length - 1 >= _683:
                    revert with 0, 50
                _853 = mem[(32 * ('cd', 4).length - 1) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + 162]
                mem[mem[64]] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _853
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
                    args _853, Array(len=('cd', 4).length, data=mem[mem[64] + 164 len 32 * ('cd', 4).length]), stor1, block.timestamp
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if 0 >= mem[ceil32(32 * ('cd', 4).length) + 129]:
                    revert with 0, 50
                _1006 = mem[ceil32(32 * ('cd', 4).length) + 161]
                mem[mem[64] + 4] = stor1
                staticcall address(_1006).0x70a08231 with:
                        gas gas_remaining wei
                       args stor1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1014 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1019 = mem[_1014]
                if 0 >= mem[ceil32(32 * ('cd', 4).length) + 129]:
                    revert with 0, 50
                _1026 = mem[ceil32(32 * ('cd', 4).length) + 161]
                mem[mem[64] + 4] = ROUTERAddress
                mem[mem[64] + 36] = _1019
                call address(_1026).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args ROUTERAddress, _1019
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1034 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1034] == bool(mem[_1034])
                idx = 0
                while uint8(idx) < 100:
                    if 100 < uint8(idx):
                        revert with 0, 17
                    if _1019 and uint8(-uint8(idx) + 100) > -1 / _1019:
                        revert with 0, 17
                    mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _1019 * uint8(-uint8(idx) + 100) / 100
                    mem[mem[64] + 36] = 64
                    _1137 = mem[ceil32(32 * ('cd', 4).length) + 129]
                    mem[mem[64] + 68] = mem[ceil32(32 * ('cd', 4).length) + 129]
                    s = 0
                    t = ceil32(32 * ('cd', 4).length) + 161
                    u = mem[64] + 100
                    while s < _1137:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    staticcall stor3.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args _1019 * uint8(-uint8(idx) + 100) / 100, 64, mem[mem[64] + 68 len (32 * _1137) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1198 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1202 = mem[_1198]
                    require mem[_1198] <= test266151307()
                    require _1198 + return_data.size > _1198 + mem[_1198] + 31
                    _1206 = mem[_1198 + mem[_1198]]
                    if mem[_1198 + mem[_1198]] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[_1198 + mem[_1198]]) + 1 < 0 or _1198 + ceil32(return_data.size) + ceil32(32 * mem[_1198 + mem[_1198]]) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = _1198 + ceil32(return_data.size) + ceil32(32 * mem[_1198 + mem[_1198]]) + 1
                    mem[_1198 + ceil32(return_data.size)] = _1206
                    require _1202 + (32 * _1206) + 32 <= return_data.size
                    t = _1198 + ceil32(return_data.size) + 32
                    s = _1198 + _1202 + 32
                    while s < _1198 + _1202 + (32 * _1206) + 32:
                        mem[t] = mem[s]
                        t = t + 32
                        s = s + 32
                        continue 
                    if mem[ceil32(32 * ('cd', 4).length) + 129] < 1:
                        revert with 0, 17
                    if mem[ceil32(32 * ('cd', 4).length) + 129] - 1 >= _1206:
                        revert with 0, 50
                    _1252 = mem[(32 * mem[ceil32(32 * ('cd', 4).length) + 129] - 1) + _1198 + ceil32(return_data.size) + 32]
                    mem[mem[64]] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _1019
                    mem[mem[64] + 36] = _1252
                    mem[mem[64] + 68] = 160
                    _1254 = mem[ceil32(32 * ('cd', 4).length) + 129]
                    mem[mem[64] + 164] = mem[ceil32(32 * ('cd', 4).length) + 129]
                    s = 0
                    t = ceil32(32 * ('cd', 4).length) + 161
                    u = mem[64] + 196
                    while s < _1254:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[mem[64] + 100] = stor1
                    mem[mem[64] + 132] = block.timestamp
                    require ext_code.size(stor3)
                    call stor3.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args _1019, _1252, 160, stor1, block.timestamp, mem[mem[64] + 164 len (32 * _1254) + 32]
                    if ext_call.success:
                        if not uint8(idx):
                            _1277 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1277] = 1
                            mem[_1277 + 32] = '0'
                            _1278 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 1
                            idx = 0
                            while idx < 1:
                                mem[idx + _1278 + 68] = mem[idx + _1277 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1278 + 69] = 0
                            revert with memory
                              from mem[64]
                               len _1278 + -mem[64] + 100
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
                        _1294 = mem[64]
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
                                if s - 1 >= mem[_1294]:
                                    revert with 0, 50
                                mem[s + _1294 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
                                s = s - 1
                                idx = idx / 10
                                continue 
                            _1309 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            _1311 = mem[_1294]
                            mem[mem[64] + 36] = mem[_1294]
                            idx = 0
                            while idx < _1311:
                                mem[idx + _1309 + 68] = mem[idx + _1294 + 32]
                                idx = idx + 32
                                continue 
                            if ceil32(_1311) > _1311:
                                mem[_1309 + _1311 + 68] = 0
                            revert with memory
                              from mem[64]
                               len ceil32(_1311) + _1309 + -mem[64] + 68
                        mem[_1294 + 32 len t] = call.data[calldata.size len t]
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
                            if s - 1 >= mem[_1294]:
                                revert with 0, 50
                            mem[s + _1294 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
                            s = s - 1
                            idx = idx / 10
                            continue 
                        _1310 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        _1312 = mem[_1294]
                        mem[mem[64] + 36] = mem[_1294]
                        idx = 0
                        while idx < _1312:
                            mem[idx + _1310 + 68] = mem[idx + _1294 + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_1312) > _1312:
                            mem[_1310 + _1312 + 68] = 0
                        revert with memory
                          from mem[64]
                           len ceil32(_1312) + _1310 + -mem[64] + 68
                    if return_data.size <= 3:
                        if return_data.size:
                            _1280 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_1280] = return_data.size
                            mem[_1280 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    else:
                        mem[0 len 4] = ext_call.return_data[0 len 4]
                        if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
                            if return_data.size:
                                _1281 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_1281] = return_data.size
                                mem[_1281 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        else:
                            if return_data.size < 68:
                                if return_data.size:
                                    _1288 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_1288] = return_data.size
                                    mem[_1288 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            else:
                                _1282 = mem[64]
                                mem[mem[64] len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
                                if 0, Mask(224, 32, _1019) >> 32 > test266151307() or 0, Mask(224, 32, _1019) >> 32 + 36 > return_data.size:
                                    if return_data.size:
                                        _1289 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_1289] = return_data.size
                                        mem[_1289 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    if mem[mem[64] + 0, Mask(224, 32, _1019) >> 32] > test266151307():
                                        if return_data.size:
                                            _1290 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_1290] = return_data.size
                                            mem[_1290 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if 0, Mask(224, 32, _1019) >> 32 + mem[mem[64] + 0, Mask(224, 32, _1019) >> 32] + 32 > return_data.size - 4:
                                            if return_data.size:
                                                _1291 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_1291] = return_data.size
                                                mem[_1291 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if mem[64] + floor32(0, Mask(224, 32, _1019) >> 32 + mem[mem[64] + 0, Mask(224, 32, _1019) >> 32] + 31) + 1 < mem[64] or mem[64] + floor32(0, Mask(224, 32, _1019) >> 32 + mem[mem[64] + 0, Mask(224, 32, _1019) >> 32] + 31) + 1 > test266151307():
                                                revert with 0, 65
                                            mem[64] = mem[64] + floor32(0, Mask(224, 32, _1019) >> 32 + mem[mem[64] + 0, Mask(224, 32, _1019) >> 32] + 31) + 1
                                            if not _1282 + 0, Mask(224, 32, _1019) >> 32:
                                                if return_data.size:
                                                    _1292 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_1292] = return_data.size
                                                    mem[_1292 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
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
            _253 = mem[160]
            mem[ceil32(32 * ('cd', 4).length) + 133] = ROUTERAddress
            mem[ceil32(32 * ('cd', 4).length) + 165] = msg.value
            call address(_253).approve(address arg1, uint256 arg2) with:
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
            _468 = mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 129 len 4], Mask(224, 32, msg.value * uint8(-uint8(cd[36]) + 100) / 100) >> 32
            require mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 129 len 4], Mask(224, 32, msg.value * uint8(-uint8(cd[36]) + 100) / 100) >> 32 <= test266151307()
            require ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + return_data.size + 129 > ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 129 len 4], Mask(224, 32, msg.value * uint8(-uint8(cd[36]) + 100) / 100) >> 32 + 160
            _470 = mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 129 len 4], Mask(224, 32, msg.value * uint8(-uint8(cd[36]) + 100) / 100) >> 32 + 129]
            if mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 129 len 4], Mask(224, 32, msg.value * uint8(-uint8(cd[36]) + 100) / 100) >> 32 + 129] > test266151307():
                revert with 0, 65
            if ceil32(32 * mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 129 len 4], Mask(224, 32, msg.value * uint8(-uint8(cd[36]) + 100) / 100) >> 32 + 129]) + 1 < 0 or ceil32(32 * ('cd', 4).length) + (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 129 len 4], Mask(224, 32, msg.value * uint8(-uint8(cd[36]) + 100) / 100) >> 32 + 129]) + 130 > test266151307():
                revert with 0, 65
            mem[64] = ceil32(32 * ('cd', 4).length) + (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 129 len 4], Mask(224, 32, msg.value * uint8(-uint8(cd[36]) + 100) / 100) >> 32 + 129]) + 130
            mem[ceil32(32 * ('cd', 4).length) + (2 * ceil32(return_data.size)) + 129] = _470
            require _468 + (32 * _470) + 32 <= return_data.size
            mem[ceil32(32 * ('cd', 4).length) + (2 * ceil32(return_data.size)) + 161 len ceil32(32 * _470)] = mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + _468 + 161 len ceil32(32 * _470)]
            if ('cd', 4).length < 1:
                revert with 0, 17
            if ('cd', 4).length - 1 >= _470:
                revert with 0, 50
            _677 = mem[(32 * ('cd', 4).length - 1) + ceil32(32 * ('cd', 4).length) + (2 * ceil32(return_data.size)) + 161]
            mem[mem[64]] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _677
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
                args _677, Array(len=('cd', 4).length, data=mem[mem[64] + 164 len 32 * ('cd', 4).length]), stor1, block.timestamp
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
            _864 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _867 = mem[_864]
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
            _884 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _890 = mem[_884]
            if ('cd', 4).length < 1:
                revert with 0, 17
            if ('cd', 4).length - 1 >= ('cd', 4).length:
                revert with 0, 50
            mem[mem[64] + 4] = ROUTERAddress
            mem[mem[64] + 36] = _867
            call mem[(32 * ('cd', 4).length - 1) + 172 len 20].0xa9059cbb with:
                 gas gas_remaining wei
                args ROUTERAddress, _867
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _916 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_916] == bool(mem[_916])
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
            _936 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _939 = mem[_936]
            if mem[_936] < _890:
                revert with 0, 17
            if mem[_936] - _890 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                revert with 0, 17
            if not _867:
                revert with 0, 18
            if 1000 < (1000 * mem[_936]) - (1000 * _890) / _867:
                revert with 0, 17
            if not -((1000 * mem[_936]) - (1000 * _890) / _867) + 1000:
                revert with 0, '0', 0
            s = 0
            idx = -((1000 * mem[_936]) - (1000 * _890) / _867) + 1000
            while idx:
                if s == -1:
                    revert with 0, 17
                s = s + 1
                idx = idx / 10
                continue 
            if s > test266151307():
                revert with 0, 65
            _997 = mem[64]
            mem[mem[64]] = s
            mem[64] = mem[64] + ceil32(s) + 32
            if not s:
                t = s
                idx = -((1000 * _939) - (1000 * _890) / _867) + 1000
                while idx:
                    if t < 1:
                        revert with 0, 17
                    if idx / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                        revert with 0, 17
                    if idx < 10 * idx / 10:
                        revert with 0, 17
                    if 48 > -uint8(idx - (10 * idx / 10)) + 255:
                        revert with 0, 17
                    if t - 1 >= mem[_997]:
                        revert with 0, 50
                    mem[t + _997 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                _1110 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _1114 = mem[_997]
                mem[mem[64] + 36] = mem[_997]
                mem[mem[64] + 68 len ceil32(_1114)] = mem[_997 + 32 len ceil32(_1114)]
                if ceil32(_1114) <= _1114:
                    revert with 0, 32, mem[mem[64] + 36 len ceil32(_1114) + 32]
                mem[mem[64] + _1114 + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(_1114) + _1110 + -mem[64] + 68
            mem[_997 + 32 len s] = call.data[calldata.size len s]
            t = s
            idx = -((1000 * _939) - (1000 * _890) / _867) + 1000
            while idx:
                if t < 1:
                    revert with 0, 17
                if idx / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                    revert with 0, 17
                if idx < 10 * idx / 10:
                    revert with 0, 17
                if 48 > -uint8(idx - (10 * idx / 10)) + 255:
                    revert with 0, 17
                if t - 1 >= mem[_997]:
                    revert with 0, 50
                mem[t + _997 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            _1111 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _1115 = mem[_997]
            mem[mem[64] + 36] = mem[_997]
            mem[mem[64] + 68 len ceil32(_1115)] = mem[_997 + 32 len ceil32(_1115)]
            if ceil32(_1115) <= _1115:
                revert with 0, 32, mem[mem[64] + 36 len ceil32(_1115) + 32]
            mem[mem[64] + _1115 + 68] = 0
            revert with memory
              from mem[64]
               len ceil32(_1115) + _1111 + -mem[64] + 68
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
                    _479 = mem[160]
                    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 134] = ROUTERAddress
                    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 166] = msg.value
                    call address(_479).approve(address arg1, uint256 arg2) with:
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
                    _681 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 130 len 4], Mask(224, 32, msg.value) >> 32
                    require mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 130 len 4], Mask(224, 32, msg.value) >> 32 <= test266151307()
                    require ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + return_data.size + 130 > ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 130 len 4], Mask(224, 32, msg.value) >> 32 + 161
                    _685 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 130 len 4], Mask(224, 32, msg.value) >> 32 + 130]
                    if mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 130 len 4], Mask(224, 32, msg.value) >> 32 + 130] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 130 len 4], Mask(224, 32, msg.value) >> 32 + 130]) + 1 < 0 or ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 130 len 4], Mask(224, 32, msg.value) >> 32 + 130]) + 131 > test266151307():
                        revert with 0, 65
                    mem[64] = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 130 len 4], Mask(224, 32, msg.value) >> 32 + 130]) + 131
                    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + 130] = _685
                    require _681 + (32 * _685) + 32 <= return_data.size
                    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + 162 len ceil32(32 * _685)] = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + _681 + 162 len ceil32(32 * _685)]
                    if ('cd', 4).length < 1:
                        revert with 0, 17
                    if ('cd', 4).length - 1 >= _685:
                        revert with 0, 50
                    _857 = mem[(32 * ('cd', 4).length - 1) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + 162]
                    if mem[(32 * ('cd', 4).length - 1) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + 162] and uint8(-uint8(cd[68]) + 100) > -1 / mem[(32 * ('cd', 4).length - 1) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + 162]:
                        revert with 0, 17
                    mem[mem[64]] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _857 * uint8(-uint8(cd[68]) + 100) / 100
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
                        args _857 * uint8(-uint8(cd[68]) + 100) / 100, Array(len=('cd', 4).length, data=mem[mem[64] + 164 len 32 * ('cd', 4).length]), stor1, block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if 0 >= mem[ceil32(32 * ('cd', 4).length) + 129]:
                        revert with 0, 50
                    _1009 = mem[ceil32(32 * ('cd', 4).length) + 161]
                    mem[mem[64] + 4] = stor1
                    staticcall address(_1009).0x70a08231 with:
                            gas gas_remaining wei
                           args stor1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1015 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1021 = mem[_1015]
                    if not mem[_1015]:
                        revert with 0, 'Broke'
                    if 0 >= mem[ceil32(32 * ('cd', 4).length) + 129]:
                        revert with 0, 50
                    _1036 = mem[ceil32(32 * ('cd', 4).length) + 161]
                    mem[mem[64] + 4] = ROUTERAddress
                    mem[mem[64] + 36] = _1021
                    call address(_1036).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args ROUTERAddress, _1021
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1045 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1045] == bool(mem[_1045])
                    if 100 < uint8(cd[100]):
                        revert with 0, 17
                    mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _1021
                    mem[mem[64] + 36] = 64
                    _1058 = mem[ceil32(32 * ('cd', 4).length) + 129]
                    mem[mem[64] + 68] = mem[ceil32(32 * ('cd', 4).length) + 129]
                    idx = 0
                    s = ceil32(32 * ('cd', 4).length) + 161
                    t = mem[64] + 100
                    while idx < _1058:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    staticcall stor3.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args _1021, 64, mem[mem[64] + 68 len (32 * _1058) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1119 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1123 = mem[_1119]
                    require mem[_1119] <= test266151307()
                    require _1119 + return_data.size > _1119 + mem[_1119] + 31
                    _1131 = mem[_1119 + mem[_1119]]
                    if mem[_1119 + mem[_1119]] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[_1119 + mem[_1119]]) + 1 < 0 or _1119 + ceil32(return_data.size) + ceil32(32 * mem[_1119 + mem[_1119]]) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = _1119 + ceil32(return_data.size) + ceil32(32 * mem[_1119 + mem[_1119]]) + 1
                    mem[_1119 + ceil32(return_data.size)] = _1131
                    require _1123 + (32 * _1131) + 32 <= return_data.size
                    mem[_1119 + ceil32(return_data.size) + 32 len ceil32(32 * _1131)] = mem[_1119 + _1123 + 32 len ceil32(32 * _1131)]
                    if mem[ceil32(32 * ('cd', 4).length) + 129] < 1:
                        revert with 0, 17
                    if mem[ceil32(32 * ('cd', 4).length) + 129] - 1 >= _1131:
                        revert with 0, 50
                    _1203 = mem[(32 * mem[ceil32(32 * ('cd', 4).length) + 129] - 1) + _1119 + ceil32(return_data.size) + 32]
                    if mem[(32 * mem[ceil32(32 * ('cd', 4).length) + 129] - 1) + _1119 + ceil32(return_data.size) + 32] and uint8(-uint8(cd[100]) + 100) > -1 / mem[(32 * mem[ceil32(32 * ('cd', 4).length) + 129] - 1) + _1119 + ceil32(return_data.size) + 32]:
                        revert with 0, 17
                    _1210 = mem[64]
                    mem[mem[64]] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _1021
                    mem[mem[64] + 36] = _1203 * uint8(-uint8(cd[100]) + 100) / 100
                    mem[mem[64] + 68] = 160
                    _1211 = mem[ceil32(32 * ('cd', 4).length) + 129]
                    mem[mem[64] + 164] = mem[ceil32(32 * ('cd', 4).length) + 129]
                    idx = 0
                    s = ceil32(32 * ('cd', 4).length) + 161
                    t = mem[64] + 196
                    while idx < _1211:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_1210 + 100] = msg.sender
                    mem[_1210 + 132] = block.timestamp
                    require ext_code.size(stor3)
                    call stor3.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _1210 + (32 * _1211) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
}



}
