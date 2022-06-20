contract main {




// =====================  Runtime code  =====================


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
address governorAddress;
mapping of uint256 config;
address currencyAddress;
address tokenAddress;
uint256 ratio;
uint32 stor56;
address recipientAddress;
uint256 stor56;
uint256 sub_78c8e65f;
uint256 sub_6b9a284e;
uint256 sub_356130bc;
uint256 sub_8adaee58;
uint256 sub_f0809455;
uint256 totalClaimed;
mapping of struct quotaOf;
mapping of struct offeredOf;
mapping of uint256 claimedOf;

function governor() {
    return governorAddress
}

function sub_356130bc(?) {
    return sub_356130bc
}

function getConfig(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    return config[arg1 xor arg2]
}

function recipient() {
    return address(recipientAddress)
}

function sub_6b9a284e(?) {
    return sub_6b9a284e
}

function getConfig(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return config[arg1]
}

function ratio() {
    return ratio
}

function sub_78c8e65f(?) {
    return sub_78c8e65f
}

function sub_8adaee58(?) {
    return sub_8adaee58
}

function getConfig(bytes32 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    return config[arg1 xor arg2]
}

function claimedOf(address arg1) {
    require calldata.size - 4 >= 32
    return claimedOf[arg1]
}

function offeredOf(address arg1) {
    require calldata.size - 4 >= 32
    return offeredOf[arg1].field_0
}

function totalClaimed() {
    return totalClaimed
}

function currency() {
    return currencyAddress
}

function quotaOf(address arg1) {
    require calldata.size - 4 >= 32
    return quotaOf[arg1].field_0
}

function sub_f0809455(?) {
    return sub_f0809455
}

function token() {
    return tokenAddress
}

function changeToken(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == governorAddress
    tokenAddress = arg1
}

function renounceGovernorship() {
    require msg.sender == governorAddress
    emit GovernorshipTransferred(governorAddress, 0);
    governorAddress = 0
}

function setConfig(bytes32 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == governorAddress
    if config[arg1] != arg2:
        config[arg1] = arg2
}

function setConfig(bytes32 arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require msg.sender == governorAddress
    if config[arg1 xor arg2] != arg3:
        config[arg1 xor arg2] = arg3
}

function setConfig(bytes32 arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require msg.sender == governorAddress
    if config[arg1 xor arg2] != arg3:
        config[arg1 xor arg2] = arg3
}

function transferGovernorship(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == governorAddress
    require arg1
    emit GovernorshipTransferred(governorAddress, arg1);
    governorAddress = arg1
}

function withdrawHT() {
    require msg.sender == governorAddress
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_b24ed022(?) {
    require calldata.size - 4 >= 224
    require msg.sender == governorAddress
    currencyAddress = arg1
    tokenAddress = arg2
    ratio = arg3
    address(recipientAddress) = arg4
    sub_78c8e65f = arg5
    sub_6b9a284e = arg6
    sub_356130bc = arg7
}

function withdrawHT(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == governorAddress
    call arg1 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setQuota(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == governorAddress
    if sub_8adaee58 + arg2 < sub_8adaee58:
        revert with 0, 'SafeMath: addition overflow'
    if quotaOf[address(arg1)].field_0 > sub_8adaee58 + arg2:
        revert with 0, 'SafeMath: subtraction overflow'
    sub_8adaee58 = sub_8adaee58 + arg2 - quotaOf[address(arg1)].field_0
    quotaOf[address(arg1)].field_0 = arg2
    emit Quota(arg2, sub_8adaee58, arg1);
}

function __Governable_init_unchained(address arg1) {
    require calldata.size - 4 >= 32
    if uint8(stor0.field_8):
        governorAddress = arg1
        emit GovernorshipTransferred(0, governorAddress);
    else:
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            46,
                            0x77436f6e747261637420696e7374616e63652068617320616c7265616479206265656e20696e697469616c697a65,
                            mem[210 len 18]
        if uint8(stor0.field_8):
            governorAddress = arg1
            emit GovernorshipTransferred(0, governorAddress);
        else:
            Mask(248, 0, stor0.field_8) = 1
            uint8(stor0.field_0) = 1
            governorAddress = arg1
            emit GovernorshipTransferred(0, governorAddress);
            Mask(248, 0, stor0.field_8) = 0
}

function withdrawToken(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == governorAddress
    if ext_code.hash(tokenAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
        revert with 0, 'SafeERC20: call to non-contract'
    if not ext_code.hash(tokenAddress):
        revert with 0, 'SafeERC20: call to non-contract'
    mem[196 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, Mask(224, 32, arg2) >> 32
    call tokenAddress with:
         gas gas_remaining wei
        args Mask(224, 32, arg2) << 224, mem[260 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if not unknown_0xa9059cbb(?????), address(arg1) << 64:
            revert with 0, 32, 42, 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[306 len 22]
    else:
        mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[228]:
                revert with 0, 
                            32,
                            42,
                            0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 307 len 22]
}

function sub_c7735338(?) {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[64] = (32 * arg1.length) + 128
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    idx = 0
    while idx < arg1.length:
        require idx < mem[96]
        _21 = mem[(32 * idx) + 128]
        require msg.sender == governorAddress
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 63
        _22 = sha3(mem[(32 * idx) + 140 len 20], 63)
        if sub_8adaee58 + arg2 < sub_8adaee58:
            revert with 0, 'SafeMath: addition overflow'
        _25 = mem[64]
        mem[64] = mem[64] + 64
        mem[_25] = 30
        mem[_25 + 32] = 'SafeMath: subtraction overflow'
        if stor[_22] > sub_8adaee58 + arg2:
            _26 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            s = 0
            while s < 30:
                mem[_26 + s + 68] = mem[_25 + s + 32]
                s = s + 32
                continue 
            mem[_26 + 68] = mem[_26 + 70 len 30]
            revert with memory
              from mem[64]
               len _26 + -mem[64] + 100
        sub_8adaee58 = sub_8adaee58 + arg2 - stor[_22]
        mem[0] = address(_21)
        mem[32] = 63
        quotaOf[address(_21)].field_0 = arg2
        mem[mem[64]] = arg2
        mem[mem[64] + 32] = sub_8adaee58
        emit Quota(arg2, sub_8adaee58, address(_21));
        idx = idx + 1
        continue 
}

function rescueTokens(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == governorAddress
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_code.hash(arg1) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
        revert with 0, 'SafeERC20: call to non-contract'
    if not ext_code.hash(arg1):
        revert with 0, 'SafeERC20: call to non-contract'
    mem[196 len 64] = unknown_0xa9059cbb(?????), address(arg2) << 64, 0, ext_call.return_data[0 len 28]
    call arg1 with:
         gas gas_remaining wei
        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[260 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if not unknown_0xa9059cbb(?????), address(arg2) << 64:
            revert with 0, 32, 42, 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[306 len 22]
    else:
        mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[228]:
                revert with 0, 
                            32,
                            42,
                            0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 307 len 22]
}

function withdrawToken() {
    require msg.sender == governorAddress
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_code.hash(tokenAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
        revert with 0, 'SafeERC20: call to non-contract'
    if not ext_code.hash(tokenAddress):
        revert with 0, 'SafeERC20: call to non-contract'
    mem[196 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
    call tokenAddress with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[260 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 32, 42, 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[306 len 22]
    else:
        mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[228]:
                revert with 0, 
                            32,
                            42,
                            0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 307 len 22]
}

function withdrawToken(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == governorAddress
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_code.hash(tokenAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
        revert with 0, 'SafeERC20: call to non-contract'
    if not ext_code.hash(tokenAddress):
        revert with 0, 'SafeERC20: call to non-contract'
    mem[196 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0 len 28]
    call tokenAddress with:
         gas gas_remaining wei
        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[260 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if not unknown_0xa9059cbb(?????), address(arg1) << 64:
            revert with 0, 32, 42, 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[306 len 22]
    else:
        mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[228]:
                revert with 0, 
                            32,
                            42,
                            0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 307 len 22]
}

function sub_e49ef1a5(?) {
    require calldata.size - 4 >= 256
    if uint8(stor0.field_8):
        governorAddress = arg1
        emit GovernorshipTransferred(0, governorAddress);
    else:
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            46,
                            0x77436f6e747261637420696e7374616e63652068617320616c7265616479206265656e20696e697469616c697a65,
                            mem[210 len 18]
        if uint8(stor0.field_8):
            governorAddress = arg1
            emit GovernorshipTransferred(0, governorAddress);
        else:
            Mask(248, 0, stor0.field_8) = 1
            uint8(stor0.field_0) = 1
            if ext_code.size(this.address):
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                46,
                                0x77436f6e747261637420696e7374616e63652068617320616c7265616479206265656e20696e697469616c697a65,
                                mem[210 len 18]
            if uint8(stor0.field_8):
                governorAddress = arg1
                emit GovernorshipTransferred(0, governorAddress);
            else:
                Mask(248, 0, stor0.field_8) = 1
                uint8(stor0.field_0) = 1
                governorAddress = arg1
                emit GovernorshipTransferred(0, governorAddress);
                Mask(248, 0, stor0.field_8) = 0
    require msg.sender == governorAddress
    currencyAddress = arg2
    tokenAddress = arg3
    ratio = arg4
    address(recipientAddress) = arg5
    sub_78c8e65f = arg6
    sub_6b9a284e = arg7
    sub_356130bc = arg8
    if not uint8(stor0.field_8):
        Mask(248, 0, stor0.field_8) = 0
}

function sub_1942999c(?) {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[64] = (32 * arg1.length) + (32 * arg2.length) + 160
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = 0
    idx = 0
    while idx < arg1.length:
        require idx < mem[96]
        _24 = mem[(32 * idx) + 128]
        require idx < mem[(32 * arg1.length) + 128]
        _26 = mem[(32 * idx) + (32 * arg1.length) + 160]
        require msg.sender == governorAddress
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 63
        _27 = sha3(mem[(32 * idx) + 140 len 20], 63)
        if sub_8adaee58 + mem[(32 * idx) + (32 * arg1.length) + 160] < sub_8adaee58:
            revert with 0, 'SafeMath: addition overflow'
        _30 = mem[64]
        mem[64] = mem[64] + 64
        mem[_30] = 30
        mem[_30 + 32] = 'SafeMath: subtraction overflow'
        if stor[_27] > sub_8adaee58 + _26:
            _31 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            s = 0
            while s < 30:
                mem[_31 + s + 68] = mem[_30 + s + 32]
                s = s + 32
                continue 
            mem[_31 + 68] = mem[_31 + 70 len 30]
            revert with memory
              from mem[64]
               len _31 + -mem[64] + 100
        sub_8adaee58 = sub_8adaee58 + _26 - stor[_27]
        mem[0] = address(_24)
        mem[32] = 63
        quotaOf[address(_24)].field_0 = _26
        mem[mem[64]] = _26
        mem[mem[64] + 32] = sub_8adaee58
        emit Quota(_26, sub_8adaee58, address(_24));
        idx = idx + 1
        continue 
}

function claim() {
    if block.timestamp < sub_356130bc:
        revert with 0, 'it's not time yet'
    if claimedOf[address(msg.sender)]:
        revert with 0, 'claimed already'
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] + totalClaimed < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    if ext_call.return_data[0] + totalClaimed <= sub_f0809455:
        claimedOf[address(msg.sender)] = offeredOf[address(msg.sender)].field_0
        if totalClaimed + offeredOf[address(msg.sender)].field_0 < totalClaimed:
            revert with 0, 'SafeMath: addition overflow'
        totalClaimed += offeredOf[address(msg.sender)].field_0
        if ext_code.hash(tokenAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
            revert with 0, 'SafeERC20: call to non-contract'
        if not ext_code.hash(tokenAddress):
            revert with 0, 'SafeERC20: call to non-contract'
        mem[196 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 0, offeredOf[address(msg.sender)].field_32)
        call tokenAddress with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args Mask(480, 0, offeredOf[address(msg.sender)].field_0), mem[260 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                revert with 0, 32, 42, 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[306 len 22]
        else:
            mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[228]:
                    revert with 0, 
                                32,
                                42,
                                0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 307 len 22]
    else:
        require ext_code.size(tokenAddress)
        staticcall tokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] + totalClaimed < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        if sub_f0809455 > ext_call.return_data[0] + totalClaimed:
            revert with 0, 'SafeMath: subtraction overflow'
        if ext_code.hash(tokenAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
            revert with 0, 'SafeERC20: call to non-contract'
        if not ext_code.hash(tokenAddress):
            revert with 0, 'SafeERC20: call to non-contract'
        mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor56), uint32(stor56), Mask(224, 32, ext_call.return_data[0] + totalClaimed - sub_f0809455) >> 32
        call tokenAddress with:
           funct uint32(stor56)
             gas gas_remaining wei
            args Mask(224, 32, ext_call.return_data[0] + totalClaimed - sub_f0809455) << 224, mem[324 len 4]
        if not return_data.size:
            require not ext_call.success
            revert with 0, 'SafeERC20: low-level call failed'
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
        claimedOf[address(msg.sender)] = offeredOf[address(msg.sender)].field_0
        if totalClaimed + offeredOf[address(msg.sender)].field_0 < totalClaimed:
            revert with 0, 'SafeMath: addition overflow'
        totalClaimed += offeredOf[address(msg.sender)].field_0
        if ext_code.hash(tokenAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
            revert with 0, 'SafeERC20: call to non-contract'
        if not ext_code.hash(tokenAddress):
            revert with 0, 'SafeERC20: call to non-contract'
        mem[ceil32(return_data.size) + 361 len 64] = 0, msg.sender, Mask(224, 0, offeredOf[address(msg.sender)].field_32)
        call tokenAddress with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args offeredOf[address(msg.sender)].field_0, Mask(224, 32, 0, msg.sender, Mask(224, 0, offeredOf[address(msg.sender)].field_32)) >> 32, mem[ceil32(return_data.size) + 425 len 4]
        if not return_data.size:
            require not ext_call.success
            revert with 0, 'SafeERC20: low-level call failed'
        mem[ceil32(return_data.size) + 393 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[ceil32(return_data.size) + 393]:
                revert with 0, 
                            32,
                            42,
                            0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[(2 * ceil32(return_data.size)) + 472 len 22]
    emit Claim(offeredOf[address(msg.sender)].field_0, totalClaimed, msg.sender);
}

function _fallback() {
    if block.timestamp < sub_356130bc:
        revert with 0, 'it's not time yet'
    if claimedOf[address(msg.sender)]:
        revert with 0, 'claimed already'
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] + totalClaimed < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    if ext_call.return_data[0] + totalClaimed <= sub_f0809455:
        claimedOf[address(msg.sender)] = offeredOf[address(msg.sender)].field_0
        if totalClaimed + offeredOf[address(msg.sender)].field_0 < totalClaimed:
            revert with 0, 'SafeMath: addition overflow'
        totalClaimed += offeredOf[address(msg.sender)].field_0
        if ext_code.hash(tokenAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
            revert with 0, 'SafeERC20: call to non-contract'
        if not ext_code.hash(tokenAddress):
            revert with 0, 'SafeERC20: call to non-contract'
        mem[196 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 0, offeredOf[address(msg.sender)].field_32)
        call tokenAddress with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args Mask(480, 0, offeredOf[address(msg.sender)].field_0), mem[260 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                revert with 0, 32, 42, 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[306 len 22]
        else:
            mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[228]:
                    revert with 0, 
                                32,
                                42,
                                0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 307 len 22]
    else:
        require ext_code.size(tokenAddress)
        staticcall tokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] + totalClaimed < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        if sub_f0809455 > ext_call.return_data[0] + totalClaimed:
            revert with 0, 'SafeMath: subtraction overflow'
        if ext_code.hash(tokenAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
            revert with 0, 'SafeERC20: call to non-contract'
        if not ext_code.hash(tokenAddress):
            revert with 0, 'SafeERC20: call to non-contract'
        mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor56), uint32(stor56), Mask(224, 32, ext_call.return_data[0] + totalClaimed - sub_f0809455) >> 32
        call tokenAddress with:
           funct uint32(stor56)
             gas gas_remaining wei
            args Mask(224, 32, ext_call.return_data[0] + totalClaimed - sub_f0809455) << 224, mem[324 len 4]
        if not return_data.size:
            require not ext_call.success
            revert with 0, 'SafeERC20: low-level call failed'
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
        claimedOf[address(msg.sender)] = offeredOf[address(msg.sender)].field_0
        if totalClaimed + offeredOf[address(msg.sender)].field_0 < totalClaimed:
            revert with 0, 'SafeMath: addition overflow'
        totalClaimed += offeredOf[address(msg.sender)].field_0
        if ext_code.hash(tokenAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
            revert with 0, 'SafeERC20: call to non-contract'
        if not ext_code.hash(tokenAddress):
            revert with 0, 'SafeERC20: call to non-contract'
        mem[ceil32(return_data.size) + 361 len 64] = 0, msg.sender, Mask(224, 0, offeredOf[address(msg.sender)].field_32)
        call tokenAddress with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args offeredOf[address(msg.sender)].field_0, Mask(224, 32, 0, msg.sender, Mask(224, 0, offeredOf[address(msg.sender)].field_32)) >> 32, mem[ceil32(return_data.size) + 425 len 4]
        if not return_data.size:
            require not ext_call.success
            revert with 0, 'SafeERC20: low-level call failed'
        mem[ceil32(return_data.size) + 393 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[ceil32(return_data.size) + 393]:
                revert with 0, 
                            32,
                            42,
                            0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[(2 * ceil32(return_data.size)) + 472 len 22]
    emit Claim(offeredOf[address(msg.sender)].field_0, totalClaimed, msg.sender);
}

function offerHT() payable {
    if currencyAddress:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe73686f756c642063616c6c206f666665722875696e7420616d6f756e742920696e73746561,
                    mem[202 len 26]
    if block.timestamp < sub_78c8e65f:
        revert with 0, 'it's not time yet'
    if block.timestamp >= sub_356130bc:
        revert with 0, 'expired'
    if msg.value < quotaOf[address(msg.sender)].field_0:
        if msg.value <= 0:
            revert with 0, 'no quota'
        if offeredOf[address(msg.sender)].field_0:
            revert with 0, 'offered already'
        call address(recipientAddress) with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if not msg.value:
            offeredOf[address(msg.sender)].field_0 = 0
            if sub_f0809455 < sub_f0809455:
                revert with 0, 'SafeMath: addition overflow'
            require ext_code.size(tokenAddress)
            staticcall tokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if sub_f0809455 > ext_call.return_data[0]:
                revert with 0, 'Quota is full'
            if msg.value > msg.value:
                revert with 0, 'SafeMath: subtraction overflow'
            emit Offer(msg.value, 0, sub_f0809455, msg.sender);
        else:
            require msg.value
            if msg.value * ratio / msg.value != ratio:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            offeredOf[address(msg.sender)].field_0 = msg.value * ratio / 10^18
            if sub_f0809455 + (msg.value * ratio / 10^18) < sub_f0809455:
                revert with 0, 'SafeMath: addition overflow'
            sub_f0809455 += msg.value * ratio / 10^18
            require ext_code.size(tokenAddress)
            staticcall tokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if sub_f0809455 > ext_call.return_data[0]:
                revert with 0, 'Quota is full'
            if msg.value > msg.value:
                revert with 0, 'SafeMath: subtraction overflow'
            emit Offer(msg.value, msg.value * ratio / 10^18, sub_f0809455, msg.sender);
    else:
        if quotaOf[address(msg.sender)].field_0 <= 0:
            revert with 0, 'no quota'
        if offeredOf[address(msg.sender)].field_0:
            revert with 0, 'offered already'
        call address(recipientAddress) with:
           value quotaOf[address(msg.sender)].field_0 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if not quotaOf[address(msg.sender)].field_0:
            offeredOf[address(msg.sender)].field_0 = 0
            if sub_f0809455 < sub_f0809455:
                revert with 0, 'SafeMath: addition overflow'
            require ext_code.size(tokenAddress)
            staticcall tokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if sub_f0809455 > ext_call.return_data[0]:
                revert with 0, 'Quota is full'
            if msg.value > quotaOf[address(msg.sender)].field_0:
                if quotaOf[address(msg.sender)].field_0 > msg.value:
                    revert with 0, 'SafeMath: subtraction overflow'
                call msg.sender with:
                   value msg.value - quotaOf[address(msg.sender)].field_0 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            emit Offer(quotaOf[address(msg.sender)].field_0, 0, sub_f0809455, msg.sender);
        else:
            require quotaOf[address(msg.sender)].field_0
            if quotaOf[address(msg.sender)].field_0 * ratio / quotaOf[address(msg.sender)].field_0 != ratio:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            offeredOf[address(msg.sender)].field_0 = quotaOf[address(msg.sender)].field_0 * ratio / 10^18
            if sub_f0809455 + (quotaOf[address(msg.sender)].field_0 * ratio / 10^18) < sub_f0809455:
                revert with 0, 'SafeMath: addition overflow'
            sub_f0809455 += quotaOf[address(msg.sender)].field_0 * ratio / 10^18
            require ext_code.size(tokenAddress)
            staticcall tokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if sub_f0809455 > ext_call.return_data[0]:
                revert with 0, 'Quota is full'
            if msg.value > quotaOf[address(msg.sender)].field_0:
                if quotaOf[address(msg.sender)].field_0 > msg.value:
                    revert with 0, 'SafeMath: subtraction overflow'
                call msg.sender with:
                   value msg.value - quotaOf[address(msg.sender)].field_0 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            emit Offer(quotaOf[address(msg.sender)].field_0, quotaOf[address(msg.sender)].field_0 * ratio / 10^18, sub_f0809455, msg.sender);
}

function offer(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not currencyAddress:
        revert with 0, 'should call offerHT() instead'
    if block.timestamp < sub_78c8e65f:
        revert with 0, 'it's not time yet'
    if block.timestamp >= sub_6b9a284e:
        revert with 0, 'expired'
    if arg1 < 150 * 10^18:
        revert with 0, 'smaller than minimum'
    if arg1 > quotaOf[address(msg.sender)].field_0:
        revert with 0, 'greater than maximum'
    if arg1 < quotaOf[address(msg.sender)].field_0:
        if arg1 <= 0:
            revert with 0, 'no quota'
        require ext_code.size(currencyAddress)
        staticcall currencyAddress.0xdd62ed3e with:
                gas gas_remaining wei
               args msg.sender, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < arg1:
            revert with 0, 'allowance not enough'
        require ext_code.size(currencyAddress)
        staticcall currencyAddress.0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < arg1:
            revert with 0, 'balance not enough'
        if offeredOf[address(msg.sender)].field_0:
            revert with 0, 'offered already'
        if ext_code.hash(currencyAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
            revert with 0, 'SafeERC20: call to non-contract'
        if not ext_code.hash(currencyAddress):
            revert with 0, 'SafeERC20: call to non-contract'
        mem[228 len 96] = unknown_0x23b872dd(?????), msg.sender, address(recipientAddress), Mask(224, 32, arg1) >> 32
        mem[352 len 4] = uint32(arg1)
        call currencyAddress with:
           funct uint32(stor56)
             gas gas_remaining wei
            args Mask(224, 32, arg1) << 480, mem[324 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                revert with 0, 
                            32,
                            42,
                            0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[338 len 14],
                            uint32(arg1),
                            mem[356 len 4]
            if not arg1:
                offeredOf[address(msg.sender)].field_0 = 0
                if sub_f0809455 < sub_f0809455:
                    revert with 0, 'SafeMath: addition overflow'
                require ext_code.size(tokenAddress)
                staticcall tokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if sub_f0809455 > ext_call.return_data[0]:
                    revert with 0, 'Quota is full'
                emit Offer(arg1, 0, sub_f0809455, msg.sender);
            else:
                require arg1
                if arg1 * ratio / arg1 != ratio:
                    revert with 0, 
                                32,
                                33,
                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[329 len 23],
                                uint32(arg1),
                                mem[356 len 4]
                offeredOf[address(msg.sender)].field_0 = arg1 * ratio / 10^18
                if sub_f0809455 + (arg1 * ratio / 10^18) < sub_f0809455:
                    revert with 0, 'SafeMath: addition overflow'
                sub_f0809455 += arg1 * ratio / 10^18
                require ext_code.size(tokenAddress)
                staticcall tokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if sub_f0809455 > ext_call.return_data[0]:
                    revert with 0, 'Quota is full'
                emit Offer(arg1, arg1 * ratio / 10^18, sub_f0809455, msg.sender);
        else:
            mem[260 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[260]:
                    revert with 0, 
                                32,
                                42,
                                0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 339 len 22]
            if not arg1:
                offeredOf[address(msg.sender)].field_0 = 0
                if sub_f0809455 < sub_f0809455:
                    revert with 0, 'SafeMath: addition overflow'
                require ext_code.size(tokenAddress)
                staticcall tokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if sub_f0809455 > ext_call.return_data[0]:
                    revert with 0, 'Quota is full'
                emit Offer(arg1, 0, sub_f0809455, msg.sender);
            else:
                require arg1
                if arg1 * ratio / arg1 != ratio:
                    revert with 0, 
                                32,
                                33,
                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[ceil32(return_data.size) + 330 len 31]
                offeredOf[address(msg.sender)].field_0 = arg1 * ratio / 10^18
                if sub_f0809455 + (arg1 * ratio / 10^18) < sub_f0809455:
                    revert with 0, 'SafeMath: addition overflow'
                sub_f0809455 += arg1 * ratio / 10^18
                require ext_code.size(tokenAddress)
                staticcall tokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if sub_f0809455 > ext_call.return_data[0]:
                    revert with 0, 'Quota is full'
                emit Offer(arg1, arg1 * ratio / 10^18, sub_f0809455, msg.sender);
    else:
        if quotaOf[address(msg.sender)].field_0 <= 0:
            revert with 0, 'no quota'
        require ext_code.size(currencyAddress)
        staticcall currencyAddress.0xdd62ed3e with:
                gas gas_remaining wei
               args msg.sender, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < quotaOf[address(msg.sender)].field_0:
            revert with 0, 'allowance not enough'
        require ext_code.size(currencyAddress)
        staticcall currencyAddress.0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < quotaOf[address(msg.sender)].field_0:
            revert with 0, 'balance not enough'
        if offeredOf[address(msg.sender)].field_0:
            revert with 0, 'offered already'
        if ext_code.hash(currencyAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
            revert with 0, 'SafeERC20: call to non-contract'
        if not ext_code.hash(currencyAddress):
            revert with 0, 'SafeERC20: call to non-contract'
        mem[228 len 96] = unknown_0x23b872dd(?????), msg.sender, address(recipientAddress), Mask(224, 0, quotaOf[address(msg.sender)].field_32)
        mem[352 len 4] = uint32(quotaOf[address(msg.sender)].field_64)
        call currencyAddress with:
           funct uint32(stor56)
             gas gas_remaining wei
            args Mask(736, 0, quotaOf[address(msg.sender)].field_0), mem[324 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                revert with 0, 
                            32,
                            42,
                            0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[338 len 14],
                            uint32(quotaOf[address(msg.sender)].field_64),
                            mem[356 len 4]
            if not quotaOf[address(msg.sender)].field_0:
                offeredOf[address(msg.sender)].field_0 = 0
                if sub_f0809455 < sub_f0809455:
                    revert with 0, 'SafeMath: addition overflow'
                require ext_code.size(tokenAddress)
                staticcall tokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if sub_f0809455 > ext_call.return_data[0]:
                    revert with 0, 'Quota is full'
                emit Offer(quotaOf[address(msg.sender)].field_0, 0, sub_f0809455, msg.sender);
            else:
                require quotaOf[address(msg.sender)].field_0
                if quotaOf[address(msg.sender)].field_0 * ratio / quotaOf[address(msg.sender)].field_0 != ratio:
                    revert with 0, 
                                32,
                                33,
                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[329 len 23],
                                uint32(quotaOf[address(msg.sender)].field_64),
                                mem[356 len 4]
                offeredOf[address(msg.sender)].field_0 = quotaOf[address(msg.sender)].field_0 * ratio / 10^18
                if sub_f0809455 + (quotaOf[address(msg.sender)].field_0 * ratio / 10^18) < sub_f0809455:
                    revert with 0, 'SafeMath: addition overflow'
                sub_f0809455 += quotaOf[address(msg.sender)].field_0 * ratio / 10^18
                require ext_code.size(tokenAddress)
                staticcall tokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if sub_f0809455 > ext_call.return_data[0]:
                    revert with 0, 'Quota is full'
                emit Offer(quotaOf[address(msg.sender)].field_0, quotaOf[address(msg.sender)].field_0 * ratio / 10^18, sub_f0809455, msg.sender);
        else:
            mem[260 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[260]:
                    revert with 0, 
                                32,
                                42,
                                0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 339 len 22]
            if not quotaOf[address(msg.sender)].field_0:
                offeredOf[address(msg.sender)].field_0 = 0
                if sub_f0809455 < sub_f0809455:
                    revert with 0, 'SafeMath: addition overflow'
                require ext_code.size(tokenAddress)
                staticcall tokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if sub_f0809455 > ext_call.return_data[0]:
                    revert with 0, 'Quota is full'
                emit Offer(quotaOf[address(msg.sender)].field_0, 0, sub_f0809455, msg.sender);
            else:
                require quotaOf[address(msg.sender)].field_0
                if quotaOf[address(msg.sender)].field_0 * ratio / quotaOf[address(msg.sender)].field_0 != ratio:
                    revert with 0, 
                                32,
                                33,
                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[ceil32(return_data.size) + 330 len 31]
                offeredOf[address(msg.sender)].field_0 = quotaOf[address(msg.sender)].field_0 * ratio / 10^18
                if sub_f0809455 + (quotaOf[address(msg.sender)].field_0 * ratio / 10^18) < sub_f0809455:
                    revert with 0, 'SafeMath: addition overflow'
                sub_f0809455 += quotaOf[address(msg.sender)].field_0 * ratio / 10^18
                require ext_code.size(tokenAddress)
                staticcall tokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if sub_f0809455 > ext_call.return_data[0]:
                    revert with 0, 'Quota is full'
                emit Offer(quotaOf[address(msg.sender)].field_0, quotaOf[address(msg.sender)].field_0 * ratio / 10^18, sub_f0809455, msg.sender);
}



}
