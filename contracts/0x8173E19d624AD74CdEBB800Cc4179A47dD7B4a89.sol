contract main {




// =====================  Runtime code  =====================


uint256 stor0;
uint256 _itemIds;
uint256 _itemsSold;
uint256 sub_a6649eec;
uint256 sub_e7b477ea;
uint256 sub_a5c6c13e;
uint256 sub_b733da5a;
address owner;
uint256 sub_83d913ce;
uint256 sub_b6505234;
mapping of uint256 sub_f83fd278;
mapping of uint256 sub_f0e28cbb;
array of struct sub_f2635543;
array of struct sub_c31adcb9;
mapping of struct sub_e61a70c0;
mapping of struct sub_fe2097d2;
mapping of uint256 sub_b33442eb;
array of struct sub_92ddc7db;
mapping of uint8 stor18;
mapping of uint8 stor19;
uint256 sub_eb730640;
uint256 sub_d1eadc12;
uint256 sub_1aeb2802;
address stor23;
uint8 sub_8a43c7ea; offset 160
uint8 sub_8879a196; offset 168
uint128 stor24; offset 176
uint128 stor24; offset 168
address stor24;

function sub_06f262e6(?) {
    return _itemIds
}

function sub_1aeb2802(?) {
    return sub_1aeb2802
}

function sub_1be39a88(?) {
    require calldata.size - 4 >= 32
    if arg1 <= 0:
        revert with 0, 'There is no such item on sale with given itemId.'
    if arg1 > sub_e7b477ea:
        revert with 0, 'There is no such item on sale with given itemId.'
    return sub_fe2097d2[arg1].field_0, 
           sub_fe2097d2[arg1].field_256,
           sub_fe2097d2[arg1].field_512,
           sub_fe2097d2[arg1].field_768,
           sub_fe2097d2[arg1].field_1024,
           sub_fe2097d2[arg1].field_1280,
           sub_fe2097d2[arg1].field_1536,
           bool(sub_fe2097d2[arg1].field_1792),
           bool(sub_fe2097d2[arg1].field_1800)
}

function fetchMarketItem(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 <= 0:
        revert with 0, 'There is no such item on sale with given itemId.'
    if arg1 > _itemIds:
        revert with 0, 'There is no such item on sale with given itemId.'
    return sub_e61a70c0[arg1].field_0, 
           sub_e61a70c0[arg1].field_256,
           sub_e61a70c0[arg1].field_512,
           sub_e61a70c0[arg1].field_768,
           sub_e61a70c0[arg1].field_1024,
           sub_e61a70c0[arg1].field_1280,
           bool(sub_e61a70c0[arg1].field_1536),
           bool(sub_e61a70c0[arg1].field_1544)
}

function _itemIds() {
    return _itemIds
}

function sub_36982070(?) {
    return sub_d1eadc12
}

function sub_3cbe318b(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor18[arg1])
}

function sub_5fb504e8(?) {
    require calldata.size - 4 >= 32
    return sub_b33442eb[arg1]
}

function sub_83d913ce(?) {
    return sub_83d913ce
}

function _itemsSold() {
    return _itemsSold
}

function sub_8879a196(?) {
    return bool(sub_8879a196)
}

function sub_8a43c7ea(?) {
    return bool(sub_8a43c7ea)
}

function owner() {
    return owner
}

function sub_90cee811(?) {
    return sub_a6649eec
}

function sub_92ddc7db(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 < sub_92ddc7db[arg1].field_0
    return sub_92ddc7db[arg1][arg2].field_0
}

function sub_9add9f89(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor19[arg1])
}

function sub_a3eacc33(?) {
    return sub_b733da5a
}

function sub_a5c6c13e(?) {
    return sub_a5c6c13e
}

function sub_a6649eec(?) {
    return sub_a6649eec
}

function sub_b33442eb(?) {
    require calldata.size - 4 >= 32
    return sub_b33442eb[arg1]
}

function sub_b6505234(?) {
    return sub_b6505234
}

function sub_b733da5a(?) {
    return sub_b733da5a
}

function sub_c31adcb9(?) {
    require calldata.size - 4 >= 64
    require arg2 < sub_c31adcb9[arg1].field_0
    return sub_c31adcb9[arg1][arg2].field_0
}

function sub_cf9652fd(?) {
    return sub_eb730640
}

function sub_d1eadc12(?) {
    return sub_d1eadc12
}

function sub_e488e890(?) {
    return sub_e7b477ea
}

function sub_e61a70c0(?) {
    require calldata.size - 4 >= 32
    return sub_e61a70c0[arg1].field_0, 
           sub_e61a70c0[arg1].field_256,
           sub_e61a70c0[arg1].field_512,
           sub_e61a70c0[arg1].field_768,
           sub_e61a70c0[arg1].field_1024,
           sub_e61a70c0[arg1].field_1280,
           bool(sub_e61a70c0[arg1].field_1536),
           bool(sub_e61a70c0[arg1].field_1544)
}

function sub_e7b477ea(?) {
    return sub_e7b477ea
}

function sub_eb730640(?) {
    return sub_eb730640
}

function sub_f0e28cbb(?) {
    require calldata.size - 4 >= 32
    return sub_f0e28cbb[arg1]
}

function sub_f2635543(?) {
    require calldata.size - 4 >= 64
    require arg2 < sub_f2635543[arg1].field_0
    return sub_f2635543[arg1][arg2].field_0
}

function sub_f83fd278(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_f83fd278[arg1]
}

function sub_fe2097d2(?) {
    require calldata.size - 4 >= 32
    return sub_fe2097d2[arg1].field_0, 
           sub_fe2097d2[arg1].field_256,
           sub_fe2097d2[arg1].field_512,
           sub_fe2097d2[arg1].field_768,
           sub_fe2097d2[arg1].field_1024,
           sub_fe2097d2[arg1].field_1280,
           sub_fe2097d2[arg1].field_1536,
           bool(sub_fe2097d2[arg1].field_1792),
           bool(sub_fe2097d2[arg1].field_1800)
}

function _fallback() payable {
    revert
}

function sub_1e881304(?) {
    if block.timestamp < sub_1aeb2802:
        revert with 0, 17
    if block.timestamp - sub_1aeb2802 / 24 * 3600:
        return (sub_d1eadc12 / block.timestamp - sub_1aeb2802 / 24 * 3600)
    return sub_d1eadc12
}

function sub_9d32a8fc(?) {
    if block.timestamp < sub_1aeb2802:
        revert with 0, 17
    if block.timestamp - sub_1aeb2802 / 24 * 3600:
        return (sub_eb730640 / block.timestamp - sub_1aeb2802 / 24 * 3600)
    return sub_eb730640
}

function sub_85ad4ae7(?) {
    require calldata.size - 4 >= 32
    return sub_b33442eb[arg1], 
           sub_e61a70c0[stor16[arg1]].field_1280,
           sub_e61a70c0[stor16[arg1]].field_768,
           sub_e61a70c0[stor16[arg1]].field_1024
}

function setNFTContract(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only owner can access this function.'
    stor23 = arg1
}

function sub_0c92e777(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only owner can access this function.'
    address(stor24.field_0) = address(arg1)
}

function sub_426b4071(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only owner can access this function.'
    stor18[address(arg1)] = uint8(bool(arg2))
}

function sub_ce494950(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only owner can access this function.'
    stor19[address(arg1)] = uint8(bool(arg2))
}

function supportsInterface(bytes4 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if 0x4e2312e000000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function sub_8b465d88(?) {
    require calldata.size - 4 >= 64
    require arg1 == bool(arg1)
    require arg2 == bool(arg2)
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only owner can access this function.'
    sub_8a43c7ea = uint8(bool(arg1))
    Mask(88, 0, stor24.field_168) = Mask(88, 0, bool(arg2))
    Mask(80, 0, stor24.field_176) = Mask(80, 16, bool(arg1)) >> 16
}

function onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    if arg5.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg5.length)) + 97 < 96 or ceil32(ceil32(arg5.length)) + 97 > test266151307():
        revert with 0, 65
    require arg5 + arg5.length + 36 <= calldata.size
    return 0xf23a6e6100000000000000000000000000000000000000000000000000000000
}

