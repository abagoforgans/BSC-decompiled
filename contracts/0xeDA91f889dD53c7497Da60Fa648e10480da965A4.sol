contract main {




// =====================  Runtime code  =====================


#
#  - settle()
#  - settle(uint256 arg1)
#  - settle_(address arg1, uint256 arg2)
#
uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 stor106;
uint128 stor151; offset 160
address factoryAddress;
uint256 stor151;
uint32 stor152;
address creatorAddress;
address collateralAddress;
address underlyingAddress;
uint256 strikePrice;
uint256 expiry;

function creator() payable {
    return address(creatorAddress)
}

function name() payable {
    return name[0 len name.length]
}

function totalSupply() payable {
    return totalSupply
}

function decimals() payable {
    return uint8(decimals)
}

function underlying() payable {
    return underlyingAddress
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function symbol() payable {
    return symbol[0 len symbol.length].field_0
}

function factory() payable {
    return factoryAddress
}

function strikePrice() payable {
    return strikePrice
}

function collateral() payable {
    return collateralAddress
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function expiry() payable {
    return expiry
}

function _fallback() payable {
    revert
}

function spellNameAndSymbol(address arg1, address arg2, uint256 arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    return 64, 128, 32, 'Helmet.Insure Short Option Token', 5, 0
}

function mint_(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if factoryAddress != msg.sender:
        revert with 0, 'Only Factory'
    if not arg1:
        revert with 0, 'ERC20: mint to the zero address'
    if arg2 + totalSupply < totalSupply:
        revert with 0, 'SafeMath: addition overflow'
    totalSupply += arg2
    if arg2 + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, 0, arg1);
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function setNameAndSymbol(string arg1, string arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    require ext_code.size(factoryAddress)
    staticcall factoryAddress.governor() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require msg.sender == ext_call.return_data[12 len 20]
    name[] = Array(len=arg1.length, data=arg1[all])
    symbol[].field_0 = Array(len=arg2.length, data=arg2[all])
}

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 > allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 
                    32,
                    37,
                    0x6445524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572,
                    mem[165 len 27],
                    mem[219 len 5]
    if not msg.sender:
        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[296 len 28]
    if not arg1:
        revert with 0, 32, 34, 0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[294 len 30]
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 + allowance[address(msg.sender)][address(arg1)] < allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((arg2 + allowance[address(msg.sender)][address(arg1)]), msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                    mem[201 len 27]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[199 len 29]
    if arg2 > balanceOf[address(msg.sender)]:
        revert with 0, 
                    32,
                    38,
                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                    mem[166 len 26],
                    mem[218 len 6]
    balanceOf[address(msg.sender)] -= arg2
    if arg2 + balanceOf[arg1] < balanceOf[arg1]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function calcFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(factoryAddress)
    staticcall factoryAddress.getConfig(bytes32 rg1) with:
            gas gas_remaining wei
           args ('feeRate' << 200)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(factoryAddress)
    staticcall factoryAddress.getConfig(bytes32 rg1) with:
            gas gas_remaining wei
           args 0x666565526563697069656e740000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return ext_call.return_data[12 len 20], 0
    if not ext_call.return_data[12 len 20]:
        return ext_call.return_data[12 len 20], 0
    if not arg1:
        return address(ext_call.return_data[0]), 0
    if ext_call.return_data[0] * arg1 / arg1 != ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    return address(ext_call.return_data[0]), ext_call.return_data[0] * arg1 / 10^18
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                    mem[201 len 27]
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[199 len 29]
    if arg3 > balanceOf[address(arg1)]:
        revert with 0, 
                    32,
                    38,
                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                    mem[166 len 26],
                    mem[218 len 6]
    balanceOf[address(arg1)] -= arg3
    if arg3 + balanceOf[arg2] < balanceOf[arg2]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    emit Transfer(arg3, arg1, arg2);
    if arg3 > allowance[address(arg1)][address(msg.sender)]:
        revert with 0, 
                    32,
                    40,
                    0x7745524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                    mem[264 len 24],
                    mem[312 len 8]
    if not arg1:
        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
    if not msg.sender:
        revert with 0, 32, 34, 0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    return 1
}

function burn_(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if factoryAddress != msg.sender:
        revert with 0, 'Only Factory'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6445524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                    mem[197 len 31]
    if arg2 > balanceOf[address(arg1)]:
        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[162 len 30], mem[222 len 2]
    balanceOf[address(arg1)] -= arg2
    if arg2 > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow'
    totalSupply -= arg2
    emit Transfer(arg2, arg1, 0);
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(collateralAddress):
        revert with 0, 'SafeERC20: call to non-contract'
    if not ext_code.hash(collateralAddress):
        revert with 0, 'SafeERC20: call to non-contract'
    mem[356 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, Mask(224, 32, arg2) >> 32
    call collateralAddress with:
         gas gas_remaining wei
        args Mask(224, 32, arg2) << 224, mem[420 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
    else:
        mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[388]:
                revert with 0, 
                            32,
                            42,
                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 467 len 22]
}

function initialize(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5) payable {
    require calldata.size - 4 >= 160
    if uint8(stor0.field_8):
        mem[128] = 'Helmet.Insure Short Option Token'
        mem[160] = 5
    else:
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            46,
                            0x65436f6e747261637420696e7374616e63652068617320616c7265616479206265656e20696e697469616c697a65,
                            mem[210 len 18]
        if uint8(stor0.field_8):
            mem[128] = 'Helmet.Insure Short Option Token'
            mem[160] = 5
        else:
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            mem[128] = 'Helmet.Insure Short Option Token'
            mem[160] = 5
            if ext_code.size(this.address):
                if uint8(stor0.field_0):
                    revert with 0, 
                                32,
                                46,
                                0x65436f6e747261637420696e7374616e63652068617320616c7265616479206265656e20696e697469616c697a65,
                                mem[338 len 18]
            if not uint8(stor0.field_8):
                uint8(stor0.field_0) = 1
                uint8(stor0.field_8) = 1
                Mask(248, 0, stor0.field_8) = 0
                if ext_code.size(this.address):
                    if uint8(stor0.field_0):
                        revert with 0, 
                                    32,
                                    46,
                                    0x65436f6e747261637420696e7374616e63652068617320616c7265616479206265656e20696e697469616c697a65,
                                    mem[338 len 18]
                if not uint8(stor0.field_8):
                    uint8(stor0.field_0) = 1
                    uint8(stor0.field_8) = 1
                    Mask(248, 0, stor0.field_8) = 0
                    uint8(stor0.field_8) = 0
                    if ext_code.size(this.address):
                        if uint8(stor0.field_0):
                            revert with 0, 
                                        32,
                                        46,
                                        0x65436f6e747261637420696e7374616e63652068617320616c7265616479206265656e20696e697469616c697a65,
                                        mem[338 len 18]
                    if not uint8(stor0.field_8):
                        uint8(stor0.field_0) = 1
                        uint8(stor0.field_8) = 1
                        Mask(248, 0, stor0.field_8) = 0
    name.length = 65
    s = 0
    idx = 128
    while 160 > idx:
        name[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 1
    while name.length + 31 / 32 > idx:
        name[idx] = 0
        idx = idx + 1
        continue 
    bool(symbol.length) = 0
    symbol.length.field_1 = 5
    symbol.length.field_216 = 358234419828
    idx = 0
    while symbol.length + 31 / 32 > idx:
        symbol[idx].field_0 = 0
        idx = idx + 1
        continue 
    uint8(decimals) = 18
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
        uint8(stor0.field_8) = 0
    require ext_code.size(arg2)
    staticcall arg2.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor106) = ext_call.return_data[31 len 1] or Mask(248, 8, uint256(stor106))
    uint256(stor151.field_0) = Mask(96, 0, stor151.field_160)
    address(creatorAddress) = arg1
    collateralAddress = arg2
    underlyingAddress = arg3
    strikePrice = arg4
    expiry = arg5
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
}

function exercise_(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if factoryAddress != msg.sender:
        revert with 0, 'Only Factory'
    require ext_code.size(factoryAddress)
    staticcall factoryAddress.getConfig(bytes32 rg1) with:
            gas gas_remaining wei
           args ('feeRate' << 200)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(factoryAddress)
    staticcall factoryAddress.getConfig(bytes32 rg1) with:
            gas gas_remaining wei
           args 0x666565526563697069656e740000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if 0 > arg2:
            revert with 0, 'SafeMath: subtraction overflow'
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(collateralAddress):
            revert with 0, 'SafeERC20: call to non-contract'
        if not ext_code.hash(collateralAddress):
            revert with 0, 'SafeERC20: call to non-contract'
        mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, Mask(224, 32, arg2) >> 32
        call collateralAddress with:
             gas gas_remaining wei
            args Mask(224, 32, arg2) << 224, mem[324 len 4]
        if not return_data.size:
            require not ext_call.success
            revert with 0, 'SafeERC20: low-level call failed'
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
        return arg2, 0
    if not ext_call.return_data[12 len 20]:
        if 0 > arg2:
            revert with 0, 'SafeMath: subtraction overflow'
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(collateralAddress):
            revert with 0, 'SafeERC20: call to non-contract'
        if not ext_code.hash(collateralAddress):
            revert with 0, 'SafeERC20: call to non-contract'
        mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, Mask(224, 32, arg2) >> 32
        call collateralAddress with:
             gas gas_remaining wei
            args Mask(224, 32, arg2) << 224, mem[324 len 4]
        if not return_data.size:
            require not ext_call.success
            revert with 0, 'SafeERC20: low-level call failed'
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
        return arg2, 0
    if not arg2:
        if 0 > arg2:
            revert with 0, 'SafeMath: subtraction overflow'
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(collateralAddress):
            revert with 0, 'SafeERC20: call to non-contract'
        if not ext_code.hash(collateralAddress):
            revert with 0, 'SafeERC20: call to non-contract'
        mem[324 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, Mask(224, 32, arg2) >> 32
        call collateralAddress with:
             gas gas_remaining wei
            args Mask(224, 32, arg2) << 224, mem[388 len 4]
        if not return_data.size:
            require not ext_call.success
            revert with 0, 'SafeERC20: low-level call failed'
        mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[356]:
                revert with 0, 
                            32,
                            42,
                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 435 len 22]
        return arg2, 0
    if ext_call.return_data[0] * arg2 / arg2 != ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not address(ext_call.return_data[0]):
        if ext_call.return_data[0] * arg2 / 10^18 > arg2:
            revert with 0, 'SafeMath: subtraction overflow'
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(collateralAddress):
            revert with 0, 'SafeERC20: call to non-contract'
        if not ext_code.hash(collateralAddress):
            revert with 0, 'SafeERC20: call to non-contract'
        mem[324 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, Mask(224, 32, arg2 - (ext_call.return_data[0] * arg2 / 10^18)) >> 32
        call collateralAddress with:
             gas gas_remaining wei
            args Mask(224, 32, arg2 - (ext_call.return_data[0] * arg2 / 10^18)) << 224, mem[388 len 4]
        if not return_data.size:
            require not ext_call.success
            revert with 0, 'SafeERC20: low-level call failed'
        mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[356]:
                revert with 0, 
                            32,
                            42,
                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 435 len 22]
        return arg2 - (ext_call.return_data[0] * arg2 / 10^18), ext_call.return_data[0] * arg2 / 10^18
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(collateralAddress):
        revert with 0, 'SafeERC20: call to non-contract'
    if not ext_code.hash(collateralAddress):
        revert with 0, 'SafeERC20: call to non-contract'
    if ext_call.return_data[0] * arg2 / 10^18 <= 0:
        mem[324 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, Mask(224, 32, arg2 - (ext_call.return_data[0] * arg2 / 10^18)) >> 32
        call collateralAddress with:
             gas gas_remaining wei
            args Mask(224, 32, arg2 - (ext_call.return_data[0] * arg2 / 10^18)) << 224, mem[388 len 4]
        if not return_data.size:
            require not ext_call.success
            revert with 0, 'SafeERC20: low-level call failed'
        mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[356]:
                revert with 0, 
                            32,
                            42,
                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 435 len 22]
        return arg2 - (ext_call.return_data[0] * arg2 / 10^18), ext_call.return_data[0] * arg2 / 10^18
    mem[260 len 64] = unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, Mask(224, 32, ext_call.return_data[0] * arg2 / 10^18) >> 32
    call collateralAddress with:
         gas gas_remaining wei
        args Mask(224, 32, ext_call.return_data[0] * arg2 / 10^18) << 224, mem[324 len 4]
    if not return_data.size:
        require not ext_call.success
        revert with 0, 'SafeERC20: low-level call failed'
    mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        revert with 0, 'SafeERC20: low-level call failed'
    if not return_data.size:
        if ext_call.return_data[0] * arg2 / 10^18 > arg2:
            revert with 0, 'SafeMath: subtraction overflow'
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(collateralAddress):
            revert with 0, 'SafeERC20: call to non-contract'
        if not ext_code.hash(collateralAddress):
            revert with 0, 'SafeERC20: call to non-contract'
        mem[ceil32(return_data.size) + 425 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, Mask(224, 32, arg2 - (ext_call.return_data[0] * arg2 / 10^18)) >> 32
        call collateralAddress with:
             gas gas_remaining wei
            args Mask(224, 32, arg2 - (ext_call.return_data[0] * arg2 / 10^18)) << 224, mem[ceil32(return_data.size) + 489 len 4]
        if not return_data.size:
            require not ext_call.success
            revert with 0, 'SafeERC20: low-level call failed'
        mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[ceil32(return_data.size) + 457]:
                revert with 0, 
                            32,
                            42,
                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[(2 * ceil32(return_data.size)) + 536 len 22]
        return arg2 - (ext_call.return_data[0] * arg2 / 10^18), ext_call.return_data[0] * arg2 / 10^18
    require return_data.size >= 32
    if not mem[292]:
        revert with 0, 
                    32,
                    42,
                    0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                    mem[ceil32(return_data.size) + 371 len 22]
    if ext_call.return_data[0] * arg2 / 10^18 > arg2:
        revert with 0, 'SafeMath: subtraction overflow'
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(collateralAddress):
        revert with 0, 'SafeERC20: call to non-contract'
    if not ext_code.hash(collateralAddress):
        revert with 0, 'SafeERC20: call to non-contract'
    mem[ceil32(return_data.size) + 425 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, Mask(224, 32, arg2 - (ext_call.return_data[0] * arg2 / 10^18)) >> 32
    mem[ceil32(return_data.size) + 517 len 4] = Mask(32, 64, arg2 - (ext_call.return_data[0] * arg2 / 10^18)) >> 64
    call collateralAddress with:
         gas gas_remaining wei
        args Mask(224, 32, arg2 - (ext_call.return_data[0] * arg2 / 10^18)) << 224, mem[ceil32(return_data.size) + 489 len 4]
    if not return_data.size:
        require not ext_call.success
        revert with 0, 'SafeERC20: low-level call failed'
    mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        revert with 0, 
                    'SafeERC20: low-level call failed',
                    mem[(2 * ceil32(return_data.size)) + 526 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
    if return_data.size:
        require return_data.size >= 32
        if not mem[ceil32(return_data.size) + 457]:
            revert with 0, 
                        32,
                        42,
                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[(2 * ceil32(return_data.size)) + 536 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
    return arg2 - (ext_call.return_data[0] * arg2 / 10^18), 
           ext_call.return_data[0] * arg2 / 10^18,
           mem[(2 * ceil32(return_data.size)) + 490 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
}

function settleable(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(collateralAddress)
    staticcall collateralAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(underlyingAddress)
    staticcall underlyingAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if block.timestamp > expiry:
        if arg1 <= totalSupply:
            if not ext_call.return_data[0]:
                if not totalSupply:
                    revert with 0, 'SafeMath: division by zero'
                if not ext_call.return_data[0]:
                    if not totalSupply:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_code.size(factoryAddress)
                    staticcall factoryAddress.getConfig(bytes32 rg1) with:
                            gas gas_remaining wei
                           args ('feeRate' << 200)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(factoryAddress)
                    staticcall factoryAddress.getConfig(bytes32 rg1) with:
                            gas gas_remaining wei
                           args 0x666565526563697069656e740000000000000000000000000000000000000000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        if 0 > 0 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return arg1, 0 / totalSupply, 0, 0 / totalSupply
                    if not ext_call.return_data[12 len 20]:
                        if 0 > 0 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return arg1, 0 / totalSupply, 0, 0 / totalSupply
                    if not 0 / totalSupply:
                        if 0 > 0 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return arg1, 0 / totalSupply, 0, 0 / totalSupply
                    if ext_call.return_data[0] * 0 / totalSupply / 0 / totalSupply != ext_call.return_data[0]:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                    if ext_call.return_data[0] * 0 / totalSupply / 10^18 > 0 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return arg1, 
                           (0 / totalSupply) - (ext_call.return_data[0] * 0 / totalSupply / 10^18),
                           ext_call.return_data[0] * 0 / totalSupply / 10^18,
                           0 / totalSupply
                if arg1 * ext_call.return_data[0] / ext_call.return_data[0] != arg1:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if not totalSupply:
                    revert with 0, 'SafeMath: division by zero'
                require ext_code.size(factoryAddress)
                staticcall factoryAddress.getConfig(bytes32 rg1) with:
                        gas gas_remaining wei
                       args ('feeRate' << 200)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(factoryAddress)
                staticcall factoryAddress.getConfig(bytes32 rg1) with:
                        gas gas_remaining wei
                       args 0x666565526563697069656e740000000000000000000000000000000000000000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if 0 > 0 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return arg1, 0 / totalSupply, 0, arg1 * ext_call.return_data[0] / totalSupply
                if not ext_call.return_data[12 len 20]:
                    if 0 > 0 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return arg1, 0 / totalSupply, 0, arg1 * ext_call.return_data[0] / totalSupply
                if not 0 / totalSupply:
                    if 0 > 0 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return arg1, 0 / totalSupply, 0, arg1 * ext_call.return_data[0] / totalSupply
                if ext_call.return_data[0] * 0 / totalSupply / 0 / totalSupply != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                if ext_call.return_data[0] * 0 / totalSupply / 10^18 > 0 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                return arg1, 
                       (0 / totalSupply) - (ext_call.return_data[0] * 0 / totalSupply / 10^18),
                       ext_call.return_data[0] * 0 / totalSupply / 10^18,
                       arg1 * ext_call.return_data[0] / totalSupply
            if arg1 * ext_call.return_data[0] / ext_call.return_data[0] != arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero'
            if not ext_call.return_data[0]:
                if not totalSupply:
                    revert with 0, 'SafeMath: division by zero'
                require ext_code.size(factoryAddress)
                staticcall factoryAddress.getConfig(bytes32 rg1) with:
                        gas gas_remaining wei
                       args ('feeRate' << 200)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(factoryAddress)
                staticcall factoryAddress.getConfig(bytes32 rg1) with:
                        gas gas_remaining wei
                       args 0x666565526563697069656e740000000000000000000000000000000000000000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if 0 > arg1 * ext_call.return_data[0] / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return arg1, arg1 * ext_call.return_data[0] / totalSupply, 0, 0 / totalSupply
                if not ext_call.return_data[12 len 20]:
                    if 0 > arg1 * ext_call.return_data[0] / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return arg1, arg1 * ext_call.return_data[0] / totalSupply, 0, 0 / totalSupply
                if not arg1 * ext_call.return_data[0] / totalSupply:
                    if 0 > arg1 * ext_call.return_data[0] / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return arg1, arg1 * ext_call.return_data[0] / totalSupply, 0, 0 / totalSupply
                if ext_call.return_data[0] * arg1 * ext_call.return_data[0] / totalSupply / arg1 * ext_call.return_data[0] / totalSupply != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                if ext_call.return_data[0] * arg1 * ext_call.return_data[0] / totalSupply / 10^18 > arg1 * ext_call.return_data[0] / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                return arg1, 
                       (arg1 * ext_call.return_data[0] / totalSupply) - (ext_call.return_data[0] * arg1 * ext_call.return_data[0] / totalSupply / 10^18),
                       ext_call.return_data[0] * arg1 * ext_call.return_data[0] / totalSupply / 10^18,
                       0 / totalSupply
            if arg1 * ext_call.return_data[0] / ext_call.return_data[0] != arg1:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero'
            require ext_code.size(factoryAddress)
            staticcall factoryAddress.getConfig(bytes32 rg1) with:
                    gas gas_remaining wei
                   args ('feeRate' << 200)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(factoryAddress)
            staticcall factoryAddress.getConfig(bytes32 rg1) with:
                    gas gas_remaining wei
                   args 0x666565526563697069656e740000000000000000000000000000000000000000
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if 0 > arg1 * ext_call.return_data[0] / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                return arg1, arg1 * ext_call.return_data[0] / totalSupply, 0, arg1 * ext_call.return_data[0] / totalSupply
            if not ext_call.return_data[12 len 20]:
                if 0 > arg1 * ext_call.return_data[0] / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                return arg1, arg1 * ext_call.return_data[0] / totalSupply, 0, arg1 * ext_call.return_data[0] / totalSupply
            if not arg1 * ext_call.return_data[0] / totalSupply:
                if 0 > arg1 * ext_call.return_data[0] / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                return arg1, arg1 * ext_call.return_data[0] / totalSupply, 0, arg1 * ext_call.return_data[0] / totalSupply
            if ext_call.return_data[0] * arg1 * ext_call.return_data[0] / totalSupply / arg1 * ext_call.return_data[0] / totalSupply != ext_call.return_data[0]:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if ext_call.return_data[0] * arg1 * ext_call.return_data[0] / totalSupply / 10^18 > arg1 * ext_call.return_data[0] / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            return arg1, 
                   (arg1 * ext_call.return_data[0] / totalSupply) - (ext_call.return_data[0] * arg1 * ext_call.return_data[0] / totalSupply / 10^18),
                   ext_call.return_data[0] * arg1 * ext_call.return_data[0] / totalSupply / 10^18,
                   arg1 * ext_call.return_data[0] / totalSupply
        if not ext_call.return_data[0]:
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero'
            if not ext_call.return_data[0]:
                if not totalSupply:
                    revert with 0, 'SafeMath: division by zero'
                require ext_code.size(factoryAddress)
                staticcall factoryAddress.getConfig(bytes32 rg1) with:
                        gas gas_remaining wei
                       args ('feeRate' << 200)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(factoryAddress)
                staticcall factoryAddress.getConfig(bytes32 rg1) with:
                        gas gas_remaining wei
                       args 0x666565526563697069656e740000000000000000000000000000000000000000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if 0 > 0 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return totalSupply, 0 / totalSupply, 0, 0 / totalSupply
                if not ext_call.return_data[12 len 20]:
                    if 0 > 0 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return totalSupply, 0 / totalSupply, 0, 0 / totalSupply
                if not 0 / totalSupply:
                    if 0 > 0 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return totalSupply, 0 / totalSupply, 0, 0 / totalSupply
                if ext_call.return_data[0] * 0 / totalSupply / 0 / totalSupply != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                if ext_call.return_data[0] * 0 / totalSupply / 10^18 > 0 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                return totalSupply, 
                       (0 / totalSupply) - (ext_call.return_data[0] * 0 / totalSupply / 10^18),
                       ext_call.return_data[0] * 0 / totalSupply / 10^18,
                       0 / totalSupply
            if totalSupply * ext_call.return_data[0] / ext_call.return_data[0] != totalSupply:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero'
            require ext_code.size(factoryAddress)
            staticcall factoryAddress.getConfig(bytes32 rg1) with:
                    gas gas_remaining wei
                   args ('feeRate' << 200)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(factoryAddress)
            staticcall factoryAddress.getConfig(bytes32 rg1) with:
                    gas gas_remaining wei
                   args 0x666565526563697069656e740000000000000000000000000000000000000000
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if 0 > 0 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                return totalSupply, 0 / totalSupply, 0, totalSupply * ext_call.return_data[0] / totalSupply
            if not ext_call.return_data[12 len 20]:
                if 0 > 0 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                return totalSupply, 0 / totalSupply, 0, totalSupply * ext_call.return_data[0] / totalSupply
            if not 0 / totalSupply:
                if 0 > 0 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                return totalSupply, 0 / totalSupply, 0, totalSupply * ext_call.return_data[0] / totalSupply
            if ext_call.return_data[0] * 0 / totalSupply / 0 / totalSupply != ext_call.return_data[0]:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if ext_call.return_data[0] * 0 / totalSupply / 10^18 > 0 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            return totalSupply, 
                   (0 / totalSupply) - (ext_call.return_data[0] * 0 / totalSupply / 10^18),
                   ext_call.return_data[0] * 0 / totalSupply / 10^18,
                   totalSupply * ext_call.return_data[0] / totalSupply
        if totalSupply * ext_call.return_data[0] / ext_call.return_data[0] != totalSupply:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not totalSupply:
            revert with 0, 'SafeMath: division by zero'
        if not ext_call.return_data[0]:
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero'
            require ext_code.size(factoryAddress)
            staticcall factoryAddress.getConfig(bytes32 rg1) with:
                    gas gas_remaining wei
                   args ('feeRate' << 200)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(factoryAddress)
            staticcall factoryAddress.getConfig(bytes32 rg1) with:
                    gas gas_remaining wei
                   args 0x666565526563697069656e740000000000000000000000000000000000000000
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if 0 > totalSupply * ext_call.return_data[0] / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                return totalSupply, totalSupply * ext_call.return_data[0] / totalSupply, 0, 0 / totalSupply
            if not ext_call.return_data[12 len 20]:
                if 0 > totalSupply * ext_call.return_data[0] / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                return totalSupply, totalSupply * ext_call.return_data[0] / totalSupply, 0, 0 / totalSupply
            if not totalSupply * ext_call.return_data[0] / totalSupply:
                if 0 > totalSupply * ext_call.return_data[0] / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                return totalSupply, totalSupply * ext_call.return_data[0] / totalSupply, 0, 0 / totalSupply
            if ext_call.return_data[0] * totalSupply * ext_call.return_data[0] / totalSupply / totalSupply * ext_call.return_data[0] / totalSupply != ext_call.return_data[0]:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if ext_call.return_data[0] * totalSupply * ext_call.return_data[0] / totalSupply / 10^18 > totalSupply * ext_call.return_data[0] / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            return totalSupply, 
                   (totalSupply * ext_call.return_data[0] / totalSupply) - (ext_call.return_data[0] * totalSupply * ext_call.return_data[0] / totalSupply / 10^18),
                   ext_call.return_data[0] * totalSupply * ext_call.return_data[0] / totalSupply / 10^18,
                   0 / totalSupply
        if totalSupply * ext_call.return_data[0] / ext_call.return_data[0] != totalSupply:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not totalSupply:
            revert with 0, 'SafeMath: division by zero'
        require ext_code.size(factoryAddress)
        staticcall factoryAddress.getConfig(bytes32 rg1) with:
                gas gas_remaining wei
               args ('feeRate' << 200)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(factoryAddress)
        staticcall factoryAddress.getConfig(bytes32 rg1) with:
                gas gas_remaining wei
               args 0x666565526563697069656e740000000000000000000000000000000000000000
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if 0 > totalSupply * ext_call.return_data[0] / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            return totalSupply, 
                   totalSupply * ext_call.return_data[0] / totalSupply,
                   0,
                   totalSupply * ext_call.return_data[0] / totalSupply
        if not ext_call.return_data[12 len 20]:
            if 0 > totalSupply * ext_call.return_data[0] / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            return totalSupply, 
                   totalSupply * ext_call.return_data[0] / totalSupply,
                   0,
                   totalSupply * ext_call.return_data[0] / totalSupply
        if not totalSupply * ext_call.return_data[0] / totalSupply:
            if 0 > totalSupply * ext_call.return_data[0] / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            return totalSupply, 
                   totalSupply * ext_call.return_data[0] / totalSupply,
                   0,
                   totalSupply * ext_call.return_data[0] / totalSupply
        if ext_call.return_data[0] * totalSupply * ext_call.return_data[0] / totalSupply / totalSupply * ext_call.return_data[0] / totalSupply != ext_call.return_data[0]:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if ext_call.return_data[0] * totalSupply * ext_call.return_data[0] / totalSupply / 10^18 > totalSupply * ext_call.return_data[0] / totalSupply:
            revert with 0, 'SafeMath: subtraction overflow'
        return totalSupply, 
               (totalSupply * ext_call.return_data[0] / totalSupply) - (ext_call.return_data[0] * totalSupply * ext_call.return_data[0] / totalSupply / 10^18),
               ext_call.return_data[0] * totalSupply * ext_call.return_data[0] / totalSupply / 10^18,
               totalSupply * ext_call.return_data[0] / totalSupply
    require ext_code.size(factoryAddress)
    staticcall factoryAddress.0xf77de542 with:
            gas gas_remaining wei
           args 0, uint32(stor152), collateralAddress, underlyingAddress, strikePrice, expiry
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    if ext_call.return_data[0] > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow'
    if totalSupply < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    if not totalSupply - ext_call.return_data[0]:
        return 0
    if not totalSupply - ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero'
    if arg1 <= totalSupply - ext_call.return_data[0]:
        if not ext_call.return_data[0]:
            if not totalSupply - ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            require ext_code.size(factoryAddress)
            staticcall factoryAddress.getConfig(bytes32 rg1) with:
                    gas gas_remaining wei
                   args ('feeRate' << 200)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(factoryAddress)
            staticcall factoryAddress.getConfig(bytes32 rg1) with:
                    gas gas_remaining wei
                   args 0x666565526563697069656e740000000000000000000000000000000000000000
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if 0 > 0 / totalSupply - ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                return arg1, 0 / totalSupply - ext_call.return_data[0], 0, 0 / totalSupply - ext_call.return_data[0]
            if not ext_call.return_data[12 len 20]:
                if 0 > 0 / totalSupply - ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                return arg1, 0 / totalSupply - ext_call.return_data[0], 0, 0 / totalSupply - ext_call.return_data[0]
            if not 0 / totalSupply - ext_call.return_data[0]:
                if 0 > 0 / totalSupply - ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                return arg1, 0 / totalSupply - ext_call.return_data[0], 0, 0 / totalSupply - ext_call.return_data[0]
            if ext_call.return_data[0] * 0 / totalSupply - ext_call.return_data[0] / 0 / totalSupply - ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if ext_call.return_data[0] * 0 / totalSupply - ext_call.return_data[0] / 10^18 > 0 / totalSupply - ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            return arg1, 
                   (0 / totalSupply - ext_call.return_data[0]) - (ext_call.return_data[0] * 0 / totalSupply - ext_call.return_data[0] / 10^18),
                   ext_call.return_data[0] * 0 / totalSupply - ext_call.return_data[0] / 10^18,
                   0 / totalSupply - ext_call.return_data[0]
        if arg1 * ext_call.return_data[0] / ext_call.return_data[0] != arg1:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if not totalSupply - ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        require ext_code.size(factoryAddress)
        staticcall factoryAddress.getConfig(bytes32 rg1) with:
                gas gas_remaining wei
               args ('feeRate' << 200)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(factoryAddress)
        staticcall factoryAddress.getConfig(bytes32 rg1) with:
                gas gas_remaining wei
               args 0x666565526563697069656e740000000000000000000000000000000000000000
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if 0 > 0 / totalSupply - ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            return arg1, 
                   0 / totalSupply - ext_call.return_data[0],
                   0,
                   arg1 * ext_call.return_data[0] / totalSupply - ext_call.return_data[0]
        if not ext_call.return_data[12 len 20]:
            if 0 > 0 / totalSupply - ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            return arg1, 
                   0 / totalSupply - ext_call.return_data[0],
                   0,
                   arg1 * ext_call.return_data[0] / totalSupply - ext_call.return_data[0]
        if not 0 / totalSupply - ext_call.return_data[0]:
            if 0 > 0 / totalSupply - ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            return arg1, 
                   0 / totalSupply - ext_call.return_data[0],
                   0,
                   arg1 * ext_call.return_data[0] / totalSupply - ext_call.return_data[0]
        if ext_call.return_data[0] * 0 / totalSupply - ext_call.return_data[0] / 0 / totalSupply - ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        if ext_call.return_data[0] * 0 / totalSupply - ext_call.return_data[0] / 10^18 > 0 / totalSupply - ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        return arg1, 
               (0 / totalSupply - ext_call.return_data[0]) - (ext_call.return_data[0] * 0 / totalSupply - ext_call.return_data[0] / 10^18),
               ext_call.return_data[0] * 0 / totalSupply - ext_call.return_data[0] / 10^18,
               arg1 * ext_call.return_data[0] / totalSupply - ext_call.return_data[0]
    if not ext_call.return_data[0]:
        if not totalSupply - ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        require ext_code.size(factoryAddress)
        staticcall factoryAddress.getConfig(bytes32 rg1) with:
                gas gas_remaining wei
               args ('feeRate' << 200)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(factoryAddress)
        staticcall factoryAddress.getConfig(bytes32 rg1) with:
                gas gas_remaining wei
               args 0x666565526563697069656e740000000000000000000000000000000000000000
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if 0 > 0 / totalSupply - ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            return totalSupply - ext_call.return_data[0], 
                   0 / totalSupply - ext_call.return_data[0],
                   0,
                   0 / totalSupply - ext_call.return_data[0]
        if not ext_call.return_data[12 len 20]:
            if 0 > 0 / totalSupply - ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            return totalSupply - ext_call.return_data[0], 
                   0 / totalSupply - ext_call.return_data[0],
                   0,
                   0 / totalSupply - ext_call.return_data[0]
        if not 0 / totalSupply - ext_call.return_data[0]:
            if 0 > 0 / totalSupply - ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            return totalSupply - ext_call.return_data[0], 
                   0 / totalSupply - ext_call.return_data[0],
                   0,
                   0 / totalSupply - ext_call.return_data[0]
        if ext_call.return_data[0] * 0 / totalSupply - ext_call.return_data[0] / 0 / totalSupply - ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        if ext_call.return_data[0] * 0 / totalSupply - ext_call.return_data[0] / 10^18 > 0 / totalSupply - ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        return totalSupply - ext_call.return_data[0], 
               (0 / totalSupply - ext_call.return_data[0]) - (ext_call.return_data[0] * 0 / totalSupply - ext_call.return_data[0] / 10^18),
               ext_call.return_data[0] * 0 / totalSupply - ext_call.return_data[0] / 10^18,
               0 / totalSupply - ext_call.return_data[0]
    if (totalSupply * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] != totalSupply - ext_call.return_data[0]:
        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
    if not totalSupply - ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero'
    require ext_code.size(factoryAddress)
    staticcall factoryAddress.getConfig(bytes32 rg1) with:
            gas gas_remaining wei
           args ('feeRate' << 200)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(factoryAddress)
    staticcall factoryAddress.getConfig(bytes32 rg1) with:
            gas gas_remaining wei
           args 0x666565526563697069656e740000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if 0 > 0 / totalSupply - ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        return totalSupply - ext_call.return_data[0], 
               0 / totalSupply - ext_call.return_data[0],
               0,
               (totalSupply * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / totalSupply - ext_call.return_data[0]
    if not ext_call.return_data[12 len 20]:
        if 0 > 0 / totalSupply - ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        return totalSupply - ext_call.return_data[0], 
               0 / totalSupply - ext_call.return_data[0],
               0,
               (totalSupply * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / totalSupply - ext_call.return_data[0]
    if not 0 / totalSupply - ext_call.return_data[0]:
        if 0 > 0 / totalSupply - ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        return totalSupply - ext_call.return_data[0], 
               0 / totalSupply - ext_call.return_data[0],
               0,
               (totalSupply * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / totalSupply - ext_call.return_data[0]
    if ext_call.return_data[0] * 0 / totalSupply - ext_call.return_data[0] / 0 / totalSupply - ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
    if ext_call.return_data[0] * 0 / totalSupply - ext_call.return_data[0] / 10^18 > 0 / totalSupply - ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    return totalSupply - ext_call.return_data[0], 
           (0 / totalSupply - ext_call.return_data[0]) - (ext_call.return_data[0] * 0 / totalSupply - ext_call.return_data[0] / 10^18),
           ext_call.return_data[0] * 0 / totalSupply - ext_call.return_data[0] / 10^18,
           (totalSupply * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / totalSupply - ext_call.return_data[0]
}

function settleable(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(collateralAddress)
    staticcall collateralAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(underlyingAddress)
    staticcall underlyingAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if block.timestamp > expiry:
        if balanceOf[address(arg1)] <= totalSupply:
            if not ext_call.return_data[0]:
                if not totalSupply:
                    revert with 0, 'SafeMath: division by zero'
                if not ext_call.return_data[0]:
                    if not totalSupply:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_code.size(factoryAddress)
                    staticcall factoryAddress.getConfig(bytes32 rg1) with:
                            gas gas_remaining wei
                           args ('feeRate' << 200)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(factoryAddress)
                    staticcall factoryAddress.getConfig(bytes32 rg1) with:
                            gas gas_remaining wei
                           args 0x666565526563697069656e740000000000000000000000000000000000000000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        if 0 > 0 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return balanceOf[address(arg1)], 0 / totalSupply, 0, 0 / totalSupply
                    if not ext_call.return_data[12 len 20]:
                        if 0 > 0 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return balanceOf[address(arg1)], 0 / totalSupply, 0, 0 / totalSupply
                    if not 0 / totalSupply:
                        if 0 > 0 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return balanceOf[address(arg1)], 0 / totalSupply, 0, 0 / totalSupply
                    if ext_call.return_data[0] * 0 / totalSupply / 0 / totalSupply != ext_call.return_data[0]:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                    if ext_call.return_data[0] * 0 / totalSupply / 10^18 > 0 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return balanceOf[address(arg1)], 
                           (0 / totalSupply) - (ext_call.return_data[0] * 0 / totalSupply / 10^18),
                           ext_call.return_data[0] * 0 / totalSupply / 10^18,
                           0 / totalSupply
                if balanceOf[address(arg1)] * ext_call.return_data[0] / ext_call.return_data[0] != balanceOf[address(arg1)]:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if not totalSupply:
                    revert with 0, 'SafeMath: division by zero'
                require ext_code.size(factoryAddress)
                staticcall factoryAddress.getConfig(bytes32 rg1) with:
                        gas gas_remaining wei
                       args ('feeRate' << 200)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(factoryAddress)
                staticcall factoryAddress.getConfig(bytes32 rg1) with:
                        gas gas_remaining wei
                       args 0x666565526563697069656e740000000000000000000000000000000000000000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if 0 > 0 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return balanceOf[address(arg1)], 0 / totalSupply, 0, balanceOf[address(arg1)] * ext_call.return_data[0] / totalSupply
                if not ext_call.return_data[12 len 20]:
                    if 0 > 0 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return balanceOf[address(arg1)], 0 / totalSupply, 0, balanceOf[address(arg1)] * ext_call.return_data[0] / totalSupply
                if not 0 / totalSupply:
                    if 0 > 0 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return balanceOf[address(arg1)], 0 / totalSupply, 0, balanceOf[address(arg1)] * ext_call.return_data[0] / totalSupply
                if ext_call.return_data[0] * 0 / totalSupply / 0 / totalSupply != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                if ext_call.return_data[0] * 0 / totalSupply / 10^18 > 0 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                return balanceOf[address(arg1)], 
                       (0 / totalSupply) - (ext_call.return_data[0] * 0 / totalSupply / 10^18),
                       ext_call.return_data[0] * 0 / totalSupply / 10^18,
                       balanceOf[address(arg1)] * ext_call.return_data[0] / totalSupply
            if balanceOf[address(arg1)] * ext_call.return_data[0] / ext_call.return_data[0] != balanceOf[address(arg1)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero'
            if not ext_call.return_data[0]:
                if not totalSupply:
                    revert with 0, 'SafeMath: division by zero'
                require ext_code.size(factoryAddress)
                staticcall factoryAddress.getConfig(bytes32 rg1) with:
                        gas gas_remaining wei
                       args ('feeRate' << 200)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(factoryAddress)
                staticcall factoryAddress.getConfig(bytes32 rg1) with:
                        gas gas_remaining wei
                       args 0x666565526563697069656e740000000000000000000000000000000000000000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if 0 > balanceOf[address(arg1)] * ext_call.return_data[0] / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return balanceOf[address(arg1)], balanceOf[address(arg1)] * ext_call.return_data[0] / totalSupply, 0, 0 / totalSupply
                if not ext_call.return_data[12 len 20]:
                    if 0 > balanceOf[address(arg1)] * ext_call.return_data[0] / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return balanceOf[address(arg1)], balanceOf[address(arg1)] * ext_call.return_data[0] / totalSupply, 0, 0 / totalSupply
                if not balanceOf[address(arg1)] * ext_call.return_data[0] / totalSupply:
                    if 0 > balanceOf[address(arg1)] * ext_call.return_data[0] / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return balanceOf[address(arg1)], balanceOf[address(arg1)] * ext_call.return_data[0] / totalSupply, 0, 0 / totalSupply
                if ext_call.return_data[0] * balanceOf[address(arg1)] * ext_call.return_data[0] / totalSupply / balanceOf[address(arg1)] * ext_call.return_data[0] / totalSupply != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                if ext_call.return_data[0] * balanceOf[address(arg1)] * ext_call.return_data[0] / totalSupply / 10^18 > balanceOf[address(arg1)] * ext_call.return_data[0] / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                return balanceOf[address(arg1)], 
                       (balanceOf[address(arg1)] * ext_call.return_data[0] / totalSupply) - (ext_call.return_data[0] * balanceOf[address(arg1)] * ext_call.return_data[0] / totalSupply / 10^18),
                       ext_call.return_data[0] * balanceOf[address(arg1)] * ext_call.return_data[0] / totalSupply / 10^18,
                       0 / totalSupply
            if balanceOf[address(arg1)] * ext_call.return_data[0] / ext_call.return_data[0] != balanceOf[address(arg1)]:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero'
            require ext_code.size(factoryAddress)
            staticcall factoryAddress.getConfig(bytes32 rg1) with:
                    gas gas_remaining wei
                   args ('feeRate' << 200)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(factoryAddress)
            staticcall factoryAddress.getConfig(bytes32 rg1) with:
                    gas gas_remaining wei
                   args 0x666565526563697069656e740000000000000000000000000000000000000000
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if 0 > balanceOf[address(arg1)] * ext_call.return_data[0] / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                return balanceOf[address(arg1)], 
                       balanceOf[address(arg1)] * ext_call.return_data[0] / totalSupply,
                       0,
                       balanceOf[address(arg1)] * ext_call.return_data[0] / totalSupply
            if not ext_call.return_data[12 len 20]:
                if 0 > balanceOf[address(arg1)] * ext_call.return_data[0] / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                return balanceOf[address(arg1)], 
                       balanceOf[address(arg1)] * ext_call.return_data[0] / totalSupply,
                       0,
                       balanceOf[address(arg1)] * ext_call.return_data[0] / totalSupply
            if not balanceOf[address(arg1)] * ext_call.return_data[0] / totalSupply:
                if 0 > balanceOf[address(arg1)] * ext_call.return_data[0] / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                return balanceOf[address(arg1)], 
                       balanceOf[address(arg1)] * ext_call.return_data[0] / totalSupply,
                       0,
                       balanceOf[address(arg1)] * ext_call.return_data[0] / totalSupply
            if ext_call.return_data[0] * balanceOf[address(arg1)] * ext_call.return_data[0] / totalSupply / balanceOf[address(arg1)] * ext_call.return_data[0] / totalSupply != ext_call.return_data[0]:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if ext_call.return_data[0] * balanceOf[address(arg1)] * ext_call.return_data[0] / totalSupply / 10^18 > balanceOf[address(arg1)] * ext_call.return_data[0] / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            return balanceOf[address(arg1)], 
                   (balanceOf[address(arg1)] * ext_call.return_data[0] / totalSupply) - (ext_call.return_data[0] * balanceOf[address(arg1)] * ext_call.return_data[0] / totalSupply / 10^18),
                   ext_call.return_data[0] * balanceOf[address(arg1)] * ext_call.return_data[0] / totalSupply / 10^18,
                   balanceOf[address(arg1)] * ext_call.return_data[0] / totalSupply
        if not ext_call.return_data[0]:
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero'
            if not ext_call.return_data[0]:
                if not totalSupply:
                    revert with 0, 'SafeMath: division by zero'
                require ext_code.size(factoryAddress)
                staticcall factoryAddress.getConfig(bytes32 rg1) with:
                        gas gas_remaining wei
                       args ('feeRate' << 200)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(factoryAddress)
                staticcall factoryAddress.getConfig(bytes32 rg1) with:
                        gas gas_remaining wei
                       args 0x666565526563697069656e740000000000000000000000000000000000000000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if 0 > 0 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return totalSupply, 0 / totalSupply, 0, 0 / totalSupply
                if not ext_call.return_data[12 len 20]:
                    if 0 > 0 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return totalSupply, 0 / totalSupply, 0, 0 / totalSupply
                if not 0 / totalSupply:
                    if 0 > 0 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return totalSupply, 0 / totalSupply, 0, 0 / totalSupply
                if ext_call.return_data[0] * 0 / totalSupply / 0 / totalSupply != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                if ext_call.return_data[0] * 0 / totalSupply / 10^18 > 0 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                return totalSupply, 
                       (0 / totalSupply) - (ext_call.return_data[0] * 0 / totalSupply / 10^18),
                       ext_call.return_data[0] * 0 / totalSupply / 10^18,
                       0 / totalSupply
            if totalSupply * ext_call.return_data[0] / ext_call.return_data[0] != totalSupply:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero'
            require ext_code.size(factoryAddress)
            staticcall factoryAddress.getConfig(bytes32 rg1) with:
                    gas gas_remaining wei
                   args ('feeRate' << 200)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(factoryAddress)
            staticcall factoryAddress.getConfig(bytes32 rg1) with:
                    gas gas_remaining wei
                   args 0x666565526563697069656e740000000000000000000000000000000000000000
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if 0 > 0 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                return totalSupply, 0 / totalSupply, 0, totalSupply * ext_call.return_data[0] / totalSupply
            if not ext_call.return_data[12 len 20]:
                if 0 > 0 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                return totalSupply, 0 / totalSupply, 0, totalSupply * ext_call.return_data[0] / totalSupply
            if not 0 / totalSupply:
                if 0 > 0 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                return totalSupply, 0 / totalSupply, 0, totalSupply * ext_call.return_data[0] / totalSupply
            if ext_call.return_data[0] * 0 / totalSupply / 0 / totalSupply != ext_call.return_data[0]:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if ext_call.return_data[0] * 0 / totalSupply / 10^18 > 0 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            return totalSupply, 
                   (0 / totalSupply) - (ext_call.return_data[0] * 0 / totalSupply / 10^18),
                   ext_call.return_data[0] * 0 / totalSupply / 10^18,
                   totalSupply * ext_call.return_data[0] / totalSupply
        if totalSupply * ext_call.return_data[0] / ext_call.return_data[0] != totalSupply:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not totalSupply:
            revert with 0, 'SafeMath: division by zero'
        if not ext_call.return_data[0]:
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero'
            require ext_code.size(factoryAddress)
            staticcall factoryAddress.getConfig(bytes32 rg1) with:
                    gas gas_remaining wei
                   args ('feeRate' << 200)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(factoryAddress)
            staticcall factoryAddress.getConfig(bytes32 rg1) with:
                    gas gas_remaining wei
                   args 0x666565526563697069656e740000000000000000000000000000000000000000
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if 0 > totalSupply * ext_call.return_data[0] / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                return totalSupply, totalSupply * ext_call.return_data[0] / totalSupply, 0, 0 / totalSupply
            if not ext_call.return_data[12 len 20]:
                if 0 > totalSupply * ext_call.return_data[0] / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                return totalSupply, totalSupply * ext_call.return_data[0] / totalSupply, 0, 0 / totalSupply
            if not totalSupply * ext_call.return_data[0] / totalSupply:
                if 0 > totalSupply * ext_call.return_data[0] / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                return totalSupply, totalSupply * ext_call.return_data[0] / totalSupply, 0, 0 / totalSupply
            if ext_call.return_data[0] * totalSupply * ext_call.return_data[0] / totalSupply / totalSupply * ext_call.return_data[0] / totalSupply != ext_call.return_data[0]:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if ext_call.return_data[0] * totalSupply * ext_call.return_data[0] / totalSupply / 10^18 > totalSupply * ext_call.return_data[0] / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            return totalSupply, 
                   (totalSupply * ext_call.return_data[0] / totalSupply) - (ext_call.return_data[0] * totalSupply * ext_call.return_data[0] / totalSupply / 10^18),
                   ext_call.return_data[0] * totalSupply * ext_call.return_data[0] / totalSupply / 10^18,
                   0 / totalSupply
        if totalSupply * ext_call.return_data[0] / ext_call.return_data[0] != totalSupply:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not totalSupply:
            revert with 0, 'SafeMath: division by zero'
        require ext_code.size(factoryAddress)
        staticcall factoryAddress.getConfig(bytes32 rg1) with:
                gas gas_remaining wei
               args ('feeRate' << 200)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(factoryAddress)
        staticcall factoryAddress.getConfig(bytes32 rg1) with:
                gas gas_remaining wei
               args 0x666565526563697069656e740000000000000000000000000000000000000000
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if 0 > totalSupply * ext_call.return_data[0] / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            return totalSupply, 
                   totalSupply * ext_call.return_data[0] / totalSupply,
                   0,
                   totalSupply * ext_call.return_data[0] / totalSupply
        if not ext_call.return_data[12 len 20]:
            if 0 > totalSupply * ext_call.return_data[0] / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            return totalSupply, 
                   totalSupply * ext_call.return_data[0] / totalSupply,
                   0,
                   totalSupply * ext_call.return_data[0] / totalSupply
        if not totalSupply * ext_call.return_data[0] / totalSupply:
            if 0 > totalSupply * ext_call.return_data[0] / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            return totalSupply, 
                   totalSupply * ext_call.return_data[0] / totalSupply,
                   0,
                   totalSupply * ext_call.return_data[0] / totalSupply
        if ext_call.return_data[0] * totalSupply * ext_call.return_data[0] / totalSupply / totalSupply * ext_call.return_data[0] / totalSupply != ext_call.return_data[0]:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if ext_call.return_data[0] * totalSupply * ext_call.return_data[0] / totalSupply / 10^18 > totalSupply * ext_call.return_data[0] / totalSupply:
            revert with 0, 'SafeMath: subtraction overflow'
        return totalSupply, 
               (totalSupply * ext_call.return_data[0] / totalSupply) - (ext_call.return_data[0] * totalSupply * ext_call.return_data[0] / totalSupply / 10^18),
               ext_call.return_data[0] * totalSupply * ext_call.return_data[0] / totalSupply / 10^18,
               totalSupply * ext_call.return_data[0] / totalSupply
    require ext_code.size(factoryAddress)
    staticcall factoryAddress.0xf77de542 with:
            gas gas_remaining wei
           args 0, uint32(stor152), collateralAddress, underlyingAddress, strikePrice, expiry
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    if ext_call.return_data[0] > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow'
    if totalSupply < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    if not totalSupply - ext_call.return_data[0]:
        return 0
    if not totalSupply - ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero'
    if balanceOf[address(arg1)] <= totalSupply - ext_call.return_data[0]:
        if not ext_call.return_data[0]:
            if not totalSupply - ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            require ext_code.size(factoryAddress)
            staticcall factoryAddress.getConfig(bytes32 rg1) with:
                    gas gas_remaining wei
                   args ('feeRate' << 200)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(factoryAddress)
            staticcall factoryAddress.getConfig(bytes32 rg1) with:
                    gas gas_remaining wei
                   args 0x666565526563697069656e740000000000000000000000000000000000000000
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if 0 > 0 / totalSupply - ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                return balanceOf[address(arg1)], 0 / totalSupply - ext_call.return_data[0], 0, 0 / totalSupply - ext_call.return_data[0]
            if not ext_call.return_data[12 len 20]:
                if 0 > 0 / totalSupply - ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                return balanceOf[address(arg1)], 0 / totalSupply - ext_call.return_data[0], 0, 0 / totalSupply - ext_call.return_data[0]
            if not 0 / totalSupply - ext_call.return_data[0]:
                if 0 > 0 / totalSupply - ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                return balanceOf[address(arg1)], 0 / totalSupply - ext_call.return_data[0], 0, 0 / totalSupply - ext_call.return_data[0]
            if ext_call.return_data[0] * 0 / totalSupply - ext_call.return_data[0] / 0 / totalSupply - ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if ext_call.return_data[0] * 0 / totalSupply - ext_call.return_data[0] / 10^18 > 0 / totalSupply - ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            return balanceOf[address(arg1)], 
                   (0 / totalSupply - ext_call.return_data[0]) - (ext_call.return_data[0] * 0 / totalSupply - ext_call.return_data[0] / 10^18),
                   ext_call.return_data[0] * 0 / totalSupply - ext_call.return_data[0] / 10^18,
                   0 / totalSupply - ext_call.return_data[0]
        if balanceOf[address(arg1)] * ext_call.return_data[0] / ext_call.return_data[0] != balanceOf[address(arg1)]:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if not totalSupply - ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        require ext_code.size(factoryAddress)
        staticcall factoryAddress.getConfig(bytes32 rg1) with:
                gas gas_remaining wei
               args ('feeRate' << 200)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(factoryAddress)
        staticcall factoryAddress.getConfig(bytes32 rg1) with:
                gas gas_remaining wei
               args 0x666565526563697069656e740000000000000000000000000000000000000000
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if 0 > 0 / totalSupply - ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            return balanceOf[address(arg1)], 
                   0 / totalSupply - ext_call.return_data[0],
                   0,
                   balanceOf[address(arg1)] * ext_call.return_data[0] / totalSupply - ext_call.return_data[0]
        if not ext_call.return_data[12 len 20]:
            if 0 > 0 / totalSupply - ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            return balanceOf[address(arg1)], 
                   0 / totalSupply - ext_call.return_data[0],
                   0,
                   balanceOf[address(arg1)] * ext_call.return_data[0] / totalSupply - ext_call.return_data[0]
        if not 0 / totalSupply - ext_call.return_data[0]:
            if 0 > 0 / totalSupply - ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            return balanceOf[address(arg1)], 
                   0 / totalSupply - ext_call.return_data[0],
                   0,
                   balanceOf[address(arg1)] * ext_call.return_data[0] / totalSupply - ext_call.return_data[0]
        if ext_call.return_data[0] * 0 / totalSupply - ext_call.return_data[0] / 0 / totalSupply - ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        if ext_call.return_data[0] * 0 / totalSupply - ext_call.return_data[0] / 10^18 > 0 / totalSupply - ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        return balanceOf[address(arg1)], 
               (0 / totalSupply - ext_call.return_data[0]) - (ext_call.return_data[0] * 0 / totalSupply - ext_call.return_data[0] / 10^18),
               ext_call.return_data[0] * 0 / totalSupply - ext_call.return_data[0] / 10^18,
               balanceOf[address(arg1)] * ext_call.return_data[0] / totalSupply - ext_call.return_data[0]
    if not ext_call.return_data[0]:
        if not totalSupply - ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        require ext_code.size(factoryAddress)
        staticcall factoryAddress.getConfig(bytes32 rg1) with:
                gas gas_remaining wei
               args ('feeRate' << 200)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(factoryAddress)
        staticcall factoryAddress.getConfig(bytes32 rg1) with:
                gas gas_remaining wei
               args 0x666565526563697069656e740000000000000000000000000000000000000000
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if 0 > 0 / totalSupply - ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            return totalSupply - ext_call.return_data[0], 
                   0 / totalSupply - ext_call.return_data[0],
                   0,
                   0 / totalSupply - ext_call.return_data[0]
        if not ext_call.return_data[12 len 20]:
            if 0 > 0 / totalSupply - ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            return totalSupply - ext_call.return_data[0], 
                   0 / totalSupply - ext_call.return_data[0],
                   0,
                   0 / totalSupply - ext_call.return_data[0]
        if not 0 / totalSupply - ext_call.return_data[0]:
            if 0 > 0 / totalSupply - ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            return totalSupply - ext_call.return_data[0], 
                   0 / totalSupply - ext_call.return_data[0],
                   0,
                   0 / totalSupply - ext_call.return_data[0]
        if ext_call.return_data[0] * 0 / totalSupply - ext_call.return_data[0] / 0 / totalSupply - ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        if ext_call.return_data[0] * 0 / totalSupply - ext_call.return_data[0] / 10^18 > 0 / totalSupply - ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        return totalSupply - ext_call.return_data[0], 
               (0 / totalSupply - ext_call.return_data[0]) - (ext_call.return_data[0] * 0 / totalSupply - ext_call.return_data[0] / 10^18),
               ext_call.return_data[0] * 0 / totalSupply - ext_call.return_data[0] / 10^18,
               0 / totalSupply - ext_call.return_data[0]
    if (totalSupply * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] != totalSupply - ext_call.return_data[0]:
        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
    if not totalSupply - ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero'
    require ext_code.size(factoryAddress)
    staticcall factoryAddress.getConfig(bytes32 rg1) with:
            gas gas_remaining wei
           args ('feeRate' << 200)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(factoryAddress)
    staticcall factoryAddress.getConfig(bytes32 rg1) with:
            gas gas_remaining wei
           args 0x666565526563697069656e740000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if 0 > 0 / totalSupply - ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        return totalSupply - ext_call.return_data[0], 
               0 / totalSupply - ext_call.return_data[0],
               0,
               (totalSupply * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / totalSupply - ext_call.return_data[0]
    if not ext_call.return_data[12 len 20]:
        if 0 > 0 / totalSupply - ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        return totalSupply - ext_call.return_data[0], 
               0 / totalSupply - ext_call.return_data[0],
               0,
               (totalSupply * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / totalSupply - ext_call.return_data[0]
    if not 0 / totalSupply - ext_call.return_data[0]:
        if 0 > 0 / totalSupply - ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        return totalSupply - ext_call.return_data[0], 
               0 / totalSupply - ext_call.return_data[0],
               0,
               (totalSupply * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / totalSupply - ext_call.return_data[0]
    if ext_call.return_data[0] * 0 / totalSupply - ext_call.return_data[0] / 0 / totalSupply - ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
    if ext_call.return_data[0] * 0 / totalSupply - ext_call.return_data[0] / 10^18 > 0 / totalSupply - ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    return totalSupply - ext_call.return_data[0], 
           (0 / totalSupply - ext_call.return_data[0]) - (ext_call.return_data[0] * 0 / totalSupply - ext_call.return_data[0] / 10^18),
           ext_call.return_data[0] * 0 / totalSupply - ext_call.return_data[0] / 10^18,
           (totalSupply * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / totalSupply - ext_call.return_data[0]
}



}
