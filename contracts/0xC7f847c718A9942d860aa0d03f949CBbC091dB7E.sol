contract main {




// =====================  Runtime code  =====================


#
#  - sub_cd88af6e(?)
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
        revert with 0, 33
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
    while idx < users[msg.sender].field_1792:
        mem[0] = sha3(msg.sender, 11) + 7
        s = stor[(5 * idx) + sha3(mem[0]) + 3]
        t = 0
        while s < stor14.length:
            if stor14[s] and stor[(5 * idx) + ('array', 7, ('map', 'msg.sender', ('name', 'users', 11)))].field_256 > -1 / stor14[s]:
                revert with 0, 17
            if t > !(stor14[s] * stor[(5 * idx) + ('array', 7, ('map', 'msg.sender', ('name', 'users', 11)))].field_256):
                revert with 0, 17
            mem[32] = 11
            if s >= stor15.length:
                revert with 0, 50
            mem[0] = 15
            if stor15[s] and users[msg.sender].field_768 > -1 / stor15[s]:
                revert with 0, 17
            if not t + (stor14[s] * stor[(5 * idx) + ('array', 7, ('map', 'msg.sender', ('name', 'users', 11)))].field_256):
                if s == -1:
                    revert with 0, 17
                s = s + 1
                t = t + (stor14[s] * stor[(5 * idx) + ('array', 7, ('map', 'msg.sender', ('name', 'users', 11)))].field_256)
                continue 
            if t + (stor14[s] * stor[(5 * idx) + ('array', 7, ('map', 'msg.sender', ('name', 'users', 11)))].field_256) > !(stor15[s] * users[msg.sender].field_768):
                revert with 0, 17
            if s == -1:
                revert with 0, 17
            s = s + 1
            t = t + (stor14[s] * stor[(5 * idx) + ('array', 7, ('map', 'msg.sender', ('name', 'users', 11)))].field_256) + (stor15[s] * users[msg.sender].field_768)
            continue 
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    return 0
}