function sub_4fbb2741(?) {
    if sub_92ddc7db[msg.sender].field_0:
        mem[128] = sub_92ddc7db[msg.sender].field_0
        idx = 128
        s = 0
        while (32 * sub_92ddc7db[msg.sender].field_0) + 96 > idx:
            mem[idx + 32] = sub_92ddc7db[msg.sender][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        return Array(len=sub_92ddc7db[msg.sender].field_0, data=mem[128 len 32 * sub_92ddc7db[msg.sender].field_0])
    mem[(32 * sub_92ddc7db[msg.sender].field_0) + 128] = 32
    mem[(32 * sub_92ddc7db[msg.sender].field_0) + 160] = sub_92ddc7db[msg.sender].field_0
    mem[(32 * sub_92ddc7db[msg.sender].field_0) + 192 len 32 * sub_92ddc7db[msg.sender].field_0] = mem[128 len 32 * sub_92ddc7db[msg.sender].field_0]
    return memory
      from (32 * sub_92ddc7db[msg.sender].field_0) + 128
       len (96 * sub_92ddc7db[msg.sender].field_0) + 64
}

function sub_b3e3c42f(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    if not sub_8879a196:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Canceling sales is closed for now. Please contact to owner.'
    if sub_e61a70c0[arg2].field_1536:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'This item have been sold already.'
    if sub_e61a70c0[arg2].field_1544:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'This item have been cancelled already.'
    if sub_e61a70c0[arg2].field_768 != msg.sender:
        revert with 0, 'You are not seller of this item.'
    sub_e61a70c0[arg2].field_1544 = 1
    require ext_code.size(address(arg1))
    call address(arg1).0x23b872dd with:
         gas gas_remaining wei
        args this.address, msg.sender, sub_e61a70c0[arg2].field_512
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    sub_b33442eb[stor14[arg2].field_512] = 0
    if not sub_a6649eec:
        revert with 0, 'Counter: decrement overflow'
    sub_a6649eec--
    emit MarketItemCancelled(arg2);
    stor0 = 1
}

function sub_65b86624(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    if not sub_8879a196:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Canceling sales is closed for now. Please contact to owner.'
    if sub_fe2097d2[arg2].field_1792:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'This item have been sold already.'
    if sub_fe2097d2[arg2].field_1800:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'This item have been cancelled already.'
    if sub_fe2097d2[arg2].field_768 != msg.sender:
        revert with 0, 'You are not seller of this item.'
    sub_fe2097d2[arg2].field_1800 = 1
    require ext_code.size(address(arg1))
    call address(arg1).safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
         gas gas_remaining wei
        args 0, 0, msg.sender, sub_fe2097d2[arg2].field_512, sub_fe2097d2[arg2].field_1536, 160, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if not sub_b733da5a:
        revert with 0, 'Counter: decrement overflow'
    sub_b733da5a--
    emit 0x66a3d25d: arg2
    stor0 = 1
}

function createMarketItem(address arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    if bool(stor18[address(arg1)]) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Can't sell NFTs from this contract.'
    if not sub_8879a196:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Creating market items is closed for now. Please contact to owner.'
    if arg3 <= 0:
        revert with 0, 'Price must be at least 1 wei'
    _itemIds++
    sub_e61a70c0[stor1].field_0 = _itemIds
    sub_e61a70c0[stor1].field_256 = arg1
    sub_e61a70c0[stor1].field_512 = arg2
    sub_e61a70c0[stor1].field_768 = msg.sender
    sub_e61a70c0[stor1].field_1024 = 0
    sub_e61a70c0[stor1].field_1280 = 0
    sub_e61a70c0[stor1].field_1280 = arg3
    sub_e61a70c0[stor1].field_1536 = 0
    sub_e61a70c0[stor1].field_1544 = 0
    sub_e61a70c0[stor1].field_1552 = 0
    sub_b33442eb[arg2] = _itemIds
    require ext_code.size(arg1)
    call arg1.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    sub_a6649eec++
    emit MarketItemCreated(_itemIds);
    stor0 = 1
}

function sub_208d2052(?) {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    if bool(stor19[address(arg1)]) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Can't sell Semi Fungible Tokens from this contract.'
    if not sub_8879a196:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Creating market items is closed for now. Please contact to owner.'
    if arg3 <= 0:
        revert with 0, 'Price must be at least 1 wei'
    sub_e7b477ea++
    sub_fe2097d2[stor4].field_0 = sub_e7b477ea
    sub_fe2097d2[stor4].field_256 = address(arg1)
    sub_fe2097d2[stor4].field_512 = arg2
    sub_fe2097d2[stor4].field_768 = msg.sender
    sub_fe2097d2[stor4].field_1024 = 0
    sub_fe2097d2[stor4].field_1280 = 0
    sub_fe2097d2[stor4].field_1280 = arg3
    sub_fe2097d2[stor4].field_1536 = arg4
    sub_fe2097d2[stor4].field_1792 = 0
    sub_fe2097d2[stor4].field_1800 = 0
    sub_92ddc7db[address(msg.sender)].field_0++
    sub_92ddc7db[address(msg.sender)][sub_92ddc7db[address(msg.sender)].field_0].field_0 = sub_e7b477ea
    require ext_code.size(address(arg1))
    call address(arg1).safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg2, arg4, 160, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    sub_b733da5a++
    emit 0x660dcf47: sub_e7b477ea
    stor0 = 1
}

function onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg3.length) + 97 < 96 or ceil32(32 * arg3.length) + 97 > test266151307():
        revert with 0, 65
    require arg3 + (32 * arg3.length) + 36 <= calldata.size
    idx = 0
    s = arg3 + 36
    t = 128
    while idx < arg3.length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg4.length) + 98 < 97 or ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + 98 > test266151307():
        revert with 0, 65
    require arg4 + (32 * arg4.length) + 36 <= calldata.size
    idx = 0
    s = arg4 + 36
    t = ceil32(32 * arg3.length) + 129
    while idx < arg4.length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    if arg5.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg5.length)) + 99 < 98 or ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99 > test266151307():
        revert with 0, 65
    require arg5 + arg5.length + 36 <= calldata.size
    return 0xbc197c8100000000000000000000000000000000000000000000000000000000
}

function sub_5f2e3bf2(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    if not sub_8a43c7ea:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Sales are closed for now. Please contact to owner.'
    if sub_fe2097d2[arg2].field_1792:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'This item have been sold already.'
    if sub_fe2097d2[arg2].field_1800:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'This item have been cancelled already.'
    if not sub_fe2097d2[arg2].field_1280:
        revert with 0, 'There is no such item on sale.'
    if sub_fe2097d2[arg2].field_1280 != msg.value:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Please submit the asking price in order to complete the purchase'
    call sub_fe2097d2[arg2].field_768 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(arg1))
    call address(arg1).safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
         gas gas_remaining wei
        args 0, 0, msg.sender, sub_fe2097d2[arg2].field_512, sub_fe2097d2[arg2].field_1536, 160, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    sub_fe2097d2[arg2].field_1024 = msg.sender or Mask(96, 160, sub_fe2097d2[arg2].field_1024)
    sub_fe2097d2[arg2].field_1792 = 1
    sub_a5c6c13e++
    if sub_d1eadc12 > !sub_fe2097d2[arg2].field_1280:
        revert with 0, 17
    sub_d1eadc12 += sub_fe2097d2[arg2].field_1280
    if not sub_b733da5a:
        revert with 0, 'Counter: decrement overflow'
    sub_b733da5a--
    emit 0xa0562b52: arg2
    stor0 = 1
}

function getRewardBalance(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[96] = 0xa52e5c9500000000000000000000000000000000000000000000000000000000
    mem[100] = arg1
    require ext_code.size(stor23)
    staticcall stor23.0xa52e5c95 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96 len 4], address(arg1) << 64
    require mem[96 len 4], address(arg1) << 64 <= test266151307()
    require return_data.size + 96 > mem[96 len 4], address(arg1) << 64 + 127
    _5 = mem[mem[96 len 4], address(arg1) << 64 + 96]
    if mem[mem[96 len 4], address(arg1) << 64 + 96] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[mem[96 len 4], address(arg1) << 64 + 96]) + 1 < 0 or ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], address(arg1) << 64 + 96]) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], address(arg1) << 64 + 96]) + 97
    mem[ceil32(return_data.size) + 96] = _5
    require _4 + (32 * _5) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 128 len 32 * _5] = mem[_4 + 128 len 32 * _5]
    idx = 0
    s = 0
    while idx < _5:
        if idx >= mem[ceil32(return_data.size) + 96]:
            revert with 0, 50
        if 0 == mem[(32 * idx) + ceil32(return_data.size) + 128]:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        if idx >= mem[ceil32(return_data.size) + 96]:
            revert with 0, 50
        _44 = mem[(32 * idx) + ceil32(return_data.size) + 128]
        mem[mem[64] + 4] = mem[(32 * idx) + ceil32(return_data.size) + 128]
        require ext_code.size(stor23)
        staticcall stor23.0x83b1449a with:
                gas gas_remaining wei
               args _44
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _47 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_47] == bool(mem[_47])
        if mem[_47]:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        if idx >= mem[ceil32(return_data.size) + 96]:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + ceil32(return_data.size) + 128]
        mem[32] = 11
        if sub_b6505234 < sub_f0e28cbb[mem[(32 * idx) + ceil32(return_data.size) + 128]]:
            revert with 0, 17
        if s > !(sub_b6505234 - sub_f0e28cbb[mem[(32 * idx) + ceil32(return_data.size) + 128]]):
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + sub_b6505234 - sub_f0e28cbb[mem[(32 * idx) + ceil32(return_data.size) + 128]]
        continue 
    if s > !sub_f83fd278[address(arg1)]:
        revert with 0, 17
    if s + sub_f83fd278[address(arg1)] > 0x44b82fa09b5a52cb98b405447c4a98187eebb22f008d5d64f9c394ae9:
        revert with 0, 17
    return ((10^9 * s) + (10^9 * sub_f83fd278[address(arg1)]))
}

