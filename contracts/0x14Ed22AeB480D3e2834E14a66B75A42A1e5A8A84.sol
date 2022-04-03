contract main {




// =====================  Runtime code  =====================


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
array of uint256 name;
array of uint256 symbol;
bool stor3; offset 256
uint8 decimals;
address sub_8081643cAddress; offset 8
address sub_6f9dc396Address;
address sub_b5c0ef1bAddress;

function name() payable {
    return name[0 len name.length].field_0
}

function decimals() payable {
    return decimals
}

function sub_6f9dc396(?) payable {
    return sub_6f9dc396Address
}

function sub_8081643c(?) payable {
    return sub_8081643cAddress
}

function symbol() payable {
    return symbol[0 len symbol.length].field_0
}

function sub_b5c0ef1b(?) payable {
    return sub_b5c0ef1bAddress
}

function _fallback() payable {
    revert
}

function initialize() payable {
    if not uint8(stor0.field_8):
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            46,
                            0xfe496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                            mem[210 len 18]
        if not uint8(stor0.field_8):
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
    uint8(name.length) = 28
    name.length.field_8 = 0
    name.length.field_144 = Mask(112, 0, 'ACryptoS Votes')
    idx = 0
    while name.length + 31 / 32 > idx:
        name[idx].field_0 = 0
        idx = idx + 1
        continue 
    uint8(symbol.length) = 18
    symbol.length.field_8 = 0
    symbol.length.field_184 = Mask(72, 0, 'ACS Votes')
    idx = 0
    while symbol.length + 31 / 32 > idx:
        symbol[idx].field_0 = 0
        idx = idx + 1
        continue 
    decimals = 18
    sub_8081643cAddress = 0x7679381507af0c8de64586a458161aa58d3a4fc3
    stor3 = 0
    sub_6f9dc396Address = 0x2b66399ad01be47c5aa11c48fdd6df689dae929a
    sub_b5c0ef1bAddress = 0x699c58d77027ae44608808b3863c394a194d76f6
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(sub_b5c0ef1bAddress)
    staticcall sub_b5c0ef1bAddress.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_code.size(sub_6f9dc396Address)
    staticcall sub_6f9dc396Address.getPricePerFullShare() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_6f9dc396Address)
    staticcall sub_6f9dc396Address.0x70a08231 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if not Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 'SafeMath: division by zero'
        require ext_code.size(sub_8081643cAddress)
        staticcall sub_8081643cAddress.getPricePerFullShare() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_8081643cAddress)
        staticcall sub_8081643cAddress.0x70a08231 with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if 0 / Mask(112, 0, ext_call.return_data[32]) < 0:
                revert with 0, 'SafeMath: addition overflow'
            return (0 / Mask(112, 0, ext_call.return_data[32]))
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if (0 / Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        return ((0 / Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18))
    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
        if not Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 'SafeMath: division by zero'
        require ext_code.size(sub_8081643cAddress)
        staticcall sub_8081643cAddress.getPricePerFullShare() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_8081643cAddress)
        staticcall sub_8081643cAddress.0x70a08231 with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if 0 / Mask(112, 0, ext_call.return_data[32]) < 0:
                revert with 0, 'SafeMath: addition overflow'
            return (0 / Mask(112, 0, ext_call.return_data[32]))
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if (0 / Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        return ((0 / Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18))
    if Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 != Mask(112, 0, ext_call.return_data[0]):
        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not Mask(112, 0, ext_call.return_data[32]):
        revert with 0, 'SafeMath: division by zero'
    require ext_code.size(sub_8081643cAddress)
    staticcall sub_8081643cAddress.getPricePerFullShare() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_8081643cAddress)
    staticcall sub_8081643cAddress.0x70a08231 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / Mask(112, 0, ext_call.return_data[32]) < 0:
            revert with 0, 'SafeMath: addition overflow'
        return (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / Mask(112, 0, ext_call.return_data[32]))
    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
        revert with 0, 'SafeMath: addition overflow'
    return ((Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18))
}



}
