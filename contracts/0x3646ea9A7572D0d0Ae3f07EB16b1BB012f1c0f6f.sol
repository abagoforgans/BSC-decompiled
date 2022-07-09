contract main {




// =====================  Runtime code  =====================


address owner;
address sub_bb92cc3dAddress;
mapping of uint8 stor2;

function owner() payable {
    return owner
}

function sub_bb92cc3d(?) payable {
    return sub_bb92cc3dAddress
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

function setAdmin(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor2[address(arg1)] = uint8(arg2)
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

function sub_e4873252(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    s = cd[4] + 36
    t = 128
    idx = 0
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 36).length) + 98 < 97 or ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98 > test266151307():
        revert with 0, 65
    mem[ceil32(32 * ('cd', 4).length) + 97] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = ceil32(32 * ('cd', 4).length) + 129
    while idx < ('cd', 36).length:
        require cd[s] == uint32(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    if ('cd', 68).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 68).length) + 99 < 98 or ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + 99 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + 99
    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98] = ('cd', 68).length
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    idx = 0
    s = cd[68] + 36
    t = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130
    while idx < ('cd', 68).length:
        require cd[s] == uint32(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[0] = msg.sender
    mem[32] = 2
    if not stor2[msg.sender]:
        revert with 0, 'Unauthorized'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= mem[96]:
            revert with 0, 50
        require ext_code.size(sub_bb92cc3dAddress)
        staticcall sub_bb92cc3dAddress.UserRewards(address arg1) with:
                gas gas_remaining wei
               args address(mem[(32 * idx) + 128])
        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _168 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 64
        _169 = mem[_168]
        require mem[_168] == mem[_168 + 28 len 4]
        _170 = mem[_168 + 32]
        require mem[_168 + 32] == mem[_168 + 60 len 4]
        if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
            revert with 0, 50
        if mem[_168 + 28 len 4] <= mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 157 len 4]:
            if idx >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]:
                revert with 0, 50
            if mem[_168 + 60 len 4] <= mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 158 len 4]:
                if idx >= mem[96]:
                    revert with 0, 50
                _180 = mem[(32 * idx) + 128]
                mem[mem[64]] = 0x190cda8a00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = address(_180)
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = 0
                require ext_code.size(sub_bb92cc3dAddress)
                call sub_bb92cc3dAddress.0x190cda8a with:
                     gas gas_remaining wei
                    args address(_180), 0, 0
            else:
                if idx >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]:
                    revert with 0, 50
                _179 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
                if mem[_168 + 60 len 4] < mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 158 len 4]:
                    revert with 0, 17
                if idx >= mem[96]:
                    revert with 0, 50
                _189 = mem[(32 * idx) + 128]
                mem[mem[64]] = 0x190cda8a00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = address(_189)
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = uint32(uint32(_170) - uint32(_179))
                require ext_code.size(sub_bb92cc3dAddress)
                call sub_bb92cc3dAddress.0x190cda8a with:
                     gas gas_remaining wei
                    args address(_189), 0, uint32(uint32(_170) - uint32(_179))
        else:
            if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                revert with 0, 50
            _175 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]
            if mem[_168 + 28 len 4] < mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 157 len 4]:
                revert with 0, 17
            if idx >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]:
                revert with 0, 50
            if mem[_168 + 60 len 4] <= mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 158 len 4]:
                if idx >= mem[96]:
                    revert with 0, 50
                _192 = mem[(32 * idx) + 128]
                mem[mem[64]] = 0x190cda8a00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = address(_192)
                mem[mem[64] + 36] = uint32(uint32(_169) - uint32(_175))
                mem[mem[64] + 68] = 0
                require ext_code.size(sub_bb92cc3dAddress)
                call sub_bb92cc3dAddress.0x190cda8a with:
                     gas gas_remaining wei
                    args address(_192), uint32(_169) - uint32(_175) << 224, 0
            else:
                if idx >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]:
                    revert with 0, 50
                _188 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
                if mem[_168 + 60 len 4] < mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 158 len 4]:
                    revert with 0, 17
                if idx >= mem[96]:
                    revert with 0, 50
                _196 = mem[(32 * idx) + 128]
                mem[mem[64]] = 0x190cda8a00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = address(_196)
                mem[mem[64] + 36] = uint32(uint32(_169) - uint32(_175))
                mem[mem[64] + 68] = uint32(uint32(_170) - uint32(_188))
                require ext_code.size(sub_bb92cc3dAddress)
                call sub_bb92cc3dAddress.0x190cda8a with:
                     gas gas_remaining wei
                    args address(_196), uint32(_169) - uint32(_175) << 224, uint32(uint32(_170) - uint32(_188))
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}



}