function withdrawRewards() {
    mem[96] = 0xa52e5c9500000000000000000000000000000000000000000000000000000000
    mem[100] = msg.sender
    require ext_code.size(stor23)
    staticcall stor23.0xa52e5c95 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96 len 4], Mask(224, 32, msg.sender) >> 32
    require mem[96 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
    require return_data.size + 96 > mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 127
    _5 = mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
    if mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 1 < 0 or ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 97
    mem[ceil32(return_data.size) + 96] = _5
    require _4 + (32 * _5) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 128 len 32 * _5] = mem[_4 + 128 len 32 * _5]
    idx = 0
    s = 0
    while idx < _5:
        if idx >= mem[ceil32(return_data.size) + 96]:
            revert with 0, 50
        if 0 == mem[(32 * idx) + ceil32(return_data.size) + 128]:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        if idx >= mem[ceil32(return_data.size) + 96]:
            revert with 0, 50
        _51 = mem[(32 * idx) + ceil32(return_data.size) + 128]
        mem[mem[64] + 4] = mem[(32 * idx) + ceil32(return_data.size) + 128]
        require ext_code.size(stor23)
        staticcall stor23.0x83b1449a with:
                gas gas_remaining wei
               args _51
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _55 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_55] == bool(mem[_55])
        if mem[_55]:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        if idx >= mem[ceil32(return_data.size) + 96]:
            revert with 0, 50
        if sub_b6505234 < sub_f0e28cbb[mem[(32 * idx) + ceil32(return_data.size) + 128]]:
            revert with 0, 17
        if s > !(sub_b6505234 - sub_f0e28cbb[mem[(32 * idx) + ceil32(return_data.size) + 128]]):
            revert with 0, 17
        if idx >= mem[ceil32(return_data.size) + 96]:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + ceil32(return_data.size) + 128]
        mem[32] = 11
        sub_f0e28cbb[mem[(32 * idx) + ceil32(return_data.size) + 128]] = sub_b6505234
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + sub_b6505234 - sub_f0e28cbb[mem[(32 * idx) + ceil32(return_data.size) + 128]]
        continue 
    if s > !sub_f83fd278[msg.sender]:
        revert with 0, 17
    sub_f83fd278[msg.sender] = 0
    if s + sub_f83fd278[msg.sender] > 0x44b82fa09b5a52cb98b405447c4a98187eebb22f008d5d64f9c394ae9:
        revert with 0, 17
    call msg.sender with:
       value (10^9 * s) + (10^9 * sub_f83fd278[msg.sender]) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function createMarketSale(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    if not sub_8a43c7ea:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Sales are closed for now. Please contact to owner.'
    if sub_e61a70c0[arg2].field_1536:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'This item have been sold already.'
    if sub_e61a70c0[arg2].field_1544:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'This item have been cancelled already.'
    if not sub_e61a70c0[arg2].field_1280:
        revert with 0, 'There is no such item on sale.'
    if sub_e61a70c0[arg2].field_1280 != msg.value:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Please submit the asking price in order to complete the purchase'
    sub_f2635543[stor14[arg2].field_512].field_0++
    sub_f2635543[stor14[arg2].field_512][sub_f2635543[stor14[arg2].field_512].field_0].field_0 = msg.value
    sub_c31adcb9[stor14[arg2].field_512].field_0++
    sub_c31adcb9[stor14[arg2].field_512][sub_c31adcb9[stor14[arg2].field_512].field_0].field_0 = block.timestamp
    require ext_code.size(stor23)
    staticcall stor23.0x30df3b19 with:
            gas gas_remaining wei
           args sub_e61a70c0[arg2].field_512
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if msg.value / 100 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 0, 17
    if not sub_83d913ce:
        revert with 0, 18
    if sub_b6505234 > !(2 * msg.value / 100 / sub_83d913ce / 10^9):
        revert with 0, 17
    sub_b6505234 += 2 * msg.value / 100 / sub_83d913ce / 10^9
    if msg.value / 100 > 0x5555555555555555555555555555555555555555555555555555555555555555:
        revert with 0, 17
    if sub_f83fd278[ext_call.return_data[12 len 20]] > !(3 * msg.value / 100 / 10^9):
        revert with 0, 17
    sub_f83fd278[address(ext_call.return_data[0])] = sub_f83fd278[ext_call.return_data[12 len 20]] + (3 * msg.value / 100 / 10^9)
    if msg.value / 100 > 0x2b9310572620ae4c415c9882b9310572620ae4c415c9882b9310572620ae4c4:
        revert with 0, 17
    call sub_e61a70c0[arg2].field_768 with:
       value 94 * msg.value / 100 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if msg.value / 100 > -1:
        revert with 0, 17
    call owner with:
       value msg.value / 100 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(arg1)
    call arg1.0x23b872dd with:
         gas gas_remaining wei
        args this.address, msg.sender, sub_e61a70c0[arg2].field_512
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    sub_e61a70c0[arg2].field_1024 = msg.sender or Mask(96, 160, sub_e61a70c0[arg2].field_1024)
    sub_e61a70c0[arg2].field_1536 = 1
    _itemsSold++
    if sub_eb730640 > !sub_e61a70c0[arg2].field_1280:
        revert with 0, 17
    sub_eb730640 += sub_e61a70c0[arg2].field_1280
    require ext_code.size(stor23)
    call stor23.0xdfa16fbb with:
         gas gas_remaining wei
        args sub_e61a70c0[arg2].field_768, sub_e61a70c0[arg2].field_512
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor23)
    call stor23.0xead5136e with:
         gas gas_remaining wei
        args msg.sender, sub_e61a70c0[arg2].field_512
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    sub_b33442eb[stor14[arg2].field_512] = 0
    if not sub_a6649eec:
        revert with 0, 'Counter: decrement overflow'
    sub_a6649eec--
    emit MarketItemSold(arg2);
    stor0 = 1
}

function fetchAllMarketItems() {
    if _itemIds > test266151307():
        revert with 0, 65
    mem[96] = _itemIds
    mem[64] = (32 * _itemIds) + 128
    if not _itemIds:
        idx = 0
        while idx < _itemIds:
            if 1 > !idx:
                revert with 0, 17
            mem[0] = idx + 1
            mem[32] = 14
            _37 = mem[64]
            mem[64] = mem[64] + 256
            mem[_37] = sub_e61a70c0[idx + 1].field_0
            mem[_37 + 32] = sub_e61a70c0[idx + 1].field_256
            mem[_37 + 64] = sub_e61a70c0[idx + 1].field_512
            mem[_37 + 96] = sub_e61a70c0[idx + 1].field_768
            mem[_37 + 128] = sub_e61a70c0[idx + 1].field_1024
            mem[_37 + 160] = sub_e61a70c0[idx + 1].field_1280
            mem[_37 + 192] = bool(sub_e61a70c0[idx + 1].field_1536)
            mem[_37 + 224] = bool(sub_e61a70c0[idx + 1].field_1544)
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = _37
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        _35 = mem[96]
        mem[mem[64] + 32] = mem[96]
        s = 0
        s = mem[64] + 64
        t = 128
        while _itemIds < _35:
            _65 = mem[t]
            mem[s] = mem[mem[t]]
            mem[s + 32] = mem[_65 + 44 len 20]
            mem[s + 64] = mem[_65 + 64]
            mem[s + 96] = mem[_65 + 108 len 20]
            mem[s + 128] = mem[_65 + 140 len 20]
            mem[s + 160] = mem[_65 + 160]
            mem[s + 192] = bool(mem[_65 + 192])
            mem[s + 224] = bool(mem[_65 + 224])
            s = _itemIds + 1
            s = s + 256
            t = t + 32
            continue 
    else:
        mem[64] = (32 * _itemIds) + 384
        mem[(32 * _itemIds) + 128] = 0
        mem[(32 * _itemIds) + 160] = 0
        mem[(32 * _itemIds) + 192] = 0
        mem[(32 * _itemIds) + 224] = 0
        mem[(32 * _itemIds) + 256] = 0
        mem[(32 * _itemIds) + 288] = 0
        mem[(32 * _itemIds) + 320] = 0
        mem[(32 * _itemIds) + 352] = 0
        mem[var10001] = (32 * _itemIds) + 128
        s = var10001
        idx = var10002
        while idx - 1:
            mem[64] = mem[64] + 256
            mem[(32 * _itemIds) + 128] = 0
            mem[(32 * _itemIds) + 160] = 0
            mem[(32 * _itemIds) + 192] = 0
            mem[(32 * _itemIds) + 224] = 0
            mem[(32 * _itemIds) + 256] = 0
            mem[(32 * _itemIds) + 288] = 0
            mem[(32 * _itemIds) + 320] = 0
            mem[(32 * _itemIds) + 352] = 0
            mem[s + 32] = (32 * _itemIds) + 128
            s = s + 32
            idx = idx - 1
            continue 
        idx = 0
        while idx < _itemIds:
            if 1 > !idx:
                revert with 0, 17
            mem[0] = idx + 1
            mem[32] = 14
            _93 = mem[64]
            mem[64] = mem[64] + 256
            mem[_93] = sub_e61a70c0[idx + 1].field_0
            mem[_93 + 32] = sub_e61a70c0[idx + 1].field_256
            mem[_93 + 64] = sub_e61a70c0[idx + 1].field_512
            mem[_93 + 96] = sub_e61a70c0[idx + 1].field_768
            mem[_93 + 128] = sub_e61a70c0[idx + 1].field_1024
            mem[_93 + 160] = sub_e61a70c0[idx + 1].field_1280
            mem[_93 + 192] = bool(sub_e61a70c0[idx + 1].field_1536)
            mem[_93 + 224] = bool(sub_e61a70c0[idx + 1].field_1544)
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = _93
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        _91 = mem[96]
        mem[mem[64] + 32] = mem[96]
        s = 0
        s = mem[64] + 64
        t = 128
        while _itemIds < _91:
            _105 = mem[t]
            mem[s] = mem[mem[t]]
            mem[s + 32] = mem[_105 + 44 len 20]
            mem[s + 64] = mem[_105 + 64]
            mem[s + 96] = mem[_105 + 108 len 20]
            mem[s + 128] = mem[_105 + 140 len 20]
            mem[s + 160] = mem[_105 + 160]
            mem[s + 192] = bool(mem[_105 + 192])
            mem[s + 224] = bool(mem[_105 + 224])
            s = _itemIds + 1
            s = s + 256
            t = t + 32
            continue 
    return memory
      from mem[64]
       len s - mem[64]
}

