contract main {




// =====================  Runtime code  =====================


const getBalance = eth.balance(this.address)


address owner;
address sub_cc2ca7a5Address;
address ROUTERAddress;
address sub_2d7f13afAddress;
address stor4;
address stor5;
uint256 stor6;

function sub_2d7f13af(?) {
    return sub_2d7f13afAddress
}

function ROUTER() {
    return ROUTERAddress
}

function getOwner() {
    return owner
}

function sub_cc2ca7a5(?) {
    return sub_cc2ca7a5Address
}

function deposit() payable {
  stop
}

function _fallback() payable {
    revert
}

function sub_46f0ebef(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == owner
    stor6 = arg1
}

function sub_6298ee24(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require msg.sender == owner
    stor5 = address(arg1)
}

function sub_0ba098ac(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require msg.sender == owner
    ROUTERAddress = address(arg1)
}

function withdraw() {
    require msg.sender == owner
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function getPath() {
    mem[128] = stor4
    mem[160] = sub_2d7f13afAddress
    mem[192] = 32
    idx = 0
    s = 128
    t = 256
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return Array(len=2, data=mem[256 len 64])
}

function sub_b5ee5cae(?) {
    require ext_code.size(stor4)
    staticcall stor4.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function withdrawERC(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if not arg2:
        revert with 'NH{q', 18
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args owner, ext_call.return_data[0] / arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_b43bd604(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    if owner != msg.sender:
        if stor5 != msg.sender:
            revert with 0, 'Not owner'
    stor4 = address(arg1)
    sub_2d7f13afAddress = address(arg2)
    ROUTERAddress = address(arg3)
    require ext_code.size(address(arg1))
    call address(arg1).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args ROUTERAddress, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(sub_cc2ca7a5Address)
    call sub_cc2ca7a5Address.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args ROUTERAddress, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_281a320f(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[96] = 2
    mem[128] = stor4
    mem[160] = sub_2d7f13afAddress
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
    require ext_code.size(ROUTERAddress)
    staticcall ROUTERAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args arg1, Array(len=2, data=mem[292 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    _33 = mem[192 len 4], Mask(224, 32, arg1) >> 32
    require mem[192 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
    require mem[192 len 4], Mask(224, 32, arg1) >> 32 + 223 < return_data.size + 192
    _34 = mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]
    if mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192] > test266151307():
        revert with 'NH{q', 65
    if ceil32(return_data.size) + floor32(mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 193 > test266151307() or floor32(mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = ceil32(return_data.size) + floor32(mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 193
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]
    require _33 + (32 * _34) + 32 <= return_data.size
    idx = 0
    s = _33 + 224
    t = ceil32(return_data.size) + 224
    while idx < _34:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    _55 = mem[64]
    mem[mem[64]] = 2
    mem[64] = mem[64] + 96
    if 0 >= mem[_55]:
        revert with 'NH{q', 50
    mem[_55 + 32] = stor4
    if 1 >= mem[_55]:
        revert with 'NH{q', 50
    mem[_55 + 64] = sub_2d7f13afAddress
    mem[_55 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[_55 + 100] = arg1
    mem[_55 + 132] = 64
    mem[_55 + 164] = mem[_55]
    idx = 0
    s = _55 + 32
    t = _55 + 196
    while idx < mem[_55]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(ROUTERAddress)
    staticcall ROUTERAddress.mem[mem[64] len 4] with:
            gas gas_remaining wei
           args mem[mem[64] + 4 len _55 + (32 * mem[_55]) + -mem[64] + 192]
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
        revert with 'NH{q', 65
    if _74 + ceil32(return_data.size) + floor32(mem[_74 + mem[_74]]) + 1 > test266151307() or floor32(mem[_74 + mem[_74]]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = _74 + ceil32(return_data.size) + floor32(mem[_74 + mem[_74]]) + 1
    mem[_74 + ceil32(return_data.size)] = _76
    require _75 + (32 * _76) + 32 <= return_data.size
    idx = 0
    s = _74 + _75 + 32
    t = _74 + ceil32(return_data.size) + 32
    while idx < _76:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if _76 < 1:
        revert with 'NH{q', 17
    if _76 - 1 >= mem[ceil32(return_data.size) + 192]:
        revert with 'NH{q', 50
    return memory
      from (32 * _76 - 1) + ceil32(return_data.size) + 224
       len 32
}

function sub_47f7cb48(?) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not arg1:
        if 10000 < stor6:
            revert with 'NH{q', 17
        mem[96] = 2
        mem[128] = stor4
        mem[160] = sub_2d7f13afAddress
        mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[196] = arg2
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
        require ext_code.size(ROUTERAddress)
        staticcall ROUTERAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg2, Array(len=2, data=mem[292 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 192
        require return_data.size >= 32
        _77 = mem[192 len 4], Mask(224, 32, arg2) >> 32
        require mem[192 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
        require mem[192 len 4], Mask(224, 32, arg2) >> 32 + 223 < return_data.size + 192
        _79 = mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]
        if mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192] > test266151307():
            revert with 'NH{q', 65
        if ceil32(return_data.size) + floor32(mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 193 > test266151307() or floor32(mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = ceil32(return_data.size) + floor32(mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 193
        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]
        require _77 + (32 * _79) + 32 <= return_data.size
        idx = 0
        s = _77 + 224
        t = ceil32(return_data.size) + 224
        while idx < _79:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        _131 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        if 0 >= mem[_131]:
            revert with 'NH{q', 50
        mem[_131 + 32] = stor4
        if 1 >= mem[_131]:
            revert with 'NH{q', 50
        mem[_131 + 64] = sub_2d7f13afAddress
        mem[_131 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[_131 + 100] = arg2
        mem[_131 + 132] = 64
        mem[_131 + 164] = mem[_131]
        idx = 0
        s = _131 + 32
        t = _131 + 196
        while idx < mem[_131]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(ROUTERAddress)
        staticcall ROUTERAddress.mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len _131 + (32 * mem[_131]) + -mem[64] + 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _179 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _181 = mem[_179]
        require mem[_179] <= test266151307()
        require _179 + mem[_179] + 31 < _179 + return_data.size
        _183 = mem[_179 + mem[_179]]
        if mem[_179 + mem[_179]] > test266151307():
            revert with 'NH{q', 65
        if _179 + ceil32(return_data.size) + floor32(mem[_179 + mem[_179]]) + 1 > test266151307() or floor32(mem[_179 + mem[_179]]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _179 + ceil32(return_data.size) + floor32(mem[_179 + mem[_179]]) + 1
        mem[_179 + ceil32(return_data.size)] = _183
        require _181 + (32 * _183) + 32 <= return_data.size
        idx = 0
        s = _179 + _181 + 32
        t = _179 + ceil32(return_data.size) + 32
        while idx < _183:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        if _183 < 1:
            revert with 'NH{q', 17
        if _183 - 1 >= mem[ceil32(return_data.size) + 192]:
            revert with 'NH{q', 50
        if mem[(32 * _183 - 1) + ceil32(return_data.size) + 224] and -stor6 + 10000 > -1 / mem[(32 * _183 - 1) + ceil32(return_data.size) + 224]:
            revert with 'NH{q', 17
        _217 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        if 0 >= mem[_217]:
            revert with 'NH{q', 50
        mem[_217 + 32] = stor4
        if 1 >= mem[_217]:
            revert with 'NH{q', 50
        mem[_217 + 64] = sub_2d7f13afAddress
        if block.timestamp > -10:
            revert with 'NH{q', 17
        mem[_217 + 96] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
        mem[_217 + 100] = arg2
        mem[_217 + 132] = (10000 * mem[(32 * _183 - 1) + ceil32(return_data.size) + 224]) - (stor6 * mem[(32 * _183 - 1) + ceil32(return_data.size) + 224]) / 10000
        mem[_217 + 164] = 160
        mem[_217 + 260] = mem[_217]
        idx = 0
        s = _217 + 32
        t = _217 + 292
        while idx < mem[_217]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_217 + 196] = owner
        mem[_217 + 228] = block.timestamp + 9
        require ext_code.size(ROUTERAddress)
        call ROUTERAddress.mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _217 + (32 * mem[_217]) + -mem[64] + 288]
    else:
        mem[100] = this.address
        require ext_code.size(stor4)
        staticcall stor4.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if not arg1:
            revert with 'NH{q', 18
        if 10000 < stor6:
            revert with 'NH{q', 17
        mem[ceil32(return_data.size) + 96] = 2
        mem[ceil32(return_data.size) + 128] = stor4
        mem[ceil32(return_data.size) + 160] = sub_2d7f13afAddress
        mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 196] = ext_call.return_data[0] / arg1
        mem[ceil32(return_data.size) + 228] = 64
        mem[ceil32(return_data.size) + 260] = 2
        idx = 0
        s = ceil32(return_data.size) + 128
        t = ceil32(return_data.size) + 292
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(ROUTERAddress)
        staticcall ROUTERAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args ext_call.return_data[0] / arg1, Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (2 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        _76 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, ext_call.return_data[0] / arg1) >> 32
        require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, ext_call.return_data[0] / arg1) >> 32 <= test266151307()
        require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, ext_call.return_data[0] / arg1) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
        _78 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, ext_call.return_data[0] / arg1) >> 32 + 192]
        if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, ext_call.return_data[0] / arg1) >> 32 + 192] > test266151307():
            revert with 'NH{q', 65
        if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, ext_call.return_data[0] / arg1) >> 32 + 192]) + 193 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, ext_call.return_data[0] / arg1) >> 32 + 192]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, ext_call.return_data[0] / arg1) >> 32 + 192]) + 193
        mem[(2 * ceil32(return_data.size)) + 192] = _78
        require _76 + (32 * _78) + 32 <= return_data.size
        idx = 0
        s = ceil32(return_data.size) + _76 + 224
        t = (2 * ceil32(return_data.size)) + 224
        while idx < _78:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        _130 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        if 0 >= mem[_130]:
            revert with 'NH{q', 50
        mem[_130 + 32] = stor4
        if 1 >= mem[_130]:
            revert with 'NH{q', 50
        mem[_130 + 64] = sub_2d7f13afAddress
        mem[_130 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[_130 + 100] = ext_call.return_data[0] / arg1
        mem[_130 + 132] = 64
        mem[_130 + 164] = mem[_130]
        idx = 0
        s = _130 + 32
        t = _130 + 196
        while idx < mem[_130]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(ROUTERAddress)
        staticcall ROUTERAddress.mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len _130 + (32 * mem[_130]) + -mem[64] + 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _178 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _180 = mem[_178]
        require mem[_178] <= test266151307()
        require _178 + mem[_178] + 31 < _178 + return_data.size
        _182 = mem[_178 + mem[_178]]
        if mem[_178 + mem[_178]] > test266151307():
            revert with 'NH{q', 65
        if _178 + ceil32(return_data.size) + floor32(mem[_178 + mem[_178]]) + 1 > test266151307() or floor32(mem[_178 + mem[_178]]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _178 + ceil32(return_data.size) + floor32(mem[_178 + mem[_178]]) + 1
        mem[_178 + ceil32(return_data.size)] = _182
        require _180 + (32 * _182) + 32 <= return_data.size
        idx = 0
        s = _178 + _180 + 32
        t = _178 + ceil32(return_data.size) + 32
        while idx < _182:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        if _182 < 1:
            revert with 'NH{q', 17
        if _182 - 1 >= mem[(2 * ceil32(return_data.size)) + 192]:
            revert with 'NH{q', 50
        _214 = mem[(32 * _182 - 1) + (2 * ceil32(return_data.size)) + 224]
        if mem[(32 * _182 - 1) + (2 * ceil32(return_data.size)) + 224] and -stor6 + 10000 > -1 / mem[(32 * _182 - 1) + (2 * ceil32(return_data.size)) + 224]:
            revert with 'NH{q', 17
        _216 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        if 0 >= mem[_216]:
            revert with 'NH{q', 50
        mem[_216 + 32] = stor4
        if 1 >= mem[_216]:
            revert with 'NH{q', 50
        mem[_216 + 64] = sub_2d7f13afAddress
        if block.timestamp > -10:
            revert with 'NH{q', 17
        mem[_216 + 96] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
        mem[_216 + 100] = ext_call.return_data[0] / arg1
        mem[_216 + 132] = (10000 * _214) - (stor6 * _214) / 10000
        mem[_216 + 164] = 160
        mem[_216 + 260] = mem[_216]
        idx = 0
        s = _216 + 32
        t = _216 + 292
        while idx < mem[_216]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_216 + 196] = owner
        mem[_216 + 228] = block.timestamp + 9
        require ext_code.size(ROUTERAddress)
        call ROUTERAddress.mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _216 + (32 * mem[_216]) + -mem[64] + 288]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
