contract main {




// =====================  Runtime code  =====================


#
#  - changeUserBorrowDiscount(address arg1)
#
address sub_962d34ffAddress;
address sub_8be8441cAddress;
address oracleAddress;
address adminAddress;
uint256 sub_d3adf5a8;
uint256 sub_c38c2234;
uint256 sub_d4578914;
uint256 sub_e5e0072f;
uint256 sub_01ef4739;
uint256 sub_ea021ed8;
uint256 sub_4417249a;
mapping of uint256 totalDiscountGiven;
mapping of uint8 stor12;
mapping of uint8 stor13;
array of address sub_d42e7785;
array of address sub_32cd239d;
mapping of struct supplyDiscountSnap;
mapping of struct borrowDiscountSnap;
array of struct sub_49c53437;
address implementationAddress;
address sub_3e6c6a5bAddress;

function sub_01ef4739(?) payable {
    return sub_01ef4739
}

function borrowDiscountSnap(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return bool(borrowDiscountSnap[arg1][arg2].field_0), 
           borrowDiscountSnap[arg1][arg2].field_256,
           borrowDiscountSnap[arg1][arg2].field_512,
           borrowDiscountSnap[arg1][arg2].field_768,
           borrowDiscountSnap[arg1][arg2].field_1024
}

function supplyDiscountSnap(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return bool(supplyDiscountSnap[arg1][arg2].field_0), 
           supplyDiscountSnap[arg1][arg2].field_256,
           supplyDiscountSnap[arg1][arg2].field_512,
           supplyDiscountSnap[arg1][arg2].field_768
}

function sub_32cd239d(?) payable {
    require calldata.size - 4 >= 64
    require arg2 < uint256(sub_32cd239d[arg1])
    return address(sub_32cd239d[arg1][arg2])
}

function sub_3d37a741(?) payable {
    require calldata.size - 4 >= 32
    return bool(stor12[arg1])
}

function isMarketListed(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor13[arg1])
}

function sub_3e6c6a5b(?) payable {
    return sub_3e6c6a5bAddress
}

function sub_4417249a(?) payable {
    return sub_4417249a
}

function totalDiscountGiven(address arg1) payable {
    require calldata.size - 4 >= 32
    return totalDiscountGiven[arg1]
}

function sub_49c53437(?) payable {
    require calldata.size - 4 >= 64
    require arg2 < sub_49c53437[arg1].field_0
    return sub_49c53437[arg1][arg2].field_0
}

function implementation() payable {
    return implementationAddress
}

function oracle() payable {
    return oracleAddress
}

function sub_8be8441c(?) payable {
    return sub_8be8441cAddress
}

function sub_962d34ff(?) payable {
    return sub_962d34ffAddress
}

function sub_c38c2234(?) payable {
    return sub_c38c2234
}

function sub_d3adf5a8(?) payable {
    return sub_d3adf5a8
}

function sub_d42e7785(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_d42e7785.length
    return sub_d42e7785[arg1]
}

function sub_d4578914(?) payable {
    return sub_d4578914
}

function sub_e5e0072f(?) payable {
    return sub_e5e0072f
}

function sub_ea021ed8(?) payable {
    return sub_ea021ed8
}

function admin() payable {
    return adminAddress
}

function _fallback() payable {
    revert
}

function changeLastExchangeRateAtSupply(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    return 1
}

function sub_5a5f7495(?) payable {
    require calldata.size - 4 >= 32
    if adminAddress != msg.sender:
        revert with 0, 'only admin can call'
    if not stor13[address(arg1)]:
        revert with 0, 'market already delisted'
    stor13[address(arg1)] = 0
    return 1
}

function listMarket(address arg1) payable {
    require calldata.size - 4 >= 32
    if adminAddress != msg.sender:
        revert with 0, 'only admin can call'
    if stor13[address(arg1)]:
        revert with 0, 'market already listed'
    stor13[address(arg1)] = 1
    return 1
}

function changeLastBorrowAmountDiscountGiven(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not stor13[address(msg.sender)]:
        revert with 0, 'Market not listed'
    borrowDiscountSnap[address(msg.sender)][address(arg1)].field_512 = arg2
    borrowDiscountSnap[address(msg.sender)][address(arg1)].field_1024 = block.timestamp
    return 1
}

function sub_ed6f5775(?) payable {
    require calldata.size - 4 >= 128
    if adminAddress != msg.sender:
        revert with 0, 'only admin can call'
    sub_962d34ffAddress = arg1
    sub_8be8441cAddress = arg2
    oracleAddress = arg3
    sub_3e6c6a5bAddress = arg4
    emit gGammaAddressChange(sub_962d34ffAddress, arg1);
    emit 0x50e925cf: sub_8be8441cAddress, arg2
    emit oracleChanged(oracleAddress, arg3);
    emit 0x19a6e34a: sub_3e6c6a5bAddress, arg4
    return 1
}

function totalReservesAfterDiscount(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(arg1)
    staticcall arg1.totalReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if totalDiscountGiven[address(arg1)] > ext_call.return_data[0]:
        return 0
    return (ext_call.return_data[0] - totalDiscountGiven[address(arg1)])
}

function changeUserSupplyDiscount(address arg1) payable {
    require calldata.size - 4 >= 32
    if not stor13[address(msg.sender)]:
        revert with 0, 'Market not listed'
    require ext_code.size(msg.sender)
    staticcall msg.sender.getAccountSnapshot(address arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    require ext_code.size(msg.sender)
    staticcall msg.sender.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0], ext_call.return_data[32]
}

function sub_4a837a99(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    if adminAddress != msg.sender:
        revert with 0, 'only admin can call'
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        if stor13[mem[(32 * idx) + 140 len 20]]:
            revert with 0, 'market already listed'
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 13
        stor13[address(mem[(32 * idx) + 128])] = 1
        idx = idx + 1
        continue 
    return 1
}

