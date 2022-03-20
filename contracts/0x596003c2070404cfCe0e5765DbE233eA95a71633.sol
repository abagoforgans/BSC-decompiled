contract main {




// =====================  Runtime code  =====================


address owner;
array of struct poolInfo;
uint256 sub_5522196f;
uint256 year;
uint256 sub_f7b6f00d;

function poolInfo(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    return poolInfo[arg1].field_0, poolInfo[arg1].field_256, poolInfo[arg1].field_512
}

function sub_5522196f(?) payable {
    return sub_5522196f
}

function owner() payable {
    return owner
}

function year() payable {
    return year
}

function sub_f7b6f00d(?) payable {
    return sub_f7b6f00d
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

function add(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    poolInfo.length++
    poolInfo[poolInfo.length].field_0 = arg1
    poolInfo[poolInfo.length].field_256 = 0
    poolInfo[poolInfo.length].field_512 = 0
}

function emergencyWithdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1 < poolInfo.length
    if sub_5522196f <= 0:
        revert with 0, 'SafeMath: division by zero'
    require sub_5522196f
    if block.number + (sub_f7b6f00d / sub_5522196f) < block.number:
        revert with 0, 'SafeMath: addition overflow'
    poolInfo[arg1].field_256 = block.number + (sub_f7b6f00d / sub_5522196f)
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
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

function withdraw(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1 < poolInfo.length
    if block.number < poolInfo[arg1].field_256:
        revert with 0, 'Not time yet'
    if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
        revert with 0, 'Address: call to non-contract'
    if not ext_code.hash(poolInfo[arg1].field_0):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
    mem[324 len 0] = 0
    call poolInfo[arg1].field_0 with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args Mask(224, 32, arg2) << 224, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), msg.sender, arg2
        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
    if arg2 > poolInfo[arg1].field_512:
        revert with 0, 'SafeMath: subtraction overflow'
    poolInfo[arg1].field_512 -= arg2
}

function set(uint256 arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 1
        if not poolInfo[idx].field_256:
            _25 = mem[64]
            mem[64] = mem[64] + 64
            mem[_25] = 26
            mem[_25 + 32] = 'SafeMath: division by zero'
            if arg1 > 0:
                require arg1
                poolInfo[idx].field_256 = 0 / arg1
                idx = idx + 1
                continue 
            _27 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            s = 0
            while s < 26:
                mem[_27 + s + 68] = mem[_25 + s + 32]
                s = s + 32
                continue 
            mem[_27 + 68] = mem[_27 + 74 len 26]
            revert with memory
              from mem[64]
               len _27 + -mem[64] + 100
        require poolInfo[idx].field_256
        if poolInfo[idx].field_256 * sub_5522196f / poolInfo[idx].field_256 != sub_5522196f:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _26 = mem[64]
        mem[64] = mem[64] + 64
        mem[_26] = 26
        mem[_26 + 32] = 'SafeMath: division by zero'
        if arg1 > 0:
            require arg1
            poolInfo[idx].field_256 = poolInfo[idx].field_256 * sub_5522196f / arg1
            idx = idx + 1
            continue 
        _30 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 26
        idx = 0
        while idx < 26:
            mem[_30 + idx + 68] = mem[_26 + idx + 32]
            idx = idx + 32
            continue 
        mem[_30 + 68] = mem[_30 + 74 len 26]
        revert with memory
          from mem[64]
           len _30 + -mem[64] + 100
    sub_5522196f = arg1
}

function deposit(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1 < poolInfo.length
    if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
        revert with 0, 'Address: call to non-contract'
    if not ext_code.hash(poolInfo[arg1].field_0):
        revert with 0, 'Address: call to non-contract'
    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
    mem[416 len 4] = 0
    mem[388 len 0] = 0
    call poolInfo[arg1].field_0 with:
         gas gas_remaining wei
        args Mask(224, 32, arg2) << 480, mem[388 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2
        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 
                        32,
                        42,
                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[402 len 14],
                        0,
                        mem[420 len 4]
    else:
        mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[324]:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 403 len 22]
    if sub_5522196f <= 0:
        revert with 0, 'SafeMath: division by zero'
    require sub_5522196f
    if block.number + (year / sub_5522196f) < block.number:
        revert with 0, 'SafeMath: addition overflow'
    poolInfo[arg1].field_256 = block.number + (year / sub_5522196f)
    if poolInfo[arg1].field_512 + arg2 < poolInfo[arg1].field_512:
        revert with 0, 'SafeMath: addition overflow'
    poolInfo[arg1].field_512 += arg2
}



}
