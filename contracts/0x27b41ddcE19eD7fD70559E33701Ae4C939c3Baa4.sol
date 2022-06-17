contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint8 stor1;
uint256 stor2;
address sourceAddress;
address targetAddress;
mapping of uint8 stor5;

function isCaller(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor1[address(arg1)])
}

function owner() {
    return owner
}

function getSource() {
    return sourceAddress
}

function getTarget() {
    return targetAddress
}

function _fallback() payable {
    revert
}

function addCaller(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    stor1[address(arg1)] = 1
}

function sub_e294c26f(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    stor1[address(arg1)] = 0
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function setSource(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sourceAddress = arg1
}

function unvest(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, bool arg6) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    targetAddress = address(arg1)
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function sub_05971f9e(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require ext_code.size(address(arg1))
    call address(arg1).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function withdraw(address arg1, uint256 arg2, address arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg3), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_9582ed9e(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(arg1))
    call address(arg1).0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_1467b8ed(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args address(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg3:
        revert with 0, 17
    require ext_code.size(address(arg1))
    call address(arg1).0x23b872dd with:
         gas gas_remaining wei
        args address(arg2), this.address, ext_call.return_data[0] - arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_fbe9e751(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 4).length:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 1
        stor1[mem[(32 * idx) + 140 len 20]] = 1
        if idx > -2:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_b9a60609(?) payable {
    require calldata.size - 4 >= 64
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 36).length) + 97 < 96 or ceil32(32 * ('cd', 36).length) + 97 > test266151307():
        revert with 0, 65
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = 128
    while idx < ('cd', 36).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if cd[4] and ('cd', 36).length > -1 / cd[4]:
        revert with 0, 17
    if cd[4] * ('cd', 36).length <= eth.balance(this.address):
        idx = 0
        while idx < ('cd', 36).length:
            if idx >= ('cd', 36).length:
                revert with 0, 50
            call mem[(32 * idx) + 140 len 20] with:
               value cd[4] wei
                 gas 2300 * is_zero(value) wei
            if idx > -2:
                revert with 0, 17
            idx = idx + 1
            continue 
}

function sub_ce3160f9(?) {
    require calldata.size - 4 >= 96
    require arg2 == address(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[96] = 2
    mem[128] = sourceAddress
    mem[160] = targetAddress
    mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[196] = arg1
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
    require ext_code.size(address(arg2))
    staticcall address(arg2).getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args arg1, Array(len=2, data=mem[292 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    _63 = mem[192 len 4], Mask(224, 32, arg1) >> 32
    require mem[192 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
    require return_data.size + 192 > mem[192 len 4], Mask(224, 32, arg1) >> 32 + 223
    _64 = mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]
    if mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 1 < 0 or ceil32(return_data.size) + ceil32(32 * mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 193 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 193
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]
    require _63 + (32 * _64) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 224 len 32 * _64] = mem[_63 + 224 len 32 * _64]
    if _64 < 1:
        revert with 0, 17
    if _64 - 1 >= _64:
        revert with 0, 50
    require mem[(32 * _64 - 1) + ceil32(return_data.size) + 224] >= arg3
    mem[0] = sourceAddress
    mem[32] = sha3(address(arg2), 5)
    if stor5[address(arg2)][stor3]:
        if 0 >= _64:
            revert with 0, 50
        _122 = mem[ceil32(return_data.size) + 224]
        if _64 < 1:
            revert with 0, 17
        if _64 - 1 >= _64:
            revert with 0, 50
        _128 = mem[(32 * _64 - 1) + ceil32(return_data.size) + 224]
        if 100 > !block.timestamp:
            revert with 0, 17
        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _122
        mem[mem[64] + 36] = _128
        mem[mem[64] + 68] = 160
        mem[mem[64] + 164] = 2
        idx = 0
        s = 128
        t = mem[64] + 196
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 100] = this.address
        mem[mem[64] + 132] = block.timestamp + 100
        require ext_code.size(address(arg2))
        call address(arg2).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args _122, _128, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp + 100
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _162 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_162] <= test266151307()
        require _162 + return_data.size > _162 + mem[_162] + 31
        if mem[_162 + mem[_162]] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[_162 + mem[_162]]) + 1 < 0 or _162 + ceil32(return_data.size) + ceil32(32 * mem[_162 + mem[_162]]) + 1 > test266151307():
            revert with 0, 65
        require mem[_162] + (32 * mem[_162 + mem[_162]]) + 32 <= return_data.size
    else:
        mem[mem[64] + 4] = address(arg2)
        mem[mem[64] + 36] = stor2
        require ext_code.size(sourceAddress)
        call sourceAddress.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg2), stor2
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _129 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_129] == bool(mem[_129])
        mem[0] = sourceAddress
        mem[32] = sha3(address(arg2), 5)
        stor5[address(arg2)][stor3] = 1
        if 0 >= _64:
            revert with 0, 50
        _139 = mem[ceil32(return_data.size) + 224]
        if _64 < 1:
            revert with 0, 17
        if _64 - 1 >= _64:
            revert with 0, 50
        _144 = mem[(32 * _64 - 1) + ceil32(return_data.size) + 224]
        if 100 > !block.timestamp:
            revert with 0, 17
        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _139
        mem[mem[64] + 36] = _144
        mem[mem[64] + 68] = 160
        mem[mem[64] + 164] = 2
        idx = 0
        s = 128
        t = mem[64] + 196
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 100] = this.address
        mem[mem[64] + 132] = block.timestamp + 100
        require ext_code.size(address(arg2))
        call address(arg2).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args _139, _144, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp + 100
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _163 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_163] <= test266151307()
        require _163 + return_data.size > _163 + mem[_163] + 31
        if mem[_163 + mem[_163]] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[_163 + mem[_163]]) + 1 < 0 or _163 + ceil32(return_data.size) + ceil32(32 * mem[_163 + mem[_163]]) + 1 > test266151307():
            revert with 0, 65
        require mem[_163] + (32 * mem[_163 + mem[_163]]) + 32 <= return_data.size
}