function sub_f322d271(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == Mask(112, 0, arg1)
    require arg2 == address(arg2)
    staticcall _pancakePairAddress.token0() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if address(arg2) != ext_call.return_data[12 len 20]:
        staticcall _pancakePairAddress.token0() with:
                gas gas_remaining wei
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if 0 >= ext_call.return_data[0]:
            revert with 0, 50
        mem[128] = ext_call.return_data[12 len 20]
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
            revert with 0, 50
        mem[128] = ext_call.return_data[12 len 20]
        staticcall _pancakePairAddress.token0() with:
                gas gas_remaining wei
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if 1 >= ext_call.return_data[0]:
        revert with 0, 50
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

function sub_ea136584(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == Mask(112, 0, arg1)
    require arg2 == address(arg2)
    if 60 > !checkpoint:
        revert with 0, 17
    if block.timestamp < checkpoint + 60:
        staticcall _pancakePairAddress.token0() with:
                gas gas_remaining wei
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if address(arg2) != ext_call.return_data[12 len 20]:
            staticcall _pancakePairAddress.token0() with:
                    gas gas_remaining wei
            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if 0 >= ext_call.return_data[0]:
                revert with 0, 50
            mem[128] = ext_call.return_data[12 len 20]
            staticcall _pancakePairAddress.token1() with:
                    gas gas_remaining wei
            mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if 1 >= ext_call.return_data[0]:
                revert with 0, 50
            mem[160] = ext_call.return_data[12 len 20]
            mem[(4 * ceil32(return_data.size)) + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(4 * ceil32(return_data.size)) + 100] = Mask(112, 0, arg1)
            mem[(4 * ceil32(return_data.size)) + 132] = 64
            mem[(4 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
            idx = 0
            s = 128
            t = (4 * ceil32(return_data.size)) + 196
            while idx < ext_call.return_data[0]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            staticcall sub_ba6f43e6Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args arg1 << 144, Array(len=ext_call.return_data[0], data=mem[(4 * ceil32(return_data.size)) + 196 len 32 * ext_call.return_data[0]])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(4 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (6 * ceil32(return_data.size)) + 96
            require return_data.size >= 32
            _1234 = mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(112, 0, arg1) << 112
            require mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(112, 0, arg1) << 112 <= test266151307()
            require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(112, 0, arg1) << 112 + 127 < (4 * ceil32(return_data.size)) + return_data.size + 96
            _1244 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(112, 0, arg1) << 112 + 96]
            if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(112, 0, arg1) << 112 + 96] > test266151307():
                revert with 0, 65
            if (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(112, 0, arg1) << 112 + 96]) + 97 > test266151307() or ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(112, 0, arg1) << 112 + 96]) + 1 < 0:
                revert with 0, 65
            mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(112, 0, arg1) << 112 + 96]) + 97
            mem[(6 * ceil32(return_data.size)) + 96] = _1244
            require (32 * _1244) + _1234 + 32 <= return_data.size
            mem[(6 * ceil32(return_data.size)) + 128 len ceil32(32 * _1244)] = mem[(4 * ceil32(return_data.size)) + _1234 + 128 len ceil32(32 * _1244)]
            if 1 >= _1244:
                revert with 0, 50
            _2284 = mem[(6 * ceil32(return_data.size)) + 160]
            if 1 >= ext_call.return_data[0]:
                revert with 0, 50
            _2314 = mem[64]
            mem[mem[64] + 36] = msg.sender
            mem[mem[64] + 68] = sub_b464d35aAddress
            mem[mem[64] + 100] = _2284
            _2324 = mem[64]
            mem[mem[64]] = 100
            mem[mem[64] + 32 len 4] = unknown_0x23b872dd(?????)
            mem[64] = mem[64] + 196
            mem[_2314 + 132] = 32
            mem[_2314 + 164] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(address(ext_call.return_data[12 len 20])):
                revert with 0, 'Address: call to non-contract'
            _2394 = mem[_2324]
            mem[_2314 + 196 len ceil32(mem[_2324])] = mem[_2324 + 32 len ceil32(mem[_2324])]
            if ceil32(_2394) > _2394:
                mem[_2394 + _2314 + 196] = 0
            call address(ext_call.return_data[12 len 20]) with:
                 gas gas_remaining wei
                args mem[_2314 + 200 len _2394 - 4]
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0]:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require ext_call.return_data[12 len 20] == bool(ext_call.return_data[12 len 20])
                    if not ext_call.return_data[12 len 20]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[_2314 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[_2314 + 228] == bool(mem[_2314 + 228])
                    if not mem[_2314 + 228]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            staticcall _pancakePairAddress.token1() with:
                    gas gas_remaining wei
            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if 0 >= ext_call.return_data[0]:
                revert with 0, 50
            mem[128] = ext_call.return_data[12 len 20]
            staticcall _pancakePairAddress.token0() with:
                    gas gas_remaining wei
            mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if 1 >= ext_call.return_data[0]:
                revert with 0, 50
            mem[160] = ext_call.return_data[12 len 20]
            mem[(4 * ceil32(return_data.size)) + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(4 * ceil32(return_data.size)) + 100] = Mask(112, 0, arg1)
            mem[(4 * ceil32(return_data.size)) + 132] = 64
            mem[(4 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
            idx = 0
            s = 128
            t = (4 * ceil32(return_data.size)) + 196
            while idx < ext_call.return_data[0]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            staticcall sub_ba6f43e6Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args arg1 << 144, Array(len=ext_call.return_data[0], data=mem[(4 * ceil32(return_data.size)) + 196 len 32 * ext_call.return_data[0]])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(4 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (6 * ceil32(return_data.size)) + 96
            require return_data.size >= 32
            _1235 = mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(112, 0, arg1) << 112
            require mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(112, 0, arg1) << 112 <= test266151307()
            require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(112, 0, arg1) << 112 + 127 < (4 * ceil32(return_data.size)) + return_data.size + 96
            _1245 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(112, 0, arg1) << 112 + 96]
            if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(112, 0, arg1) << 112 + 96] > test266151307():
                revert with 0, 65
            if (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(112, 0, arg1) << 112 + 96]) + 97 > test266151307() or ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(112, 0, arg1) << 112 + 96]) + 1 < 0:
                revert with 0, 65
            mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(112, 0, arg1) << 112 + 96]) + 97
            mem[(6 * ceil32(return_data.size)) + 96] = _1245
            require (32 * _1245) + _1235 + 32 <= return_data.size
            mem[(6 * ceil32(return_data.size)) + 128 len ceil32(32 * _1245)] = mem[(4 * ceil32(return_data.size)) + _1235 + 128 len ceil32(32 * _1245)]
            if 1 >= _1245:
                revert with 0, 50
            _2286 = mem[(6 * ceil32(return_data.size)) + 160]
            if 1 >= ext_call.return_data[0]:
                revert with 0, 50
            _2315 = mem[64]
            mem[mem[64] + 36] = msg.sender
            mem[mem[64] + 68] = sub_b464d35aAddress
            mem[mem[64] + 100] = _2286
            _2326 = mem[64]
            mem[mem[64]] = 100
            mem[mem[64] + 32 len 4] = unknown_0x23b872dd(?????)
            mem[64] = mem[64] + 196
            mem[_2315 + 132] = 32
            mem[_2315 + 164] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(address(ext_call.return_data[12 len 20])):
                revert with 0, 'Address: call to non-contract'
            _2396 = mem[_2326]
            mem[_2315 + 196 len ceil32(mem[_2326])] = mem[_2326 + 32 len ceil32(mem[_2326])]
            if ceil32(_2396) > _2396:
                mem[_2396 + _2315 + 196] = 0
            call address(ext_call.return_data[12 len 20]) with:
                 gas gas_remaining wei
                args mem[_2315 + 200 len _2396 - 4]
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0]:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require ext_call.return_data[12 len 20] == bool(ext_call.return_data[12 len 20])
                    if not ext_call.return_data[12 len 20]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[_2315 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[_2315 + 228] == bool(mem[_2315 + 228])
                    if not mem[_2315 + 228]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        if not sub_51474645:
            if not sub_4e72163c:
                checkpoint = block.timestamp
                staticcall _pancakePairAddress.token0() with:
                        gas gas_remaining wei
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if address(arg2) != ext_call.return_data[12 len 20]:
                    staticcall _pancakePairAddress.token0() with:
                            gas gas_remaining wei
                    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if 0 >= ext_call.return_data[0]:
                        revert with 0, 50
                    mem[128] = ext_call.return_data[12 len 20]
                    staticcall _pancakePairAddress.token1() with:
                            gas gas_remaining wei
                    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if 1 >= ext_call.return_data[0]:
                        revert with 0, 50
                    mem[160] = ext_call.return_data[12 len 20]
                    mem[(4 * ceil32(return_data.size)) + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 100] = Mask(112, 0, arg1)
                    mem[(4 * ceil32(return_data.size)) + 132] = 64
                    mem[(4 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
                    idx = 0
                    s = 128
                    t = (4 * ceil32(return_data.size)) + 196
                    while idx < ext_call.return_data[0]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    staticcall sub_ba6f43e6Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args arg1 << 144, Array(len=ext_call.return_data[0], data=mem[(4 * ceil32(return_data.size)) + 196 len 32 * ext_call.return_data[0]])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(4 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (6 * ceil32(return_data.size)) + 96
                    require return_data.size >= 32
                    _1236 = mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(112, 0, arg1) << 112
                    require mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(112, 0, arg1) << 112 <= test266151307()
                    require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(112, 0, arg1) << 112 + 127 < (4 * ceil32(return_data.size)) + return_data.size + 96
                    _1246 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(112, 0, arg1) << 112 + 96]
                    if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(112, 0, arg1) << 112 + 96] > test266151307():
                        revert with 0, 65
                    if (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(112, 0, arg1) << 112 + 96]) + 97 > test266151307() or ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(112, 0, arg1) << 112 + 96]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(112, 0, arg1) << 112 + 96]) + 97
                    mem[(6 * ceil32(return_data.size)) + 96] = _1246
                    require (32 * _1246) + _1236 + 32 <= return_data.size
                    mem[(6 * ceil32(return_data.size)) + 128 len ceil32(32 * _1246)] = mem[(4 * ceil32(return_data.size)) + _1236 + 128 len ceil32(32 * _1246)]
                    if 1 >= _1246:
                        revert with 0, 50
                    _2288 = mem[(6 * ceil32(return_data.size)) + 160]
                    if 1 >= ext_call.return_data[0]:
                        revert with 0, 50
                    _2316 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = sub_b464d35aAddress
                    mem[mem[64] + 100] = _2288
                    _2328 = mem[64]
                    mem[mem[64]] = 100
                    mem[mem[64] + 32 len 4] = unknown_0x23b872dd(?????)
                    mem[64] = mem[64] + 196
                    mem[_2316 + 132] = 32
                    mem[_2316 + 164] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(address(ext_call.return_data[12 len 20])):
                        revert with 0, 'Address: call to non-contract'
                    _2398 = mem[_2328]
                    mem[_2316 + 196 len ceil32(mem[_2328])] = mem[_2328 + 32 len ceil32(mem[_2328])]
                    if ceil32(_2398) > _2398:
                        mem[_2398 + _2316 + 196] = 0
                    call address(ext_call.return_data[12 len 20]) with:
                         gas gas_remaining wei
                        args mem[_2316 + 200 len _2398 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0]:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if ext_call.return_data[0]:
                            require ext_call.return_data[0] >= 32
                            require ext_call.return_data[12 len 20] == bool(ext_call.return_data[12 len 20])
                            if not ext_call.return_data[12 len 20]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[_2316 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_2316 + 228] == bool(mem[_2316 + 228])
                            if not mem[_2316 + 228]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    staticcall _pancakePairAddress.token1() with:
                            gas gas_remaining wei
                    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if 0 >= ext_call.return_data[0]:
                        revert with 0, 50
                    mem[128] = ext_call.return_data[12 len 20]
                    staticcall _pancakePairAddress.token0() with:
                            gas gas_remaining wei
                    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if 1 >= ext_call.return_data[0]:
                        revert with 0, 50
                    mem[160] = ext_call.return_data[12 len 20]
                    mem[(4 * ceil32(return_data.size)) + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 100] = Mask(112, 0, arg1)
                    mem[(4 * ceil32(return_data.size)) + 132] = 64
                    mem[(4 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
                    idx = 0
                    s = 128
                    t = (4 * ceil32(return_data.size)) + 196
                    while idx < ext_call.return_data[0]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    staticcall sub_ba6f43e6Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args arg1 << 144, Array(len=ext_call.return_data[0], data=mem[(4 * ceil32(return_data.size)) + 196 len 32 * ext_call.return_data[0]])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(4 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (6 * ceil32(return_data.size)) + 96
                    require return_data.size >= 32
                    _1237 = mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(112, 0, arg1) << 112
                    require mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(112, 0, arg1) << 112 <= test266151307()
                    require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(112, 0, arg1) << 112 + 127 < (4 * ceil32(return_data.size)) + return_data.size + 96
                    _1247 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(112, 0, arg1) << 112 + 96]
                    if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(112, 0, arg1) << 112 + 96] > test266151307():
                        revert with 0, 65
                    if (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(112, 0, arg1) << 112 + 96]) + 97 > test266151307() or ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(112, 0, arg1) << 112 + 96]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(112, 0, arg1) << 112 + 96]) + 97
                    mem[(6 * ceil32(return_data.size)) + 96] = _1247
                    require (32 * _1247) + _1237 + 32 <= return_data.size
                    mem[(6 * ceil32(return_data.size)) + 128 len ceil32(32 * _1247)] = mem[(4 * ceil32(return_data.size)) + _1237 + 128 len ceil32(32 * _1247)]
                    if 1 >= _1247:
                        revert with 0, 50
                    _2290 = mem[(6 * ceil32(return_data.size)) + 160]
                    if 1 >= ext_call.return_data[0]:
                        revert with 0, 50
                    _2317 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = sub_b464d35aAddress
                    mem[mem[64] + 100] = _2290
                    _2330 = mem[64]
                    mem[mem[64]] = 100
                    mem[mem[64] + 32 len 4] = unknown_0x23b872dd(?????)
                    mem[64] = mem[64] + 196
                    mem[_2317 + 132] = 32
                    mem[_2317 + 164] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(address(ext_call.return_data[12 len 20])):
                        revert with 0, 'Address: call to non-contract'
                    _2400 = mem[_2330]
                    mem[_2317 + 196 len ceil32(mem[_2330])] = mem[_2330 + 32 len ceil32(mem[_2330])]
                    if ceil32(_2400) > _2400:
                        mem[_2400 + _2317 + 196] = 0
                    call address(ext_call.return_data[12 len 20]) with:
                         gas gas_remaining wei
                        args mem[_2317 + 200 len _2400 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0]:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if ext_call.return_data[0]:
                            require ext_call.return_data[0] >= 32
                            require ext_call.return_data[12 len 20] == bool(ext_call.return_data[12 len 20])
                            if not ext_call.return_data[12 len 20]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[_2317 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_2317 + 228] == bool(mem[_2317 + 228])
                            if not mem[_2317 + 228]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                if sub_f45f5ede > 0x888888888888888888888888888888888888888888888888888888888888888:
                    revert with 0, 17
                if not sub_4e72163c:
                    revert with 0, 18
                stor15.length++
                mem[0] = 15
                stor15[stor15.length] = 30 * sub_f45f5ede / 100 / sub_4e72163c
                checkpoint = block.timestamp
                staticcall _pancakePairAddress.token0() with:
                        gas gas_remaining wei
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if address(arg2) != ext_call.return_data[12 len 20]:
                    staticcall _pancakePairAddress.token0() with:
                            gas gas_remaining wei
                    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if 0 >= ext_call.return_data[0]:
                        revert with 0, 50
                    mem[128] = ext_call.return_data[12 len 20]
                    staticcall _pancakePairAddress.token1() with:
                            gas gas_remaining wei
                    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if 1 >= ext_call.return_data[0]:
                        revert with 0, 50
                    mem[160] = ext_call.return_data[12 len 20]
                    mem[(4 * ceil32(return_data.size)) + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 100] = Mask(112, 0, arg1)
                    mem[(4 * ceil32(return_data.size)) + 132] = 64
                    mem[(4 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
                    idx = 0
                    s = 128
                    t = (4 * ceil32(return_data.size)) + 196
                    while idx < ext_call.return_data[0]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    staticcall sub_ba6f43e6Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args arg1 << 144, Array(len=ext_call.return_data[0], data=mem[(4 * ceil32(return_data.size)) + 196 len 32 * ext_call.return_data[0]])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(4 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (6 * ceil32(return_data.size)) + 96
                    require return_data.size >= 32
                    _1238 = mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(112, 0, arg1) << 112
                    require mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(112, 0, arg1) << 112 <= test266151307()
                    require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(112, 0, arg1) << 112 + 127 < (4 * ceil32(return_data.size)) + return_data.size + 96
                    _1248 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(112, 0, arg1) << 112 + 96]
                    if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(112, 0, arg1) << 112 + 96] > test266151307():
                        revert with 0, 65
                    if (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(112, 0, arg1) << 112 + 96]) + 97 > test266151307() or ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(112, 0, arg1) << 112 + 96]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(112, 0, arg1) << 112 + 96]) + 97
                    mem[(6 * ceil32(return_data.size)) + 96] = _1248
                    require (32 * _1248) + _1238 + 32 <= return_data.size
                    mem[(6 * ceil32(return_data.size)) + 128 len ceil32(32 * _1248)] = mem[(4 * ceil32(return_data.size)) + _1238 + 128 len ceil32(32 * _1248)]
                    if 1 >= _1248:
                        revert with 0, 50
                    _2292 = mem[(6 * ceil32(return_data.size)) + 160]
                    if 1 >= ext_call.return_data[0]:
                        revert with 0, 50
                    _2318 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = sub_b464d35aAddress
                    mem[mem[64] + 100] = _2292
                    _2332 = mem[64]
                    mem[mem[64]] = 100
                    mem[mem[64] + 32 len 4] = unknown_0x23b872dd(?????)
                    mem[64] = mem[64] + 196
                    mem[_2318 + 132] = 32
                    mem[_2318 + 164] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(address(ext_call.return_data[12 len 20])):
                        revert with 0, 'Address: call to non-contract'
                    _2402 = mem[_2332]
                    mem[_2318 + 196 len ceil32(mem[_2332])] = mem[_2332 + 32 len ceil32(mem[_2332])]
                    if ceil32(_2402) > _2402:
                        mem[_2402 + _2318 + 196] = 0
                    call address(ext_call.return_data[12 len 20]) with:
                         gas gas_remaining wei
                        args mem[_2318 + 200 len _2402 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0]:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if ext_call.return_data[0]:
                            require ext_call.return_data[0] >= 32
                            require ext_call.return_data[12 len 20] == bool(ext_call.return_data[12 len 20])
                            if not ext_call.return_data[12 len 20]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[_2318 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_2318 + 228] == bool(mem[_2318 + 228])
                            if not mem[_2318 + 228]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    staticcall _pancakePairAddress.token1() with:
                            gas gas_remaining wei
                    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if 0 >= ext_call.return_data[0]:
                        revert with 0, 50
                    mem[128] = ext_call.return_data[12 len 20]
                    staticcall _pancakePairAddress.token0() with:
                            gas gas_remaining wei
                    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if 1 >= ext_call.return_data[0]:
                        revert with 0, 50
                    mem[160] = ext_call.return_data[12 len 20]
                    mem[(4 * ceil32(return_data.size)) + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 100] = Mask(112, 0, arg1)
                    mem[(4 * ceil32(return_data.size)) + 132] = 64
                    mem[(4 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
                    idx = 0
                    s = 128
                    t = (4 * ceil32(return_data.size)) + 196
                    while idx < ext_call.return_data[0]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    staticcall sub_ba6f43e6Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args arg1 << 144, Array(len=ext_call.return_data[0], data=mem[(4 * ceil32(return_data.size)) + 196 len 32 * ext_call.return_data[0]])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(4 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (6 * ceil32(return_data.size)) + 96
                    require return_data.size >= 32
                    _1239 = mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(112, 0, arg1) << 112
                    require mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(112, 0, arg1) << 112 <= test266151307()
                    require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(112, 0, arg1) << 112 + 127 < (4 * ceil32(return_data.size)) + return_data.size + 96
                    _1249 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(112, 0, arg1) << 112 + 96]
                    if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(112, 0, arg1) << 112 + 96] > test266151307():
                        revert with 0, 65
                    if (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(112, 0, arg1) << 112 + 96]) + 97 > test266151307() or ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(112, 0, arg1) << 112 + 96]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(112, 0, arg1) << 112 + 96]) + 97
                    mem[(6 * ceil32(return_data.size)) + 96] = _1249
                    require (32 * _1249) + _1239 + 32 <= return_data.size
                    mem[(6 * ceil32(return_data.size)) + 128 len ceil32(32 * _1249)] = mem[(4 * ceil32(return_data.size)) + _1239 + 128 len ceil32(32 * _1249)]
                    if 1 >= _1249:
                        revert with 0, 50
                    _2294 = mem[(6 * ceil32(return_data.size)) + 160]
                    if 1 >= ext_call.return_data[0]:
                        revert with 0, 50
                    _2319 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = sub_b464d35aAddress
                    mem[mem[64] + 100] = _2294
                    _2334 = mem[64]
                    mem[mem[64]] = 100
                    mem[mem[64] + 32 len 4] = unknown_0x23b872dd(?????)
                    mem[64] = mem[64] + 196
                    mem[_2319 + 132] = 32
                    mem[_2319 + 164] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(address(ext_call.return_data[12 len 20])):
                        revert with 0, 'Address: call to non-contract'
                    _2404 = mem[_2334]
                    mem[_2319 + 196 len ceil32(mem[_2334])] = mem[_2334 + 32 len ceil32(mem[_2334])]
                    if ceil32(_2404) > _2404:
                        mem[_2404 + _2319 + 196] = 0
                    call address(ext_call.return_data[12 len 20]) with:
                         gas gas_remaining wei
                        args mem[_2319 + 200 len _2404 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0]:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if ext_call.return_data[0]:
                            require ext_call.return_data[0] >= 32
                            require ext_call.return_data[12 len 20] == bool(ext_call.return_data[12 len 20])
                            if not ext_call.return_data[12 len 20]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[_2319 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_2319 + 228] == bool(mem[_2319 + 228])
                            if not mem[_2319 + 228]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            if sub_f45f5ede > 0x51eb851eb851eb851eb851eb851eb851eb851eb851eb851eb851eb851eb851e:
                revert with 0, 17
            if not sub_51474645:
                revert with 0, 18
            stor14.length++
            mem[0] = 14
            stor14[stor14.length] = 50 * sub_f45f5ede / 100 / sub_51474645
            if not sub_4e72163c:
                checkpoint = block.timestamp
                staticcall _pancakePairAddress.token0() with:
                        gas gas_remaining wei
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if address(arg2) != ext_call.return_data[12 len 20]:
                    staticcall _pancakePairAddress.token0() with:
                            gas gas_remaining wei
                    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if 0 >= ext_call.return_data[0]:
                        revert with 0, 50
                    mem[128] = ext_call.return_data[12 len 20]
                    staticcall _pancakePairAddress.token1() with:
                            gas gas_remaining wei
                    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if 1 >= ext_call.return_data[0]:
                        revert with 0, 50
                    mem[160] = ext_call.return_data[12 len 20]
                    mem[(4 * ceil32(return_data.size)) + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 100] = Mask(112, 0, arg1)
                    mem[(4 * ceil32(return_data.size)) + 132] = 64
                    mem[(4 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
                    idx = 0
                    s = 128
                    t = (4 * ceil32(return_data.size)) + 196
                    while idx < ext_call.return_data[0]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    staticcall sub_ba6f43e6Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args arg1 << 144, Array(len=ext_call.return_data[0], data=mem[(4 * ceil32(return_data.size)) + 196 len 32 * ext_call.return_data[0]])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(4 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (6 * ceil32(return_data.size)) + 96
                    require return_data.size >= 32
                    _1240 = mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(112, 0, arg1) << 112
                    require mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(112, 0, arg1) << 112 <= test266151307()
                    require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(112, 0, arg1) << 112 + 127 < (4 * ceil32(return_data.size)) + return_data.size + 96
                    _1250 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(112, 0, arg1) << 112 + 96]
                    if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(112, 0, arg1) << 112 + 96] > test266151307():
                        revert with 0, 65
                    if (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(112, 0, arg1) << 112 + 96]) + 97 > test266151307() or ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(112, 0, arg1) << 112 + 96]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(112, 0, arg1) << 112 + 96]) + 97
                    mem[(6 * ceil32(return_data.size)) + 96] = _1250
                    require (32 * _1250) + _1240 + 32 <= return_data.size
                    mem[(6 * ceil32(return_data.size)) + 128 len ceil32(32 * _1250)] = mem[(4 * ceil32(return_data.size)) + _1240 + 128 len ceil32(32 * _1250)]
                    if 1 >= _1250:
                        revert with 0, 50
                    _2296 = mem[(6 * ceil32(return_data.size)) + 160]
                    if 1 >= ext_call.return_data[0]:
                        revert with 0, 50
                    _2320 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = sub_b464d35aAddress
                    mem[mem[64] + 100] = _2296
                    _2336 = mem[64]
                    mem[mem[64]] = 100
                    mem[mem[64] + 32 len 4] = unknown_0x23b872dd(?????)
                    mem[64] = mem[64] + 196
                    mem[_2320 + 132] = 32
                    mem[_2320 + 164] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(address(ext_call.return_data[12 len 20])):
                        revert with 0, 'Address: call to non-contract'
                    _2406 = mem[_2336]
                    mem[_2320 + 196 len ceil32(mem[_2336])] = mem[_2336 + 32 len ceil32(mem[_2336])]
                    if ceil32(_2406) > _2406:
                        mem[_2406 + _2320 + 196] = 0
                    call address(ext_call.return_data[12 len 20]) with:
                         gas gas_remaining wei
                        args mem[_2320 + 200 len _2406 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0]:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if ext_call.return_data[0]:
                            require ext_call.return_data[0] >= 32
                            require ext_call.return_data[12 len 20] == bool(ext_call.return_data[12 len 20])
                            if not ext_call.return_data[12 len 20]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[_2320 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_2320 + 228] == bool(mem[_2320 + 228])
                            if not mem[_2320 + 228]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    staticcall _pancakePairAddress.token1() with:
                            gas gas_remaining wei
                    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if 0 >= ext_call.return_data[0]:
                        revert with 0, 50
                    mem[128] = ext_call.return_data[12 len 20]
                    staticcall _pancakePairAddress.token0() with:
                            gas gas_remaining wei
                    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if 1 >= ext_call.return_data[0]:
                        revert with 0, 50
                    mem[160] = ext_call.return_data[12 len 20]
                    mem[(4 * ceil32(return_data.size)) + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 100] = Mask(112, 0, arg1)
                    mem[(4 * ceil32(return_data.size)) + 132] = 64
                    mem[(4 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
                    idx = 0
                    s = 128
                    t = (4 * ceil32(return_data.size)) + 196
                    while idx < ext_call.return_data[0]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    staticcall sub_ba6f43e6Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args arg1 << 144, Array(len=ext_call.return_data[0], data=mem[(4 * ceil32(return_data.size)) + 196 len 32 * ext_call.return_data[0]])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(4 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (6 * ceil32(return_data.size)) + 96
                    require return_data.size >= 32
                    _1241 = mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(112, 0, arg1) << 112
                    require mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(112, 0, arg1) << 112 <= test266151307()
                    require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(112, 0, arg1) << 112 + 127 < (4 * ceil32(return_data.size)) + return_data.size + 96
                    _1251 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(112, 0, arg1) << 112 + 96]
                    if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(112, 0, arg1) << 112 + 96] > test266151307():
                        revert with 0, 65
                    if (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(112, 0, arg1) << 112 + 96]) + 97 > test266151307() or ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(112, 0, arg1) << 112 + 96]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(112, 0, arg1) << 112 + 96]) + 97
                    mem[(6 * ceil32(return_data.size)) + 96] = _1251
                    require (32 * _1251) + _1241 + 32 <= return_data.size
                    mem[(6 * ceil32(return_data.size)) + 128 len ceil32(32 * _1251)] = mem[(4 * ceil32(return_data.size)) + _1241 + 128 len ceil32(32 * _1251)]
                    if 1 >= _1251:
                        revert with 0, 50
                    _2298 = mem[(6 * ceil32(return_data.size)) + 160]
                    if 1 >= ext_call.return_data[0]:
                        revert with 0, 50
                    _2321 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = sub_b464d35aAddress
                    mem[mem[64] + 100] = _2298
                    _2338 = mem[64]
                    mem[mem[64]] = 100
                    mem[mem[64] + 32 len 4] = unknown_0x23b872dd(?????)
                    mem[64] = mem[64] + 196
                    mem[_2321 + 132] = 32
                    mem[_2321 + 164] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(address(ext_call.return_data[12 len 20])):
                        revert with 0, 'Address: call to non-contract'
                    _2408 = mem[_2338]
                    mem[_2321 + 196 len ceil32(mem[_2338])] = mem[_2338 + 32 len ceil32(mem[_2338])]
                    if ceil32(_2408) > _2408:
                        mem[_2408 + _2321 + 196] = 0
                    call address(ext_call.return_data[12 len 20]) with:
                         gas gas_remaining wei
                        args mem[_2321 + 200 len _2408 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0]:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if ext_call.return_data[0]:
                            require ext_call.return_data[0] >= 32
                            require ext_call.return_data[12 len 20] == bool(ext_call.return_data[12 len 20])
                            if not ext_call.return_data[12 len 20]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[_2321 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_2321 + 228] == bool(mem[_2321 + 228])
                            if not mem[_2321 + 228]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                if sub_f45f5ede > 0x888888888888888888888888888888888888888888888888888888888888888:
                    revert with 0, 17
                if not sub_4e72163c:
                    revert with 0, 18
                stor15.length++
                mem[0] = 15
                stor15[stor15.length] = 30 * sub_f45f5ede / 100 / sub_4e72163c
                checkpoint = block.timestamp
                staticcall _pancakePairAddress.token0() with:
                        gas gas_remaining wei
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if address(arg2) != ext_call.return_data[12 len 20]:
                    staticcall _pancakePairAddress.token0() with:
                            gas gas_remaining wei
                    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if 0 >= ext_call.return_data[0]:
                        revert with 0, 50
                    mem[128] = ext_call.return_data[12 len 20]
                    staticcall _pancakePairAddress.token1() with:
                            gas gas_remaining wei
                    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if 1 >= ext_call.return_data[0]:
                        revert with 0, 50
                    mem[160] = ext_call.return_data[12 len 20]
                    mem[(4 * ceil32(return_data.size)) + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 100] = Mask(112, 0, arg1)
                    mem[(4 * ceil32(return_data.size)) + 132] = 64
                    mem[(4 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
                    idx = 0
                    s = 128
                    t = (4 * ceil32(return_data.size)) + 196
                    while idx < ext_call.return_data[0]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    staticcall sub_ba6f43e6Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args arg1 << 144, Array(len=ext_call.return_data[0], data=mem[(4 * ceil32(return_data.size)) + 196 len 32 * ext_call.return_data[0]])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(4 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (6 * ceil32(return_data.size)) + 96
                    require return_data.size >= 32
                    _1242 = mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(112, 0, arg1) << 112
                    require mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(112, 0, arg1) << 112 <= test266151307()
                    require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(112, 0, arg1) << 112 + 127 < (4 * ceil32(return_data.size)) + return_data.size + 96
                    _1252 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(112, 0, arg1) << 112 + 96]
                    if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(112, 0, arg1) << 112 + 96] > test266151307():
                        revert with 0, 65
                    if (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(112, 0, arg1) << 112 + 96]) + 97 > test266151307() or ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(112, 0, arg1) << 112 + 96]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(112, 0, arg1) << 112 + 96]) + 97
                    mem[(6 * ceil32(return_data.size)) + 96] = _1252
                    require (32 * _1252) + _1242 + 32 <= return_data.size
                    mem[(6 * ceil32(return_data.size)) + 128 len ceil32(32 * _1252)] = mem[(4 * ceil32(return_data.size)) + _1242 + 128 len ceil32(32 * _1252)]
                    if 1 >= _1252:
                        revert with 0, 50
                    _2300 = mem[(6 * ceil32(return_data.size)) + 160]
                    if 1 >= ext_call.return_data[0]:
                        revert with 0, 50
                    _2322 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = sub_b464d35aAddress
                    mem[mem[64] + 100] = _2300
                    _2340 = mem[64]
                    mem[mem[64]] = 100
                    mem[mem[64] + 32 len 4] = unknown_0x23b872dd(?????)
                    mem[64] = mem[64] + 196
                    mem[_2322 + 132] = 32
                    mem[_2322 + 164] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(address(ext_call.return_data[12 len 20])):
                        revert with 0, 'Address: call to non-contract'
                    _2410 = mem[_2340]
                    mem[_2322 + 196 len ceil32(mem[_2340])] = mem[_2340 + 32 len ceil32(mem[_2340])]
                    if ceil32(_2410) > _2410:
                        mem[_2410 + _2322 + 196] = 0
                    call address(ext_call.return_data[12 len 20]) with:
                         gas gas_remaining wei
                        args mem[_2322 + 200 len _2410 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0]:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if ext_call.return_data[0]:
                            require ext_call.return_data[0] >= 32
                            require ext_call.return_data[12 len 20] == bool(ext_call.return_data[12 len 20])
                            if not ext_call.return_data[12 len 20]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[_2322 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_2322 + 228] == bool(mem[_2322 + 228])
                            if not mem[_2322 + 228]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    staticcall _pancakePairAddress.token1() with:
                            gas gas_remaining wei
                    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if 0 >= ext_call.return_data[0]:
                        revert with 0, 50
                    mem[128] = ext_call.return_data[12 len 20]
                    staticcall _pancakePairAddress.token0() with:
                            gas gas_remaining wei
                    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if 1 >= ext_call.return_data[0]:
                        revert with 0, 50
                    mem[160] = ext_call.return_data[12 len 20]
                    mem[(4 * ceil32(return_data.size)) + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 100] = Mask(112, 0, arg1)
                    mem[(4 * ceil32(return_data.size)) + 132] = 64
                    mem[(4 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
                    idx = 0
                    s = 128
                    t = (4 * ceil32(return_data.size)) + 196
                    while idx < ext_call.return_data[0]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    staticcall sub_ba6f43e6Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args arg1 << 144, Array(len=ext_call.return_data[0], data=mem[(4 * ceil32(return_data.size)) + 196 len 32 * ext_call.return_data[0]])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(4 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (6 * ceil32(return_data.size)) + 96
                    require return_data.size >= 32
                    _1243 = mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(112, 0, arg1) << 112
                    require mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(112, 0, arg1) << 112 <= test266151307()
                    require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(112, 0, arg1) << 112 + 127 < (4 * ceil32(return_data.size)) + return_data.size + 96
                    _1253 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(112, 0, arg1) << 112 + 96]
                    if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(112, 0, arg1) << 112 + 96] > test266151307():
                        revert with 0, 65
                    if (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(112, 0, arg1) << 112 + 96]) + 97 > test266151307() or ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(112, 0, arg1) << 112 + 96]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(112, 0, arg1) << 112 + 96]) + 97
                    mem[(6 * ceil32(return_data.size)) + 96] = _1253
                    require (32 * _1253) + _1243 + 32 <= return_data.size
                    mem[(6 * ceil32(return_data.size)) + 128 len ceil32(32 * _1253)] = mem[(4 * ceil32(return_data.size)) + _1243 + 128 len ceil32(32 * _1253)]
                    if 1 >= _1253:
                        revert with 0, 50
                    _2302 = mem[(6 * ceil32(return_data.size)) + 160]
                    if 1 >= ext_call.return_data[0]:
                        revert with 0, 50
                    _2323 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = sub_b464d35aAddress
                    mem[mem[64] + 100] = _2302
                    _2342 = mem[64]
                    mem[mem[64]] = 100
                    mem[mem[64] + 32 len 4] = unknown_0x23b872dd(?????)
                    mem[64] = mem[64] + 196
                    mem[_2323 + 132] = 32
                    mem[_2323 + 164] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(address(ext_call.return_data[12 len 20])):
                        revert with 0, 'Address: call to non-contract'
                    _2412 = mem[_2342]
                    mem[_2323 + 196 len ceil32(mem[_2342])] = mem[_2342 + 32 len ceil32(mem[_2342])]
                    if ceil32(_2412) > _2412:
                        mem[_2412 + _2323 + 196] = 0
                    call address(ext_call.return_data[12 len 20]) with:
                         gas gas_remaining wei
                        args mem[_2323 + 200 len _2412 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0]:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if ext_call.return_data[0]:
                            require ext_call.return_data[0] >= 32
                            require ext_call.return_data[12 len 20] == bool(ext_call.return_data[12 len 20])
                            if not ext_call.return_data[12 len 20]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[_2323 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_2323 + 228] == bool(mem[_2323 + 228])
                            if not mem[_2323 + 228]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    if Mask(112, 0, users[msg.sender].field_2048) > -Mask(112, 0, arg1) + test266151307():
        revert with 0, 17
    Mask(112, 0, users[msg.sender].field_2048) = Mask(112, 0, Mask(112, 0, arg1) + Mask(112, 0, users[msg.sender].field_2048))
    if Mask(112, 0, users[msg.sender].field_2048) < 1000 * 10^18:
        users[msg.sender].field_512 = 6
    else:
        users[msg.sender].field_512 = 10
}



}
