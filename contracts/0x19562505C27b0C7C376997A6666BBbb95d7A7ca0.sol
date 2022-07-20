contract main {




// =====================  Runtime code  =====================


address owner;
address sub_efc96adaAddress;
address USDTAddress;
address sub_319fad09Address;
address sub_a2c62ffcAddress;
address tokenAddr;

function sub_319fad09(?) payable {
    return sub_319fad09Address
}

function tokenAddr() payable {
    return tokenAddr
}

function owner() payable {
    return owner
}

function sub_a2c62ffc(?) payable {
    return sub_a2c62ffcAddress
}

function USDT() payable {
    return USDTAddress
}

function sub_efc96ada(?) payable {
    return sub_efc96adaAddress
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

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
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

function sub_a70c926a(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(address(arg1))
    call address(arg1).0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function swapAndLiquifyToken(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    mem[132] = msg.sender
    mem[164] = this.address
    mem[196] = arg1
    mem[96] = 100
    mem[132 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[128 len 4] = unknown_0x23b872dd(?????)
    mem[228] = 32
    mem[260] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
    if not ext_code.size(sub_efc96adaAddress):
        revert with 0, 'Address: call to non-contract'
    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
    mem[416 len 4] = 0
    call sub_efc96adaAddress with:
         gas gas_remaining wei
        args Mask(224, 32, arg1) << 480, mem[388 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 
                        32,
                        42,
                        0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[402 len 14],
                        0,
                        mem[420 len 4]
        if arg1 / 2 > arg1:
            revert with 0, 'SafeMath: subtraction overflow'
        mem[296] = this.address
        require ext_code.size(USDTAddress)
        staticcall USDTAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[292] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[ceil32(return_data.size) + 292] = 2
        mem[ceil32(return_data.size) + 324] = sub_efc96adaAddress
        mem[ceil32(return_data.size) + 356] = USDTAddress
        mem[ceil32(return_data.size) + 392] = sub_319fad09Address
        mem[ceil32(return_data.size) + 424] = arg1 / 2
        require ext_code.size(sub_efc96adaAddress)
        call sub_efc96adaAddress.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args sub_319fad09Address, arg1 / 2
        mem[ceil32(return_data.size) + 388] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[(2 * ceil32(return_data.size)) + 388] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(2 * ceil32(return_data.size)) + 392] = arg1 / 2
        mem[(2 * ceil32(return_data.size)) + 424] = 0
        mem[(2 * ceil32(return_data.size)) + 456] = 160
        mem[(2 * ceil32(return_data.size)) + 552] = 2
        idx = 0
        s = (2 * ceil32(return_data.size)) + 584
        t = ceil32(return_data.size) + 324
        while idx < mem[ceil32(return_data.size) + 292]:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(2 * ceil32(return_data.size)) + 488] = this.address
        mem[(2 * ceil32(return_data.size)) + 520] = block.timestamp
        require ext_code.size(sub_319fad09Address)
        call sub_319fad09Address.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args Mask(255, 1, arg1), 0, 160, address(this.address), block.timestamp, mem[(2 * ceil32(return_data.size)) + 552 len (32 * mem[ceil32(return_data.size) + 292]) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(2 * ceil32(return_data.size)) + 388 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (4 * ceil32(return_data.size)) + 388
        require return_data.size >= 32
        _690 = mem[(2 * ceil32(return_data.size)) + 388 len 4], Mask(224, 32, arg1) >> 32
        require mem[(2 * ceil32(return_data.size)) + 388 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
        require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 388 len 4], Mask(224, 32, arg1) >> 32 + 419 < (2 * ceil32(return_data.size)) + return_data.size + 388
        _694 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 388 len 4], Mask(224, 32, arg1) >> 32 + 388]
        require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 388 len 4], Mask(224, 32, arg1) >> 32 + 388] <= test266151307()
        require (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 388 len 4], Mask(224, 32, arg1) >> 32 + 388]) + 420 <= test266151307() and (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 388 len 4], Mask(224, 32, arg1) >> 32 + 388]) + 32 >= 0
        mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 388 len 4], Mask(224, 32, arg1) >> 32 + 388]) + 420
        mem[(4 * ceil32(return_data.size)) + 388] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 388 len 4], Mask(224, 32, arg1) >> 32 + 388]
        require return_data.size >= _690 + (32 * _694) + 32
        mem[(4 * ceil32(return_data.size)) + 420 len 32 * _694] = mem[(2 * ceil32(return_data.size)) + _690 + 420 len 32 * _694]
        mem[mem[64] + 4] = this.address
        require ext_code.size(USDTAddress)
        staticcall USDTAddress.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _926 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _930 = mem[_926]
        if ext_call.return_data[0] > mem[_926]:
            revert with 0, 'SafeMath: subtraction overflow'
        mem[mem[64] + 4] = sub_319fad09Address
        mem[mem[64] + 36] = _930 - ext_call.return_data[0]
        require ext_code.size(sub_efc96adaAddress)
        call sub_efc96adaAddress.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args sub_319fad09Address, _930 - ext_call.return_data[0]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _950 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_950] == bool(mem[_950])
        mem[mem[64] + 4] = sub_319fad09Address
        mem[mem[64] + 36] = arg1 - (arg1 / 2)
        require ext_code.size(USDTAddress)
        call USDTAddress.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args sub_319fad09Address, arg1 - (arg1 / 2)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _966 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_966] == bool(mem[_966])
        mem[mem[64] + 68] = arg1 - (arg1 / 2)
        mem[mem[64] + 100] = _930 - ext_call.return_data[0]
        mem[mem[64] + 132] = 0
        mem[mem[64] + 164] = 0
        mem[mem[64] + 196] = owner
        mem[mem[64] + 228] = block.timestamp
        require ext_code.size(sub_319fad09Address)
        call sub_319fad09Address.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
             gas gas_remaining wei
            args USDTAddress, sub_efc96adaAddress, arg1 - (arg1 / 2), _930 - ext_call.return_data[0], 0, 0, owner, block.timestamp
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        mem[mem[64] + 4] = this.address
        require ext_code.size(sub_efc96adaAddress)
        staticcall sub_efc96adaAddress.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1006 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1010 = mem[_1006]
        if not mem[_1006]:
            mem[mem[64] + 4] = this.address
            require ext_code.size(USDTAddress)
            staticcall USDTAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1031 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1039 = mem[_1031]
            if mem[_1031]:
                mem[mem[64] + 4] = tokenAddr
                mem[mem[64] + 36] = _1039
                require ext_code.size(USDTAddress)
                call USDTAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args tokenAddr, _1039
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1070 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1070] == bool(mem[_1070])
        else:
            mem[mem[64] + 4] = tokenAddr
            mem[mem[64] + 36] = _1010
            require ext_code.size(sub_efc96adaAddress)
            call sub_efc96adaAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args tokenAddr, _1010
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1032 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1032] == bool(mem[_1032])
            mem[mem[64] + 4] = this.address
            require ext_code.size(USDTAddress)
            staticcall USDTAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1074 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1082 = mem[_1074]
            if mem[_1074]:
                mem[mem[64] + 4] = tokenAddr
                mem[mem[64] + 36] = _1082
                require ext_code.size(USDTAddress)
                call USDTAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args tokenAddr, _1082
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1110 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1110] == bool(mem[_1110])
        emit SwapAndLiquify(Mask(255, 1, arg1), _930 - ext_call.return_data[0], arg1 - (arg1 / 2));
    else:
        mem[292] = return_data.size
        mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if not return_data.size:
            if arg1 / 2 > arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            mem[ceil32(return_data.size) + 297] = this.address
            require ext_code.size(USDTAddress)
            staticcall USDTAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[ceil32(return_data.size) + 293] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 293] = 2
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 325] = sub_efc96adaAddress
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 357] = USDTAddress
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 393] = sub_319fad09Address
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 425] = arg1 / 2
            require ext_code.size(sub_efc96adaAddress)
            call sub_efc96adaAddress.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args sub_319fad09Address, arg1 / 2
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 389] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 389] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 393] = arg1 / 2
            mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 425] = 0
            mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 457] = 160
            mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 553] = 2
            idx = 0
            s = ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 585
            t = ceil32(return_data.size) + ceil32(return_data.size) + 325
            while idx < mem[ceil32(return_data.size) + ceil32(return_data.size) + 293]:
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 489] = this.address
            mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 521] = block.timestamp
            require ext_code.size(sub_319fad09Address)
            call sub_319fad09Address.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args Mask(255, 1, arg1), 0, 160, address(this.address), block.timestamp, mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 553 len (32 * mem[ceil32(return_data.size) + ceil32(return_data.size) + 293]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 389 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 389
            require return_data.size >= 32
            _691 = mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 389 len 4], Mask(224, 32, arg1) >> 32
            require mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 389 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
            require ceil32(return_data.size) + (2 * ceil32(return_data.size)) + mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 389 len 4], Mask(224, 32, arg1) >> 32 + 420 < ceil32(return_data.size) + (2 * ceil32(return_data.size)) + return_data.size + 389
            _695 = mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 389 len 4], Mask(224, 32, arg1) >> 32 + 389]
            require mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 389 len 4], Mask(224, 32, arg1) >> 32 + 389] <= test266151307()
            require ceil32(return_data.size) + (4 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 389 len 4], Mask(224, 32, arg1) >> 32 + 389]) + 421 <= test266151307() and (32 * mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 389 len 4], Mask(224, 32, arg1) >> 32 + 389]) + 32 >= 0
            mem[64] = ceil32(return_data.size) + (4 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 389 len 4], Mask(224, 32, arg1) >> 32 + 389]) + 421
            mem[ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 389] = mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 389 len 4], Mask(224, 32, arg1) >> 32 + 389]
            require return_data.size >= _691 + (32 * _695) + 32
            mem[ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 421 len 32 * _695] = mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + _691 + 421 len 32 * _695]
            mem[mem[64] + 4] = this.address
            require ext_code.size(USDTAddress)
            staticcall USDTAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _927 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _931 = mem[_927]
            if ext_call.return_data[0] > mem[_927]:
                revert with 0, 'SafeMath: subtraction overflow'
            mem[mem[64] + 4] = sub_319fad09Address
            mem[mem[64] + 36] = _931 - ext_call.return_data[0]
            require ext_code.size(sub_efc96adaAddress)
            call sub_efc96adaAddress.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args sub_319fad09Address, _931 - ext_call.return_data[0]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _951 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_951] == bool(mem[_951])
            mem[mem[64] + 4] = sub_319fad09Address
            mem[mem[64] + 36] = arg1 - (arg1 / 2)
            require ext_code.size(USDTAddress)
            call USDTAddress.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args sub_319fad09Address, arg1 - (arg1 / 2)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _967 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_967] == bool(mem[_967])
            mem[mem[64] + 68] = arg1 - (arg1 / 2)
            mem[mem[64] + 100] = _931 - ext_call.return_data[0]
            mem[mem[64] + 132] = 0
            mem[mem[64] + 164] = 0
            mem[mem[64] + 196] = owner
            mem[mem[64] + 228] = block.timestamp
            require ext_code.size(sub_319fad09Address)
            call sub_319fad09Address.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                 gas gas_remaining wei
                args USDTAddress, sub_efc96adaAddress, arg1 - (arg1 / 2), _931 - ext_call.return_data[0], 0, 0, owner, block.timestamp
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            mem[mem[64] + 4] = this.address
            require ext_code.size(sub_efc96adaAddress)
            staticcall sub_efc96adaAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1007 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1011 = mem[_1007]
            if not mem[_1007]:
                mem[mem[64] + 4] = this.address
                require ext_code.size(USDTAddress)
                staticcall USDTAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1033 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1041 = mem[_1033]
                if mem[_1033]:
                    mem[mem[64] + 4] = tokenAddr
                    mem[mem[64] + 36] = _1041
                    require ext_code.size(USDTAddress)
                    call USDTAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args tokenAddr, _1041
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1071 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1071] == bool(mem[_1071])
            else:
                mem[mem[64] + 4] = tokenAddr
                mem[mem[64] + 36] = _1011
                require ext_code.size(sub_efc96adaAddress)
                call sub_efc96adaAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args tokenAddr, _1011
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1034 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1034] == bool(mem[_1034])
                mem[mem[64] + 4] = this.address
                require ext_code.size(USDTAddress)
                staticcall USDTAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1075 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1083 = mem[_1075]
                if mem[_1075]:
                    mem[mem[64] + 4] = tokenAddr
                    mem[mem[64] + 36] = _1083
                    require ext_code.size(USDTAddress)
                    call USDTAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args tokenAddr, _1083
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1111 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1111] == bool(mem[_1111])
            emit SwapAndLiquify(Mask(255, 1, arg1), _931 - ext_call.return_data[0], arg1 - (arg1 / 2));
        else:
            require return_data.size >= 32
            if not mem[324]:
                revert with 0, 
                            32,
                            42,
                            0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 403 len 22]
            if arg1 / 2 > arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            mem[ceil32(return_data.size) + 297] = this.address
            require ext_code.size(USDTAddress)
            staticcall USDTAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[ceil32(return_data.size) + 293] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 293] = 2
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 325] = sub_efc96adaAddress
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 357] = USDTAddress
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 393] = sub_319fad09Address
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 425] = arg1 / 2
            require ext_code.size(sub_efc96adaAddress)
            call sub_efc96adaAddress.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args sub_319fad09Address, arg1 / 2
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 389] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 389] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 393] = arg1 / 2
            mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 425] = 0
            mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 457] = 160
            mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 553] = 2
            idx = 0
            s = ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 585
            t = ceil32(return_data.size) + ceil32(return_data.size) + 325
            while idx < mem[ceil32(return_data.size) + ceil32(return_data.size) + 293]:
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 489] = this.address
            mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 521] = block.timestamp
            require ext_code.size(sub_319fad09Address)
            call sub_319fad09Address.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args Mask(255, 1, arg1), 0, 160, address(this.address), block.timestamp, mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 553 len (32 * mem[ceil32(return_data.size) + ceil32(return_data.size) + 293]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 389 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 389
            require return_data.size >= 32
            _692 = mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 389 len 4], Mask(224, 32, arg1) >> 32
            require mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 389 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
            require ceil32(return_data.size) + (2 * ceil32(return_data.size)) + mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 389 len 4], Mask(224, 32, arg1) >> 32 + 420 < ceil32(return_data.size) + (2 * ceil32(return_data.size)) + return_data.size + 389
            _696 = mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 389 len 4], Mask(224, 32, arg1) >> 32 + 389]
            require mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 389 len 4], Mask(224, 32, arg1) >> 32 + 389] <= test266151307()
            require ceil32(return_data.size) + (4 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 389 len 4], Mask(224, 32, arg1) >> 32 + 389]) + 421 <= test266151307() and (32 * mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 389 len 4], Mask(224, 32, arg1) >> 32 + 389]) + 32 >= 0
            mem[64] = ceil32(return_data.size) + (4 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 389 len 4], Mask(224, 32, arg1) >> 32 + 389]) + 421
            mem[ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 389] = mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 389 len 4], Mask(224, 32, arg1) >> 32 + 389]
            require return_data.size >= _692 + (32 * _696) + 32
            mem[ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 421 len 32 * _696] = mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + _692 + 421 len 32 * _696]
            mem[mem[64] + 4] = this.address
            require ext_code.size(USDTAddress)
            staticcall USDTAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _928 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _932 = mem[_928]
            if ext_call.return_data[0] > mem[_928]:
                revert with 0, 'SafeMath: subtraction overflow'
            mem[mem[64] + 4] = sub_319fad09Address
            mem[mem[64] + 36] = _932 - ext_call.return_data[0]
            require ext_code.size(sub_efc96adaAddress)
            call sub_efc96adaAddress.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args sub_319fad09Address, _932 - ext_call.return_data[0]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _952 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_952] == bool(mem[_952])
            mem[mem[64] + 4] = sub_319fad09Address
            mem[mem[64] + 36] = arg1 - (arg1 / 2)
            require ext_code.size(USDTAddress)
            call USDTAddress.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args sub_319fad09Address, arg1 - (arg1 / 2)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _968 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_968] == bool(mem[_968])
            mem[mem[64] + 68] = arg1 - (arg1 / 2)
            mem[mem[64] + 100] = _932 - ext_call.return_data[0]
            mem[mem[64] + 132] = 0
            mem[mem[64] + 164] = 0
            mem[mem[64] + 196] = owner
            mem[mem[64] + 228] = block.timestamp
            require ext_code.size(sub_319fad09Address)
            call sub_319fad09Address.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                 gas gas_remaining wei
                args USDTAddress, sub_efc96adaAddress, arg1 - (arg1 / 2), _932 - ext_call.return_data[0], 0, 0, owner, block.timestamp
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            mem[mem[64] + 4] = this.address
            require ext_code.size(sub_efc96adaAddress)
            staticcall sub_efc96adaAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1008 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1012 = mem[_1008]
            if not mem[_1008]:
                mem[mem[64] + 4] = this.address
                require ext_code.size(USDTAddress)
                staticcall USDTAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1035 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1043 = mem[_1035]
                if mem[_1035]:
                    mem[mem[64] + 4] = tokenAddr
                    mem[mem[64] + 36] = _1043
                    require ext_code.size(USDTAddress)
                    call USDTAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args tokenAddr, _1043
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1072 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1072] == bool(mem[_1072])
            else:
                mem[mem[64] + 4] = tokenAddr
                mem[mem[64] + 36] = _1012
                require ext_code.size(sub_efc96adaAddress)
                call sub_efc96adaAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args tokenAddr, _1012
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1036 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1036] == bool(mem[_1036])
                mem[mem[64] + 4] = this.address
                require ext_code.size(USDTAddress)
                staticcall USDTAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1076 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1084 = mem[_1076]
                if mem[_1076]:
                    mem[mem[64] + 4] = tokenAddr
                    mem[mem[64] + 36] = _1084
                    require ext_code.size(USDTAddress)
                    call USDTAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args tokenAddr, _1084
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1112 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1112] == bool(mem[_1112])
            emit SwapAndLiquify(Mask(255, 1, arg1), _932 - ext_call.return_data[0], arg1 - (arg1 / 2));
}

