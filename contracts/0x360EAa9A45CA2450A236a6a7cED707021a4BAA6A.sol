contract main {




// =====================  Runtime code  =====================


#
#  - sub_0354b3c3(?)
#  - claimRewards()
#  - sub_c3c6be19(?)
#  - sub_ddbf4a09(?)
#
address stor2;
mapping of address stor5;
bool stor6; offset 256
uint8 stor6; offset 160
uint8 stor6; offset 168
uint128 stor6; offset 168
address stor6;
uint256 tokenPrice;
uint256 sub_b8e8ad32;
uint256 sub_2d1a0743;
uint256 sub_0d391aaa;
mapping of uint256 sub_1840257d;
uint256 feeMarketRate;
uint256 divPercent;
uint128 stor14; offset 160
address feeAddress;
uint256 stor14;
address sub_006df8fdAddress;
array of struct stor16;
uint256 stor17;
mapping of address sub_a114f2b1;
mapping of uint256 sub_37c06eb1;
mapping of uint256 sub_56c6286e;
array of struct stor21;
array of struct stor22;
array of struct stor23;
array of struct stor24;
mapping of uint256 sub_5abbb528;
mapping of uint256 sub_eb19feac;
uint256 sub_018f2069;
mapping of uint256 sub_2e930514;
mapping of uint256 sub_ff4f33e6;
address stor30;
address stor31;
address stor32;
mapping of uint256 sub_7f3f8677;
uint256 stor64C1;
uint256 storA50E;

function sub_006df8fd(?) payable {
    return sub_006df8fdAddress
}

function sub_018f2069(?) payable {
    return sub_018f2069
}

function sub_0d391aaa(?) payable {
    return sub_0d391aaa
}

function sub_1840257d(?) payable {
    require calldata.size - 4 >= 32
    return sub_1840257d[arg1]
}

function sub_26b45290(?) payable {
    require calldata.size - 4 >= 32
    return sub_2e930514[arg1]
}

function sub_2d1a0743(?) payable {
    return sub_2d1a0743
}

function sub_2e930514(?) payable {
    require calldata.size - 4 >= 32
    return sub_2e930514[arg1]
}

function sub_37c06eb1(?) payable {
    require calldata.size - 4 >= 32
    return sub_37c06eb1[arg1]
}

function feeMarketRate() payable {
    return feeMarketRate
}

function divPercent() payable {
    return divPercent
}

function getTokenPrice() payable {
    return tokenPrice
}

function getFeeAddress() payable {
    if stor30 != msg.sender:
        revert with 0, 'Not Allowed'
    return feeAddress
}

function sub_56c6286e(?) payable {
    require calldata.size - 4 >= 32
    return sub_56c6286e[arg1]
}

function sub_5abbb528(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_5abbb528[arg1]
}

function sub_7f3f8677(?) payable {
    return sub_7f3f8677[msg.sender]
}

function sub_a114f2b1(?) payable {
    require calldata.size - 4 >= 32
    return sub_a114f2b1[arg1]
}

function sub_b8e8ad32(?) payable {
    return sub_b8e8ad32
}

function sub_dc483f35(?) payable {
    require calldata.size - 4 >= 32
    return sub_ff4f33e6[arg1]
}

function sub_eb19feac(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_eb19feac[arg1]
}

function sub_ff4f33e6(?) payable {
    require calldata.size - 4 >= 32
    return sub_ff4f33e6[arg1]
}

function _fallback() payable {
    revert
}

function sub_37e0c464(?) payable {
    require calldata.size - 4 >= 32
    if address(stor6.field_0) != msg.sender:
        revert with 0, 'Not Allowed'
    sub_b8e8ad32 = arg1
}

function sub_78a56dd0(?) payable {
    require calldata.size - 4 >= 32
    if address(stor6.field_0) != msg.sender:
        revert with 0, 'Not Allowed'
    sub_018f2069 = arg1
}

function sub_c2f1dd57(?) payable {
    require calldata.size - 4 >= 32
    if address(stor6.field_0) != msg.sender:
        revert with 0, 'Not Allowed'
    sub_2d1a0743 = arg1
}

function sub_cedb3e76(?) payable {
    require calldata.size - 4 >= 32
    if address(stor6.field_0) != msg.sender:
        revert with 0, 'Not Allowed'
    sub_0d391aaa = arg1
}

function sub_0d377e37(?) payable {
    require calldata.size - 4 >= 64
    if address(stor6.field_0) != msg.sender:
        revert with 0, 'Not Allowed'
    sub_1840257d[arg1] = arg2
}

function sub_893ac532(?) payable {
    require calldata.size - 4 >= 64
    if address(stor6.field_0) != msg.sender:
        revert with 0, 'Not Allowed'
    sub_ff4f33e6[arg1] = arg2
}

function sub_da070983(?) payable {
    require calldata.size - 4 >= 64
    if address(stor6.field_0) != msg.sender:
        revert with 0, 'Not Allowed'
    sub_2e930514[arg1] = arg2
}

function setDivPercent(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if address(stor6.field_0) != msg.sender:
        revert with 0, 'Not Allowed'
    divPercent = arg1
}

function setTokenPrice(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if address(stor6.field_0) != msg.sender:
        revert with 0, 'Not Allowed'
    tokenPrice = arg1
}

function setFeeMarketRate(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if address(stor6.field_0) != msg.sender:
        revert with 0, 'Not Allowed'
    feeMarketRate = arg1
}

function setNFTContract(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(stor6.field_0) != msg.sender:
        revert with 0, 'Not Allowed'
    stor30 = arg1
}

function setTokenContract(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(stor6.field_0) != msg.sender:
        revert with 0, 'Not Allowed'
    stor32 = arg1
}

function setFeeAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(stor6.field_0) != msg.sender:
        revert with 0, 'Not Allowed'
    feeAddress = arg1
}

