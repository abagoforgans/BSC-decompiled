contract main {




// =====================  Runtime code  =====================


address sub_f7e63dbfAddress;
address _owner;
mapping of uint8 stor2;
uint32 sub_d714f55b;
uint256 tradeFee;
uint256 sub_3f843294;
uint256 sub_f4d408fd;
uint256 sub_3f7e0cf8;
address collectionAddress;
address sub_c0c89a8aAddress;
address sub_b8959a8bAddress;
address sub_23e83d7aAddress;
address sub_52a16275Address;
uint8 sub_dd45c9b8; offset 160
uint8 sub_23d5429e; offset 168
uint8 sub_99926571; offset 176
uint128 stor13; offset 176
uint128 stor13; offset 168
uint128 stor13; offset 160
address sub_0f23471bAddress;
mapping of struct sub_7916afb9;
mapping of struct sub_2921426f;
mapping of struct sub_8b0122a2;

function sub_0f23471b(?) payable {
    return sub_0f23471bAddress
}

function sub_23d5429e(?) payable {
    return bool(sub_23d5429e)
}

function sub_23e83d7a(?) payable {
    return sub_23e83d7aAddress
}

function sub_2921426f(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_2921426f[arg1].field_0, sub_2921426f[arg1].field_256, bool(sub_2921426f[arg1].field_288)
}

function sub_3f7e0cf8(?) payable {
    return sub_3f7e0cf8
}

function sub_3f843294(?) payable {
    return sub_3f843294
}

function sub_52a16275(?) payable {
    return sub_52a16275Address
}

function sub_721bb045(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if _owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    return bool(stor2[address(arg1)])
}

function sub_7916afb9(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    return sub_7916afb9[address(arg1)][arg2].field_0, 
           sub_7916afb9[address(arg1)][arg2].field_256,
           sub_7916afb9[address(arg1)][arg2].field_512,
           bool(sub_7916afb9[address(arg1)][arg2].field_768)
}

function sub_8b0122a2(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == uint32(arg1)
    return sub_8b0122a2[arg1 << 224].field_0, sub_8b0122a2[arg1 << 224].field_256
}

function getTradeFee() payable {
    return tradeFee
}

function sub_99926571(?) payable {
    return bool(sub_99926571)
}

function _owner() payable {
    return _owner
}

function sub_b8959a8b(?) payable {
    return sub_b8959a8bAddress
}

function sub_c0c89a8a(?) payable {
    return sub_c0c89a8aAddress
}

function getCollectionAddress() payable {
    return collectionAddress
}

function sub_d714f55b(?) payable {
    return sub_d714f55b
}

function sub_dd45c9b8(?) payable {
    return bool(sub_dd45c9b8)
}

function sub_f4d408fd(?) payable {
    return sub_f4d408fd
}

function sub_f7e63dbf(?) payable {
    return sub_f7e63dbfAddress
}

function _fallback() payable {
    revert
}

function sub_b856db01(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if _owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor2[address(arg1)] = 0
}

function sub_cef7c8b6(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if _owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor2[address(arg1)] = 1
}

function sub_089b1b49(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if _owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_0f23471bAddress = address(arg1)
}

function sub_1d52be13(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if _owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_23e83d7aAddress = address(arg1)
}

function sub_49fd7870(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if _owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_52a16275Address = address(arg1)
}

function setOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if _owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_f7e63dbfAddress = _owner
    _owner = arg1
}

function setStopStatus(bool arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if _owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(96, 0, stor13.field_160) = Mask(96, 0, arg1)
}

function sub_c038d127(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if _owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(88, 0, stor13.field_168) = Mask(88, 0, bool(arg1))
}

function sub_e15ad35f(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if _owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(80, 0, stor13.field_176) = Mask(80, 0, bool(arg1))
}

function sub_a4813010(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == uint32(arg1)
    if _owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_8b0122a2[arg1 << 224].field_0 = 0
    sub_8b0122a2[arg1 << 224].field_256 = 0
}

function sub_f4a1305a(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == uint32(arg1)
    require arg2 == arg2
    if _owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_8b0122a2[arg1 << 224].field_0 = uint32(arg1)
    sub_8b0122a2[arg1 << 224].field_256 = arg2
}

function sub_4b2983b5(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if _owner != msg.sender:
        if bool(stor2[address(msg.sender)]) != 1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: caller is not the owner or administrators'
    sub_3f7e0cf8 = arg1
}

