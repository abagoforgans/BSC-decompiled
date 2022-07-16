contract main {




// =====================  Runtime code  =====================


#
#  - sub_cd88af6e(?)
#  - sub_ea136584(?)
#
address owner;
address sub_b464d35aAddress;
address _pancakePairAddress;
address sub_ba6f43e6Address;
address _tokenAddress;
uint256 checkpoint;
uint256 sub_f45f5ede;
uint256 totalLiquidity;
uint256 sub_4e72163c;
uint256 sub_51474645;
mapping of struct users;
mapping of uint256 sub_47989910;
mapping of uint256 sub_b9fdea2f;
array of uint256 stor14;
array of uint256 stor15;

function totalLiquidity() payable {
    return totalLiquidity
}

function _pancakePair() payable {
    return _pancakePairAddress
}

function sub_47989910(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < 8
    return sub_47989910[arg1]
}

function sub_4e72163c(?) payable {
    return sub_4e72163c
}

function sub_51474645(?) payable {
    return sub_51474645
}

function owner() payable {
    return owner
}

function users(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if uint8(users[arg1].field_2160) >= 8:
        revert with 'NH{q', 33
    return address(users[arg1].field_0), 
           users[arg1].field_256,
           users[arg1].field_512,
           users[arg1].field_768,
           users[arg1].field_1024,
           users[arg1].field_1280,
           users[arg1].field_1536,
           Mask(112, 0, users[arg1].field_2048),
           uint8(users[arg1].field_2160)
}

function sub_b464d35a(?) payable {
    return sub_b464d35aAddress
}

function sub_b9fdea2f(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_b9fdea2f[arg1]
}

function sub_ba6f43e6(?) payable {
    return sub_ba6f43e6Address
}

function checkpoint() payable {
    return checkpoint
}

function _token() payable {
    return _tokenAddress
}

function sub_f45f5ede(?) payable {
    return sub_f45f5ede
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

function sub_af79e11e(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_f45f5ede = arg1
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

function sub_bfd52e9c(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    mem[0] = address(arg1)
    mem[32] = 11
    mem[64] = (32 * users[address(arg1)].field_1792) + 128
    mem[96] = users[address(arg1)].field_1792
    s = 128
    idx = 0
    while idx < users[address(arg1)].field_1792:
        mem[0] = sha3(address(arg1), 11) + 7
        _15 = mem[64]
        mem[64] = mem[64] + 160
        mem[_15] = stor[(5 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'users', 11)))].field_0
        mem[_15 + 32] = stor[(5 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'users', 11)))].field_256
        mem[_15 + 64] = stor[(5 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'users', 11)))].field_512
        mem[_15 + 96] = stor[(5 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'users', 11)))].field_768
        mem[_15 + 128] = stor[(5 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'users', 11)))].field_1024
        mem[s] = _15
        s = s + 32
        idx = idx + 1
        continue 
    _16 = mem[64]
    mem[mem[64]] = 32
    _17 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _17:
        _25 = mem[s]
        mem[t] = mem[mem[s]]
        mem[t + 32] = mem[_25 + 32]
        mem[t + 64] = mem[_25 + 64]
        mem[t + 96] = mem[_25 + 96]
        mem[t + 128] = mem[_25 + 128]
        idx = idx + 1
        s = s + 32
        t = t + 160
        continue 
    return memory
      from mem[64]
       len _16 + (160 * _17) + -mem[64] + 64
}

function sub_24e96076(?) payable {
    mem[0] = msg.sender
    idx = 0
    while idx < users[address(msg.sender)].field_1792:
        mem[0] = sha3(address(msg.sender), 11) + 7
        s = stor[(5 * idx) + sha3(mem[0]) + 3]
        t = 0
        while s < stor14.length:
            if stor14[s] and stor[(5 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 11)))].field_256 > -1 / stor14[s]:
                revert with 'NH{q', 17
            if t > (-1 * stor14[s] * stor[(5 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 11)))].field_256) - 1:
                revert with 'NH{q', 17
            mem[32] = 11
            if s >= stor15.length:
                revert with 'NH{q', 50
            mem[0] = 15
            if stor15[s] and users[address(msg.sender)].field_768 > -1 / stor15[s]:
                revert with 'NH{q', 17
            if t + (stor14[s] * stor[(5 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 11)))].field_256) <= 0:
                if s == -1:
                    revert with 'NH{q', 17
                s = s + 1
                t = t + (stor14[s] * stor[(5 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 11)))].field_256)
                continue 
            if t + (stor14[s] * stor[(5 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 11)))].field_256) > (-1 * stor15[s] * users[address(msg.sender)].field_768) - 1:
                revert with 'NH{q', 17
            if s == -1:
                revert with 'NH{q', 17
            s = s + 1
            t = t + (stor14[s] * stor[(5 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 11)))].field_256) + (stor15[s] * users[address(msg.sender)].field_768)
            continue 
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    return 0
}

function sub_f322d271(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == Mask(112, 0, arg1)
    require arg2 == address(arg2)
    require ext_code.size(_pancakePairAddress)
    staticcall _pancakePairAddress.token0() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(_pancakePairAddress)
    if address(arg2) != ext_call.return_data[12 len 20]:
        staticcall _pancakePairAddress.token0() with:
                gas gas_remaining wei
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if 0 >= ext_call.return_data[0]:
            revert with 'NH{q', 50
        mem[128] = ext_call.return_data[12 len 20]
        require ext_code.size(_pancakePairAddress)
        staticcall _pancakePairAddress.token1() with:
                gas gas_remaining wei
    else:
        staticcall _pancakePairAddress.token1() with:
                gas gas_remaining wei
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if 0 >= ext_call.return_data[0]:
            revert with 'NH{q', 50
        mem[128] = ext_call.return_data[12 len 20]
        require ext_code.size(_pancakePairAddress)
        staticcall _pancakePairAddress.token0() with:
                gas gas_remaining wei
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if 1 >= ext_call.return_data[0]:
        revert with 'NH{q', 50
    mem[160] = ext_call.return_data[12 len 20]
    mem[(4 * ceil32(return_data.size)) + 96] = 32
    mem[(4 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
    idx = 0
    s = 128
    t = (4 * ceil32(return_data.size)) + 160
    while idx < ext_call.return_data[0]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return Array(len=ext_call.return_data[0], data=mem[(4 * ceil32(return_data.size)) + 160 len 32 * ext_call.return_data[0]])
}



}
