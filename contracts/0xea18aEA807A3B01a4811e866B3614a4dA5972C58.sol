contract main {




// =====================  Runtime code  =====================


uint8 stor0; offset 160
address operatorAddress;
uint256 stor0;
address sub_57601ca3Address;
address bondAddress;
address wbnbAddress;
address cakeAddress;
address sub_dbcc8a55Address;
address sub_46cf43b1Address;
address treasuryAddress;
address priceCheckerAddress;

function isInitialized() payable {
    return bool(uint8(stor0.field_160))
}

function sub_46cf43b1(?) payable {
    return sub_46cf43b1Address
}

function operator() payable {
    return operatorAddress
}

function sub_57601ca3(?) payable {
    return sub_57601ca3Address
}

function treasury() payable {
    return treasuryAddress
}

function bond() payable {
    return bondAddress
}

function wbnb() payable {
    return wbnbAddress
}

function sub_dbcc8a55(?) payable {
    return sub_dbcc8a55Address
}

function cake() payable {
    return cakeAddress
}

function priceChecker() payable {
    return priceCheckerAddress
}

function _fallback() payable {
    revert
}

function sub_43e6cc22(?) payable {
    require ext_code.size(priceCheckerAddress)
    staticcall priceCheckerAddress.0x43e6cc22 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_c52159d4(?) payable {
    require ext_code.size(priceCheckerAddress)
    staticcall priceCheckerAddress.0xc52159d4 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_7db2262b(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(priceCheckerAddress)
    staticcall priceCheckerAddress.0x7db2262b with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_c24e2192(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(priceCheckerAddress)
    staticcall priceCheckerAddress.0xc24e2192 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_94f10dd7(?) payable {
    require calldata.size - 4 >= 32
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x77476f6c6453746174733a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[201 len 27]
    priceCheckerAddress = arg1
}

function setOperator(address arg1) payable {
    require calldata.size - 4 >= 32
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x77476f6c6453746174733a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[201 len 27]
    operatorAddress = arg1
}

function setTreasury(address arg1) payable {
    require calldata.size - 4 >= 32
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x77476f6c6453746174733a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[201 len 27]
    treasuryAddress = arg1
}

function initialize(address arg1, address arg2, address arg3, address arg4, address arg5, address arg6, address arg7, address arg8) payable {
    require calldata.size - 4 >= 256
    if uint8(stor0.field_160):
        revert with 0, 'GoldStats: already initialized'
    sub_57601ca3Address = arg1
    bondAddress = arg2
    wbnbAddress = arg3
    cakeAddress = arg4
    sub_dbcc8a55Address = arg5
    sub_46cf43b1Address = arg6
    treasuryAddress = arg7
    priceCheckerAddress = arg8
    uint256(stor0.field_0) = msg.sender or 0x10000000000000000000000000000000000000000 or Mask(88, 168, uint256(stor0.field_0)) or Mask(96, 160, operatorAddress)
    emit Initialized(block.timestamp, msg.sender);
}

function rescueStuckErc20(address arg1) payable {
    require calldata.size - 4 >= 32
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x77476f6c6453746174733a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[201 len 27]
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args operatorAddress, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function addresses() payable {
    require ext_code.size(treasuryAddress)
    staticcall treasuryAddress.'h23S' with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(treasuryAddress)
    staticcall treasuryAddress.0xe4242d89 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(treasuryAddress)
    staticcall treasuryAddress.0x39012e48 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(treasuryAddress)
    staticcall treasuryAddress.safeFund() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return sub_57601ca3Address, 
           bondAddress,
           wbnbAddress,
           cakeAddress,
           sub_dbcc8a55Address,
           sub_46cf43b1Address,
           treasuryAddress,
           address(ext_call.return_data[0]),
           address(ext_call.return_data[0]),
           address(ext_call.return_data[0]),
           address(ext_call.return_data[0])
}

function sub_5a340c05(?) payable {
    require ext_code.size(treasuryAddress)
    staticcall treasuryAddress.safeFund() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_57601ca3Address)
    staticcall sub_57601ca3Address.0x70a08231 with:
            gas gas_remaining wei
           args address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(wbnbAddress)
    staticcall wbnbAddress.0x70a08231 with:
            gas gas_remaining wei
           args address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(cakeAddress)
    staticcall cakeAddress.0x70a08231 with:
            gas gas_remaining wei
           args address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(priceCheckerAddress)
    staticcall priceCheckerAddress.0x7db2262b with:
            gas gas_remaining wei
           args cakeAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(priceCheckerAddress)
        staticcall priceCheckerAddress.0x7db2262b with:
                gas gas_remaining wei
               args wbnbAddress
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            require ext_code.size(priceCheckerAddress)
            staticcall priceCheckerAddress.0x7db2262b with:
                    gas gas_remaining wei
                   args sub_57601ca3Address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                return 0
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
        else:
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            require ext_code.size(priceCheckerAddress)
            staticcall priceCheckerAddress.0x7db2262b with:
                    gas gas_remaining wei
                   args sub_57601ca3Address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) < ext_call.return_data[0] * ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                return ((ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]))
            if ext_call.return_data[0] * ext_call.return_data[0] < 0:
                revert with 0, 'SafeMath: addition overflow'
        if ext_call.return_data[0] * ext_call.return_data[0] < ext_call.return_data[0] * ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        return (ext_call.return_data[0] * ext_call.return_data[0])
    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    require ext_code.size(priceCheckerAddress)
    staticcall priceCheckerAddress.0x7db2262b with:
            gas gas_remaining wei
           args wbnbAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(priceCheckerAddress)
        staticcall priceCheckerAddress.0x7db2262b with:
                gas gas_remaining wei
               args sub_57601ca3Address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if ext_call.return_data[0] * ext_call.return_data[0] < 0:
                revert with 0, 'SafeMath: addition overflow'
            return (ext_call.return_data[0] * ext_call.return_data[0])
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if ext_call.return_data[0] * ext_call.return_data[0] < ext_call.return_data[0] * ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        if (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) < ext_call.return_data[0] * ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        return ((ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]))
    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    require ext_code.size(priceCheckerAddress)
    staticcall priceCheckerAddress.0x7db2262b with:
            gas gas_remaining wei
           args sub_57601ca3Address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if ext_call.return_data[0] * ext_call.return_data[0] < 0:
            revert with 0, 'SafeMath: addition overflow'
        if (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) < ext_call.return_data[0] * ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        return ((ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]))
    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) < ext_call.return_data[0] * ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    if ext_call.return_data[0] * ext_call.return_data[0] < 0:
        revert with 0, 'SafeMath: addition overflow'
    return ((ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]))
}

