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
    _55 = mem[128]
    mem[ceil32(32 * ('cd', 4).length) + 101] = ROUTERAddress
    mem[ceil32(32 * ('cd', 4).length) + 133] = msg.value
    call address(_55).approve(address arg1, uint256 arg2) with:
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
    _109 = mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 97 len 4], Mask(224, 32, msg.value * uint8(-uint8(cd[36]) + 100) / 100) >> 32
    require mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 97 len 4], Mask(224, 32, msg.value * uint8(-uint8(cd[36]) + 100) / 100) >> 32 <= test266151307()
    require ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + return_data.size + 97 > ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 97 len 4], Mask(224, 32, msg.value * uint8(-uint8(cd[36]) + 100) / 100) >> 32 + 128
    _110 = mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 97 len 4], Mask(224, 32, msg.value * uint8(-uint8(cd[36]) + 100) / 100) >> 32 + 97]
    if mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 97 len 4], Mask(224, 32, msg.value * uint8(-uint8(cd[36]) + 100) / 100) >> 32 + 97] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 97 len 4], Mask(224, 32, msg.value * uint8(-uint8(cd[36]) + 100) / 100) >> 32 + 97]) + 1 < 0 or ceil32(32 * ('cd', 4).length) + (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 97 len 4], Mask(224, 32, msg.value * uint8(-uint8(cd[36]) + 100) / 100) >> 32 + 97]) + 98 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * ('cd', 4).length) + (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 97 len 4], Mask(224, 32, msg.value * uint8(-uint8(cd[36]) + 100) / 100) >> 32 + 97]) + 98
    mem[ceil32(32 * ('cd', 4).length) + (2 * ceil32(return_data.size)) + 97] = _110
    require _109 + (32 * _110) + 32 <= return_data.size
    mem[ceil32(32 * ('cd', 4).length) + (2 * ceil32(return_data.size)) + 129 len ceil32(32 * _110)] = mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + _109 + 129 len ceil32(32 * _110)]
    if ('cd', 4).length < 1:
        revert with 0, 17
    if ('cd', 4).length - 1 >= _110:
        revert with 0, 50
    _153 = mem[(32 * ('cd', 4).length - 1) + ceil32(32 * ('cd', 4).length) + (2 * ceil32(return_data.size)) + 129]
    mem[mem[64]] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = _153
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
        args _153, Array(len=('cd', 4).length, data=mem[mem[64] + 164 len 32 * ('cd', 4).length]), stor1, block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if 0 >= ('cd', 4).length:
        revert with 0, 50
    _191 = mem[128]
    mem[mem[64] + 4] = stor1
    staticcall address(_191).0x70a08231 with:
            gas gas_remaining wei
           args stor1
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _194 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _195 = mem[_194]
    if 0 >= ('cd', 4).length:
        revert with 0, 50
    _197 = mem[128]
    mem[mem[64] + 4] = ROUTERAddress
    staticcall address(_197).0x70a08231 with:
            gas gas_remaining wei
           args ROUTERAddress
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _200 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _201 = mem[_200]
    if 0 >= ('cd', 4).length:
        revert with 0, 50
    _203 = mem[128]
    mem[mem[64] + 4] = ROUTERAddress
    mem[mem[64] + 36] = _195
    call address(_203).0xa9059cbb with:
         gas gas_remaining wei
        args ROUTERAddress, _195
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _206 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_206] == bool(mem[_206])
    if 0 >= ('cd', 4).length:
        revert with 0, 50
    _209 = mem[128]
    mem[mem[64] + 4] = ROUTERAddress
    staticcall address(_209).0x70a08231 with:
            gas gas_remaining wei
           args ROUTERAddress
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _212 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _213 = mem[_212]
    if mem[_212] < _201:
        revert with 0, 17
    if mem[_212] - _201 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
        revert with 0, 17
    if not _195:
        revert with 0, 18
    if 1000 < (1000 * mem[_212]) - (1000 * _201) / _195:
        revert with 0, 17
    if not -((1000 * mem[_212]) - (1000 * _201) / _195) + 1000:
        revert with 0, '0', 0
    s = 0
    idx = -((1000 * mem[_212]) - (1000 * _201) / _195) + 1000
    while idx:
        if s == -1:
            revert with 0, 17
        s = s + 1
        idx = idx / 10
        continue 
    if s > test266151307():
        revert with 0, 65
    _221 = mem[64]
    mem[mem[64]] = s
    mem[64] = mem[64] + ceil32(s) + 32
    if not s:
        t = s
        idx = -((1000 * _213) - (1000 * _201) / _195) + 1000
        while idx:
            if t < 1:
                revert with 0, 17
            if idx / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                revert with 0, 17
            if idx < 10 * idx / 10:
                revert with 0, 17
            if 48 > -uint8(idx - (10 * idx / 10)) + 255:
                revert with 0, 17
            if t - 1 >= mem[_221]:
                revert with 0, 50
            mem[t + _221 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        _236 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        _238 = mem[_221]
        mem[mem[64] + 36] = mem[_221]
        mem[mem[64] + 68 len ceil32(_238)] = mem[_221 + 32 len ceil32(_238)]
        if ceil32(_238) <= _238:
            revert with 0, 32, mem[mem[64] + 36 len ceil32(_238) + 32]
        mem[mem[64] + _238 + 68] = 0
        revert with memory
          from mem[64]
           len ceil32(_238) + _236 + -mem[64] + 68
    mem[_221 + 32 len s] = call.data[calldata.size len s]
    t = s
    idx = -((1000 * _213) - (1000 * _201) / _195) + 1000
    while idx:
        if t < 1:
            revert with 0, 17
        if idx / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
            revert with 0, 17
        if idx < 10 * idx / 10:
            revert with 0, 17
        if 48 > -uint8(idx - (10 * idx / 10)) + 255:
            revert with 0, 17
        if t - 1 >= mem[_221]:
            revert with 0, 50
        mem[t + _221 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = 32
    _239 = mem[_221]
    mem[mem[64] + 36] = mem[_221]
    mem[mem[64] + 68 len ceil32(_239)] = mem[_221 + 32 len ceil32(_239)]
    if ceil32(_239) > _239:
        mem[mem[64] + _239 + 68] = 0
    revert with 0, 32, mem[mem[64] + 36 len ceil32(_239) + 32]
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
                _244 = mem[160]
                mem[ceil32(32 * ('cd', 4).length) + 133] = ROUTERAddress
                mem[ceil32(32 * ('cd', 4).length) + 165] = msg.value
                call address(_244).approve(address arg1, uint256 arg2) with:
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
                    _467 = mem[64]
                    mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.value * uint8(-uint8(idx) + 100) / 100
                    mem[mem[64] + 36] = 64
                    _474 = mem[128]
                    mem[mem[64] + 68] = mem[128]
                    s = 0
                    t = 160
                    u = mem[64] + 100
                    while s < _474:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    staticcall stor3.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _467 + (32 * _474) + -mem[64] + 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _662 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _668 = mem[_662]
                    require mem[_662] <= test266151307()
                    require _662 + return_data.size > _662 + mem[_662] + 31
                    _672 = mem[_662 + mem[_662]]
                    if mem[_662 + mem[_662]] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[_662 + mem[_662]]) + 1 < 0 or _662 + ceil32(return_data.size) + ceil32(32 * mem[_662 + mem[_662]]) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = _662 + ceil32(return_data.size) + ceil32(32 * mem[_662 + mem[_662]]) + 1
                    mem[_662 + ceil32(return_data.size)] = _672
                    require _668 + (32 * _672) + 32 <= return_data.size
                    t = _662 + ceil32(return_data.size) + 32
                    s = _662 + _668 + 32
                    while s < _662 + _668 + (32 * _672) + 32:
                        mem[t] = mem[s]
                        t = t + 32
                        s = s + 32
                        continue 
                    if mem[128] < 1:
                        revert with 0, 17
                    if mem[128] - 1 >= _672:
                        revert with 0, 50
                    _842 = mem[(32 * mem[128] - 1) + _662 + ceil32(return_data.size) + 32]
                    mem[mem[64]] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _842
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
                        args _842, 128, stor1, block.timestamp, mem[mem[64] + 132 len (32 * mem[128]) + 32]
                    if ext_call.success:
                        if not uint8(idx):
                            _1000 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1000] = 1
                            mem[_1000 + 32] = '0'
                            _1004 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 1
                            idx = 0
                            while idx < 1:
                                mem[idx + _1004 + 68] = mem[idx + _1000 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1004 + 69] = 0
                            revert with memory
                              from mem[64]
                               len _1004 + -mem[64] + 100
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
                        _1093 = mem[64]
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
                                if s - 1 >= mem[_1093]:
                                    revert with 0, 50
                                mem[s + _1093 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
                                s = s - 1
                                idx = idx / 10
                                continue 
                            _1168 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            _1174 = mem[_1093]
                            mem[mem[64] + 36] = mem[_1093]
                            idx = 0
                            while idx < _1174:
                                mem[idx + _1168 + 68] = mem[idx + _1093 + 32]
                                idx = idx + 32
                                continue 
                            if ceil32(_1174) > _1174:
                                mem[_1168 + _1174 + 68] = 0
                            revert with memory
                              from mem[64]
                               len ceil32(_1174) + _1168 + -mem[64] + 68
                        mem[_1093 + 32 len t] = call.data[calldata.size len t]
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
                            if s - 1 >= mem[_1093]:
                                revert with 0, 50
                            mem[s + _1093 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
                            s = s - 1
                            idx = idx / 10
                            continue 
                        _1169 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        _1175 = mem[_1093]
                        mem[mem[64] + 36] = mem[_1093]
                        idx = 0
                        while idx < _1175:
                            mem[idx + _1169 + 68] = mem[idx + _1093 + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_1175) > _1175:
                            mem[_1169 + _1175 + 68] = 0
                        revert with memory
                          from mem[64]
                           len ceil32(_1175) + _1169 + -mem[64] + 68
                    if return_data.size <= 3:
                        if return_data.size:
                            _1015 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_1015] = return_data.size
                            mem[_1015 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    else:
                        mem[0 len 4] = ext_call.return_data[0 len 4]
                        if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
                            if return_data.size:
                                _1021 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_1021] = return_data.size
                                mem[_1021 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        else:
                            if return_data.size < 68:
                                if return_data.size:
                                    _1031 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_1031] = return_data.size
                                    mem[_1031 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            else:
                                _1022 = mem[64]
                                mem[mem[64] len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
                                if 0, Mask(224, 32, _842) >> 32 > test266151307() or 0, Mask(224, 32, _842) >> 32 + 36 > return_data.size:
                                    if return_data.size:
                                        _1032 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_1032] = return_data.size
                                        mem[_1032 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    if mem[mem[64] + 0, Mask(224, 32, _842) >> 32] > test266151307():
                                        if return_data.size:
                                            _1033 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_1033] = return_data.size
                                            mem[_1033 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if 0, Mask(224, 32, _842) >> 32 + mem[mem[64] + 0, Mask(224, 32, _842) >> 32] + 32 > return_data.size - 4:
                                            if return_data.size:
                                                _1035 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_1035] = return_data.size
                                                mem[_1035 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if mem[64] + floor32(0, Mask(224, 32, _842) >> 32 + mem[mem[64] + 0, Mask(224, 32, _842) >> 32] + 31) + 1 < mem[64] or mem[64] + floor32(0, Mask(224, 32, _842) >> 32 + mem[mem[64] + 0, Mask(224, 32, _842) >> 32] + 31) + 1 > test266151307():
                                                revert with 0, 65
                                            mem[64] = mem[64] + floor32(0, Mask(224, 32, _842) >> 32 + mem[mem[64] + 0, Mask(224, 32, _842) >> 32] + 31) + 1
                                            if not _1022 + 0, Mask(224, 32, _842) >> 32:
                                                if return_data.size:
                                                    _1039 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_1039] = return_data.size
                                                    mem[_1039 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
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
                _463 = mem[160]
                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 134] = ROUTERAddress
                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 166] = msg.value
                call address(_463).approve(address arg1, uint256 arg2) with:
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
                _667 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 130 len 4], Mask(224, 32, msg.value * uint8(-uint8(cd[68]) + 100) / 100) >> 32
                require mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 130 len 4], Mask(224, 32, msg.value * uint8(-uint8(cd[68]) + 100) / 100) >> 32 <= test266151307()
                require ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + return_data.size + 130 > ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 130 len 4], Mask(224, 32, msg.value * uint8(-uint8(cd[68]) + 100) / 100) >> 32 + 161
                _671 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 130 len 4], Mask(224, 32, msg.value * uint8(-uint8(cd[68]) + 100) / 100) >> 32 + 130]
                if mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 130 len 4], Mask(224, 32, msg.value * uint8(-uint8(cd[68]) + 100) / 100) >> 32 + 130] > test266151307():
                    revert with 0, 65
                if ceil32(32 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 130 len 4], Mask(224, 32, msg.value * uint8(-uint8(cd[68]) + 100) / 100) >> 32 + 130]) + 1 < 0 or ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 130 len 4], Mask(224, 32, msg.value * uint8(-uint8(cd[68]) + 100) / 100) >> 32 + 130]) + 131 > test266151307():
                    revert with 0, 65
                mem[64] = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 130 len 4], Mask(224, 32, msg.value * uint8(-uint8(cd[68]) + 100) / 100) >> 32 + 130]) + 131
                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + 130] = _671
                require _667 + (32 * _671) + 32 <= return_data.size
                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + 162 len ceil32(32 * _671)] = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + _667 + 162 len ceil32(32 * _671)]
                if ('cd', 4).length < 1:
                    revert with 0, 17
                if ('cd', 4).length - 1 >= _671:
                    revert with 0, 50
                _840 = mem[(32 * ('cd', 4).length - 1) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + 162]
                mem[mem[64]] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _840
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
                    args _840, Array(len=('cd', 4).length, data=mem[mem[64] + 164 len 32 * ('cd', 4).length]), stor1, block.timestamp
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if 0 >= mem[ceil32(32 * ('cd', 4).length) + 129]:
                    revert with 0, 50
                _986 = mem[ceil32(32 * ('cd', 4).length) + 161]
                mem[mem[64] + 4] = stor1
                staticcall address(_986).0x70a08231 with:
                        gas gas_remaining wei
                       args stor1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _994 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _999 = mem[_994]
                if 0 >= mem[ceil32(32 * ('cd', 4).length) + 129]:
                    revert with 0, 50
                _1006 = mem[ceil32(32 * ('cd', 4).length) + 161]
                mem[mem[64] + 4] = ROUTERAddress
                mem[mem[64] + 36] = _999
                call address(_1006).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args ROUTERAddress, _999
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1014 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1014] == bool(mem[_1014])
                idx = 0
                while uint8(idx) < 100:
                    if 100 < uint8(idx):
                        revert with 0, 17
                    if _999 and uint8(-uint8(idx) + 100) > -1 / _999:
                        revert with 0, 17
                    mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _999 * uint8(-uint8(idx) + 100) / 100
                    mem[mem[64] + 36] = 64
                    _1117 = mem[ceil32(32 * ('cd', 4).length) + 129]
                    mem[mem[64] + 68] = mem[ceil32(32 * ('cd', 4).length) + 129]
                    s = 0
                    t = ceil32(32 * ('cd', 4).length) + 161
                    u = mem[64] + 100
                    while s < _1117:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    staticcall stor3.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args _999 * uint8(-uint8(idx) + 100) / 100, 64, mem[mem[64] + 68 len (32 * _1117) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1178 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1182 = mem[_1178]
                    require mem[_1178] <= test266151307()
                    require _1178 + return_data.size > _1178 + mem[_1178] + 31
                    _1186 = mem[_1178 + mem[_1178]]
                    if mem[_1178 + mem[_1178]] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[_1178 + mem[_1178]]) + 1 < 0 or _1178 + ceil32(return_data.size) + ceil32(32 * mem[_1178 + mem[_1178]]) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = _1178 + ceil32(return_data.size) + ceil32(32 * mem[_1178 + mem[_1178]]) + 1
                    mem[_1178 + ceil32(return_data.size)] = _1186
                    require _1182 + (32 * _1186) + 32 <= return_data.size
                    t = _1178 + ceil32(return_data.size) + 32
                    s = _1178 + _1182 + 32
                    while s < _1178 + _1182 + (32 * _1186) + 32:
                        mem[t] = mem[s]
                        t = t + 32
                        s = s + 32
                        continue 
                    if mem[ceil32(32 * ('cd', 4).length) + 129] < 1:
                        revert with 0, 17
                    if mem[ceil32(32 * ('cd', 4).length) + 129] - 1 >= _1186:
                        revert with 0, 50
                    _1232 = mem[(32 * mem[ceil32(32 * ('cd', 4).length) + 129] - 1) + _1178 + ceil32(return_data.size) + 32]
                    mem[mem[64]] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _999
                    mem[mem[64] + 36] = _1232
                    mem[mem[64] + 68] = 160
                    _1234 = mem[ceil32(32 * ('cd', 4).length) + 129]
                    mem[mem[64] + 164] = mem[ceil32(32 * ('cd', 4).length) + 129]
                    s = 0
                    t = ceil32(32 * ('cd', 4).length) + 161
                    u = mem[64] + 196
                    while s < _1234:
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
                        args _999, _1232, 160, stor1, block.timestamp, mem[mem[64] + 164 len (32 * _1234) + 32]
                    if ext_call.success:
                        if not uint8(idx):
                            _1257 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1257] = 1
                            mem[_1257 + 32] = '0'
                            _1258 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 1
                            idx = 0
                            while idx < 1:
                                mem[idx + _1258 + 68] = mem[idx + _1257 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1258 + 69] = 0
                            revert with memory
                              from mem[64]
                               len _1258 + -mem[64] + 100
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
                        _1274 = mem[64]
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
                                if s - 1 >= mem[_1274]:
                                    revert with 0, 50
                                mem[s + _1274 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
                                s = s - 1
                                idx = idx / 10
                                continue 
                            _1289 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            _1291 = mem[_1274]
                            mem[mem[64] + 36] = mem[_1274]
                            idx = 0
                            while idx < _1291:
                                mem[idx + _1289 + 68] = mem[idx + _1274 + 32]
                                idx = idx + 32
                                continue 
                            if ceil32(_1291) > _1291:
                                mem[_1289 + _1291 + 68] = 0
                            revert with memory
                              from mem[64]
                               len ceil32(_1291) + _1289 + -mem[64] + 68
                        mem[_1274 + 32 len t] = call.data[calldata.size len t]
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
                            if s - 1 >= mem[_1274]:
                                revert with 0, 50
                            mem[s + _1274 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
                            s = s - 1
                            idx = idx / 10
                            continue 
                        _1290 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        _1292 = mem[_1274]
                        mem[mem[64] + 36] = mem[_1274]
                        idx = 0
                        while idx < _1292:
                            mem[idx + _1290 + 68] = mem[idx + _1274 + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_1292) > _1292:
                            mem[_1290 + _1292 + 68] = 0
                        revert with memory
                          from mem[64]
                           len ceil32(_1292) + _1290 + -mem[64] + 68
                    if return_data.size <= 3:
                        if return_data.size:
                            _1260 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_1260] = return_data.size
                            mem[_1260 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    else:
                        mem[0 len 4] = ext_call.return_data[0 len 4]
                        if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
                            if return_data.size:
                                _1261 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_1261] = return_data.size
                                mem[_1261 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        else:
                            if return_data.size < 68:
                                if return_data.size:
                                    _1268 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_1268] = return_data.size
                                    mem[_1268 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            else:
                                _1262 = mem[64]
                                mem[mem[64] len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
                                if 0, Mask(224, 32, _999) >> 32 > test266151307() or 0, Mask(224, 32, _999) >> 32 + 36 > return_data.size:
                                    if return_data.size:
                                        _1269 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_1269] = return_data.size
                                        mem[_1269 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    if mem[mem[64] + 0, Mask(224, 32, _999) >> 32] > test266151307():
                                        if return_data.size:
                                            _1270 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_1270] = return_data.size
                                            mem[_1270 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if 0, Mask(224, 32, _999) >> 32 + mem[mem[64] + 0, Mask(224, 32, _999) >> 32] + 32 > return_data.size - 4:
                                            if return_data.size:
                                                _1271 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_1271] = return_data.size
                                                mem[_1271 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if mem[64] + floor32(0, Mask(224, 32, _999) >> 32 + mem[mem[64] + 0, Mask(224, 32, _999) >> 32] + 31) + 1 < mem[64] or mem[64] + floor32(0, Mask(224, 32, _999) >> 32 + mem[mem[64] + 0, Mask(224, 32, _999) >> 32] + 31) + 1 > test266151307():
                                                revert with 0, 65
                                            mem[64] = mem[64] + floor32(0, Mask(224, 32, _999) >> 32 + mem[mem[64] + 0, Mask(224, 32, _999) >> 32] + 31) + 1
                                            if not _1262 + 0, Mask(224, 32, _999) >> 32:
                                                if return_data.size:
                                                    _1272 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_1272] = return_data.size
                                                    mem[_1272 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
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
            _249 = mem[160]
            mem[ceil32(32 * ('cd', 4).length) + 133] = ROUTERAddress
            mem[ceil32(32 * ('cd', 4).length) + 165] = msg.value
            call address(_249).approve(address arg1, uint256 arg2) with:
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
            _460 = mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 129 len 4], Mask(224, 32, msg.value * uint8(-uint8(cd[36]) + 100) / 100) >> 32
            require mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 129 len 4], Mask(224, 32, msg.value * uint8(-uint8(cd[36]) + 100) / 100) >> 32 <= test266151307()
            require ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + return_data.size + 129 > ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 129 len 4], Mask(224, 32, msg.value * uint8(-uint8(cd[36]) + 100) / 100) >> 32 + 160
            _462 = mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 129 len 4], Mask(224, 32, msg.value * uint8(-uint8(cd[36]) + 100) / 100) >> 32 + 129]
            if mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 129 len 4], Mask(224, 32, msg.value * uint8(-uint8(cd[36]) + 100) / 100) >> 32 + 129] > test266151307():
                revert with 0, 65
            if ceil32(32 * mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 129 len 4], Mask(224, 32, msg.value * uint8(-uint8(cd[36]) + 100) / 100) >> 32 + 129]) + 1 < 0 or ceil32(32 * ('cd', 4).length) + (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 129 len 4], Mask(224, 32, msg.value * uint8(-uint8(cd[36]) + 100) / 100) >> 32 + 129]) + 130 > test266151307():
                revert with 0, 65
            mem[64] = ceil32(32 * ('cd', 4).length) + (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 129 len 4], Mask(224, 32, msg.value * uint8(-uint8(cd[36]) + 100) / 100) >> 32 + 129]) + 130
            mem[ceil32(32 * ('cd', 4).length) + (2 * ceil32(return_data.size)) + 129] = _462
            require _460 + (32 * _462) + 32 <= return_data.size
            mem[ceil32(32 * ('cd', 4).length) + (2 * ceil32(return_data.size)) + 161 len ceil32(32 * _462)] = mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + _460 + 161 len ceil32(32 * _462)]
            if ('cd', 4).length < 1:
                revert with 0, 17
            if ('cd', 4).length - 1 >= _462:
                revert with 0, 50
            _665 = mem[(32 * ('cd', 4).length - 1) + ceil32(32 * ('cd', 4).length) + (2 * ceil32(return_data.size)) + 161]
            mem[mem[64]] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _665
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
                args _665, Array(len=('cd', 4).length, data=mem[mem[64] + 164 len 32 * ('cd', 4).length]), stor1, block.timestamp
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if 0 >= ('cd', 4).length:
                revert with 0, 50
            _837 = mem[160]
            mem[mem[64] + 4] = stor1
            staticcall address(_837).0x70a08231 with:
                    gas gas_remaining wei
                   args stor1
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _845 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _848 = mem[_845]
            if 0 >= ('cd', 4).length:
                revert with 0, 50
            _852 = mem[160]
            mem[mem[64] + 4] = ROUTERAddress
            staticcall address(_852).0x70a08231 with:
                    gas gas_remaining wei
                   args ROUTERAddress
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _855 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _859 = mem[_855]
            if 0 >= ('cd', 4).length:
                revert with 0, 50
            _866 = mem[160]
            mem[mem[64] + 4] = ROUTERAddress
            mem[mem[64] + 36] = _848
            call address(_866).0xa9059cbb with:
                 gas gas_remaining wei
                args ROUTERAddress, _848
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _871 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_871] == bool(mem[_871])
            if 0 >= ('cd', 4).length:
                revert with 0, 50
            _890 = mem[160]
            mem[mem[64] + 4] = ROUTERAddress
            staticcall address(_890).0x70a08231 with:
                    gas gas_remaining wei
                   args ROUTERAddress
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _898 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _903 = mem[_898]
            if mem[_898] < _859:
                revert with 0, 17
            if mem[_898] - _859 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                revert with 0, 17
            if not _848:
                revert with 0, 18
            if 1000 < (1000 * mem[_898]) - (1000 * _859) / _848:
                revert with 0, 17
            if not -((1000 * mem[_898]) - (1000 * _859) / _848) + 1000:
                revert with 0, '0', 0
            s = 0
            idx = -((1000 * mem[_898]) - (1000 * _859) / _848) + 1000
            while idx:
                if s == -1:
                    revert with 0, 17
                s = s + 1
                idx = idx / 10
                continue 
            if s > test266151307():
                revert with 0, 65
            _977 = mem[64]
            mem[mem[64]] = s
            mem[64] = mem[64] + ceil32(s) + 32
            if not s:
                t = s
                idx = -((1000 * _903) - (1000 * _859) / _848) + 1000
                while idx:
                    if t < 1:
                        revert with 0, 17
                    if idx / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                        revert with 0, 17
                    if idx < 10 * idx / 10:
                        revert with 0, 17
                    if 48 > -uint8(idx - (10 * idx / 10)) + 255:
                        revert with 0, 17
                    if t - 1 >= mem[_977]:
                        revert with 0, 50
                    mem[t + _977 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _1094 = mem[_977]
                mem[mem[64] + 36] = mem[_977]
                mem[mem[64] + 68 len ceil32(_1094)] = mem[_977 + 32 len ceil32(_1094)]
                if ceil32(_1094) > _1094:
                    mem[mem[64] + _1094 + 68] = 0
                revert with 0, 32, mem[mem[64] + 36 len ceil32(_1094) + 32]
            mem[_977 + 32 len s] = call.data[calldata.size len s]
            t = s
            idx = -((1000 * _903) - (1000 * _859) / _848) + 1000
            while idx:
                if t < 1:
                    revert with 0, 17
                if idx / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                    revert with 0, 17
                if idx < 10 * idx / 10:
                    revert with 0, 17
                if 48 > -uint8(idx - (10 * idx / 10)) + 255:
                    revert with 0, 17
                if t - 1 >= mem[_977]:
                    revert with 0, 50
                mem[t + _977 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _1095 = mem[_977]
            mem[mem[64] + 36] = mem[_977]
            mem[mem[64] + 68 len ceil32(_1095)] = mem[_977 + 32 len ceil32(_1095)]
            if ceil32(_1095) > _1095:
                mem[mem[64] + _1095 + 68] = 0
            revert with 0, 32, mem[mem[64] + 36 len ceil32(_1095) + 32]
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
                    _669 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 130 len 4], Mask(224, 32, msg.value) >> 32
                    require mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 130 len 4], Mask(224, 32, msg.value) >> 32 <= test266151307()
                    require ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + return_data.size + 130 > ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 130 len 4], Mask(224, 32, msg.value) >> 32 + 161
                    _673 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 130 len 4], Mask(224, 32, msg.value) >> 32 + 130]
                    if mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 130 len 4], Mask(224, 32, msg.value) >> 32 + 130] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 130 len 4], Mask(224, 32, msg.value) >> 32 + 130]) + 1 < 0 or ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 130 len 4], Mask(224, 32, msg.value) >> 32 + 130]) + 131 > test266151307():
                        revert with 0, 65
                    mem[64] = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 130 len 4], Mask(224, 32, msg.value) >> 32 + 130]) + 131
                    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + 130] = _673
                    require _669 + (32 * _673) + 32 <= return_data.size
                    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + 162 len ceil32(32 * _673)] = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + _669 + 162 len ceil32(32 * _673)]
                    if ('cd', 4).length < 1:
                        revert with 0, 17
                    if ('cd', 4).length - 1 >= _673:
                        revert with 0, 50
                    _844 = mem[(32 * ('cd', 4).length - 1) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + 162]
                    if mem[(32 * ('cd', 4).length - 1) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + 162] and uint8(-uint8(cd[68]) + 100) > -1 / mem[(32 * ('cd', 4).length - 1) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + 162]:
                        revert with 0, 17
                    mem[mem[64]] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _844 * uint8(-uint8(cd[68]) + 100) / 100
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
                        args _844 * uint8(-uint8(cd[68]) + 100) / 100, Array(len=('cd', 4).length, data=mem[mem[64] + 164 len 32 * ('cd', 4).length]), stor1, block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if 0 >= mem[ceil32(32 * ('cd', 4).length) + 129]:
                        revert with 0, 50
                    _989 = mem[ceil32(32 * ('cd', 4).length) + 161]
                    mem[mem[64] + 4] = stor1
                    staticcall address(_989).0x70a08231 with:
                            gas gas_remaining wei
                           args stor1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _995 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1001 = mem[_995]
                    if not mem[_995]:
                        revert with 0, 'Broke'
                    if 0 >= mem[ceil32(32 * ('cd', 4).length) + 129]:
                        revert with 0, 50
                    _1016 = mem[ceil32(32 * ('cd', 4).length) + 161]
                    mem[mem[64] + 4] = ROUTERAddress
                    mem[mem[64] + 36] = _1001
                    call address(_1016).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args ROUTERAddress, _1001
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1025 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1025] == bool(mem[_1025])
                    if 100 < uint8(cd[100]):
                        revert with 0, 17
                    _1036 = mem[64]
                    mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _1001
                    mem[mem[64] + 36] = 64
                    _1038 = mem[ceil32(32 * ('cd', 4).length) + 129]
                    mem[mem[64] + 68] = mem[ceil32(32 * ('cd', 4).length) + 129]
                    idx = 0
                    s = ceil32(32 * ('cd', 4).length) + 161
                    t = mem[64] + 100
                    while idx < _1038:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    staticcall stor3.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _1036 + (32 * _1038) + -mem[64] + 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1099 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1103 = mem[_1099]
                    require mem[_1099] <= test266151307()
                    require _1099 + return_data.size > _1099 + mem[_1099] + 31
                    _1111 = mem[_1099 + mem[_1099]]
                    if mem[_1099 + mem[_1099]] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[_1099 + mem[_1099]]) + 1 < 0 or _1099 + ceil32(return_data.size) + ceil32(32 * mem[_1099 + mem[_1099]]) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = _1099 + ceil32(return_data.size) + ceil32(32 * mem[_1099 + mem[_1099]]) + 1
                    mem[_1099 + ceil32(return_data.size)] = _1111
                    require _1103 + (32 * _1111) + 32 <= return_data.size
                    mem[_1099 + ceil32(return_data.size) + 32 len ceil32(32 * _1111)] = mem[_1099 + _1103 + 32 len ceil32(32 * _1111)]
                    if mem[ceil32(32 * ('cd', 4).length) + 129] < 1:
                        revert with 0, 17
                    if mem[ceil32(32 * ('cd', 4).length) + 129] - 1 >= _1111:
                        revert with 0, 50
                    _1183 = mem[(32 * mem[ceil32(32 * ('cd', 4).length) + 129] - 1) + _1099 + ceil32(return_data.size) + 32]
                    if mem[(32 * mem[ceil32(32 * ('cd', 4).length) + 129] - 1) + _1099 + ceil32(return_data.size) + 32] and uint8(-uint8(cd[100]) + 100) > -1 / mem[(32 * mem[ceil32(32 * ('cd', 4).length) + 129] - 1) + _1099 + ceil32(return_data.size) + 32]:
                        revert with 0, 17
                    mem[mem[64]] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _1001
                    mem[mem[64] + 36] = _1183 * uint8(-uint8(cd[100]) + 100) / 100
                    mem[mem[64] + 68] = 160
                    _1191 = mem[ceil32(32 * ('cd', 4).length) + 129]
                    mem[mem[64] + 164] = mem[ceil32(32 * ('cd', 4).length) + 129]
                    idx = 0
                    s = ceil32(32 * ('cd', 4).length) + 161
                    t = mem[64] + 196
                    while idx < _1191:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(stor3)
                    call stor3.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args _1001, _1183 * uint8(-uint8(cd[100]) + 100) / 100, 160, msg.sender, block.timestamp, mem[mem[64] + 164 len (32 * _1191) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
}



}