function sub_ebe6cb9b(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if address(stor6.field_0) != msg.sender:
        revert with 0, 'Not Allowed'
    stor2 = address(arg1)
}

function sub_81008b89(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if address(stor6.field_0) != msg.sender:
        revert with 0, 'Not Allowed'
    stor31 = address(arg1)
}

function sub_795cd5ef(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if address(stor6.field_0) != msg.sender:
        revert with 0, 'Not Allowed'
    sub_006df8fdAddress = address(arg1)
}

function setClaimActive(bool arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(stor6.field_0) != msg.sender:
        revert with 0, 'Not Allowed'
    Mask(88, 0, stor6.field_168) = Mask(88, 0, arg1)
}

function sub_2358cadf(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(stor30)
    call stor30.0x50484882 with:
         gas gas_remaining wei
        args arg1, msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_49849afe(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(stor30)
    call stor30.0xfdb83c05 with:
         gas gas_remaining wei
        args arg1, msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_6077e0ab(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(stor31)
    call stor31.0xbc611e9f with:
         gas gas_remaining wei
        args arg1, msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_8384ad5c(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(stor30)
    call stor30.0xbc611e9f with:
         gas gas_remaining wei
        args arg1, msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_f1d5bddc(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(stor31)
    call stor31.0x50484882 with:
         gas gas_remaining wei
        args arg1, msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_555054b1(?) payable {
    if not sub_7f3f8677[msg.sender]:
        revert with 0, 'No Tokens to be Claimed !'
    require ext_code.size(stor32)
    call stor32.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, sub_7f3f8677[msg.sender]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    sub_7f3f8677[msg.sender] = 0
}

function sub_d8bc6f4e(?) payable {
    require calldata.size - 4 >= 64
    if stor5[arg1] != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Source must be the oracle of the request'
    stor5[arg1] = 0
    emit 0xfe7cc135: arg1
    require ext_code.size(stor30)
    call stor30.0x7f946d8b with:
         gas gas_remaining wei
        args arg2, sub_a114f2b1[arg1]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_e645bb68(?) payable {
    require calldata.size - 4 >= 64
    if stor5[arg1] != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Source must be the oracle of the request'
    stor5[arg1] = 0
    emit 0xfe7cc135: arg1
    require ext_code.size(stor31)
    call stor31.0xd22434a4 with:
         gas gas_remaining wei
        args arg2, sub_a114f2b1[arg1]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function redeemTokens(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if address(stor6.field_0) != msg.sender:
        revert with 0, 'Not Allowed'
    if arg1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 0, 17
    require ext_code.size(stor32)
    call stor32.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, 10^18 * arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function initialize(address arg1, address arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require not uint8(stor6.field_160)
    address(stor6.field_0) = arg3
    uint8(stor6.field_160) = 1
    uint8(stor6.field_168) = 0
    stor6.field_256 % 1 = 0
    stor30 = arg2
    stor32 = arg1
    uint256(stor14.field_0) = Mask(96, 0, stor14.field_160)
    tokenPrice = 5 * 10^16
    sub_b8e8ad32 = 80 * 10^18
    sub_2d1a0743 = 185 * 10^18
    sub_0d391aaa = 385 * 10^18
    feeMarketRate = 1
    divPercent = 10
    stor17 = 10^15
    sub_018f2069 = 10^18
    sub_1840257d[1] = 10^18
    storA50E = 2 * 10^18
    stor64C1 = 3 * 10^18
}

function sub_78abf992(?) payable {
    require calldata.size - 4 >= 64
    if stor5[arg1] != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Source must be the oracle of the request'
    stor5[arg1] = 0
    emit 0xfe7cc135: arg1
    if arg2 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 0, 17
    if sub_7f3f8677[stor18[arg1]] > !(10^18 * arg2):
        revert with 0, 17
    if sub_7f3f8677[stor18[arg1]] + (10^18 * arg2) < sub_7f3f8677[stor18[arg1]]:
        revert with 0, 'SafeMath: addition overflow'
    sub_7f3f8677[stor18[arg1]] += 10^18 * arg2
    sub_eb19feac[stor18[arg1]] = block.timestamp
    emit 0xa1d49da7: arg2, sub_a114f2b1[arg1]
}

function sub_62af1d6c(?) payable {
    require calldata.size - 4 >= 64
    if stor5[arg1] != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Source must be the oracle of the request'
    stor5[arg1] = 0
    emit 0xfe7cc135: arg1
    if arg2 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 0, 17
    if 10^18 * arg2 > sub_018f2069:
        revert with 0, 'Amount Exceeds Limit'
    if arg2 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 0, 17
    if not tokenPrice:
        revert with 0, 18
    if 10^18 * arg2 / tokenPrice > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 0, 17
    if sub_7f3f8677[stor18[arg1]] > !(10^18 * 10^18 * arg2 / tokenPrice):
        revert with 0, 17
    if sub_7f3f8677[stor18[arg1]] + (10^18 * 10^18 * arg2 / tokenPrice) < sub_7f3f8677[stor18[arg1]]:
        revert with 0, 'SafeMath: addition overflow'
    sub_7f3f8677[stor18[arg1]] += 10^18 * 10^18 * arg2 / tokenPrice
    sub_5abbb528[stor18[arg1]] = block.timestamp
    emit 0xaa7bda10: arg2, sub_a114f2b1[arg1]
}

function sub_28c8ad7f(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    if address(stor6.field_0) != msg.sender:
        revert with 0, 'Not Allowed'
    if bool(stor21.length):
        if bool(stor21.length) == uint255(stor21.length) * 0.5 < 32:
            revert with 0, 34
        if arg1.length:
            stor21[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor21.length = 0
            idx = 0
            while (uint255(stor21.length) * 0.5) + 31 / 32 > idx:
                stor21[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor21.length) == stor21.length.field_1 < 32:
            revert with 0, 34
        if arg1.length:
            stor21[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor21.length = 0
            idx = 0
            while stor21.length.field_1 + 31 / 32 > idx:
                stor21[idx].field_0 = 0
                idx = idx + 1
                continue 
}

function sub_3ecaea88(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    if address(stor6.field_0) != msg.sender:
        revert with 0, 'Not Allowed'
    if bool(stor22.length):
        if bool(stor22.length) == uint255(stor22.length) * 0.5 < 32:
            revert with 0, 34
        if arg1.length:
            stor22[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor22.length = 0
            idx = 0
            while (uint255(stor22.length) * 0.5) + 31 / 32 > idx:
                stor22[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor22.length) == stor22.length.field_1 < 32:
            revert with 0, 34
        if arg1.length:
            stor22[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor22.length = 0
            idx = 0
            while stor22.length.field_1 + 31 / 32 > idx:
                stor22[idx].field_0 = 0
                idx = idx + 1
                continue 
}

function sub_4fc68e7f(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    if address(stor6.field_0) != msg.sender:
        revert with 0, 'Not Allowed'
    if bool(stor16.length):
        if bool(stor16.length) == uint255(stor16.length) * 0.5 < 32:
            revert with 0, 34
        if arg1.length:
            stor16[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor16.length = 0
            idx = 0
            while (uint255(stor16.length) * 0.5) + 31 / 32 > idx:
                stor16[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor16.length) == stor16.length.field_1 < 32:
            revert with 0, 34
        if arg1.length:
            stor16[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor16.length = 0
            idx = 0
            while stor16.length.field_1 + 31 / 32 > idx:
                stor16[idx].field_0 = 0
                idx = idx + 1
                continue 
}

function sub_68232b42(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    if address(stor6.field_0) != msg.sender:
        revert with 0, 'Not Allowed'
    if bool(stor23.length):
        if bool(stor23.length) == uint255(stor23.length) * 0.5 < 32:
            revert with 0, 34
        if arg1.length:
            stor23[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor23.length = 0
            idx = 0
            while (uint255(stor23.length) * 0.5) + 31 / 32 > idx:
                stor23[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor23.length) == stor23.length.field_1 < 32:
            revert with 0, 34
        if arg1.length:
            stor23[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor23.length = 0
            idx = 0
            while stor23.length.field_1 + 31 / 32 > idx:
                stor23[idx].field_0 = 0
                idx = idx + 1
                continue 
}

function sub_6bd18701(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    if address(stor6.field_0) != msg.sender:
        revert with 0, 'Not Allowed'
    if bool(stor24.length):
        if bool(stor24.length) == uint255(stor24.length) * 0.5 < 32:
            revert with 0, 34
        if arg1.length:
            stor24[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor24.length = 0
            idx = 0
            while (uint255(stor24.length) * 0.5) + 31 / 32 > idx:
                stor24[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor24.length) == stor24.length.field_1 < 32:
            revert with 0, 34
        if arg1.length:
            stor24[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor24.length = 0
            idx = 0
            while stor24.length.field_1 + 31 / 32 > idx:
                stor24[idx].field_0 = 0
                idx = idx + 1
                continue 
}

function sub_199bb687(?) payable {
    require calldata.size - 4 >= 128
    require arg2 == bool(arg2)
    if not tokenPrice:
        revert with 0, 18
    if sub_1840257d[arg4] / tokenPrice > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 0, 17
    if 10^18 * sub_1840257d[arg4] / tokenPrice and arg3 > -1 / 10^18 * sub_1840257d[arg4] / tokenPrice:
        revert with 0, 17
    require ext_code.size(stor32)
    staticcall stor32.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < 10^18 * sub_1840257d[arg4] / tokenPrice * arg3:
        revert with 0, 'Item too luxerious for you'
    if 10^18 * sub_1840257d[arg4] / tokenPrice and arg3 > -1 / 10^18 * sub_1840257d[arg4] / tokenPrice:
        revert with 0, 17
    require ext_code.size(stor32)
    call stor32.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), 10^18 * sub_1840257d[arg4] / tokenPrice * arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Transaction Failed'
    emit 0xcfd06e94: arg1, arg3, bool(arg2), msg.sender, arg4
}

function sub_069deecd(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
    s = cd[4] + 36
    t = 128
    idx = 0
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    if address(stor6.field_0) != msg.sender:
        revert with 0, 'Not Allowed'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= mem[96]:
            revert with 0, 50
        _18 = mem[(32 * idx) + 128]
        mem[ceil32(32 * ('cd', 4).length) + 97] = 0xebc9ec0900000000000000000000000000000000000000000000000000000000
        mem[ceil32(32 * ('cd', 4).length) + 101] = cd[36]
        mem[ceil32(32 * ('cd', 4).length) + 133] = address(_18)
        mem[ceil32(32 * ('cd', 4).length) + 165] = cd[68]
        require ext_code.size(stor30)
        call stor30.0xebc9ec09 with:
             gas gas_remaining wei
            args cd[36], address(_18), cd[68]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_b71ac57a(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
    s = cd[4] + 36
    t = 128
    idx = 0
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    if address(stor6.field_0) != msg.sender:
        revert with 0, 'Not Allowed'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= mem[96]:
            revert with 0, 50
        _18 = mem[(32 * idx) + 128]
        mem[ceil32(32 * ('cd', 4).length) + 97] = 0x890ddbc300000000000000000000000000000000000000000000000000000000
        mem[ceil32(32 * ('cd', 4).length) + 101] = cd[36]
        mem[ceil32(32 * ('cd', 4).length) + 133] = address(_18)
        mem[ceil32(32 * ('cd', 4).length) + 165] = cd[68]
        require ext_code.size(stor30)
        call stor30.0x890ddbc3 with:
             gas gas_remaining wei
            args cd[36], address(_18), cd[68]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_26f8c013(?) payable {
    require calldata.size - 4 >= 64
    if 1 == arg2:
        if not tokenPrice:
            revert with 0, 18
        if sub_b8e8ad32 / tokenPrice and arg1 > -1 / sub_b8e8ad32 / tokenPrice:
            revert with 0, 17
        if sub_b8e8ad32 / tokenPrice * arg1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
            revert with 0, 17
        if 10^18 * sub_b8e8ad32 / tokenPrice * arg1 <= 0:
            revert with 0, 'Error Buying Rolls'
        if arg1 <= 0:
            revert with 0, 'Error Buying Rolls'
        require ext_code.size(stor32)
        call stor32.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), 10^18 * sub_b8e8ad32 / tokenPrice * arg1
    else:
        if 2 == arg2:
            if not tokenPrice:
                revert with 0, 18
            if sub_2d1a0743 / tokenPrice and arg1 > -1 / sub_2d1a0743 / tokenPrice:
                revert with 0, 17
            if sub_2d1a0743 / tokenPrice * arg1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                revert with 0, 17
            if 10^18 * sub_2d1a0743 / tokenPrice * arg1 <= 0:
                revert with 0, 'Error Buying Rolls'
            if arg1 <= 0:
                revert with 0, 'Error Buying Rolls'
            require ext_code.size(stor32)
            call stor32.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), 10^18 * sub_2d1a0743 / tokenPrice * arg1
        else:
            if arg2 != 3:
                revert with 0, 'Error Buying Rolls'
            if not tokenPrice:
                revert with 0, 18
            if sub_0d391aaa / tokenPrice and arg1 > -1 / sub_0d391aaa / tokenPrice:
                revert with 0, 17
            if sub_0d391aaa / tokenPrice * arg1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                revert with 0, 17
            if 10^18 * sub_0d391aaa / tokenPrice * arg1 <= 0:
                revert with 0, 'Error Buying Rolls'
            if arg1 <= 0:
                revert with 0, 'Error Buying Rolls'
            require ext_code.size(stor32)
            call stor32.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), 10^18 * sub_0d391aaa / tokenPrice * arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_call.return_data[0]
    require ext_code.size(stor30)
    call stor30.0x890ddbc3 with:
         gas gas_remaining wei
        args arg1, msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getJobId() payable {
    if bool(stor16.length):
        if bool(stor16.length) == uint255(stor16.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor16.length):
            if bool(stor16.length) == uint255(stor16.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor16.length):
                if 31 < uint255(stor16.length) * 0.5:
                    mem[128] = uint256(stor16.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor16.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor16[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor16.length), data=mem[128 len ceil32(uint255(stor16.length) * 0.5)])
                mem[128] = 256 * stor16.length.field_8
        else:
            if bool(stor16.length) == stor16.length.field_1 < 32:
                revert with 0, 34
            if stor16.length.field_1:
                if 31 < stor16.length.field_1:
                    mem[128] = uint256(stor16.field_0)
                    idx = 128
                    s = 0
                    while stor16.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor16[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor16.length), data=mem[128 len ceil32(uint255(stor16.length) * 0.5)])
                mem[128] = 256 * stor16.length.field_8
        mem[ceil32(uint255(stor16.length) * 0.5) + 192 len ceil32(uint255(stor16.length) * 0.5)] = mem[128 len ceil32(uint255(stor16.length) * 0.5)]
        if ceil32(uint255(stor16.length) * 0.5) > uint255(stor16.length) * 0.5:
            mem[(uint255(stor16.length) * 0.5) + ceil32(uint255(stor16.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor16.length), data=mem[128 len ceil32(uint255(stor16.length) * 0.5)], mem[(2 * ceil32(uint255(stor16.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor16.length) * 0.5)]), 
    if bool(stor16.length) == stor16.length.field_1 < 32:
        revert with 0, 34
    if bool(stor16.length):
        if bool(stor16.length) == uint255(stor16.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor16.length):
            if 31 < uint255(stor16.length) * 0.5:
                mem[128] = uint256(stor16.field_0)
                idx = 128
                s = 0
                while (uint255(stor16.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor16[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor16.length % 128, data=mem[128 len ceil32(stor16.length.field_1)])
            mem[128] = 256 * stor16.length.field_8
    else:
        if bool(stor16.length) == stor16.length.field_1 < 32:
            revert with 0, 34
        if stor16.length.field_1:
            if 31 < stor16.length.field_1:
                mem[128] = uint256(stor16.field_0)
                idx = 128
                s = 0
                while stor16.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor16[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor16.length % 128, data=mem[128 len ceil32(stor16.length.field_1)])
            mem[128] = 256 * stor16.length.field_8
    mem[ceil32(stor16.length.field_1) + 192 len ceil32(stor16.length.field_1)] = mem[128 len ceil32(stor16.length.field_1)]
    if ceil32(stor16.length.field_1) > stor16.length.field_1:
        mem[stor16.length.field_1 + ceil32(stor16.length.field_1) + 192] = 0
    return Array(len=stor16.length % 128, data=mem[128 len ceil32(stor16.length.field_1)], mem[(2 * ceil32(stor16.length.field_1)) + 192 len 2 * ceil32(stor16.length.field_1)]), 
}

function sub_0375aab3(?) payable {
    if bool(stor24.length):
        if bool(stor24.length) == uint255(stor24.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor24.length):
            if bool(stor24.length) == uint255(stor24.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor24.length):
                if 31 < uint255(stor24.length) * 0.5:
                    mem[128] = uint256(stor24.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor24.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor24[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor24.length), data=mem[128 len ceil32(uint255(stor24.length) * 0.5)])
                mem[128] = 256 * stor24.length.field_8
        else:
            if bool(stor24.length) == stor24.length.field_1 < 32:
                revert with 0, 34
            if stor24.length.field_1:
                if 31 < stor24.length.field_1:
                    mem[128] = uint256(stor24.field_0)
                    idx = 128
                    s = 0
                    while stor24.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor24[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor24.length), data=mem[128 len ceil32(uint255(stor24.length) * 0.5)])
                mem[128] = 256 * stor24.length.field_8
        mem[ceil32(uint255(stor24.length) * 0.5) + 192 len ceil32(uint255(stor24.length) * 0.5)] = mem[128 len ceil32(uint255(stor24.length) * 0.5)]
        if ceil32(uint255(stor24.length) * 0.5) > uint255(stor24.length) * 0.5:
            mem[(uint255(stor24.length) * 0.5) + ceil32(uint255(stor24.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor24.length), data=mem[128 len ceil32(uint255(stor24.length) * 0.5)], mem[(2 * ceil32(uint255(stor24.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor24.length) * 0.5)]), 
    if bool(stor24.length) == stor24.length.field_1 < 32:
        revert with 0, 34
    if bool(stor24.length):
        if bool(stor24.length) == uint255(stor24.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor24.length):
            if 31 < uint255(stor24.length) * 0.5:
                mem[128] = uint256(stor24.field_0)
                idx = 128
                s = 0
                while (uint255(stor24.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor24[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor24.length % 128, data=mem[128 len ceil32(stor24.length.field_1)])
            mem[128] = 256 * stor24.length.field_8
    else:
        if bool(stor24.length) == stor24.length.field_1 < 32:
            revert with 0, 34
        if stor24.length.field_1:
            if 31 < stor24.length.field_1:
                mem[128] = uint256(stor24.field_0)
                idx = 128
                s = 0
                while stor24.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor24[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor24.length % 128, data=mem[128 len ceil32(stor24.length.field_1)])
            mem[128] = 256 * stor24.length.field_8
    mem[ceil32(stor24.length.field_1) + 192 len ceil32(stor24.length.field_1)] = mem[128 len ceil32(stor24.length.field_1)]
    if ceil32(stor24.length.field_1) > stor24.length.field_1:
        mem[stor24.length.field_1 + ceil32(stor24.length.field_1) + 192] = 0
    return Array(len=stor24.length % 128, data=mem[128 len ceil32(stor24.length.field_1)], mem[(2 * ceil32(stor24.length.field_1)) + 192 len 2 * ceil32(stor24.length.field_1)]), 
}

function sub_9771d502(?) payable {
    if bool(stor23.length):
        if bool(stor23.length) == uint255(stor23.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor23.length):
            if bool(stor23.length) == uint255(stor23.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor23.length):
                if 31 < uint255(stor23.length) * 0.5:
                    mem[128] = uint256(stor23.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor23.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor23[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor23.length), data=mem[128 len ceil32(uint255(stor23.length) * 0.5)])
                mem[128] = 256 * stor23.length.field_8
        else:
            if bool(stor23.length) == stor23.length.field_1 < 32:
                revert with 0, 34
            if stor23.length.field_1:
                if 31 < stor23.length.field_1:
                    mem[128] = uint256(stor23.field_0)
                    idx = 128
                    s = 0
                    while stor23.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor23[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor23.length), data=mem[128 len ceil32(uint255(stor23.length) * 0.5)])
                mem[128] = 256 * stor23.length.field_8
        mem[ceil32(uint255(stor23.length) * 0.5) + 192 len ceil32(uint255(stor23.length) * 0.5)] = mem[128 len ceil32(uint255(stor23.length) * 0.5)]
        if ceil32(uint255(stor23.length) * 0.5) > uint255(stor23.length) * 0.5:
            mem[(uint255(stor23.length) * 0.5) + ceil32(uint255(stor23.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor23.length), data=mem[128 len ceil32(uint255(stor23.length) * 0.5)], mem[(2 * ceil32(uint255(stor23.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor23.length) * 0.5)]), 
    if bool(stor23.length) == stor23.length.field_1 < 32:
        revert with 0, 34
    if bool(stor23.length):
        if bool(stor23.length) == uint255(stor23.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor23.length):
            if 31 < uint255(stor23.length) * 0.5:
                mem[128] = uint256(stor23.field_0)
                idx = 128
                s = 0
                while (uint255(stor23.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor23[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor23.length % 128, data=mem[128 len ceil32(stor23.length.field_1)])
            mem[128] = 256 * stor23.length.field_8
    else:
        if bool(stor23.length) == stor23.length.field_1 < 32:
            revert with 0, 34
        if stor23.length.field_1:
            if 31 < stor23.length.field_1:
                mem[128] = uint256(stor23.field_0)
                idx = 128
                s = 0
                while stor23.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor23[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor23.length % 128, data=mem[128 len ceil32(stor23.length.field_1)])
            mem[128] = 256 * stor23.length.field_8
    mem[ceil32(stor23.length.field_1) + 192 len ceil32(stor23.length.field_1)] = mem[128 len ceil32(stor23.length.field_1)]
    if ceil32(stor23.length.field_1) > stor23.length.field_1:
        mem[stor23.length.field_1 + ceil32(stor23.length.field_1) + 192] = 0
    return Array(len=stor23.length % 128, data=mem[128 len ceil32(stor23.length.field_1)], mem[(2 * ceil32(stor23.length.field_1)) + 192 len 2 * ceil32(stor23.length.field_1)]), 
}

function sub_a6543aab(?) payable {
    if bool(stor21.length):
        if bool(stor21.length) == uint255(stor21.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor21.length):
            if bool(stor21.length) == uint255(stor21.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor21.length):
                if 31 < uint255(stor21.length) * 0.5:
                    mem[128] = uint256(stor21.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor21.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor21[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor21.length), data=mem[128 len ceil32(uint255(stor21.length) * 0.5)])
                mem[128] = 256 * stor21.length.field_8
        else:
            if bool(stor21.length) == stor21.length.field_1 < 32:
                revert with 0, 34
            if stor21.length.field_1:
                if 31 < stor21.length.field_1:
                    mem[128] = uint256(stor21.field_0)
                    idx = 128
                    s = 0
                    while stor21.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor21[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor21.length), data=mem[128 len ceil32(uint255(stor21.length) * 0.5)])
                mem[128] = 256 * stor21.length.field_8
        mem[ceil32(uint255(stor21.length) * 0.5) + 192 len ceil32(uint255(stor21.length) * 0.5)] = mem[128 len ceil32(uint255(stor21.length) * 0.5)]
        if ceil32(uint255(stor21.length) * 0.5) > uint255(stor21.length) * 0.5:
            mem[(uint255(stor21.length) * 0.5) + ceil32(uint255(stor21.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor21.length), data=mem[128 len ceil32(uint255(stor21.length) * 0.5)], mem[(2 * ceil32(uint255(stor21.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor21.length) * 0.5)]), 
    if bool(stor21.length) == stor21.length.field_1 < 32:
        revert with 0, 34
    if bool(stor21.length):
        if bool(stor21.length) == uint255(stor21.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor21.length):
            if 31 < uint255(stor21.length) * 0.5:
                mem[128] = uint256(stor21.field_0)
                idx = 128
                s = 0
                while (uint255(stor21.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor21[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor21.length % 128, data=mem[128 len ceil32(stor21.length.field_1)])
            mem[128] = 256 * stor21.length.field_8
    else:
        if bool(stor21.length) == stor21.length.field_1 < 32:
            revert with 0, 34
        if stor21.length.field_1:
            if 31 < stor21.length.field_1:
                mem[128] = uint256(stor21.field_0)
                idx = 128
                s = 0
                while stor21.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor21[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor21.length % 128, data=mem[128 len ceil32(stor21.length.field_1)])
            mem[128] = 256 * stor21.length.field_8
    mem[ceil32(stor21.length.field_1) + 192 len ceil32(stor21.length.field_1)] = mem[128 len ceil32(stor21.length.field_1)]
    if ceil32(stor21.length.field_1) > stor21.length.field_1:
        mem[stor21.length.field_1 + ceil32(stor21.length.field_1) + 192] = 0
    return Array(len=stor21.length % 128, data=mem[128 len ceil32(stor21.length.field_1)], mem[(2 * ceil32(stor21.length.field_1)) + 192 len 2 * ceil32(stor21.length.field_1)]), 
}

function sub_a916ebd4(?) payable {
    if bool(stor22.length):
        if bool(stor22.length) == uint255(stor22.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor22.length):
            if bool(stor22.length) == uint255(stor22.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor22.length):
                if 31 < uint255(stor22.length) * 0.5:
                    mem[128] = uint256(stor22.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor22.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor22[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor22.length), data=mem[128 len ceil32(uint255(stor22.length) * 0.5)])
                mem[128] = 256 * stor22.length.field_8
        else:
            if bool(stor22.length) == stor22.length.field_1 < 32:
                revert with 0, 34
            if stor22.length.field_1:
                if 31 < stor22.length.field_1:
                    mem[128] = uint256(stor22.field_0)
                    idx = 128
                    s = 0
                    while stor22.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor22[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor22.length), data=mem[128 len ceil32(uint255(stor22.length) * 0.5)])
                mem[128] = 256 * stor22.length.field_8
        mem[ceil32(uint255(stor22.length) * 0.5) + 192 len ceil32(uint255(stor22.length) * 0.5)] = mem[128 len ceil32(uint255(stor22.length) * 0.5)]
        if ceil32(uint255(stor22.length) * 0.5) > uint255(stor22.length) * 0.5:
            mem[(uint255(stor22.length) * 0.5) + ceil32(uint255(stor22.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor22.length), data=mem[128 len ceil32(uint255(stor22.length) * 0.5)], mem[(2 * ceil32(uint255(stor22.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor22.length) * 0.5)]), 
    if bool(stor22.length) == stor22.length.field_1 < 32:
        revert with 0, 34
    if bool(stor22.length):
        if bool(stor22.length) == uint255(stor22.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor22.length):
            if 31 < uint255(stor22.length) * 0.5:
                mem[128] = uint256(stor22.field_0)
                idx = 128
                s = 0
                while (uint255(stor22.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor22[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor22.length % 128, data=mem[128 len ceil32(stor22.length.field_1)])
            mem[128] = 256 * stor22.length.field_8
    else:
        if bool(stor22.length) == stor22.length.field_1 < 32:
            revert with 0, 34
        if stor22.length.field_1:
            if 31 < stor22.length.field_1:
                mem[128] = uint256(stor22.field_0)
                idx = 128
                s = 0
                while stor22.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor22[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor22.length % 128, data=mem[128 len ceil32(stor22.length.field_1)])
            mem[128] = 256 * stor22.length.field_8
    mem[ceil32(stor22.length.field_1) + 192 len ceil32(stor22.length.field_1)] = mem[128 len ceil32(stor22.length.field_1)]
    if ceil32(stor22.length.field_1) > stor22.length.field_1:
        mem[stor22.length.field_1 + ceil32(stor22.length.field_1) + 192] = 0
    return Array(len=stor22.length % 128, data=mem[128 len ceil32(stor22.length.field_1)], mem[(2 * ceil32(stor22.length.field_1)) + 192 len 2 * ceil32(stor22.length.field_1)]), 
}

function sub_af8bf0f0(?) payable {
    require calldata.size - 4 >= 64
    if not tokenPrice:
        revert with 0, 18
    if sub_ff4f33e6[arg1]:
        if sub_ff4f33e6[arg1] / tokenPrice > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
            revert with 0, 17
        if not 10^18 * sub_ff4f33e6[arg1] / tokenPrice:
            require ext_code.size(stor32)
            staticcall stor32.0x70a08231 with:
                    gas gas_remaining wei
                   args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < 0:
                revert with 0, 'Item too luxerious for you'
        else:
            if 10^18 * sub_ff4f33e6[arg1] / tokenPrice and arg2 > -1 / 10^18 * sub_ff4f33e6[arg1] / tokenPrice:
                revert with 0, 17
            if not 10^18 * sub_ff4f33e6[arg1] / tokenPrice:
                revert with 0, 18
            if 10^18 * sub_ff4f33e6[arg1] / tokenPrice * arg2 / 10^18 * sub_ff4f33e6[arg1] / tokenPrice != arg2:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            require ext_code.size(stor32)
            staticcall stor32.0x70a08231 with:
                    gas gas_remaining wei
                   args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < 10^18 * sub_ff4f33e6[arg1] / tokenPrice * arg2:
                revert with 0, 'Item too luxerious for you'
        if not 10^18 * sub_ff4f33e6[arg1] / tokenPrice:
            require ext_code.size(stor32)
            call stor32.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), 0
        else:
            if 10^18 * sub_ff4f33e6[arg1] / tokenPrice and arg2 > -1 / 10^18 * sub_ff4f33e6[arg1] / tokenPrice:
                revert with 0, 17
            if not 10^18 * sub_ff4f33e6[arg1] / tokenPrice:
                revert with 0, 18
            if 10^18 * sub_ff4f33e6[arg1] / tokenPrice * arg2 / 10^18 * sub_ff4f33e6[arg1] / tokenPrice != arg2:
                revert with 0, 'SafeMath: multiplication overflow'
            require ext_code.size(stor32)
            call stor32.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), 10^18 * sub_ff4f33e6[arg1] / tokenPrice * arg2
    else:
        if 4 * 10^18 / tokenPrice > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
            revert with 0, 17
        if not 10^18 * 4 * 10^18 / tokenPrice:
            require ext_code.size(stor32)
            staticcall stor32.0x70a08231 with:
                    gas gas_remaining wei
                   args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < 0:
                revert with 0, 'Item too luxerious for you'
        else:
            if 10^18 * 4 * 10^18 / tokenPrice and arg2 > -1 / 10^18 * 4 * 10^18 / tokenPrice:
                revert with 0, 17
            if not 10^18 * 4 * 10^18 / tokenPrice:
                revert with 0, 18
            if 10^18 * 4 * 10^18 / tokenPrice * arg2 / 10^18 * 4 * 10^18 / tokenPrice != arg2:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            require ext_code.size(stor32)
            staticcall stor32.0x70a08231 with:
                    gas gas_remaining wei
                   args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < 10^18 * 4 * 10^18 / tokenPrice * arg2:
                revert with 0, 'Item too luxerious for you'
        if not 10^18 * 4 * 10^18 / tokenPrice:
            require ext_code.size(stor32)
            call stor32.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), 0
        else:
            if 10^18 * 4 * 10^18 / tokenPrice and arg2 > -1 / 10^18 * 4 * 10^18 / tokenPrice:
                revert with 0, 17
            if not 10^18 * 4 * 10^18 / tokenPrice:
                revert with 0, 18
            if 10^18 * 4 * 10^18 / tokenPrice * arg2 / 10^18 * 4 * 10^18 / tokenPrice != arg2:
                revert with 0, 'SafeMath: multiplication overflow'
            require ext_code.size(stor32)
            call stor32.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), 10^18 * 4 * 10^18 / tokenPrice * arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Transaction Failed'
    emit 0x20fb3bc1: arg1, arg2, msg.sender
}

function sub_81eadb7a(?) payable {
    require calldata.size - 4 >= 64
    if not tokenPrice:
        revert with 0, 18
    if sub_2e930514[arg1]:
        if sub_2e930514[arg1] / tokenPrice > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
            revert with 0, 17
        if not 10^18 * sub_2e930514[arg1] / tokenPrice:
            require ext_code.size(stor32)
            staticcall stor32.0x70a08231 with:
                    gas gas_remaining wei
                   args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < 0:
                revert with 0, 'dungeon too luxerious for you'
        else:
            if 10^18 * sub_2e930514[arg1] / tokenPrice and arg2 > -1 / 10^18 * sub_2e930514[arg1] / tokenPrice:
                revert with 0, 17
            if not 10^18 * sub_2e930514[arg1] / tokenPrice:
                revert with 0, 18
            if 10^18 * sub_2e930514[arg1] / tokenPrice * arg2 / 10^18 * sub_2e930514[arg1] / tokenPrice != arg2:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            require ext_code.size(stor32)
            staticcall stor32.0x70a08231 with:
                    gas gas_remaining wei
                   args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < 10^18 * sub_2e930514[arg1] / tokenPrice * arg2:
                revert with 0, 'dungeon too luxerious for you'
        if not 10^18 * sub_2e930514[arg1] / tokenPrice:
            require ext_code.size(stor32)
            call stor32.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), 0
        else:
            if 10^18 * sub_2e930514[arg1] / tokenPrice and arg2 > -1 / 10^18 * sub_2e930514[arg1] / tokenPrice:
                revert with 0, 17
            if not 10^18 * sub_2e930514[arg1] / tokenPrice:
                revert with 0, 18
            if 10^18 * sub_2e930514[arg1] / tokenPrice * arg2 / 10^18 * sub_2e930514[arg1] / tokenPrice != arg2:
                revert with 0, 'SafeMath: multiplication overflow'
            require ext_code.size(stor32)
            call stor32.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), 10^18 * sub_2e930514[arg1] / tokenPrice * arg2
    else:
        if 10 * 10^18 / tokenPrice > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
            revert with 0, 17
        if not 10^18 * 10 * 10^18 / tokenPrice:
            require ext_code.size(stor32)
            staticcall stor32.0x70a08231 with:
                    gas gas_remaining wei
                   args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < 0:
                revert with 0, 'dungeon too luxerious for you'
        else:
            if 10^18 * 10 * 10^18 / tokenPrice and arg2 > -1 / 10^18 * 10 * 10^18 / tokenPrice:
                revert with 0, 17
            if not 10^18 * 10 * 10^18 / tokenPrice:
                revert with 0, 18
            if 10^18 * 10 * 10^18 / tokenPrice * arg2 / 10^18 * 10 * 10^18 / tokenPrice != arg2:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            require ext_code.size(stor32)
            staticcall stor32.0x70a08231 with:
                    gas gas_remaining wei
                   args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < 10^18 * 10 * 10^18 / tokenPrice * arg2:
                revert with 0, 'dungeon too luxerious for you'
        if not 10^18 * 10 * 10^18 / tokenPrice:
            require ext_code.size(stor32)
            call stor32.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), 0
        else:
            if 10^18 * 10 * 10^18 / tokenPrice and arg2 > -1 / 10^18 * 10 * 10^18 / tokenPrice:
                revert with 0, 17
            if not 10^18 * 10 * 10^18 / tokenPrice:
                revert with 0, 18
            if 10^18 * 10 * 10^18 / tokenPrice * arg2 / 10^18 * 10 * 10^18 / tokenPrice != arg2:
                revert with 0, 'SafeMath: multiplication overflow'
            require ext_code.size(stor32)
            call stor32.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), 10^18 * 10 * 10^18 / tokenPrice * arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Transaction Failed'
    emit 0xcce7b2d8: arg1, arg2, msg.sender
}



}