function sub_e0ca79e4(?) payable {
    require ext_code.size(priceCheckerAddress)
    staticcall priceCheckerAddress.0x7db2262b with:
            gas gas_remaining wei
           args sub_57601ca3Address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(treasuryAddress)
    staticcall treasuryAddress.'h23S' with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(priceCheckerAddress)
        staticcall priceCheckerAddress.0xc24e2192 with:
                gas gas_remaining wei
               args sub_dbcc8a55Address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(treasuryAddress)
        staticcall treasuryAddress.0xe4242d89 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            require ext_code.size(priceCheckerAddress)
            staticcall priceCheckerAddress.0xc24e2192 with:
                    gas gas_remaining wei
                   args sub_46cf43b1Address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(treasuryAddress)
            staticcall treasuryAddress.0x39012e48 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                return 0
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 < 0:
                revert with 0, 'SafeMath: addition overflow'
            return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 < 0:
            revert with 0, 'SafeMath: addition overflow'
        require ext_code.size(priceCheckerAddress)
        staticcall priceCheckerAddress.0xc24e2192 with:
                gas gas_remaining wei
               args sub_46cf43b1Address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(treasuryAddress)
        staticcall treasuryAddress.0x39012e48 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if 2 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        return (2 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 < 0:
        revert with 0, 'SafeMath: addition overflow'
    require ext_code.size(priceCheckerAddress)
    staticcall priceCheckerAddress.0xc24e2192 with:
            gas gas_remaining wei
           args sub_dbcc8a55Address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(treasuryAddress)
    staticcall treasuryAddress.0xe4242d89 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        require ext_code.size(priceCheckerAddress)
        staticcall priceCheckerAddress.0xc24e2192 with:
                gas gas_remaining wei
               args sub_46cf43b1Address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(treasuryAddress)
        staticcall treasuryAddress.0x39012e48 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if 2 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        return (2 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if 2 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
        revert with 0, 'SafeMath: addition overflow'
    require ext_code.size(priceCheckerAddress)
    staticcall priceCheckerAddress.0xc24e2192 with:
            gas gas_remaining wei
           args sub_46cf43b1Address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(treasuryAddress)
    staticcall treasuryAddress.0x39012e48 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return (2 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 < 0:
        revert with 0, 'SafeMath: addition overflow'
    return (3 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
}

function sub_b8bafcb8(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(treasuryAddress)
    staticcall treasuryAddress.epoch() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(treasuryAddress)
    staticcall treasuryAddress.nextEpochPoint() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(treasuryAddress)
    staticcall treasuryAddress.0x7edd0f82 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(treasuryAddress)
    staticcall treasuryAddress.0x68323353 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(treasuryAddress)
    if ext_call.return_data[12 len 20] == arg1:
        staticcall treasuryAddress.0x6cc9ea08 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(arg1)
        staticcall arg1.share() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(priceCheckerAddress)
        staticcall priceCheckerAddress.0x7db2262b with:
                gas gas_remaining wei
               args address(ext_call.return_data[0])
    else:
        staticcall treasuryAddress.0xe4242d89 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(treasuryAddress)
        if ext_call.return_data[12 len 20] == arg1:
            staticcall treasuryAddress.0x286e98b3 with:
                    gas gas_remaining wei
        else:
            staticcall treasuryAddress.0x39012e48 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[12 len 20] != arg1:
                return ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0], 0, 0, 0, 0, 0, 0, 0
            require ext_code.size(treasuryAddress)
            staticcall treasuryAddress.0xac99f39c with:
                    gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(arg1)
        staticcall arg1.share() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(priceCheckerAddress)
        staticcall priceCheckerAddress.0xc24e2192 with:
                gas gas_remaining wei
               args address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return ext_call.return_data[0], 
               ext_call.return_data[0],
               ext_call.return_data[0],
               address(ext_call.return_data[0]),
               ext_call.return_data[0],
               0,
               0,
               0,
               0,
               0
    require ext_code.size(arg1)
    staticcall arg1.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(treasuryAddress)
        staticcall treasuryAddress.0x55ee1031 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0]
                if sub_57601ca3Address == address(ext_call.return_data[0]):
                    if not 0 / ext_call.return_data[0]:
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            return ext_call.return_data[0], 
                                   ext_call.return_data[0],
                                   ext_call.return_data[0],
                                   address(ext_call.return_data[0]),
                                   ext_call.return_data[0],
                                   ext_call.return_data[0],
                                   0,
                                   0,
                                   0 / ext_call.return_data[0],
                                   0 / ext_call.return_data[0]
                    else:
                        if 1095 * 10^18 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != 1095 * 10^18:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            return ext_call.return_data[0], 
                                   ext_call.return_data[0],
                                   ext_call.return_data[0],
                                   address(ext_call.return_data[0]),
                                   ext_call.return_data[0],
                                   ext_call.return_data[0],
                                   0,
                                   0,
                                   0 / ext_call.return_data[0],
                                   1095 * 10^18 * 0 / ext_call.return_data[0] / ext_call.return_data[0]
                    ('iszero', ('ext_call.return_data', 0, 32))
                    revert
                require ext_code.size(priceCheckerAddress)
                staticcall priceCheckerAddress.0x7db2262b with:
                        gas gas_remaining wei
                       args sub_57601ca3Address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 0 / ext_call.return_data[0]:
                    if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if ext_call.return_data[0] * 0 / ext_call.return_data[0]:
                        if 1095 * 10^18 * ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0] * 0 / ext_call.return_data[0] != 1095 * 10^18:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
        else:
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if not ext_call.return_data[0] * ext_call.return_data[0] / 10000:
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if sub_57601ca3Address == address(ext_call.return_data[0]):
                        if not 0 / ext_call.return_data[0]:
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if ext_call.return_data[0]:
                                return ext_call.return_data[0], 
                                       ext_call.return_data[0],
                                       ext_call.return_data[0],
                                       address(ext_call.return_data[0]),
                                       ext_call.return_data[0],
                                       ext_call.return_data[0],
                                       0,
                                       ext_call.return_data[0] * ext_call.return_data[0] / 10000,
                                       0 / ext_call.return_data[0],
                                       0 / ext_call.return_data[0]
                        else:
                            if 1095 * 10^18 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != 1095 * 10^18:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if ext_call.return_data[0]:
                                return ext_call.return_data[0], 
                                       ext_call.return_data[0],
                                       ext_call.return_data[0],
                                       address(ext_call.return_data[0]),
                                       ext_call.return_data[0],
                                       ext_call.return_data[0],
                                       0,
                                       ext_call.return_data[0] * ext_call.return_data[0] / 10000,
                                       0 / ext_call.return_data[0],
                                       1095 * 10^18 * 0 / ext_call.return_data[0] / ext_call.return_data[0]
                        ('iszero', ('ext_call.return_data', 0, 32))
                        revert
                    require ext_code.size(priceCheckerAddress)
                    staticcall priceCheckerAddress.0x7db2262b with:
                            gas gas_remaining wei
                           args sub_57601ca3Address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 0 / ext_call.return_data[0]:
                        if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if ext_call.return_data[0] * 0 / ext_call.return_data[0]:
                            if 1095 * 10^18 * ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0] * 0 / ext_call.return_data[0] != 1095 * 10^18:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
            else:
                if 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10000 / ext_call.return_data[0] * ext_call.return_data[0] / 10000 != 10^18:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if sub_57601ca3Address == address(ext_call.return_data[0]):
                        if not 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10000 / ext_call.return_data[0]:
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if ext_call.return_data[0]:
                                return ext_call.return_data[0], 
                                       ext_call.return_data[0],
                                       ext_call.return_data[0],
                                       address(ext_call.return_data[0]),
                                       ext_call.return_data[0],
                                       ext_call.return_data[0],
                                       0,
                                       ext_call.return_data[0] * ext_call.return_data[0] / 10000,
                                       10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10000 / ext_call.return_data[0],
                                       0 / ext_call.return_data[0]
                        else:
                            if 1095 * 10^18 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10000 / ext_call.return_data[0] / 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10000 / ext_call.return_data[0] != 1095 * 10^18:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if ext_call.return_data[0]:
                                return ext_call.return_data[0], 
                                       ext_call.return_data[0],
                                       ext_call.return_data[0],
                                       address(ext_call.return_data[0]),
                                       ext_call.return_data[0],
                                       ext_call.return_data[0],
                                       0,
                                       ext_call.return_data[0] * ext_call.return_data[0] / 10000,
                                       10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10000 / ext_call.return_data[0],
                                       1095 * 10^18 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10000 / ext_call.return_data[0] / ext_call.return_data[0]
                        ('iszero', ('ext_call.return_data', 0, 32))
                        revert
                    require ext_code.size(priceCheckerAddress)
                    staticcall priceCheckerAddress.0x7db2262b with:
                            gas gas_remaining wei
                           args sub_57601ca3Address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10000 / ext_call.return_data[0]:
                        if ext_call.return_data[0] * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10000 / ext_call.return_data[0] / 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10000 / ext_call.return_data[0] != ext_call.return_data[0]:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if ext_call.return_data[0] * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10000 / ext_call.return_data[0]:
                            if 1095 * 10^18 * ext_call.return_data[0] * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10000 / ext_call.return_data[0] / ext_call.return_data[0] * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10000 / ext_call.return_data[0] != 1095 * 10^18:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
        revert with 0, 'SafeMath: division by zero'
    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    require ext_code.size(treasuryAddress)
    staticcall treasuryAddress.0x55ee1031 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        if ext_call.return_data[0]:
            if sub_57601ca3Address == address(ext_call.return_data[0]):
                if not 0 / ext_call.return_data[0]:
                    if ext_call.return_data[0] <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        return ext_call.return_data[0], 
                               ext_call.return_data[0],
                               ext_call.return_data[0],
                               address(ext_call.return_data[0]),
                               ext_call.return_data[0],
                               ext_call.return_data[0],
                               ext_call.return_data[0] * ext_call.return_data[0] / 10^18,
                               0,
                               0 / ext_call.return_data[0],
                               0 / ext_call.return_data[0]
                else:
                    if 1095 * 10^18 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != 1095 * 10^18:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if ext_call.return_data[0] <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        return ext_call.return_data[0], 
                               ext_call.return_data[0],
                               ext_call.return_data[0],
                               address(ext_call.return_data[0]),
                               ext_call.return_data[0],
                               ext_call.return_data[0],
                               ext_call.return_data[0] * ext_call.return_data[0] / 10^18,
                               0,
                               0 / ext_call.return_data[0],
                               1095 * 10^18 * 0 / ext_call.return_data[0] / ext_call.return_data[0]
                ('iszero', ('ext_call.return_data', 0, 32))
            else:
                require ext_code.size(priceCheckerAddress)
                staticcall priceCheckerAddress.0x7db2262b with:
                        gas gas_remaining wei
                       args sub_57601ca3Address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not 0 / ext_call.return_data[0]:
                    if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    if ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                        return ext_call.return_data[0], 
                               ext_call.return_data[0],
                               ext_call.return_data[0],
                               address(ext_call.return_data[0]),
                               ext_call.return_data[0],
                               ext_call.return_data[0],
                               ext_call.return_data[0] * ext_call.return_data[0] / 10^18,
                               0,
                               0 / ext_call.return_data[0],
                               0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18
                else:
                    if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if not ext_call.return_data[0] * 0 / ext_call.return_data[0]:
                        if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        if ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                            return ext_call.return_data[0], 
                                   ext_call.return_data[0],
                                   ext_call.return_data[0],
                                   address(ext_call.return_data[0]),
                                   ext_call.return_data[0],
                                   ext_call.return_data[0],
                                   ext_call.return_data[0] * ext_call.return_data[0] / 10^18,
                                   0,
                                   0 / ext_call.return_data[0],
                                   0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18
                    else:
                        if 1095 * 10^18 * ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0] * 0 / ext_call.return_data[0] != 1095 * 10^18:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        if ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                            return ext_call.return_data[0], 
                                   ext_call.return_data[0],
                                   ext_call.return_data[0],
                                   address(ext_call.return_data[0]),
                                   ext_call.return_data[0],
                                   ext_call.return_data[0],
                                   ext_call.return_data[0] * ext_call.return_data[0] / 10^18,
                                   0,
                                   0 / ext_call.return_data[0],
                                   1095 * 10^18 * ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18
                ('iszero', ('div', ('mul', ('ext_call.return_data', 0, 32), ('ext_call.return_data', 0, 32)), 1000000000000000000))
    else:
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not ext_call.return_data[0] * ext_call.return_data[0] / 10000:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                if sub_57601ca3Address == address(ext_call.return_data[0]):
                    if not 0 / ext_call.return_data[0]:
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            return ext_call.return_data[0], 
                                   ext_call.return_data[0],
                                   ext_call.return_data[0],
                                   address(ext_call.return_data[0]),
                                   ext_call.return_data[0],
                                   ext_call.return_data[0],
                                   ext_call.return_data[0] * ext_call.return_data[0] / 10^18,
                                   ext_call.return_data[0] * ext_call.return_data[0] / 10000,
                                   0 / ext_call.return_data[0],
                                   0 / ext_call.return_data[0]
                    else:
                        if 1095 * 10^18 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != 1095 * 10^18:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            return ext_call.return_data[0], 
                                   ext_call.return_data[0],
                                   ext_call.return_data[0],
                                   address(ext_call.return_data[0]),
                                   ext_call.return_data[0],
                                   ext_call.return_data[0],
                                   ext_call.return_data[0] * ext_call.return_data[0] / 10^18,
                                   ext_call.return_data[0] * ext_call.return_data[0] / 10000,
                                   0 / ext_call.return_data[0],
                                   1095 * 10^18 * 0 / ext_call.return_data[0] / ext_call.return_data[0]
                    ('iszero', ('ext_call.return_data', 0, 32))
                else:
                    require ext_code.size(priceCheckerAddress)
                    staticcall priceCheckerAddress.0x7db2262b with:
                            gas gas_remaining wei
                           args sub_57601ca3Address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not 0 / ext_call.return_data[0]:
                        if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        if ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                            return ext_call.return_data[0], 
                                   ext_call.return_data[0],
                                   ext_call.return_data[0],
                                   address(ext_call.return_data[0]),
                                   ext_call.return_data[0],
                                   ext_call.return_data[0],
                                   ext_call.return_data[0] * ext_call.return_data[0] / 10^18,
                                   ext_call.return_data[0] * ext_call.return_data[0] / 10000,
                                   0 / ext_call.return_data[0],
                                   0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18
                    else:
                        if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if not ext_call.return_data[0] * 0 / ext_call.return_data[0]:
                            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                                return ext_call.return_data[0], 
                                       ext_call.return_data[0],
                                       ext_call.return_data[0],
                                       address(ext_call.return_data[0]),
                                       ext_call.return_data[0],
                                       ext_call.return_data[0],
                                       ext_call.return_data[0] * ext_call.return_data[0] / 10^18,
                                       ext_call.return_data[0] * ext_call.return_data[0] / 10000,
                                       0 / ext_call.return_data[0],
                                       0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18
                        else:
                            if 1095 * 10^18 * ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0] * 0 / ext_call.return_data[0] != 1095 * 10^18:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                                return ext_call.return_data[0], 
                                       ext_call.return_data[0],
                                       ext_call.return_data[0],
                                       address(ext_call.return_data[0]),
                                       ext_call.return_data[0],
                                       ext_call.return_data[0],
                                       ext_call.return_data[0] * ext_call.return_data[0] / 10^18,
                                       ext_call.return_data[0] * ext_call.return_data[0] / 10000,
                                       0 / ext_call.return_data[0],
                                       1095 * 10^18 * ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18
                    ('iszero', ('div', ('mul', ('ext_call.return_data', 0, 32), ('ext_call.return_data', 0, 32)), 1000000000000000000))
        else:
            if 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10000 / ext_call.return_data[0] * ext_call.return_data[0] / 10000 != 10^18:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                if sub_57601ca3Address == address(ext_call.return_data[0]):
                    if not 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10000 / ext_call.return_data[0]:
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            return ext_call.return_data[0], 
                                   ext_call.return_data[0],
                                   ext_call.return_data[0],
                                   address(ext_call.return_data[0]),
                                   ext_call.return_data[0],
                                   ext_call.return_data[0],
                                   ext_call.return_data[0] * ext_call.return_data[0] / 10^18,
                                   ext_call.return_data[0] * ext_call.return_data[0] / 10000,
                                   10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10000 / ext_call.return_data[0],
                                   0 / ext_call.return_data[0]
                    else:
                        if 1095 * 10^18 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10000 / ext_call.return_data[0] / 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10000 / ext_call.return_data[0] != 1095 * 10^18:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            return ext_call.return_data[0], 
                                   ext_call.return_data[0],
                                   ext_call.return_data[0],
                                   address(ext_call.return_data[0]),
                                   ext_call.return_data[0],
                                   ext_call.return_data[0],
                                   ext_call.return_data[0] * ext_call.return_data[0] / 10^18,
                                   ext_call.return_data[0] * ext_call.return_data[0] / 10000,
                                   10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10000 / ext_call.return_data[0],
                                   1095 * 10^18 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10000 / ext_call.return_data[0] / ext_call.return_data[0]
                    ('iszero', ('ext_call.return_data', 0, 32))
                else:
                    require ext_code.size(priceCheckerAddress)
                    staticcall priceCheckerAddress.0x7db2262b with:
                            gas gas_remaining wei
                           args sub_57601ca3Address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10000 / ext_call.return_data[0]:
                        if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        if ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                            return ext_call.return_data[0], 
                                   ext_call.return_data[0],
                                   ext_call.return_data[0],
                                   address(ext_call.return_data[0]),
                                   ext_call.return_data[0],
                                   ext_call.return_data[0],
                                   ext_call.return_data[0] * ext_call.return_data[0] / 10^18,
                                   ext_call.return_data[0] * ext_call.return_data[0] / 10000,
                                   10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10000 / ext_call.return_data[0],
                                   0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18
                    else:
                        if ext_call.return_data[0] * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10000 / ext_call.return_data[0] / 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10000 / ext_call.return_data[0] != ext_call.return_data[0]:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if not ext_call.return_data[0] * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10000 / ext_call.return_data[0]:
                            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                                return ext_call.return_data[0], 
                                       ext_call.return_data[0],
                                       ext_call.return_data[0],
                                       address(ext_call.return_data[0]),
                                       ext_call.return_data[0],
                                       ext_call.return_data[0],
                                       ext_call.return_data[0] * ext_call.return_data[0] / 10^18,
                                       ext_call.return_data[0] * ext_call.return_data[0] / 10000,
                                       10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10000 / ext_call.return_data[0],
                                       0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18
                        else:
                            if 1095 * 10^18 * ext_call.return_data[0] * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10000 / ext_call.return_data[0] / ext_call.return_data[0] * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10000 / ext_call.return_data[0] != 1095 * 10^18:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                                return ext_call.return_data[0], 
                                       ext_call.return_data[0],
                                       ext_call.return_data[0],
                                       address(ext_call.return_data[0]),
                                       ext_call.return_data[0],
                                       ext_call.return_data[0],
                                       ext_call.return_data[0] * ext_call.return_data[0] / 10^18,
                                       ext_call.return_data[0] * ext_call.return_data[0] / 10000,
                                       10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10000 / ext_call.return_data[0],
                                       1095 * 10^18 * ext_call.return_data[0] * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10000 / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18
                    ('iszero', ('div', ('mul', ('ext_call.return_data', 0, 32), ('ext_call.return_data', 0, 32)), 1000000000000000000))
    revert
}