function sub_e6fbe98a(?) {
    require calldata.size - 4 >= 128
    require cd[36] == address(cd[36])
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    if ('cd', 68).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 68).length) + 97 < 96 or ceil32(32 * ('cd', 68).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 68).length
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    idx = 0
    s = cd[68] + 36
    t = 128
    while idx < ('cd', 68).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[0] = msg.sender
    mem[32] = 1
    if not stor1[msg.sender]:
        revert with 0, 'Callable: caller is not the caller'
    mem[ceil32(32 * ('cd', 68).length) + 97] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[ceil32(32 * ('cd', 68).length) + 101] = cd[4]
    mem[ceil32(32 * ('cd', 68).length) + 133] = 64
    mem[ceil32(32 * ('cd', 68).length) + 165] = ('cd', 68).length
    idx = 0
    s = 128
    t = ceil32(32 * ('cd', 68).length) + 197
    while idx < ('cd', 68).length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(cd[36]))
    staticcall address(cd[36]).getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args cd[4], Array(len=('cd', 68).length, data=mem[ceil32(32 * ('cd', 68).length) + 197 len 32 * ('cd', 68).length])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(32 * ('cd', 68).length) + 97 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(32 * ('cd', 68).length) + ceil32(return_data.size) + 97
    require return_data.size >= 32
    _119 = mem[ceil32(32 * ('cd', 68).length) + 97 len 4], Mask(224, 32, cd[4]) >> 32
    require mem[ceil32(32 * ('cd', 68).length) + 97 len 4], Mask(224, 32, cd[4]) >> 32 <= test266151307()
    require ceil32(32 * ('cd', 68).length) + return_data.size + 97 > ceil32(32 * ('cd', 68).length) + mem[ceil32(32 * ('cd', 68).length) + 97 len 4], Mask(224, 32, cd[4]) >> 32 + 128
    _120 = mem[ceil32(32 * ('cd', 68).length) + mem[ceil32(32 * ('cd', 68).length) + 97 len 4], Mask(224, 32, cd[4]) >> 32 + 97]
    if mem[ceil32(32 * ('cd', 68).length) + mem[ceil32(32 * ('cd', 68).length) + 97 len 4], Mask(224, 32, cd[4]) >> 32 + 97] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[ceil32(32 * ('cd', 68).length) + mem[ceil32(32 * ('cd', 68).length) + 97 len 4], Mask(224, 32, cd[4]) >> 32 + 97]) + 1 < 0 or ceil32(32 * ('cd', 68).length) + ceil32(return_data.size) + ceil32(32 * mem[ceil32(32 * ('cd', 68).length) + mem[ceil32(32 * ('cd', 68).length) + 97 len 4], Mask(224, 32, cd[4]) >> 32 + 97]) + 98 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * ('cd', 68).length) + ceil32(return_data.size) + ceil32(32 * mem[ceil32(32 * ('cd', 68).length) + mem[ceil32(32 * ('cd', 68).length) + 97 len 4], Mask(224, 32, cd[4]) >> 32 + 97]) + 98
    mem[ceil32(32 * ('cd', 68).length) + ceil32(return_data.size) + 97] = _120
    require _119 + (32 * _120) + 32 <= return_data.size
    mem[ceil32(32 * ('cd', 68).length) + ceil32(return_data.size) + 129 len 32 * _120] = mem[ceil32(32 * ('cd', 68).length) + _119 + 129 len 32 * _120]
    if _120 < 1:
        revert with 0, 17
    if _120 - 1 >= _120:
        revert with 0, 50
    require mem[(32 * _120 - 1) + ceil32(32 * ('cd', 68).length) + ceil32(return_data.size) + 129] >= cd[100]
    if not ('cd', 68).length:
        revert with 0, 50
    mem[0] = mem[140 len 20]
    mem[32] = sha3(address(cd[36]), 5)
    if stor5[address(cd[36])][mem[140 len 20]]:
        if 0 >= _120:
            revert with 0, 50
        _178 = mem[ceil32(32 * ('cd', 68).length) + ceil32(return_data.size) + 129]
        if _120 < 1:
            revert with 0, 17
        if _120 - 1 >= _120:
            revert with 0, 50
        _184 = mem[(32 * _120 - 1) + ceil32(32 * ('cd', 68).length) + ceil32(return_data.size) + 129]
        if 100 > !block.timestamp:
            revert with 0, 17
        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _178
        mem[mem[64] + 36] = _184
        mem[mem[64] + 68] = 160
        mem[mem[64] + 164] = ('cd', 68).length
        idx = 0
        s = 128
        t = mem[64] + 196
        while idx < mem[96]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 100] = this.address
        mem[mem[64] + 132] = block.timestamp + 100
        require ext_code.size(address(cd[36]))
        call address(cd[36]).mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len 96], address(this.address), block.timestamp + 100, mem[mem[64] + 164 len (32 * ('cd', 68).length) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _218 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_218] <= test266151307()
        require _218 + return_data.size > _218 + mem[_218] + 31
        if mem[_218 + mem[_218]] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[_218 + mem[_218]]) + 1 < 0 or _218 + ceil32(return_data.size) + ceil32(32 * mem[_218 + mem[_218]]) + 1 > test266151307():
            revert with 0, 65
        require mem[_218] + (32 * mem[_218 + mem[_218]]) + 32 <= return_data.size
    else:
        if 0 >= ('cd', 68).length:
            revert with 0, 50
        _180 = mem[128]
        mem[mem[64] + 4] = address(cd[36])
        mem[mem[64] + 36] = stor2
        require ext_code.size(address(_180))
        call address(_180).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(cd[36]), stor2
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _185 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_185] == bool(mem[_185])
        if not ('cd', 68).length:
            revert with 0, 50
        mem[0] = mem[140 len 20]
        mem[32] = sha3(address(cd[36]), 5)
        stor5[address(cd[36])][mem[140 len 20]] = 1
        if 0 >= _120:
            revert with 0, 50
        _195 = mem[ceil32(32 * ('cd', 68).length) + ceil32(return_data.size) + 129]
        if _120 < 1:
            revert with 0, 17
        if _120 - 1 >= _120:
            revert with 0, 50
        _200 = mem[(32 * _120 - 1) + ceil32(32 * ('cd', 68).length) + ceil32(return_data.size) + 129]
        if 100 > !block.timestamp:
            revert with 0, 17
        _203 = mem[64]
        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _195
        mem[mem[64] + 36] = _200
        mem[mem[64] + 68] = 160
        mem[mem[64] + 164] = ('cd', 68).length
        idx = 0
        s = 128
        t = mem[64] + 196
        while idx < ('cd', 68).length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_203 + 100] = this.address
        mem[_203 + 132] = block.timestamp + 100
        require ext_code.size(address(cd[36]))
        call address(cd[36]).mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _203 + (32 * ('cd', 68).length) + -mem[64] + 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _219 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_219] <= test266151307()
        require _219 + return_data.size > _219 + mem[_219] + 31
        if mem[_219 + mem[_219]] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[_219 + mem[_219]]) + 1 < 0 or _219 + ceil32(return_data.size) + ceil32(32 * mem[_219 + mem[_219]]) + 1 > test266151307():
            revert with 0, 65
        require mem[_219] + (32 * mem[_219 + mem[_219]]) + 32 <= return_data.size
}

