contract main {




// =====================  Runtime code  =====================


#
#  - sub_5d17418c(?)
#  - sub_5f69e61f(?)
#  - backing()
#  - sub_dbc926f8(?)
#
address sub_fd0bb769Address;
address sub_946f3f80Address;
address sub_b431646aAddress;
address sub_ee4f8dd1Address;
address daiAddress;
address usdcAddress;
address usdtAddress;
address busdAddress;
address sub_e3db6ff1Address;
address treasuryAddress;
address sub_7f2cac00Address;

function usdt() payable {
    return usdtAddress
}

function busd() payable {
    return busdAddress
}

function usdc() payable {
    return usdcAddress
}

function treasury() payable {
    return treasuryAddress
}

function sub_7f2cac00(?) payable {
    return sub_7f2cac00Address
}

function sub_946f3f80(?) payable {
    return sub_946f3f80Address
}

function sub_b431646a(?) payable {
    return sub_b431646aAddress
}

function sub_e3db6ff1(?) payable {
    return sub_e3db6ff1Address
}

function sub_ee4f8dd1(?) payable {
    return sub_ee4f8dd1Address
}

function dai() payable {
    return daiAddress
}

function sub_fd0bb769(?) payable {
    return sub_fd0bb769Address
}

function _fallback() payable {
    revert
}

function sub_b4e827c2(?) payable {
    require calldata.size - 4 >= 64
    if arg2 == 18:
        return arg1
    if arg2 <= 18:
        if not arg1:
            return 0
        require arg1
        if arg1 * 10^uint8(-arg2 + 18) / arg1 != 10^uint8(-arg2 + 18):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        return (arg1 * 10^uint8(-arg2 + 18))
    if 10^uint8(arg2 - 18) <= 0:
        revert with 0, 'SafeMath: division by zero'
    require 10^uint8(arg2 - 18)
    require arg1 == (10^uint8(arg2 - 18) * arg1 / 10^uint8(arg2 - 18)) + (arg1 % 10^uint8(arg2 - 18))
    return (arg1 / 10^uint8(arg2 - 18))
}

function sub_ac826ca8(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(arg1)
    staticcall arg1.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_code.size(arg1)
    staticcall arg1.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    if ext_call.return_data[12 len 20] != sub_e3db6ff1Address:
        staticcall arg1.token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[31 len 1] == 18:
            return ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
        if ext_call.return_data[31 len 1] <= 18:
            if not Mask(112, 0, ext_call.return_data[0]):
                return ext_call.return_data[32] << 144, 0
            require Mask(112, 0, ext_call.return_data[0])
            if Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]) != 10^uint8(-ext_call.return_data[0] + 18):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            return ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18)
        if 10^uint8(ext_call.return_data[0] - 18) <= 0:
            revert with 0, 'SafeMath: division by zero'
        if 10^uint8(ext_call.return_data[0] - 18):
            if Mask(112, 0, ext_call.return_data[0]) == (10^uint8(ext_call.return_data[0] - 18) * Mask(112, 0, ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0] - 18)) + (Mask(112, 0, ext_call.return_data[0]) % 10^uint8(ext_call.return_data[0] - 18)):
                return ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0] - 18)
    else:
        staticcall arg1.token1() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[31 len 1] == 18:
            return ext_call.return_data[0] << 144, Mask(112, 0, ext_call.return_data[32])
        if ext_call.return_data[31 len 1] <= 18:
            if not Mask(112, 0, ext_call.return_data[32]):
                return ext_call.return_data[0] << 144, 0
            require Mask(112, 0, ext_call.return_data[32])
            if Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]) != 10^uint8(-ext_call.return_data[0] + 18):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            return ext_call.return_data[0] << 144, Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18)
        if 10^uint8(ext_call.return_data[0] - 18) <= 0:
            revert with 0, 'SafeMath: division by zero'
        if 10^uint8(ext_call.return_data[0] - 18):
            if Mask(112, 0, ext_call.return_data[32]) == (10^uint8(ext_call.return_data[0] - 18) * Mask(112, 0, ext_call.return_data[32]) / 10^uint8(ext_call.return_data[0] - 18)) + (Mask(112, 0, ext_call.return_data[32]) % 10^uint8(ext_call.return_data[0] - 18)):
                return ext_call.return_data[0] << 144, Mask(112, 0, ext_call.return_data[32]) / 10^uint8(ext_call.return_data[0] - 18)
    revert
}



}