function sub_f5f0113b(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    if adminAddress != msg.sender:
        revert with 0, 'only admin can call'
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        if stor13[mem[(32 * idx) + 140 len 20]]:
            revert with 0, 'market already delisted'
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 13
        stor13[address(mem[(32 * idx) + 128])] = 0
        idx = idx + 1
        continue 
    return 1
}

function returnBorrowUserArr(address arg1) payable {
    require calldata.size - 4 >= 32
    if not sub_49c53437[address(arg1)].field_0:
        mem[(32 * sub_49c53437[address(arg1)].field_0) + 128] = 32
        mem[(32 * sub_49c53437[address(arg1)].field_0) + 160] = sub_49c53437[address(arg1)].field_0
        mem[(32 * sub_49c53437[address(arg1)].field_0) + 192 len floor32(sub_49c53437[address(arg1)].field_0)] = mem[128 len floor32(sub_49c53437[address(arg1)].field_0)]
        return memory
          from (32 * sub_49c53437[address(arg1)].field_0) + 128
           len (96 * sub_49c53437[address(arg1)].field_0) + 64
    mem[128] = sub_49c53437[address(arg1)].field_0
    idx = 128
    s = 0
    while (32 * sub_49c53437[address(arg1)].field_0) + 96 > idx:
        mem[idx + 32] = sub_49c53437[address(arg1)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * sub_49c53437[address(arg1)].field_0) + 192 len floor32(sub_49c53437[address(arg1)].field_0)] = mem[128 len floor32(sub_49c53437[address(arg1)].field_0)]
    return Array(len=sub_49c53437[address(arg1)].field_0, data=mem[128 len floor32(sub_49c53437[address(arg1)].field_0)], mem[(32 * sub_49c53437[address(arg1)].field_0) + floor32(sub_49c53437[address(arg1)].field_0) + 192 len (32 * sub_49c53437[address(arg1)].field_0) - floor32(sub_49c53437[address(arg1)].field_0)]), 
}

