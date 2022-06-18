contract main {




// =====================  Runtime code  =====================


const getDenominator = 10^6

const sub_1f83dcd7(?) = 5

const sub_56e0ee0c(?) = 5


address owner;
uint256 salt;
uint8 stor2;
uint8 stor2; offset 8
uint8 stor2; offset 16
address gameAddress; offset 24
uint256 stor2; offset 16
uint256 stor2; offset 8
address shopAddress;
address pairAddress;
address tokenAddress;
address NFTAddress;
address sub_c6253177Address;
uint8 stor8;
uint8 sub_eb9ecc4b; offset 160
uint8 sub_18953229; offset 168
uint8 maxLevel; offset 176
address feeRecipientAddress;
uint256 sub_887b8913;
uint256 sub_408f556e;
uint256 sub_49dc52f7;
uint256 sub_377c700a;
uint256 sub_f1b78453;
mapping of uint256 sub_fdf4083b;
mapping of uint256 sub_b5d4acb0;
mapping of uint256 sub_7b27ccf6;
mapping of uint256 sub_db0952f5;
mapping of uint256 sub_74aab6fa;

function sub_013e2dba(?) payable {
    return bool(uint8(stor2.field_16))
}

function getSalt() payable {
    return salt
}

function sub_18953229(?) payable {
    return sub_18953229
}

function getShop() payable {
    return shopAddress
}

function getToken() payable {
    return tokenAddress
}

function sub_377c700a(?) payable {
    return sub_377c700a
}

function getMaxLevel() payable {
    return maxLevel
}

function sub_408f556e(?) payable {
    return sub_408f556e
}

function getGame() payable {
    return gameAddress
}

function sub_49dc52f7(?) payable {
    return sub_49dc52f7
}

function getFeeRecipient() payable {
    return feeRecipientAddress
}

function sub_74aab6fa(?) payable {
    require calldata.size - 4 >= 32
    return sub_74aab6fa[arg1 << 248]
}

function sub_7b27ccf6(?) payable {
    require calldata.size - 4 >= 32
    return sub_7b27ccf6[arg1 << 248]
}

function sub_887b8913(?) payable {
    return sub_887b8913
}

function getNFT() payable {
    return NFTAddress
}

function owner() payable {
    return owner
}

function sub_98ff2d91(?) payable {
    return bool(uint8(stor2.field_8))
}

function sub_b13685b5(?) payable {
    return bool(uint8(stor2.field_0))
}

function sub_b5d4acb0(?) payable {
    require calldata.size - 4 >= 32
    return sub_b5d4acb0[arg1 << 248]
}

function getPair() payable {
    return pairAddress
}

function sub_c6253177(?) payable {
    return sub_c6253177Address
}

function sub_db0952f5(?) payable {
    require calldata.size - 4 >= 32
    return sub_db0952f5[arg1 << 248]
}

function sub_eb9ecc4b(?) payable {
    return sub_eb9ecc4b
}

function sub_f1b78453(?) payable {
    return sub_f1b78453
}

function sub_fdf4083b(?) payable {
    require calldata.size - 4 >= 32
    return sub_fdf4083b[arg1 << 248]
}

function _fallback() payable {
    revert
}

function sub_97a51113(?) payable {
    salt++
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_0317aed2(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    sub_eb9ecc4b = arg1
}

function sub_245e2c7c(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    sub_408f556e = arg1
}

function sub_a5db1010(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    sub_f1b78453 = arg1
}

function sub_f174b707(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    sub_377c700a = arg1
}

function sub_f69e8612(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    sub_49dc52f7 = arg1
}

function setNFT(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    NFTAddress = arg1
}

function setMaxLevel(uint8 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    maxLevel = arg1
}

function setPair(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    pairAddress = arg1
}

function setGame(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    gameAddress = arg1
}

function setShop(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    shopAddress = arg1
}

function setToken(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    tokenAddress = arg1
}

function sub_1c908d98(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    sub_c6253177Address = arg1
}

function setMaxStar(uint8 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    sub_18953229 = arg1
}

function sub_0085dc1d(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    uint8(stor2.field_0) = uint8(arg1)
}

function setFeeRecipient(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    feeRecipientAddress = arg1
}

function sub_1276bbbc(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    Mask(248, 0, stor2.field_8) = Mask(248, 0, arg1)
}

function sub_fa22a4f3(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    Mask(240, 0, stor2.field_16) = Mask(240, 0, arg1)
}

function getTokenDecimals() payable {
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[31 len 1]
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_29d3104e(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    idx = 1
    while ('cd', 4).length >= uint8(idx):
        require uint8(idx - 1) < ('cd', 4).length
        mem[0] = uint8(idx)
        mem[32] = 18
        sub_74aab6fa[idx << 248] = cd[((32 * uint8(idx - 1)) + cd[4] + 36)]
        idx = idx + 1
        continue 
}

function sub_32ca7deb(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    idx = 1
    while ('cd', 4).length >= uint8(idx):
        require uint8(idx - 1) < ('cd', 4).length
        mem[0] = uint8(idx)
        mem[32] = 17
        sub_db0952f5[idx << 248] = cd[((32 * uint8(idx - 1)) + cd[4] + 36)]
        idx = idx + 1
        continue 
}

function sub_3778dbf7(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    idx = 1
    while ('cd', 4).length >= uint8(idx):
        require uint8(idx - 1) < ('cd', 4).length
        mem[0] = uint8(idx)
        mem[32] = 14
        sub_fdf4083b[idx << 248] = cd[((32 * uint8(idx - 1)) + cd[4] + 36)]
        idx = idx + 1
        continue 
}

function sub_a00bd5ef(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    idx = 1
    while ('cd', 4).length >= uint8(idx):
        require uint8(idx - 1) < ('cd', 4).length
        mem[0] = uint8(idx)
        mem[32] = 15
        sub_b5d4acb0[idx << 248] = cd[((32 * uint8(idx - 1)) + cd[4] + 36)]
        idx = idx + 1
        continue 
}

function sub_d878d62e(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    idx = 1
    while ('cd', 4).length >= uint8(idx):
        require uint8(idx - 1) < ('cd', 4).length
        mem[0] = uint8(idx)
        mem[32] = 16
        sub_7b27ccf6[idx << 248] = cd[((32 * uint8(idx - 1)) + cd[4] + 36)]
        idx = idx + 1
        continue 
}

function sub_49c10e41(?) payable {
    require sub_18953229 <= test266151307()
    if sub_18953229:
        mem[128 len 32 * sub_18953229] = call.data[calldata.size len 32 * sub_18953229]
    idx = 1
    while uint8(idx) <= sub_18953229:
        mem[0] = uint8(idx)
        mem[32] = 18
        require uint8(idx - 1) < sub_18953229
        mem[(32 * uint8(idx - 1)) + 128] = sub_74aab6fa[idx << 248]
        idx = idx + 1
        continue 
    mem[(32 * sub_18953229) + 192 len floor32(sub_18953229)] = mem[128 len floor32(sub_18953229)]
    return Array(len=stor8, data=mem[128 len floor32(sub_18953229)], mem[(32 * sub_18953229) + floor32(sub_18953229) + 192 len (32 * sub_18953229) - floor32(sub_18953229)]), 
}

function getTokenPrice() payable {
    require ext_code.size(pairAddress)
    staticcall pairAddress.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(pairAddress)
    staticcall pairAddress.token1() with:
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
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(pairAddress)
    staticcall pairAddress.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if tokenAddress == address(ext_call.return_data[0]):
        if not ext_call.return_data[50 len 14]:
            if ext_call.return_data[18 len 14] <= 0:
                revert with 0, 'SafeMath: division by zero'
            if ext_call.return_data[18 len 14]:
                return (0 / ext_call.return_data[18 len 14])
        else:
            if 10^uint8(ext_call.return_data[0]) * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 10^uint8(ext_call.return_data[0]):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if ext_call.return_data[18 len 14] <= 0:
                revert with 0, 'SafeMath: division by zero'
            if ext_call.return_data[18 len 14]:
                return (10^uint8(ext_call.return_data[0]) * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14])
        ('iszero', ('ext_call.return_data', 18, 14))
    else:
        if not ext_call.return_data[18 len 14]:
            if ext_call.return_data[50 len 14] <= 0:
                revert with 0, 'SafeMath: division by zero'
            if ext_call.return_data[50 len 14]:
                return (0 / ext_call.return_data[50 len 14])
        else:
            if 10^uint8(ext_call.return_data[0]) * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 10^uint8(ext_call.return_data[0]):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if ext_call.return_data[50 len 14] <= 0:
                revert with 0, 'SafeMath: division by zero'
            if ext_call.return_data[50 len 14]:
                return (10^uint8(ext_call.return_data[0]) * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14])
        ('iszero', ('ext_call.return_data', 50, 14))
    revert
}



}