function sub_1b0e7edf(?) {
    require calldata.size - 4 >= 96
    require cd[4] == address(cd[4])
    require cd[36] == address(cd[36])
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    if ('cd', 68).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 68).length) + 97 < 96 or ceil32(32 * ('cd', 68).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 68).length
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    idx = 0
    s = cd[68] + 36
    t = 128
    while idx < ('cd', 68).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[ceil32(32 * ('cd', 68).length) + 101] = msg.sender
    require ext_code.size(address(cd[4]))
    staticcall address(cd[4]).0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    mem[ceil32(32 * ('cd', 68).length) + 97] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(32 * ('cd', 68).length) + ceil32(return_data.size) + 101] = msg.sender
    mem[ceil32(32 * ('cd', 68).length) + ceil32(return_data.size) + 133] = this.address
    mem[ceil32(32 * ('cd', 68).length) + ceil32(return_data.size) + 165] = ext_call.return_data[0]
    require ext_code.size(address(cd[4]))
    call address(cd[4]).0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, ext_call.return_data[0]
    mem[ceil32(32 * ('cd', 68).length) + ceil32(return_data.size) + 97] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[ceil32(32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 101] = this.address
    require ext_code.size(address(cd[4]))
    staticcall address(cd[4]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 97] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(32 * ('cd', 68).length) + (4 * ceil32(return_data.size)) + 97] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[ceil32(32 * ('cd', 68).length) + (4 * ceil32(return_data.size)) + 101] = ext_call.return_data[0]
    mem[ceil32(32 * ('cd', 68).length) + (4 * ceil32(return_data.size)) + 133] = 64
    mem[ceil32(32 * ('cd', 68).length) + (4 * ceil32(return_data.size)) + 165] = ('cd', 68).length
    idx = 0
    s = 128
    t = ceil32(32 * ('cd', 68).length) + (4 * ceil32(return_data.size)) + 197
    while idx < ('cd', 68).length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(cd[36]))
    staticcall address(cd[36]).getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args ext_call.return_data[0], Array(len=('cd', 68).length, data=mem[ceil32(32 * ('cd', 68).length) + (4 * ceil32(return_data.size)) + 197 len 32 * ('cd', 68).length])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(32 * ('cd', 68).length) + (4 * ceil32(return_data.size)) + 97 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(32 * ('cd', 68).length) + (6 * ceil32(return_data.size)) + 97
    require return_data.size >= 32
    _137 = mem[ceil32(32 * ('cd', 68).length) + (4 * ceil32(return_data.size)) + 97 len 4], ext_call.return_data[0 len 28]
    require mem[ceil32(32 * ('cd', 68).length) + (4 * ceil32(return_data.size)) + 97 len 4], ext_call.return_data[0 len 28] <= test266151307()
    require ceil32(32 * ('cd', 68).length) + (4 * ceil32(return_data.size)) + return_data.size + 97 > ceil32(32 * ('cd', 68).length) + (4 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 68).length) + (4 * ceil32(return_data.size)) + 97 len 4], ext_call.return_data[0 len 28] + 128
    _138 = mem[ceil32(32 * ('cd', 68).length) + (4 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 68).length) + (4 * ceil32(return_data.size)) + 97 len 4], ext_call.return_data[0 len 28] + 97]
    if mem[ceil32(32 * ('cd', 68).length) + (4 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 68).length) + (4 * ceil32(return_data.size)) + 97 len 4], ext_call.return_data[0 len 28] + 97] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[ceil32(32 * ('cd', 68).length) + (4 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 68).length) + (4 * ceil32(return_data.size)) + 97 len 4], ext_call.return_data[0 len 28] + 97]) + 1 < 0 or ceil32(32 * ('cd', 68).length) + (6 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(32 * ('cd', 68).length) + (4 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 68).length) + (4 * ceil32(return_data.size)) + 97 len 4], ext_call.return_data[0 len 28] + 97]) + 98 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * ('cd', 68).length) + (6 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(32 * ('cd', 68).length) + (4 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 68).length) + (4 * ceil32(return_data.size)) + 97 len 4], ext_call.return_data[0 len 28] + 97]) + 98
    mem[ceil32(32 * ('cd', 68).length) + (6 * ceil32(return_data.size)) + 97] = _138
    require _137 + (32 * _138) + 32 <= return_data.size
    mem[ceil32(32 * ('cd', 68).length) + (6 * ceil32(return_data.size)) + 129 len 32 * _138] = mem[ceil32(32 * ('cd', 68).length) + (4 * ceil32(return_data.size)) + _137 + 129 len 32 * _138]
    if _138 < 1:
        revert with 0, 17
    if _138 - 1 >= _138:
        revert with 0, 50
    require mem[(32 * _138 - 1) + ceil32(32 * ('cd', 68).length) + (6 * ceil32(return_data.size)) + 129] >= 0
    if not ('cd', 68).length:
        revert with 0, 50
    mem[0] = mem[140 len 20]
    mem[32] = sha3(address(cd[36]), 5)
    if stor5[address(cd[36])][mem[140 len 20]]:
        if 0 >= _138:
            revert with 0, 50
        _196 = mem[ceil32(32 * ('cd', 68).length) + (6 * ceil32(return_data.size)) + 129]
        if _138 < 1:
            revert with 0, 17
        if _138 - 1 >= _138:
            revert with 0, 50
        _202 = mem[(32 * _138 - 1) + ceil32(32 * ('cd', 68).length) + (6 * ceil32(return_data.size)) + 129]
        if 100 > !block.timestamp:
            revert with 0, 17
        _205 = mem[64]
        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _196
        mem[mem[64] + 36] = _202
        mem[mem[64] + 68] = 160
        mem[mem[64] + 164] = ('cd', 68).length
        idx = 0
        s = 128
        t = mem[64] + 196
        while idx < ('cd', 68).length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_205 + 100] = this.address
        mem[_205 + 132] = block.timestamp + 100
        require ext_code.size(address(cd[36]))
        call address(cd[36]).mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _205 + (32 * ('cd', 68).length) + -mem[64] + 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _236 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_236] <= test266151307()
        require _236 + return_data.size > _236 + mem[_236] + 31
        if mem[_236 + mem[_236]] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[_236 + mem[_236]]) + 1 < 0 or _236 + ceil32(return_data.size) + ceil32(32 * mem[_236 + mem[_236]]) + 1 > test266151307():
            revert with 0, 65
        require mem[_236] + (32 * mem[_236 + mem[_236]]) + 32 <= return_data.size
    else:
        if 0 >= ('cd', 68).length:
            revert with 0, 50
        _198 = mem[128]
        mem[mem[64] + 4] = address(cd[36])
        mem[mem[64] + 36] = stor2
        require ext_code.size(address(_198))
        call address(_198).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(cd[36]), stor2
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _203 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_203] == bool(mem[_203])
        if not ('cd', 68).length:
            revert with 0, 50
        mem[0] = mem[140 len 20]
        mem[32] = sha3(address(cd[36]), 5)
        stor5[address(cd[36])][mem[140 len 20]] = 1
        if 0 >= _138:
            revert with 0, 50
        _213 = mem[ceil32(32 * ('cd', 68).length) + (6 * ceil32(return_data.size)) + 129]
        if _138 < 1:
            revert with 0, 17
        if _138 - 1 >= _138:
            revert with 0, 50
        _218 = mem[(32 * _138 - 1) + ceil32(32 * ('cd', 68).length) + (6 * ceil32(return_data.size)) + 129]
        if 100 > !block.timestamp:
            revert with 0, 17
        _221 = mem[64]
        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _213
        mem[mem[64] + 36] = _218
        mem[mem[64] + 68] = 160
        mem[mem[64] + 164] = ('cd', 68).length
        idx = 0
        s = 128
        t = mem[64] + 196
        while idx < ('cd', 68).length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_221 + 100] = this.address
        mem[_221 + 132] = block.timestamp + 100
        require ext_code.size(address(cd[36]))
        call address(cd[36]).mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _221 + (32 * ('cd', 68).length) + -mem[64] + 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _237 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_237] <= test266151307()
        require _237 + return_data.size > _237 + mem[_237] + 31
        if mem[_237 + mem[_237]] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[_237 + mem[_237]]) + 1 < 0 or _237 + ceil32(return_data.size) + ceil32(32 * mem[_237 + mem[_237]]) + 1 > test266151307():
            revert with 0, 65
        require mem[_237] + (32 * mem[_237 + mem[_237]]) + 32 <= return_data.size
}