function sub_690cae20(?) payable {
    require calldata.size - 4 >= 32
    mem[132] = msg.sender
    mem[164] = this.address
    mem[196] = arg1
    mem[96] = 100
    mem[132 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[128 len 4] = unknown_0x23b872dd(?????)
    mem[228] = 32
    mem[260] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
    if not ext_code.size(USDTAddress):
        revert with 0, 'Address: call to non-contract'
    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
    mem[416 len 4] = 0
    call USDTAddress with:
         gas gas_remaining wei
        args Mask(224, 32, arg1) << 480, mem[388 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 
                        32,
                        42,
                        0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[402 len 14],
                        0,
                        mem[420 len 4]
        if arg1 / 2 > arg1:
            revert with 0, 'SafeMath: subtraction overflow'
        mem[296] = this.address
        require ext_code.size(sub_efc96adaAddress)
        staticcall sub_efc96adaAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[292] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[ceil32(return_data.size) + 292] = 2
        mem[ceil32(return_data.size) + 324] = USDTAddress
        mem[ceil32(return_data.size) + 356] = sub_efc96adaAddress
        mem[ceil32(return_data.size) + 392] = sub_319fad09Address
        mem[ceil32(return_data.size) + 424] = arg1 / 2
        require ext_code.size(USDTAddress)
        call USDTAddress.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args sub_319fad09Address, arg1 / 2
        mem[ceil32(return_data.size) + 388] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[(2 * ceil32(return_data.size)) + 388] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(2 * ceil32(return_data.size)) + 392] = arg1 / 2
        mem[(2 * ceil32(return_data.size)) + 424] = 0
        mem[(2 * ceil32(return_data.size)) + 456] = 160
        mem[(2 * ceil32(return_data.size)) + 552] = 2
        idx = 0
        s = (2 * ceil32(return_data.size)) + 584
        t = ceil32(return_data.size) + 324
        while idx < mem[ceil32(return_data.size) + 292]:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(2 * ceil32(return_data.size)) + 488] = this.address
        mem[(2 * ceil32(return_data.size)) + 520] = block.timestamp
        require ext_code.size(sub_319fad09Address)
        call sub_319fad09Address.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args Mask(255, 1, arg1), 0, 160, address(this.address), block.timestamp, mem[(2 * ceil32(return_data.size)) + 552 len (32 * mem[ceil32(return_data.size) + 292]) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(2 * ceil32(return_data.size)) + 388 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (4 * ceil32(return_data.size)) + 388
        require return_data.size >= 32
        _690 = mem[(2 * ceil32(return_data.size)) + 388 len 4], Mask(224, 32, arg1) >> 32
        require mem[(2 * ceil32(return_data.size)) + 388 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
        require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 388 len 4], Mask(224, 32, arg1) >> 32 + 419 < (2 * ceil32(return_data.size)) + return_data.size + 388
        _694 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 388 len 4], Mask(224, 32, arg1) >> 32 + 388]
        require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 388 len 4], Mask(224, 32, arg1) >> 32 + 388] <= test266151307()
        require (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 388 len 4], Mask(224, 32, arg1) >> 32 + 388]) + 420 <= test266151307() and (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 388 len 4], Mask(224, 32, arg1) >> 32 + 388]) + 32 >= 0
        mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 388 len 4], Mask(224, 32, arg1) >> 32 + 388]) + 420
        mem[(4 * ceil32(return_data.size)) + 388] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 388 len 4], Mask(224, 32, arg1) >> 32 + 388]
        require return_data.size >= _690 + (32 * _694) + 32
        mem[(4 * ceil32(return_data.size)) + 420 len 32 * _694] = mem[(2 * ceil32(return_data.size)) + _690 + 420 len 32 * _694]
        mem[mem[64] + 4] = this.address
        require ext_code.size(sub_efc96adaAddress)
        staticcall sub_efc96adaAddress.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _926 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _930 = mem[_926]
        if ext_call.return_data[0] > mem[_926]:
            revert with 0, 'SafeMath: subtraction overflow'
        mem[mem[64] + 4] = sub_319fad09Address
        mem[mem[64] + 36] = _930 - ext_call.return_data[0]
        require ext_code.size(sub_efc96adaAddress)
        call sub_efc96adaAddress.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args sub_319fad09Address, _930 - ext_call.return_data[0]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _950 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_950] == bool(mem[_950])
        mem[mem[64] + 4] = sub_319fad09Address
        mem[mem[64] + 36] = arg1 - (arg1 / 2)
        require ext_code.size(USDTAddress)
        call USDTAddress.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args sub_319fad09Address, arg1 - (arg1 / 2)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _966 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_966] == bool(mem[_966])
        mem[mem[64] + 68] = arg1 - (arg1 / 2)
        mem[mem[64] + 100] = _930 - ext_call.return_data[0]
        mem[mem[64] + 132] = 0
        mem[mem[64] + 164] = 0
        mem[mem[64] + 196] = owner
        mem[mem[64] + 228] = block.timestamp
        require ext_code.size(sub_319fad09Address)
        call sub_319fad09Address.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
             gas gas_remaining wei
            args USDTAddress, sub_efc96adaAddress, arg1 - (arg1 / 2), _930 - ext_call.return_data[0], 0, 0, owner, block.timestamp
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        mem[mem[64] + 4] = this.address
        require ext_code.size(sub_efc96adaAddress)
        staticcall sub_efc96adaAddress.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1006 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1010 = mem[_1006]
        if not mem[_1006]:
            mem[mem[64] + 4] = this.address
            require ext_code.size(USDTAddress)
            staticcall USDTAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1031 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1039 = mem[_1031]
            if mem[_1031]:
                mem[mem[64] + 4] = tokenAddr
                mem[mem[64] + 36] = _1039
                require ext_code.size(USDTAddress)
                call USDTAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args tokenAddr, _1039
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1070 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1070] == bool(mem[_1070])
        else:
            mem[mem[64] + 4] = tokenAddr
            mem[mem[64] + 36] = _1010
            require ext_code.size(sub_efc96adaAddress)
            call sub_efc96adaAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args tokenAddr, _1010
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1032 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1032] == bool(mem[_1032])
            mem[mem[64] + 4] = this.address
            require ext_code.size(USDTAddress)
            staticcall USDTAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1074 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1082 = mem[_1074]
            if mem[_1074]:
                mem[mem[64] + 4] = tokenAddr
                mem[mem[64] + 36] = _1082
                require ext_code.size(USDTAddress)
                call USDTAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args tokenAddr, _1082
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1110 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1110] == bool(mem[_1110])
        emit SwapAndLiquify(Mask(255, 1, arg1), _930 - ext_call.return_data[0], arg1 - (arg1 / 2));
    else:
        mem[292] = return_data.size
        mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if not return_data.size:
            if arg1 / 2 > arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            mem[ceil32(return_data.size) + 297] = this.address
            require ext_code.size(sub_efc96adaAddress)
            staticcall sub_efc96adaAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[ceil32(return_data.size) + 293] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 293] = 2
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 325] = USDTAddress
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 357] = sub_efc96adaAddress
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 393] = sub_319fad09Address
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 425] = arg1 / 2
            require ext_code.size(USDTAddress)
            call USDTAddress.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args sub_319fad09Address, arg1 / 2
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 389] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 389] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 393] = arg1 / 2
            mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 425] = 0
            mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 457] = 160
            mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 553] = 2
            idx = 0
            s = ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 585
            t = ceil32(return_data.size) + ceil32(return_data.size) + 325
            while idx < mem[ceil32(return_data.size) + ceil32(return_data.size) + 293]:
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 489] = this.address
            mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 521] = block.timestamp
            require ext_code.size(sub_319fad09Address)
            call sub_319fad09Address.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args Mask(255, 1, arg1), 0, 160, address(this.address), block.timestamp, mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 553 len (32 * mem[ceil32(return_data.size) + ceil32(return_data.size) + 293]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 389 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 389
            require return_data.size >= 32
            _691 = mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 389 len 4], Mask(224, 32, arg1) >> 32
            require mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 389 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
            require ceil32(return_data.size) + (2 * ceil32(return_data.size)) + mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 389 len 4], Mask(224, 32, arg1) >> 32 + 420 < ceil32(return_data.size) + (2 * ceil32(return_data.size)) + return_data.size + 389
            _695 = mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 389 len 4], Mask(224, 32, arg1) >> 32 + 389]
            require mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 389 len 4], Mask(224, 32, arg1) >> 32 + 389] <= test266151307()
            require ceil32(return_data.size) + (4 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 389 len 4], Mask(224, 32, arg1) >> 32 + 389]) + 421 <= test266151307() and (32 * mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 389 len 4], Mask(224, 32, arg1) >> 32 + 389]) + 32 >= 0
            mem[64] = ceil32(return_data.size) + (4 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 389 len 4], Mask(224, 32, arg1) >> 32 + 389]) + 421
            mem[ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 389] = mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 389 len 4], Mask(224, 32, arg1) >> 32 + 389]
            require return_data.size >= _691 + (32 * _695) + 32
            mem[ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 421 len 32 * _695] = mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + _691 + 421 len 32 * _695]
            mem[mem[64] + 4] = this.address
            require ext_code.size(sub_efc96adaAddress)
            staticcall sub_efc96adaAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _927 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _931 = mem[_927]
            if ext_call.return_data[0] > mem[_927]:
                revert with 0, 'SafeMath: subtraction overflow'
            mem[mem[64] + 4] = sub_319fad09Address
            mem[mem[64] + 36] = _931 - ext_call.return_data[0]
            require ext_code.size(sub_efc96adaAddress)
            call sub_efc96adaAddress.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args sub_319fad09Address, _931 - ext_call.return_data[0]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _951 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_951] == bool(mem[_951])
            mem[mem[64] + 4] = sub_319fad09Address
            mem[mem[64] + 36] = arg1 - (arg1 / 2)
            require ext_code.size(USDTAddress)
            call USDTAddress.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args sub_319fad09Address, arg1 - (arg1 / 2)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _967 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_967] == bool(mem[_967])
            mem[mem[64] + 68] = arg1 - (arg1 / 2)
            mem[mem[64] + 100] = _931 - ext_call.return_data[0]
            mem[mem[64] + 132] = 0
            mem[mem[64] + 164] = 0
            mem[mem[64] + 196] = owner
            mem[mem[64] + 228] = block.timestamp
            require ext_code.size(sub_319fad09Address)
            call sub_319fad09Address.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                 gas gas_remaining wei
                args USDTAddress, sub_efc96adaAddress, arg1 - (arg1 / 2), _931 - ext_call.return_data[0], 0, 0, owner, block.timestamp
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            mem[mem[64] + 4] = this.address
            require ext_code.size(sub_efc96adaAddress)
            staticcall sub_efc96adaAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1007 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1011 = mem[_1007]
            if not mem[_1007]:
                mem[mem[64] + 4] = this.address
                require ext_code.size(USDTAddress)
                staticcall USDTAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1033 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1041 = mem[_1033]
                if mem[_1033]:
                    mem[mem[64] + 4] = tokenAddr
                    mem[mem[64] + 36] = _1041
                    require ext_code.size(USDTAddress)
                    call USDTAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args tokenAddr, _1041
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1071 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1071] == bool(mem[_1071])
            else:
                mem[mem[64] + 4] = tokenAddr
                mem[mem[64] + 36] = _1011
                require ext_code.size(sub_efc96adaAddress)
                call sub_efc96adaAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args tokenAddr, _1011
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1034 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1034] == bool(mem[_1034])
                mem[mem[64] + 4] = this.address
                require ext_code.size(USDTAddress)
                staticcall USDTAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1075 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1083 = mem[_1075]
                if mem[_1075]:
                    mem[mem[64] + 4] = tokenAddr
                    mem[mem[64] + 36] = _1083
                    require ext_code.size(USDTAddress)
                    call USDTAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args tokenAddr, _1083
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1111 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1111] == bool(mem[_1111])
            emit SwapAndLiquify(Mask(255, 1, arg1), _931 - ext_call.return_data[0], arg1 - (arg1 / 2));
        else:
            require return_data.size >= 32
            if not mem[324]:
                revert with 0, 
                            32,
                            42,
                            0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 403 len 22]
            if arg1 / 2 > arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            mem[ceil32(return_data.size) + 297] = this.address
            require ext_code.size(sub_efc96adaAddress)
            staticcall sub_efc96adaAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[ceil32(return_data.size) + 293] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 293] = 2
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 325] = USDTAddress
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 357] = sub_efc96adaAddress
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 393] = sub_319fad09Address
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 425] = arg1 / 2
            require ext_code.size(USDTAddress)
            call USDTAddress.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args sub_319fad09Address, arg1 / 2
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 389] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 389] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 393] = arg1 / 2
            mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 425] = 0
            mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 457] = 160
            mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 553] = 2
            idx = 0
            s = ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 585
            t = ceil32(return_data.size) + ceil32(return_data.size) + 325
            while idx < mem[ceil32(return_data.size) + ceil32(return_data.size) + 293]:
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 489] = this.address
            mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 521] = block.timestamp
            require ext_code.size(sub_319fad09Address)
            call sub_319fad09Address.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args Mask(255, 1, arg1), 0, 160, address(this.address), block.timestamp, mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 553 len (32 * mem[ceil32(return_data.size) + ceil32(return_data.size) + 293]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 389 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 389
            require return_data.size >= 32
            _692 = mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 389 len 4], Mask(224, 32, arg1) >> 32
            require mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 389 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
            require ceil32(return_data.size) + (2 * ceil32(return_data.size)) + mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 389 len 4], Mask(224, 32, arg1) >> 32 + 420 < ceil32(return_data.size) + (2 * ceil32(return_data.size)) + return_data.size + 389
            _696 = mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 389 len 4], Mask(224, 32, arg1) >> 32 + 389]
            require mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 389 len 4], Mask(224, 32, arg1) >> 32 + 389] <= test266151307()
            require ceil32(return_data.size) + (4 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 389 len 4], Mask(224, 32, arg1) >> 32 + 389]) + 421 <= test266151307() and (32 * mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 389 len 4], Mask(224, 32, arg1) >> 32 + 389]) + 32 >= 0
            mem[64] = ceil32(return_data.size) + (4 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 389 len 4], Mask(224, 32, arg1) >> 32 + 389]) + 421
            mem[ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 389] = mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 389 len 4], Mask(224, 32, arg1) >> 32 + 389]
            require return_data.size >= _692 + (32 * _696) + 32
            mem[ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 421 len 32 * _696] = mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + _692 + 421 len 32 * _696]
            mem[mem[64] + 4] = this.address
            require ext_code.size(sub_efc96adaAddress)
            staticcall sub_efc96adaAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _928 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _932 = mem[_928]
            if ext_call.return_data[0] > mem[_928]:
                revert with 0, 'SafeMath: subtraction overflow'
            mem[mem[64] + 4] = sub_319fad09Address
            mem[mem[64] + 36] = _932 - ext_call.return_data[0]
            require ext_code.size(sub_efc96adaAddress)
            call sub_efc96adaAddress.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args sub_319fad09Address, _932 - ext_call.return_data[0]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _952 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_952] == bool(mem[_952])
            mem[mem[64] + 4] = sub_319fad09Address
            mem[mem[64] + 36] = arg1 - (arg1 / 2)
            require ext_code.size(USDTAddress)
            call USDTAddress.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args sub_319fad09Address, arg1 - (arg1 / 2)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _968 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_968] == bool(mem[_968])
            mem[mem[64] + 68] = arg1 - (arg1 / 2)
            mem[mem[64] + 100] = _932 - ext_call.return_data[0]
            mem[mem[64] + 132] = 0
            mem[mem[64] + 164] = 0
            mem[mem[64] + 196] = owner
            mem[mem[64] + 228] = block.timestamp
            require ext_code.size(sub_319fad09Address)
            call sub_319fad09Address.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                 gas gas_remaining wei
                args USDTAddress, sub_efc96adaAddress, arg1 - (arg1 / 2), _932 - ext_call.return_data[0], 0, 0, owner, block.timestamp
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            mem[mem[64] + 4] = this.address
            require ext_code.size(sub_efc96adaAddress)
            staticcall sub_efc96adaAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1008 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1012 = mem[_1008]
            if not mem[_1008]:
                mem[mem[64] + 4] = this.address
                require ext_code.size(USDTAddress)
                staticcall USDTAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1035 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1043 = mem[_1035]
                if mem[_1035]:
                    mem[mem[64] + 4] = tokenAddr
                    mem[mem[64] + 36] = _1043
                    require ext_code.size(USDTAddress)
                    call USDTAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args tokenAddr, _1043
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1072 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1072] == bool(mem[_1072])
            else:
                mem[mem[64] + 4] = tokenAddr
                mem[mem[64] + 36] = _1012
                require ext_code.size(sub_efc96adaAddress)
                call sub_efc96adaAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args tokenAddr, _1012
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1036 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1036] == bool(mem[_1036])
                mem[mem[64] + 4] = this.address
                require ext_code.size(USDTAddress)
                staticcall USDTAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1076 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1084 = mem[_1076]
                if mem[_1076]:
                    mem[mem[64] + 4] = tokenAddr
                    mem[mem[64] + 36] = _1084
                    require ext_code.size(USDTAddress)
                    call USDTAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args tokenAddr, _1084
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1112 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1112] == bool(mem[_1112])
            emit SwapAndLiquify(Mask(255, 1, arg1), _932 - ext_call.return_data[0], arg1 - (arg1 / 2));
}



}