function returnBorrowerStakedAsset(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(arg2)
    staticcall arg2.getAccountSnapshot(address arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    if ext_call.return_data[32]:
        require ext_code.size(oracleAddress)
        staticcall oracleAddress.getUnderlyingPrice(address arg1) with:
                gas gas_remaining wei
               args arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[32]:
            require ext_call.return_data[32]
            if ext_call.return_data[32] * ext_call.return_data[96] / ext_call.return_data[32] == ext_call.return_data[96]:
                if ext_call.return_data[32] * ext_call.return_data[96] / 10^18:
                    require ext_call.return_data[32] * ext_call.return_data[96] / 10^18
                    if ext_call.return_data[32] * ext_call.return_data[96] / 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[96] / 10^18 == ext_call.return_data[0]:
                        return (ext_call.return_data[32] * ext_call.return_data[96] / 10^18 * ext_call.return_data[0] / 10^18)
                    else:
                        return 0
                else:
                    return 0
            else:
                return 0
        else:
            return 0
    else:
        return 0
}

function returnDiscountPercentage(address arg1) payable {
    require calldata.size - 4 >= 32
    mem[96] = 0xb0772d0b00000000000000000000000000000000000000000000000000000000
    require ext_code.size(sub_8be8441cAddress)
    staticcall sub_8be8441cAddress.getAllMarkets() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96]
    require mem[96] <= 4294967296
    require mem[96] + 32 <= return_data.size
    require mem[mem[96] + 96] <= 4294967296 and mem[96] + (32 * mem[mem[96] + 96]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 96] = mem[mem[96] + 96]
    _7 = mem[_4 + 96]
    mem[ceil32(return_data.size) + 128 len floor32(mem[_4 + 96])] = mem[_4 + 128 len floor32(mem[_4 + 96])]
    require ext_code.size(sub_962d34ffAddress)
    staticcall sub_962d34ffAddress.getAccountSnapshot(address arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    require ext_code.size(oracleAddress)
    staticcall oracleAddress.getUnderlyingPrice(address arg1) with:
            gas gas_remaining wei
           args sub_962d34ffAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_3e6c6a5bAddress)
    staticcall sub_3e6c6a5bAddress.0x6ebb35c2 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(32 * _7) + ceil32(return_data.size) + 128] = ext_call.return_data[32] + ext_call.return_data[0]
    mem[(32 * _7) + ceil32(return_data.size) + 160] = 0
    mem[(32 * _7) + ceil32(return_data.size) + 192] = 0
    if not ext_call.return_data[32] + ext_call.return_data[0]:
        mem[(32 * _7) + ceil32(return_data.size) + 224] = 0
        mem[(32 * _7) + ceil32(return_data.size) + 256] = 0 / 10^18
        mem[(32 * _7) + ceil32(return_data.size) + 288] = 0
        mem[(32 * _7) + ceil32(return_data.size) + 320] = 0
        mem[64] = (32 * _7) + ceil32(return_data.size) + 384
        mem[(32 * _7) + ceil32(return_data.size) + 352] = 0
        _3624 = mem[ceil32(return_data.size) + 96]
        idx = 0
        s = 0
        while idx < _3624:
            require idx < mem[ceil32(return_data.size) + 96]
            _3659 = mem[(32 * idx) + ceil32(return_data.size) + 128]
            mem[0] = mem[(32 * idx) + ceil32(return_data.size) + 140 len 20]
            mem[32] = 13
            if stor13[mem[(32 * idx) + ceil32(return_data.size) + 140 len 20]]:
                _3678 = mem[64]
                mem[64] = mem[64] + 32
                mem[_3678] = 0
                require ext_code.size(address(_3659))
                staticcall address(_3659).getAccountSnapshot(address arg1) with:
                        gas gas_remaining wei
                       args address(arg1)
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 128
                if ext_call.return_data[32]:
                    mem[mem[64] + 4] = address(_3659)
                    require ext_code.size(oracleAddress)
                    staticcall oracleAddress.getUnderlyingPrice(address arg1) with:
                            gas gas_remaining wei
                           args address(_3659)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    _3786 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_3786] = ext_call.return_data[32]
                    _3801 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_3801] = 0
                    _3816 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_3816] = 0
                    if not ext_call.return_data[32]:
                        _3921 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_3921] = 0
                        mem[_3678] = 0 / 10^18
                        _4235 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_4235] = 0
                        _4494 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_4494] = 0
                        _4896 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_4896] = 0
                        _6135 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_6135] = 0
                        if s + (0 / 10^18) < s:
                            idx = idx + 1
                            s = 0
                            continue 
                        idx = idx + 1
                        s = s + (0 / 10^18)
                        continue 
                    require ext_call.return_data[32]
                    if ext_call.return_data[32] * ext_call.return_data[96] / ext_call.return_data[32] != ext_call.return_data[96]:
                        _3972 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_3972] = 0
                        mem[_3678] = 0
                        _4139 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_4139] = 0
                        _4347 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_4347] = 0
                        _4698 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_4698] = 0
                        _6126 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_6126] = 0
                        if s + (0 / 10^18) < s:
                            idx = idx + 1
                            s = 0
                            continue 
                        idx = idx + 1
                        s = s + (0 / 10^18)
                        continue 
                    _3971 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_3971] = ext_call.return_data[32] * ext_call.return_data[96]
                    mem[_3678] = ext_call.return_data[32] * ext_call.return_data[96] / 10^18
                    _4492 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_4492] = ext_call.return_data[32] * ext_call.return_data[96] / 10^18
                    _4697 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_4697] = 0
                    _5508 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_5508] = 0
                    if not ext_call.return_data[32] * ext_call.return_data[96] / 10^18:
                        _6178 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_6178] = 0
                        if s + (0 / 10^18) < s:
                            idx = idx + 1
                            s = 0
                            continue 
                        idx = idx + 1
                        s = s + (0 / 10^18)
                        continue 
                    require ext_call.return_data[32] * ext_call.return_data[96] / 10^18
                    if ext_call.return_data[32] * ext_call.return_data[96] / 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[96] / 10^18 == ext_call.return_data[0]:
                        _6197 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_6197] = ext_call.return_data[32] * ext_call.return_data[96] / 10^18 * ext_call.return_data[0]
                        if s + (ext_call.return_data[32] * ext_call.return_data[96] / 10^18 * ext_call.return_data[0] / 10^18) < s:
                            idx = idx + 1
                            s = 0
                            continue 
                        idx = idx + 1
                        s = s + (ext_call.return_data[32] * ext_call.return_data[96] / 10^18 * ext_call.return_data[0] / 10^18)
                        continue 
                    _6198 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_6198] = 0
                if s < s:
                    idx = idx + 1
                    s = 0
                    continue 
            idx = idx + 1
            s = s
            continue 
        if not s:
            if sub_01ef4739 <= 0 / 10^16:
                if 0 / 10^16 < sub_ea021ed8:
                    return sub_c38c2234
            if sub_ea021ed8 > 0 / 10^16:
                if 0 / 10^16 < sub_4417249a:
                    return sub_d3adf5a8
                return sub_e5e0072f
            if 0 / 10^16 >= sub_4417249a:
                return sub_e5e0072f
        else:
            require s
            if not 0 / s:
                if sub_01ef4739 <= 0 / 10^16:
                    if 0 / 10^16 < sub_ea021ed8:
                        return sub_c38c2234
                if sub_ea021ed8 > 0 / 10^16:
                    if 0 / 10^16 < sub_4417249a:
                        return sub_d3adf5a8
                    return sub_e5e0072f
                if 0 / 10^16 >= sub_4417249a:
                    return sub_e5e0072f
            else:
                require 0 / s
                if 100 * 0 / s / 0 / s == 100:
                    if sub_01ef4739 <= 100 * 0 / s / 10^16:
                        if 100 * 0 / s / 10^16 < sub_ea021ed8:
                            return sub_c38c2234
                    if sub_ea021ed8 > 100 * 0 / s / 10^16:
                        if 100 * 0 / s / 10^16 < sub_4417249a:
                            return sub_d3adf5a8
                        return sub_e5e0072f
                    if 100 * 0 / s / 10^16 >= sub_4417249a:
                        return sub_e5e0072f
                else:
                    if sub_01ef4739 <= 0 / 10^16:
                        if 0 / 10^16 < sub_ea021ed8:
                            return sub_c38c2234
                    if sub_ea021ed8 > 0 / 10^16:
                        if 0 / 10^16 < sub_4417249a:
                            return sub_d3adf5a8
                        return sub_e5e0072f
                    if 0 / 10^16 >= sub_4417249a:
                        return sub_e5e0072f
    else:
        require ext_call.return_data[32] + ext_call.return_data[0]
        if (ext_call.return_data[32] * ext_call.return_data[96]) + (ext_call.return_data[0] * ext_call.return_data[96]) / ext_call.return_data[32] + ext_call.return_data[0] != ext_call.return_data[96]:
            mem[(32 * _7) + ceil32(return_data.size) + 224] = 0
            mem[(32 * _7) + ceil32(return_data.size) + 256] = 0
            mem[(32 * _7) + ceil32(return_data.size) + 288] = 0
            mem[(32 * _7) + ceil32(return_data.size) + 320] = 0
            mem[64] = (32 * _7) + ceil32(return_data.size) + 384
            mem[(32 * _7) + ceil32(return_data.size) + 352] = 0
            _3621 = mem[ceil32(return_data.size) + 96]
            idx = 0
            s = 0
            while idx < _3621:
                require idx < mem[ceil32(return_data.size) + 96]
                _3650 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                mem[0] = mem[(32 * idx) + ceil32(return_data.size) + 140 len 20]
                mem[32] = 13
                if stor13[mem[(32 * idx) + ceil32(return_data.size) + 140 len 20]]:
                    _3672 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_3672] = 0
                    require ext_code.size(address(_3650))
                    staticcall address(_3650).getAccountSnapshot(address arg1) with:
                            gas gas_remaining wei
                           args address(arg1)
                    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 128
                    if ext_call.return_data[32]:
                        mem[mem[64] + 4] = address(_3650)
                        require ext_code.size(oracleAddress)
                        staticcall oracleAddress.getUnderlyingPrice(address arg1) with:
                                gas gas_remaining wei
                               args address(_3650)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        _3780 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_3780] = ext_call.return_data[32]
                        _3796 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_3796] = 0
                        _3813 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_3813] = 0
                        if not ext_call.return_data[32]:
                            _3915 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_3915] = 0
                            mem[_3672] = 0 / 10^18
                            _4203 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_4203] = 0
                            _4445 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_4445] = 0
                            _4830 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_4830] = 0
                            _6132 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_6132] = 0
                            if s + (0 / 10^18) < s:
                                idx = idx + 1
                                s = 0
                                continue 
                            idx = idx + 1
                            s = s + (0 / 10^18)
                            continue 
                        require ext_call.return_data[32]
                        if ext_call.return_data[32] * ext_call.return_data[96] / ext_call.return_data[32] != ext_call.return_data[96]:
                            _3958 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_3958] = 0
                            mem[_3672] = 0
                            _4121 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_4121] = 0
                            _4310 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_4310] = 0
                            _4660 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_4660] = 0
                            _6123 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_6123] = 0
                            if s + (0 / 10^18) < s:
                                idx = idx + 1
                                s = 0
                                continue 
                            idx = idx + 1
                            s = s + (0 / 10^18)
                            continue 
                        _3957 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_3957] = ext_call.return_data[32] * ext_call.return_data[96]
                        mem[_3672] = ext_call.return_data[32] * ext_call.return_data[96] / 10^18
                        _4443 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_4443] = ext_call.return_data[32] * ext_call.return_data[96] / 10^18
                        _4659 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_4659] = 0
                        _5395 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_5395] = 0
                        if not ext_call.return_data[32] * ext_call.return_data[96] / 10^18:
                            _6169 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_6169] = 0
                            if s + (0 / 10^18) < s:
                                idx = idx + 1
                                s = 0
                                continue 
                            idx = idx + 1
                            s = s + (0 / 10^18)
                            continue 
                        require ext_call.return_data[32] * ext_call.return_data[96] / 10^18
                        if ext_call.return_data[32] * ext_call.return_data[96] / 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[96] / 10^18 == ext_call.return_data[0]:
                            _6191 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_6191] = ext_call.return_data[32] * ext_call.return_data[96] / 10^18 * ext_call.return_data[0]
                            if s + (ext_call.return_data[32] * ext_call.return_data[96] / 10^18 * ext_call.return_data[0] / 10^18) < s:
                                idx = idx + 1
                                s = 0
                                continue 
                            idx = idx + 1
                            s = s + (ext_call.return_data[32] * ext_call.return_data[96] / 10^18 * ext_call.return_data[0] / 10^18)
                            continue 
                        _6192 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_6192] = 0
                    if s < s:
                        idx = idx + 1
                        s = 0
                        continue 
                idx = idx + 1
                s = s
                continue 
            if not s:
                if sub_01ef4739 <= 0 / 10^16:
                    if 0 / 10^16 < sub_ea021ed8:
                        return sub_c38c2234
                if sub_ea021ed8 > 0 / 10^16:
                    if 0 / 10^16 < sub_4417249a:
                        return sub_d3adf5a8
                    return sub_e5e0072f
                if 0 / 10^16 >= sub_4417249a:
                    return sub_e5e0072f
            else:
                require s
                if not 0 / s:
                    if sub_01ef4739 <= 0 / 10^16:
                        if 0 / 10^16 < sub_ea021ed8:
                            return sub_c38c2234
                    if sub_ea021ed8 > 0 / 10^16:
                        if 0 / 10^16 < sub_4417249a:
                            return sub_d3adf5a8
                        return sub_e5e0072f
                    if 0 / 10^16 >= sub_4417249a:
                        return sub_e5e0072f
                else:
                    require 0 / s
                    if 100 * 0 / s / 0 / s == 100:
                        if sub_01ef4739 <= 100 * 0 / s / 10^16:
                            if 100 * 0 / s / 10^16 < sub_ea021ed8:
                                return sub_c38c2234
                        if sub_ea021ed8 > 100 * 0 / s / 10^16:
                            if 100 * 0 / s / 10^16 < sub_4417249a:
                                return sub_d3adf5a8
                            return sub_e5e0072f
                        if 100 * 0 / s / 10^16 >= sub_4417249a:
                            return sub_e5e0072f
                    else:
                        if sub_01ef4739 <= 0 / 10^16:
                            if 0 / 10^16 < sub_ea021ed8:
                                return sub_c38c2234
                        if sub_ea021ed8 > 0 / 10^16:
                            if 0 / 10^16 < sub_4417249a:
                                return sub_d3adf5a8
                            return sub_e5e0072f
                        if 0 / 10^16 >= sub_4417249a:
                            return sub_e5e0072f
        else:
            mem[(32 * _7) + ceil32(return_data.size) + 224] = (ext_call.return_data[32] * ext_call.return_data[96]) + (ext_call.return_data[0] * ext_call.return_data[96])
            mem[(32 * _7) + ceil32(return_data.size) + 256] = (ext_call.return_data[32] * ext_call.return_data[96]) + (ext_call.return_data[0] * ext_call.return_data[96]) / 10^18
            mem[(32 * _7) + ceil32(return_data.size) + 288] = 0
            mem[(32 * _7) + ceil32(return_data.size) + 320] = 0
            if not (ext_call.return_data[32] * ext_call.return_data[96]) + (ext_call.return_data[0] * ext_call.return_data[96]) / 10^18:
                mem[64] = (32 * _7) + ceil32(return_data.size) + 384
                mem[(32 * _7) + ceil32(return_data.size) + 352] = 0
                _3618 = mem[ceil32(return_data.size) + 96]
                idx = 0
                s = 0
                while idx < _3618:
                    require idx < mem[ceil32(return_data.size) + 96]
                    _3641 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                    mem[0] = mem[(32 * idx) + ceil32(return_data.size) + 140 len 20]
                    mem[32] = 13
                    if stor13[mem[(32 * idx) + ceil32(return_data.size) + 140 len 20]]:
                        _3666 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_3666] = 0
                        require ext_code.size(address(_3641))
                        staticcall address(_3641).getAccountSnapshot(address arg1) with:
                                gas gas_remaining wei
                               args address(arg1)
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 128
                        if ext_call.return_data[32]:
                            mem[mem[64] + 4] = address(_3641)
                            require ext_code.size(oracleAddress)
                            staticcall oracleAddress.getUnderlyingPrice(address arg1) with:
                                    gas gas_remaining wei
                                   args address(_3641)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _3774 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_3774] = ext_call.return_data[32]
                            _3791 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_3791] = 0
                            _3810 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_3810] = 0
                            if not ext_call.return_data[32]:
                                _3909 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3909] = 0
                                mem[_3666] = 0 / 10^18
                                _4171 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4171] = 0
                                _4396 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4396] = 0
                                _4764 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4764] = 0
                                _6129 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_6129] = 0
                                if s + (0 / 10^18) < s:
                                    idx = idx + 1
                                    s = 0
                                    continue 
                                idx = idx + 1
                                s = s + (0 / 10^18)
                                continue 
                            require ext_call.return_data[32]
                            if ext_call.return_data[32] * ext_call.return_data[96] / ext_call.return_data[32] != ext_call.return_data[96]:
                                _3944 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3944] = 0
                                mem[_3666] = 0
                                _4103 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4103] = 0
                                _4273 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4273] = 0
                                _4622 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4622] = 0
                                _6120 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_6120] = 0
                                if s + (0 / 10^18) < s:
                                    idx = idx + 1
                                    s = 0
                                    continue 
                                idx = idx + 1
                                s = s + (0 / 10^18)
                                continue 
                            _3943 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_3943] = ext_call.return_data[32] * ext_call.return_data[96]
                            mem[_3666] = ext_call.return_data[32] * ext_call.return_data[96] / 10^18
                            _4394 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_4394] = ext_call.return_data[32] * ext_call.return_data[96] / 10^18
                            _4621 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_4621] = 0
                            _5282 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_5282] = 0
                            if not ext_call.return_data[32] * ext_call.return_data[96] / 10^18:
                                _6160 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_6160] = 0
                                if s + (0 / 10^18) < s:
                                    idx = idx + 1
                                    s = 0
                                    continue 
                                idx = idx + 1
                                s = s + (0 / 10^18)
                                continue 
                            require ext_call.return_data[32] * ext_call.return_data[96] / 10^18
                            if ext_call.return_data[32] * ext_call.return_data[96] / 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[96] / 10^18 == ext_call.return_data[0]:
                                _6185 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_6185] = ext_call.return_data[32] * ext_call.return_data[96] / 10^18 * ext_call.return_data[0]
                                if s + (ext_call.return_data[32] * ext_call.return_data[96] / 10^18 * ext_call.return_data[0] / 10^18) < s:
                                    idx = idx + 1
                                    s = 0
                                    continue 
                                idx = idx + 1
                                s = s + (ext_call.return_data[32] * ext_call.return_data[96] / 10^18 * ext_call.return_data[0] / 10^18)
                                continue 
                            _6186 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_6186] = 0
                        if s < s:
                            idx = idx + 1
                            s = 0
                            continue 
                    idx = idx + 1
                    s = s
                    continue 
                if not s:
                    if sub_01ef4739 <= 0 / 10^16:
                        if 0 / 10^16 < sub_ea021ed8:
                            return sub_c38c2234
                    if sub_ea021ed8 > 0 / 10^16:
                        if 0 / 10^16 < sub_4417249a:
                            return sub_d3adf5a8
                        return sub_e5e0072f
                    if 0 / 10^16 >= sub_4417249a:
                        return sub_e5e0072f
                else:
                    require s
                    if not 0 / s:
                        if sub_01ef4739 <= 0 / 10^16:
                            if 0 / 10^16 < sub_ea021ed8:
                                return sub_c38c2234
                        if sub_ea021ed8 > 0 / 10^16:
                            if 0 / 10^16 < sub_4417249a:
                                return sub_d3adf5a8
                            return sub_e5e0072f
                        if 0 / 10^16 >= sub_4417249a:
                            return sub_e5e0072f
                    else:
                        require 0 / s
                        if 100 * 0 / s / 0 / s == 100:
                            if sub_01ef4739 <= 100 * 0 / s / 10^16:
                                if 100 * 0 / s / 10^16 < sub_ea021ed8:
                                    return sub_c38c2234
                            if sub_ea021ed8 > 100 * 0 / s / 10^16:
                                if 100 * 0 / s / 10^16 < sub_4417249a:
                                    return sub_d3adf5a8
                                return sub_e5e0072f
                            if 100 * 0 / s / 10^16 >= sub_4417249a:
                                return sub_e5e0072f
                        else:
                            if sub_01ef4739 <= 0 / 10^16:
                                if 0 / 10^16 < sub_ea021ed8:
                                    return sub_c38c2234
                            if sub_ea021ed8 > 0 / 10^16:
                                if 0 / 10^16 < sub_4417249a:
                                    return sub_d3adf5a8
                                return sub_e5e0072f
                            if 0 / 10^16 >= sub_4417249a:
                                return sub_e5e0072f
            else:
                require (ext_call.return_data[32] * ext_call.return_data[96]) + (ext_call.return_data[0] * ext_call.return_data[96]) / 10^18
                mem[64] = (32 * _7) + ceil32(return_data.size) + 384
                if (ext_call.return_data[32] * ext_call.return_data[96]) + (ext_call.return_data[0] * ext_call.return_data[96]) / 10^18 * ext_call.return_data[0] / (ext_call.return_data[32] * ext_call.return_data[96]) + (ext_call.return_data[0] * ext_call.return_data[96]) / 10^18 != ext_call.return_data[0]:
                    mem[(32 * _7) + ceil32(return_data.size) + 352] = 0
                    _3617 = mem[ceil32(return_data.size) + 96]
                    idx = 0
                    s = 0
                    while idx < _3617:
                        require idx < mem[ceil32(return_data.size) + 96]
                        _3638 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                        mem[0] = mem[(32 * idx) + ceil32(return_data.size) + 140 len 20]
                        mem[32] = 13
                        if stor13[mem[(32 * idx) + ceil32(return_data.size) + 140 len 20]]:
                            _3664 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_3664] = 0
                            require ext_code.size(address(_3638))
                            staticcall address(_3638).getAccountSnapshot(address arg1) with:
                                    gas gas_remaining wei
                                   args address(arg1)
                            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 128
                            if ext_call.return_data[32]:
                                mem[mem[64] + 4] = address(_3638)
                                require ext_code.size(oracleAddress)
                                staticcall oracleAddress.getUnderlyingPrice(address arg1) with:
                                        gas gas_remaining wei
                                       args address(_3638)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                _3772 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3772] = ext_call.return_data[32]
                                _3789 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3789] = 0
                                _3809 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3809] = 0
                                if not ext_call.return_data[32]:
                                    _3907 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_3907] = 0
                                    mem[_3664] = 0 / 10^18
                                    _4157 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4157] = 0
                                    _4375 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4375] = 0
                                    _4740 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4740] = 0
                                    _6128 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_6128] = 0
                                    if s + (0 / 10^18) < s:
                                        idx = idx + 1
                                        s = 0
                                        continue 
                                    idx = idx + 1
                                    s = s + (0 / 10^18)
                                    continue 
                                require ext_call.return_data[32]
                                if ext_call.return_data[32] * ext_call.return_data[96] / ext_call.return_data[32] != ext_call.return_data[96]:
                                    _3939 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_3939] = 0
                                    mem[_3664] = 0
                                    _4095 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4095] = 0
                                    _4256 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4256] = 0
                                    _4608 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4608] = 0
                                    _6119 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_6119] = 0
                                    if s + (0 / 10^18) < s:
                                        idx = idx + 1
                                        s = 0
                                        continue 
                                    idx = idx + 1
                                    s = s + (0 / 10^18)
                                    continue 
                                _3938 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3938] = ext_call.return_data[32] * ext_call.return_data[96]
                                mem[_3664] = ext_call.return_data[32] * ext_call.return_data[96] / 10^18
                                _4373 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4373] = ext_call.return_data[32] * ext_call.return_data[96] / 10^18
                                _4607 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4607] = 0
                                _5239 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_5239] = 0
                                if not ext_call.return_data[32] * ext_call.return_data[96] / 10^18:
                                    _6157 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_6157] = 0
                                    if s + (0 / 10^18) < s:
                                        idx = idx + 1
                                        s = 0
                                        continue 
                                    idx = idx + 1
                                    s = s + (0 / 10^18)
                                    continue 
                                require ext_call.return_data[32] * ext_call.return_data[96] / 10^18
                                if ext_call.return_data[32] * ext_call.return_data[96] / 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[96] / 10^18 == ext_call.return_data[0]:
                                    _6183 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_6183] = ext_call.return_data[32] * ext_call.return_data[96] / 10^18 * ext_call.return_data[0]
                                    if s + (ext_call.return_data[32] * ext_call.return_data[96] / 10^18 * ext_call.return_data[0] / 10^18) < s:
                                        idx = idx + 1
                                        s = 0
                                        continue 
                                    idx = idx + 1
                                    s = s + (ext_call.return_data[32] * ext_call.return_data[96] / 10^18 * ext_call.return_data[0] / 10^18)
                                    continue 
                                _6184 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_6184] = 0
                            if s < s:
                                idx = idx + 1
                                s = 0
                                continue 
                        idx = idx + 1
                        s = s
                        continue 
                    if not s:
                        if sub_01ef4739 <= 0 / 10^16:
                            if 0 / 10^16 < sub_ea021ed8:
                                return sub_c38c2234
                        if sub_ea021ed8 > 0 / 10^16:
                            if 0 / 10^16 < sub_4417249a:
                                return sub_d3adf5a8
                            return sub_e5e0072f
                        if 0 / 10^16 >= sub_4417249a:
                            return sub_e5e0072f
                    else:
                        require s
                        if not 0 / s:
                            if sub_01ef4739 <= 0 / 10^16:
                                if 0 / 10^16 < sub_ea021ed8:
                                    return sub_c38c2234
                            if sub_ea021ed8 > 0 / 10^16:
                                if 0 / 10^16 < sub_4417249a:
                                    return sub_d3adf5a8
                                return sub_e5e0072f
                            if 0 / 10^16 >= sub_4417249a:
                                return sub_e5e0072f
                        else:
                            require 0 / s
                            if 100 * 0 / s / 0 / s == 100:
                                if sub_01ef4739 <= 100 * 0 / s / 10^16:
                                    if 100 * 0 / s / 10^16 < sub_ea021ed8:
                                        return sub_c38c2234
                                if sub_ea021ed8 > 100 * 0 / s / 10^16:
                                    if 100 * 0 / s / 10^16 < sub_4417249a:
                                        return sub_d3adf5a8
                                    return sub_e5e0072f
                                if 100 * 0 / s / 10^16 >= sub_4417249a:
                                    return sub_e5e0072f
                            else:
                                if sub_01ef4739 <= 0 / 10^16:
                                    if 0 / 10^16 < sub_ea021ed8:
                                        return sub_c38c2234
                                if sub_ea021ed8 > 0 / 10^16:
                                    if 0 / 10^16 < sub_4417249a:
                                        return sub_d3adf5a8
                                    return sub_e5e0072f
                                if 0 / 10^16 >= sub_4417249a:
                                    return sub_e5e0072f
                else:
                    mem[(32 * _7) + ceil32(return_data.size) + 352] = (ext_call.return_data[32] * ext_call.return_data[96]) + (ext_call.return_data[0] * ext_call.return_data[96]) / 10^18 * ext_call.return_data[0]
                    _3616 = mem[ceil32(return_data.size) + 96]
                    idx = 0
                    s = 0
                    while idx < _3616:
                        require idx < mem[ceil32(return_data.size) + 96]
                        _3635 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                        mem[0] = mem[(32 * idx) + ceil32(return_data.size) + 140 len 20]
                        mem[32] = 13
                        if stor13[mem[(32 * idx) + ceil32(return_data.size) + 140 len 20]]:
                            _3662 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_3662] = 0
                            require ext_code.size(address(_3635))
                            staticcall address(_3635).getAccountSnapshot(address arg1) with:
                                    gas gas_remaining wei
                                   args address(arg1)
                            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 128
                            if ext_call.return_data[32]:
                                mem[mem[64] + 4] = address(_3635)
                                require ext_code.size(oracleAddress)
                                staticcall oracleAddress.getUnderlyingPrice(address arg1) with:
                                        gas gas_remaining wei
                                       args address(_3635)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                _3770 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3770] = ext_call.return_data[32]
                                _3788 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3788] = 0
                                _3808 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3808] = 0
                                if not ext_call.return_data[32]:
                                    _3905 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_3905] = 0
                                    mem[_3662] = 0 / 10^18
                                    _4153 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4153] = 0
                                    _4368 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4368] = 0
                                    _4722 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4722] = 0
                                    _6127 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_6127] = 0
                                    if s + (0 / 10^18) < s:
                                        idx = idx + 1
                                        s = 0
                                        continue 
                                    idx = idx + 1
                                    s = s + (0 / 10^18)
                                    continue 
                                require ext_call.return_data[32]
                                if ext_call.return_data[32] * ext_call.return_data[96] / ext_call.return_data[32] != ext_call.return_data[96]:
                                    _3935 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_3935] = 0
                                    mem[_3662] = 0
                                    _4093 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4093] = 0
                                    _4253 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4253] = 0
                                    _4598 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4598] = 0
                                    _6118 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_6118] = 0
                                    if s + (0 / 10^18) < s:
                                        idx = idx + 1
                                        s = 0
                                        continue 
                                    idx = idx + 1
                                    s = s + (0 / 10^18)
                                    continue 
                                _3934 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3934] = ext_call.return_data[32] * ext_call.return_data[96]
                                mem[_3662] = ext_call.return_data[32] * ext_call.return_data[96] / 10^18
                                _4366 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4366] = ext_call.return_data[32] * ext_call.return_data[96] / 10^18
                                _4597 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4597] = 0
                                _5212 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_5212] = 0
                                if not ext_call.return_data[32] * ext_call.return_data[96] / 10^18:
                                    _6154 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_6154] = 0
                                    if s + (0 / 10^18) < s:
                                        idx = idx + 1
                                        s = 0
                                        continue 
                                    idx = idx + 1
                                    s = s + (0 / 10^18)
                                    continue 
                                require ext_call.return_data[32] * ext_call.return_data[96] / 10^18
                                if ext_call.return_data[32] * ext_call.return_data[96] / 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[96] / 10^18 == ext_call.return_data[0]:
                                    _6181 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_6181] = ext_call.return_data[32] * ext_call.return_data[96] / 10^18 * ext_call.return_data[0]
                                    if s + (ext_call.return_data[32] * ext_call.return_data[96] / 10^18 * ext_call.return_data[0] / 10^18) < s:
                                        idx = idx + 1
                                        s = 0
                                        continue 
                                    idx = idx + 1
                                    s = s + (ext_call.return_data[32] * ext_call.return_data[96] / 10^18 * ext_call.return_data[0] / 10^18)
                                    continue 
                                _6182 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_6182] = 0
                            if s < s:
                                idx = idx + 1
                                s = 0
                                continue 
                        idx = idx + 1
                        s = s
                        continue 
                    if not (ext_call.return_data[32] * ext_call.return_data[96]) + (ext_call.return_data[0] * ext_call.return_data[96]) / 10^18 * ext_call.return_data[0] / 10^18:
                        if not s:
                            if sub_01ef4739 <= 0 / 10^16:
                                if 0 / 10^16 < sub_ea021ed8:
                                    return sub_c38c2234
                            if sub_ea021ed8 > 0 / 10^16:
                                if 0 / 10^16 < sub_4417249a:
                                    return sub_d3adf5a8
                                return sub_e5e0072f
                            if 0 / 10^16 >= sub_4417249a:
                                return sub_e5e0072f
                        else:
                            require s
                            if not 0 / s:
                                if sub_01ef4739 <= 0 / 10^16:
                                    if 0 / 10^16 < sub_ea021ed8:
                                        return sub_c38c2234
                                if sub_ea021ed8 > 0 / 10^16:
                                    if 0 / 10^16 < sub_4417249a:
                                        return sub_d3adf5a8
                                    return sub_e5e0072f
                                if 0 / 10^16 >= sub_4417249a:
                                    return sub_e5e0072f
                            else:
                                require 0 / s
                                if 100 * 0 / s / 0 / s == 100:
                                    if sub_01ef4739 <= 100 * 0 / s / 10^16:
                                        if 100 * 0 / s / 10^16 < sub_ea021ed8:
                                            return sub_c38c2234
                                    if sub_ea021ed8 > 100 * 0 / s / 10^16:
                                        if 100 * 0 / s / 10^16 < sub_4417249a:
                                            return sub_d3adf5a8
                                        return sub_e5e0072f
                                    if 100 * 0 / s / 10^16 >= sub_4417249a:
                                        return sub_e5e0072f
                                else:
                                    if sub_01ef4739 <= 0 / 10^16:
                                        if 0 / 10^16 < sub_ea021ed8:
                                            return sub_c38c2234
                                    if sub_ea021ed8 > 0 / 10^16:
                                        if 0 / 10^16 < sub_4417249a:
                                            return sub_d3adf5a8
                                        return sub_e5e0072f
                                    if 0 / 10^16 >= sub_4417249a:
                                        return sub_e5e0072f
                    else:
                        require (ext_call.return_data[32] * ext_call.return_data[96]) + (ext_call.return_data[0] * ext_call.return_data[96]) / 10^18 * ext_call.return_data[0] / 10^18
                        if 10^18 * (ext_call.return_data[32] * ext_call.return_data[96]) + (ext_call.return_data[0] * ext_call.return_data[96]) / 10^18 * ext_call.return_data[0] / 10^18 / (ext_call.return_data[32] * ext_call.return_data[96]) + (ext_call.return_data[0] * ext_call.return_data[96]) / 10^18 * ext_call.return_data[0] / 10^18 != 10^18:
                            if sub_01ef4739 <= 0 / 10^16:
                                if 0 / 10^16 < sub_ea021ed8:
                                    return sub_c38c2234
                            if sub_ea021ed8 > 0 / 10^16:
                                if 0 / 10^16 < sub_4417249a:
                                    return sub_d3adf5a8
                                return sub_e5e0072f
                            if 0 / 10^16 >= sub_4417249a:
                                return sub_e5e0072f
                        else:
                            if not s:
                                if sub_01ef4739 <= 0 / 10^16:
                                    if 0 / 10^16 < sub_ea021ed8:
                                        return sub_c38c2234
                                if sub_ea021ed8 > 0 / 10^16:
                                    if 0 / 10^16 < sub_4417249a:
                                        return sub_d3adf5a8
                                    return sub_e5e0072f
                                if 0 / 10^16 >= sub_4417249a:
                                    return sub_e5e0072f
                            else:
                                require s
                                if not 10^18 * (ext_call.return_data[32] * ext_call.return_data[96]) + (ext_call.return_data[0] * ext_call.return_data[96]) / 10^18 * ext_call.return_data[0] / 10^18 / s:
                                    if sub_01ef4739 <= 0 / 10^16:
                                        if 0 / 10^16 < sub_ea021ed8:
                                            return sub_c38c2234
                                    if sub_ea021ed8 > 0 / 10^16:
                                        if 0 / 10^16 < sub_4417249a:
                                            return sub_d3adf5a8
                                        return sub_e5e0072f
                                    if 0 / 10^16 >= sub_4417249a:
                                        return sub_e5e0072f
                                else:
                                    require 10^18 * (ext_call.return_data[32] * ext_call.return_data[96]) + (ext_call.return_data[0] * ext_call.return_data[96]) / 10^18 * ext_call.return_data[0] / 10^18 / s
                                    if 100 * 10^18 * (ext_call.return_data[32] * ext_call.return_data[96]) + (ext_call.return_data[0] * ext_call.return_data[96]) / 10^18 * ext_call.return_data[0] / 10^18 / s / 10^18 * (ext_call.return_data[32] * ext_call.return_data[96]) + (ext_call.return_data[0] * ext_call.return_data[96]) / 10^18 * ext_call.return_data[0] / 10^18 / s == 100:
                                        if sub_01ef4739 <= 100 * 10^18 * (ext_call.return_data[32] * ext_call.return_data[96]) + (ext_call.return_data[0] * ext_call.return_data[96]) / 10^18 * ext_call.return_data[0] / 10^18 / s / 10^16:
                                            if 100 * 10^18 * (ext_call.return_data[32] * ext_call.return_data[96]) + (ext_call.return_data[0] * ext_call.return_data[96]) / 10^18 * ext_call.return_data[0] / 10^18 / s / 10^16 < sub_ea021ed8:
                                                return sub_c38c2234
                                        if sub_ea021ed8 > 100 * 10^18 * (ext_call.return_data[32] * ext_call.return_data[96]) + (ext_call.return_data[0] * ext_call.return_data[96]) / 10^18 * ext_call.return_data[0] / 10^18 / s / 10^16:
                                            if 100 * 10^18 * (ext_call.return_data[32] * ext_call.return_data[96]) + (ext_call.return_data[0] * ext_call.return_data[96]) / 10^18 * ext_call.return_data[0] / 10^18 / s / 10^16 < sub_4417249a:
                                                return sub_d3adf5a8
                                            return sub_e5e0072f
                                        if 100 * 10^18 * (ext_call.return_data[32] * ext_call.return_data[96]) + (ext_call.return_data[0] * ext_call.return_data[96]) / 10^18 * ext_call.return_data[0] / 10^18 / s / 10^16 >= sub_4417249a:
                                            return sub_e5e0072f
                                    else:
                                        if sub_01ef4739 <= 0 / 10^16:
                                            if 0 / 10^16 < sub_ea021ed8:
                                                return sub_c38c2234
                                        if sub_ea021ed8 > 0 / 10^16:
                                            if 0 / 10^16 < sub_4417249a:
                                                return sub_d3adf5a8
                                            return sub_e5e0072f
                                        if 0 / 10^16 >= sub_4417249a:
                                            return sub_e5e0072f
    return sub_d4578914
}



}
