contract main {




// =====================  Runtime code  =====================


address owner;
address sub_4377fa70Address;
address stor2;
array of struct stor3;

function sub_4377fa70(?) payable {
    return sub_4377fa70Address
}

function owner() payable {
    return owner
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

function setDistributor(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor2 = arg1
}

function withdrawETH() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call owner with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
}

function sub_0f6350fd(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_4377fa70Address = address(arg1)
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

function passesTest(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[96] = 0xb99567a400000000000000000000000000000000000000000000000000000000
    mem[100] = arg1
    require ext_code.size(stor2)
    staticcall stor2.0xb99567a4 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    require mem[96 len 4], address(arg1) << 64 <= test266151307()
    require return_data.size + 96 > mem[96 len 4], address(arg1) << 64 + 127
    if mem[mem[96 len 4], address(arg1) << 64 + 96] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[mem[96 len 4], address(arg1) << 64 + 96]) + 1 < 0 or ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], address(arg1) << 64 + 96]) + 97 > test266151307():
        revert with 0, 65
    require mem[96 len 4], address(arg1) << 64 + (32 * mem[mem[96 len 4], address(arg1) << 64 + 96]) + 32 <= return_data.size
    if not arg1:
        return 0
    return mem[mem[96 len 4], address(arg1) << 64 + 96] >= 1
}

function withdrawTokens(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg2:
        if arg2 <= 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'make sure there is a balance available to withdraw'
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args owner, arg2
    else:
        require ext_code.size(arg1)
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= 0:
            revert with 0, 'make sure there is a balance available to withdraw'
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args owner, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_b8a2668d(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require calldata.size > cd[4] + 35
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * ('cd', 4).length) + 97
    mem[96] = ('cd', 4).length
    require calldata.size >= cd[4] + (96 * ('cd', 4).length) + 36
    s = cd[4] + 36
    t = 128
    idx = 0
    while idx < ('cd', 4).length:
        require calldata.size - s >= 96
        _13 = mem[64]
        if mem[64] + 96 < mem[64] or mem[64] + 96 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + 96
        mem[_13] = cd[s]
        mem[_13 + 32] = cd[(s + 32)]
        mem[_13 + 64] = cd[(s + 64)]
        mem[t] = _13
        s = s + 96
        t = t + 32
        idx = idx + 1
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor3.length = 0
    mem[0] = 3
    idx = 0
    while 3 * stor3.length > idx:
        stor3[idx].field_0 = 0
        stor3[idx].field_256 = 0
        stor3[idx].field_512 = 0
        idx = idx + 3
        continue 
    idx = 0
    while idx < mem[96]:
        if idx >= mem[96]:
            revert with 0, 50
        stor3.length++
        mem[0] = 3
        stor3[stor3.length].field_0 = mem[mem[(32 * idx) + 128]]
        stor3[stor3.length].field_256 = mem[mem[(32 * idx) + 128] + 32]
        stor3[stor3.length].field_512 = mem[mem[(32 * idx) + 128] + 64]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function getMultiplier(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1:
        mem[100] = arg1
        require ext_code.size(stor2)
        staticcall stor2.0xf04da65b with:
                gas gas_remaining wei
               args arg1
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            mem[ceil32(return_data.size) + 96] = 0xb99567a400000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 100] = arg1
            require ext_code.size(stor2)
            staticcall stor2.0xb99567a4 with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (2 * ceil32(return_data.size)) + 96
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 96 len 4], address(arg1) << 64 <= test266151307()
            require ceil32(return_data.size) + return_data.size + 96 > ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], address(arg1) << 64 + 127
            _13 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], address(arg1) << 64 + 96]
            if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], address(arg1) << 64 + 96] > test266151307():
                revert with 0, 65
            if ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], address(arg1) << 64 + 96]) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], address(arg1) << 64 + 96]) + 97 > test266151307():
                revert with 0, 65
            mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], address(arg1) << 64 + 96]) + 97
            require mem[ceil32(return_data.size) + 96 len 4], address(arg1) << 64 + (32 * _13) + 32 <= return_data.size
            if _13:
                idx = 0
                while idx < stor3.length:
                    mem[0] = 3
                    _49 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_49] = stor3[idx].field_0
                    mem[_49 + 32] = stor3[idx].field_256
                    mem[_49 + 64] = stor3[idx].field_512
                    if ext_call.return_data[0] > stor3[idx].field_256:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    if _13 > stor3[idx].field_512:
                        if stor3[idx].field_0 and stor3[idx].field_512 > -1 / stor3[idx].field_0:
                            revert with 0, 17
                        return (stor3[idx].field_0 * stor3[idx].field_512)
                    if stor3[idx].field_0 and _13 > -1 / stor3[idx].field_0:
                        revert with 0, 17
                    return (stor3[idx].field_0 * _13)
                return 0
            else:
                return 0
        else:
            return 0
    else:
        return 0
}



}