function sub_97f7c18f(?) {
    require calldata.size - 4 >= 96
    require arg2 == address(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[96] = 2
    mem[128] = targetAddress
    mem[160] = sourceAddress
    if arg1:
        mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[196] = arg1
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
        require ext_code.size(address(arg2))
        staticcall address(arg2).getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg1, Array(len=2, data=mem[292 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 192
        require return_data.size >= 32
        _125 = mem[192 len 4], Mask(224, 32, arg1) >> 32
        require mem[192 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
        require return_data.size + 192 > mem[192 len 4], Mask(224, 32, arg1) >> 32 + 223
        _127 = mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]
        if mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 1 < 0 or ceil32(return_data.size) + ceil32(32 * mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 193 > test266151307():
            revert with 0, 65
        mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 193
        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]
        require _125 + (32 * _127) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 224 len 32 * _127] = mem[_125 + 224 len 32 * _127]
        if _127 < 1:
            revert with 0, 17
        if _127 - 1 >= _127:
            revert with 0, 50
        require mem[(32 * _127 - 1) + ceil32(return_data.size) + 224] >= arg3
        mem[0] = targetAddress
        mem[32] = sha3(address(arg2), 5)
        if stor5[address(arg2)][stor4]:
            if 0 >= _127:
                revert with 0, 50
            _245 = mem[ceil32(return_data.size) + 224]
            if _127 < 1:
                revert with 0, 17
            if _127 - 1 >= _127:
                revert with 0, 50
            _256 = mem[(32 * _127 - 1) + ceil32(return_data.size) + 224]
            if 100 > !block.timestamp:
                revert with 0, 17
            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _245
            mem[mem[64] + 36] = _256
            mem[mem[64] + 68] = 160
            mem[mem[64] + 164] = 2
            idx = 0
            s = 128
            t = mem[64] + 196
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 100] = this.address
            mem[mem[64] + 132] = block.timestamp + 100
            require ext_code.size(address(arg2))
            call address(arg2).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args _245, _256, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp + 100
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _324 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_324] <= test266151307()
            require _324 + return_data.size > _324 + mem[_324] + 31
            if mem[_324 + mem[_324]] > test266151307():
                revert with 0, 65
            if ceil32(32 * mem[_324 + mem[_324]]) + 1 < 0 or _324 + ceil32(return_data.size) + ceil32(32 * mem[_324 + mem[_324]]) + 1 > test266151307():
                revert with 0, 65
            require mem[_324] + (32 * mem[_324 + mem[_324]]) + 32 <= return_data.size
        else:
            mem[mem[64] + 4] = address(arg2)
            mem[mem[64] + 36] = stor2
            require ext_code.size(targetAddress)
            call targetAddress.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg2), stor2
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _257 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_257] == bool(mem[_257])
            mem[0] = targetAddress
            mem[32] = sha3(address(arg2), 5)
            stor5[address(arg2)][stor4] = 1
            if 0 >= _127:
                revert with 0, 50
            _278 = mem[ceil32(return_data.size) + 224]
            if _127 < 1:
                revert with 0, 17
            if _127 - 1 >= _127:
                revert with 0, 50
            _287 = mem[(32 * _127 - 1) + ceil32(return_data.size) + 224]
            if 100 > !block.timestamp:
                revert with 0, 17
            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _278
            mem[mem[64] + 36] = _287
            mem[mem[64] + 68] = 160
            mem[mem[64] + 164] = 2
            idx = 0
            s = 128
            t = mem[64] + 196
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 100] = this.address
            mem[mem[64] + 132] = block.timestamp + 100
            require ext_code.size(address(arg2))
            call address(arg2).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args _278, _287, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp + 100
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _325 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_325] <= test266151307()
            require _325 + return_data.size > _325 + mem[_325] + 31
            if mem[_325 + mem[_325]] > test266151307():
                revert with 0, 65
            if ceil32(32 * mem[_325 + mem[_325]]) + 1 < 0 or _325 + ceil32(return_data.size) + ceil32(32 * mem[_325 + mem[_325]]) + 1 > test266151307():
                revert with 0, 65
            require mem[_325] + (32 * mem[_325 + mem[_325]]) + 32 <= return_data.size
    else:
        mem[196] = this.address
        require ext_code.size(targetAddress)
        staticcall targetAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[192] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 196] = ext_call.return_data[0]
        mem[ceil32(return_data.size) + 228] = 64
        mem[ceil32(return_data.size) + 260] = 2
        idx = 0
        s = 128
        t = ceil32(return_data.size) + 292
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(address(arg2))
        staticcall address(arg2).getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args ext_call.return_data[0], Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (2 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        _124 = mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28]
        require mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] <= test266151307()
        require ceil32(return_data.size) + return_data.size + 192 > ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] + 223
        _126 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] + 192]
        if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] + 192] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193 > test266151307():
            revert with 0, 65
        mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193
        mem[(2 * ceil32(return_data.size)) + 192] = _126
        require _124 + (32 * _126) + 32 <= return_data.size
        mem[(2 * ceil32(return_data.size)) + 224 len 32 * _126] = mem[ceil32(return_data.size) + _124 + 224 len 32 * _126]
        if _126 < 1:
            revert with 0, 17
        if _126 - 1 >= _126:
            revert with 0, 50
        require mem[(32 * _126 - 1) + (2 * ceil32(return_data.size)) + 224] >= arg3
        mem[0] = targetAddress
        mem[32] = sha3(address(arg2), 5)
        if stor5[address(arg2)][stor4]:
            if 0 >= _126:
                revert with 0, 50
            _242 = mem[(2 * ceil32(return_data.size)) + 224]
            if _126 < 1:
                revert with 0, 17
            if _126 - 1 >= _126:
                revert with 0, 50
            _254 = mem[(32 * _126 - 1) + (2 * ceil32(return_data.size)) + 224]
            if 100 > !block.timestamp:
                revert with 0, 17
            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _242
            mem[mem[64] + 36] = _254
            mem[mem[64] + 68] = 160
            mem[mem[64] + 164] = 2
            idx = 0
            s = 128
            t = mem[64] + 196
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 100] = this.address
            mem[mem[64] + 132] = block.timestamp + 100
            require ext_code.size(address(arg2))
            call address(arg2).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args _242, _254, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp + 100
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _322 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_322] <= test266151307()
            require _322 + return_data.size > _322 + mem[_322] + 31
            if mem[_322 + mem[_322]] > test266151307():
                revert with 0, 65
            if ceil32(32 * mem[_322 + mem[_322]]) + 1 < 0 or _322 + ceil32(return_data.size) + ceil32(32 * mem[_322 + mem[_322]]) + 1 > test266151307():
                revert with 0, 65
            require mem[_322] + (32 * mem[_322 + mem[_322]]) + 32 <= return_data.size
        else:
            mem[mem[64] + 4] = address(arg2)
            mem[mem[64] + 36] = stor2
            require ext_code.size(targetAddress)
            call targetAddress.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg2), stor2
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _255 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_255] == bool(mem[_255])
            mem[0] = targetAddress
            mem[32] = sha3(address(arg2), 5)
            stor5[address(arg2)][stor4] = 1
            if 0 >= _126:
                revert with 0, 50
            _276 = mem[(2 * ceil32(return_data.size)) + 224]
            if _126 < 1:
                revert with 0, 17
            if _126 - 1 >= _126:
                revert with 0, 50
            _286 = mem[(32 * _126 - 1) + (2 * ceil32(return_data.size)) + 224]
            if 100 > !block.timestamp:
                revert with 0, 17
            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _276
            mem[mem[64] + 36] = _286
            mem[mem[64] + 68] = 160
            mem[mem[64] + 164] = 2
            idx = 0
            s = 128
            t = mem[64] + 196
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 100] = this.address
            mem[mem[64] + 132] = block.timestamp + 100
            require ext_code.size(address(arg2))
            call address(arg2).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args _276, _286, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp + 100
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _323 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_323] <= test266151307()
            require _323 + return_data.size > _323 + mem[_323] + 31
            if mem[_323 + mem[_323]] > test266151307():
                revert with 0, 65
            if ceil32(32 * mem[_323 + mem[_323]]) + 1 < 0 or _323 + ceil32(return_data.size) + ceil32(32 * mem[_323 + mem[_323]]) + 1 > test266151307():
                revert with 0, 65
            require mem[_323] + (32 * mem[_323 + mem[_323]]) + 32 <= return_data.size
}



}