function sub_502bf523(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if _owner != msg.sender:
        if bool(stor2[address(msg.sender)]) != 1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: caller is not the owner or administrators'
    sub_3f843294 = arg1
}

function sub_592d4c60(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if _owner != msg.sender:
        if bool(stor2[address(msg.sender)]) != 1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: caller is not the owner or administrators'
    sub_f4d408fd = arg1
}

function setTradeFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if _owner != msg.sender:
        if bool(stor2[address(msg.sender)]) != 1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: caller is not the owner or administrators'
    tradeFee = arg1
}

function sub_5d7dd41f(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == uint32(arg1)
    if _owner != msg.sender:
        if bool(stor2[address(msg.sender)]) != 1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: caller is not the owner or administrators'
    sub_d714f55b = uint32(arg1)
}

function setCollectionAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if _owner != msg.sender:
        if bool(stor2[address(msg.sender)]) != 1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: caller is not the owner or administrators'
    collectionAddress = arg1
}

function sub_cf3e3b53(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if _owner != msg.sender:
        if bool(stor2[address(msg.sender)]) != 1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: caller is not the owner or administrators'
    sub_c0c89a8aAddress = address(arg1)
}

function setNftContractAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if _owner != msg.sender:
        if bool(stor2[address(msg.sender)]) != 1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: caller is not the owner or administrators'
    sub_b8959a8bAddress = arg1
}

function sub_03d2680c(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if _owner != msg.sender:
        if bool(stor2[address(msg.sender)]) != 1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: caller is not the owner or administrators'
    sub_2921426f[arg1].field_0 = 0
    sub_2921426f[arg1].field_256 = 0
    sub_2921426f[arg1].field_288 = 0
}

function sub_28140ce7(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == uint32(arg1)
    require calldata.size - 36 >= 64
    require arg2 == uint32(arg2)
    require arg3 == arg3
    if _owner != msg.sender:
        if bool(stor2[address(msg.sender)]) != 1:
            revert with 0, 'Ownable: caller is not the owner or administrators'
    sub_8b0122a2[arg1 << 224].field_0 = uint32(arg2)
    sub_8b0122a2[arg1 << 224].field_256 = arg3
}

function sub_84509c9e(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == uint32(arg2)
    if _owner != msg.sender:
        if bool(stor2[address(msg.sender)]) != 1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: caller is not the owner or administrators'
    sub_2921426f[arg1].field_0 = arg1
    sub_2921426f[arg1].field_256 = uint32(arg2)
    sub_2921426f[arg1].field_288 = 1
}

function sub_2f389691(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require calldata.size - 36 >= 96
    require arg2 == arg2
    require arg3 == uint32(arg3)
    require arg4 == bool(arg4)
    if _owner != msg.sender:
        if bool(stor2[address(msg.sender)]) != 1:
            revert with 0, 'Ownable: caller is not the owner or administrators'
    sub_2921426f[arg1].field_0 = arg2
    sub_2921426f[arg1].field_256 = uint32(arg3)
    sub_2921426f[arg1].field_288 = Mask(224, 0, bool(arg4))
}

function sub_2c72c526(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    if _owner != msg.sender:
        if bool(stor2[address(msg.sender)]) != 1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: caller is not the owner or administrators'
    sub_7916afb9[address(arg1)][arg2].field_0 = 0
    sub_7916afb9[address(arg1)][arg2].field_256 = 0
    sub_7916afb9[address(arg1)][arg2].field_512 = 0
    sub_7916afb9[address(arg1)][arg2].field_768 = 0
}

function sub_0ee58db3(?) payable {
    require calldata.size - 4 >= 192
    require arg1 == address(arg1)
    require arg2 == arg2
    require calldata.size - 68 >= 128
    require arg3 == address(arg3)
    require arg4 == arg4
    require arg5 == arg5
    require arg6 == bool(arg6)
    if _owner != msg.sender:
        if bool(stor2[address(msg.sender)]) != 1:
            revert with 0, 'Ownable: caller is not the owner or administrators'
    sub_7916afb9[address(arg1)][arg2].field_0 = address(arg3)
    sub_7916afb9[address(arg1)][arg2].field_256 = arg4
    sub_7916afb9[address(arg1)][arg2].field_512 = arg5
    sub_7916afb9[address(arg1)][arg2].field_768 = uint8(bool(arg6))
}



}