function fetchMarketItems() {
    if _itemIds < _itemsSold:
        revert with 0, 17
    if _itemIds - _itemsSold > test266151307():
        revert with 0, 65
    mem[96] = _itemIds - _itemsSold
    mem[64] = (32 * _itemIds - _itemsSold) + 128
    if not _itemIds - _itemsSold:
        idx = 0
        s = 0
        while idx < _itemIds:
            if 1 > !idx:
                revert with 0, 17
            mem[0] = idx + 1
            mem[32] = 14
            if sub_e61a70c0[idx + 1].field_1024:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            if 1 > !idx:
                revert with 0, 17
            mem[0] = idx + 1
            mem[32] = 14
            _51 = mem[64]
            mem[64] = mem[64] + 256
            mem[_51] = sub_e61a70c0[idx + 1].field_0
            mem[_51 + 32] = sub_e61a70c0[idx + 1].field_256
            mem[_51 + 64] = sub_e61a70c0[idx + 1].field_512
            mem[_51 + 96] = sub_e61a70c0[idx + 1].field_768
            mem[_51 + 128] = sub_e61a70c0[idx + 1].field_1024
            mem[_51 + 160] = sub_e61a70c0[idx + 1].field_1280
            mem[_51 + 192] = bool(sub_e61a70c0[idx + 1].field_1536)
            mem[_51 + 224] = bool(sub_e61a70c0[idx + 1].field_1544)
            if s >= mem[96]:
                revert with 0, 50
            mem[(32 * s) + 128] = _51
            if s > -2:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + 1
            continue 
        _36 = mem[64]
        mem[mem[64]] = 32
        _37 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = mem[64] + 64
        t = 128
        while idx < _37:
            _69 = mem[t]
            mem[s] = mem[mem[t]]
            mem[s + 32] = mem[_69 + 44 len 20]
            mem[s + 64] = mem[_69 + 64]
            mem[s + 96] = mem[_69 + 108 len 20]
            mem[s + 128] = mem[_69 + 140 len 20]
            mem[s + 160] = mem[_69 + 160]
            mem[s + 192] = bool(mem[_69 + 192])
            mem[s + 224] = bool(mem[_69 + 224])
            idx = idx + 1
            s = s + 256
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _36 + (256 * _37) + -mem[64] + 64
    mem[64] = (32 * _itemIds - _itemsSold) + 384
    mem[(32 * _itemIds - _itemsSold) + 128] = 0
    mem[(32 * _itemIds - _itemsSold) + 160] = 0
    mem[(32 * _itemIds - _itemsSold) + 192] = 0
    mem[(32 * _itemIds - _itemsSold) + 224] = 0
    mem[(32 * _itemIds - _itemsSold) + 256] = 0
    mem[(32 * _itemIds - _itemsSold) + 288] = 0
    mem[(32 * _itemIds - _itemsSold) + 320] = 0
    mem[(32 * _itemIds - _itemsSold) + 352] = 0
    mem[var14001] = (32 * _itemIds - _itemsSold) + 128
    s = var14001
    idx = var14002
    while idx - 1:
        mem[64] = mem[64] + 256
        mem[(32 * _itemIds - _itemsSold) + 128] = 0
        mem[(32 * _itemIds - _itemsSold) + 160] = 0
        mem[(32 * _itemIds - _itemsSold) + 192] = 0
        mem[(32 * _itemIds - _itemsSold) + 224] = 0
        mem[(32 * _itemIds - _itemsSold) + 256] = 0
        mem[(32 * _itemIds - _itemsSold) + 288] = 0
        mem[(32 * _itemIds - _itemsSold) + 320] = 0
        mem[(32 * _itemIds - _itemsSold) + 352] = 0
        mem[s + 32] = (32 * _itemIds - _itemsSold) + 128
        s = s + 32
        idx = idx - 1
        continue 
    idx = 0
    s = 0
    while idx < _itemIds:
        if 1 > !idx:
            revert with 0, 17
        mem[0] = idx + 1
        mem[32] = 14
        if sub_e61a70c0[idx + 1].field_1024:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        if 1 > !idx:
            revert with 0, 17
        mem[0] = idx + 1
        mem[32] = 14
        _109 = mem[64]
        mem[64] = mem[64] + 256
        mem[_109] = sub_e61a70c0[idx + 1].field_0
        mem[_109 + 32] = sub_e61a70c0[idx + 1].field_256
        mem[_109 + 64] = sub_e61a70c0[idx + 1].field_512
        mem[_109 + 96] = sub_e61a70c0[idx + 1].field_768
        mem[_109 + 128] = sub_e61a70c0[idx + 1].field_1024
        mem[_109 + 160] = sub_e61a70c0[idx + 1].field_1280
        mem[_109 + 192] = bool(sub_e61a70c0[idx + 1].field_1536)
        mem[_109 + 224] = bool(sub_e61a70c0[idx + 1].field_1544)
        if s >= mem[96]:
            revert with 0, 50
        mem[(32 * s) + 128] = _109
        if s > -2:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + 1
        continue 
    _95 = mem[64]
    mem[mem[64]] = 32
    _96 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < _96:
        _111 = mem[t]
        mem[s] = mem[mem[t]]
        mem[s + 32] = mem[_111 + 44 len 20]
        mem[s + 64] = mem[_111 + 64]
        mem[s + 96] = mem[_111 + 108 len 20]
        mem[s + 128] = mem[_111 + 140 len 20]
        mem[s + 160] = mem[_111 + 160]
        mem[s + 192] = bool(mem[_111 + 192])
        mem[s + 224] = bool(mem[_111 + 224])
        idx = idx + 1
        s = s + 256
        t = t + 32
        continue 
    return memory
      from mem[64]
       len _95 + (256 * _96) + -mem[64] + 64
}

