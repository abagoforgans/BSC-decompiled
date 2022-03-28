contract main {




// =====================  Runtime code  =====================


address owner;

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function withdraw(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        call msg.sender with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        mem[100] = this.address
        require ext_code.size(arg1)
        staticcall arg1.balanceOf(address rg1) with:
                gas gas_remaining wei
               args this.address
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        mem[ceil32(return_data.size) + 132] = msg.sender
        mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
        mem[ceil32(return_data.size) + 96] = 68
        mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
        mem[ceil32(return_data.size) + 128 len 4] = transfer(address rg1, uint256 rg2)
        mem[ceil32(return_data.size) + 196] = 32
        mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
        if ext_code.hash(arg1) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
            revert with 0, 'Address: call to non-contract'
        if not ext_code.hash(arg1):
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 260 len 64] = transfer(address rg1, uint256 rg2), msg.sender, ext_call.return_data[0 len 28]
        mem[ceil32(return_data.size) + 352 len 4] = 0
        call arg1 with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[ceil32(return_data.size) + 324 len 4]
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0] > 0:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0] >= 32
                if not 0, mem[132 len 28]:
                    revert with 0, 
                                32,
                                42,
                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 370 len 22]
        else:
            mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[ceil32(return_data.size) + 292]:
                    revert with 0, 
                                32,
                                42,
                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + ceil32(return_data.size) + 371 len 22]
}

function sub_9c3f6bca(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == arg3
    require arg4 == arg4
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[96] = 2
    mem[128] = 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
    mem[160] = address(arg2)
    mem[192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
    mem[196] = arg3
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
    require ext_code.size(address(arg1))
    staticcall address(arg1).getAmountsIn(uint256 rg1, address[] rg2) with:
            gas gas_remaining wei
           args arg3, Array(len=2, data=mem[292 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    _32 = mem[192 len 4], Mask(224, 32, arg3) >> 32
    require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
    require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 223 < return_data.size + 192
    _33 = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
    require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= test266151307()
    require ceil32(return_data.size) + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 224 <= test266151307() and (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 >= 0
    mem[64] = ceil32(return_data.size) + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 224
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
    require _32 + (32 * _33) + 32 <= return_data.size
    idx = 0
    s = _32 + 224
    t = ceil32(return_data.size) + 224
    while idx < _33:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require 0 < _33
    _52 = mem[ceil32(return_data.size) + 224]
    _53 = mem[64]
    mem[mem[64]] = 0xfb3bdb4100000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = arg3
    mem[mem[64] + 36] = 128
    mem[mem[64] + 132] = 2
    idx = 0
    s = 128
    t = mem[64] + 164
    while idx < mem[96]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 68] = this.address
    mem[_53 + 100] = block.timestamp + arg4
    require ext_code.size(address(arg1))
    call address(arg1).mem[mem[64] len 4] with:
       value _52 wei
         gas gas_remaining wei
        args mem[mem[64] + 4 len _53 + -mem[64] + 224]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _67 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _68 = mem[_67]
    require mem[_67] <= test266151307()
    require _67 + mem[_67] + 31 < _67 + return_data.size
    _69 = mem[_67 + mem[_67]]
    require mem[_67 + mem[_67]] <= test266151307()
    require _67 + ceil32(return_data.size) + (32 * mem[_67 + mem[_67]]) + 32 <= test266151307() and (32 * mem[_67 + mem[_67]]) + 32 >= 0
    mem[64] = _67 + ceil32(return_data.size) + (32 * mem[_67 + mem[_67]]) + 32
    mem[_67 + ceil32(return_data.size)] = _69
    require _68 + (32 * _69) + 32 <= return_data.size
    idx = 0
    s = _67 + _68 + 32
    t = _67 + ceil32(return_data.size) + 32
    while idx < _69:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    call msg.sender with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
}

function sub_59937d4b(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] == cd[36]
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    s = cd[36]
    while idx < ('cd', 4).length:
        require cd[(cd[4] + (32 * idx) + 36)] < calldata.size + -cd[4] - 67
        require cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] <= test266151307()
        require cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68 <= calldata.size - (32 * cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)])
        require 0 < cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]
        require cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68)] == address(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68)])
        require idx + 1 < ('cd', 4).length
        require cd[(cd[4] + (32 * idx + 1) + 36)] < calldata.size + -cd[4] - 67
        require cd[(cd[4] + cd[(cd[4] + (32 * idx + 1) + 36)] + 36)] <= test266151307()
        require cd[4] + cd[(cd[4] + (32 * idx + 1) + 36)] + 68 <= calldata.size - (32 * cd[(cd[4] + cd[(cd[4] + (32 * idx + 1) + 36)] + 36)])
        _32 = mem[64]
        mem[64] = mem[64] + (32 * cd[(cd[4] + cd[(cd[4] + (32 * idx + 1) + 36)] + 36)]) + 32
        mem[_32] = cd[(cd[4] + cd[(cd[4] + (32 * idx + 1) + 36)] + 36)]
        mem[_32 + 32 len 32 * cd[(cd[4] + cd[(cd[4] + (32 * idx + 1) + 36)] + 36)]] = call.data[cd[4] + cd[(cd[4] + (32 * idx + 1) + 36)] + 68 len 32 * cd[(cd[4] + cd[(cd[4] + (32 * idx + 1) + 36)] + 36)]]
        mem[_32 + (32 * cd[(cd[4] + cd[(cd[4] + (32 * idx + 1) + 36)] + 36)]) + 32] = 0
        require cd[(cd[4] + cd[(cd[4] + (32 * idx + 1) + 36)] + 36)] - 1 < cd[(cd[4] + cd[(cd[4] + (32 * idx + 1) + 36)] + 36)]
        mem[mem[64] + 4] = this.address
        require ext_code.size(mem[(32 * cd[(cd[4] + cd[(cd[4] + (32 * idx + 1) + 36)] + 36)] - 1) + _32 + 44 len 20])
        staticcall mem[(32 * cd[(cd[4] + cd[(cd[4] + (32 * idx + 1) + 36)] + 36)] - 1) + _32 + 44 len 20].balanceOf(address rg1) with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _38 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _39 = mem[_38]
        require mem[_38] == mem[_38]
        require 0 < cd[(cd[4] + cd[(cd[4] + (32 * idx + 1) + 36)] + 36)]
        _41 = mem[_32 + 32]
        mem[mem[64] + 4] = address(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68)])
        mem[mem[64] + 36] = s
        require ext_code.size(address(_41))
        call address(_41).approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args address(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68)]), s
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _44 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_44] == bool(mem[_44])
        _46 = mem[64]
        mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = s
        mem[mem[64] + 36] = 1
        mem[mem[64] + 68] = 160
        mem[mem[64] + 164] = cd[(cd[4] + cd[(cd[4] + (32 * idx + 1) + 36)] + 36)]
        s = 0
        t = _32 + 32
        u = mem[64] + 196
        while s < cd[(cd[4] + cd[(cd[4] + (32 * idx + 1) + 36)] + 36)]:
            mem[u] = mem[t + 12 len 20]
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        mem[_46 + 100] = this.address
        mem[_46 + 132] = block.timestamp + 6000
        require ext_code.size(address(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68)]))
        call address(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68)]).mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _46 + (32 * cd[(cd[4] + cd[(cd[4] + (32 * idx + 1) + 36)] + 36)]) + -mem[64] + 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require mem[_32] - 1 < mem[_32]
        _61 = mem[(32 * mem[_32] - 1) + _32 + 32]
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(_61))
        staticcall address(_61).balanceOf(address rg1) with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _64 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_64] == mem[_64]
        idx = idx + 2
        s = mem[_64] - _39
        continue 
    return s
}

function sub_ed05e63d(?) payable {
    mem[64] = 96
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
    require cd[100] == cd[100]
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 36).length:
        require idx < ('cd', 4).length
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        require idx < ('cd', 36).length
        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
        require idx < ('cd', 68).length
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
        _36 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        require 0 < mem[_36]
        mem[_36 + 32] = 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
        require 1 < mem[_36]
        mem[_36 + 64] = address(cd[((32 * idx) + cd[36] + 36)])
        mem[_36 + 96] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
        mem[_36 + 100] = cd[((32 * idx) + cd[68] + 36)]
        mem[_36 + 132] = 64
        mem[_36 + 164] = mem[_36]
        s = 0
        t = _36 + 32
        u = _36 + 196
        while s < mem[_36]:
            mem[u] = mem[t + 12 len 20]
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
        staticcall address(cd[((32 * idx) + cd[4] + 36)]).mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len _36 + (32 * mem[_36]) + -mem[64] + 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _61 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _62 = mem[_61]
        require mem[_61] <= test266151307()
        require _61 + mem[_61] + 31 < _61 + return_data.size
        _63 = mem[_61 + mem[_61]]
        require mem[_61 + mem[_61]] <= test266151307()
        require _61 + ceil32(return_data.size) + (32 * mem[_61 + mem[_61]]) + 32 <= test266151307() and (32 * mem[_61 + mem[_61]]) + 32 >= 0
        mem[64] = _61 + ceil32(return_data.size) + (32 * mem[_61 + mem[_61]]) + 32
        mem[_61 + ceil32(return_data.size)] = _63
        require _62 + (32 * _63) + 32 <= return_data.size
        s = 0
        t = _61 + _62 + 32
        u = _61 + ceil32(return_data.size) + 32
        while s < _63:
            require mem[t] == mem[t]
            mem[u] = mem[t]
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        require 0 < _63
        _79 = mem[_61 + ceil32(return_data.size) + 32]
        _80 = mem[64]
        mem[mem[64]] = 0xfb3bdb4100000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
        mem[mem[64] + 36] = 128
        _81 = mem[_36]
        mem[mem[64] + 132] = mem[_36]
        s = 0
        t = _36 + 32
        u = mem[64] + 164
        while s < _81:
            mem[u] = mem[t + 12 len 20]
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        mem[_80 + 68] = this.address
        mem[_80 + 100] = block.timestamp + cd[100]
        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
        call address(cd[((32 * idx) + cd[4] + 36)]).mem[mem[64] len 4] with:
           value _79 wei
             gas gas_remaining wei
            args mem[mem[64] + 4 len _80 + (32 * _81) + -mem[64] + 160]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _91 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _92 = mem[_91]
        require mem[_91] <= test266151307()
        require _91 + mem[_91] + 31 < _91 + return_data.size
        _93 = mem[_91 + mem[_91]]
        require mem[_91 + mem[_91]] <= test266151307()
        require _91 + ceil32(return_data.size) + (32 * mem[_91 + mem[_91]]) + 32 <= test266151307() and (32 * mem[_91 + mem[_91]]) + 32 >= 0
        mem[64] = _91 + ceil32(return_data.size) + (32 * mem[_91 + mem[_91]]) + 32
        mem[_91 + ceil32(return_data.size)] = _93
        require _92 + (32 * _93) + 32 <= return_data.size
        s = 0
        t = _91 + _92 + 32
        u = _91 + ceil32(return_data.size) + 32
        while s < _93:
            require mem[t] == mem[t]
            mem[u] = mem[t]
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        idx = idx + 1
        continue 
    call msg.sender with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
}

function sub_bc08f724(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
        staticcall address(cd[((32 * idx) + cd[4] + 36)]).balanceOf(address rg1) with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _52 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _53 = mem[_52]
        require mem[_52] == mem[_52]
        require idx < ('cd', 4).length
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        _54 = mem[64]
        mem[mem[64] + 36] = msg.sender
        mem[mem[64] + 68] = _53
        _55 = mem[64]
        mem[mem[64]] = 68
        mem[64] = mem[64] + 100
        mem[_55 + 32] = mem[_55 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
        mem[64] = _54 + 164
        mem[_54 + 100] = 32
        mem[_54 + 132] = 'SafeERC20: low-level call failed'
        if ext_code.hash(address(cd[((32 * idx) + cd[4] + 36)])) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
            revert with 0, 'Address: call to non-contract'
        if not ext_code.hash(address(cd[((32 * idx) + cd[4] + 36)])):
            revert with 0, 'Address: call to non-contract'
        _61 = mem[_55]
        t = _55 + 32
        u = mem[64]
        s = mem[_55]
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[mem[64] + floor32(mem[_55])] = mem[_55 + floor32(mem[_55]) + -(mem[_55] % 32) + 64 len mem[_55] % 32] or Mask(8 * -(mem[_55] % 32) + 32, -(8 * -(mem[_55] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_55])])
        call address(cd[((32 * idx) + cd[4] + 36)]).mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _61 + _54 + -mem[64] + 160]
        if not return_data.size:
            if ext_call.success:
                if mem[96] > 0:
                    require mem[96] >= 32
                    if not mem[128]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[mem[64] + 110 len 22]
                idx = idx + 1
                continue 
            if mem[96] > 0:
                revert with memory
                  from 128
                   len mem[96]
            _104 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = mem[_54 + 100]
            _106 = mem[_54 + 100]
            idx = 0
            while idx < _106:
                mem[_104 + idx + 68] = mem[_54 + idx + 132]
                idx = idx + 32
                continue 
            if not _106 % 32:
                revert with memory
                  from mem[64]
                   len _106 + _104 + -mem[64] + 68
            mem[floor32(_106) + _104 + 68] = mem[floor32(_106) + _104 + -(_106 % 32) + 100 len _106 % 32]
            revert with memory
              from mem[64]
               len floor32(_106) + _104 + -mem[64] + 100
        _101 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size) + 1
        mem[_101] = return_data.size
        mem[_101 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if ext_call.success:
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[_101 + 32]:
                    revert with 0, 
                                32,
                                42,
                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[mem[64] + 110 len 22]
            idx = idx + 1
            continue 
        if return_data.size > 0:
            revert with ext_call.return_data[0 len return_data.size]
        _108 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = mem[_54 + 100]
        _110 = mem[_54 + 100]
        idx = 0
        while idx < _110:
            mem[_108 + idx + 68] = mem[_54 + idx + 132]
            idx = idx + 32
            continue 
        if not _110 % 32:
            revert with memory
              from mem[64]
               len _110 + _108 + -mem[64] + 68
        mem[floor32(_110) + _108 + 68] = mem[floor32(_110) + _108 + -(_110 % 32) + 100 len _110 % 32]
        revert with memory
          from mem[64]
           len floor32(_110) + _108 + -mem[64] + 100
}

