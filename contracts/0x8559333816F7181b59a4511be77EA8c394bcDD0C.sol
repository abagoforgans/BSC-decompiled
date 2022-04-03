contract main {




// =====================  Runtime code  =====================


uint256 stor0;
address owner;
array of uint256 sub_e8a59cd8;
array of struct sub_d30cbf6a;
array of uint256 sub_260c4118;
mapping of address storeOwner;
array of address sub_74d3fef2;
array of uint256 versions;
uint256 creationFee;
address sub_4bf4f423Address;
address adminContractAddress;

function sub_260c4118(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg2 < sub_260c4118[arg1]
    return sub_260c4118[arg1][arg2]
}

function sub_4bf4f423(?) payable {
    return sub_4bf4f423Address
}

function pools(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require arg2 < sub_d30cbf6a[arg1].field_0
    return sub_d30cbf6a[arg1][arg2].field_0, 
           sub_d30cbf6a[arg1][arg2].field_256,
           sub_d30cbf6a[arg1][arg2].field_512,
           sub_d30cbf6a[arg1][arg2].field_768
}

function sub_74d3fef2(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < sub_74d3fef2.length
    return sub_74d3fef2[arg1]
}

function sub_871aa5df(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_d30cbf6a[arg1].field_0
}

function versions(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < versions.length
    return versions[arg1]
}

function owner() payable {
    return owner
}

function storeOwner(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return storeOwner[arg1]
}

function sub_98e8bd97(?) payable {
    return sub_e8a59cd8.length
}

function adminContract() payable {
    return adminContractAddress
}

function sub_c26071fb(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_260c4118[address(arg1)]
}

function sub_d30cbf6a(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require arg2 < sub_d30cbf6a[arg1].field_0
    return sub_d30cbf6a[arg1][arg2].field_0, 
           sub_d30cbf6a[arg1][arg2].field_256,
           sub_d30cbf6a[arg1][arg2].field_512,
           sub_d30cbf6a[arg1][arg2].field_768
}

function creationFee() payable {
    return creationFee
}

function sub_e8a59cd8(?) payable {
    return sub_e8a59cd8[arg1][0 len sub_e8a59cd8[arg1].length]
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setCreationFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    creationFee = arg1
}

function getDeploymentAddress(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return uint64(sha3(0, this.address, sha3(arg1, arg2), stor0))
}

function setAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    adminContractAddress = arg1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_c3e117a0(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_74d3fef2.length++
    sub_74d3fef2[sub_74d3fef2.length] = address(arg1)
    versions.length++
    versions[versions.length] = arg2
    emit 0x4310fa45: sub_74d3fef2.length, arg2, address(arg1), msg.sender
}

function sub_17d871f9(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == address(arg3)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 >= sub_74d3fef2.length:
        revert with 0, 'invalid pool type'
    sub_74d3fef2[arg1] = address(arg3)
    require arg1 < versions.length
    versions[arg1] = arg2
    emit 0x4310fa45: arg1, arg2, address(arg3), msg.sender
}

function deploy(uint256 arg1, address arg2, address arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require ceil32(arg4.length) + 128 <= test266151307() and ceil32(arg4.length) + 128 >= 96
    require arg4 + arg4.length + 36 <= calldata.size
    create2 contract with 0 wei
                    salt: sha3(arg1, msg.sender)
                    code: code.data[11957 len 3362]
    require ext_code.size(create2.new_address)
    emit ProxyCreated(address(create2.new_address));
    require ext_code.size(address(create2.new_address))
    call address(create2.new_address).initialize(address rg1, address rg2, bytes rg3) with:
         gas gas_remaining wei
        args address(arg2), address(arg3), Array(len=arg4.length, data=arg4[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return address(create2.new_address)
}

function deployMinimal(address arg1, bytes arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require ceil32(arg2.length) + 128 <= test266151307() and ceil32(arg2.length) + 128 >= 96
    require arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    mem[ceil32(arg2.length) + 148] = arg1 << 96
    mem[ceil32(arg2.length) + 168] = 0x5af43d82803e903d91602b57fd5bf30000000000000000000000000000000000
    create contract with 0 wei
                    code: 0, Mask(160, 96, arg1) >> 96, 0x5af43d82803e903d91602b57fd5bf3
    mem[ceil32(arg2.length) + 128] = address(create.new_address)
    emit ProxyCreated(0);
    if arg2.length <= 0:
        return 0
    mem[ceil32(arg2.length) + 128 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    if ceil32(arg2.length) > arg2.length:
        mem[ceil32(arg2.length) + arg2.length + 128] = 0
    call address(create.new_address) with:
         gas gas_remaining wei
        args mem[ceil32(arg2.length) + 132 len arg2.length - 4]
    require ext_call.success
    if not return_data.size:
        return 0
    return address(create.new_address)
}

function getSigner(uint256 arg1, address arg2, address arg3, bytes arg4, bytes arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require ceil32(arg4.length) + 128 <= test266151307() and ceil32(arg4.length) + 128 >= 96
    require arg4 + arg4.length + 36 <= calldata.size
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    require arg5.length <= test266151307()
    require ceil32(arg4.length) + ceil32(arg5.length) + 160 <= test266151307() and ceil32(arg5.length) + 160 >= 128
    mem[ceil32(arg4.length) + 128] = arg5.length
    require arg5 + arg5.length + 36 <= calldata.size
    mem[ceil32(arg4.length) + 160 len arg5.length] = arg5[all]
    mem[ceil32(arg4.length) + arg5.length + 160] = 0
    mem[ceil32(arg4.length) + ceil32(arg5.length) + 192] = arg1
    if ceil32(arg4.length) <= arg4.length:
        mem[ceil32(arg4.length) + ceil32(arg5.length) + 160] = arg4.length + 92
        if Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] == 65:
            if mem[ceil32(arg4.length) + 192] <= 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
                return 0
            else:
                return 0
        else:
            return 0
    else:
        mem[ceil32(arg4.length) + ceil32(arg5.length) + 160] = arg4.length + 92
        if Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] == 65:
            if mem[ceil32(arg4.length) + 192] <= 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
                return 0
            else:
                return 0
        else:
            return 0
}

function deploySigned(uint256 arg1, address arg2, address arg3, bytes arg4, bytes arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require ceil32(arg4.length) + 128 <= test266151307() and ceil32(arg4.length) + 128 >= 96
    require arg4 + arg4.length + 36 <= calldata.size
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    require arg5.length <= test266151307()
    require ceil32(arg4.length) + ceil32(arg5.length) + 160 <= test266151307() and ceil32(arg5.length) + 160 >= 128
    mem[ceil32(arg4.length) + 128] = arg5.length
    require arg5 + arg5.length + 36 <= calldata.size
    mem[ceil32(arg4.length) + 160 len arg5.length] = arg5[all]
    mem[ceil32(arg4.length) + arg5.length + 160] = 0
    mem[ceil32(arg4.length) + ceil32(arg5.length) + 192] = arg1
    if ceil32(arg4.length) <= arg4.length:
        mem[ceil32(arg4.length) + ceil32(arg5.length) + 160] = arg4.length + 92
        if Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] != 65:
            revert with 0, 'Invalid signature'
        else:
            if mem[ceil32(arg4.length) + 192] > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
                revert with 0, 'Invalid signature'
            else:
                revert with 0, 'Invalid signature'
    else:
        mem[ceil32(arg4.length) + ceil32(arg5.length) + 160] = arg4.length + 92
        if Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] != 65:
            revert with 0, 'Invalid signature'
        else:
            if mem[ceil32(arg4.length) + 192] > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
                revert with 0, 'Invalid signature'
            else:
                revert with 0, 'Invalid signature'
}

