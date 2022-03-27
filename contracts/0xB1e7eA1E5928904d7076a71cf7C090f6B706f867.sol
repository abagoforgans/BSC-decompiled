contract main {




// =====================  Runtime code  =====================


address owner;
address tokenAddress;
uint256 rate;
uint256 stor3;
uint256 startTime;
uint256 endTime;
uint32 stor6; offset 64
uint256 stor6;
uint256 stor6; offset 32
uint256 remaining;
big736 stor6;
uint256 sub_81a3b9db;
uint32 stor8;
address sellerAddress;
uint256 stor8;

function seller() {
    return address(sellerAddress)
}

function rate() {
    return rate
}

function endTime() {
    return endTime
}

function remaining() {
    return remaining
}

function startTime() {
    return startTime
}

function sub_81a3b9db(?) {
    return sub_81a3b9db
}

function owner() {
    return owner
}

function token() {
    return tokenAddress
}

function isOwner() {
    return (msg.sender == owner)
}

function sub_39caff29(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    remaining = arg1
}

function setRate(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    rate = arg1
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_60dbb514(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_81a3b9db = arg1
}

function setEndTime(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    endTime = arg1
}

function setToken(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    tokenAddress = arg1
}

function setStartTime(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    startTime = arg1
}

function setSeller(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    address(sellerAddress) = arg1
}

function transferOwnership(address arg1) {
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

function deposit() payable {
    mem[64] = 96
    if block.timestamp < startTime:
        revert with 0, 'not start'
    if remaining <= 0:
        revert with 0, 'finished'
    if block.timestamp >= endTime:
        revert with 0, 'finished'
    if block.timestamp - startTime <= sub_81a3b9db:
        if not msg.value:
            if stor3 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require stor3
            if not ext_code.hash(tokenAddress):
                revert with 0, 'SafeERC20: call to non-contract'
            if ext_code.hash(tokenAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                revert with 0, 'SafeERC20: call to non-contract'
            if 0 / stor3 <= remaining:
                mem[292 len 96] = unknown_0x23b872dd(?????), Mask(224, 0, stor8), uint32(stor8), msg.sender, Mask(224, 32, 0 / stor3) >> 32
                mem[416 len 4] = Mask(32, 64, 0 / stor3) >> 64
                call tokenAddress with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args Mask(224, 32, 0 / stor3) << 480, mem[388 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 0, 'SafeERC20: low-level call failed'
                mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[324]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 403 len 22]
                remaining -= 0 / stor3
                emit Deposit((0 / stor3), msg.sender);
            else:
                mem[292 len 96] = unknown_0x23b872dd(?????), Mask(224, 0, stor8), uint32(stor8), msg.sender, Mask(224, 0, stor6.field_32)
                mem[416 len 4] = uint32(stor6.field_64)
                call tokenAddress with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args Mask(736, 0, stor6.field_0), mem[388 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 0, 'SafeERC20: low-level call failed'
                mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[324]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 403 len 22]
                remaining = 0
                emit Deposit(remaining, msg.sender);
        else:
            require msg.value
            if msg.value * rate / msg.value != rate:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if stor3 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require stor3
            if not ext_code.hash(tokenAddress):
                revert with 0, 'SafeERC20: call to non-contract'
            if ext_code.hash(tokenAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                revert with 0, 'SafeERC20: call to non-contract'
            if msg.value * rate / stor3 <= remaining:
                mem[292 len 96] = unknown_0x23b872dd(?????), Mask(224, 0, stor8), uint32(stor8), msg.sender, Mask(224, 32, msg.value * rate / stor3) >> 32
                mem[416 len 4] = Mask(32, 64, msg.value * rate / stor3) >> 64
                call tokenAddress with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args Mask(224, 32, msg.value * rate / stor3) << 480, mem[388 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 0, 'SafeERC20: low-level call failed'
                mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[324]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 403 len 22]
                remaining -= msg.value * rate / stor3
                emit Deposit((msg.value * rate / stor3), msg.sender);
            else:
                mem[292 len 96] = unknown_0x23b872dd(?????), Mask(224, 0, stor8), uint32(stor8), msg.sender, Mask(224, 0, stor6.field_32)
                mem[416 len 4] = uint32(stor6.field_64)
                call tokenAddress with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args Mask(736, 0, stor6.field_0), mem[388 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 0, 'SafeERC20: low-level call failed'
                mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[324]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 403 len 22]
                remaining = 0
                emit Deposit(remaining, msg.sender);
    else:
        require sub_81a3b9db
        idx = 1
        while idx <= block.timestamp - startTime / sub_81a3b9db:
            if not rate:
                _407 = mem[64]
                mem[64] = mem[64] + 64
                mem[_407] = 26
                mem[_407 + 32] = 'SafeMath: division by zero'
                rate = 0
            else:
                require rate
                if 10 * rate / rate != 10:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _441 = mem[64]
                mem[64] = mem[64] + 64
                mem[_441] = 26
                mem[_441 + 32] = 'SafeMath: division by zero'
                rate = 10 * rate / 11
            startTime += sub_81a3b9db
            idx = idx + 1
            continue 
        if not msg.value:
            _440 = mem[64]
            mem[64] = mem[64] + 64
            mem[_440] = 26
            mem[_440 + 32] = 'SafeMath: division by zero'
            if stor3 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require stor3
            if 0 / stor3 <= remaining:
                _472 = mem[64]
                mem[mem[64] + 36] = address(sellerAddress)
                mem[mem[64] + 68] = msg.sender
                mem[mem[64] + 100] = 0 / stor3
                _473 = mem[64]
                mem[mem[64]] = 100
                mem[64] = mem[64] + 132
                mem[_473 + 32 len 4] = unknown_0x23b872dd(?????)
                if not ext_code.hash(tokenAddress):
                    revert with 0, 'SafeERC20: call to non-contract'
                if ext_code.hash(tokenAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                    revert with 0, 'SafeERC20: call to non-contract'
                _488 = mem[_473]
                mem[mem[64] len floor32(mem[_473])] = mem[_473 + 32 len floor32(mem[_473])]
                mem[mem[64] + floor32(mem[_473]) + -(mem[_473] % 32) + 32 len mem[_473] % 32] = mem[_473 + floor32(mem[_473]) + -(mem[_473] % 32) + 64 len mem[_473] % 32]
                call tokenAddress with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _488 + _472 + -mem[64] + 128]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if mem[96] > 0:
                        require mem[96] >= 32
                        if not mem[128]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        Mask(176, 0, 0 / stor3)
                else:
                    _639 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_639 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[_639 + 32]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        Mask(176, 0, 0 / stor3)
                remaining -= 0 / stor3
                emit Deposit((0 / stor3), msg.sender);
            else:
                _476 = mem[64]
                mem[mem[64] + 36] = address(sellerAddress)
                mem[mem[64] + 68] = msg.sender
                mem[mem[64] + 100] = remaining
                _477 = mem[64]
                mem[mem[64]] = 100
                mem[64] = mem[64] + 132
                mem[_477 + 32 len 4] = unknown_0x23b872dd(?????)
                if not ext_code.hash(tokenAddress):
                    revert with 0, 'SafeERC20: call to non-contract'
                if ext_code.hash(tokenAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                    revert with 0, 'SafeERC20: call to non-contract'
                _496 = mem[_477]
                mem[mem[64] len floor32(mem[_477])] = mem[_477 + 32 len floor32(mem[_477])]
                mem[mem[64] + floor32(mem[_477]) + -(mem[_477] % 32) + 32 len mem[_477] % 32] = mem[_477 + floor32(mem[_477]) + -(mem[_477] % 32) + 64 len mem[_477] % 32]
                call tokenAddress with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _496 + _476 + -mem[64] + 128]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if mem[96] > 0:
                        require mem[96] >= 32
                        if not mem[128]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        Mask(176, 0, stor6.field_0)
                else:
                    _640 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_640 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[_640 + 32]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        Mask(176, 0, stor6.field_0)
                remaining = 0
                emit Deposit(remaining, msg.sender);
        else:
            require msg.value
            if msg.value * rate / msg.value != rate:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _442 = mem[64]
            mem[64] = mem[64] + 64
            mem[_442] = 26
            mem[_442 + 32] = 'SafeMath: division by zero'
            if stor3 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require stor3
            if msg.value * rate / stor3 <= remaining:
                _479 = mem[64]
                mem[mem[64] + 36] = address(sellerAddress)
                mem[mem[64] + 68] = msg.sender
                mem[mem[64] + 100] = msg.value * rate / stor3
                _480 = mem[64]
                mem[mem[64]] = 100
                mem[64] = mem[64] + 132
                mem[_480 + 32 len 4] = unknown_0x23b872dd(?????)
                if not ext_code.hash(tokenAddress):
                    revert with 0, 'SafeERC20: call to non-contract'
                if ext_code.hash(tokenAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                    revert with 0, 'SafeERC20: call to non-contract'
                _500 = mem[_480]
                mem[mem[64] len floor32(mem[_480])] = mem[_480 + 32 len floor32(mem[_480])]
                mem[mem[64] + floor32(mem[_480]) + -(mem[_480] % 32) + 32 len mem[_480] % 32] = mem[_480 + floor32(mem[_480]) + -(mem[_480] % 32) + 64 len mem[_480] % 32]
                call tokenAddress with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _500 + _479 + -mem[64] + 128]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if mem[96] > 0:
                        require mem[96] >= 32
                        if not mem[128]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        Mask(176, 0, msg.value * rate / stor3)
                else:
                    _635 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_635 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[_635 + 32]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        Mask(176, 0, msg.value * rate / stor3)
                remaining -= msg.value * rate / stor3
                emit Deposit((msg.value * rate / stor3), msg.sender);
            else:
                _482 = mem[64]
                mem[mem[64] + 36] = address(sellerAddress)
                mem[mem[64] + 68] = msg.sender
                mem[mem[64] + 100] = remaining
                _483 = mem[64]
                mem[mem[64]] = 100
                mem[64] = mem[64] + 132
                mem[_483 + 32 len 4] = unknown_0x23b872dd(?????)
                if not ext_code.hash(tokenAddress):
                    revert with 0, 'SafeERC20: call to non-contract'
                if ext_code.hash(tokenAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                    revert with 0, 'SafeERC20: call to non-contract'
                _510 = mem[_483]
                mem[mem[64] len floor32(mem[_483])] = mem[_483 + 32 len floor32(mem[_483])]
                mem[mem[64] + floor32(mem[_483]) + -(mem[_483] % 32) + 32 len mem[_483] % 32] = mem[_483 + floor32(mem[_483]) + -(mem[_483] % 32) + 64 len mem[_483] % 32]
                call tokenAddress with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _510 + _482 + -mem[64] + 128]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if mem[96] > 0:
                        require mem[96] >= 32
                        if not mem[128]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        Mask(176, 0, stor6.field_0)
                else:
                    _636 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_636 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[_636 + 32]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        Mask(176, 0, stor6.field_0)
                remaining = 0
                emit Deposit(remaining, msg.sender);
}

function _fallback() payable {
    mem[64] = 96
    if block.timestamp < startTime:
        revert with 0, 'not start'
    if remaining <= 0:
        revert with 0, 'finished'
    if block.timestamp >= endTime:
        revert with 0, 'finished'
    if block.timestamp - startTime <= sub_81a3b9db:
        if not msg.value:
            if stor3 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require stor3
            if not ext_code.hash(tokenAddress):
                revert with 0, 'SafeERC20: call to non-contract'
            if ext_code.hash(tokenAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                revert with 0, 'SafeERC20: call to non-contract'
            if 0 / stor3 <= remaining:
                mem[292 len 96] = unknown_0x23b872dd(?????), Mask(224, 0, stor8), uint32(stor8), msg.sender, Mask(224, 32, 0 / stor3) >> 32
                mem[416 len 4] = Mask(32, 64, 0 / stor3) >> 64
                call tokenAddress with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args Mask(224, 32, 0 / stor3) << 480, mem[388 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 0, 'SafeERC20: low-level call failed'
                mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[324]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 403 len 22]
                remaining -= 0 / stor3
                emit Deposit((0 / stor3), msg.sender);
            else:
                mem[292 len 96] = unknown_0x23b872dd(?????), Mask(224, 0, stor8), uint32(stor8), msg.sender, Mask(224, 0, stor6.field_32)
                mem[416 len 4] = uint32(stor6.field_64)
                call tokenAddress with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args Mask(736, 0, stor6.field_0), mem[388 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 0, 'SafeERC20: low-level call failed'
                mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[324]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 403 len 22]
                remaining = 0
                emit Deposit(remaining, msg.sender);
        else:
            require msg.value
            if msg.value * rate / msg.value != rate:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if stor3 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require stor3
            if not ext_code.hash(tokenAddress):
                revert with 0, 'SafeERC20: call to non-contract'
            if ext_code.hash(tokenAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                revert with 0, 'SafeERC20: call to non-contract'
            if msg.value * rate / stor3 <= remaining:
                mem[292 len 96] = unknown_0x23b872dd(?????), Mask(224, 0, stor8), uint32(stor8), msg.sender, Mask(224, 32, msg.value * rate / stor3) >> 32
                mem[416 len 4] = Mask(32, 64, msg.value * rate / stor3) >> 64
                call tokenAddress with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args Mask(224, 32, msg.value * rate / stor3) << 480, mem[388 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 0, 'SafeERC20: low-level call failed'
                mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[324]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 403 len 22]
                remaining -= msg.value * rate / stor3
                emit Deposit((msg.value * rate / stor3), msg.sender);
            else:
                mem[292 len 96] = unknown_0x23b872dd(?????), Mask(224, 0, stor8), uint32(stor8), msg.sender, Mask(224, 0, stor6.field_32)
                mem[416 len 4] = uint32(stor6.field_64)
                call tokenAddress with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args Mask(736, 0, stor6.field_0), mem[388 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 0, 'SafeERC20: low-level call failed'
                mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[324]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 403 len 22]
                remaining = 0
                emit Deposit(remaining, msg.sender);
    else:
        require sub_81a3b9db
        idx = 1
        while idx <= block.timestamp - startTime / sub_81a3b9db:
            if not rate:
                _407 = mem[64]
                mem[64] = mem[64] + 64
                mem[_407] = 26
                mem[_407 + 32] = 'SafeMath: division by zero'
                rate = 0
            else:
                require rate
                if 10 * rate / rate != 10:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _441 = mem[64]
                mem[64] = mem[64] + 64
                mem[_441] = 26
                mem[_441 + 32] = 'SafeMath: division by zero'
                rate = 10 * rate / 11
            startTime += sub_81a3b9db
            idx = idx + 1
            continue 
        if not msg.value:
            _440 = mem[64]
            mem[64] = mem[64] + 64
            mem[_440] = 26
            mem[_440 + 32] = 'SafeMath: division by zero'
            if stor3 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require stor3
            if 0 / stor3 <= remaining:
                _472 = mem[64]
                mem[mem[64] + 36] = address(sellerAddress)
                mem[mem[64] + 68] = msg.sender
                mem[mem[64] + 100] = 0 / stor3
                _473 = mem[64]
                mem[mem[64]] = 100
                mem[64] = mem[64] + 132
                mem[_473 + 32 len 4] = unknown_0x23b872dd(?????)
                if not ext_code.hash(tokenAddress):
                    revert with 0, 'SafeERC20: call to non-contract'
                if ext_code.hash(tokenAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                    revert with 0, 'SafeERC20: call to non-contract'
                _488 = mem[_473]
                mem[mem[64] len floor32(mem[_473])] = mem[_473 + 32 len floor32(mem[_473])]
                mem[mem[64] + floor32(mem[_473]) + -(mem[_473] % 32) + 32 len mem[_473] % 32] = mem[_473 + floor32(mem[_473]) + -(mem[_473] % 32) + 64 len mem[_473] % 32]
                call tokenAddress with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _488 + _472 + -mem[64] + 128]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if mem[96] > 0:
                        require mem[96] >= 32
                        if not mem[128]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        Mask(176, 0, 0 / stor3)
                else:
                    _639 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_639 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[_639 + 32]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        Mask(176, 0, 0 / stor3)
                remaining -= 0 / stor3
                emit Deposit((0 / stor3), msg.sender);
            else:
                _476 = mem[64]
                mem[mem[64] + 36] = address(sellerAddress)
                mem[mem[64] + 68] = msg.sender
                mem[mem[64] + 100] = remaining
                _477 = mem[64]
                mem[mem[64]] = 100
                mem[64] = mem[64] + 132
                mem[_477 + 32 len 4] = unknown_0x23b872dd(?????)
                if not ext_code.hash(tokenAddress):
                    revert with 0, 'SafeERC20: call to non-contract'
                if ext_code.hash(tokenAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                    revert with 0, 'SafeERC20: call to non-contract'
                _496 = mem[_477]
                mem[mem[64] len floor32(mem[_477])] = mem[_477 + 32 len floor32(mem[_477])]
                mem[mem[64] + floor32(mem[_477]) + -(mem[_477] % 32) + 32 len mem[_477] % 32] = mem[_477 + floor32(mem[_477]) + -(mem[_477] % 32) + 64 len mem[_477] % 32]
                call tokenAddress with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _496 + _476 + -mem[64] + 128]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if mem[96] > 0:
                        require mem[96] >= 32
                        if not mem[128]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        Mask(176, 0, stor6.field_0)
                else:
                    _640 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_640 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[_640 + 32]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        Mask(176, 0, stor6.field_0)
                remaining = 0
                emit Deposit(remaining, msg.sender);
        else:
            require msg.value
            if msg.value * rate / msg.value != rate:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _442 = mem[64]
            mem[64] = mem[64] + 64
            mem[_442] = 26
            mem[_442 + 32] = 'SafeMath: division by zero'
            if stor3 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require stor3
            if msg.value * rate / stor3 <= remaining:
                _479 = mem[64]
                mem[mem[64] + 36] = address(sellerAddress)
                mem[mem[64] + 68] = msg.sender
                mem[mem[64] + 100] = msg.value * rate / stor3
                _480 = mem[64]
                mem[mem[64]] = 100
                mem[64] = mem[64] + 132
                mem[_480 + 32 len 4] = unknown_0x23b872dd(?????)
                if not ext_code.hash(tokenAddress):
                    revert with 0, 'SafeERC20: call to non-contract'
                if ext_code.hash(tokenAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                    revert with 0, 'SafeERC20: call to non-contract'
                _500 = mem[_480]
                mem[mem[64] len floor32(mem[_480])] = mem[_480 + 32 len floor32(mem[_480])]
                mem[mem[64] + floor32(mem[_480]) + -(mem[_480] % 32) + 32 len mem[_480] % 32] = mem[_480 + floor32(mem[_480]) + -(mem[_480] % 32) + 64 len mem[_480] % 32]
                call tokenAddress with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _500 + _479 + -mem[64] + 128]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if mem[96] > 0:
                        require mem[96] >= 32
                        if not mem[128]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        Mask(176, 0, msg.value * rate / stor3)
                else:
                    _635 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_635 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[_635 + 32]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        Mask(176, 0, msg.value * rate / stor3)
                remaining -= msg.value * rate / stor3
                emit Deposit((msg.value * rate / stor3), msg.sender);
            else:
                _482 = mem[64]
                mem[mem[64] + 36] = address(sellerAddress)
                mem[mem[64] + 68] = msg.sender
                mem[mem[64] + 100] = remaining
                _483 = mem[64]
                mem[mem[64]] = 100
                mem[64] = mem[64] + 132
                mem[_483 + 32 len 4] = unknown_0x23b872dd(?????)
                if not ext_code.hash(tokenAddress):
                    revert with 0, 'SafeERC20: call to non-contract'
                if ext_code.hash(tokenAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                    revert with 0, 'SafeERC20: call to non-contract'
                _510 = mem[_483]
                mem[mem[64] len floor32(mem[_483])] = mem[_483 + 32 len floor32(mem[_483])]
                mem[mem[64] + floor32(mem[_483]) + -(mem[_483] % 32) + 32 len mem[_483] % 32] = mem[_483 + floor32(mem[_483]) + -(mem[_483] % 32) + 64 len mem[_483] % 32]
                call tokenAddress with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _510 + _482 + -mem[64] + 128]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if mem[96] > 0:
                        require mem[96] >= 32
                        if not mem[128]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        Mask(176, 0, stor6.field_0)
                else:
                    _636 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_636 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[_636 + 32]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        Mask(176, 0, stor6.field_0)
                remaining = 0
                emit Deposit(remaining, msg.sender);
}



}