function sub_bffebd89(?) {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] == cd[36]
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require 1 < ('cd', 4).length
    require ('cd', 4)[1] < calldata.size + -cd[4] - 67
    require cd[(cd[4] + ('cd', 4)[1] + 36)] <= test266151307()
    require cd[4] + ('cd', 4)[1] + 68 <= calldata.size - (32 * cd[(cd[4] + ('cd', 4)[1] + 36)])
    require 0 < cd[(cd[4] + ('cd', 4)[1] + 36)]
    require cd[(cd[4] + ('cd', 4)[1] + 68)] == address(cd[(cd[4] + ('cd', 4)[1] + 68)])
    mem[100] = this.address
    require ext_code.size(address(cd[(cd[4] + ('cd', 4)[1] + 68)]))
    staticcall address(cd[(cd[4] + ('cd', 4)[1] + 68)]).balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    s = cd[36]
    while idx < ('cd', 4).length:
        require cd[(cd[4] + (32 * idx) + 36)] < calldata.size + -cd[4] - 67
        require cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] <= test266151307()
        require cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68 <= calldata.size - (32 * cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)])
        require 0 < cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]
        require cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68)] == address(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68)])
        require idx + 1 < ('cd', 4).length
        require cd[(cd[4] + (32 * idx + 1) + 36)] < calldata.size + -cd[4] - 67
        require cd[(cd[4] + cd[(cd[4] + (32 * idx + 1) + 36)] + 36)] <= test266151307()
        require cd[4] + cd[(cd[4] + (32 * idx + 1) + 36)] + 68 <= calldata.size - (32 * cd[(cd[4] + cd[(cd[4] + (32 * idx + 1) + 36)] + 36)])
        _51 = mem[64]
        mem[64] = mem[64] + (32 * cd[(cd[4] + cd[(cd[4] + (32 * idx + 1) + 36)] + 36)]) + 32
        mem[_51] = cd[(cd[4] + cd[(cd[4] + (32 * idx + 1) + 36)] + 36)]
        mem[_51 + 32 len 32 * cd[(cd[4] + cd[(cd[4] + (32 * idx + 1) + 36)] + 36)]] = call.data[cd[4] + cd[(cd[4] + (32 * idx + 1) + 36)] + 68 len 32 * cd[(cd[4] + cd[(cd[4] + (32 * idx + 1) + 36)] + 36)]]
        mem[_51 + (32 * cd[(cd[4] + cd[(cd[4] + (32 * idx + 1) + 36)] + 36)]) + 32] = 0
        require cd[(cd[4] + cd[(cd[4] + (32 * idx + 1) + 36)] + 36)] - 1 < cd[(cd[4] + cd[(cd[4] + (32 * idx + 1) + 36)] + 36)]
        _54 = mem[(32 * cd[(cd[4] + cd[(cd[4] + (32 * idx + 1) + 36)] + 36)] - 1) + _51 + 32]
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(_54))
        staticcall address(_54).balanceOf(address rg1) with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _60 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _61 = mem[_60]
        require mem[_60] == mem[_60]
        require 0 < cd[(cd[4] + cd[(cd[4] + (32 * idx + 1) + 36)] + 36)]
        _67 = mem[_51 + 32]
        mem[mem[64] + 4] = address(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68)])
        mem[mem[64] + 36] = s
        require ext_code.size(address(_67))
        call address(_67).approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args address(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68)]), s
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _70 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_70] == bool(mem[_70])
        _72 = mem[64]
        mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = s
        mem[mem[64] + 36] = 1
        mem[mem[64] + 68] = 160
        mem[mem[64] + 164] = cd[(cd[4] + cd[(cd[4] + (32 * idx + 1) + 36)] + 36)]
        s = 0
        t = _51 + 32
        u = mem[64] + 196
        while s < cd[(cd[4] + cd[(cd[4] + (32 * idx + 1) + 36)] + 36)]:
            mem[u] = mem[t + 12 len 20]
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        mem[_72 + 100] = this.address
        mem[_72 + 132] = block.timestamp + 6000
        require ext_code.size(address(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68)]))
        call address(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68)]).mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _72 + (32 * cd[(cd[4] + cd[(cd[4] + (32 * idx + 1) + 36)] + 36)]) + -mem[64] + 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require mem[_51] - 1 < mem[_51]
        _87 = mem[(32 * mem[_51] - 1) + _51 + 32]
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(_87))
        staticcall address(_87).balanceOf(address rg1) with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _90 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_90] == mem[_90]
        idx = idx + 2
        s = mem[_90] - _61
        continue 
    require 1 < ('cd', 4).length
    require ('cd', 4)[1] < calldata.size + -cd[4] - 67
    require cd[(cd[4] + ('cd', 4)[1] + 36)] <= test266151307()
    require cd[4] + ('cd', 4)[1] + 68 <= calldata.size - (32 * cd[(cd[4] + ('cd', 4)[1] + 36)])
    require 0 < cd[(cd[4] + ('cd', 4)[1] + 36)]
    require cd[(cd[4] + ('cd', 4)[1] + 68)] == address(cd[(cd[4] + ('cd', 4)[1] + 68)])
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(cd[(cd[4] + ('cd', 4)[1] + 68)]))
    staticcall address(cd[(cd[4] + ('cd', 4)[1] + 68)]).balanceOf(address rg1) with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _57 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_57] == mem[_57]
    if mem[_57] <= ext_call.return_data[0]:
        revert with 0, 'LOOSING'
    return s
}

function sub_8c02e883(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 4).length:
        require cd[(cd[4] + (32 * idx) + 36)] < calldata.size + -cd[4] - 67
        require cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] <= test266151307()
        require cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68 <= calldata.size - (32 * cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)])
        require idx < ('cd', 36).length
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
        s = 0
        t = cd[((32 * idx) + cd[36] + 36)]
        while s < cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]:
            require cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + (32 * s) + 68)] < calldata.size + -cd[4] + -cd[(cd[4] + (32 * idx) + 36)] - 99
            require cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + (32 * s) + 68)] + 68)] <= test266151307()
            require cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + (32 * s) + 68)] + 100 <= calldata.size - (32 * cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + (32 * s) + 68)] + 68)])
            require 0 < cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + (32 * s) + 68)] + 68)]
            require cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + (32 * s) + 68)] + 100)] == address(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + (32 * s) + 68)] + 100)])
            require s + 1 < cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]
            require cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + (32 * s + 1) + 68)] < calldata.size + -cd[4] + -cd[(cd[4] + (32 * idx) + 36)] - 99
            require cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + (32 * s + 1) + 68)] + 68)] <= test266151307()
            require cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + (32 * s + 1) + 68)] + 100 <= calldata.size - (32 * cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + (32 * s + 1) + 68)] + 68)])
            _57 = mem[64]
            mem[64] = mem[64] + (32 * cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + (32 * s + 1) + 68)] + 68)]) + 32
            mem[_57] = cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + (32 * s + 1) + 68)] + 68)]
            mem[_57 + 32 len 32 * cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + (32 * s + 1) + 68)] + 68)]] = call.data[cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + (32 * s + 1) + 68)] + 100 len 32 * cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + (32 * s + 1) + 68)] + 68)]]
            mem[_57 + (32 * cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + (32 * s + 1) + 68)] + 68)]) + 32] = 0
            require cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + (32 * s + 1) + 68)] + 68)] - 1 < cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + (32 * s + 1) + 68)] + 68)]
            _60 = mem[(32 * cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + (32 * s + 1) + 68)] + 68)] - 1) + _57 + 32]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(_60))
            staticcall address(_60).balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _63 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _64 = mem[_63]
            require mem[_63] == mem[_63]
            require 0 < cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + (32 * s + 1) + 68)] + 68)]
            _66 = mem[_57 + 32]
            mem[mem[64] + 4] = address(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + (32 * s) + 68)] + 100)])
            mem[mem[64] + 36] = t
            require ext_code.size(address(_66))
            call address(_66).approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args address(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + (32 * s) + 68)] + 100)]), t
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _69 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_69] == bool(mem[_69])
            _71 = mem[64]
            mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = t
            mem[mem[64] + 36] = 1
            mem[mem[64] + 68] = 160
            mem[mem[64] + 164] = cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + (32 * s + 1) + 68)] + 68)]
            t = 0
            u = _57 + 32
            v = mem[64] + 196
            while t < cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + (32 * s + 1) + 68)] + 68)]:
                mem[v] = mem[u + 12 len 20]
                t = t + 1
                u = u + 32
                v = v + 32
                continue 
            mem[_71 + 100] = this.address
            mem[_71 + 132] = block.timestamp + 6000
            require ext_code.size(address(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + (32 * s) + 68)] + 100)]))
            call address(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + (32 * s) + 68)] + 100)]).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _71 + (32 * cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + (32 * s + 1) + 68)] + 68)]) + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require mem[_57] - 1 < mem[_57]
            _86 = mem[(32 * mem[_57] - 1) + _57 + 32]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(_86))
            staticcall address(_86).balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _89 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_89] == mem[_89]
            s = s + 2
            t = mem[_89] - _64
            continue 
        idx = idx + 1
        continue 
}

function sub_cfeb21cb(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 4).length:
        require cd[(cd[4] + (32 * idx) + 36)] < calldata.size + -cd[4] - 67
        require cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] <= test266151307()
        require cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68 <= calldata.size - (32 * cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)])
        require idx < ('cd', 36).length
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
        require 1 < cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]
        require cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 100)] < calldata.size + -cd[4] + -cd[(cd[4] + (32 * idx) + 36)] - 99
        require cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 100)] + 68)] <= test266151307()
        require cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 100)] + 100 <= calldata.size - (32 * cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 100)] + 68)])
        require 0 < cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 100)] + 68)]
        require cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 100)] + 100)] == address(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 100)] + 100)])
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 100)] + 100)]))
        staticcall address(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 100)] + 100)]).balanceOf(address rg1) with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _43 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _44 = mem[_43]
        require mem[_43] == mem[_43]
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
        s = 0
        t = cd[((32 * idx) + cd[36] + 36)]
        while s < cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]:
            require cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + (32 * s) + 68)] < calldata.size + -cd[4] + -cd[(cd[4] + (32 * idx) + 36)] - 99
            require cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + (32 * s) + 68)] + 68)] <= test266151307()
            require cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + (32 * s) + 68)] + 100 <= calldata.size - (32 * cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + (32 * s) + 68)] + 68)])
            require 0 < cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + (32 * s) + 68)] + 68)]
            require cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + (32 * s) + 68)] + 100)] == address(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + (32 * s) + 68)] + 100)])
            require s + 1 < cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]
            require cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + (32 * s + 1) + 68)] < calldata.size + -cd[4] + -cd[(cd[4] + (32 * idx) + 36)] - 99
            require cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + (32 * s + 1) + 68)] + 68)] <= test266151307()
            require cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + (32 * s + 1) + 68)] + 100 <= calldata.size - (32 * cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + (32 * s + 1) + 68)] + 68)])
            _88 = mem[64]
            mem[64] = mem[64] + (32 * cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + (32 * s + 1) + 68)] + 68)]) + 32
            mem[_88] = cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + (32 * s + 1) + 68)] + 68)]
            mem[_88 + 32 len 32 * cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + (32 * s + 1) + 68)] + 68)]] = call.data[cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + (32 * s + 1) + 68)] + 100 len 32 * cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + (32 * s + 1) + 68)] + 68)]]
            mem[_88 + (32 * cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + (32 * s + 1) + 68)] + 68)]) + 32] = 0
            require cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + (32 * s + 1) + 68)] + 68)] - 1 < cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + (32 * s + 1) + 68)] + 68)]
            mem[mem[64] + 4] = this.address
            require ext_code.size(mem[(32 * cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + (32 * s + 1) + 68)] + 68)] - 1) + _88 + 44 len 20])
            staticcall mem[(32 * cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + (32 * s + 1) + 68)] + 68)] - 1) + _88 + 44 len 20].balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _97 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _98 = mem[_97]
            require mem[_97] == mem[_97]
            require 0 < cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + (32 * s + 1) + 68)] + 68)]
            _102 = mem[_88 + 32]
            mem[mem[64] + 4] = address(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + (32 * s) + 68)] + 100)])
            mem[mem[64] + 36] = t
            require ext_code.size(address(_102))
            call address(_102).approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args address(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + (32 * s) + 68)] + 100)]), t
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _105 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_105] == bool(mem[_105])
            _107 = mem[64]
            mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = t
            mem[mem[64] + 36] = 1
            mem[mem[64] + 68] = 160
            mem[mem[64] + 164] = cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + (32 * s + 1) + 68)] + 68)]
            t = 0
            u = _88 + 32
            v = mem[64] + 196
            while t < cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + (32 * s + 1) + 68)] + 68)]:
                mem[v] = mem[u + 12 len 20]
                t = t + 1
                u = u + 32
                v = v + 32
                continue 
            mem[_107 + 100] = this.address
            mem[_107 + 132] = block.timestamp + 6000
            require ext_code.size(address(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + (32 * s) + 68)] + 100)]))
            call address(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + (32 * s) + 68)] + 100)]).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _107 + (32 * cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + (32 * s + 1) + 68)] + 68)]) + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require mem[_88] - 1 < mem[_88]
            _122 = mem[(32 * mem[_88] - 1) + _88 + 32]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(_122))
            staticcall address(_122).balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _125 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_125] == mem[_125]
            s = s + 2
            t = mem[_125] - _98
            continue 
        require 1 < cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]
        require cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 100)] < calldata.size + -cd[4] + -cd[(cd[4] + (32 * idx) + 36)] - 99
        require cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 100)] + 68)] <= test266151307()
        require cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 100)] + 100 <= calldata.size - (32 * cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 100)] + 68)])
        require 0 < cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 100)] + 68)]
        require cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 100)] + 100)] == address(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 100)] + 100)])
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 100)] + 100)]))
        staticcall address(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 100)] + 100)]).balanceOf(address rg1) with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _94 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_94] == mem[_94]
        if mem[_94] <= _44:
            revert with 0, 'LOOSING'
        idx = idx + 1
        continue 
}

function demaxCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    require ext_code.size(msg.sender)
    staticcall msg.sender.token0() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(msg.sender)
    staticcall msg.sender.token1() with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require arg4.length >= 128
    require cd[(arg4 + 36)] == cd[(arg4 + 36)]
    require cd[(arg4 + 68)] == cd[(arg4 + 68)]
    require cd[(arg4 + 100)] == address(cd[(arg4 + 100)])
    require cd[(arg4 + 132)] <= test266151307()
    require arg4 + cd[(arg4 + 132)] + 67 < arg4 + arg4.length + 36
    require cd[(arg4 + cd[(arg4 + 132)] + 36)] <= test266151307()
    require (2 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 128 <= test266151307() and (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 128 >= 96
    mem[64] = (2 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 128
    mem[(2 * ceil32(return_data.size)) + 96] = cd[(arg4 + cd[(arg4 + 132)] + 36)]
    idx = 0
    s = arg4 + cd[(arg4 + 132)] + 68
    t = (2 * ceil32(return_data.size)) + 128
    while idx < cd[(arg4 + cd[(arg4 + 132)] + 36)]:
        require arg4 + cd[(arg4 + 132)] + cd[s] + 99 < arg4 + arg4.length + 36
        require cd[(arg4 + cd[(arg4 + 132)] + cd[s] + 68)] <= test266151307()
        _127 = mem[64]
        require mem[64] + (32 * cd[(arg4 + cd[(arg4 + 132)] + cd[s] + 68)]) + 32 <= test266151307() and mem[64] + (32 * cd[(arg4 + cd[(arg4 + 132)] + cd[s] + 68)]) + 32 >= mem[64]
        mem[64] = mem[64] + (32 * cd[(arg4 + cd[(arg4 + 132)] + cd[s] + 68)]) + 32
        mem[_127] = cd[(arg4 + cd[(arg4 + 132)] + cd[s] + 68)]
        require cd[(arg4 + 132)] + cd[s] + (32 * cd[(arg4 + cd[(arg4 + 132)] + cd[s] + 68)]) + 100 <= arg4.length + 36
        u = 0
        v = arg4 + cd[(arg4 + 132)] + cd[s] + 100
        w = _127 + 32
        while u < cd[(arg4 + cd[(arg4 + 132)] + cd[s] + 68)]:
            require cd[v] == address(cd[v])
            mem[w] = cd[v]
            u = u + 1
            v = v + 32
            w = w + 32
            continue 
        mem[t] = _127
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 4] = address(ext_call.return_data[0])
    mem[mem[64] + 36] = address(ext_call.return_data[0])
    require ext_code.size(address(cd[(arg4 + 100)]))
    staticcall address(cd[(arg4 + 100)]).getPair(address rg1, address rg2) with:
            gas gas_remaining wei
           args address(ext_call.return_data[0]), address(ext_call.return_data[0])
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _129 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_129] == mem[_129 + 12 len 20]
    require msg.sender == mem[_129 + 12 len 20]
    require 3 < mem[(2 * ceil32(return_data.size)) + 96]
    require 0 < mem[mem[(2 * ceil32(return_data.size)) + 224]]
    _134 = mem[mem[(2 * ceil32(return_data.size)) + 224] + 32]
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(_134))
    staticcall address(_134).balanceOf(address rg1) with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _137 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_137] == mem[_137]
    _256 = mem[(2 * ceil32(return_data.size)) + 96]
    idx = 2
    s = mem[_137] - cd[(arg4 + 68)]
    while idx < _256:
        require idx < mem[(2 * ceil32(return_data.size)) + 96]
        require 0 < mem[mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]]
        _260 = mem[mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128] + 32]
        require idx + 1 < mem[(2 * ceil32(return_data.size)) + 96]
        _268 = mem[(32 * idx + 1) + (2 * ceil32(return_data.size)) + 128]
        require mem[mem[(32 * idx + 1) + (2 * ceil32(return_data.size)) + 128]] - 1 < mem[mem[(32 * idx + 1) + (2 * ceil32(return_data.size)) + 128]]
        _273 = mem[(32 * mem[mem[(32 * idx + 1) + (2 * ceil32(return_data.size)) + 128]] - 1) + mem[(32 * idx + 1) + (2 * ceil32(return_data.size)) + 128] + 32]
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(_273))
        staticcall address(_273).balanceOf(address rg1) with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _326 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _355 = mem[_326]
        require mem[_326] == mem[_326]
        require 0 < mem[_268]
        _357 = mem[_268 + 32]
        mem[mem[64] + 4] = address(_260)
        mem[mem[64] + 36] = s
        require ext_code.size(address(_357))
        call address(_357).approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args address(_260), s
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _360 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_360] == bool(mem[_360])
        _362 = mem[64]
        mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = s
        mem[mem[64] + 36] = 1
        mem[mem[64] + 68] = 160
        _363 = mem[_268]
        mem[mem[64] + 164] = mem[_268]
        s = 0
        t = _268 + 32
        u = mem[64] + 196
        while s < _363:
            mem[u] = mem[t + 12 len 20]
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        mem[_362 + 100] = this.address
        mem[_362 + 132] = block.timestamp + 6000
        require ext_code.size(address(_260))
        call address(_260).mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _362 + (32 * _363) + -mem[64] + 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require mem[_268] - 1 < mem[_268]
        _443 = mem[(32 * mem[_268] - 1) + _268 + 32]
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(_443))
        staticcall address(_443).balanceOf(address rg1) with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _446 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_446] == mem[_446]
        idx = idx + 2
        s = mem[_446] - _355
        continue 
    if not arg2:
        _262 = mem[64]
        mem[mem[64] + 36] = msg.sender
        mem[mem[64] + 68] = cd[(arg4 + 36)]
        _263 = mem[64]
        mem[mem[64]] = 68
        mem[mem[64] + 32 len 4] = transfer(address rg1, uint256 rg2)
        mem[64] = mem[64] + 164
        mem[_262 + 100] = 32
        mem[_262 + 132] = 'SafeERC20: low-level call failed'
        if ext_code.hash(address(ext_call.return_data[0])) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
            revert with 0, 'Address: call to non-contract'
        if not ext_code.hash(address(ext_call.return_data[0])):
            revert with 0, 'Address: call to non-contract'
        _280 = mem[_263]
        mem[_262 + 164 len floor32(mem[_263])] = mem[_263 + 32 len floor32(mem[_263])]
        mem[_262 + floor32(mem[_263]) + -(mem[_263] % 32) + 196 len mem[_263] % 32] = mem[_263 + floor32(mem[_263]) + -(mem[_263] % 32) + 64 len mem[_263] % 32]
        call address(ext_call.return_data[0]) with:
             gas gas_remaining wei
            args mem[_262 + 168 len _280 - 4]
        if not return_data.size:
            if not ext_call.success:
                if mem[96] > 0:
                    revert with memory
                      from 128
                       len mem[96]
                revert with 0, 'SafeERC20: low-level call failed'
            if mem[96] > 0:
                require mem[96] >= 32
                if not mem[128]:
                    revert with 0, 
                                32,
                                42,
                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[_262 + 274 len 22]
        else:
            mem[_262 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[_262 + 196]:
                    revert with 0, 
                                32,
                                42,
                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[_262 + ceil32(return_data.size) + 275 len 22]
    else:
        _265 = mem[64]
        mem[mem[64] + 36] = msg.sender
        mem[mem[64] + 68] = cd[(arg4 + 36)]
        _266 = mem[64]
        mem[mem[64]] = 68
        mem[mem[64] + 32 len 4] = transfer(address rg1, uint256 rg2)
        mem[64] = mem[64] + 164
        mem[_265 + 100] = 32
        mem[_265 + 132] = 'SafeERC20: low-level call failed'
        if ext_code.hash(address(ext_call.return_data[0])) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
            revert with 0, 'Address: call to non-contract'
        if not ext_code.hash(address(ext_call.return_data[0])):
            revert with 0, 'Address: call to non-contract'
        _284 = mem[_266]
        mem[_265 + 164 len floor32(mem[_266])] = mem[_266 + 32 len floor32(mem[_266])]
        mem[_265 + floor32(mem[_266]) + -(mem[_266] % 32) + 196 len mem[_266] % 32] = mem[_266 + floor32(mem[_266]) + -(mem[_266] % 32) + 64 len mem[_266] % 32]
        call address(ext_call.return_data[0]) with:
             gas gas_remaining wei
            args mem[_265 + 168 len _284 - 4]
        if not return_data.size:
            if not ext_call.success:
                if mem[96] > 0:
                    revert with memory
                      from 128
                       len mem[96]
                revert with 0, 'SafeERC20: low-level call failed'
            if mem[96] > 0:
                require mem[96] >= 32
                if not mem[128]:
                    revert with 0, 
                                32,
                                42,
                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[_265 + 274 len 22]
        else:
            mem[_265 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[_265 + 196]:
                    revert with 0, 
                                32,
                                42,
                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[_265 + ceil32(return_data.size) + 275 len 22]
}

function BSCswapCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    require ext_code.size(msg.sender)
    staticcall msg.sender.token0() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(msg.sender)
    staticcall msg.sender.token1() with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require arg4.length >= 128
    require cd[(arg4 + 36)] == cd[(arg4 + 36)]
    require cd[(arg4 + 68)] == cd[(arg4 + 68)]
    require cd[(arg4 + 100)] == address(cd[(arg4 + 100)])
    require cd[(arg4 + 132)] <= test266151307()
    require arg4 + cd[(arg4 + 132)] + 67 < arg4 + arg4.length + 36
    require cd[(arg4 + cd[(arg4 + 132)] + 36)] <= test266151307()
    require (2 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 128 <= test266151307() and (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 128 >= 96
    mem[64] = (2 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 128
    mem[(2 * ceil32(return_data.size)) + 96] = cd[(arg4 + cd[(arg4 + 132)] + 36)]
    idx = 0
    s = arg4 + cd[(arg4 + 132)] + 68
    t = (2 * ceil32(return_data.size)) + 128
    while idx < cd[(arg4 + cd[(arg4 + 132)] + 36)]:
        require arg4 + cd[(arg4 + 132)] + cd[s] + 99 < arg4 + arg4.length + 36
        require cd[(arg4 + cd[(arg4 + 132)] + cd[s] + 68)] <= test266151307()
        _127 = mem[64]
        require mem[64] + (32 * cd[(arg4 + cd[(arg4 + 132)] + cd[s] + 68)]) + 32 <= test266151307() and mem[64] + (32 * cd[(arg4 + cd[(arg4 + 132)] + cd[s] + 68)]) + 32 >= mem[64]
        mem[64] = mem[64] + (32 * cd[(arg4 + cd[(arg4 + 132)] + cd[s] + 68)]) + 32
        mem[_127] = cd[(arg4 + cd[(arg4 + 132)] + cd[s] + 68)]
        require cd[(arg4 + 132)] + cd[s] + (32 * cd[(arg4 + cd[(arg4 + 132)] + cd[s] + 68)]) + 100 <= arg4.length + 36
        u = 0
        v = arg4 + cd[(arg4 + 132)] + cd[s] + 100
        w = _127 + 32
        while u < cd[(arg4 + cd[(arg4 + 132)] + cd[s] + 68)]:
            require cd[v] == address(cd[v])
            mem[w] = cd[v]
            u = u + 1
            v = v + 32
            w = w + 32
            continue 
        mem[t] = _127
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 4] = address(ext_call.return_data[0])
    mem[mem[64] + 36] = address(ext_call.return_data[0])
    require ext_code.size(address(cd[(arg4 + 100)]))
    staticcall address(cd[(arg4 + 100)]).getPair(address rg1, address rg2) with:
            gas gas_remaining wei
           args address(ext_call.return_data[0]), address(ext_call.return_data[0])
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _129 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_129] == mem[_129 + 12 len 20]
    require msg.sender == mem[_129 + 12 len 20]
    require 3 < mem[(2 * ceil32(return_data.size)) + 96]
    require 0 < mem[mem[(2 * ceil32(return_data.size)) + 224]]
    _134 = mem[mem[(2 * ceil32(return_data.size)) + 224] + 32]
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(_134))
    staticcall address(_134).balanceOf(address rg1) with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _137 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_137] == mem[_137]
    _256 = mem[(2 * ceil32(return_data.size)) + 96]
    idx = 2
    s = mem[_137] - cd[(arg4 + 68)]
    while idx < _256:
        require idx < mem[(2 * ceil32(return_data.size)) + 96]
        require 0 < mem[mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]]
        _260 = mem[mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128] + 32]
        require idx + 1 < mem[(2 * ceil32(return_data.size)) + 96]
        _268 = mem[(32 * idx + 1) + (2 * ceil32(return_data.size)) + 128]
        require mem[mem[(32 * idx + 1) + (2 * ceil32(return_data.size)) + 128]] - 1 < mem[mem[(32 * idx + 1) + (2 * ceil32(return_data.size)) + 128]]
        _273 = mem[(32 * mem[mem[(32 * idx + 1) + (2 * ceil32(return_data.size)) + 128]] - 1) + mem[(32 * idx + 1) + (2 * ceil32(return_data.size)) + 128] + 32]
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(_273))
        staticcall address(_273).balanceOf(address rg1) with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _326 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _355 = mem[_326]
        require mem[_326] == mem[_326]
        require 0 < mem[_268]
        _357 = mem[_268 + 32]
        mem[mem[64] + 4] = address(_260)
        mem[mem[64] + 36] = s
        require ext_code.size(address(_357))
        call address(_357).approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args address(_260), s
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _360 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_360] == bool(mem[_360])
        _362 = mem[64]
        mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = s
        mem[mem[64] + 36] = 1
        mem[mem[64] + 68] = 160
        _363 = mem[_268]
        mem[mem[64] + 164] = mem[_268]
        s = 0
        t = _268 + 32
        u = mem[64] + 196
        while s < _363:
            mem[u] = mem[t + 12 len 20]
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        mem[_362 + 100] = this.address
        mem[_362 + 132] = block.timestamp + 6000
        require ext_code.size(address(_260))
        call address(_260).mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _362 + (32 * _363) + -mem[64] + 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require mem[_268] - 1 < mem[_268]
        _443 = mem[(32 * mem[_268] - 1) + _268 + 32]
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(_443))
        staticcall address(_443).balanceOf(address rg1) with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _446 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_446] == mem[_446]
        idx = idx + 2
        s = mem[_446] - _355
        continue 
    if not arg2:
        _262 = mem[64]
        mem[mem[64] + 36] = msg.sender
        mem[mem[64] + 68] = cd[(arg4 + 36)]
        _263 = mem[64]
        mem[mem[64]] = 68
        mem[mem[64] + 32 len 4] = transfer(address rg1, uint256 rg2)
        mem[64] = mem[64] + 164
        mem[_262 + 100] = 32
        mem[_262 + 132] = 'SafeERC20: low-level call failed'
        if ext_code.hash(address(ext_call.return_data[0])) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
            revert with 0, 'Address: call to non-contract'
        if not ext_code.hash(address(ext_call.return_data[0])):
            revert with 0, 'Address: call to non-contract'
        _280 = mem[_263]
        mem[_262 + 164 len floor32(mem[_263])] = mem[_263 + 32 len floor32(mem[_263])]
        mem[_262 + floor32(mem[_263]) + -(mem[_263] % 32) + 196 len mem[_263] % 32] = mem[_263 + floor32(mem[_263]) + -(mem[_263] % 32) + 64 len mem[_263] % 32]
        call address(ext_call.return_data[0]) with:
             gas gas_remaining wei
            args mem[_262 + 168 len _280 - 4]
        if not return_data.size:
            if not ext_call.success:
                if mem[96] > 0:
                    revert with memory
                      from 128
                       len mem[96]
                revert with 0, 'SafeERC20: low-level call failed'
            if mem[96] > 0:
                require mem[96] >= 32
                if not mem[128]:
                    revert with 0, 
                                32,
                                42,
                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[_262 + 274 len 22]
        else:
            mem[_262 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[_262 + 196]:
                    revert with 0, 
                                32,
                                42,
                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[_262 + ceil32(return_data.size) + 275 len 22]
    else:
        _265 = mem[64]
        mem[mem[64] + 36] = msg.sender
        mem[mem[64] + 68] = cd[(arg4 + 36)]
        _266 = mem[64]
        mem[mem[64]] = 68
        mem[mem[64] + 32 len 4] = transfer(address rg1, uint256 rg2)
        mem[64] = mem[64] + 164
        mem[_265 + 100] = 32
        mem[_265 + 132] = 'SafeERC20: low-level call failed'
        if ext_code.hash(address(ext_call.return_data[0])) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
            revert with 0, 'Address: call to non-contract'
        if not ext_code.hash(address(ext_call.return_data[0])):
            revert with 0, 'Address: call to non-contract'
        _284 = mem[_266]
        mem[_265 + 164 len floor32(mem[_266])] = mem[_266 + 32 len floor32(mem[_266])]
        mem[_265 + floor32(mem[_266]) + -(mem[_266] % 32) + 196 len mem[_266] % 32] = mem[_266 + floor32(mem[_266]) + -(mem[_266] % 32) + 64 len mem[_266] % 32]
        call address(ext_call.return_data[0]) with:
             gas gas_remaining wei
            args mem[_265 + 168 len _284 - 4]
        if not return_data.size:
            if not ext_call.success:
                if mem[96] > 0:
                    revert with memory
                      from 128
                       len mem[96]
                revert with 0, 'SafeERC20: low-level call failed'
            if mem[96] > 0:
                require mem[96] >= 32
                if not mem[128]:
                    revert with 0, 
                                32,
                                42,
                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[_265 + 274 len 22]
        else:
            mem[_265 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[_265 + 196]:
                    revert with 0, 
                                32,
                                42,
                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[_265 + ceil32(return_data.size) + 275 len 22]
}

function pancakeCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    require ext_code.size(msg.sender)
    staticcall msg.sender.token0() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(msg.sender)
    staticcall msg.sender.token1() with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require arg4.length >= 128
    require cd[(arg4 + 36)] == cd[(arg4 + 36)]
    require cd[(arg4 + 68)] == cd[(arg4 + 68)]
    require cd[(arg4 + 100)] == address(cd[(arg4 + 100)])
    require cd[(arg4 + 132)] <= test266151307()
    require arg4 + cd[(arg4 + 132)] + 67 < arg4 + arg4.length + 36
    require cd[(arg4 + cd[(arg4 + 132)] + 36)] <= test266151307()
    require (2 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 128 <= test266151307() and (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 128 >= 96
    mem[64] = (2 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 128
    mem[(2 * ceil32(return_data.size)) + 96] = cd[(arg4 + cd[(arg4 + 132)] + 36)]
    idx = 0
    s = arg4 + cd[(arg4 + 132)] + 68
    t = (2 * ceil32(return_data.size)) + 128
    while idx < cd[(arg4 + cd[(arg4 + 132)] + 36)]:
        require arg4 + cd[(arg4 + 132)] + cd[s] + 99 < arg4 + arg4.length + 36
        require cd[(arg4 + cd[(arg4 + 132)] + cd[s] + 68)] <= test266151307()
        _127 = mem[64]
        require mem[64] + (32 * cd[(arg4 + cd[(arg4 + 132)] + cd[s] + 68)]) + 32 <= test266151307() and mem[64] + (32 * cd[(arg4 + cd[(arg4 + 132)] + cd[s] + 68)]) + 32 >= mem[64]
        mem[64] = mem[64] + (32 * cd[(arg4 + cd[(arg4 + 132)] + cd[s] + 68)]) + 32
        mem[_127] = cd[(arg4 + cd[(arg4 + 132)] + cd[s] + 68)]
        require cd[(arg4 + 132)] + cd[s] + (32 * cd[(arg4 + cd[(arg4 + 132)] + cd[s] + 68)]) + 100 <= arg4.length + 36
        u = 0
        v = arg4 + cd[(arg4 + 132)] + cd[s] + 100
        w = _127 + 32
        while u < cd[(arg4 + cd[(arg4 + 132)] + cd[s] + 68)]:
            require cd[v] == address(cd[v])
            mem[w] = cd[v]
            u = u + 1
            v = v + 32
            w = w + 32
            continue 
        mem[t] = _127
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 4] = address(ext_call.return_data[0])
    mem[mem[64] + 36] = address(ext_call.return_data[0])
    require ext_code.size(address(cd[(arg4 + 100)]))
    staticcall address(cd[(arg4 + 100)]).getPair(address rg1, address rg2) with:
            gas gas_remaining wei
           args address(ext_call.return_data[0]), address(ext_call.return_data[0])
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _129 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_129] == mem[_129 + 12 len 20]
    require msg.sender == mem[_129 + 12 len 20]
    require 3 < mem[(2 * ceil32(return_data.size)) + 96]
    require 0 < mem[mem[(2 * ceil32(return_data.size)) + 224]]
    _134 = mem[mem[(2 * ceil32(return_data.size)) + 224] + 32]
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(_134))
    staticcall address(_134).balanceOf(address rg1) with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _137 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_137] == mem[_137]
    _256 = mem[(2 * ceil32(return_data.size)) + 96]
    idx = 2
    s = mem[_137] - cd[(arg4 + 68)]
    while idx < _256:
        require idx < mem[(2 * ceil32(return_data.size)) + 96]
        require 0 < mem[mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]]
        _260 = mem[mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128] + 32]
        require idx + 1 < mem[(2 * ceil32(return_data.size)) + 96]
        _268 = mem[(32 * idx + 1) + (2 * ceil32(return_data.size)) + 128]
        require mem[mem[(32 * idx + 1) + (2 * ceil32(return_data.size)) + 128]] - 1 < mem[mem[(32 * idx + 1) + (2 * ceil32(return_data.size)) + 128]]
        _273 = mem[(32 * mem[mem[(32 * idx + 1) + (2 * ceil32(return_data.size)) + 128]] - 1) + mem[(32 * idx + 1) + (2 * ceil32(return_data.size)) + 128] + 32]
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(_273))
        staticcall address(_273).balanceOf(address rg1) with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _326 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _355 = mem[_326]
        require mem[_326] == mem[_326]
        require 0 < mem[_268]
        _357 = mem[_268 + 32]
        mem[mem[64] + 4] = address(_260)
        mem[mem[64] + 36] = s
        require ext_code.size(address(_357))
        call address(_357).approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args address(_260), s
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _360 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_360] == bool(mem[_360])
        _362 = mem[64]
        mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = s
        mem[mem[64] + 36] = 1
        mem[mem[64] + 68] = 160
        _363 = mem[_268]
        mem[mem[64] + 164] = mem[_268]
        s = 0
        t = _268 + 32
        u = mem[64] + 196
        while s < _363:
            mem[u] = mem[t + 12 len 20]
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        mem[_362 + 100] = this.address
        mem[_362 + 132] = block.timestamp + 6000
        require ext_code.size(address(_260))
        call address(_260).mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _362 + (32 * _363) + -mem[64] + 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require mem[_268] - 1 < mem[_268]
        _443 = mem[(32 * mem[_268] - 1) + _268 + 32]
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(_443))
        staticcall address(_443).balanceOf(address rg1) with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _446 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_446] == mem[_446]
        idx = idx + 2
        s = mem[_446] - _355
        continue 
    if not arg2:
        _262 = mem[64]
        mem[mem[64] + 36] = msg.sender
        mem[mem[64] + 68] = cd[(arg4 + 36)]
        _263 = mem[64]
        mem[mem[64]] = 68
        mem[mem[64] + 32 len 4] = transfer(address rg1, uint256 rg2)
        mem[64] = mem[64] + 164
        mem[_262 + 100] = 32
        mem[_262 + 132] = 'SafeERC20: low-level call failed'
        if ext_code.hash(address(ext_call.return_data[0])) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
            revert with 0, 'Address: call to non-contract'
        if not ext_code.hash(address(ext_call.return_data[0])):
            revert with 0, 'Address: call to non-contract'
        _280 = mem[_263]
        mem[_262 + 164 len floor32(mem[_263])] = mem[_263 + 32 len floor32(mem[_263])]
        mem[_262 + floor32(mem[_263]) + -(mem[_263] % 32) + 196 len mem[_263] % 32] = mem[_263 + floor32(mem[_263]) + -(mem[_263] % 32) + 64 len mem[_263] % 32]
        call address(ext_call.return_data[0]) with:
             gas gas_remaining wei
            args mem[_262 + 168 len _280 - 4]
        if not return_data.size:
            if not ext_call.success:
                if mem[96] > 0:
                    revert with memory
                      from 128
                       len mem[96]
                revert with 0, 'SafeERC20: low-level call failed'
            if mem[96] > 0:
                require mem[96] >= 32
                if not mem[128]:
                    revert with 0, 
                                32,
                                42,
                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[_262 + 274 len 22]
        else:
            mem[_262 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[_262 + 196]:
                    revert with 0, 
                                32,
                                42,
                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[_262 + ceil32(return_data.size) + 275 len 22]
    else:
        _265 = mem[64]
        mem[mem[64] + 36] = msg.sender
        mem[mem[64] + 68] = cd[(arg4 + 36)]
        _266 = mem[64]
        mem[mem[64]] = 68
        mem[mem[64] + 32 len 4] = transfer(address rg1, uint256 rg2)
        mem[64] = mem[64] + 164
        mem[_265 + 100] = 32
        mem[_265 + 132] = 'SafeERC20: low-level call failed'
        if ext_code.hash(address(ext_call.return_data[0])) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
            revert with 0, 'Address: call to non-contract'
        if not ext_code.hash(address(ext_call.return_data[0])):
            revert with 0, 'Address: call to non-contract'
        _284 = mem[_266]
        mem[_265 + 164 len floor32(mem[_266])] = mem[_266 + 32 len floor32(mem[_266])]
        mem[_265 + floor32(mem[_266]) + -(mem[_266] % 32) + 196 len mem[_266] % 32] = mem[_266 + floor32(mem[_266]) + -(mem[_266] % 32) + 64 len mem[_266] % 32]
        call address(ext_call.return_data[0]) with:
             gas gas_remaining wei
            args mem[_265 + 168 len _284 - 4]
        if not return_data.size:
            if not ext_call.success:
                if mem[96] > 0:
                    revert with memory
                      from 128
                       len mem[96]
                revert with 0, 'SafeERC20: low-level call failed'
            if mem[96] > 0:
                require mem[96] >= 32
                if not mem[128]:
                    revert with 0, 
                                32,
                                42,
                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[_265 + 274 len 22]
        else:
            mem[_265 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[_265 + 196]:
                    revert with 0, 
                                32,
                                42,
                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[_265 + ceil32(return_data.size) + 275 len 22]
}

function ThugswapCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    require ext_code.size(msg.sender)
    staticcall msg.sender.token0() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(msg.sender)
    staticcall msg.sender.token1() with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require arg4.length >= 128
    require cd[(arg4 + 36)] == cd[(arg4 + 36)]
    require cd[(arg4 + 68)] == cd[(arg4 + 68)]
    require cd[(arg4 + 100)] == address(cd[(arg4 + 100)])
    require cd[(arg4 + 132)] <= test266151307()
    require arg4 + cd[(arg4 + 132)] + 67 < arg4 + arg4.length + 36
    require cd[(arg4 + cd[(arg4 + 132)] + 36)] <= test266151307()
    require (2 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 128 <= test266151307() and (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 128 >= 96
    mem[64] = (2 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 128
    mem[(2 * ceil32(return_data.size)) + 96] = cd[(arg4 + cd[(arg4 + 132)] + 36)]
    idx = 0
    s = arg4 + cd[(arg4 + 132)] + 68
    t = (2 * ceil32(return_data.size)) + 128
    while idx < cd[(arg4 + cd[(arg4 + 132)] + 36)]:
        require arg4 + cd[(arg4 + 132)] + cd[s] + 99 < arg4 + arg4.length + 36
        require cd[(arg4 + cd[(arg4 + 132)] + cd[s] + 68)] <= test266151307()
        _127 = mem[64]
        require mem[64] + (32 * cd[(arg4 + cd[(arg4 + 132)] + cd[s] + 68)]) + 32 <= test266151307() and mem[64] + (32 * cd[(arg4 + cd[(arg4 + 132)] + cd[s] + 68)]) + 32 >= mem[64]
        mem[64] = mem[64] + (32 * cd[(arg4 + cd[(arg4 + 132)] + cd[s] + 68)]) + 32
        mem[_127] = cd[(arg4 + cd[(arg4 + 132)] + cd[s] + 68)]
        require cd[(arg4 + 132)] + cd[s] + (32 * cd[(arg4 + cd[(arg4 + 132)] + cd[s] + 68)]) + 100 <= arg4.length + 36
        u = 0
        v = arg4 + cd[(arg4 + 132)] + cd[s] + 100
        w = _127 + 32
        while u < cd[(arg4 + cd[(arg4 + 132)] + cd[s] + 68)]:
            require cd[v] == address(cd[v])
            mem[w] = cd[v]
            u = u + 1
            v = v + 32
            w = w + 32
            continue 
        mem[t] = _127
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 4] = address(ext_call.return_data[0])
    mem[mem[64] + 36] = address(ext_call.return_data[0])
    require ext_code.size(address(cd[(arg4 + 100)]))
    staticcall address(cd[(arg4 + 100)]).getPair(address rg1, address rg2) with:
            gas gas_remaining wei
           args address(ext_call.return_data[0]), address(ext_call.return_data[0])
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _129 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_129] == mem[_129 + 12 len 20]
    require msg.sender == mem[_129 + 12 len 20]
    require 3 < mem[(2 * ceil32(return_data.size)) + 96]
    require 0 < mem[mem[(2 * ceil32(return_data.size)) + 224]]
    _134 = mem[mem[(2 * ceil32(return_data.size)) + 224] + 32]
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(_134))
    staticcall address(_134).balanceOf(address rg1) with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _137 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_137] == mem[_137]
    _256 = mem[(2 * ceil32(return_data.size)) + 96]
    idx = 2
    s = mem[_137] - cd[(arg4 + 68)]
    while idx < _256:
        require idx < mem[(2 * ceil32(return_data.size)) + 96]
        require 0 < mem[mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]]
        _260 = mem[mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128] + 32]
        require idx + 1 < mem[(2 * ceil32(return_data.size)) + 96]
        _268 = mem[(32 * idx + 1) + (2 * ceil32(return_data.size)) + 128]
        require mem[mem[(32 * idx + 1) + (2 * ceil32(return_data.size)) + 128]] - 1 < mem[mem[(32 * idx + 1) + (2 * ceil32(return_data.size)) + 128]]
        _273 = mem[(32 * mem[mem[(32 * idx + 1) + (2 * ceil32(return_data.size)) + 128]] - 1) + mem[(32 * idx + 1) + (2 * ceil32(return_data.size)) + 128] + 32]
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(_273))
        staticcall address(_273).balanceOf(address rg1) with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _326 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _355 = mem[_326]
        require mem[_326] == mem[_326]
        require 0 < mem[_268]
        _357 = mem[_268 + 32]
        mem[mem[64] + 4] = address(_260)
        mem[mem[64] + 36] = s
        require ext_code.size(address(_357))
        call address(_357).approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args address(_260), s
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _360 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_360] == bool(mem[_360])
        _362 = mem[64]
        mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = s
        mem[mem[64] + 36] = 1
        mem[mem[64] + 68] = 160
        _363 = mem[_268]
        mem[mem[64] + 164] = mem[_268]
        s = 0
        t = _268 + 32
        u = mem[64] + 196
        while s < _363:
            mem[u] = mem[t + 12 len 20]
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        mem[_362 + 100] = this.address
        mem[_362 + 132] = block.timestamp + 6000
        require ext_code.size(address(_260))
        call address(_260).mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _362 + (32 * _363) + -mem[64] + 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require mem[_268] - 1 < mem[_268]
        _443 = mem[(32 * mem[_268] - 1) + _268 + 32]
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(_443))
        staticcall address(_443).balanceOf(address rg1) with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _446 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_446] == mem[_446]
        idx = idx + 2
        s = mem[_446] - _355
        continue 
    if not arg2:
        _262 = mem[64]
        mem[mem[64] + 36] = msg.sender
        mem[mem[64] + 68] = cd[(arg4 + 36)]
        _263 = mem[64]
        mem[mem[64]] = 68
        mem[mem[64] + 32 len 4] = transfer(address rg1, uint256 rg2)
        mem[64] = mem[64] + 164
        mem[_262 + 100] = 32
        mem[_262 + 132] = 'SafeERC20: low-level call failed'
        if ext_code.hash(address(ext_call.return_data[0])) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
            revert with 0, 'Address: call to non-contract'
        if not ext_code.hash(address(ext_call.return_data[0])):
            revert with 0, 'Address: call to non-contract'
        _280 = mem[_263]
        mem[_262 + 164 len floor32(mem[_263])] = mem[_263 + 32 len floor32(mem[_263])]
        mem[_262 + floor32(mem[_263]) + -(mem[_263] % 32) + 196 len mem[_263] % 32] = mem[_263 + floor32(mem[_263]) + -(mem[_263] % 32) + 64 len mem[_263] % 32]
        call address(ext_call.return_data[0]) with:
             gas gas_remaining wei
            args mem[_262 + 168 len _280 - 4]
        if not return_data.size:
            if not ext_call.success:
                if mem[96] > 0:
                    revert with memory
                      from 128
                       len mem[96]
                revert with 0, 'SafeERC20: low-level call failed'
            if mem[96] > 0:
                require mem[96] >= 32
                if not mem[128]:
                    revert with 0, 
                                32,
                                42,
                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[_262 + 274 len 22]
        else:
            mem[_262 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[_262 + 196]:
                    revert with 0, 
                                32,
                                42,
                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[_262 + ceil32(return_data.size) + 275 len 22]
    else:
        _265 = mem[64]
        mem[mem[64] + 36] = msg.sender
        mem[mem[64] + 68] = cd[(arg4 + 36)]
        _266 = mem[64]
        mem[mem[64]] = 68
        mem[mem[64] + 32 len 4] = transfer(address rg1, uint256 rg2)
        mem[64] = mem[64] + 164
        mem[_265 + 100] = 32
        mem[_265 + 132] = 'SafeERC20: low-level call failed'
        if ext_code.hash(address(ext_call.return_data[0])) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
            revert with 0, 'Address: call to non-contract'
        if not ext_code.hash(address(ext_call.return_data[0])):
            revert with 0, 'Address: call to non-contract'
        _284 = mem[_266]
        mem[_265 + 164 len floor32(mem[_266])] = mem[_266 + 32 len floor32(mem[_266])]
        mem[_265 + floor32(mem[_266]) + -(mem[_266] % 32) + 196 len mem[_266] % 32] = mem[_266 + floor32(mem[_266]) + -(mem[_266] % 32) + 64 len mem[_266] % 32]
        call address(ext_call.return_data[0]) with:
             gas gas_remaining wei
            args mem[_265 + 168 len _284 - 4]
        if not return_data.size:
            if not ext_call.success:
                if mem[96] > 0:
                    revert with memory
                      from 128
                       len mem[96]
                revert with 0, 'SafeERC20: low-level call failed'
            if mem[96] > 0:
                require mem[96] >= 32
                if not mem[128]:
                    revert with 0, 
                                32,
                                42,
                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[_265 + 274 len 22]
        else:
            mem[_265 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[_265 + 196]:
                    revert with 0, 
                                32,
                                42,
                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[_265 + ceil32(return_data.size) + 275 len 22]
}

function uniswapV2Call(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    require ext_code.size(msg.sender)
    staticcall msg.sender.token0() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(msg.sender)
    staticcall msg.sender.token1() with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require arg4.length >= 128
    require cd[(arg4 + 36)] == cd[(arg4 + 36)]
    require cd[(arg4 + 68)] == cd[(arg4 + 68)]
    require cd[(arg4 + 100)] == address(cd[(arg4 + 100)])
    require cd[(arg4 + 132)] <= test266151307()
    require arg4 + cd[(arg4 + 132)] + 67 < arg4 + arg4.length + 36
    require cd[(arg4 + cd[(arg4 + 132)] + 36)] <= test266151307()
    require (2 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 128 <= test266151307() and (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 128 >= 96
    mem[64] = (2 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 128
    mem[(2 * ceil32(return_data.size)) + 96] = cd[(arg4 + cd[(arg4 + 132)] + 36)]
    idx = 0
    s = arg4 + cd[(arg4 + 132)] + 68
    t = (2 * ceil32(return_data.size)) + 128
    while idx < cd[(arg4 + cd[(arg4 + 132)] + 36)]:
        require arg4 + cd[(arg4 + 132)] + cd[s] + 99 < arg4 + arg4.length + 36
        require cd[(arg4 + cd[(arg4 + 132)] + cd[s] + 68)] <= test266151307()
        _127 = mem[64]
        require mem[64] + (32 * cd[(arg4 + cd[(arg4 + 132)] + cd[s] + 68)]) + 32 <= test266151307() and mem[64] + (32 * cd[(arg4 + cd[(arg4 + 132)] + cd[s] + 68)]) + 32 >= mem[64]
        mem[64] = mem[64] + (32 * cd[(arg4 + cd[(arg4 + 132)] + cd[s] + 68)]) + 32
        mem[_127] = cd[(arg4 + cd[(arg4 + 132)] + cd[s] + 68)]
        require cd[(arg4 + 132)] + cd[s] + (32 * cd[(arg4 + cd[(arg4 + 132)] + cd[s] + 68)]) + 100 <= arg4.length + 36
        u = 0
        v = arg4 + cd[(arg4 + 132)] + cd[s] + 100
        w = _127 + 32
        while u < cd[(arg4 + cd[(arg4 + 132)] + cd[s] + 68)]:
            require cd[v] == address(cd[v])
            mem[w] = cd[v]
            u = u + 1
            v = v + 32
            w = w + 32
            continue 
        mem[t] = _127
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 4] = address(ext_call.return_data[0])
    mem[mem[64] + 36] = address(ext_call.return_data[0])
    require ext_code.size(address(cd[(arg4 + 100)]))
    staticcall address(cd[(arg4 + 100)]).getPair(address rg1, address rg2) with:
            gas gas_remaining wei
           args address(ext_call.return_data[0]), address(ext_call.return_data[0])
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _129 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_129] == mem[_129 + 12 len 20]
    require msg.sender == mem[_129 + 12 len 20]
    require 3 < mem[(2 * ceil32(return_data.size)) + 96]
    require 0 < mem[mem[(2 * ceil32(return_data.size)) + 224]]
    _134 = mem[mem[(2 * ceil32(return_data.size)) + 224] + 32]
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(_134))
    staticcall address(_134).balanceOf(address rg1) with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _137 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_137] == mem[_137]
    _256 = mem[(2 * ceil32(return_data.size)) + 96]
    idx = 2
    s = mem[_137] - cd[(arg4 + 68)]
    while idx < _256:
        require idx < mem[(2 * ceil32(return_data.size)) + 96]
        require 0 < mem[mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]]
        _260 = mem[mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128] + 32]
        require idx + 1 < mem[(2 * ceil32(return_data.size)) + 96]
        _268 = mem[(32 * idx + 1) + (2 * ceil32(return_data.size)) + 128]
        require mem[mem[(32 * idx + 1) + (2 * ceil32(return_data.size)) + 128]] - 1 < mem[mem[(32 * idx + 1) + (2 * ceil32(return_data.size)) + 128]]
        _273 = mem[(32 * mem[mem[(32 * idx + 1) + (2 * ceil32(return_data.size)) + 128]] - 1) + mem[(32 * idx + 1) + (2 * ceil32(return_data.size)) + 128] + 32]
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(_273))
        staticcall address(_273).balanceOf(address rg1) with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _326 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _355 = mem[_326]
        require mem[_326] == mem[_326]
        require 0 < mem[_268]
        _357 = mem[_268 + 32]
        mem[mem[64] + 4] = address(_260)
        mem[mem[64] + 36] = s
        require ext_code.size(address(_357))
        call address(_357).approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args address(_260), s
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _360 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_360] == bool(mem[_360])
        _362 = mem[64]
        mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = s
        mem[mem[64] + 36] = 1
        mem[mem[64] + 68] = 160
        _363 = mem[_268]
        mem[mem[64] + 164] = mem[_268]
        s = 0
        t = _268 + 32
        u = mem[64] + 196
        while s < _363:
            mem[u] = mem[t + 12 len 20]
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        mem[_362 + 100] = this.address
        mem[_362 + 132] = block.timestamp + 6000
        require ext_code.size(address(_260))
        call address(_260).mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _362 + (32 * _363) + -mem[64] + 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require mem[_268] - 1 < mem[_268]
        _443 = mem[(32 * mem[_268] - 1) + _268 + 32]
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(_443))
        staticcall address(_443).balanceOf(address rg1) with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _446 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_446] == mem[_446]
        idx = idx + 2
        s = mem[_446] - _355
        continue 
    if not arg2:
        _262 = mem[64]
        mem[mem[64] + 36] = msg.sender
        mem[mem[64] + 68] = cd[(arg4 + 36)]
        _263 = mem[64]
        mem[mem[64]] = 68
        mem[mem[64] + 32 len 4] = transfer(address rg1, uint256 rg2)
        mem[64] = mem[64] + 164
        mem[_262 + 100] = 32
        mem[_262 + 132] = 'SafeERC20: low-level call failed'
        if ext_code.hash(address(ext_call.return_data[0])) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
            revert with 0, 'Address: call to non-contract'
        if not ext_code.hash(address(ext_call.return_data[0])):
            revert with 0, 'Address: call to non-contract'
        _280 = mem[_263]
        mem[_262 + 164 len floor32(mem[_263])] = mem[_263 + 32 len floor32(mem[_263])]
        mem[_262 + floor32(mem[_263]) + -(mem[_263] % 32) + 196 len mem[_263] % 32] = mem[_263 + floor32(mem[_263]) + -(mem[_263] % 32) + 64 len mem[_263] % 32]
        call address(ext_call.return_data[0]) with:
             gas gas_remaining wei
            args mem[_262 + 168 len _280 - 4]
        if not return_data.size:
            if not ext_call.success:
                if mem[96] > 0:
                    revert with memory
                      from 128
                       len mem[96]
                revert with 0, 'SafeERC20: low-level call failed'
            if mem[96] > 0:
                require mem[96] >= 32
                if not mem[128]:
                    revert with 0, 
                                32,
                                42,
                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[_262 + 274 len 22]
        else:
            mem[_262 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[_262 + 196]:
                    revert with 0, 
                                32,
                                42,
                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[_262 + ceil32(return_data.size) + 275 len 22]
    else:
        _265 = mem[64]
        mem[mem[64] + 36] = msg.sender
        mem[mem[64] + 68] = cd[(arg4 + 36)]
        _266 = mem[64]
        mem[mem[64]] = 68
        mem[mem[64] + 32 len 4] = transfer(address rg1, uint256 rg2)
        mem[64] = mem[64] + 164
        mem[_265 + 100] = 32
        mem[_265 + 132] = 'SafeERC20: low-level call failed'
        if ext_code.hash(address(ext_call.return_data[0])) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
            revert with 0, 'Address: call to non-contract'
        if not ext_code.hash(address(ext_call.return_data[0])):
            revert with 0, 'Address: call to non-contract'
        _284 = mem[_266]
        mem[_265 + 164 len floor32(mem[_266])] = mem[_266 + 32 len floor32(mem[_266])]
        mem[_265 + floor32(mem[_266]) + -(mem[_266] % 32) + 196 len mem[_266] % 32] = mem[_266 + floor32(mem[_266]) + -(mem[_266] % 32) + 64 len mem[_266] % 32]
        call address(ext_call.return_data[0]) with:
             gas gas_remaining wei
            args mem[_265 + 168 len _284 - 4]
        if not return_data.size:
            if not ext_call.success:
                if mem[96] > 0:
                    revert with memory
                      from 128
                       len mem[96]
                revert with 0, 'SafeERC20: low-level call failed'
            if mem[96] > 0:
                require mem[96] >= 32
                if not mem[128]:
                    revert with 0, 
                                32,
                                42,
                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[_265 + 274 len 22]
        else:
            mem[_265 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[_265 + 196]:
                    revert with 0, 
                                32,
                                42,
                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[_265 + ceil32(return_data.size) + 275 len 22]
}

function sub_3b1365d8(?) {
    require calldata.size - 4 >= 128
    require cd[4] == address(cd[4])
    require cd[36] == cd[36]
    require cd[68] == cd[68]
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    require ('cd', 100).length <= test266151307()
    require cd[100] + ('cd', 100).length + 36 <= calldata.size
    require ext_code.size(msg.sender)
    staticcall msg.sender.token0() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(msg.sender)
    staticcall msg.sender.token1() with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ('cd', 100).length >= 128
    require ('cd', 100)[0] == ('cd', 100)[0]
    require ('cd', 100)[1] == ('cd', 100)[1]
    require ('cd', 100)[2] == address(('cd', 100)[2])
    require ('cd', 100)[3] <= test266151307()
    require cd[100] + ('cd', 100)[3] + 67 < cd[100] + ('cd', 100).length + 36
    require cd[(cd[100] + ('cd', 100)[3] + 36)] <= test266151307()
    require (2 * ceil32(return_data.size)) + (32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 128 <= test266151307() and (32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 128 >= 96
    mem[64] = (2 * ceil32(return_data.size)) + (32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 128
    mem[(2 * ceil32(return_data.size)) + 96] = cd[(cd[100] + ('cd', 100)[3] + 36)]
    idx = 0
    s = cd[100] + ('cd', 100)[3] + 68
    t = (2 * ceil32(return_data.size)) + 128
    while idx < cd[(cd[100] + ('cd', 100)[3] + 36)]:
        require cd[100] + ('cd', 100)[3] + cd[s] + 99 < cd[100] + ('cd', 100).length + 36
        require cd[(cd[100] + ('cd', 100)[3] + cd[s] + 68)] <= test266151307()
        _127 = mem[64]
        require mem[64] + (32 * cd[(cd[100] + ('cd', 100)[3] + cd[s] + 68)]) + 32 <= test266151307() and mem[64] + (32 * cd[(cd[100] + ('cd', 100)[3] + cd[s] + 68)]) + 32 >= mem[64]
        mem[64] = mem[64] + (32 * cd[(cd[100] + ('cd', 100)[3] + cd[s] + 68)]) + 32
        mem[_127] = cd[(cd[100] + ('cd', 100)[3] + cd[s] + 68)]
        require ('cd', 100)[3] + cd[s] + (32 * cd[(cd[100] + ('cd', 100)[3] + cd[s] + 68)]) + 100 <= ('cd', 100).length + 36
        u = 0
        v = cd[100] + ('cd', 100)[3] + cd[s] + 100
        w = _127 + 32
        while u < cd[(cd[100] + ('cd', 100)[3] + cd[s] + 68)]:
            require cd[v] == address(cd[v])
            mem[w] = cd[v]
            u = u + 1
            v = v + 32
            w = w + 32
            continue 
        mem[t] = _127
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 4] = address(ext_call.return_data[0])
    mem[mem[64] + 36] = address(ext_call.return_data[0])
    require ext_code.size(address(('cd', 100)[2]))
    staticcall address(('cd', 100)[2]).getPair(address rg1, address rg2) with:
            gas gas_remaining wei
           args address(ext_call.return_data[0]), address(ext_call.return_data[0])
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _129 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_129] == mem[_129 + 12 len 20]
    require msg.sender == mem[_129 + 12 len 20]
    require 3 < mem[(2 * ceil32(return_data.size)) + 96]
    require 0 < mem[mem[(2 * ceil32(return_data.size)) + 224]]
    _134 = mem[mem[(2 * ceil32(return_data.size)) + 224] + 32]
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(_134))
    staticcall address(_134).balanceOf(address rg1) with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _137 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_137] == mem[_137]
    _256 = mem[(2 * ceil32(return_data.size)) + 96]
    idx = 2
    s = mem[_137] - ('cd', 100)[1]
    while idx < _256:
        require idx < mem[(2 * ceil32(return_data.size)) + 96]
        require 0 < mem[mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]]
        _260 = mem[mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128] + 32]
        require idx + 1 < mem[(2 * ceil32(return_data.size)) + 96]
        _268 = mem[(32 * idx + 1) + (2 * ceil32(return_data.size)) + 128]
        require mem[mem[(32 * idx + 1) + (2 * ceil32(return_data.size)) + 128]] - 1 < mem[mem[(32 * idx + 1) + (2 * ceil32(return_data.size)) + 128]]
        _273 = mem[(32 * mem[mem[(32 * idx + 1) + (2 * ceil32(return_data.size)) + 128]] - 1) + mem[(32 * idx + 1) + (2 * ceil32(return_data.size)) + 128] + 32]
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(_273))
        staticcall address(_273).balanceOf(address rg1) with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _326 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _355 = mem[_326]
        require mem[_326] == mem[_326]
        require 0 < mem[_268]
        _357 = mem[_268 + 32]
        mem[mem[64] + 4] = address(_260)
        mem[mem[64] + 36] = s
        require ext_code.size(address(_357))
        call address(_357).approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args address(_260), s
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _360 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_360] == bool(mem[_360])
        _362 = mem[64]
        mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = s
        mem[mem[64] + 36] = 1
        mem[mem[64] + 68] = 160
        _363 = mem[_268]
        mem[mem[64] + 164] = mem[_268]
        s = 0
        t = _268 + 32
        u = mem[64] + 196
        while s < _363:
            mem[u] = mem[t + 12 len 20]
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        mem[_362 + 100] = this.address
        mem[_362 + 132] = block.timestamp + 6000
        require ext_code.size(address(_260))
        call address(_260).mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _362 + (32 * _363) + -mem[64] + 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require mem[_268] - 1 < mem[_268]
        _443 = mem[(32 * mem[_268] - 1) + _268 + 32]
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(_443))
        staticcall address(_443).balanceOf(address rg1) with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _446 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_446] == mem[_446]
        idx = idx + 2
        s = mem[_446] - _355
        continue 
    if not cd[36]:
        _262 = mem[64]
        mem[mem[64] + 36] = msg.sender
        mem[mem[64] + 68] = ('cd', 100)[0]
        _263 = mem[64]
        mem[mem[64]] = 68
        mem[mem[64] + 32 len 4] = transfer(address rg1, uint256 rg2)
        mem[64] = mem[64] + 164
        mem[_262 + 100] = 32
        mem[_262 + 132] = 'SafeERC20: low-level call failed'
        if ext_code.hash(address(ext_call.return_data[0])) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
            revert with 0, 'Address: call to non-contract'
        if not ext_code.hash(address(ext_call.return_data[0])):
            revert with 0, 'Address: call to non-contract'
        _280 = mem[_263]
        mem[_262 + 164 len floor32(mem[_263])] = mem[_263 + 32 len floor32(mem[_263])]
        mem[_262 + floor32(mem[_263]) + -(mem[_263] % 32) + 196 len mem[_263] % 32] = mem[_263 + floor32(mem[_263]) + -(mem[_263] % 32) + 64 len mem[_263] % 32]
        call address(ext_call.return_data[0]) with:
             gas gas_remaining wei
            args mem[_262 + 168 len _280 - 4]
        if not return_data.size:
            if not ext_call.success:
                if mem[96] > 0:
                    revert with memory
                      from 128
                       len mem[96]
                revert with 0, 'SafeERC20: low-level call failed'
            if mem[96] > 0:
                require mem[96] >= 32
                if not mem[128]:
                    revert with 0, 
                                32,
                                42,
                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[_262 + 274 len 22]
        else:
            mem[_262 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[_262 + 196]:
                    revert with 0, 
                                32,
                                42,
                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[_262 + ceil32(return_data.size) + 275 len 22]
    else:
        _265 = mem[64]
        mem[mem[64] + 36] = msg.sender
        mem[mem[64] + 68] = ('cd', 100)[0]
        _266 = mem[64]
        mem[mem[64]] = 68
        mem[mem[64] + 32 len 4] = transfer(address rg1, uint256 rg2)
        mem[64] = mem[64] + 164
        mem[_265 + 100] = 32
        mem[_265 + 132] = 'SafeERC20: low-level call failed'
        if ext_code.hash(address(ext_call.return_data[0])) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
            revert with 0, 'Address: call to non-contract'
        if not ext_code.hash(address(ext_call.return_data[0])):
            revert with 0, 'Address: call to non-contract'
        _284 = mem[_266]
        mem[_265 + 164 len floor32(mem[_266])] = mem[_266 + 32 len floor32(mem[_266])]
        mem[_265 + floor32(mem[_266]) + -(mem[_266] % 32) + 196 len mem[_266] % 32] = mem[_266 + floor32(mem[_266]) + -(mem[_266] % 32) + 64 len mem[_266] % 32]
        call address(ext_call.return_data[0]) with:
             gas gas_remaining wei
            args mem[_265 + 168 len _284 - 4]
        if not return_data.size:
            if not ext_call.success:
                if mem[96] > 0:
                    revert with memory
                      from 128
                       len mem[96]
                revert with 0, 'SafeERC20: low-level call failed'
            if mem[96] > 0:
                require mem[96] >= 32
                if not mem[128]:
                    revert with 0, 
                                32,
                                42,
                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[_265 + 274 len 22]
        else:
            mem[_265 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[_265 + 196]:
                    revert with 0, 
                                32,
                                42,
                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[_265 + ceil32(return_data.size) + 275 len 22]
}

function sub_9fd06780(?) {
    require calldata.size - 4 >= 96
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] == cd[36]
    require cd[68] == address(cd[68])
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require 1 < ('cd', 4).length
    require ('cd', 4)[1] < calldata.size + -cd[4] - 67
    require cd[(cd[4] + ('cd', 4)[1] + 36)] <= test266151307()
    require cd[4] + ('cd', 4)[1] + 68 <= calldata.size - (32 * cd[(cd[4] + ('cd', 4)[1] + 36)])
    require 0 < cd[(cd[4] + ('cd', 4)[1] + 36)]
    require cd[(cd[4] + ('cd', 4)[1] + 68)] == address(cd[(cd[4] + ('cd', 4)[1] + 68)])
    require 1 < ('cd', 4).length
    require ('cd', 4)[1] < calldata.size + -cd[4] - 67
    require cd[(cd[4] + ('cd', 4)[1] + 36)] <= test266151307()
    require cd[4] + ('cd', 4)[1] + 68 <= calldata.size - (32 * cd[(cd[4] + ('cd', 4)[1] + 36)])
    require 1 < cd[(cd[4] + ('cd', 4)[1] + 36)]
    require cd[(cd[4] + ('cd', 4)[1] + 100)] == address(cd[(cd[4] + ('cd', 4)[1] + 100)])
    mem[100] = address(cd[(cd[4] + ('cd', 4)[1] + 68)])
    mem[132] = address(cd[(cd[4] + ('cd', 4)[1] + 100)])
    require ext_code.size(address(cd[68]))
    staticcall address(cd[68]).getPair(address rg1, address rg2) with:
            gas gas_remaining wei
           args address(cd[(cd[4] + ('cd', 4)[1] + 68)]), address(cd[(cd[4] + ('cd', 4)[1] + 100)])
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getReserves() with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 96 len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require 0 < ('cd', 4).length
    require ('cd', 4)[0] < calldata.size + -cd[4] - 67
    require cd[(cd[4] + ('cd', 4)[0] + 36)] <= test266151307()
    require cd[4] + ('cd', 4)[0] + 68 <= calldata.size - (32 * cd[(cd[4] + ('cd', 4)[0] + 36)])
    require 0 < cd[(cd[4] + ('cd', 4)[0] + 36)]
    require cd[(cd[4] + ('cd', 4)[0] + 68)] == address(cd[(cd[4] + ('cd', 4)[0] + 68)])
    require 1 < ('cd', 4).length
    require ('cd', 4)[1] < calldata.size + -cd[4] - 67
    require cd[(cd[4] + ('cd', 4)[1] + 36)] <= test266151307()
    require cd[4] + ('cd', 4)[1] + 68 <= calldata.size - (32 * cd[(cd[4] + ('cd', 4)[1] + 36)])
    require 0 < cd[(cd[4] + ('cd', 4)[1] + 36)]
    require cd[(cd[4] + ('cd', 4)[1] + 68)] == address(cd[(cd[4] + ('cd', 4)[1] + 68)])
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).token0() with:
            gas gas_remaining wei
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require 1 < ('cd', 4).length
    require ('cd', 4)[1] < calldata.size + -cd[4] - 67
    require cd[(cd[4] + ('cd', 4)[1] + 36)] <= test266151307()
    require cd[4] + ('cd', 4)[1] + 68 <= calldata.size - (32 * cd[(cd[4] + ('cd', 4)[1] + 36)])
    require 0 < cd[(cd[4] + ('cd', 4)[1] + 36)]
    require cd[(cd[4] + ('cd', 4)[1] + 68)] == address(cd[(cd[4] + ('cd', 4)[1] + 68)])
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).token0() with:
            gas gas_remaining wei
    mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[(6 * ceil32(return_data.size)) + 100] = cd[36]
    if ext_call.return_data[12 len 20] == address(cd[(cd[4] + ('cd', 4)[1] + 68)]):
        mem[(6 * ceil32(return_data.size)) + 132] = Mask(112, 0, ext_call.return_data[0])
        if ext_call.return_data[12 len 20] == address(cd[(cd[4] + ('cd', 4)[1] + 68)]):
            mem[(6 * ceil32(return_data.size)) + 164] = Mask(112, 0, ext_call.return_data[32])
            require ext_code.size(address(cd[(cd[4] + ('cd', 4)[0] + 68)]))
            staticcall address(cd[(cd[4] + ('cd', 4)[0] + 68)]).getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                    gas gas_remaining wei
                   args cd[36], ext_call.return_data[0] << 144, Mask(112, 0, ext_call.return_data[32])
            mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).token0() with:
                    gas gas_remaining wei
            mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require 1 < ('cd', 4).length
            require ('cd', 4)[1] < calldata.size + -cd[4] - 67
            require cd[(cd[4] + ('cd', 4)[1] + 36)] <= test266151307()
            require cd[4] + ('cd', 4)[1] + 68 <= calldata.size - (32 * cd[(cd[4] + ('cd', 4)[1] + 36)])
            require 0 < cd[(cd[4] + ('cd', 4)[1] + 36)]
            require cd[(cd[4] + ('cd', 4)[1] + 68)] == address(cd[(cd[4] + ('cd', 4)[1] + 68)])
            require 3 < ('cd', 4).length
            require ('cd', 4)[3] < calldata.size + -cd[4] - 67
            require cd[(cd[4] + ('cd', 4)[3] + 36)] <= test266151307()
            require cd[4] + ('cd', 4)[3] + 68 <= calldata.size - (32 * cd[(cd[4] + ('cd', 4)[3] + 36)])
            require 0 < cd[(cd[4] + ('cd', 4)[3] + 36)]
            require cd[(cd[4] + ('cd', 4)[3] + 68)] == address(cd[(cd[4] + ('cd', 4)[3] + 68)])
            mem[(8 * ceil32(return_data.size)) + 100] = this.address
            require ext_code.size(address(cd[(cd[4] + ('cd', 4)[3] + 68)]))
            staticcall address(cd[(cd[4] + ('cd', 4)[3] + 68)]).balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args this.address
            mem[(8 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = (10 * ceil32(return_data.size)) + 96
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            mem[(10 * ceil32(return_data.size)) + 128] = cd[36]
            mem[(10 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
            mem[(10 * ceil32(return_data.size)) + 192] = address(cd[68])
            mem[(10 * ceil32(return_data.size)) + 224] = 128
            mem[(10 * ceil32(return_data.size)) + 256] = ('cd', 4).length
            if address(cd[(cd[4] + ('cd', 4)[1] + 68)]) != ext_call.return_data[12 len 20]:
                idx = 0
                s = cd[4] + 36
                t = (10 * ceil32(return_data.size)) + (32 * ('cd', 4).length) + 288
                u = (10 * ceil32(return_data.size)) + 288
                while idx < ('cd', 4).length:
                    mem[u] = t + (-10 * ceil32(return_data.size)) - 288
                    require cd[s] < calldata.size + -cd[4] - 67
                    require cd[(cd[s] + cd[4] + 36)] <= test266151307()
                    require cd[4] + 36 <= calldata.size - (32 * cd[(cd[s] + cd[4] + 36)])
                    mem[t] = cd[(cd[s] + cd[4] + 36)]
                    v = 0
                    w = cd[s] + cd[4] + 68
                    x = t + 32
                    while v < cd[(cd[s] + cd[4] + 36)]:
                        require cd[w] == address(cd[w])
                        mem[x] = address(cd[w])
                        v = v + 1
                        w = w + 32
                        x = x + 32
                        continue 
                    idx = idx + 1
                    s = s + 32
                    t = x
                    u = u + 32
                    continue 
                _145 = mem[64]
                mem[64] = t
                mem[t] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[t + 4] = ext_call.return_data[0]
                mem[t + 36] = 0
                mem[t + 68] = this.address
                mem[t + 100] = 128
                _161 = mem[_145]
                mem[t + 132] = mem[_145]
                mem[t + 164 len ceil32(_161)] = mem[_145 + 32 len ceil32(_161)]
                if ceil32(_161) > _161:
                    mem[t + _161 + 164] = 0
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0], 0, address(this.address), 128, mem[t + 132 len ceil32(_161) + 32]
            else:
                idx = 0
                s = cd[4] + 36
                t = (10 * ceil32(return_data.size)) + (32 * ('cd', 4).length) + 288
                u = (10 * ceil32(return_data.size)) + 288
                while idx < ('cd', 4).length:
                    mem[u] = t + (-10 * ceil32(return_data.size)) - 288
                    require cd[s] < calldata.size + -cd[4] - 67
                    require cd[(cd[s] + cd[4] + 36)] <= test266151307()
                    require cd[4] + 36 <= calldata.size - (32 * cd[(cd[s] + cd[4] + 36)])
                    mem[t] = cd[(cd[s] + cd[4] + 36)]
                    v = 0
                    w = cd[s] + cd[4] + 68
                    x = t + 32
                    while v < cd[(cd[s] + cd[4] + 36)]:
                        require cd[w] == address(cd[w])
                        mem[x] = address(cd[w])
                        v = v + 1
                        w = w + 32
                        x = x + 32
                        continue 
                    idx = idx + 1
                    s = s + 32
                    t = x
                    u = u + 32
                    continue 
                _147 = mem[64]
                mem[64] = t
                mem[t] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[t + 4] = 0
                mem[t + 36] = ext_call.return_data[0]
                mem[t + 68] = this.address
                mem[t + 100] = 128
                _162 = mem[_147]
                mem[t + 132] = mem[_147]
                mem[t + 164 len ceil32(_162)] = mem[_147 + 32 len ceil32(_162)]
                if ceil32(_162) > _162:
                    mem[t + _162 + 164] = 0
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                     gas gas_remaining wei
                    args 0, ext_call.return_data[0], address(this.address), 128, mem[t + 132 len ceil32(_162) + 32]
        else:
            mem[(6 * ceil32(return_data.size)) + 164] = Mask(112, 0, ext_call.return_data[0])
            require ext_code.size(address(cd[(cd[4] + ('cd', 4)[0] + 68)]))
            staticcall address(cd[(cd[4] + ('cd', 4)[0] + 68)]).getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                    gas gas_remaining wei
                   args cd[36], ext_call.return_data[0] << 144, Mask(112, 0, ext_call.return_data[0])
            mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).token0() with:
                    gas gas_remaining wei
            mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require 1 < ('cd', 4).length
            require ('cd', 4)[1] < calldata.size + -cd[4] - 67
            require cd[(cd[4] + ('cd', 4)[1] + 36)] <= test266151307()
            require cd[4] + ('cd', 4)[1] + 68 <= calldata.size - (32 * cd[(cd[4] + ('cd', 4)[1] + 36)])
            require 0 < cd[(cd[4] + ('cd', 4)[1] + 36)]
            require cd[(cd[4] + ('cd', 4)[1] + 68)] == address(cd[(cd[4] + ('cd', 4)[1] + 68)])
            require 3 < ('cd', 4).length
            require ('cd', 4)[3] < calldata.size + -cd[4] - 67
            require cd[(cd[4] + ('cd', 4)[3] + 36)] <= test266151307()
            require cd[4] + ('cd', 4)[3] + 68 <= calldata.size - (32 * cd[(cd[4] + ('cd', 4)[3] + 36)])
            require 0 < cd[(cd[4] + ('cd', 4)[3] + 36)]
            require cd[(cd[4] + ('cd', 4)[3] + 68)] == address(cd[(cd[4] + ('cd', 4)[3] + 68)])
            mem[(8 * ceil32(return_data.size)) + 100] = this.address
            require ext_code.size(address(cd[(cd[4] + ('cd', 4)[3] + 68)]))
            staticcall address(cd[(cd[4] + ('cd', 4)[3] + 68)]).balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args this.address
            mem[(8 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = (10 * ceil32(return_data.size)) + 96
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            mem[(10 * ceil32(return_data.size)) + 128] = cd[36]
            mem[(10 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
            mem[(10 * ceil32(return_data.size)) + 192] = address(cd[68])
            mem[(10 * ceil32(return_data.size)) + 224] = 128
            mem[(10 * ceil32(return_data.size)) + 256] = ('cd', 4).length
            if address(cd[(cd[4] + ('cd', 4)[1] + 68)]) != ext_call.return_data[12 len 20]:
                idx = 0
                s = cd[4] + 36
                t = (10 * ceil32(return_data.size)) + (32 * ('cd', 4).length) + 288
                u = (10 * ceil32(return_data.size)) + 288
                while idx < ('cd', 4).length:
                    mem[u] = t + (-10 * ceil32(return_data.size)) - 288
                    require cd[s] < calldata.size + -cd[4] - 67
                    require cd[(cd[s] + cd[4] + 36)] <= test266151307()
                    require cd[4] + 36 <= calldata.size - (32 * cd[(cd[s] + cd[4] + 36)])
                    mem[t] = cd[(cd[s] + cd[4] + 36)]
                    v = 0
                    w = cd[s] + cd[4] + 68
                    x = t + 32
                    while v < cd[(cd[s] + cd[4] + 36)]:
                        require cd[w] == address(cd[w])
                        mem[x] = address(cd[w])
                        v = v + 1
                        w = w + 32
                        x = x + 32
                        continue 
                    idx = idx + 1
                    s = s + 32
                    t = x
                    u = u + 32
                    continue 
                _149 = mem[64]
                mem[64] = t
                mem[t] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[t + 4] = ext_call.return_data[0]
                mem[t + 36] = 0
                mem[t + 68] = this.address
                mem[t + 100] = 128
                _163 = mem[_149]
                mem[t + 132] = mem[_149]
                mem[t + 164 len ceil32(_163)] = mem[_149 + 32 len ceil32(_163)]
                if ceil32(_163) > _163:
                    mem[t + _163 + 164] = 0
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0], 0, address(this.address), 128, mem[t + 132 len ceil32(_163) + 32]
            else:
                idx = 0
                s = cd[4] + 36
                t = (10 * ceil32(return_data.size)) + (32 * ('cd', 4).length) + 288
                u = (10 * ceil32(return_data.size)) + 288
                while idx < ('cd', 4).length:
                    mem[u] = t + (-10 * ceil32(return_data.size)) - 288
                    require cd[s] < calldata.size + -cd[4] - 67
                    require cd[(cd[s] + cd[4] + 36)] <= test266151307()
                    require cd[4] + 36 <= calldata.size - (32 * cd[(cd[s] + cd[4] + 36)])
                    mem[t] = cd[(cd[s] + cd[4] + 36)]
                    v = 0
                    w = cd[s] + cd[4] + 68
                    x = t + 32
                    while v < cd[(cd[s] + cd[4] + 36)]:
                        require cd[w] == address(cd[w])
                        mem[x] = address(cd[w])
                        v = v + 1
                        w = w + 32
                        x = x + 32
                        continue 
                    idx = idx + 1
                    s = s + 32
                    t = x
                    u = u + 32
                    continue 
                _151 = mem[64]
                mem[64] = t
                mem[t] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[t + 4] = 0
                mem[t + 36] = ext_call.return_data[0]
                mem[t + 68] = this.address
                mem[t + 100] = 128
                _164 = mem[_151]
                mem[t + 132] = mem[_151]
                mem[t + 164 len ceil32(_164)] = mem[_151 + 32 len ceil32(_164)]
                if ceil32(_164) > _164:
                    mem[t + _164 + 164] = 0
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                     gas gas_remaining wei
                    args 0, ext_call.return_data[0], address(this.address), 128, mem[t + 132 len ceil32(_164) + 32]
    else:
        mem[(6 * ceil32(return_data.size)) + 132] = Mask(112, 0, ext_call.return_data[32])
        if ext_call.return_data[12 len 20] == address(cd[(cd[4] + ('cd', 4)[1] + 68)]):
            mem[(6 * ceil32(return_data.size)) + 164] = Mask(112, 0, ext_call.return_data[32])
            require ext_code.size(address(cd[(cd[4] + ('cd', 4)[0] + 68)]))
            staticcall address(cd[(cd[4] + ('cd', 4)[0] + 68)]).getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                    gas gas_remaining wei
                   args cd[36], ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[32])
            mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).token0() with:
                    gas gas_remaining wei
            mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require 1 < ('cd', 4).length
            require ('cd', 4)[1] < calldata.size + -cd[4] - 67
            require cd[(cd[4] + ('cd', 4)[1] + 36)] <= test266151307()
            require cd[4] + ('cd', 4)[1] + 68 <= calldata.size - (32 * cd[(cd[4] + ('cd', 4)[1] + 36)])
            require 0 < cd[(cd[4] + ('cd', 4)[1] + 36)]
            require cd[(cd[4] + ('cd', 4)[1] + 68)] == address(cd[(cd[4] + ('cd', 4)[1] + 68)])
            require 3 < ('cd', 4).length
            require ('cd', 4)[3] < calldata.size + -cd[4] - 67
            require cd[(cd[4] + ('cd', 4)[3] + 36)] <= test266151307()
            require cd[4] + ('cd', 4)[3] + 68 <= calldata.size - (32 * cd[(cd[4] + ('cd', 4)[3] + 36)])
            require 0 < cd[(cd[4] + ('cd', 4)[3] + 36)]
            require cd[(cd[4] + ('cd', 4)[3] + 68)] == address(cd[(cd[4] + ('cd', 4)[3] + 68)])
            mem[(8 * ceil32(return_data.size)) + 100] = this.address
            require ext_code.size(address(cd[(cd[4] + ('cd', 4)[3] + 68)]))
            staticcall address(cd[(cd[4] + ('cd', 4)[3] + 68)]).balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args this.address
            mem[(8 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = (10 * ceil32(return_data.size)) + 96
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            mem[(10 * ceil32(return_data.size)) + 128] = cd[36]
            mem[(10 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
            mem[(10 * ceil32(return_data.size)) + 192] = address(cd[68])
            mem[(10 * ceil32(return_data.size)) + 224] = 128
            mem[(10 * ceil32(return_data.size)) + 256] = ('cd', 4).length
            if address(cd[(cd[4] + ('cd', 4)[1] + 68)]) != ext_call.return_data[12 len 20]:
                idx = 0
                s = cd[4] + 36
                t = (10 * ceil32(return_data.size)) + (32 * ('cd', 4).length) + 288
                u = (10 * ceil32(return_data.size)) + 288
                while idx < ('cd', 4).length:
                    mem[u] = t + (-10 * ceil32(return_data.size)) - 288
                    require cd[s] < calldata.size + -cd[4] - 67
                    require cd[(cd[s] + cd[4] + 36)] <= test266151307()
                    require cd[4] + 36 <= calldata.size - (32 * cd[(cd[s] + cd[4] + 36)])
                    mem[t] = cd[(cd[s] + cd[4] + 36)]
                    v = 0
                    w = cd[s] + cd[4] + 68
                    x = t + 32
                    while v < cd[(cd[s] + cd[4] + 36)]:
                        require cd[w] == address(cd[w])
                        mem[x] = address(cd[w])
                        v = v + 1
                        w = w + 32
                        x = x + 32
                        continue 
                    idx = idx + 1
                    s = s + 32
                    t = x
                    u = u + 32
                    continue 
                _153 = mem[64]
                mem[64] = t
                mem[t] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[t + 4] = ext_call.return_data[0]
                mem[t + 36] = 0
                mem[t + 68] = this.address
                mem[t + 100] = 128
                _165 = mem[_153]
                mem[t + 132] = mem[_153]
                mem[t + 164 len ceil32(_165)] = mem[_153 + 32 len ceil32(_165)]
                if ceil32(_165) > _165:
                    mem[t + _165 + 164] = 0
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0], 0, address(this.address), 128, mem[t + 132 len ceil32(_165) + 32]
            else:
                idx = 0
                s = cd[4] + 36
                t = (10 * ceil32(return_data.size)) + (32 * ('cd', 4).length) + 288
                u = (10 * ceil32(return_data.size)) + 288
                while idx < ('cd', 4).length:
                    mem[u] = t + (-10 * ceil32(return_data.size)) - 288
                    require cd[s] < calldata.size + -cd[4] - 67
                    require cd[(cd[s] + cd[4] + 36)] <= test266151307()
                    require cd[4] + 36 <= calldata.size - (32 * cd[(cd[s] + cd[4] + 36)])
                    mem[t] = cd[(cd[s] + cd[4] + 36)]
                    v = 0
                    w = cd[s] + cd[4] + 68
                    x = t + 32
                    while v < cd[(cd[s] + cd[4] + 36)]:
                        require cd[w] == address(cd[w])
                        mem[x] = address(cd[w])
                        v = v + 1
                        w = w + 32
                        x = x + 32
                        continue 
                    idx = idx + 1
                    s = s + 32
                    t = x
                    u = u + 32
                    continue 
                _155 = mem[64]
                mem[64] = t
                mem[t] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[t + 4] = 0
                mem[t + 36] = ext_call.return_data[0]
                mem[t + 68] = this.address
                mem[t + 100] = 128
                _166 = mem[_155]
                mem[t + 132] = mem[_155]
                mem[t + 164 len ceil32(_166)] = mem[_155 + 32 len ceil32(_166)]
                if ceil32(_166) > _166:
                    mem[t + _166 + 164] = 0
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                     gas gas_remaining wei
                    args 0, ext_call.return_data[0], address(this.address), 128, mem[t + 132 len ceil32(_166) + 32]
        else:
            mem[(6 * ceil32(return_data.size)) + 164] = Mask(112, 0, ext_call.return_data[0])
            require ext_code.size(address(cd[(cd[4] + ('cd', 4)[0] + 68)]))
            staticcall address(cd[(cd[4] + ('cd', 4)[0] + 68)]).getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                    gas gas_remaining wei
                   args cd[36], ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
            mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).token0() with:
                    gas gas_remaining wei
            mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require 1 < ('cd', 4).length
            require ('cd', 4)[1] < calldata.size + -cd[4] - 67
            require cd[(cd[4] + ('cd', 4)[1] + 36)] <= test266151307()
            require cd[4] + ('cd', 4)[1] + 68 <= calldata.size - (32 * cd[(cd[4] + ('cd', 4)[1] + 36)])
            require 0 < cd[(cd[4] + ('cd', 4)[1] + 36)]
            require cd[(cd[4] + ('cd', 4)[1] + 68)] == address(cd[(cd[4] + ('cd', 4)[1] + 68)])
            require 3 < ('cd', 4).length
            require ('cd', 4)[3] < calldata.size + -cd[4] - 67
            require cd[(cd[4] + ('cd', 4)[3] + 36)] <= test266151307()
            require cd[4] + ('cd', 4)[3] + 68 <= calldata.size - (32 * cd[(cd[4] + ('cd', 4)[3] + 36)])
            require 0 < cd[(cd[4] + ('cd', 4)[3] + 36)]
            require cd[(cd[4] + ('cd', 4)[3] + 68)] == address(cd[(cd[4] + ('cd', 4)[3] + 68)])
            mem[(8 * ceil32(return_data.size)) + 100] = this.address
            require ext_code.size(address(cd[(cd[4] + ('cd', 4)[3] + 68)]))
            staticcall address(cd[(cd[4] + ('cd', 4)[3] + 68)]).balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args this.address
            mem[(8 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = (10 * ceil32(return_data.size)) + 96
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            mem[(10 * ceil32(return_data.size)) + 128] = cd[36]
            mem[(10 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
            mem[(10 * ceil32(return_data.size)) + 192] = address(cd[68])
            mem[(10 * ceil32(return_data.size)) + 224] = 128
            mem[(10 * ceil32(return_data.size)) + 256] = ('cd', 4).length
            if address(cd[(cd[4] + ('cd', 4)[1] + 68)]) != ext_call.return_data[12 len 20]:
                idx = 0
                s = cd[4] + 36
                t = (10 * ceil32(return_data.size)) + (32 * ('cd', 4).length) + 288
                u = (10 * ceil32(return_data.size)) + 288
                while idx < ('cd', 4).length:
                    mem[u] = t + (-10 * ceil32(return_data.size)) - 288
                    require cd[s] < calldata.size + -cd[4] - 67
                    require cd[(cd[s] + cd[4] + 36)] <= test266151307()
                    require cd[4] + 36 <= calldata.size - (32 * cd[(cd[s] + cd[4] + 36)])
                    mem[t] = cd[(cd[s] + cd[4] + 36)]
                    v = 0
                    w = cd[s] + cd[4] + 68
                    x = t + 32
                    while v < cd[(cd[s] + cd[4] + 36)]:
                        require cd[w] == address(cd[w])
                        mem[x] = address(cd[w])
                        v = v + 1
                        w = w + 32
                        x = x + 32
                        continue 
                    idx = idx + 1
                    s = s + 32
                    t = x
                    u = u + 32
                    continue 
                _157 = mem[64]
                mem[64] = t
                mem[t] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[t + 4] = ext_call.return_data[0]
                mem[t + 36] = 0
                mem[t + 68] = this.address
                mem[t + 100] = 128
                _167 = mem[_157]
                mem[t + 132] = mem[_157]
                mem[t + 164 len ceil32(_167)] = mem[_157 + 32 len ceil32(_167)]
                if ceil32(_167) > _167:
                    mem[t + _167 + 164] = 0
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0], 0, address(this.address), 128, mem[t + 132 len ceil32(_167) + 32]
            else:
                idx = 0
                s = cd[4] + 36
                t = (10 * ceil32(return_data.size)) + (32 * ('cd', 4).length) + 288
                u = (10 * ceil32(return_data.size)) + 288
                while idx < ('cd', 4).length:
                    mem[u] = t + (-10 * ceil32(return_data.size)) - 288
                    require cd[s] < calldata.size + -cd[4] - 67
                    require cd[(cd[s] + cd[4] + 36)] <= test266151307()
                    require cd[4] + 36 <= calldata.size - (32 * cd[(cd[s] + cd[4] + 36)])
                    mem[t] = cd[(cd[s] + cd[4] + 36)]
                    v = 0
                    w = cd[s] + cd[4] + 68
                    x = t + 32
                    while v < cd[(cd[s] + cd[4] + 36)]:
                        require cd[w] == address(cd[w])
                        mem[x] = address(cd[w])
                        v = v + 1
                        w = w + 32
                        x = x + 32
                        continue 
                    idx = idx + 1
                    s = s + 32
                    t = x
                    u = u + 32
                    continue 
                _159 = mem[64]
                mem[64] = t
                mem[t] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[t + 4] = 0
                mem[t + 36] = ext_call.return_data[0]
                mem[t + 68] = this.address
                mem[t + 100] = 128
                _168 = mem[_159]
                mem[t + 132] = mem[_159]
                mem[t + 164 len ceil32(_168)] = mem[_159 + 32 len ceil32(_168)]
                if ceil32(_168) > _168:
                    mem[t + _168 + 164] = 0
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                     gas gas_remaining wei
                    args 0, ext_call.return_data[0], address(this.address), 128, mem[t + 132 len ceil32(_168) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_e4a0b4bb(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 96
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
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 4).length:
        require cd[(cd[4] + (32 * idx) + 36)] < calldata.size + -cd[4] - 67
        require cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] <= test266151307()
        require cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68 <= calldata.size - (32 * cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)])
        require idx < ('cd', 36).length
        require idx < ('cd', 68).length
        require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
        require 1 < cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]
        require cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 100)] < calldata.size + -cd[4] + -cd[(cd[4] + (32 * idx) + 36)] - 99
        require cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 100)] + 68)] <= test266151307()
        require cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 100)] + 100 <= calldata.size - (32 * cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 100)] + 68)])
        require 0 < cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 100)] + 68)]
        require cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 100)] + 100)] == address(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 100)] + 100)])
        require 1 < cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]
        require cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 100)] < calldata.size + -cd[4] + -cd[(cd[4] + (32 * idx) + 36)] - 99
        require cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 100)] + 68)] <= test266151307()
        require cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 100)] + 100 <= calldata.size - (32 * cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 100)] + 68)])
        require 1 < cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 100)] + 68)]
        require cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 100)] + 132)] == address(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 100)] + 132)])
        mem[mem[64] + 4] = address(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 100)] + 100)])
        mem[mem[64] + 36] = address(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 100)] + 132)])
        require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
        staticcall address(cd[((32 * idx) + cd[68] + 36)]).getPair(address rg1, address rg2) with:
                gas gas_remaining wei
               args address(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 100)] + 100)]), address(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 100)] + 132)])
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _191 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _192 = mem[_191]
        require mem[_191] == mem[_191 + 12 len 20]
        require ext_code.size(mem[_191 + 12 len 20])
        staticcall mem[_191 + 12 len 20].getReserves() with:
                gas gas_remaining wei
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _195 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        _196 = mem[_195]
        require mem[_195] == mem[_195 + 18 len 14]
        _197 = mem[_195 + 32]
        require mem[_195 + 32] == mem[_195 + 50 len 14]
        require mem[_195 + 64] == mem[_195 + 92 len 4]
        require 0 < cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]
        require cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68)] < calldata.size + -cd[4] + -cd[(cd[4] + (32 * idx) + 36)] - 99
        require cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68)] + 68)] <= test266151307()
        require cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68)] + 100 <= calldata.size - (32 * cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68)] + 68)])
        require 0 < cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68)] + 68)]
        require cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68)] + 100)] == address(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68)] + 100)])
        require 1 < cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]
        require cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 100)] < calldata.size + -cd[4] + -cd[(cd[4] + (32 * idx) + 36)] - 99
        require cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 100)] + 68)] <= test266151307()
        require cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 100)] + 100 <= calldata.size - (32 * cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 100)] + 68)])
        require 0 < cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 100)] + 68)]
        require cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 100)] + 100)] == address(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 100)] + 100)])
        require ext_code.size(address(_192))
        staticcall address(_192).token0() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _201 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_201] == mem[_201 + 12 len 20]
        require 1 < cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]
        require cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 100)] < calldata.size + -cd[4] + -cd[(cd[4] + (32 * idx) + 36)] - 99
        require cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 100)] + 68)] <= test266151307()
        require cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 100)] + 100 <= calldata.size - (32 * cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 100)] + 68)])
        require 0 < cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 100)] + 68)]
        require cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 100)] + 100)] == address(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 100)] + 100)])
        require ext_code.size(address(_192))
        staticcall address(_192).token0() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if mem[_201 + 12 len 20] == address(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 100)] + 100)]):
            _207 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_207] == mem[_207 + 12 len 20]
            mem[mem[64] + 4] = cd[((32 * idx) + cd[36] + 36)]
            mem[mem[64] + 36] = Mask(112, 0, _196)
            if mem[_207 + 12 len 20] == address(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 100)] + 100)]):
                mem[mem[64] + 68] = Mask(112, 0, _197)
                require ext_code.size(address(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68)] + 100)]))
                staticcall address(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68)] + 100)]).getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args cd[((32 * idx) + cd[36] + 36)], _196 << 144, Mask(112, 0, _197)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _219 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _223 = mem[_219]
                require mem[_219] == mem[_219]
                require ext_code.size(address(_192))
                staticcall address(_192).token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _235 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_235] == mem[_235 + 12 len 20]
                require 1 < cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]
                require cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 100)] < calldata.size + -cd[4] + -cd[(cd[4] + (32 * idx) + 36)] - 99
                require cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 100)] + 68)] <= test266151307()
                require cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 100)] + 100 <= calldata.size - (32 * cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 100)] + 68)])
                require 0 < cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 100)] + 68)]
                require cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 100)] + 100)] == address(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 100)] + 100)])
                require 3 < cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]
                require cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 164)] < calldata.size + -cd[4] + -cd[(cd[4] + (32 * idx) + 36)] - 99
                require cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 164)] + 68)] <= test266151307()
                require cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 164)] + 100 <= calldata.size - (32 * cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 164)] + 68)])
                require 0 < cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 164)] + 68)]
                require cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 164)] + 100)] == address(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 164)] + 100)])
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 164)] + 100)]))
                staticcall address(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 164)] + 100)]).balanceOf(address rg1) with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if address(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 100)] + 100)]) != mem[_235 + 12 len 20]:
                    _259 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _267 = mem[_259]
                    require mem[_259] == mem[_259]
                    _275 = mem[64]
                    mem[mem[64] + 32] = cd[((32 * idx) + cd[36] + 36)]
                    mem[mem[64] + 64] = _267
                    mem[mem[64] + 96] = address(cd[((32 * idx) + cd[68] + 36)])
                    mem[mem[64] + 128] = 128
                    mem[mem[64] + 160] = cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]
                    s = 0
                    t = cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68
                    u = mem[64] + (32 * cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]) + 192
                    v = mem[64] + 192
                    while s < cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]:
                        mem[v] = u + -_275 - 192
                        require cd[t] < calldata.size + -cd[4] + -cd[(cd[4] + (32 * idx) + 36)] - 99
                        require cd[(cd[t] + cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68)] <= test266151307()
                        require cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68 <= calldata.size - (32 * cd[(cd[t] + cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68)])
                        mem[u] = cd[(cd[t] + cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68)]
                        w = 0
                        x = cd[t] + cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 100
                        y = u + 32
                        while w < cd[(cd[t] + cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68)]:
                            require cd[x] == address(cd[x])
                            mem[y] = address(cd[x])
                            w = w + 1
                            x = x + 32
                            y = y + 32
                            continue 
                        s = s + 1
                        t = t + 32
                        u = y
                        v = v + 32
                        continue 
                    _331 = mem[64]
                    mem[64] = u
                    mem[u] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[u + 4] = _223
                    mem[u + 36] = 0
                    mem[u + 68] = this.address
                    mem[u + 100] = 128
                    _347 = mem[_331]
                    mem[u + 132] = mem[_331]
                    s = 0
                    while s < _347:
                        mem[u + s + 164] = mem[_331 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_347) > _347:
                        mem[u + _347 + 164] = 0
                    require ext_code.size(address(_192))
                    call address(_192).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args _223, 0, address(this.address), 128, mem[u + 132 len ceil32(_347) + 32]
                else:
                    _260 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _268 = mem[_260]
                    require mem[_260] == mem[_260]
                    _276 = mem[64]
                    mem[mem[64] + 32] = cd[((32 * idx) + cd[36] + 36)]
                    mem[mem[64] + 64] = _268
                    mem[mem[64] + 96] = address(cd[((32 * idx) + cd[68] + 36)])
                    mem[mem[64] + 128] = 128
                    mem[mem[64] + 160] = cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]
                    s = 0
                    t = cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68
                    u = mem[64] + (32 * cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]) + 192
                    v = mem[64] + 192
                    while s < cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]:
                        mem[v] = u + -_276 - 192
                        require cd[t] < calldata.size + -cd[4] + -cd[(cd[4] + (32 * idx) + 36)] - 99
                        require cd[(cd[t] + cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68)] <= test266151307()
                        require cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68 <= calldata.size - (32 * cd[(cd[t] + cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68)])
                        mem[u] = cd[(cd[t] + cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68)]
                        w = 0
                        x = cd[t] + cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 100
                        y = u + 32
                        while w < cd[(cd[t] + cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68)]:
                            require cd[x] == address(cd[x])
                            mem[y] = address(cd[x])
                            w = w + 1
                            x = x + 32
                            y = y + 32
                            continue 
                        s = s + 1
                        t = t + 32
                        u = y
                        v = v + 32
                        continue 
                    _333 = mem[64]
                    mem[64] = u
                    mem[u] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[u + 4] = 0
                    mem[u + 36] = _223
                    mem[u + 68] = this.address
                    mem[u + 100] = 128
                    _348 = mem[_333]
                    mem[u + 132] = mem[_333]
                    s = 0
                    while s < _348:
                        mem[u + s + 164] = mem[_333 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_348) > _348:
                        mem[u + _348 + 164] = 0
                    require ext_code.size(address(_192))
                    call address(_192).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args 0, _223, address(this.address), 128, mem[u + 132 len ceil32(_348) + 32]
            else:
                mem[mem[64] + 68] = Mask(112, 0, _196)
                require ext_code.size(address(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68)] + 100)]))
                staticcall address(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68)] + 100)]).getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args cd[((32 * idx) + cd[36] + 36)], _196 << 144, Mask(112, 0, _196)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _220 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _224 = mem[_220]
                require mem[_220] == mem[_220]
                require ext_code.size(address(_192))
                staticcall address(_192).token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _236 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_236] == mem[_236 + 12 len 20]
                require 1 < cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]
                require cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 100)] < calldata.size + -cd[4] + -cd[(cd[4] + (32 * idx) + 36)] - 99
                require cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 100)] + 68)] <= test266151307()
                require cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 100)] + 100 <= calldata.size - (32 * cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 100)] + 68)])
                require 0 < cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 100)] + 68)]
                require cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 100)] + 100)] == address(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 100)] + 100)])
                require 3 < cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]
                require cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 164)] < calldata.size + -cd[4] + -cd[(cd[4] + (32 * idx) + 36)] - 99
                require cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 164)] + 68)] <= test266151307()
                require cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 164)] + 100 <= calldata.size - (32 * cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 164)] + 68)])
                require 0 < cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 164)] + 68)]
                require cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 164)] + 100)] == address(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 164)] + 100)])
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 164)] + 100)]))
                staticcall address(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 164)] + 100)]).balanceOf(address rg1) with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if address(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 100)] + 100)]) != mem[_236 + 12 len 20]:
                    _261 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _269 = mem[_261]
                    require mem[_261] == mem[_261]
                    _277 = mem[64]
                    mem[mem[64] + 32] = cd[((32 * idx) + cd[36] + 36)]
                    mem[mem[64] + 64] = _269
                    mem[mem[64] + 96] = address(cd[((32 * idx) + cd[68] + 36)])
                    mem[mem[64] + 128] = 128
                    mem[mem[64] + 160] = cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]
                    s = 0
                    t = cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68
                    u = mem[64] + (32 * cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]) + 192
                    v = mem[64] + 192
                    while s < cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]:
                        mem[v] = u + -_277 - 192
                        require cd[t] < calldata.size + -cd[4] + -cd[(cd[4] + (32 * idx) + 36)] - 99
                        require cd[(cd[t] + cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68)] <= test266151307()
                        require cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68 <= calldata.size - (32 * cd[(cd[t] + cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68)])
                        mem[u] = cd[(cd[t] + cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68)]
                        w = 0
                        x = cd[t] + cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 100
                        y = u + 32
                        while w < cd[(cd[t] + cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68)]:
                            require cd[x] == address(cd[x])
                            mem[y] = address(cd[x])
                            w = w + 1
                            x = x + 32
                            y = y + 32
                            continue 
                        s = s + 1
                        t = t + 32
                        u = y
                        v = v + 32
                        continue 
                    _335 = mem[64]
                    mem[64] = u
                    mem[u] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[u + 4] = _224
                    mem[u + 36] = 0
                    mem[u + 68] = this.address
                    mem[u + 100] = 128
                    _349 = mem[_335]
                    mem[u + 132] = mem[_335]
                    s = 0
                    while s < _349:
                        mem[u + s + 164] = mem[_335 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_349) > _349:
                        mem[u + _349 + 164] = 0
                    require ext_code.size(address(_192))
                    call address(_192).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args _224, 0, address(this.address), 128, mem[u + 132 len ceil32(_349) + 32]
                else:
                    _262 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _270 = mem[_262]
                    require mem[_262] == mem[_262]
                    _278 = mem[64]
                    mem[mem[64] + 32] = cd[((32 * idx) + cd[36] + 36)]
                    mem[mem[64] + 64] = _270
                    mem[mem[64] + 96] = address(cd[((32 * idx) + cd[68] + 36)])
                    mem[mem[64] + 128] = 128
                    mem[mem[64] + 160] = cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]
                    s = 0
                    t = cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68
                    u = mem[64] + (32 * cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]) + 192
                    v = mem[64] + 192
                    while s < cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]:
                        mem[v] = u + -_278 - 192
                        require cd[t] < calldata.size + -cd[4] + -cd[(cd[4] + (32 * idx) + 36)] - 99
                        require cd[(cd[t] + cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68)] <= test266151307()
                        require cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68 <= calldata.size - (32 * cd[(cd[t] + cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68)])
                        mem[u] = cd[(cd[t] + cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68)]
                        w = 0
                        x = cd[t] + cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 100
                        y = u + 32
                        while w < cd[(cd[t] + cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68)]:
                            require cd[x] == address(cd[x])
                            mem[y] = address(cd[x])
                            w = w + 1
                            x = x + 32
                            y = y + 32
                            continue 
                        s = s + 1
                        t = t + 32
                        u = y
                        v = v + 32
                        continue 
                    _337 = mem[64]
                    mem[64] = u
                    mem[u] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[u + 4] = 0
                    mem[u + 36] = _224
                    mem[u + 68] = this.address
                    mem[u + 100] = 128
                    _350 = mem[_337]
                    mem[u + 132] = mem[_337]
                    s = 0
                    while s < _350:
                        mem[u + s + 164] = mem[_337 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_350) > _350:
                        mem[u + _350 + 164] = 0
                    require ext_code.size(address(_192))
                    call address(_192).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args 0, _224, address(this.address), 128, mem[u + 132 len ceil32(_350) + 32]
        else:
            _208 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_208] == mem[_208 + 12 len 20]
            mem[mem[64] + 4] = cd[((32 * idx) + cd[36] + 36)]
            mem[mem[64] + 36] = Mask(112, 0, _197)
            if mem[_208 + 12 len 20] == address(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 100)] + 100)]):
                mem[mem[64] + 68] = Mask(112, 0, _197)
                require ext_code.size(address(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68)] + 100)]))
                staticcall address(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68)] + 100)]).getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args cd[((32 * idx) + cd[36] + 36)], _197 << 144, Mask(112, 0, _197)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _221 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _225 = mem[_221]
                require mem[_221] == mem[_221]
                require ext_code.size(address(_192))
                staticcall address(_192).token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _237 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_237] == mem[_237 + 12 len 20]
                require 1 < cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]
                require cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 100)] < calldata.size + -cd[4] + -cd[(cd[4] + (32 * idx) + 36)] - 99
                require cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 100)] + 68)] <= test266151307()
                require cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 100)] + 100 <= calldata.size - (32 * cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 100)] + 68)])
                require 0 < cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 100)] + 68)]
                require cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 100)] + 100)] == address(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 100)] + 100)])
                require 3 < cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]
                require cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 164)] < calldata.size + -cd[4] + -cd[(cd[4] + (32 * idx) + 36)] - 99
                require cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 164)] + 68)] <= test266151307()
                require cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 164)] + 100 <= calldata.size - (32 * cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 164)] + 68)])
                require 0 < cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 164)] + 68)]
                require cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 164)] + 100)] == address(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 164)] + 100)])
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 164)] + 100)]))
                staticcall address(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 164)] + 100)]).balanceOf(address rg1) with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if address(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 100)] + 100)]) != mem[_237 + 12 len 20]:
                    _263 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _271 = mem[_263]
                    require mem[_263] == mem[_263]
                    _279 = mem[64]
                    mem[mem[64] + 32] = cd[((32 * idx) + cd[36] + 36)]
                    mem[mem[64] + 64] = _271
                    mem[mem[64] + 96] = address(cd[((32 * idx) + cd[68] + 36)])
                    mem[mem[64] + 128] = 128
                    mem[mem[64] + 160] = cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]
                    s = 0
                    t = cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68
                    u = mem[64] + (32 * cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]) + 192
                    v = mem[64] + 192
                    while s < cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]:
                        mem[v] = u + -_279 - 192
                        require cd[t] < calldata.size + -cd[4] + -cd[(cd[4] + (32 * idx) + 36)] - 99
                        require cd[(cd[t] + cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68)] <= test266151307()
                        require cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68 <= calldata.size - (32 * cd[(cd[t] + cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68)])
                        mem[u] = cd[(cd[t] + cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68)]
                        w = 0
                        x = cd[t] + cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 100
                        y = u + 32
                        while w < cd[(cd[t] + cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68)]:
                            require cd[x] == address(cd[x])
                            mem[y] = address(cd[x])
                            w = w + 1
                            x = x + 32
                            y = y + 32
                            continue 
                        s = s + 1
                        t = t + 32
                        u = y
                        v = v + 32
                        continue 
                    _339 = mem[64]
                    mem[64] = u
                    mem[u] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[u + 4] = _225
                    mem[u + 36] = 0
                    mem[u + 68] = this.address
                    mem[u + 100] = 128
                    _351 = mem[_339]
                    mem[u + 132] = mem[_339]
                    s = 0
                    while s < _351:
                        mem[u + s + 164] = mem[_339 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_351) > _351:
                        mem[u + _351 + 164] = 0
                    require ext_code.size(address(_192))
                    call address(_192).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args _225, 0, address(this.address), 128, mem[u + 132 len ceil32(_351) + 32]
                else:
                    _264 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _272 = mem[_264]
                    require mem[_264] == mem[_264]
                    _280 = mem[64]
                    mem[mem[64] + 32] = cd[((32 * idx) + cd[36] + 36)]
                    mem[mem[64] + 64] = _272
                    mem[mem[64] + 96] = address(cd[((32 * idx) + cd[68] + 36)])
                    mem[mem[64] + 128] = 128
                    mem[mem[64] + 160] = cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]
                    s = 0
                    t = cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68
                    u = mem[64] + (32 * cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]) + 192
                    v = mem[64] + 192
                    while s < cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]:
                        mem[v] = u + -_280 - 192
                        require cd[t] < calldata.size + -cd[4] + -cd[(cd[4] + (32 * idx) + 36)] - 99
                        require cd[(cd[t] + cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68)] <= test266151307()
                        require cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68 <= calldata.size - (32 * cd[(cd[t] + cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68)])
                        mem[u] = cd[(cd[t] + cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68)]
                        w = 0
                        x = cd[t] + cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 100
                        y = u + 32
                        while w < cd[(cd[t] + cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68)]:
                            require cd[x] == address(cd[x])
                            mem[y] = address(cd[x])
                            w = w + 1
                            x = x + 32
                            y = y + 32
                            continue 
                        s = s + 1
                        t = t + 32
                        u = y
                        v = v + 32
                        continue 
                    _341 = mem[64]
                    mem[64] = u
                    mem[u] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[u + 4] = 0
                    mem[u + 36] = _225
                    mem[u + 68] = this.address
                    mem[u + 100] = 128
                    _352 = mem[_341]
                    mem[u + 132] = mem[_341]
                    s = 0
                    while s < _352:
                        mem[u + s + 164] = mem[_341 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_352) > _352:
                        mem[u + _352 + 164] = 0
                    require ext_code.size(address(_192))
                    call address(_192).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args 0, _225, address(this.address), 128, mem[u + 132 len ceil32(_352) + 32]
            else:
                mem[mem[64] + 68] = Mask(112, 0, _196)
                require ext_code.size(address(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68)] + 100)]))
                staticcall address(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68)] + 100)]).getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args cd[((32 * idx) + cd[36] + 36)], _197 << 144, Mask(112, 0, _196)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _222 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _226 = mem[_222]
                require mem[_222] == mem[_222]
                require ext_code.size(address(_192))
                staticcall address(_192).token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _238 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_238] == mem[_238 + 12 len 20]
                require 1 < cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]
                require cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 100)] < calldata.size + -cd[4] + -cd[(cd[4] + (32 * idx) + 36)] - 99
                require cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 100)] + 68)] <= test266151307()
                require cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 100)] + 100 <= calldata.size - (32 * cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 100)] + 68)])
                require 0 < cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 100)] + 68)]
                require cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 100)] + 100)] == address(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 100)] + 100)])
                require 3 < cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]
                require cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 164)] < calldata.size + -cd[4] + -cd[(cd[4] + (32 * idx) + 36)] - 99
                require cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 164)] + 68)] <= test266151307()
                require cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 164)] + 100 <= calldata.size - (32 * cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 164)] + 68)])
                require 0 < cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 164)] + 68)]
                require cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 164)] + 100)] == address(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 164)] + 100)])
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 164)] + 100)]))
                staticcall address(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 164)] + 100)]).balanceOf(address rg1) with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if address(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 100)] + 100)]) != mem[_238 + 12 len 20]:
                    _265 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _273 = mem[_265]
                    require mem[_265] == mem[_265]
                    _281 = mem[64]
                    mem[mem[64] + 32] = cd[((32 * idx) + cd[36] + 36)]
                    mem[mem[64] + 64] = _273
                    mem[mem[64] + 96] = address(cd[((32 * idx) + cd[68] + 36)])
                    mem[mem[64] + 128] = 128
                    mem[mem[64] + 160] = cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]
                    s = 0
                    t = cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68
                    u = mem[64] + (32 * cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]) + 192
                    v = mem[64] + 192
                    while s < cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]:
                        mem[v] = u + -_281 - 192
                        require cd[t] < calldata.size + -cd[4] + -cd[(cd[4] + (32 * idx) + 36)] - 99
                        require cd[(cd[t] + cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68)] <= test266151307()
                        require cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68 <= calldata.size - (32 * cd[(cd[t] + cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68)])
                        mem[u] = cd[(cd[t] + cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68)]
                        w = 0
                        x = cd[t] + cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 100
                        y = u + 32
                        while w < cd[(cd[t] + cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68)]:
                            require cd[x] == address(cd[x])
                            mem[y] = address(cd[x])
                            w = w + 1
                            x = x + 32
                            y = y + 32
                            continue 
                        s = s + 1
                        t = t + 32
                        u = y
                        v = v + 32
                        continue 
                    _343 = mem[64]
                    mem[64] = u
                    mem[u] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[u + 4] = _226
                    mem[u + 36] = 0
                    mem[u + 68] = this.address
                    mem[u + 100] = 128
                    _353 = mem[_343]
                    mem[u + 132] = mem[_343]
                    s = 0
                    while s < _353:
                        mem[u + s + 164] = mem[_343 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_353) > _353:
                        mem[u + _353 + 164] = 0
                    require ext_code.size(address(_192))
                    call address(_192).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args _226, 0, address(this.address), 128, mem[u + 132 len ceil32(_353) + 32]
                else:
                    _266 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _274 = mem[_266]
                    require mem[_266] == mem[_266]
                    _282 = mem[64]
                    mem[mem[64] + 32] = cd[((32 * idx) + cd[36] + 36)]
                    mem[mem[64] + 64] = _274
                    mem[mem[64] + 96] = address(cd[((32 * idx) + cd[68] + 36)])
                    mem[mem[64] + 128] = 128
                    mem[mem[64] + 160] = cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]
                    s = 0
                    t = cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68
                    u = mem[64] + (32 * cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]) + 192
                    v = mem[64] + 192
                    while s < cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]:
                        mem[v] = u + -_282 - 192
                        require cd[t] < calldata.size + -cd[4] + -cd[(cd[4] + (32 * idx) + 36)] - 99
                        require cd[(cd[t] + cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68)] <= test266151307()
                        require cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68 <= calldata.size - (32 * cd[(cd[t] + cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68)])
                        mem[u] = cd[(cd[t] + cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68)]
                        w = 0
                        x = cd[t] + cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 100
                        y = u + 32
                        while w < cd[(cd[t] + cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68)]:
                            require cd[x] == address(cd[x])
                            mem[y] = address(cd[x])
                            w = w + 1
                            x = x + 32
                            y = y + 32
                            continue 
                        s = s + 1
                        t = t + 32
                        u = y
                        v = v + 32
                        continue 
                    _345 = mem[64]
                    mem[64] = u
                    mem[u] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[u + 4] = 0
                    mem[u + 36] = _226
                    mem[u + 68] = this.address
                    mem[u + 100] = 128
                    _354 = mem[_345]
                    mem[u + 132] = mem[_345]
                    s = 0
                    while s < _354:
                        mem[u + s + 164] = mem[_345 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_354) > _354:
                        mem[u + _354 + 164] = 0
                    require ext_code.size(address(_192))
                    call address(_192).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args 0, _226, address(this.address), 128, mem[u + 132 len ceil32(_354) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
}



}