function tokenStats() payable {
    require ext_code.size(priceCheckerAddress)
    staticcall priceCheckerAddress.0x7db2262b with:
            gas gas_remaining wei
           args sub_57601ca3Address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(priceCheckerAddress)
    staticcall priceCheckerAddress.0x7db2262b with:
            gas gas_remaining wei
           args wbnbAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(priceCheckerAddress)
    staticcall priceCheckerAddress.0x7db2262b with:
            gas gas_remaining wei
           args cakeAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(priceCheckerAddress)
    staticcall priceCheckerAddress.0xc24e2192 with:
            gas gas_remaining wei
           args sub_dbcc8a55Address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(priceCheckerAddress)
    staticcall priceCheckerAddress.0xc24e2192 with:
            gas gas_remaining wei
           args sub_46cf43b1Address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(priceCheckerAddress)
    staticcall priceCheckerAddress.0xc52159d4 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(treasuryAddress)
    staticcall treasuryAddress.getBondPremiumRate() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(treasuryAddress)
    staticcall treasuryAddress.0x5ee4c595 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < 10^18:
        require ext_code.size(sub_57601ca3Address)
        staticcall sub_57601ca3Address.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(bondAddress)
        staticcall bondAddress.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(treasuryAddress)
        staticcall treasuryAddress.safeFund() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_57601ca3Address)
        staticcall sub_57601ca3Address.0x70a08231 with:
                gas gas_remaining wei
               args address(ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(wbnbAddress)
        staticcall wbnbAddress.0x70a08231 with:
                gas gas_remaining wei
               args address(ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(cakeAddress)
        staticcall cakeAddress.0x70a08231 with:
                gas gas_remaining wei
               args address(ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(priceCheckerAddress)
        staticcall priceCheckerAddress.0x7db2262b with:
                gas gas_remaining wei
               args cakeAddress
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            require ext_code.size(priceCheckerAddress)
            staticcall priceCheckerAddress.0x7db2262b with:
                    gas gas_remaining wei
                   args wbnbAddress
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                require ext_code.size(priceCheckerAddress)
                staticcall priceCheckerAddress.0x7db2262b with:
                        gas gas_remaining wei
                       args sub_57601ca3Address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if ext_call.return_data[0] <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        return ext_call.return_data[0], 
                               ext_call.return_data[0],
                               ext_call.return_data[0],
                               ext_call.return_data[0],
                               ext_call.return_data[0],
                               ext_call.return_data[0],
                               ext_call.return_data[0],
                               0 / ext_call.return_data[0],
                               ext_call.return_data[0],
                               ext_call.return_data[0],
                               ext_call.return_data[0]
                else:
                    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if ext_call.return_data[0] * ext_call.return_data[0] < ext_call.return_data[0] * ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if ext_call.return_data[0] <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        return ext_call.return_data[0], 
                               ext_call.return_data[0],
                               ext_call.return_data[0],
                               ext_call.return_data[0],
                               ext_call.return_data[0],
                               ext_call.return_data[0],
                               ext_call.return_data[0],
                               ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0],
                               ext_call.return_data[0],
                               ext_call.return_data[0],
                               ext_call.return_data[0]
            else:
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                require ext_code.size(priceCheckerAddress)
                staticcall priceCheckerAddress.0x7db2262b with:
                        gas gas_remaining wei
                       args sub_57601ca3Address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) < ext_call.return_data[0] * ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if ext_call.return_data[0] <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        return ext_call.return_data[0], 
                               ext_call.return_data[0],
                               ext_call.return_data[0],
                               ext_call.return_data[0],
                               ext_call.return_data[0],
                               ext_call.return_data[0],
                               ext_call.return_data[0],
                               (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0],
                               ext_call.return_data[0],
                               ext_call.return_data[0],
                               ext_call.return_data[0]
                else:
                    if ext_call.return_data[0] * ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if ext_call.return_data[0] * ext_call.return_data[0] < ext_call.return_data[0] * ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if ext_call.return_data[0] <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        return ext_call.return_data[0], 
                               ext_call.return_data[0],
                               ext_call.return_data[0],
                               ext_call.return_data[0],
                               ext_call.return_data[0],
                               ext_call.return_data[0],
                               ext_call.return_data[0],
                               ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0],
                               ext_call.return_data[0],
                               ext_call.return_data[0],
                               ext_call.return_data[0]
        else:
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            require ext_code.size(priceCheckerAddress)
            staticcall priceCheckerAddress.0x7db2262b with:
                    gas gas_remaining wei
                   args wbnbAddress
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                require ext_code.size(priceCheckerAddress)
                staticcall priceCheckerAddress.0x7db2262b with:
                        gas gas_remaining wei
                       args sub_57601ca3Address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if ext_call.return_data[0] * ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if ext_call.return_data[0] <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        return ext_call.return_data[0], 
                               ext_call.return_data[0],
                               ext_call.return_data[0],
                               ext_call.return_data[0],
                               ext_call.return_data[0],
                               ext_call.return_data[0],
                               ext_call.return_data[0],
                               ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0],
                               ext_call.return_data[0],
                               ext_call.return_data[0],
                               ext_call.return_data[0]
                else:
                    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if ext_call.return_data[0] * ext_call.return_data[0] < ext_call.return_data[0] * ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) < ext_call.return_data[0] * ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if ext_call.return_data[0] <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        return ext_call.return_data[0], 
                               ext_call.return_data[0],
                               ext_call.return_data[0],
                               ext_call.return_data[0],
                               ext_call.return_data[0],
                               ext_call.return_data[0],
                               ext_call.return_data[0],
                               (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0],
                               ext_call.return_data[0],
                               ext_call.return_data[0],
                               ext_call.return_data[0]
            else:
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                require ext_code.size(priceCheckerAddress)
                staticcall priceCheckerAddress.0x7db2262b with:
                        gas gas_remaining wei
                       args sub_57601ca3Address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if ext_call.return_data[0] * ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) < ext_call.return_data[0] * ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if ext_call.return_data[0] <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        return ext_call.return_data[0], 
                               ext_call.return_data[0],
                               ext_call.return_data[0],
                               ext_call.return_data[0],
                               ext_call.return_data[0],
                               ext_call.return_data[0],
                               ext_call.return_data[0],
                               (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0],
                               ext_call.return_data[0],
                               ext_call.return_data[0],
                               ext_call.return_data[0]
                else:
                    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) < ext_call.return_data[0] * ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if ext_call.return_data[0] * ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if ext_call.return_data[0] <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        return ext_call.return_data[0], 
                               ext_call.return_data[0],
                               ext_call.return_data[0],
                               ext_call.return_data[0],
                               ext_call.return_data[0],
                               ext_call.return_data[0],
                               ext_call.return_data[0],
                               (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0],
                               ext_call.return_data[0],
                               ext_call.return_data[0],
                               ext_call.return_data[0]
    else:
        if not ext_call.return_data[0]:
            require ext_code.size(sub_57601ca3Address)
            staticcall sub_57601ca3Address.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(bondAddress)
            staticcall bondAddress.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(treasuryAddress)
            staticcall treasuryAddress.safeFund() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_57601ca3Address)
            staticcall sub_57601ca3Address.0x70a08231 with:
                    gas gas_remaining wei
                   args address(ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(wbnbAddress)
            staticcall wbnbAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args address(ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(cakeAddress)
            staticcall cakeAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args address(ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(priceCheckerAddress)
            staticcall priceCheckerAddress.0x7db2262b with:
                    gas gas_remaining wei
                   args cakeAddress
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                require ext_code.size(priceCheckerAddress)
                staticcall priceCheckerAddress.0x7db2262b with:
                        gas gas_remaining wei
                       args wbnbAddress
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    require ext_code.size(priceCheckerAddress)
                    staticcall priceCheckerAddress.0x7db2262b with:
                            gas gas_remaining wei
                           args sub_57601ca3Address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            return ext_call.return_data[0], 
                                   0,
                                   ext_call.return_data[0],
                                   ext_call.return_data[0],
                                   ext_call.return_data[0],
                                   ext_call.return_data[0],
                                   ext_call.return_data[0],
                                   0 / ext_call.return_data[0],
                                   ext_call.return_data[0],
                                   ext_call.return_data[0],
                                   ext_call.return_data[0]
                    else:
                        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if ext_call.return_data[0] * ext_call.return_data[0] < ext_call.return_data[0] * ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            return ext_call.return_data[0], 
                                   0,
                                   ext_call.return_data[0],
                                   ext_call.return_data[0],
                                   ext_call.return_data[0],
                                   ext_call.return_data[0],
                                   ext_call.return_data[0],
                                   ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0],
                                   ext_call.return_data[0],
                                   ext_call.return_data[0],
                                   ext_call.return_data[0]
                else:
                    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    require ext_code.size(priceCheckerAddress)
                    staticcall priceCheckerAddress.0x7db2262b with:
                            gas gas_remaining wei
                           args sub_57601ca3Address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) < ext_call.return_data[0] * ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            return ext_call.return_data[0], 
                                   0,
                                   ext_call.return_data[0],
                                   ext_call.return_data[0],
                                   ext_call.return_data[0],
                                   ext_call.return_data[0],
                                   ext_call.return_data[0],
                                   (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0],
                                   ext_call.return_data[0],
                                   ext_call.return_data[0],
                                   ext_call.return_data[0]
                    else:
                        if ext_call.return_data[0] * ext_call.return_data[0] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if ext_call.return_data[0] * ext_call.return_data[0] < ext_call.return_data[0] * ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            return ext_call.return_data[0], 
                                   0,
                                   ext_call.return_data[0],
                                   ext_call.return_data[0],
                                   ext_call.return_data[0],
                                   ext_call.return_data[0],
                                   ext_call.return_data[0],
                                   ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0],
                                   ext_call.return_data[0],
                                   ext_call.return_data[0],
                                   ext_call.return_data[0]
            else:
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                require ext_code.size(priceCheckerAddress)
                staticcall priceCheckerAddress.0x7db2262b with:
                        gas gas_remaining wei
                       args wbnbAddress
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    require ext_code.size(priceCheckerAddress)
                    staticcall priceCheckerAddress.0x7db2262b with:
                            gas gas_remaining wei
                           args sub_57601ca3Address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        if ext_call.return_data[0] * ext_call.return_data[0] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            return ext_call.return_data[0], 
                                   0,
                                   ext_call.return_data[0],
                                   ext_call.return_data[0],
                                   ext_call.return_data[0],
                                   ext_call.return_data[0],
                                   ext_call.return_data[0],
                                   ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0],
                                   ext_call.return_data[0],
                                   ext_call.return_data[0],
                                   ext_call.return_data[0]
                    else:
                        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if ext_call.return_data[0] * ext_call.return_data[0] < ext_call.return_data[0] * ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        if (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) < ext_call.return_data[0] * ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            return ext_call.return_data[0], 
                                   0,
                                   ext_call.return_data[0],
                                   ext_call.return_data[0],
                                   ext_call.return_data[0],
                                   ext_call.return_data[0],
                                   ext_call.return_data[0],
                                   (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0],
                                   ext_call.return_data[0],
                                   ext_call.return_data[0],
                                   ext_call.return_data[0]
                else:
                    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    require ext_code.size(priceCheckerAddress)
                    staticcall priceCheckerAddress.0x7db2262b with:
                            gas gas_remaining wei
                           args sub_57601ca3Address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        if ext_call.return_data[0] * ext_call.return_data[0] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) < ext_call.return_data[0] * ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            return ext_call.return_data[0], 
                                   0,
                                   ext_call.return_data[0],
                                   ext_call.return_data[0],
                                   ext_call.return_data[0],
                                   ext_call.return_data[0],
                                   ext_call.return_data[0],
                                   (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0],
                                   ext_call.return_data[0],
                                   ext_call.return_data[0],
                                   ext_call.return_data[0]
                    else:
                        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) < ext_call.return_data[0] * ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        if ext_call.return_data[0] * ext_call.return_data[0] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            return ext_call.return_data[0], 
                                   0,
                                   ext_call.return_data[0],
                                   ext_call.return_data[0],
                                   ext_call.return_data[0],
                                   ext_call.return_data[0],
                                   ext_call.return_data[0],
                                   (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0],
                                   ext_call.return_data[0],
                                   ext_call.return_data[0],
                                   ext_call.return_data[0]
        else:
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            require ext_code.size(sub_57601ca3Address)
            staticcall sub_57601ca3Address.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(bondAddress)
            staticcall bondAddress.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(treasuryAddress)
            staticcall treasuryAddress.safeFund() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_57601ca3Address)
            staticcall sub_57601ca3Address.0x70a08231 with:
                    gas gas_remaining wei
                   args address(ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(wbnbAddress)
            staticcall wbnbAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args address(ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(cakeAddress)
            staticcall cakeAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args address(ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(priceCheckerAddress)
            staticcall priceCheckerAddress.0x7db2262b with:
                    gas gas_remaining wei
                   args cakeAddress
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                require ext_code.size(priceCheckerAddress)
                staticcall priceCheckerAddress.0x7db2262b with:
                        gas gas_remaining wei
                       args wbnbAddress
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    require ext_code.size(priceCheckerAddress)
                    staticcall priceCheckerAddress.0x7db2262b with:
                            gas gas_remaining wei
                           args sub_57601ca3Address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            return ext_call.return_data[0], 
                                   ext_call.return_data[0] * ext_call.return_data[0] / 10^18,
                                   ext_call.return_data[0],
                                   ext_call.return_data[0],
                                   ext_call.return_data[0],
                                   ext_call.return_data[0],
                                   ext_call.return_data[0],
                                   0 / ext_call.return_data[0],
                                   ext_call.return_data[0],
                                   ext_call.return_data[0],
                                   ext_call.return_data[0]
                    else:
                        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if ext_call.return_data[0] * ext_call.return_data[0] < ext_call.return_data[0] * ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            return ext_call.return_data[0], 
                                   ext_call.return_data[0] * ext_call.return_data[0] / 10^18,
                                   ext_call.return_data[0],
                                   ext_call.return_data[0],
                                   ext_call.return_data[0],
                                   ext_call.return_data[0],
                                   ext_call.return_data[0],
                                   ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0],
                                   ext_call.return_data[0],
                                   ext_call.return_data[0],
                                   ext_call.return_data[0]
                else:
                    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    require ext_code.size(priceCheckerAddress)
                    staticcall priceCheckerAddress.0x7db2262b with:
                            gas gas_remaining wei
                           args sub_57601ca3Address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) < ext_call.return_data[0] * ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            return ext_call.return_data[0], 
                                   ext_call.return_data[0] * ext_call.return_data[0] / 10^18,
                                   ext_call.return_data[0],
                                   ext_call.return_data[0],
                                   ext_call.return_data[0],
                                   ext_call.return_data[0],
                                   ext_call.return_data[0],
                                   (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0],
                                   ext_call.return_data[0],
                                   ext_call.return_data[0],
                                   ext_call.return_data[0]
                    else:
                        if ext_call.return_data[0] * ext_call.return_data[0] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if ext_call.return_data[0] * ext_call.return_data[0] < ext_call.return_data[0] * ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            return ext_call.return_data[0], 
                                   ext_call.return_data[0] * ext_call.return_data[0] / 10^18,
                                   ext_call.return_data[0],
                                   ext_call.return_data[0],
                                   ext_call.return_data[0],
                                   ext_call.return_data[0],
                                   ext_call.return_data[0],
                                   ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0],
                                   ext_call.return_data[0],
                                   ext_call.return_data[0],
                                   ext_call.return_data[0]
            else:
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                require ext_code.size(priceCheckerAddress)
                staticcall priceCheckerAddress.0x7db2262b with:
                        gas gas_remaining wei
                       args wbnbAddress
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    require ext_code.size(priceCheckerAddress)
                    staticcall priceCheckerAddress.0x7db2262b with:
                            gas gas_remaining wei
                           args sub_57601ca3Address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        if ext_call.return_data[0] * ext_call.return_data[0] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            return ext_call.return_data[0], 
                                   ext_call.return_data[0] * ext_call.return_data[0] / 10^18,
                                   ext_call.return_data[0],
                                   ext_call.return_data[0],
                                   ext_call.return_data[0],
                                   ext_call.return_data[0],
                                   ext_call.return_data[0],
                                   ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0],
                                   ext_call.return_data[0],
                                   ext_call.return_data[0],
                                   ext_call.return_data[0]
                    else:
                        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if ext_call.return_data[0] * ext_call.return_data[0] < ext_call.return_data[0] * ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        if (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) < ext_call.return_data[0] * ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            return ext_call.return_data[0], 
                                   ext_call.return_data[0] * ext_call.return_data[0] / 10^18,
                                   ext_call.return_data[0],
                                   ext_call.return_data[0],
                                   ext_call.return_data[0],
                                   ext_call.return_data[0],
                                   ext_call.return_data[0],
                                   (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0],
                                   ext_call.return_data[0],
                                   ext_call.return_data[0],
                                   ext_call.return_data[0]
                else:
                    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    require ext_code.size(priceCheckerAddress)
                    staticcall priceCheckerAddress.0x7db2262b with:
                            gas gas_remaining wei
                           args sub_57601ca3Address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        if ext_call.return_data[0] * ext_call.return_data[0] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) < ext_call.return_data[0] * ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            return ext_call.return_data[0], 
                                   ext_call.return_data[0] * ext_call.return_data[0] / 10^18,
                                   ext_call.return_data[0],
                                   ext_call.return_data[0],
                                   ext_call.return_data[0],
                                   ext_call.return_data[0],
                                   ext_call.return_data[0],
                                   (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0],
                                   ext_call.return_data[0],
                                   ext_call.return_data[0],
                                   ext_call.return_data[0]
                    else:
                        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) < ext_call.return_data[0] * ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        if ext_call.return_data[0] * ext_call.return_data[0] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            return ext_call.return_data[0], 
                                   ext_call.return_data[0] * ext_call.return_data[0] / 10^18,
                                   ext_call.return_data[0],
                                   ext_call.return_data[0],
                                   ext_call.return_data[0],
                                   ext_call.return_data[0],
                                   ext_call.return_data[0],
                                   (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0],
                                   ext_call.return_data[0],
                                   ext_call.return_data[0],
                                   ext_call.return_data[0]
    ('iszero', ('ext_call.return_data', 0, 32))
    revert
}



}