function sub_bee20885(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[0] = arg1
    mem[32] = 5
    if storeOwner[arg1] != msg.sender:
        revert with 0, 'invalid store owner'
    if arg1 >= sub_e8a59cd8.length:
        revert with 0, 'invalid store index'
    mem[64] = (32 * arg2.length) + 128
    mem[96] = arg2.length
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 128] = 0
    idx = 0
    while idx < arg2.length:
        _68 = mem[64]
        mem[64] = mem[64] + 128
        mem[_68] = 0
        mem[_68 + 32] = 0
        mem[_68 + 64] = 0
        mem[_68 + 96] = 0
        require idx < mem[96]
        _70 = mem[(32 * idx) + 128]
        _71 = mem[64]
        mem[64] = mem[64] + 128
        mem[_71] = 0
        mem[_71 + 32] = 0
        mem[_71 + 64] = 0
        mem[_71 + 96] = 0
        if _70 >= sub_74d3fef2.length:
            revert with 0, 'invalid pool type'
        mem[0] = 6
        if not sub_74d3fef2[_70]:
            revert with 0, 'invalid implementation address'
        _74 = mem[64]
        mem[mem[64] + 32] = msg.sender
        mem[mem[64] + 64] = arg1
        mem[mem[64] + 96] = idx
        mem[mem[64] + 128] = _70
        _78 = mem[64]
        mem[mem[64]] = 128
        mem[64] = mem[64] + 160
        _80 = sha3(mem[_78 + 32 len mem[_78]])
        mem[_74 + 160] = 0
        mem[_74 + 224 len 3362] = code.data[11957 len 3362]
        mem[_74 + 192] = 3362
        mem[floor32(_74 + 3617) + 32] = _80
        mem[floor32(_74 + 3617) + 64] = address(msg.sender)
        mem[floor32(_74 + 3617)] = 52
        create2 contract with 0 wei
                        salt: sha3(_80, msg.sender)
                        code: code.data[11957 len 3362]
        require ext_code.size(create2.new_address)
        emit ProxyCreated(address(create2.new_address));
        s = 0
        while s < 0:
            mem[floor32(_74 + 3617) + s + 216] = mem[_74 + s + 192]
            s = s + 32
            continue 
        require ext_code.size(address(create2.new_address))
        call address(create2.new_address).initialize(address rg1, address rg2, bytes rg3) with:
             gas gas_remaining wei
            args sub_74d3fef2[_70], adminContractAddress, 96, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(address(create2.new_address))
        call address(create2.new_address).initialize(address rg1) with:
             gas gas_remaining wei
            args owner
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = floor32(_74 + 3617) + 212
        mem[floor32(_74 + 3617) + 84] = _70
        require _70 < versions.length
        mem[floor32(_74 + 3617) + 116] = versions[_70]
        mem[floor32(_74 + 3617) + 148] = sub_74d3fef2[_70]
        mem[floor32(_74 + 3617) + 180] = address(create2.new_address)
        mem[floor32(_74 + 3617) + 212] = _70
        mem[floor32(_74 + 3617) + 244] = versions[_70]
        mem[floor32(_74 + 3617) + 276] = sub_74d3fef2[_70]
        mem[floor32(_74 + 3617) + 308] = address(create2.new_address)
        emit 0x31ec36fc: _70, versions[_70], sub_74d3fef2[_70], address(create2.new_address), msg.sender, arg1, idx
        mem[32] = 3
        sub_d30cbf6a[arg1].field_0++
        mem[0] = sha3(arg1, 3)
        sub_d30cbf6a[arg1][sub_d30cbf6a[arg1].field_0].field_0 = _70
        sub_d30cbf6a[arg1][sub_d30cbf6a[arg1].field_0].field_256 = versions[_70]
        sub_d30cbf6a[arg1][sub_d30cbf6a[arg1].field_0].field_512 = sub_74d3fef2[_70]
        sub_d30cbf6a[arg1][sub_d30cbf6a[arg1].field_0].field_768 = address(create2.new_address)
        idx = idx + 1
        continue 
}

