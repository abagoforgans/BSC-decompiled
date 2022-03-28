contract main {




// =====================  Runtime code  =====================


#
#  - sub_3a886180(?)
#
uint256 stor0;
uint8 stor1;
mapping of uint8 stor2;
mapping of struct sub_cf61cbe4;
uint256 sub_deedf089;
uint256 sub_bff4b2a6;
address sub_4df0f898Address;
address _rewardTokenAddress;
uint256 sub_49db98fa;
address sub_776ce9f8Address;
uint256 sub_ce580ac9;
uint8 stor11; offset 160
uint8 stor11; offset 168
uint128 stor11; offset 176
uint128 stor11; offset 168
uint128 stor11; offset 160
address sub_8ec25f84Address;
uint128 stor12; offset 160
address _governanceAddress;
uint256 stor12;
mapping of address stor99;

function _governance() payable {
    return _governanceAddress
}

function _minters(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor2[arg1])
}

function _isUserStart() payable {
    return bool(uint8(stor11.field_160))
}

function sub_49db98fa(?) payable {
    return sub_49db98fa
}

function sub_4a1ace9c(?) payable {
    require calldata.size - 4 >= 32
    mem[128] = uint256(sub_cf61cbe4[arg1][6].field_0)
    idx = 128
    s = 0
    while sub_cf61cbe4[arg1][6].length + 96 > idx:
        mem[idx + 32] = uint256(sub_cf61cbe4[arg1][s + 6].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    return uint256(sub_cf61cbe4[arg1].field_0), 
           uint256(sub_cf61cbe4[arg1].field_256),
           uint256(sub_cf61cbe4[arg1].field_512),
           uint256(sub_cf61cbe4[arg1].field_768),
           sub_cf61cbe4[arg1].field_1024,
           sub_cf61cbe4[arg1].field_1280,
           Array(len=sub_cf61cbe4[arg1][6].length, data=mem[128 len sub_cf61cbe4[arg1][6].length])
}

function sub_4df0f898(?) payable {
    return sub_4df0f898Address
}

function sub_776ce9f8(?) payable {
    return sub_776ce9f8Address
}

function sub_8ec25f84(?) payable {
    return sub_8ec25f84Address
}

function _rewardToken() payable {
    return _rewardTokenAddress
}

function sub_bff4b2a6(?) payable {
    return sub_bff4b2a6
}

function sub_ce580ac9(?) payable {
    return sub_ce580ac9
}

function sub_cf61cbe4(?) payable {
    require calldata.size - 4 >= 32
    if not uint256(sub_cf61cbe4[arg1].field_0):
        revert with 0, 'not exist'
    mem[128] = uint256(sub_cf61cbe4[arg1][6].field_0)
    idx = 128
    s = 0
    while sub_cf61cbe4[arg1][6].length + 96 > idx:
        mem[idx + 32] = uint256(sub_cf61cbe4[arg1][s + 6].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    return uint256(sub_cf61cbe4[arg1].field_256), 
           uint256(sub_cf61cbe4[arg1].field_512),
           uint256(sub_cf61cbe4[arg1].field_768),
           sub_cf61cbe4[arg1].field_1024,
           sub_cf61cbe4[arg1].field_1280,
           Array(len=sub_cf61cbe4[arg1][6].length, data=mem[128 len sub_cf61cbe4[arg1][6].length])
}

function sub_dc2600c1(?) payable {
    return bool(uint8(stor11.field_168))
}

function sub_deedf089(?) payable {
    return sub_deedf089
}

function _fallback() payable {
    revert
}

function sub_6916965c(?) payable {
    require calldata.size - 4 >= 32
    if _governanceAddress != msg.sender:
        revert with 0, ')not governance'
    sub_bff4b2a6 = arg1
}

function sub_fd87c37c(?) payable {
    require calldata.size - 4 >= 32
    if _governanceAddress != msg.sender:
        revert with 0, ')not governance'
    sub_deedf089 = arg1
}

function sub_fe1724db(?) payable {
    require calldata.size - 4 >= 32
    if _governanceAddress != msg.sender:
        revert with 0, ')not governance'
    sub_4df0f898Address = arg1
}

function addMinter(address arg1) payable {
    require calldata.size - 4 >= 32
    if _governanceAddress != msg.sender:
        revert with 0, ')not governance'
    stor2[address(arg1)] = 1
}

function setRewardAmount(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if _governanceAddress != msg.sender:
        revert with 0, ')not governance'
    sub_49db98fa = arg1
}

function removeMinter(address arg1) payable {
    require calldata.size - 4 >= 32
    if _governanceAddress != msg.sender:
        revert with 0, ')not governance'
    stor2[address(arg1)] = 0
}

function setRewardContract(address arg1) payable {
    require calldata.size - 4 >= 32
    if _governanceAddress != msg.sender:
        revert with 0, ')not governance'
    _rewardTokenAddress = arg1
}

function sub_dffc4a7d(?) payable {
    require calldata.size - 4 >= 32
    if _governanceAddress != msg.sender:
        revert with 0, ')not governance'
    Mask(88, 0, stor11.field_168) = Mask(88, 0, arg1)
}

function setUserStart(bool arg1) payable {
    require calldata.size - 4 >= 32
    if _governanceAddress != msg.sender:
        revert with 0, ')not governance'
    Mask(96, 0, stor11.field_160) = Mask(96, 0, arg1)
}

function sub_b2bd913d(?) payable {
    require calldata.size - 4 >= 288
    if stor1:
        revert with 0, 'initialize: Already initialized!'
    if not arg6:
        revert with 0, 'costAddress can't be null'
    uint256(stor12.field_0) = Mask(96, 0, stor12.field_160)
    sub_4df0f898Address = arg1
    _rewardTokenAddress = arg2
    sub_49db98fa = arg3
    sub_776ce9f8Address = arg4
    sub_ce580ac9 = arg5
    sub_bff4b2a6 = arg7
    sub_8ec25f84Address = arg6
    uint8(stor11.field_160) = uint8(arg8)
    Mask(88, 0, stor11.field_168) = Mask(88, 0, arg9)
    Mask(80, 0, stor11.field_176) = Mask(80, 16, arg8) >> 16
    stor0 = 1
    stor1 = 1
}

function sub_1ec0aab2(?) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    if _governanceAddress != msg.sender:
        revert with 0, ')not governance'
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + 128] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + floor32(arg1.length) + 128] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], Mask(8 * -(arg1.length % 32) + 32, -(8 * -(arg1.length % 32) + 32) + 256, 0) << (8 * -(arg1.length % 32) + 32) - 256 and !(256^(-(arg1.length % 32) + 32) - 1)
    mem[ceil32(arg1.length) + arg1.length + 128] = 13
    stor[mem[arg1.length + 160 len ceil32(arg1.length)]][Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0)] = arg2
}

function onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    if arg1 != this.address:
        mem[ceil32(arg4.length) + 128] = 0
    else:
        mem[ceil32(arg4.length) + 128] = arg1
        mem[ceil32(arg4.length) + 160] = arg2
        emit NFTReceived(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len ceil32(arg4.length) + -arg4.length + 32], arg3, Array(len=arg4.length, data=arg4[all]));
        mem[ceil32(arg4.length) + 128 len 47] = 0xfe6f6e455243373231526563656976656428616464726573732c616464726573732c75696e743235362c6279746573
        mem[ceil32(arg4.length) + 128] = Mask(32, 224, sha3(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), Mask(8 * -arg4.length + ceil32(arg4.length) + 15, 0, 0xfe6f6e455243373231526563656976656428616464726573732c616464726573732c75696e743235362c6279746573)))
    return Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
}

function burn(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if 2 == stor0:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    mem[576] = uint256(sub_cf61cbe4[arg1][6].field_0)
    idx = 576
    s = 0
    while sub_cf61cbe4[arg1][6].length + 544 > idx:
        mem[idx + 32] = uint256(sub_cf61cbe4[arg1][s + 6].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    if not uint256(sub_cf61cbe4[arg1].field_0):
        revert with 0, 'not exist'
    if stor2[msg.sender]:
        mem[ceil32(sub_cf61cbe4[arg1][6].length) + 612] = this.address
        mem[ceil32(sub_cf61cbe4[arg1][6].length) + 644] = arg1
        require ext_code.size(sub_4df0f898Address)
        call sub_4df0f898Address.0x42842e0e with:
             gas gas_remaining wei
            args msg.sender, this.address, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(sub_cf61cbe4[arg1][6].length) + 576] = 0x42966c6800000000000000000000000000000000000000000000000000000000
        mem[ceil32(sub_cf61cbe4[arg1][6].length) + 580] = arg1
        require ext_code.size(sub_4df0f898Address)
        call sub_4df0f898Address.0x42966c68 with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if not sub_cf61cbe4[arg1].field_1024:
            mem[ceil32(sub_cf61cbe4[arg1][6].length) + 576 len floor32(sub_cf61cbe4[arg1][6].length)] = mem[576 len floor32(sub_cf61cbe4[arg1][6].length)]
            mem[ceil32(sub_cf61cbe4[arg1][6].length) + floor32(sub_cf61cbe4[arg1][6].length) + 576] = 256^(-sub_cf61cbe4[arg1][6].length % 32 + 32) - 1 and mem[ceil32(sub_cf61cbe4[arg1][6].length) + floor32(sub_cf61cbe4[arg1][6].length) + 576] or mem[floor32(sub_cf61cbe4[arg1][6].length) + 576] and !(256^(-sub_cf61cbe4[arg1][6].length % 32 + 32) - 1)
            mem[ceil32(sub_cf61cbe4[arg1][6].length) + sub_cf61cbe4[arg1][6].length + 576] = 13
            stor[mem[ceil32(stor3[arg1][6].length) + 580 len stor3[arg1][6].length + 28]][0] = 0
        else:
            if uint256(sub_cf61cbe4[arg1].field_768) <= 0:
                mem[ceil32(sub_cf61cbe4[arg1][6].length) + 576 len floor32(sub_cf61cbe4[arg1][6].length)] = mem[576 len floor32(sub_cf61cbe4[arg1][6].length)]
                mem[ceil32(sub_cf61cbe4[arg1][6].length) + floor32(sub_cf61cbe4[arg1][6].length) + 576] = 256^(-sub_cf61cbe4[arg1][6].length % 32 + 32) - 1 and mem[ceil32(sub_cf61cbe4[arg1][6].length) + floor32(sub_cf61cbe4[arg1][6].length) + 576] or mem[floor32(sub_cf61cbe4[arg1][6].length) + 576] and !(256^(-sub_cf61cbe4[arg1][6].length % 32 + 32) - 1)
                mem[ceil32(sub_cf61cbe4[arg1][6].length) + sub_cf61cbe4[arg1][6].length + 576] = 13
                stor[mem[ceil32(stor3[arg1][6].length) + 580 len stor3[arg1][6].length + 28]][0] = 0
            else:
                mem[ceil32(sub_cf61cbe4[arg1][6].length) + 576] = 68
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_cf61cbe4[arg1].field_1024):
                    revert with 0, 'SafeERC20: call to non-contract'
                if not ext_code.hash(sub_cf61cbe4[arg1].field_1024):
                    revert with 0, 'SafeERC20: call to non-contract'
                mem[ceil32(sub_cf61cbe4[arg1][6].length) + 676 len 64] = 0, msg.sender, Mask(224, 0, sub_cf61cbe4[arg1].field_800)
                var30001 = ceil32(sub_cf61cbe4[arg1][6].length) + 672
                mem[ceil32(sub_cf61cbe4[arg1][6].length) + 768 len 4] = uint32(sub_cf61cbe4[arg1].field_832)
                call sub_cf61cbe4[arg1].field_1024 with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args uint256(sub_cf61cbe4[arg1].field_768), Mask(224, 32, 0, msg.sender, Mask(224, 0, sub_cf61cbe4[arg1].field_800)) >> 32, mem[ceil32(sub_cf61cbe4[arg1][6].length) + 740 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    mem[ceil32(sub_cf61cbe4[arg1][6].length) + 676 len floor32(sub_cf61cbe4[arg1][6].length)] = mem[576 len floor32(sub_cf61cbe4[arg1][6].length)]
                    mem[ceil32(sub_cf61cbe4[arg1][6].length) + floor32(sub_cf61cbe4[arg1][6].length) + 676] = 256^(-sub_cf61cbe4[arg1][6].length % 32 + 32) - 1 and mem[ceil32(sub_cf61cbe4[arg1][6].length) + floor32(sub_cf61cbe4[arg1][6].length) + 676] or mem[floor32(sub_cf61cbe4[arg1][6].length) + 576] and !(256^(-sub_cf61cbe4[arg1][6].length % 32 + 32) - 1)
                    mem[ceil32(sub_cf61cbe4[arg1][6].length) + sub_cf61cbe4[arg1][6].length + 676] = 13
                    stor[mem[ceil32(stor3[arg1][6].length) + floor32(stor3[arg1][6].length) + 676 len stor3[arg1][6].length % 32 + 32]][mem[576 len floor32(stor3[arg1][6].length)]] = 0
                else:
                    mem[ceil32(sub_cf61cbe4[arg1][6].length) + 676] = return_data.size
                    mem[ceil32(sub_cf61cbe4[arg1][6].length) + 708 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[ceil32(sub_cf61cbe4[arg1][6].length) + 708]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x5361666545524332303a204552433230206f7065726174696f6e20646964206e6f742073756363656500,
                                        mem[ceil32(sub_cf61cbe4[arg1][6].length) + ceil32(return_data.size) + 787 len 22]
                    mem[ceil32(sub_cf61cbe4[arg1][6].length) + ceil32(return_data.size) + 677 len floor32(sub_cf61cbe4[arg1][6].length)] = mem[576 len floor32(sub_cf61cbe4[arg1][6].length)]
                    mem[ceil32(sub_cf61cbe4[arg1][6].length) + ceil32(return_data.size) + floor32(sub_cf61cbe4[arg1][6].length) + 677] = 256^(-sub_cf61cbe4[arg1][6].length % 32 + 32) - 1 and mem[ceil32(sub_cf61cbe4[arg1][6].length) + ceil32(return_data.size) + floor32(sub_cf61cbe4[arg1][6].length) + 677] or mem[floor32(sub_cf61cbe4[arg1][6].length) + 576] and !(256^(-sub_cf61cbe4[arg1][6].length % 32 + 32) - 1)
                    mem[ceil32(sub_cf61cbe4[arg1][6].length) + ceil32(return_data.size) + sub_cf61cbe4[arg1][6].length + 677] = 13
                    stor[mem[ceil32(stor3[arg1][6].length) + ceil32(return_data.size) + floor32(stor3[arg1][6].length) + 677 len stor3[arg1][6].length % 32 + 32]][mem[576 len floor32(stor3[arg1][6].length)]] = 0
    else:
        if block.timestamp - uint256(sub_cf61cbe4[arg1].field_256) < sub_bff4b2a6:
            revert with 0, '< burnTime'
        mem[ceil32(sub_cf61cbe4[arg1][6].length) + 612] = this.address
        mem[ceil32(sub_cf61cbe4[arg1][6].length) + 644] = arg1
        require ext_code.size(sub_4df0f898Address)
        call sub_4df0f898Address.0x42842e0e with:
             gas gas_remaining wei
            args msg.sender, this.address, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(sub_cf61cbe4[arg1][6].length) + 576] = 0x42966c6800000000000000000000000000000000000000000000000000000000
        mem[ceil32(sub_cf61cbe4[arg1][6].length) + 580] = arg1
        require ext_code.size(sub_4df0f898Address)
        call sub_4df0f898Address.0x42966c68 with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if not sub_cf61cbe4[arg1].field_1024:
            mem[ceil32(sub_cf61cbe4[arg1][6].length) + 576 len floor32(sub_cf61cbe4[arg1][6].length)] = mem[576 len floor32(sub_cf61cbe4[arg1][6].length)]
            mem[ceil32(sub_cf61cbe4[arg1][6].length) + floor32(sub_cf61cbe4[arg1][6].length) + 576] = 256^(-sub_cf61cbe4[arg1][6].length % 32 + 32) - 1 and mem[ceil32(sub_cf61cbe4[arg1][6].length) + floor32(sub_cf61cbe4[arg1][6].length) + 576] or mem[floor32(sub_cf61cbe4[arg1][6].length) + 576] and !(256^(-sub_cf61cbe4[arg1][6].length % 32 + 32) - 1)
            mem[ceil32(sub_cf61cbe4[arg1][6].length) + sub_cf61cbe4[arg1][6].length + 576] = 13
            stor[mem[ceil32(stor3[arg1][6].length) + 580 len stor3[arg1][6].length + 28]][0] = 0
        else:
            if uint256(sub_cf61cbe4[arg1].field_768) <= 0:
                mem[ceil32(sub_cf61cbe4[arg1][6].length) + 576 len floor32(sub_cf61cbe4[arg1][6].length)] = mem[576 len floor32(sub_cf61cbe4[arg1][6].length)]
                mem[ceil32(sub_cf61cbe4[arg1][6].length) + floor32(sub_cf61cbe4[arg1][6].length) + 576] = 256^(-sub_cf61cbe4[arg1][6].length % 32 + 32) - 1 and mem[ceil32(sub_cf61cbe4[arg1][6].length) + floor32(sub_cf61cbe4[arg1][6].length) + 576] or mem[floor32(sub_cf61cbe4[arg1][6].length) + 576] and !(256^(-sub_cf61cbe4[arg1][6].length % 32 + 32) - 1)
                mem[ceil32(sub_cf61cbe4[arg1][6].length) + sub_cf61cbe4[arg1][6].length + 576] = 13
                stor[mem[ceil32(stor3[arg1][6].length) + 580 len stor3[arg1][6].length + 28]][0] = 0
            else:
                mem[ceil32(sub_cf61cbe4[arg1][6].length) + 576] = 68
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_cf61cbe4[arg1].field_1024):
                    revert with 0, 'SafeERC20: call to non-contract'
                if not ext_code.hash(sub_cf61cbe4[arg1].field_1024):
                    revert with 0, 'SafeERC20: call to non-contract'
                mem[ceil32(sub_cf61cbe4[arg1][6].length) + 676 len 64] = 0, msg.sender, Mask(224, 0, sub_cf61cbe4[arg1].field_800)
                var31001 = ceil32(sub_cf61cbe4[arg1][6].length) + 672
                mem[ceil32(sub_cf61cbe4[arg1][6].length) + 768 len 4] = uint32(sub_cf61cbe4[arg1].field_832)
                call sub_cf61cbe4[arg1].field_1024 with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args uint256(sub_cf61cbe4[arg1].field_768), Mask(224, 32, 0, msg.sender, Mask(224, 0, sub_cf61cbe4[arg1].field_800)) >> 32, mem[ceil32(sub_cf61cbe4[arg1][6].length) + 740 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    mem[ceil32(sub_cf61cbe4[arg1][6].length) + 676 len floor32(sub_cf61cbe4[arg1][6].length)] = mem[576 len floor32(sub_cf61cbe4[arg1][6].length)]
                    mem[ceil32(sub_cf61cbe4[arg1][6].length) + floor32(sub_cf61cbe4[arg1][6].length) + 676] = 256^(-sub_cf61cbe4[arg1][6].length % 32 + 32) - 1 and mem[ceil32(sub_cf61cbe4[arg1][6].length) + floor32(sub_cf61cbe4[arg1][6].length) + 676] or mem[floor32(sub_cf61cbe4[arg1][6].length) + 576] and !(256^(-sub_cf61cbe4[arg1][6].length % 32 + 32) - 1)
                    mem[ceil32(sub_cf61cbe4[arg1][6].length) + sub_cf61cbe4[arg1][6].length + 676] = 13
                    stor[mem[ceil32(stor3[arg1][6].length) + floor32(stor3[arg1][6].length) + 676 len stor3[arg1][6].length % 32 + 32]][mem[576 len floor32(stor3[arg1][6].length)]] = 0
                else:
                    mem[ceil32(sub_cf61cbe4[arg1][6].length) + 676] = return_data.size
                    mem[ceil32(sub_cf61cbe4[arg1][6].length) + 708 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[ceil32(sub_cf61cbe4[arg1][6].length) + 708]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x5361666545524332303a204552433230206f7065726174696f6e20646964206e6f742073756363656500,
                                        mem[ceil32(sub_cf61cbe4[arg1][6].length) + ceil32(return_data.size) + 787 len 22]
                    mem[ceil32(sub_cf61cbe4[arg1][6].length) + ceil32(return_data.size) + 677 len floor32(sub_cf61cbe4[arg1][6].length)] = mem[576 len floor32(sub_cf61cbe4[arg1][6].length)]
                    mem[ceil32(sub_cf61cbe4[arg1][6].length) + ceil32(return_data.size) + floor32(sub_cf61cbe4[arg1][6].length) + 677] = 256^(-sub_cf61cbe4[arg1][6].length % 32 + 32) - 1 and mem[ceil32(sub_cf61cbe4[arg1][6].length) + ceil32(return_data.size) + floor32(sub_cf61cbe4[arg1][6].length) + 677] or mem[floor32(sub_cf61cbe4[arg1][6].length) + 576] and !(256^(-sub_cf61cbe4[arg1][6].length % 32 + 32) - 1)
                    mem[ceil32(sub_cf61cbe4[arg1][6].length) + ceil32(return_data.size) + sub_cf61cbe4[arg1][6].length + 677] = 13
                    stor[mem[ceil32(stor3[arg1][6].length) + ceil32(return_data.size) + floor32(stor3[arg1][6].length) + 677 len stor3[arg1][6].length % 32 + 32]][mem[576 len floor32(stor3[arg1][6].length)]] = 0
    emit 0x8c33ccfb: sub_cf61cbe4[arg1].field_1024, uint256(sub_cf61cbe4[arg1].field_768), uint256(sub_cf61cbe4[arg1].field_0)
    uint256(sub_cf61cbe4[arg1].field_0) = 0
    uint256(sub_cf61cbe4[arg1].field_256) = 0
    uint256(sub_cf61cbe4[arg1].field_512) = 0
    uint256(sub_cf61cbe4[arg1].field_768) = 0
    sub_cf61cbe4[arg1].field_1024 = 0
    sub_cf61cbe4[arg1].field_1280 = 0
    uint256(sub_cf61cbe4[arg1].field_1536) = 0
    if 31 < sub_cf61cbe4[arg1][6].length:
        idx = 0
        while sub_cf61cbe4[arg1][6].length + 31 / 32 > idx:
            uint256(sub_cf61cbe4[arg1][idx + 6].field_0) = 0
            idx = idx + 1
            continue 
    stor0 = 1
    return 1
}



}
