contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint8 stor1;
address factoryAddress;
mapping of uint256 sub_273bf5e9;

function sub_273bf5e9(?) payable {
    require calldata.size - 4 >= 32
    return sub_273bf5e9[arg1]
}

function sub_530c6449(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor1[arg1])
}

function owner() payable {
    return owner
}

function factory() payable {
    return factoryAddress
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

function sub_06e674c0(?) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_273bf5e9[arg1] = arg2
}

function sub_b07904ca(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor1[address(arg1)] = uint8(bool(arg2))
    return 1
}

function getNft() payable {
    require ext_code.size(factoryAddress)
    staticcall factoryAddress.0xac513fb8 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    return ext_call.return_data[12 len 20]
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

function mint(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not stor1[msg.sender]:
        revert with 0, 'PermissionDeny'
    require ext_code.size(factoryAddress)
    call factoryAddress.0x40c10f19 with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getTypes() payable {
    mem[96] = 0xb4579d6000000000000000000000000000000000000000000000000000000000
    require ext_code.size(factoryAddress)
    staticcall factoryAddress.0xb4579d60 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96]
    require mem[96] <= test266151307()
    require mem[96] + 127 < return_data.size + 96
    _5 = mem[mem[96] + 96]
    require mem[mem[96] + 96] <= test266151307()
    require (32 * mem[mem[96] + 96]) + 32 >= 0 and ceil32(return_data.size) + (32 * mem[mem[96] + 96]) + 128 <= test266151307()
    mem[64] = ceil32(return_data.size) + (32 * mem[mem[96] + 96]) + 128
    mem[ceil32(return_data.size) + 96] = _5
    require return_data.size >= _4 + (32 * _5) + 32
    mem[ceil32(return_data.size) + 128 len 32 * _5] = mem[_4 + 128 len 32 * _5]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = _5
    mem[mem[64] + 64 len 32 * _5] = mem[ceil32(return_data.size) + 128 len 32 * _5]
    return Array(len=_5, data=mem[mem[64] + 64 len 32 * _5])
}

function sub_4f8c8884(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require calldata.size > cd[4] + 35
    require ('cd', 4).length <= test266151307()
    require (32 * ('cd', 4).length) + 128 >= 96 and (32 * ('cd', 4).length) + 128 <= test266151307()
    mem[96] = ('cd', 4).length
    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
    s = cd[4] + 36
    t = 128
    idx = 0
    while idx < ('cd', 4).length:
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    mem[(32 * ('cd', 4).length) + 128] = 0x4f8c888400000000000000000000000000000000000000000000000000000000
    mem[(32 * ('cd', 4).length) + 132] = 32
    mem[(32 * ('cd', 4).length) + 164] = ('cd', 4).length
    mem[(32 * ('cd', 4).length) + 196 len 32 * ('cd', 4).length] = mem[128 len 32 * ('cd', 4).length]
    require ext_code.size(factoryAddress)
    staticcall factoryAddress.0x4f8c8884 with:
            gas gas_remaining wei
           args Array(len=('cd', 4).length, data=mem[128 len 32 * ('cd', 4).length])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * ('cd', 4).length) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * ('cd', 4).length) + ceil32(return_data.size) + 128
    require return_data.size >= 64
    _75 = mem[(32 * ('cd', 4).length) + 128 len 4], 0
    require mem[(32 * ('cd', 4).length) + 128 len 4], 0 <= test266151307()
    require (32 * ('cd', 4).length) + mem[(32 * ('cd', 4).length) + 128 len 4], 0 + 159 < (32 * ('cd', 4).length) + return_data.size + 128
    _76 = mem[(32 * ('cd', 4).length) + mem[(32 * ('cd', 4).length) + 128 len 4], 0 + 128]
    require mem[(32 * ('cd', 4).length) + mem[(32 * ('cd', 4).length) + 128 len 4], 0 + 128] <= test266151307()
    require (32 * mem[(32 * ('cd', 4).length) + mem[(32 * ('cd', 4).length) + 128 len 4], 0 + 128]) + 32 >= 0 and (32 * ('cd', 4).length) + ceil32(return_data.size) + (32 * mem[(32 * ('cd', 4).length) + mem[(32 * ('cd', 4).length) + 128 len 4], 0 + 128]) + 160 <= test266151307()
    mem[64] = (32 * ('cd', 4).length) + ceil32(return_data.size) + (32 * mem[(32 * ('cd', 4).length) + mem[(32 * ('cd', 4).length) + 128 len 4], 0 + 128]) + 160
    mem[(32 * ('cd', 4).length) + ceil32(return_data.size) + 128] = _76
    require return_data.size >= _75 + (32 * _76) + 32
    mem[(32 * ('cd', 4).length) + ceil32(return_data.size) + 160 len 32 * _76] = mem[(32 * ('cd', 4).length) + _75 + 160 len 32 * _76]
    require 32, Mask(224, 32, ('cd', 4).length) >> 32 <= test266151307()
    require (32 * ('cd', 4).length) + 32, Mask(224, 32, ('cd', 4).length) >> 32 + 159 < (32 * ('cd', 4).length) + return_data.size + 128
    _107 = mem[(32 * ('cd', 4).length) + 32, Mask(224, 32, ('cd', 4).length) >> 32 + 128]
    require mem[(32 * ('cd', 4).length) + 32, Mask(224, 32, ('cd', 4).length) >> 32 + 128] <= test266151307()
    _108 = mem[64]
    require mem[64] + (32 * mem[(32 * ('cd', 4).length) + 32, Mask(224, 32, ('cd', 4).length) >> 32 + 128]) + 32 >= mem[64] and mem[64] + (32 * mem[(32 * ('cd', 4).length) + 32, Mask(224, 32, ('cd', 4).length) >> 32 + 128]) + 32 <= test266151307()
    mem[64] = mem[64] + (32 * mem[(32 * ('cd', 4).length) + 32, Mask(224, 32, ('cd', 4).length) >> 32 + 128]) + 32
    mem[_108] = _107
    require return_data.size >= 32, Mask(224, 32, ('cd', 4).length) >> 32 + (32 * _107) + 32
    mem[_108 + 32 len 32 * _107] = mem[(32 * ('cd', 4).length) + 32, Mask(224, 32, ('cd', 4).length) >> 32 + 160 len 32 * _107]
    require ('cd', 4).length <= test266151307()
    _134 = mem[64]
    mem[mem[64]] = ('cd', 4).length
    mem[64] = mem[64] + (32 * ('cd', 4).length) + 32
    if not ('cd', 4).length:
        idx = 0
        while idx < ('cd', 4).length:
            require idx < mem[(32 * ('cd', 4).length) + ceil32(return_data.size) + 128]
            mem[0] = mem[(32 * idx) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 160]
            mem[32] = 3
            require idx < mem[_134]
            mem[(32 * idx) + _134 + 32] = sub_273bf5e9[mem[(32 * idx) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 160]]
            idx = idx + 1
            continue 
        _157 = mem[64]
        mem[mem[64]] = 64
        _165 = mem[(32 * ('cd', 4).length) + ceil32(return_data.size) + 128]
        mem[mem[64] + 64] = mem[(32 * ('cd', 4).length) + ceil32(return_data.size) + 128]
        mem[mem[64] + 96 len 32 * _165] = mem[(32 * ('cd', 4).length) + ceil32(return_data.size) + 160 len 32 * _165]
        mem[mem[64] + 32] = (32 * _165) + 96
        _177 = mem[_134]
        mem[_157 + (32 * _165) + 96] = mem[_134]
        mem[_157 + (32 * _165) + 128 len 32 * _177] = mem[_134 + 32 len 32 * _177]
        return memory
          from mem[64]
           len _157 + (32 * _165) + (32 * _177) + -mem[64] + 128
    mem[_134 + 32 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
    idx = 0
    while idx < ('cd', 4).length:
        require idx < mem[(32 * ('cd', 4).length) + ceil32(return_data.size) + 128]
        mem[0] = mem[(32 * idx) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 160]
        mem[32] = 3
        require idx < mem[_134]
        mem[(32 * idx) + _134 + 32] = sub_273bf5e9[mem[(32 * idx) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 160]]
        idx = idx + 1
        continue 
    _161 = mem[64]
    mem[mem[64]] = 64
    _166 = mem[(32 * ('cd', 4).length) + ceil32(return_data.size) + 128]
    mem[mem[64] + 64] = mem[(32 * ('cd', 4).length) + ceil32(return_data.size) + 128]
    mem[mem[64] + 96 len 32 * _166] = mem[(32 * ('cd', 4).length) + ceil32(return_data.size) + 160 len 32 * _166]
    mem[mem[64] + 32] = (32 * _166) + 96
    _178 = mem[_134]
    mem[_161 + (32 * _166) + 96] = mem[_134]
    mem[_161 + (32 * _166) + 128 len 32 * _178] = mem[_134 + 32 len 32 * _178]
    return memory
      from mem[64]
       len _161 + (32 * _166) + (32 * _178) + -mem[64] + 128
}



}