function sub_bae50739(?) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    if creationFee <= 0:
        mem[128] = arg1.length
        mem[160 len arg1.length] = arg1[all]
        mem[arg1.length + 160] = 0
        mem[96] = 128
        sub_e8a59cd8.length++
        mem[0] = sha3(2) + sub_e8a59cd8.length
        sub_e8a59cd8[sub_e8a59cd8.length][] = Array(len=arg1.length, data=arg1[all])
        mem[64] = ceil32(arg1.length) + (32 * arg2.length) + 192
        mem[ceil32(arg1.length) + 160] = arg2.length
        mem[ceil32(arg1.length) + 192 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
        mem[ceil32(arg1.length) + (32 * arg2.length) + 192] = 0
        idx = 0
        while idx < arg2.length:
            _1174 = mem[64]
            mem[64] = mem[64] + 128
            mem[_1174] = 0
            mem[_1174 + 32] = 0
            mem[_1174 + 64] = 0
            mem[_1174 + 96] = 0
            require idx < mem[ceil32(arg1.length) + 160]
            _1183 = mem[(32 * idx) + ceil32(arg1.length) + 192]
            _1185 = mem[64]
            mem[64] = mem[64] + 128
            mem[_1185] = 0
            mem[_1185 + 32] = 0
            mem[_1185 + 64] = 0
            mem[_1185 + 96] = 0
            if _1183 >= sub_74d3fef2.length:
                revert with 0, 'invalid pool type'
            mem[0] = 6
            if not sub_74d3fef2[_1183]:
                revert with 0, 'invalid implementation address'
            _1199 = mem[64]
            mem[mem[64] + 32] = msg.sender
            mem[mem[64] + 64] = sub_e8a59cd8.length - 1
            mem[mem[64] + 96] = idx
            mem[mem[64] + 128] = _1183
            _1255 = mem[64]
            mem[mem[64]] = 128
            mem[64] = mem[64] + 160
            _1257 = sha3(mem[_1255 + 32 len mem[_1255]])
            mem[_1199 + 160] = 0
            mem[_1199 + 224 len 3362] = code.data[11957 len 3362]
            mem[_1199 + 192] = 3362
            mem[floor32(_1199 + 3617) + 32] = _1257
            mem[floor32(_1199 + 3617) + 64] = address(msg.sender)
            mem[floor32(_1199 + 3617)] = 52
            create2 contract with 0 wei
                            salt: sha3(_1257, msg.sender)
                            code: code.data[11957 len 3362]
            require ext_code.size(create2.new_address)
            emit ProxyCreated(address(create2.new_address));
            s = 0
            while s < 0:
                mem[floor32(_1199 + 3617) + s + 216] = mem[_1199 + s + 192]
                s = s + 32
                continue 
            require ext_code.size(address(create2.new_address))
            call address(create2.new_address).initialize(address rg1, address rg2, bytes rg3) with:
                 gas gas_remaining wei
                args sub_74d3fef2[_1183], adminContractAddress, 96, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(address(create2.new_address))
            call address(create2.new_address).initialize(address rg1) with:
                 gas gas_remaining wei
                args owner
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = floor32(_1199 + 3617) + 212
            mem[floor32(_1199 + 3617) + 84] = _1183
            require _1183 < versions.length
            mem[floor32(_1199 + 3617) + 116] = versions[_1183]
            mem[floor32(_1199 + 3617) + 148] = sub_74d3fef2[_1183]
            mem[floor32(_1199 + 3617) + 180] = address(create2.new_address)
            mem[floor32(_1199 + 3617) + 212] = _1183
            mem[floor32(_1199 + 3617) + 244] = versions[_1183]
            mem[floor32(_1199 + 3617) + 276] = sub_74d3fef2[_1183]
            mem[floor32(_1199 + 3617) + 308] = address(create2.new_address)
            emit 0x31ec36fc: _1183, versions[_1183], sub_74d3fef2[_1183], address(create2.new_address), msg.sender, sub_e8a59cd8.length - 1, idx
            mem[32] = 3
            sub_d30cbf6a[stor2.length - 1].field_0++
            mem[0] = sha3(sub_e8a59cd8.length - 1, 3)
            sub_d30cbf6a[stor2.length - 1][sub_d30cbf6a[stor2.length - 1].field_0].field_0 = _1183
            sub_d30cbf6a[stor2.length - 1][sub_d30cbf6a[stor2.length - 1].field_0].field_256 = versions[_1183]
            sub_d30cbf6a[stor2.length - 1][sub_d30cbf6a[stor2.length - 1].field_0].field_512 = sub_74d3fef2[_1183]
            sub_d30cbf6a[stor2.length - 1][sub_d30cbf6a[stor2.length - 1].field_0].field_768 = address(create2.new_address)
            idx = idx + 1
            continue 
    else:
        mem[100] = msg.sender
        mem[132] = 57005
        mem[164] = creationFee
        require ext_code.size(sub_4bf4f423Address)
        call sub_4bf4f423Address.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, 57005, creationFee
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[ceil32(return_data.size) + 128] = arg1.length
        mem[ceil32(return_data.size) + 160 len arg1.length] = arg1[all]
        mem[ceil32(return_data.size) + arg1.length + 160] = 0
        mem[ceil32(return_data.size) + 96] = ceil32(return_data.size) + 128
        sub_e8a59cd8.length++
        mem[0] = sha3(2) + sub_e8a59cd8.length
        sub_e8a59cd8[sub_e8a59cd8.length][] = Array(len=arg1.length, data=arg1[all])
        mem[64] = ceil32(return_data.size) + ceil32(arg1.length) + (32 * arg2.length) + 192
        mem[ceil32(return_data.size) + ceil32(arg1.length) + 160] = arg2.length
        mem[ceil32(return_data.size) + ceil32(arg1.length) + 192 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
        mem[ceil32(return_data.size) + ceil32(arg1.length) + (32 * arg2.length) + 192] = 0
        idx = 0
        while idx < arg2.length:
            _1180 = mem[64]
            mem[64] = mem[64] + 128
            mem[_1180] = 0
            mem[_1180 + 32] = 0
            mem[_1180 + 64] = 0
            mem[_1180 + 96] = 0
            require idx < mem[ceil32(return_data.size) + ceil32(arg1.length) + 160]
            _1184 = mem[(32 * idx) + ceil32(return_data.size) + ceil32(arg1.length) + 192]
            _1186 = mem[64]
            mem[64] = mem[64] + 128
            mem[_1186] = 0
            mem[_1186 + 32] = 0
            mem[_1186 + 64] = 0
            mem[_1186 + 96] = 0
            if _1184 >= sub_74d3fef2.length:
                revert with 0, 'invalid pool type'
            mem[0] = 6
            if not sub_74d3fef2[_1184]:
                revert with 0, 'invalid implementation address'
            _1201 = mem[64]
            mem[mem[64] + 32] = msg.sender
            mem[mem[64] + 64] = sub_e8a59cd8.length - 1
            mem[mem[64] + 96] = idx
            mem[mem[64] + 128] = _1184
            _1259 = mem[64]
            mem[mem[64]] = 128
            mem[64] = mem[64] + 160
            _1261 = sha3(mem[_1259 + 32 len mem[_1259]])
            mem[_1201 + 160] = 0
            mem[_1201 + 224 len 3362] = code.data[11957 len 3362]
            mem[_1201 + 192] = 3362
            mem[floor32(_1201 + 3617) + 32] = _1261
            mem[floor32(_1201 + 3617) + 64] = address(msg.sender)
            mem[floor32(_1201 + 3617)] = 52
            create2 contract with 0 wei
                            salt: sha3(_1261, msg.sender)
                            code: code.data[11957 len 3362]
            require ext_code.size(create2.new_address)
            emit ProxyCreated(address(create2.new_address));
            s = 0
            while s < 0:
                mem[floor32(_1201 + 3617) + s + 216] = mem[_1201 + s + 192]
                s = s + 32
                continue 
            require ext_code.size(address(create2.new_address))
            call address(create2.new_address).initialize(address rg1, address rg2, bytes rg3) with:
                 gas gas_remaining wei
                args sub_74d3fef2[_1184], adminContractAddress, 96, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(address(create2.new_address))
            call address(create2.new_address).initialize(address rg1) with:
                 gas gas_remaining wei
                args owner
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = floor32(_1201 + 3617) + 212
            mem[floor32(_1201 + 3617) + 84] = _1184
            require _1184 < versions.length
            mem[floor32(_1201 + 3617) + 116] = versions[_1184]
            mem[floor32(_1201 + 3617) + 148] = sub_74d3fef2[_1184]
            mem[floor32(_1201 + 3617) + 180] = address(create2.new_address)
            mem[floor32(_1201 + 3617) + 212] = _1184
            mem[floor32(_1201 + 3617) + 244] = versions[_1184]
            mem[floor32(_1201 + 3617) + 276] = sub_74d3fef2[_1184]
            mem[floor32(_1201 + 3617) + 308] = address(create2.new_address)
            emit 0x31ec36fc: _1184, versions[_1184], sub_74d3fef2[_1184], address(create2.new_address), msg.sender, sub_e8a59cd8.length - 1, idx
            mem[32] = 3
            sub_d30cbf6a[stor2.length - 1].field_0++
            mem[0] = sha3(sub_e8a59cd8.length - 1, 3)
            sub_d30cbf6a[stor2.length - 1][sub_d30cbf6a[stor2.length - 1].field_0].field_0 = _1184
            sub_d30cbf6a[stor2.length - 1][sub_d30cbf6a[stor2.length - 1].field_0].field_256 = versions[_1184]
            sub_d30cbf6a[stor2.length - 1][sub_d30cbf6a[stor2.length - 1].field_0].field_512 = sub_74d3fef2[_1184]
            sub_d30cbf6a[stor2.length - 1][sub_d30cbf6a[stor2.length - 1].field_0].field_768 = address(create2.new_address)
            idx = idx + 1
            continue 
    sub_260c4118[address(msg.sender)]++
    sub_260c4118[address(msg.sender)][sub_260c4118[address(msg.sender)]] = sub_e8a59cd8.length - 1
    storeOwner[stor2.length - 1] = msg.sender
    emit 0xcecb9bd5: msg.sender, sub_e8a59cd8.length - 1
}



}
