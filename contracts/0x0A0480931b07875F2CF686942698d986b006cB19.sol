contract main {




// =====================  Runtime code  =====================


address owner;
uint256 stor1;
uint256 feeRate;
address feeAddress;
mapping of uint256 sub_40c3e5db;
mapping of uint8 stor5;

function sub_40c3e5db(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_40c3e5db[arg1]
}

function feeAddress() payable {
    return feeAddress
}

function sub_743c998e(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor5[arg1])
}

function owner() payable {
    return owner
}

function feeRate() payable {
    return feeRate
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function setFeeRate(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    feeRate = arg1
}

function setFeeAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    feeAddress = arg1
}

function sub_6f2065bc(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == address(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_40c3e5db[address(arg2)] = arg1
}

function sub_8d222e0d(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == bool(arg1)
    require arg2 == address(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor5[address(arg2)] = uint8(bool(arg1))
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function sub_1d5f46cf(?) payable {
    require calldata.size - 4 >= 128
    require cd[4] == address(cd[4])
    require cd[36] == address(cd[36])
    require cd[68] == cd[68]
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    if ('cd', 100).length > test266151307():
        revert with 'NH{q', 65
    if (32 * ('cd', 100).length) + 128 > test266151307() or (32 * ('cd', 100).length) + 128 < 96:
        revert with 'NH{q', 65
    mem[64] = (32 * ('cd', 100).length) + 128
    mem[96] = ('cd', 100).length
    idx = 0
    s = cd[100] + 36
    t = 128
    while idx < ('cd', 100).length:
        require calldata.size + -cd[100] + -cd[s] - 36 >= 160
        _56 = mem[64]
        if mem[64] + 160 > test266151307() or mem[64] + 160 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + 160
        require cd[(cd[100] + cd[s] + 36)] == address(cd[(cd[100] + cd[s] + 36)])
        mem[_56] = cd[(cd[100] + cd[s] + 36)]
        require cd[(cd[100] + cd[s] + 68)] == address(cd[(cd[100] + cd[s] + 68)])
        mem[_56 + 32] = cd[(cd[100] + cd[s] + 68)]
        require cd[(cd[100] + cd[s] + 100)] == address(cd[(cd[100] + cd[s] + 100)])
        mem[_56 + 64] = cd[(cd[100] + cd[s] + 100)]
        require cd[(cd[100] + cd[s] + 132)] <= test266151307()
        require cd[100] + cd[s] + cd[(cd[100] + cd[s] + 132)] + 67 < calldata.size
        if cd[(cd[100] + cd[s] + cd[(cd[100] + cd[s] + 132)] + 36)] > test266151307():
            revert with 'NH{q', 65
        _73 = mem[64]
        if mem[64] + (32 * cd[(cd[100] + cd[s] + cd[(cd[100] + cd[s] + 132)] + 36)]) + 32 > test266151307() or mem[64] + (32 * cd[(cd[100] + cd[s] + cd[(cd[100] + cd[s] + 132)] + 36)]) + 32 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + (32 * cd[(cd[100] + cd[s] + cd[(cd[100] + cd[s] + 132)] + 36)]) + 32
        mem[_73] = cd[(cd[100] + cd[s] + cd[(cd[100] + cd[s] + 132)] + 36)]
        require cd[100] + cd[s] + cd[(cd[100] + cd[s] + 132)] + (32 * cd[(cd[100] + cd[s] + cd[(cd[100] + cd[s] + 132)] + 36)]) + 68 <= calldata.size
        u = 0
        v = cd[100] + cd[v] + cd[(cd[100] + cd[v] + 132)] + 68
        w = _73 + 32
        while u < cd[(cd[100] + cd[v] + cd[(cd[100] + cd[v] + 132)] + 36)]:
            require cd[v] == address(cd[v])
            mem[w] = cd[v]
            u = u + 1
            v = v + 32
            w = w + 32
            continue 
        mem[_56 + 96] = _73
        require cd[(cd[100] + cd[v] + 164)] == cd[(cd[100] + cd[v] + 164)]
        mem[_56 + 128] = cd[(cd[100] + cd[v] + 164)]
        mem[w] = _56
        u = u + 1
        v = v + 32
        w = w + 32
        continue 
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    mem[mem[64] + 4] = msg.sender
    mem[mem[64] + 36] = this.address
    mem[mem[64] + 68] = cd[68]
    require ext_code.size(address(cd[4]))
    call address(cd[4]).0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), cd[68]
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _61 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_61] == bool(mem[_61])
    require mem[_61]
    _119 = mem[96]
    idx = 0
    while idx < _119:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _122 = mem[(32 * idx) + 128]
        mem[0] = mem[mem[(32 * idx) + 128] + 76 len 20]
        mem[32] = 5
        require stor5[mem[mem[(32 * idx) + 128] + 76 len 20]]
        _125 = mem[mem[(32 * idx) + 128] + 64]
        _126 = mem[mem[(32 * idx) + 128] + 96]
        _127 = mem[mem[(32 * idx) + 128] + 128]
        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _127
        mem[mem[64] + 36] = 64
        _131 = mem[_126]
        mem[mem[64] + 68] = mem[_126]
        s = 0
        t = _126 + 32
        u = mem[64] + 100
        while s < _131:
            mem[u] = mem[t + 12 len 20]
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        require ext_code.size(address(_125))
        staticcall address(_125).getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args _127, 64, mem[mem[64] + 68 len (32 * _131) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _176 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _177 = mem[_176]
        require mem[_176] <= test266151307()
        require _176 + mem[_176] + 31 < _176 + return_data.size
        _178 = mem[_176 + mem[_176]]
        if mem[_176 + mem[_176]] > test266151307():
            revert with 'NH{q', 65
        if _176 + ceil32(return_data.size) + (32 * mem[_176 + mem[_176]]) + 32 > test266151307() or (32 * mem[_176 + mem[_176]]) + 32 < 0:
            revert with 'NH{q', 65
        mem[64] = _176 + ceil32(return_data.size) + (32 * mem[_176 + mem[_176]]) + 32
        mem[_176 + ceil32(return_data.size)] = _178
        require _177 + (32 * _178) + 32 <= return_data.size
        s = 0
        t = _176 + _177 + 32
        u = _176 + ceil32(return_data.size) + 32
        while s < _178:
            require mem[t] == mem[t]
            mem[u] = mem[t]
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        if mem[_126] < 1:
            revert with 'NH{q', 17
        if mem[_126] - 1 >= _178:
            revert with 'NH{q', 50
        _210 = mem[(32 * mem[_126] - 1) + _176 + ceil32(return_data.size) + 32]
        _211 = mem[_122]
        _213 = mem[_122 + 128]
        mem[mem[64] + 4] = mem[_122 + 76 len 20]
        mem[mem[64] + 36] = _213
        require ext_code.size(address(_211))
        call address(_211).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args mem[mem[64] + 4], _213
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _216 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_216] == bool(mem[_216])
        mem[0] = mem[_122 + 76 len 20]
        mem[32] = 4
        _220 = mem[_122 + 128]
        _221 = mem[_122 + 96]
        _222 = mem[64]
        mem[mem[64] + 32] = sub_40c3e5db[mem[0]]
        mem[mem[64] + 64] = _220
        mem[mem[64] + 96] = _210
        _223 = mem[_221]
        s = 0
        t = _221 + 32
        u = mem[64] + 128
        while s < _223:
            mem[u] = mem[t + 12 len 20]
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        mem[_222 + (32 * _223) + 128] = address(this.address)
        mem[_222 + (32 * _223) + 148] = block.timestamp
        _235 = mem[64]
        mem[mem[64]] = _222 + (32 * _223) + -mem[64] + 148
        mem[64] = _222 + (32 * _223) + 180
        _236 = mem[_122 + 64]
        _238 = mem[_235]
        s = 0
        while s < _238:
            mem[_222 + (32 * _223) + s + 180] = mem[_235 + s + 32]
            s = s + 32
            continue 
        if ceil32(_238) > _238:
            mem[_222 + (32 * _223) + _238 + 180] = 0
        call address(_236).mem[_222 + (32 * _223) + 180 len 4] with:
             gas gas_remaining wei
            args mem[_222 + (32 * _223) + 184 len _238 - 4]
        if return_data.size:
            mem[64] = _222 + (32 * _223) + ceil32(return_data.size) + 181
            mem[_222 + (32 * _223) + 180] = return_data.size
            mem[_222 + (32 * _223) + 212 len return_data.size] = ext_call.return_data[0 len return_data.size]
        require ext_call.success
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(cd[36]))
    staticcall address(cd[36]).0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _130 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _132 = mem[_130]
    require mem[_130] == mem[_130]
    if mem[_130] and feeRate > -1 / mem[_130]:
        revert with 'NH{q', 17
    if mem[_130] < mem[_130] * feeRate / 100000:
        revert with 'NH{q', 17
    mem[mem[64] + 4] = msg.sender
    mem[mem[64] + 36] = _132 - (_132 * feeRate / 100000)
    require ext_code.size(address(cd[36]))
    call address(cd[36]).0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, _132 - (_132 * feeRate / 100000)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _149 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_149] == bool(mem[_149])
    if _132 * feeRate / 100000 > 0:
        mem[mem[64] + 4] = feeAddress
        mem[mem[64] + 36] = _132 * feeRate / 100000
        require ext_code.size(address(cd[36]))
        call address(cd[36]).0xa9059cbb with:
             gas gas_remaining wei
            args feeAddress, _132 * feeRate / 100000
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _161 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_161] == bool(mem[_161])
    stor1 = 1
}



}