function sub_377023c6(?) {
    if sub_e7b477ea < sub_a5c6c13e:
        revert with 0, 17
    if sub_e7b477ea - sub_a5c6c13e > test266151307():
        revert with 0, 65
    mem[96] = sub_e7b477ea - sub_a5c6c13e
    mem[64] = (32 * sub_e7b477ea - sub_a5c6c13e) + 128
    if not sub_e7b477ea - sub_a5c6c13e:
        idx = 0
        s = 0
        while idx < sub_e7b477ea:
            if 1 > !idx:
                revert with 0, 17
            mem[0] = idx + 1
            mem[32] = 15
            if sub_fe2097d2[idx + 1].field_1024:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            if 1 > !idx:
                revert with 0, 17
            mem[0] = idx + 1
            mem[32] = 15
            _54 = mem[64]
            mem[64] = mem[64] + 288
            mem[_54] = sub_fe2097d2[idx + 1].field_0
            mem[_54 + 32] = sub_fe2097d2[idx + 1].field_256
            mem[_54 + 64] = sub_fe2097d2[idx + 1].field_512
            mem[_54 + 96] = sub_fe2097d2[idx + 1].field_768
            mem[_54 + 128] = sub_fe2097d2[idx + 1].field_1024
            mem[_54 + 160] = sub_fe2097d2[idx + 1].field_1280
            mem[_54 + 192] = sub_fe2097d2[idx + 1].field_1536
            mem[_54 + 224] = bool(sub_fe2097d2[idx + 1].field_1792)
            mem[_54 + 256] = bool(sub_fe2097d2[idx + 1].field_1800)
            if s >= mem[96]:
                revert with 0, 50
            mem[(32 * s) + 128] = _54
            if s > -2:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + 1
            continue 
        _38 = mem[64]
        mem[mem[64]] = 32
        _39 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = mem[64] + 64
        t = 128
        while idx < _39:
            _73 = mem[t]
            mem[s] = mem[mem[t]]
            mem[s + 32] = mem[_73 + 44 len 20]
            mem[s + 64] = mem[_73 + 64]
            mem[s + 96] = mem[_73 + 108 len 20]
            mem[s + 128] = mem[_73 + 140 len 20]
            mem[s + 160] = mem[_73 + 160]
            mem[s + 192] = mem[_73 + 192]
            mem[s + 224] = bool(mem[_73 + 224])
            mem[s + 256] = bool(mem[_73 + 256])
            idx = idx + 1
            s = s + 288
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _38 + (288 * _39) + -mem[64] + 64
    mem[64] = (32 * sub_e7b477ea - sub_a5c6c13e) + 416
    mem[(32 * sub_e7b477ea - sub_a5c6c13e) + 128] = 0
    mem[(32 * sub_e7b477ea - sub_a5c6c13e) + 160] = 0
    mem[(32 * sub_e7b477ea - sub_a5c6c13e) + 192] = 0
    mem[(32 * sub_e7b477ea - sub_a5c6c13e) + 224] = 0
    mem[(32 * sub_e7b477ea - sub_a5c6c13e) + 256] = 0
    mem[(32 * sub_e7b477ea - sub_a5c6c13e) + 288] = 0
    mem[(32 * sub_e7b477ea - sub_a5c6c13e) + 320] = 0
    mem[(32 * sub_e7b477ea - sub_a5c6c13e) + 352] = 0
    mem[(32 * sub_e7b477ea - sub_a5c6c13e) + 384] = 0
    mem[var14001] = (32 * sub_e7b477ea - sub_a5c6c13e) + 128
    s = var14001
    idx = var14002
    while idx - 1:
        mem[64] = mem[64] + 288
        mem[(32 * sub_e7b477ea - sub_a5c6c13e) + 128] = 0
        mem[(32 * sub_e7b477ea - sub_a5c6c13e) + 160] = 0
        mem[(32 * sub_e7b477ea - sub_a5c6c13e) + 192] = 0
        mem[(32 * sub_e7b477ea - sub_a5c6c13e) + 224] = 0
        mem[(32 * sub_e7b477ea - sub_a5c6c13e) + 256] = 0
        mem[(32 * sub_e7b477ea - sub_a5c6c13e) + 288] = 0
        mem[(32 * sub_e7b477ea - sub_a5c6c13e) + 320] = 0
        mem[(32 * sub_e7b477ea - sub_a5c6c13e) + 352] = 0
        mem[(32 * sub_e7b477ea - sub_a5c6c13e) + 384] = 0
        mem[s + 32] = (32 * sub_e7b477ea - sub_a5c6c13e) + 128
        s = s + 32
        idx = idx - 1
        continue 
    idx = 0
    s = 0
    while idx < sub_e7b477ea:
        if 1 > !idx:
            revert with 0, 17
        mem[0] = idx + 1
        mem[32] = 15
        if sub_fe2097d2[idx + 1].field_1024:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        if 1 > !idx:
            revert with 0, 17
        mem[0] = idx + 1
        mem[32] = 15
        _116 = mem[64]
        mem[64] = mem[64] + 288
        mem[_116] = sub_fe2097d2[idx + 1].field_0
        mem[_116 + 32] = sub_fe2097d2[idx + 1].field_256
        mem[_116 + 64] = sub_fe2097d2[idx + 1].field_512
        mem[_116 + 96] = sub_fe2097d2[idx + 1].field_768
        mem[_116 + 128] = sub_fe2097d2[idx + 1].field_1024
        mem[_116 + 160] = sub_fe2097d2[idx + 1].field_1280
        mem[_116 + 192] = sub_fe2097d2[idx + 1].field_1536
        mem[_116 + 224] = bool(sub_fe2097d2[idx + 1].field_1792)
        mem[_116 + 256] = bool(sub_fe2097d2[idx + 1].field_1800)
        if s >= mem[96]:
            revert with 0, 50
        mem[(32 * s) + 128] = _116
        if s > -2:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + 1
        continue 
    _101 = mem[64]
    mem[mem[64]] = 32
    _102 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < _102:
        _118 = mem[t]
        mem[s] = mem[mem[t]]
        mem[s + 32] = mem[_118 + 44 len 20]
        mem[s + 64] = mem[_118 + 64]
        mem[s + 96] = mem[_118 + 108 len 20]
        mem[s + 128] = mem[_118 + 140 len 20]
        mem[s + 160] = mem[_118 + 160]
        mem[s + 192] = mem[_118 + 192]
        mem[s + 224] = bool(mem[_118 + 224])
        mem[s + 256] = bool(mem[_118 + 256])
        idx = idx + 1
        s = s + 288
        t = t + 32
        continue 
    return memory
      from mem[64]
       len _101 + (288 * _102) + -mem[64] + 64
}

function sub_e05d541d(?) {
    require calldata.size - 4 >= 32
    mem[96] = sub_f2635543[arg1].field_0
    if not sub_f2635543[arg1].field_0:
        mem[0] = arg1
        mem[32] = 13
        mem[(32 * sub_f2635543[arg1].field_0) + 128] = sub_c31adcb9[arg1].field_0
        if not sub_c31adcb9[arg1].field_0:
            if sub_f2635543[arg1].field_0 >= 10:
                mem[(32 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 160] = 10
                mem[(32 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 192 len 320] = call.data[calldata.size len 320]
                mem[(32 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 512] = 10
                mem[(32 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 544 len 320] = call.data[calldata.size len 320]
                idx = 0
                s = sub_f2635543[arg1].field_0 - 10
                while idx < 10:
                    if s >= sub_f2635543[arg1].field_0:
                        revert with 0, 50
                    if idx >= 10:
                        revert with 0, 50
                    mem[(32 * idx) + (32 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 192] = mem[(32 * s) + 128]
                    if s >= sub_c31adcb9[arg1].field_0:
                        revert with 0, 50
                    if idx >= mem[(32 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 512]:
                        revert with 0, 50
                    mem[(32 * idx) + (32 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 544] = mem[(32 * s) + (32 * sub_f2635543[arg1].field_0) + 160]
                    if s == -1:
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + 1
                    continue 
                mem[(32 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 864] = 64
                mem[(32 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 928] = 10
                mem[(32 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 960 len 320] = mem[(32 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 192 len 320]
                mem[(32 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 896] = 416
                mem[(32 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 1280] = mem[(32 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 512]
                mem[(32 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 1312 len 32 * mem[(32 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 512]] = mem[(32 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 544 len 32 * mem[(32 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 512]]
                return 64, 
                       416,
                       10,
                       mem[(32 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 192 len 320],
                       mem[(32 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 1280 len (32 * mem[(32 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 512]) + 32]
            if sub_f2635543[arg1].field_0 > test266151307():
                revert with 0, 65
            mem[(32 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 160] = sub_f2635543[arg1].field_0
            if not sub_f2635543[arg1].field_0:
                if sub_f2635543[arg1].field_0 > test266151307():
                    revert with 0, 65
                mem[(64 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 192] = sub_f2635543[arg1].field_0
                mem[64] = (98 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 224
                if not sub_f2635543[arg1].field_0:
                    idx = 0
                    while idx < sub_f2635543[arg1].field_0:
                        if idx >= mem[96]:
                            revert with 0, 50
                        if idx >= mem[(32 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 160]:
                            revert with 0, 50
                        mem[(32 * idx) + (32 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 192] = mem[(32 * idx) + 128]
                        if idx >= mem[(32 * sub_f2635543[arg1].field_0) + 128]:
                            revert with 0, 50
                        if idx >= mem[(64 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 192]:
                            revert with 0, 50
                        mem[(32 * idx) + (64 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 224] = mem[(32 * idx) + (32 * sub_f2635543[arg1].field_0) + 160]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    _75 = mem[64]
                    mem[mem[64]] = 64
                    _95 = mem[(32 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 160]
                    mem[mem[64] + 64] = mem[(32 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 160]
                    mem[mem[64] + 96 len 32 * _95] = mem[(32 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 192 len 32 * _95]
                    mem[mem[64] + 32] = (32 * _95) + 96
                    _143 = mem[(64 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 192]
                    mem[_75 + (32 * _95) + 96] = mem[(64 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 192]
                    mem[_75 + (32 * _95) + 128 len 32 * _143] = mem[(64 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 224 len 32 * _143]
                    return memory
                      from mem[64]
                       len _75 + (32 * _95) + (32 * _143) + -mem[64] + 128
                mem[(64 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 224 len 32 * sub_f2635543[arg1].field_0] = call.data[calldata.size len 32 * sub_f2635543[arg1].field_0]
                idx = 0
                while idx < sub_f2635543[arg1].field_0:
                    if idx >= mem[96]:
                        revert with 0, 50
                    if idx >= mem[(32 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 160]:
                        revert with 0, 50
                    mem[(32 * idx) + (32 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 192] = mem[(32 * idx) + 128]
                    if idx >= mem[(32 * sub_f2635543[arg1].field_0) + 128]:
                        revert with 0, 50
                    if idx >= mem[(64 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 192]:
                        revert with 0, 50
                    mem[(32 * idx) + (64 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 224] = mem[(32 * idx) + (32 * sub_f2635543[arg1].field_0) + 160]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _78 = mem[64]
                mem[mem[64]] = 64
                _98 = mem[(32 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 160]
                mem[mem[64] + 64] = mem[(32 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 160]
                mem[mem[64] + 96 len 32 * _98] = mem[(32 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 192 len 32 * _98]
                mem[mem[64] + 32] = (32 * _98) + 96
                _144 = mem[(64 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 192]
                mem[_78 + (32 * _98) + 96] = mem[(64 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 192]
                mem[_78 + (32 * _98) + 128 len 32 * _144] = mem[(64 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 224 len 32 * _144]
                return memory
                  from mem[64]
                   len _78 + (32 * _98) + (32 * _144) + -mem[64] + 128
            mem[(32 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 192 len 32 * sub_f2635543[arg1].field_0] = call.data[calldata.size len 32 * sub_f2635543[arg1].field_0]
            if sub_f2635543[arg1].field_0 > test266151307():
                revert with 0, 65
            mem[(64 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 192] = sub_f2635543[arg1].field_0
            mem[64] = (98 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 224
            if not sub_f2635543[arg1].field_0:
                idx = 0
                while idx < sub_f2635543[arg1].field_0:
                    if idx >= mem[96]:
                        revert with 0, 50
                    if idx >= mem[(32 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 160]:
                        revert with 0, 50
                    mem[(32 * idx) + (32 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 192] = mem[(32 * idx) + 128]
                    if idx >= mem[(32 * sub_f2635543[arg1].field_0) + 128]:
                        revert with 0, 50
                    if idx >= mem[(64 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 192]:
                        revert with 0, 50
                    mem[(32 * idx) + (64 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 224] = mem[(32 * idx) + (32 * sub_f2635543[arg1].field_0) + 160]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _81 = mem[64]
                mem[mem[64]] = 64
                _101 = mem[(32 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 160]
                mem[mem[64] + 64] = mem[(32 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 160]
                mem[mem[64] + 96 len 32 * _101] = mem[(32 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 192 len 32 * _101]
                mem[mem[64] + 32] = (32 * _101) + 96
                _145 = mem[(64 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 192]
                mem[_81 + (32 * _101) + 96] = mem[(64 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 192]
                mem[_81 + (32 * _101) + 128 len 32 * _145] = mem[(64 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 224 len 32 * _145]
                return memory
                  from mem[64]
                   len _81 + (32 * _101) + (32 * _145) + -mem[64] + 128
            mem[(64 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 224 len 32 * sub_f2635543[arg1].field_0] = call.data[calldata.size len 32 * sub_f2635543[arg1].field_0]
            idx = 0
            while idx < sub_f2635543[arg1].field_0:
                if idx >= mem[96]:
                    revert with 0, 50
                if idx >= mem[(32 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 160]:
                    revert with 0, 50
                mem[(32 * idx) + (32 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 192] = mem[(32 * idx) + 128]
                if idx >= mem[(32 * sub_f2635543[arg1].field_0) + 128]:
                    revert with 0, 50
                if idx >= mem[(64 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 192]:
                    revert with 0, 50
                mem[(32 * idx) + (64 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 224] = mem[(32 * idx) + (32 * sub_f2635543[arg1].field_0) + 160]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _84 = mem[64]
            mem[mem[64]] = 64
            _104 = mem[(32 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 160]
            mem[mem[64] + 64] = mem[(32 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 160]
            mem[mem[64] + 96 len 32 * _104] = mem[(32 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 192 len 32 * _104]
            mem[mem[64] + 32] = (32 * _104) + 96
            _146 = mem[(64 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 192]
            mem[_84 + (32 * _104) + 96] = mem[(64 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 192]
            mem[_84 + (32 * _104) + 128 len 32 * _146] = mem[(64 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 224 len 32 * _146]
            return memory
              from mem[64]
               len _84 + (32 * _104) + (32 * _146) + -mem[64] + 128
        mem[0] = sha3(arg1, 13)
        mem[(32 * sub_f2635543[arg1].field_0) + 160] = sub_c31adcb9[arg1].field_0
        idx = (32 * sub_f2635543[arg1].field_0) + 160
        s = 0
        while (32 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 128 > idx:
            mem[idx + 32] = sub_c31adcb9[arg1][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        if sub_f2635543[arg1].field_0 >= 10:
            mem[(32 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 192 len 320] = call.data[calldata.size len 320]
            mem[(32 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 512] = 10
            mem[(32 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 544 len 320] = call.data[calldata.size len 320]
            idx = 0
            s = sub_f2635543[arg1].field_0 - 10
            while idx < 10:
                if s >= sub_f2635543[arg1].field_0:
                    revert with 0, 50
                if idx >= mem[(32 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 160]:
                    revert with 0, 50
                mem[(32 * idx) + (32 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 192] = mem[(32 * s) + 128]
                if s >= sub_c31adcb9[arg1].field_0:
                    revert with 0, 50
                if idx >= mem[(32 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 512]:
                    revert with 0, 50
                mem[(32 * idx) + (32 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 544] = mem[(32 * s) + (32 * sub_f2635543[arg1].field_0) + 160]
                if s == -1:
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + 1
                continue 
            mem[(32 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 864] = 64
            mem[(32 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 928] = mem[(32 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 160]
            mem[(32 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 960 len 32 * mem[(32 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 160]] = mem[(32 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 192 len 32 * mem[(32 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 160]]
            mem[(32 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 896] = (32 * mem[(32 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 160]) + 96
            mem[(32 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + (32 * mem[(32 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 160]) + 960] = mem[(32 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 512]
            mem[(32 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + (32 * mem[(32 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 160]) + 992 len 32 * mem[(32 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 512]] = mem[(32 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 544 len 32 * mem[(32 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 512]]
            return Array(len=mem[(32 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 160], data=mem[(32 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 960 len (32 * mem[(32 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 160]) + (32 * mem[(32 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 512]) + 32]), 
                   (32 * mem[(32 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 160]) + 96
        if sub_f2635543[arg1].field_0 > test266151307():
            revert with 0, 65
        mem[(32 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 160] = sub_f2635543[arg1].field_0
        if not sub_f2635543[arg1].field_0:
            if sub_f2635543[arg1].field_0 > test266151307():
                revert with 0, 65
            mem[(64 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 192] = sub_f2635543[arg1].field_0
            mem[64] = (98 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 224
            if not sub_f2635543[arg1].field_0:
                idx = 0
                while idx < sub_f2635543[arg1].field_0:
                    if idx >= mem[96]:
                        revert with 0, 50
                    if idx >= mem[(32 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 160]:
                        revert with 0, 50
                    mem[(32 * idx) + (32 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 192] = mem[(32 * idx) + 128]
                    if idx >= mem[(32 * sub_f2635543[arg1].field_0) + 128]:
                        revert with 0, 50
                    if idx >= mem[(64 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 192]:
                        revert with 0, 50
                    mem[(32 * idx) + (64 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 224] = mem[(32 * idx) + (32 * sub_f2635543[arg1].field_0) + 160]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _288 = mem[64]
                mem[mem[64]] = 64
                _333 = mem[(32 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 160]
                mem[mem[64] + 64] = mem[(32 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 160]
                mem[mem[64] + 96 len 32 * _333] = mem[(32 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 192 len 32 * _333]
                mem[mem[64] + 32] = (32 * _333) + 96
                _415 = mem[(64 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 192]
                mem[_288 + (32 * _333) + 96] = mem[(64 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 192]
                mem[_288 + (32 * _333) + 128 len 32 * _415] = mem[(64 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 224 len 32 * _415]
                return memory
                  from mem[64]
                   len _288 + (32 * _333) + (32 * _415) + -mem[64] + 128
            mem[(64 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 224 len 32 * sub_f2635543[arg1].field_0] = call.data[calldata.size len 32 * sub_f2635543[arg1].field_0]
            idx = 0
            while idx < sub_f2635543[arg1].field_0:
                if idx >= mem[96]:
                    revert with 0, 50
                if idx >= mem[(32 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 160]:
                    revert with 0, 50
                mem[(32 * idx) + (32 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 192] = mem[(32 * idx) + 128]
                if idx >= mem[(32 * sub_f2635543[arg1].field_0) + 128]:
                    revert with 0, 50
                if idx >= mem[(64 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 192]:
                    revert with 0, 50
                mem[(32 * idx) + (64 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 224] = mem[(32 * idx) + (32 * sub_f2635543[arg1].field_0) + 160]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _291 = mem[64]
            mem[mem[64]] = 64
            _336 = mem[(32 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 160]
            mem[mem[64] + 64] = mem[(32 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 160]
            mem[mem[64] + 96 len 32 * _336] = mem[(32 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 192 len 32 * _336]
            var27001 = _336
            mem[mem[64] + 32] = (32 * _336) + 96
            _416 = mem[(64 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 192]
            mem[_291 + (32 * _336) + 96] = mem[(64 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 192]
            mem[_291 + (32 * _336) + 128 len 32 * _416] = mem[(64 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 224 len 32 * _416]
            return memory
              from mem[64]
               len _291 + (32 * _336) + (32 * _416) + -mem[64] + 128
        mem[(32 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 192 len 32 * sub_f2635543[arg1].field_0] = call.data[calldata.size len 32 * sub_f2635543[arg1].field_0]
        if sub_f2635543[arg1].field_0 > test266151307():
            revert with 0, 65
        mem[(64 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 192] = sub_f2635543[arg1].field_0
        mem[64] = (98 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 224
        if not sub_f2635543[arg1].field_0:
            idx = 0
            while idx < sub_f2635543[arg1].field_0:
                if idx >= mem[96]:
                    revert with 0, 50
                if idx >= mem[(32 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 160]:
                    revert with 0, 50
                mem[(32 * idx) + (32 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 192] = mem[(32 * idx) + 128]
                if idx >= mem[(32 * sub_f2635543[arg1].field_0) + 128]:
                    revert with 0, 50
                if idx >= mem[(64 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 192]:
                    revert with 0, 50
                mem[(32 * idx) + (64 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 224] = mem[(32 * idx) + (32 * sub_f2635543[arg1].field_0) + 160]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _294 = mem[64]
            mem[mem[64]] = 64
            _339 = mem[(32 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 160]
            mem[mem[64] + 64] = mem[(32 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 160]
            mem[mem[64] + 96 len 32 * _339] = mem[(32 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 192 len 32 * _339]
            var27001 = _339
            mem[mem[64] + 32] = (32 * _339) + 96
            _417 = mem[(64 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 192]
            mem[_294 + (32 * _339) + 96] = mem[(64 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 192]
            mem[_294 + (32 * _339) + 128 len 32 * _417] = mem[(64 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 224 len 32 * _417]
            return memory
              from mem[64]
               len _294 + (32 * _339) + (32 * _417) + -mem[64] + 128
        mem[(64 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 224 len 32 * sub_f2635543[arg1].field_0] = call.data[calldata.size len 32 * sub_f2635543[arg1].field_0]
        idx = 0
        while idx < sub_f2635543[arg1].field_0:
            if idx >= mem[96]:
                revert with 0, 50
            if idx >= mem[(32 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 160]:
                revert with 0, 50
            mem[(32 * idx) + (32 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 192] = mem[(32 * idx) + 128]
            if idx >= mem[(32 * sub_f2635543[arg1].field_0) + 128]:
                revert with 0, 50
            if idx >= mem[(64 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 192]:
                revert with 0, 50
            mem[(32 * idx) + (64 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 224] = mem[(32 * idx) + (32 * sub_f2635543[arg1].field_0) + 160]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _297 = mem[64]
        mem[mem[64]] = 64
        _342 = mem[(32 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 160]
        mem[mem[64] + 64] = mem[(32 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 160]
        mem[mem[64] + 96 len 32 * _342] = mem[(32 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 192 len 32 * _342]
        var28001 = _342
        mem[mem[64] + 32] = (32 * _342) + 96
        _418 = mem[(64 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 192]
        mem[_297 + (32 * _342) + 96] = mem[(64 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 192]
        mem[_297 + (32 * _342) + 128 len 32 * _418] = mem[(64 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 224 len 32 * _418]
        return memory
          from mem[64]
           len _297 + (32 * _342) + (32 * _418) + -mem[64] + 128
    mem[128] = sub_f2635543[arg1].field_0
    idx = 128
    s = 0
    while (32 * sub_f2635543[arg1].field_0) + 96 > idx:
        mem[idx + 32] = sub_f2635543[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[0] = arg1
    mem[32] = 13
    mem[(32 * sub_f2635543[arg1].field_0) + 128] = sub_c31adcb9[arg1].field_0
    if not sub_c31adcb9[arg1].field_0:
        if sub_f2635543[arg1].field_0 >= 10:
            mem[(32 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 192 len 320] = call.data[calldata.size len 320]
            mem[(32 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 512] = 10
            mem[(32 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 544 len 320] = call.data[calldata.size len 320]
            idx = 0
            s = sub_f2635543[arg1].field_0 - 10
            while idx < 10:
                if s >= sub_f2635543[arg1].field_0:
                    revert with 0, 50
                if idx >= mem[(32 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 160]:
                    revert with 0, 50
                mem[(32 * idx) + (32 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 192] = mem[(32 * s) + 128]
                if s >= sub_c31adcb9[arg1].field_0:
                    revert with 0, 50
                if idx >= mem[(32 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 512]:
                    revert with 0, 50
                mem[(32 * idx) + (32 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 544] = mem[(32 * s) + (32 * sub_f2635543[arg1].field_0) + 160]
                if s == -1:
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + 1
                continue 
            mem[(32 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 864] = 64
            mem[(32 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 928] = mem[(32 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 160]
            mem[(32 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 960 len 32 * mem[(32 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 160]] = mem[(32 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 192 len 32 * mem[(32 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 160]]
            mem[(32 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 896] = (32 * mem[(32 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 160]) + 96
            mem[(32 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + (32 * mem[(32 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 160]) + 960] = mem[(32 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 512]
            mem[(32 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + (32 * mem[(32 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 160]) + 992 len 32 * mem[(32 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 512]] = mem[(32 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 544 len 32 * mem[(32 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 512]]
            return Array(len=mem[(32 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 160], data=mem[(32 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 960 len (32 * mem[(32 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 160]) + (32 * mem[(32 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 512]) + 32]), 
                   (32 * mem[(32 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 160]) + 96
        if sub_f2635543[arg1].field_0 > test266151307():
            revert with 0, 65
        mem[(32 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 160] = sub_f2635543[arg1].field_0
        if not sub_f2635543[arg1].field_0:
            if sub_f2635543[arg1].field_0 > test266151307():
                revert with 0, 65
            mem[(64 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 192] = sub_f2635543[arg1].field_0
            mem[64] = (98 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 224
            if not sub_f2635543[arg1].field_0:
                idx = 0
                while idx < sub_f2635543[arg1].field_0:
                    if idx >= mem[96]:
                        revert with 0, 50
                    if idx >= mem[(32 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 160]:
                        revert with 0, 50
                    mem[(32 * idx) + (32 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 192] = mem[(32 * idx) + 128]
                    if idx >= mem[(32 * sub_f2635543[arg1].field_0) + 128]:
                        revert with 0, 50
                    if idx >= mem[(64 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 192]:
                        revert with 0, 50
                    mem[(32 * idx) + (64 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 224] = mem[(32 * idx) + (32 * sub_f2635543[arg1].field_0) + 160]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _303 = mem[64]
                mem[mem[64]] = 64
                _348 = mem[(32 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 160]
                mem[mem[64] + 64] = mem[(32 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 160]
                mem[mem[64] + 96 len 32 * _348] = mem[(32 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 192 len 32 * _348]
                mem[mem[64] + 32] = (32 * _348) + 96
                _420 = mem[(64 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 192]
                mem[_303 + (32 * _348) + 96] = mem[(64 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 192]
                mem[_303 + (32 * _348) + 128 len 32 * _420] = mem[(64 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 224 len 32 * _420]
                var31001 = _420
                return memory
                  from mem[64]
                   len _303 + (32 * _348) + (32 * _420) + -mem[64] + 128
            mem[(64 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 224 len 32 * sub_f2635543[arg1].field_0] = call.data[calldata.size len 32 * sub_f2635543[arg1].field_0]
            idx = 0
            while idx < sub_f2635543[arg1].field_0:
                if idx >= mem[96]:
                    revert with 0, 50
                if idx >= mem[(32 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 160]:
                    revert with 0, 50
                mem[(32 * idx) + (32 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 192] = mem[(32 * idx) + 128]
                if idx >= mem[(32 * sub_f2635543[arg1].field_0) + 128]:
                    revert with 0, 50
                if idx >= mem[(64 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 192]:
                    revert with 0, 50
                mem[(32 * idx) + (64 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 224] = mem[(32 * idx) + (32 * sub_f2635543[arg1].field_0) + 160]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _306 = mem[64]
            mem[mem[64]] = 64
            _351 = mem[(32 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 160]
            mem[mem[64] + 64] = mem[(32 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 160]
            mem[mem[64] + 96 len 32 * _351] = mem[(32 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 192 len 32 * _351]
            var27001 = _351
            mem[mem[64] + 32] = (32 * _351) + 96
            _421 = mem[(64 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 192]
            mem[_306 + (32 * _351) + 96] = mem[(64 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 192]
            mem[_306 + (32 * _351) + 128 len 32 * _421] = mem[(64 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 224 len 32 * _421]
            var32001 = _421
            return memory
              from mem[64]
               len _306 + (32 * _351) + (32 * _421) + -mem[64] + 128
        mem[(32 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 192 len 32 * sub_f2635543[arg1].field_0] = call.data[calldata.size len 32 * sub_f2635543[arg1].field_0]
        if sub_f2635543[arg1].field_0 > test266151307():
            revert with 0, 65
        mem[(64 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 192] = sub_f2635543[arg1].field_0
        mem[64] = (98 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 224
        if not sub_f2635543[arg1].field_0:
            idx = 0
            while idx < sub_f2635543[arg1].field_0:
                if idx >= mem[96]:
                    revert with 0, 50
                if idx >= mem[(32 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 160]:
                    revert with 0, 50
                mem[(32 * idx) + (32 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 192] = mem[(32 * idx) + 128]
                if idx >= mem[(32 * sub_f2635543[arg1].field_0) + 128]:
                    revert with 0, 50
                if idx >= mem[(64 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 192]:
                    revert with 0, 50
                mem[(32 * idx) + (64 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 224] = mem[(32 * idx) + (32 * sub_f2635543[arg1].field_0) + 160]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _309 = mem[64]
            mem[mem[64]] = 64
            _354 = mem[(32 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 160]
            mem[mem[64] + 64] = mem[(32 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 160]
            mem[mem[64] + 96 len 32 * _354] = mem[(32 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 192 len 32 * _354]
            var27001 = _354
            mem[mem[64] + 32] = (32 * _354) + 96
            _422 = mem[(64 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 192]
            mem[_309 + (32 * _354) + 96] = mem[(64 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 192]
            mem[_309 + (32 * _354) + 128 len 32 * _422] = mem[(64 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 224 len 32 * _422]
            var32001 = _422
            return memory
              from mem[64]
               len _309 + (32 * _354) + (32 * _422) + -mem[64] + 128
        mem[(64 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 224 len 32 * sub_f2635543[arg1].field_0] = call.data[calldata.size len 32 * sub_f2635543[arg1].field_0]
        idx = 0
        while idx < sub_f2635543[arg1].field_0:
            if idx >= mem[96]:
                revert with 0, 50
            if idx >= mem[(32 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 160]:
                revert with 0, 50
            mem[(32 * idx) + (32 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 192] = mem[(32 * idx) + 128]
            if idx >= mem[(32 * sub_f2635543[arg1].field_0) + 128]:
                revert with 0, 50
            if idx >= mem[(64 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 192]:
                revert with 0, 50
            mem[(32 * idx) + (64 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 224] = mem[(32 * idx) + (32 * sub_f2635543[arg1].field_0) + 160]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _312 = mem[64]
        mem[mem[64]] = 64
        _357 = mem[(32 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 160]
        mem[mem[64] + 64] = mem[(32 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 160]
        mem[mem[64] + 96 len 32 * _357] = mem[(32 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 192 len 32 * _357]
        var28001 = _357
        mem[mem[64] + 32] = (32 * _357) + 96
        _423 = mem[(64 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 192]
        mem[_312 + (32 * _357) + 96] = mem[(64 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 192]
        mem[_312 + (32 * _357) + 128 len 32 * _423] = mem[(64 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 224 len 32 * _423]
        var33001 = _423
        var33002 = (64 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + (32 * _423) + 224
        return memory
          from mem[64]
           len _312 + (32 * _357) + (32 * _423) + -mem[64] + 128
    mem[0] = sha3(arg1, 13)
    mem[(32 * sub_f2635543[arg1].field_0) + 160] = sub_c31adcb9[arg1].field_0
    idx = (32 * sub_f2635543[arg1].field_0) + 160
    s = 0
    while (32 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 128 > idx:
        mem[idx + 32] = sub_c31adcb9[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if sub_f2635543[arg1].field_0 >= 10:
        mem[(32 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 192 len 320] = call.data[calldata.size len 320]
        mem[(32 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 512] = 10
        mem[(32 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 544 len 320] = call.data[calldata.size len 320]
        idx = 0
        s = sub_f2635543[arg1].field_0 - 10
        while idx < 10:
            if s >= sub_f2635543[arg1].field_0:
                revert with 0, 50
            if idx >= mem[(32 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 160]:
                revert with 0, 50
            mem[(32 * idx) + (32 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 192] = mem[(32 * s) + 128]
            if s >= sub_c31adcb9[arg1].field_0:
                revert with 0, 50
            if idx >= mem[(32 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 512]:
                revert with 0, 50
            mem[(32 * idx) + (32 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 544] = mem[(32 * s) + (32 * sub_f2635543[arg1].field_0) + 160]
            if s == -1:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + 1
            continue 
        mem[(32 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 864] = 64
        mem[(32 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 928] = mem[(32 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 160]
        mem[(32 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 960 len 32 * mem[(32 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 160]] = mem[(32 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 192 len 32 * mem[(32 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 160]]
        var29001 = mem[(32 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 160]
        var29002 = (32 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + (32 * mem[(32 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 160]) + 192
        mem[(32 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 896] = (32 * mem[(32 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 160]) + 96
        mem[(32 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + (32 * mem[(32 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 160]) + 960] = mem[(32 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 512]
        mem[(32 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + (32 * mem[(32 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 160]) + 992 len 32 * mem[(32 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 512]] = mem[(32 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 544 len 32 * mem[(32 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 512]]
        return Array(len=mem[(32 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 160], data=mem[(32 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 960 len (32 * mem[(32 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 160]) + (32 * mem[(32 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 512]) + 32]), 
               (32 * mem[(32 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 160]) + 96
    if sub_f2635543[arg1].field_0 > test266151307():
        revert with 0, 65
    mem[(32 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 160] = sub_f2635543[arg1].field_0
    if not sub_f2635543[arg1].field_0:
        if sub_f2635543[arg1].field_0 > test266151307():
            revert with 0, 65
        mem[(64 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 192] = sub_f2635543[arg1].field_0
        mem[64] = (98 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 224
        if not sub_f2635543[arg1].field_0:
            idx = 0
            while idx < sub_f2635543[arg1].field_0:
                if idx >= mem[96]:
                    revert with 0, 50
                if idx >= mem[(32 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 160]:
                    revert with 0, 50
                mem[(32 * idx) + (32 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 192] = mem[(32 * idx) + 128]
                if idx >= mem[(32 * sub_f2635543[arg1].field_0) + 128]:
                    revert with 0, 50
                if idx >= mem[(64 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 192]:
                    revert with 0, 50
                mem[(32 * idx) + (64 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 224] = mem[(32 * idx) + (32 * sub_f2635543[arg1].field_0) + 160]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _518 = mem[64]
            mem[mem[64]] = 64
            _548 = mem[(32 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 160]
            mem[mem[64] + 64] = mem[(32 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 160]
            mem[mem[64] + 96 len 32 * _548] = mem[(32 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 192 len 32 * _548]
            mem[mem[64] + 32] = (32 * _548) + 96
            _586 = mem[(64 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 192]
            mem[_518 + (32 * _548) + 96] = mem[(64 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 192]
            mem[_518 + (32 * _548) + 128 len 32 * _586] = mem[(64 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 224 len 32 * _586]
            return memory
              from mem[64]
               len _518 + (32 * _548) + (32 * _586) + -mem[64] + 128
        mem[(64 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 224 len 32 * sub_f2635543[arg1].field_0] = call.data[calldata.size len 32 * sub_f2635543[arg1].field_0]
        idx = 0
        while idx < sub_f2635543[arg1].field_0:
            if idx >= mem[96]:
                revert with 0, 50
            if idx >= mem[(32 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 160]:
                revert with 0, 50
            mem[(32 * idx) + (32 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 192] = mem[(32 * idx) + 128]
            if idx >= mem[(32 * sub_f2635543[arg1].field_0) + 128]:
                revert with 0, 50
            if idx >= mem[(64 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 192]:
                revert with 0, 50
            mem[(32 * idx) + (64 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 224] = mem[(32 * idx) + (32 * sub_f2635543[arg1].field_0) + 160]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _521 = mem[64]
        mem[mem[64]] = 64
        _551 = mem[(32 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 160]
        mem[mem[64] + 64] = mem[(32 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 160]
        mem[mem[64] + 96 len 32 * _551] = mem[(32 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 192 len 32 * _551]
        var31001 = _551
        mem[mem[64] + 32] = (32 * _551) + 96
        _587 = mem[(64 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 192]
        mem[_521 + (32 * _551) + 96] = mem[(64 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 192]
        mem[_521 + (32 * _551) + 128 len 32 * _587] = mem[(64 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 224 len 32 * _587]
        return memory
          from mem[64]
           len _521 + (32 * _551) + (32 * _587) + -mem[64] + 128
    mem[(32 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 192 len 32 * sub_f2635543[arg1].field_0] = call.data[calldata.size len 32 * sub_f2635543[arg1].field_0]
    if sub_f2635543[arg1].field_0 > test266151307():
        revert with 0, 65
    mem[(64 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 192] = sub_f2635543[arg1].field_0
    mem[64] = (98 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 224
    if not sub_f2635543[arg1].field_0:
        idx = 0
        while idx < sub_f2635543[arg1].field_0:
            if idx >= mem[96]:
                revert with 0, 50
            if idx >= mem[(32 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 160]:
                revert with 0, 50
            mem[(32 * idx) + (32 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 192] = mem[(32 * idx) + 128]
            if idx >= mem[(32 * sub_f2635543[arg1].field_0) + 128]:
                revert with 0, 50
            if idx >= mem[(64 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 192]:
                revert with 0, 50
            mem[(32 * idx) + (64 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 224] = mem[(32 * idx) + (32 * sub_f2635543[arg1].field_0) + 160]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _524 = mem[64]
        mem[mem[64]] = 64
        _554 = mem[(32 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 160]
        mem[mem[64] + 64] = mem[(32 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 160]
        mem[mem[64] + 96 len 32 * _554] = mem[(32 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 192 len 32 * _554]
        var31001 = _554
        mem[mem[64] + 32] = (32 * _554) + 96
        _588 = mem[(64 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 192]
        mem[_524 + (32 * _554) + 96] = mem[(64 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 192]
        mem[_524 + (32 * _554) + 128 len 32 * _588] = mem[(64 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 224 len 32 * _588]
        return memory
          from mem[64]
           len _524 + (32 * _554) + (32 * _588) + -mem[64] + 128
    mem[(64 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 224 len 32 * sub_f2635543[arg1].field_0] = call.data[calldata.size len 32 * sub_f2635543[arg1].field_0]
    idx = 0
    while idx < sub_f2635543[arg1].field_0:
        if idx >= mem[96]:
            revert with 0, 50
        if idx >= mem[(32 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 160]:
            revert with 0, 50
        mem[(32 * idx) + (32 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 192] = mem[(32 * idx) + 128]
        if idx >= mem[(32 * sub_f2635543[arg1].field_0) + 128]:
            revert with 0, 50
        if idx >= mem[(64 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 192]:
            revert with 0, 50
        mem[(32 * idx) + (64 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 224] = mem[(32 * idx) + (32 * sub_f2635543[arg1].field_0) + 160]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    _527 = mem[64]
    mem[mem[64]] = 64
    _557 = mem[(32 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 160]
    mem[mem[64] + 64] = mem[(32 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 160]
    mem[mem[64] + 96 len 32 * _557] = mem[(32 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 192 len 32 * _557]
    var32001 = _557
    mem[mem[64] + 32] = (32 * _557) + 96
    _589 = mem[(64 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 192]
    mem[_527 + (32 * _557) + 96] = mem[(64 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 192]
    mem[_527 + (32 * _557) + 128 len 32 * _589] = mem[(64 * sub_f2635543[arg1].field_0) + (32 * sub_c31adcb9[arg1].field_0) + 224 len 32 * _589]
    return memory
      from mem[64]
       len _527 + (32 * _557) + (32 * _589) + -mem[64] + 128
}



}
