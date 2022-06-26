contract main {




// =====================  Runtime code  =====================


uint256 stor0;
address owner;
uint256 _itemIds;
uint256 _itemsSold;
address stor4;
address stor5;
address sub_cd6c1dfbAddress;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 sub_ef8069e7;
mapping of uint256 sub_b51cf707;
array of struct sub_96ec50c3;
mapping of struct stor13;
mapping of struct sub_b62a0e33;
uint256 storE710;
address storE710;
address storE710;
uint256 storE710;
uint8 storE710;
uint256 storE710;
address storE710;
uint256 storE710;

function _itemIds() {
    return _itemIds
}

function _itemsSold() {
    return _itemsSold
}

function owner() {
    return owner
}

function sub_96ec50c3(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 < sub_96ec50c3[arg1].field_0
    return sub_96ec50c3[arg1][arg2].field_0, sub_96ec50c3[arg1][arg2].field_256
}

function sub_b51cf707(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_b51cf707[arg1]
}

function sub_b62a0e33(?) {
    require calldata.size - 4 >= 32
    return sub_b62a0e33[arg1].field_0, 
           sub_b62a0e33[arg1].field_256,
           sub_b62a0e33[arg1].field_512,
           sub_b62a0e33[arg1].field_768,
           sub_b62a0e33[arg1].field_1024,
           bool(sub_b62a0e33[arg1].field_1280),
           sub_b62a0e33[arg1].field_1536,
           sub_b62a0e33[arg1].field_1792,
           sub_b62a0e33[arg1].field_2048
}

function sub_cd6c1dfb(?) {
    return sub_cd6c1dfbAddress
}

function sub_ef8069e7(?) {
    return sub_ef8069e7
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_1e9d0b11(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_ef8069e7 = arg1
}

function updateFeeRecipient(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor4 = arg1
}

function updateReflectionContract(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor5 = arg1
}

function updateFees(uint256 arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor7 = arg1
    stor8 = arg2
    stor9 = arg3
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function sub_dcddff63(?) {
    require calldata.size - 4 >= 32
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    if arg1 > _itemIds:
        revert with 0, 'Item not exist'
    if stor13[arg1].field_512 != msg.sender:
        revert with 0, 'Caller must be the seller'
    stor13[arg1].field_1536 = 0
    stor13[arg1].field_1792 = 0
    stor13[arg1].field_2048 = 0
    stor13[arg1].field_2048 = 0
    sub_b62a0e33[stor13[arg1].field_256].field_0 = stor13[arg1].field_0
    sub_b62a0e33[stor13[arg1].field_256].field_256 = stor13[arg1].field_256
    sub_b62a0e33[stor13[arg1].field_256].field_512 = stor13[arg1].field_512
    sub_b62a0e33[stor13[arg1].field_256].field_768 = stor13[arg1].field_768
    sub_b62a0e33[stor13[arg1].field_256].field_1024 = stor13[arg1].field_1024
    sub_b62a0e33[stor13[arg1].field_256].field_1280 = uint8(bool(stor13[arg1].field_1280))
    sub_b62a0e33[stor13[arg1].field_256].field_1536 = stor13[arg1].field_1536
    sub_b62a0e33[stor13[arg1].field_256].field_1792 = stor13[arg1].field_1792
    sub_b62a0e33[stor13[arg1].field_256].field_2048 = stor13[arg1].field_2048
    if eth.balance(this.address) < stor13[arg1].field_1536:
        revert with 0, 'Address: insufficient balance'
    call stor13[arg1].field_1792 with:
       value stor13[arg1].field_1536 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'Address: unable to send value, recipient may have reverted'
    emit 0xce438350: stor13[arg1].field_1536, stor13[arg1].field_1792, arg1
    stor0 = 1
}

function createMarketItem(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    if not arg2:
        revert with 0, 'Price must be at least 1 wei'
    require ext_code.size(sub_cd6c1dfbAddress)
    staticcall sub_cd6c1dfbAddress.ownerOf(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'You are not an owner'
    require ext_code.size(sub_cd6c1dfbAddress)
    call sub_cd6c1dfbAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _itemIds++
    stor13[stor2].field_0 = _itemIds
    stor13[stor2].field_256 = arg1
    stor13[stor2].field_512 = msg.sender
    stor13[stor2].field_768 = msg.sender
    stor13[stor2].field_1024 = arg2
    stor13[stor2].field_1280 = 0
    stor13[stor2].field_1536 = 0
    stor13[stor2].field_1792 = 0
    stor13[stor2].field_2048 = 0
    sub_b62a0e33[arg1].field_0 = _itemIds
    sub_b62a0e33[arg1].field_256 = arg1
    sub_b62a0e33[arg1].field_512 = msg.sender
    sub_b62a0e33[arg1].field_768 = msg.sender
    sub_b62a0e33[arg1].field_1024 = arg2
    sub_b62a0e33[arg1].field_1280 = 0
    sub_b62a0e33[arg1].field_1536 = 0
    sub_b62a0e33[arg1].field_1792 = 0
    sub_b62a0e33[arg1].field_2048 = 0
    emit 0x4a29ff6f: msg.sender, msg.sender, arg2, 0, _itemIds, arg1
    stor0 = 1
}

function sub_01504adf(?) {
    require calldata.size - 4 >= 32
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    if arg1 > _itemIds:
        revert with 0, 'Item not exist'
    if stor13[arg1].field_1792 != msg.sender:
        revert with 0, 'Caller must be the last bidder'
    if block.timestamp < stor13[arg1].field_2048:
        revert with 0, 17
    if block.timestamp - stor13[arg1].field_2048 < sub_ef8069e7:
        revert with 0, 'You must wait emergencyTimer'
    stor13[arg1].field_1536 = 0
    stor13[arg1].field_1792 = 0
    stor13[arg1].field_2048 = 0
    stor13[arg1].field_2048 = 0
    sub_b62a0e33[stor13[arg1].field_256].field_0 = stor13[arg1].field_0
    sub_b62a0e33[stor13[arg1].field_256].field_256 = stor13[arg1].field_256
    sub_b62a0e33[stor13[arg1].field_256].field_512 = stor13[arg1].field_512
    sub_b62a0e33[stor13[arg1].field_256].field_768 = stor13[arg1].field_768
    sub_b62a0e33[stor13[arg1].field_256].field_1024 = stor13[arg1].field_1024
    sub_b62a0e33[stor13[arg1].field_256].field_1280 = uint8(bool(stor13[arg1].field_1280))
    sub_b62a0e33[stor13[arg1].field_256].field_1536 = stor13[arg1].field_1536
    sub_b62a0e33[stor13[arg1].field_256].field_1792 = stor13[arg1].field_1792
    sub_b62a0e33[stor13[arg1].field_256].field_2048 = stor13[arg1].field_2048
    if eth.balance(this.address) < stor13[arg1].field_1536:
        revert with 0, 'Address: insufficient balance'
    call stor13[arg1].field_1792 with:
       value stor13[arg1].field_1536 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'Address: unable to send value, recipient may have reverted'
    emit 0xb5a65538: stor13[arg1].field_1536, stor13[arg1].field_1792, arg1
    stor0 = 1
}

function sub_099be860(?) {
    require calldata.size - 4 >= 32
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    if arg1 > _itemIds:
        revert with 0, 'Item not exist'
    if stor13[arg1].field_512 != msg.sender:
        revert with 0, 'Caller must be the seller'
    sub_b62a0e33[stor13[arg1].field_256].field_0 = 0
    sub_b62a0e33[stor13[arg1].field_256].field_256 = 0
    sub_b62a0e33[stor13[arg1].field_256].field_512 = 0
    sub_b62a0e33[stor13[arg1].field_256].field_768 = 0
    sub_b62a0e33[stor13[arg1].field_256].field_1024 = 0
    sub_b62a0e33[stor13[arg1].field_256].field_1280 = 0
    sub_b62a0e33[stor13[arg1].field_256].field_1536 = 0
    sub_b62a0e33[stor13[arg1].field_256].field_1792 = 0
    sub_b62a0e33[stor13[arg1].field_256].field_2048 = 0
    sub_b62a0e33[stor13[arg1].field_256].field_0 = sub_b62a0e33[0].field_0
    sub_b62a0e33[stor13[arg1].field_256].field_256 = storE710
    sub_b62a0e33[stor13[arg1].field_256].field_512 = storE710
    sub_b62a0e33[stor13[arg1].field_256].field_768 = storE710
    sub_b62a0e33[stor13[arg1].field_256].field_1024 = storE710
    sub_b62a0e33[stor13[arg1].field_256].field_1280 = uint8(bool(storE710))
    sub_b62a0e33[stor13[arg1].field_256].field_1536 = storE710
    sub_b62a0e33[stor13[arg1].field_256].field_1792 = storE710
    sub_b62a0e33[stor13[arg1].field_256].field_2048 = storE710
    stor13[arg1].field_0 = stor13[stor2].field_0
    stor13[arg1].field_256 = stor13[stor2].field_256
    stor13[arg1].field_512 = stor13[stor2].field_512
    stor13[arg1].field_768 = stor13[stor2].field_768
    stor13[arg1].field_1024 = stor13[stor2].field_1024
    stor13[arg1].field_1280 = uint8(bool(stor13[stor2].field_1280))
    stor13[arg1].field_1536 = stor13[stor2].field_1536
    stor13[arg1].field_1792 = stor13[stor2].field_1792
    stor13[arg1].field_2048 = stor13[stor2].field_2048
    stor13[stor2].field_0 = 0
    stor13[stor2].field_256 = 0
    stor13[stor2].field_512 = 0
    stor13[stor2].field_768 = 0
    stor13[stor2].field_1024 = 0
    stor13[stor2].field_1280 = 0
    stor13[stor2].field_1536 = 0
    stor13[stor2].field_1792 = 0
    stor13[stor2].field_2048 = 0
    stor13[arg1].field_0 = arg1
    if not _itemIds:
        revert with 0, 'Counter: decrement overflow'
    _itemIds--
    require ext_code.size(sub_cd6c1dfbAddress)
    call sub_cd6c1dfbAddress.0x23b872dd with:
         gas gas_remaining wei
        args this.address, stor13[arg1].field_512, stor13[arg1].field_256
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if eth.balance(this.address) < stor13[arg1].field_1536:
        revert with 0, 'Address: insufficient balance'
    call stor13[arg1].field_1792 with:
       value stor13[arg1].field_1536 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'Address: unable to send value, recipient may have reverted'
    emit 0xe4e94747: stor13[arg1].field_512, arg1, stor13[arg1].field_256
    stor0 = 1
}

function sub_a9b85c57(?) {
    require calldata.size - 4 >= 32
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    if arg1 > _itemIds:
        revert with 0, 'Item not exist'
    if stor13[arg1].field_512 != msg.sender:
        revert with 0, 'Caller must be the seller'
    if not stor13[arg1].field_1792:
        revert with 0, 'Invalid bidder'
    if stor13[arg1].field_1536 and stor7 > -1 / stor13[arg1].field_1536:
        revert with 0, 17
    if stor13[arg1].field_1536 and stor8 > -1 / stor13[arg1].field_1536:
        revert with 0, 17
    if stor13[arg1].field_1536 and stor9 > -1 / stor13[arg1].field_1536:
        revert with 0, 17
    if eth.balance(this.address) < stor13[arg1].field_1536 * stor7 / 100:
        revert with 0, 'Address: insufficient balance'
    call stor4 with:
       value stor13[arg1].field_1536 * stor7 / 100 wei
         gas gas_remaining wei
    if not return_data.size:
        if not ext_call.success:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'Address: unable to send value, recipient may have reverted'
        if eth.balance(this.address) < stor13[arg1].field_1536 * stor8 / 100:
            revert with 0, 'Address: insufficient balance'
        call stor5 with:
           value stor13[arg1].field_1536 * stor8 / 100 wei
             gas gas_remaining wei
        if not return_data.size:
            if not ext_call.success:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            'Address: unable to send value, recipient may have reverted'
        else:
            if not ext_call.success:
                revert with 0, 'Address: unable to send value, recipient may have reverted'
    else:
        if not ext_call.success:
            revert with 0, 'Address: unable to send value, recipient may have reverted'
        if eth.balance(this.address) < stor13[arg1].field_1536 * stor8 / 100:
            revert with 0, 'Address: insufficient balance'
        call stor5 with:
           value stor13[arg1].field_1536 * stor8 / 100 wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with 0, 'Address: unable to send value, recipient may have reverted'
    ('bool', 'ext_call.success')
    require ext_code.size(sub_cd6c1dfbAddress)
    staticcall sub_cd6c1dfbAddress.minters(uint256 arg1) with:
            gas gas_remaining wei
           args stor13[arg1].field_256
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if eth.balance(this.address) < stor13[arg1].field_1536 * stor9 / 100:
        revert with 0, 'Address: insufficient balance'
    call ext_call.return_data[12 len 20] with:
       value stor13[arg1].field_1536 * stor9 / 100 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'Address: unable to send value, recipient may have reverted'
    require ext_code.size(sub_cd6c1dfbAddress)
    staticcall sub_cd6c1dfbAddress.minters(uint256 arg1) with:
            gas gas_remaining wei
           args stor13[arg1].field_256
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if sub_b51cf707[ext_call.return_data[12 len 20]] > !(stor13[arg1].field_1536 * stor9 / 100):
        revert with 0, 17
    sub_b51cf707[ext_call.return_data[12 len 20]] += stor13[arg1].field_1536 * stor9 / 100
    if stor13[arg1].field_1536 < stor13[arg1].field_1536 * stor7 / 100:
        revert with 0, 17
    if stor13[arg1].field_1536 - (stor13[arg1].field_1536 * stor7 / 100) < stor13[arg1].field_1536 * stor8 / 100:
        revert with 0, 17
    if stor13[arg1].field_1536 - (stor13[arg1].field_1536 * stor7 / 100) - (stor13[arg1].field_1536 * stor8 / 100) < stor13[arg1].field_1536 * stor9 / 100:
        revert with 0, 17
    if eth.balance(this.address) < stor13[arg1].field_1536 - (stor13[arg1].field_1536 * stor7 / 100) - (stor13[arg1].field_1536 * stor8 / 100) - (stor13[arg1].field_1536 * stor9 / 100):
        revert with 0, 'Address: insufficient balance'
    call msg.sender with:
       value stor13[arg1].field_1536 - (stor13[arg1].field_1536 * stor7 / 100) - (stor13[arg1].field_1536 * stor8 / 100) - (stor13[arg1].field_1536 * stor9 / 100) wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'Address: unable to send value, recipient may have reverted'
    require ext_code.size(sub_cd6c1dfbAddress)
    call sub_cd6c1dfbAddress.0x23b872dd with:
         gas gas_remaining wei
        args this.address, stor13[arg1].field_1792, stor13[arg1].field_256
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _itemsSold++
    sub_b62a0e33[stor13[arg1].field_256].field_0 = 0
    sub_b62a0e33[stor13[arg1].field_256].field_256 = 0
    sub_b62a0e33[stor13[arg1].field_256].field_512 = 0
    sub_b62a0e33[stor13[arg1].field_256].field_768 = 0
    sub_b62a0e33[stor13[arg1].field_256].field_1024 = 0
    sub_b62a0e33[stor13[arg1].field_256].field_1280 = 0
    sub_b62a0e33[stor13[arg1].field_256].field_1536 = 0
    sub_b62a0e33[stor13[arg1].field_256].field_1792 = 0
    sub_b62a0e33[stor13[arg1].field_256].field_2048 = 0
    sub_b62a0e33[stor13[arg1].field_256].field_0 = sub_b62a0e33[0].field_0
    sub_b62a0e33[stor13[arg1].field_256].field_256 = storE710
    sub_b62a0e33[stor13[arg1].field_256].field_512 = storE710
    sub_b62a0e33[stor13[arg1].field_256].field_768 = storE710
    sub_b62a0e33[stor13[arg1].field_256].field_1024 = storE710
    sub_b62a0e33[stor13[arg1].field_256].field_1280 = uint8(bool(storE710))
    sub_b62a0e33[stor13[arg1].field_256].field_1536 = storE710
    sub_b62a0e33[stor13[arg1].field_256].field_1792 = storE710
    sub_b62a0e33[stor13[arg1].field_256].field_2048 = storE710
    stor13[arg1].field_0 = stor13[stor2].field_0
    stor13[arg1].field_256 = stor13[stor2].field_256
    stor13[arg1].field_512 = stor13[stor2].field_512
    stor13[arg1].field_768 = stor13[stor2].field_768
    stor13[arg1].field_1024 = stor13[stor2].field_1024
    stor13[arg1].field_1280 = uint8(bool(stor13[stor2].field_1280))
    stor13[arg1].field_1536 = stor13[stor2].field_1536
    stor13[arg1].field_1792 = stor13[stor2].field_1792
    stor13[arg1].field_2048 = stor13[stor2].field_2048
    stor13[stor2].field_0 = 0
    stor13[stor2].field_256 = 0
    stor13[stor2].field_512 = 0
    stor13[stor2].field_768 = 0
    stor13[stor2].field_1024 = 0
    stor13[stor2].field_1280 = 0
    stor13[stor2].field_1536 = 0
    stor13[stor2].field_1792 = 0
    stor13[stor2].field_2048 = 0
    stor13[arg1].field_0 = arg1
    if not _itemIds:
        revert with 0, 'Counter: decrement overflow'
    _itemIds--
    emit 0xdeb97bd5: stor13[arg1].field_1536, msg.sender, stor13[arg1].field_1792, arg1
    stor0 = 1
}

function fetchMarketItems() {
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
            mem[32] = 13
            _45 = mem[64]
            mem[64] = mem[64] + 224
            mem[_45] = stor13[idx + 1].field_0
            mem[_45 + 32] = stor13[idx + 1].field_256
            mem[_45 + 64] = stor13[idx + 1].field_512
            mem[_45 + 96] = stor13[idx + 1].field_768
            mem[_45 + 128] = stor13[idx + 1].field_1024
            mem[_45 + 160] = bool(stor13[idx + 1].field_1280)
            _46 = mem[64]
            mem[64] = mem[64] + 96
            mem[_46] = stor13[idx + 1].field_1536
            mem[_46 + 32] = stor13[idx + 1].field_1792
            mem[_46 + 64] = stor13[idx + 1].field_2048
            mem[_45 + 192] = _46
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = _45
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _42 = mem[64]
        mem[mem[64]] = 32
        _43 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _43:
            _80 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_80 + 32]
            mem[t + 64] = mem[_80 + 76 len 20]
            mem[t + 96] = mem[_80 + 108 len 20]
            mem[t + 128] = mem[_80 + 128]
            mem[t + 160] = bool(mem[_80 + 160])
            _87 = mem[_80 + 192]
            mem[t + 192] = mem[mem[_80 + 192]]
            mem[t + 224] = mem[_87 + 44 len 20]
            mem[t + 256] = mem[_87 + 64]
            idx = idx + 1
            s = s + 32
            t = t + 288
            continue 
        return memory
          from mem[64]
           len _42 + (288 * _43) + -mem[64] + 64
    mem[(32 * _itemIds) + 128] = 0
    mem[(32 * _itemIds) + 160] = 0
    mem[(32 * _itemIds) + 192] = 0
    mem[(32 * _itemIds) + 224] = 0
    mem[(32 * _itemIds) + 256] = 0
    mem[(32 * _itemIds) + 288] = 0
    mem[64] = (32 * _itemIds) + 448
    mem[(32 * _itemIds) + 352] = 0
    mem[(32 * _itemIds) + 384] = 0
    mem[(32 * _itemIds) + 416] = 0
    mem[var15002] = var15001
    mem[var17002] = var17001
    if not var17003 - 1:
        idx = 0
        while idx < _itemIds:
            if 1 > !idx:
                revert with 0, 17
            mem[0] = idx + 1
            mem[32] = 13
            _175 = mem[64]
            mem[64] = mem[64] + 224
            mem[_175] = stor13[idx + 1].field_0
            mem[_175 + 32] = stor13[idx + 1].field_256
            mem[_175 + 64] = stor13[idx + 1].field_512
            mem[_175 + 96] = stor13[idx + 1].field_768
            mem[_175 + 128] = stor13[idx + 1].field_1024
            mem[_175 + 160] = bool(stor13[idx + 1].field_1280)
            _176 = mem[64]
            mem[64] = mem[64] + 96
            mem[_176] = stor13[idx + 1].field_1536
            mem[_176 + 32] = stor13[idx + 1].field_1792
            mem[_176 + 64] = stor13[idx + 1].field_2048
            mem[_175 + 192] = _176
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = _175
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _172 = mem[64]
        mem[mem[64]] = 32
        _173 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _173:
            _210 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_210 + 32]
            mem[t + 64] = mem[_210 + 76 len 20]
            mem[t + 96] = mem[_210 + 108 len 20]
            mem[t + 128] = mem[_210 + 128]
            mem[t + 160] = bool(mem[_210 + 160])
            _217 = mem[_210 + 192]
            mem[t + 192] = mem[mem[_210 + 192]]
            mem[t + 224] = mem[_217 + 44 len 20]
            mem[t + 256] = mem[_217 + 64]
            idx = idx + 1
            s = s + 32
            t = t + 288
            continue 
        return memory
          from mem[64]
           len _172 + (288 * _173) + -mem[64] + 64
    mem[(32 * _itemIds) + 448] = 0
    mem[(32 * _itemIds) + 480] = 0
    mem[(32 * _itemIds) + 512] = 0
    mem[(32 * _itemIds) + 544] = 0
    mem[(32 * _itemIds) + 576] = 0
    mem[(32 * _itemIds) + 608] = 0
    mem[64] = (32 * _itemIds) + 768
    mem[(32 * _itemIds) + 672] = 0
    mem[(32 * _itemIds) + 704] = 0
    mem[(32 * _itemIds) + 736] = 0
    mem[var23002] = var23001
    mem[var25002] = var25001
    if not var25003 - 1:
        idx = 0
        while idx < _itemIds:
            if 1 > !idx:
                revert with 0, 17
            mem[0] = idx + 1
            mem[32] = 13
            _305 = mem[64]
            mem[64] = mem[64] + 224
            mem[_305] = stor13[idx + 1].field_0
            mem[_305 + 32] = stor13[idx + 1].field_256
            mem[_305 + 64] = stor13[idx + 1].field_512
            mem[_305 + 96] = stor13[idx + 1].field_768
            mem[_305 + 128] = stor13[idx + 1].field_1024
            mem[_305 + 160] = bool(stor13[idx + 1].field_1280)
            _306 = mem[64]
            mem[64] = mem[64] + 96
            mem[_306] = stor13[idx + 1].field_1536
            mem[_306 + 32] = stor13[idx + 1].field_1792
            mem[_306 + 64] = stor13[idx + 1].field_2048
            mem[_305 + 192] = _306
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = _305
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _302 = mem[64]
        mem[mem[64]] = 32
        _303 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _303:
            _340 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_340 + 32]
            mem[t + 64] = mem[_340 + 76 len 20]
            mem[t + 96] = mem[_340 + 108 len 20]
            mem[t + 128] = mem[_340 + 128]
            mem[t + 160] = bool(mem[_340 + 160])
            _347 = mem[_340 + 192]
            mem[t + 192] = mem[mem[_340 + 192]]
            mem[t + 224] = mem[_347 + 44 len 20]
            mem[t + 256] = mem[_347 + 64]
            idx = idx + 1
            s = s + 32
            t = t + 288
            continue 
        return memory
          from mem[64]
           len _302 + (288 * _303) + -mem[64] + 64
    mem[(32 * _itemIds) + 768] = 0
    mem[(32 * _itemIds) + 800] = 0
    mem[(32 * _itemIds) + 832] = 0
    mem[(32 * _itemIds) + 864] = 0
    mem[(32 * _itemIds) + 896] = 0
    mem[(32 * _itemIds) + 928] = 0
    mem[64] = (32 * _itemIds) + 1088
    mem[(32 * _itemIds) + 992] = 0
    mem[(32 * _itemIds) + 1024] = 0
    mem[(32 * _itemIds) + 1056] = 0
    mem[var31002] = var31001
    mem[var33002] = var33001
    if not var33003 - 1:
        idx = 0
        while idx < _itemIds:
            if 1 > !idx:
                revert with 0, 17
            mem[0] = idx + 1
            mem[32] = 13
            _435 = mem[64]
            mem[64] = mem[64] + 224
            mem[_435] = stor13[idx + 1].field_0
            mem[_435 + 32] = stor13[idx + 1].field_256
            mem[_435 + 64] = stor13[idx + 1].field_512
            mem[_435 + 96] = stor13[idx + 1].field_768
            mem[_435 + 128] = stor13[idx + 1].field_1024
            mem[_435 + 160] = bool(stor13[idx + 1].field_1280)
            _436 = mem[64]
            mem[64] = mem[64] + 96
            mem[_436] = stor13[idx + 1].field_1536
            mem[_436 + 32] = stor13[idx + 1].field_1792
            mem[_436 + 64] = stor13[idx + 1].field_2048
            mem[_435 + 192] = _436
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = _435
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _432 = mem[64]
        mem[mem[64]] = 32
        _433 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _433:
            _470 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_470 + 32]
            mem[t + 64] = mem[_470 + 76 len 20]
            mem[t + 96] = mem[_470 + 108 len 20]
            mem[t + 128] = mem[_470 + 128]
            mem[t + 160] = bool(mem[_470 + 160])
            _477 = mem[_470 + 192]
            mem[t + 192] = mem[mem[_470 + 192]]
            mem[t + 224] = mem[_477 + 44 len 20]
            mem[t + 256] = mem[_477 + 64]
            idx = idx + 1
            s = s + 32
            t = t + 288
            continue 
        return memory
          from mem[64]
           len _432 + (288 * _433) + -mem[64] + 64
    mem[(32 * _itemIds) + 1088] = 0
    mem[(32 * _itemIds) + 1120] = 0
    mem[(32 * _itemIds) + 1152] = 0
    mem[(32 * _itemIds) + 1184] = 0
    mem[(32 * _itemIds) + 1216] = 0
    mem[(32 * _itemIds) + 1248] = 0
    mem[64] = (32 * _itemIds) + 1408
    mem[(32 * _itemIds) + 1312] = 0
    mem[(32 * _itemIds) + 1344] = 0
    mem[(32 * _itemIds) + 1376] = 0
    mem[var39002] = var39001
    mem[var41002] = var41001
    if var41003 - 1:
        # nil
    else:
        idx = 0
        while idx < _itemIds:
            if 1 > !idx:
                revert with 0, 17
            mem[0] = idx + 1
            mem[32] = 13
            _565 = mem[64]
            mem[64] = mem[64] + 224
            mem[_565] = stor13[idx + 1].field_0
            mem[_565 + 32] = stor13[idx + 1].field_256
            mem[_565 + 64] = stor13[idx + 1].field_512
            mem[_565 + 96] = stor13[idx + 1].field_768
            mem[_565 + 128] = stor13[idx + 1].field_1024
            mem[_565 + 160] = bool(stor13[idx + 1].field_1280)
            _566 = mem[64]
            mem[64] = mem[64] + 96
            mem[_566] = stor13[idx + 1].field_1536
            mem[_566 + 32] = stor13[idx + 1].field_1792
            mem[_566 + 64] = stor13[idx + 1].field_2048
            mem[_565 + 192] = _566
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = _565
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _562 = mem[64]
        mem[mem[64]] = 32
        _563 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _563:
            _600 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_600 + 32]
            mem[t + 64] = mem[_600 + 76 len 20]
            mem[t + 96] = mem[_600 + 108 len 20]
            mem[t + 128] = mem[_600 + 128]
            mem[t + 160] = bool(mem[_600 + 160])
            _607 = mem[_600 + 192]
            mem[t + 192] = mem[mem[_600 + 192]]
            mem[t + 224] = mem[_607 + 44 len 20]
            mem[t + 256] = mem[_607 + 64]
            idx = idx + 1
            s = s + 32
            t = t + 288
            continue 
        return memory
          from mem[64]
           len _562 + (288 * _563) + -mem[64] + 64
}

function createMarketSale(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 > _itemIds:
        revert with 0, 'Item not exist'
    if not stor13[arg1].field_1792:
        if stor13[arg1].field_1024 > msg.value:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'Please submit the asking price in order to complete the purchase'
        if stor13[arg1].field_1024 and stor7 > -1 / stor13[arg1].field_1024:
            revert with 0, 17
        if stor13[arg1].field_1024 and stor8 > -1 / stor13[arg1].field_1024:
            revert with 0, 17
        if stor13[arg1].field_1024 and stor9 > -1 / stor13[arg1].field_1024:
            revert with 0, 17
        if eth.balance(this.address) < stor13[arg1].field_1024 * stor7 / 100:
            revert with 0, 'Address: insufficient balance'
        call stor4 with:
           value stor13[arg1].field_1024 * stor7 / 100 wei
             gas gas_remaining wei
        if not return_data.size:
            if not ext_call.success:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            'Address: unable to send value, recipient may have reverted'
            if eth.balance(this.address) < stor13[arg1].field_1024 * stor8 / 100:
                revert with 0, 'Address: insufficient balance'
            call stor5 with:
               value stor13[arg1].field_1024 * stor8 / 100 wei
                 gas gas_remaining wei
            if not return_data.size:
                if not ext_call.success:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                'Address: unable to send value, recipient may have reverted'
            else:
                if not ext_call.success:
                    revert with 0, 'Address: unable to send value, recipient may have reverted'
        else:
            if not ext_call.success:
                revert with 0, 'Address: unable to send value, recipient may have reverted'
            if eth.balance(this.address) < stor13[arg1].field_1024 * stor8 / 100:
                revert with 0, 'Address: insufficient balance'
            call stor5 with:
               value stor13[arg1].field_1024 * stor8 / 100 wei
                 gas gas_remaining wei
            if not ext_call.success:
                revert with 0, 'Address: unable to send value, recipient may have reverted'
    else:
        if eth.balance(this.address) < stor13[arg1].field_1536:
            revert with 0, 'Address: insufficient balance'
        call stor13[arg1].field_1792 with:
           value stor13[arg1].field_1536 wei
             gas gas_remaining wei
        if not return_data.size:
            if not ext_call.success:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            'Address: unable to send value, recipient may have reverted'
            if stor13[arg1].field_1024 > msg.value:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            'Please submit the asking price in order to complete the purchase'
            if stor13[arg1].field_1024 and stor7 > -1 / stor13[arg1].field_1024:
                revert with 0, 17
            if stor13[arg1].field_1024 and stor8 > -1 / stor13[arg1].field_1024:
                revert with 0, 17
            if stor13[arg1].field_1024 and stor9 > -1 / stor13[arg1].field_1024:
                revert with 0, 17
            if eth.balance(this.address) < stor13[arg1].field_1024 * stor7 / 100:
                revert with 0, 'Address: insufficient balance'
            call stor4 with:
               value stor13[arg1].field_1024 * stor7 / 100 wei
                 gas gas_remaining wei
            if not return_data.size:
                if not ext_call.success:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                'Address: unable to send value, recipient may have reverted'
                if eth.balance(this.address) < stor13[arg1].field_1024 * stor8 / 100:
                    revert with 0, 'Address: insufficient balance'
                call stor5 with:
                   value stor13[arg1].field_1024 * stor8 / 100 wei
                     gas gas_remaining wei
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    'Address: unable to send value, recipient may have reverted'
                else:
                    if not ext_call.success:
                        revert with 0, 'Address: unable to send value, recipient may have reverted'
            else:
                if not ext_call.success:
                    revert with 0, 'Address: unable to send value, recipient may have reverted'
                if eth.balance(this.address) < stor13[arg1].field_1024 * stor8 / 100:
                    revert with 0, 'Address: insufficient balance'
                call stor5 with:
                   value stor13[arg1].field_1024 * stor8 / 100 wei
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with 0, 'Address: unable to send value, recipient may have reverted'
        else:
            if not ext_call.success:
                revert with 0, 'Address: unable to send value, recipient may have reverted'
            if stor13[arg1].field_1024 > msg.value:
                revert with 0, 'Please submit the asking price in order to complete the purchase'
            if stor13[arg1].field_1024 and stor7 > -1 / stor13[arg1].field_1024:
                revert with 0, 17
            if stor13[arg1].field_1024 and stor8 > -1 / stor13[arg1].field_1024:
                revert with 0, 17
            if stor13[arg1].field_1024 and stor9 > -1 / stor13[arg1].field_1024:
                revert with 0, 17
            if eth.balance(this.address) < stor13[arg1].field_1024 * stor7 / 100:
                revert with 0, 'Address: insufficient balance'
            call stor4 with:
               value stor13[arg1].field_1024 * stor7 / 100 wei
                 gas gas_remaining wei
            if not ext_call.success:
                revert with 0, 'Address: unable to send value, recipient may have reverted'
            if eth.balance(this.address) < stor13[arg1].field_1024 * stor8 / 100:
                revert with 0, 'Address: insufficient balance'
            call stor5 with:
               value stor13[arg1].field_1024 * stor8 / 100 wei
                 gas gas_remaining wei
            if not ext_call.success:
                revert with 0, 'Address: unable to send value, recipient may have reverted'
    ('bool', 'ext_call.success')
    require ext_code.size(sub_cd6c1dfbAddress)
    staticcall sub_cd6c1dfbAddress.minters(uint256 arg1) with:
            gas gas_remaining wei
           args stor13[arg1].field_256
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if eth.balance(this.address) < stor13[arg1].field_1024 * stor9 / 100:
        revert with 0, 'Address: insufficient balance'
    call ext_call.return_data[12 len 20] with:
       value stor13[arg1].field_1024 * stor9 / 100 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'Address: unable to send value, recipient may have reverted'
    require ext_code.size(sub_cd6c1dfbAddress)
    staticcall sub_cd6c1dfbAddress.minters(uint256 arg1) with:
            gas gas_remaining wei
           args stor13[arg1].field_256
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if sub_b51cf707[ext_call.return_data[12 len 20]] > !(stor13[arg1].field_1024 * stor9 / 100):
        revert with 0, 17
    sub_b51cf707[ext_call.return_data[12 len 20]] += stor13[arg1].field_1024 * stor9 / 100
    if stor13[arg1].field_1024 < stor13[arg1].field_1024 * stor7 / 100:
        revert with 0, 17
    if stor13[arg1].field_1024 - (stor13[arg1].field_1024 * stor7 / 100) < stor13[arg1].field_1024 * stor8 / 100:
        revert with 0, 17
    if stor13[arg1].field_1024 - (stor13[arg1].field_1024 * stor7 / 100) - (stor13[arg1].field_1024 * stor8 / 100) < stor13[arg1].field_1024 * stor9 / 100:
        revert with 0, 17
    if eth.balance(this.address) < stor13[arg1].field_1024 - (stor13[arg1].field_1024 * stor7 / 100) - (stor13[arg1].field_1024 * stor8 / 100) - (stor13[arg1].field_1024 * stor9 / 100):
        revert with 0, 'Address: insufficient balance'
    call stor13[arg1].field_512 with:
       value stor13[arg1].field_1024 - (stor13[arg1].field_1024 * stor7 / 100) - (stor13[arg1].field_1024 * stor8 / 100) - (stor13[arg1].field_1024 * stor9 / 100) wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'Address: unable to send value, recipient may have reverted'
    if msg.value < stor13[arg1].field_1024:
        revert with 0, 17
    if msg.value - stor13[arg1].field_1024 > 0:
        if msg.value < stor13[arg1].field_1024:
            revert with 0, 17
        call msg.sender with:
           value msg.value - stor13[arg1].field_1024 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_cd6c1dfbAddress)
    call sub_cd6c1dfbAddress.0x23b872dd with:
         gas gas_remaining wei
        args this.address, msg.sender, stor13[arg1].field_256
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _itemsSold++
    sub_b62a0e33[stor13[arg1].field_256].field_0 = 0
    sub_b62a0e33[stor13[arg1].field_256].field_256 = 0
    sub_b62a0e33[stor13[arg1].field_256].field_512 = 0
    sub_b62a0e33[stor13[arg1].field_256].field_768 = 0
    sub_b62a0e33[stor13[arg1].field_256].field_1024 = 0
    sub_b62a0e33[stor13[arg1].field_256].field_1280 = 0
    sub_b62a0e33[stor13[arg1].field_256].field_1536 = 0
    sub_b62a0e33[stor13[arg1].field_256].field_1792 = 0
    sub_b62a0e33[stor13[arg1].field_256].field_2048 = 0
    sub_b62a0e33[stor13[arg1].field_256].field_0 = sub_b62a0e33[0].field_0
    sub_b62a0e33[stor13[arg1].field_256].field_256 = storE710
    sub_b62a0e33[stor13[arg1].field_256].field_512 = storE710
    sub_b62a0e33[stor13[arg1].field_256].field_768 = storE710
    sub_b62a0e33[stor13[arg1].field_256].field_1024 = storE710
    sub_b62a0e33[stor13[arg1].field_256].field_1280 = uint8(bool(storE710))
    sub_b62a0e33[stor13[arg1].field_256].field_1536 = storE710
    sub_b62a0e33[stor13[arg1].field_256].field_1792 = storE710
    sub_b62a0e33[stor13[arg1].field_256].field_2048 = storE710
    stor13[arg1].field_0 = stor13[stor2].field_0
    stor13[arg1].field_256 = stor13[stor2].field_256
    stor13[arg1].field_512 = stor13[stor2].field_512
    stor13[arg1].field_768 = stor13[stor2].field_768
    stor13[arg1].field_1024 = stor13[stor2].field_1024
    stor13[arg1].field_1280 = uint8(bool(stor13[stor2].field_1280))
    stor13[arg1].field_1536 = stor13[stor2].field_1536
    stor13[arg1].field_1792 = stor13[stor2].field_1792
    stor13[arg1].field_2048 = stor13[stor2].field_2048
    stor13[stor2].field_0 = 0
    stor13[stor2].field_256 = 0
    stor13[stor2].field_512 = 0
    stor13[stor2].field_768 = 0
    stor13[stor2].field_1024 = 0
    stor13[stor2].field_1280 = 0
    stor13[stor2].field_1536 = 0
    stor13[stor2].field_1792 = 0
    stor13[stor2].field_2048 = 0
    stor13[arg1].field_0 = arg1
    if not _itemIds:
        revert with 0, 'Counter: decrement overflow'
    _itemIds--
    emit 0x458478e8: stor13[arg1].field_512, msg.sender, stor13[arg1].field_1024, arg1, stor13[arg1].field_256
}

function fetchMyNFTs() {
    idx = 0
    s = 0
    while idx < _itemIds:
        if 1 > !idx:
            revert with 0, 17
        mem[0] = idx + 1
        mem[32] = 13
        if stor13[idx + 1].field_768 != msg.sender:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        if s > -2:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + 1
        continue 
    if s > test266151307():
        revert with 0, 65
    mem[96] = s
    mem[64] = (32 * s) + 128
    if not s:
        idx = 0
        s = 0
        while idx < _itemIds:
            if 1 > !idx:
                revert with 0, 17
            mem[0] = idx + 1
            mem[32] = 13
            if stor13[idx + 1].field_768 != msg.sender:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            if 1 > !idx:
                revert with 0, 17
            mem[0] = idx + 1
            mem[32] = 13
            _82 = mem[64]
            mem[64] = mem[64] + 224
            mem[_82] = stor13[idx + 1].field_0
            mem[_82 + 32] = stor13[idx + 1].field_256
            mem[_82 + 64] = stor13[idx + 1].field_512
            mem[_82 + 96] = stor13[idx + 1].field_768
            mem[_82 + 128] = stor13[idx + 1].field_1024
            mem[_82 + 160] = bool(stor13[idx + 1].field_1280)
            _83 = mem[64]
            mem[64] = mem[64] + 96
            mem[_83] = stor13[idx + 1].field_1536
            mem[_83 + 32] = stor13[idx + 1].field_1792
            mem[_83 + 64] = stor13[idx + 1].field_2048
            mem[_82 + 192] = _83
            if s >= mem[96]:
                revert with 0, 50
            mem[(32 * s) + 128] = _82
            if s > -2:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + 1
            continue 
        _66 = mem[64]
        mem[mem[64]] = 32
        _67 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _67:
            _106 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_106 + 32]
            mem[t + 64] = mem[_106 + 76 len 20]
            mem[t + 96] = mem[_106 + 108 len 20]
            mem[t + 128] = mem[_106 + 128]
            mem[t + 160] = bool(mem[_106 + 160])
            _113 = mem[_106 + 192]
            mem[t + 192] = mem[mem[_106 + 192]]
            mem[t + 224] = mem[_113 + 44 len 20]
            mem[t + 256] = mem[_113 + 64]
            idx = idx + 1
            s = s + 32
            t = t + 288
            continue 
        return memory
          from mem[64]
           len _66 + (288 * _67) + -mem[64] + 64
    mem[(32 * s) + 128] = 0
    mem[(32 * s) + 160] = 0
    mem[(32 * s) + 192] = 0
    mem[(32 * s) + 224] = 0
    mem[(32 * s) + 256] = 0
    mem[(32 * s) + 288] = 0
    mem[64] = (32 * s) + 448
    mem[(32 * s) + 352] = 0
    mem[(32 * s) + 384] = 0
    mem[(32 * s) + 416] = 0
    mem[var18002] = idx
    mem[var20002] = var20001
    if not var20003 - 1:
        idx = 0
        s = 0
        while idx < _itemIds:
            if 1 > !idx:
                revert with 0, 17
            mem[0] = idx + 1
            mem[32] = 13
            if stor13[idx + 1].field_768 != msg.sender:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            if 1 > !idx:
                revert with 0, 17
            mem[0] = idx + 1
            mem[32] = 13
            _219 = mem[64]
            mem[64] = mem[64] + 224
            mem[_219] = stor13[idx + 1].field_0
            mem[_219 + 32] = stor13[idx + 1].field_256
            mem[_219 + 64] = stor13[idx + 1].field_512
            mem[_219 + 96] = stor13[idx + 1].field_768
            mem[_219 + 128] = stor13[idx + 1].field_1024
            mem[_219 + 160] = bool(stor13[idx + 1].field_1280)
            _220 = mem[64]
            mem[64] = mem[64] + 96
            mem[_220] = stor13[idx + 1].field_1536
            mem[_220 + 32] = stor13[idx + 1].field_1792
            mem[_220 + 64] = stor13[idx + 1].field_2048
            mem[_219 + 192] = _220
            if s >= mem[96]:
                revert with 0, 50
            mem[(32 * s) + 128] = _219
            if s > -2:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + 1
            continue 
        _202 = mem[64]
        mem[mem[64]] = 32
        _203 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _203:
            _242 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_242 + 32]
            mem[t + 64] = mem[_242 + 76 len 20]
            mem[t + 96] = mem[_242 + 108 len 20]
            mem[t + 128] = mem[_242 + 128]
            mem[t + 160] = bool(mem[_242 + 160])
            _249 = mem[_242 + 192]
            mem[t + 192] = mem[mem[_242 + 192]]
            mem[t + 224] = mem[_249 + 44 len 20]
            mem[t + 256] = mem[_249 + 64]
            idx = idx + 1
            s = s + 32
            t = t + 288
            continue 
        return memory
          from mem[64]
           len _202 + (288 * _203) + -mem[64] + 64
    mem[(32 * s) + 448] = 0
    mem[(32 * s) + 480] = 0
    mem[(32 * s) + 512] = 0
    mem[(32 * s) + 544] = 0
    mem[(32 * s) + 576] = 0
    mem[(32 * s) + 608] = 0
    mem[64] = (32 * s) + 768
    mem[(32 * s) + 672] = 0
    mem[(32 * s) + 704] = 0
    mem[(32 * s) + 736] = 0
    mem[var26002] = var26001
    mem[var28002] = var28001
    if not var28003 - 1:
        idx = 0
        s = 0
        while idx < _itemIds:
            if 1 > !idx:
                revert with 0, 17
            mem[0] = idx + 1
            mem[32] = 13
            if stor13[idx + 1].field_768 != msg.sender:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            if 1 > !idx:
                revert with 0, 17
            mem[0] = idx + 1
            mem[32] = 13
            _355 = mem[64]
            mem[64] = mem[64] + 224
            mem[_355] = stor13[idx + 1].field_0
            mem[_355 + 32] = stor13[idx + 1].field_256
            mem[_355 + 64] = stor13[idx + 1].field_512
            mem[_355 + 96] = stor13[idx + 1].field_768
            mem[_355 + 128] = stor13[idx + 1].field_1024
            mem[_355 + 160] = bool(stor13[idx + 1].field_1280)
            _356 = mem[64]
            mem[64] = mem[64] + 96
            mem[_356] = stor13[idx + 1].field_1536
            mem[_356 + 32] = stor13[idx + 1].field_1792
            mem[_356 + 64] = stor13[idx + 1].field_2048
            mem[_355 + 192] = _356
            if s >= mem[96]:
                revert with 0, 50
            mem[(32 * s) + 128] = _355
            if s > -2:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + 1
            continue 
        _338 = mem[64]
        mem[mem[64]] = 32
        _339 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _339:
            _378 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_378 + 32]
            mem[t + 64] = mem[_378 + 76 len 20]
            mem[t + 96] = mem[_378 + 108 len 20]
            mem[t + 128] = mem[_378 + 128]
            mem[t + 160] = bool(mem[_378 + 160])
            _385 = mem[_378 + 192]
            mem[t + 192] = mem[mem[_378 + 192]]
            mem[t + 224] = mem[_385 + 44 len 20]
            mem[t + 256] = mem[_385 + 64]
            idx = idx + 1
            s = s + 32
            t = t + 288
            continue 
        return memory
          from mem[64]
           len _338 + (288 * _339) + -mem[64] + 64
    mem[(32 * s) + 768] = 0
    mem[(32 * s) + 800] = 0
    mem[(32 * s) + 832] = 0
    mem[(32 * s) + 864] = 0
    mem[(32 * s) + 896] = 0
    mem[(32 * s) + 928] = 0
    mem[64] = (32 * s) + 1088
    mem[(32 * s) + 992] = 0
    mem[(32 * s) + 1024] = 0
    mem[(32 * s) + 1056] = 0
    mem[var34002] = var34001
    mem[var36002] = var36001
    if not var36003 - 1:
        idx = 0
        s = 0
        while idx < _itemIds:
            if 1 > !idx:
                revert with 0, 17
            mem[0] = idx + 1
            mem[32] = 13
            if stor13[idx + 1].field_768 != msg.sender:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            if 1 > !idx:
                revert with 0, 17
            mem[0] = idx + 1
            mem[32] = 13
            _491 = mem[64]
            mem[64] = mem[64] + 224
            mem[_491] = stor13[idx + 1].field_0
            mem[_491 + 32] = stor13[idx + 1].field_256
            mem[_491 + 64] = stor13[idx + 1].field_512
            mem[_491 + 96] = stor13[idx + 1].field_768
            mem[_491 + 128] = stor13[idx + 1].field_1024
            mem[_491 + 160] = bool(stor13[idx + 1].field_1280)
            _492 = mem[64]
            mem[64] = mem[64] + 96
            mem[_492] = stor13[idx + 1].field_1536
            mem[_492 + 32] = stor13[idx + 1].field_1792
            mem[_492 + 64] = stor13[idx + 1].field_2048
            mem[_491 + 192] = _492
            if s >= mem[96]:
                revert with 0, 50
            mem[(32 * s) + 128] = _491
            if s > -2:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + 1
            continue 
        _474 = mem[64]
        mem[mem[64]] = 32
        _475 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _475:
            _514 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_514 + 32]
            mem[t + 64] = mem[_514 + 76 len 20]
            mem[t + 96] = mem[_514 + 108 len 20]
            mem[t + 128] = mem[_514 + 128]
            mem[t + 160] = bool(mem[_514 + 160])
            _521 = mem[_514 + 192]
            mem[t + 192] = mem[mem[_514 + 192]]
            mem[t + 224] = mem[_521 + 44 len 20]
            mem[t + 256] = mem[_521 + 64]
            idx = idx + 1
            s = s + 32
            t = t + 288
            continue 
        return memory
          from mem[64]
           len _474 + (288 * _475) + -mem[64] + 64
    mem[(32 * s) + 1088] = 0
    mem[(32 * s) + 1120] = 0
    mem[(32 * s) + 1152] = 0
    mem[(32 * s) + 1184] = 0
    mem[(32 * s) + 1216] = 0
    mem[(32 * s) + 1248] = 0
    mem[64] = (32 * s) + 1408
    mem[(32 * s) + 1312] = 0
    mem[(32 * s) + 1344] = 0
    mem[(32 * s) + 1376] = 0
    mem[var42002] = var42001
    mem[var44002] = var44001
    if var44003 - 1:
        # nil
    else:
        idx = 0
        s = 0
        while idx < _itemIds:
            if 1 > !idx:
                revert with 0, 17
            mem[0] = idx + 1
            mem[32] = 13
            if stor13[idx + 1].field_768 != msg.sender:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            if 1 > !idx:
                revert with 0, 17
            mem[0] = idx + 1
            mem[32] = 13
            _627 = mem[64]
            mem[64] = mem[64] + 224
            mem[_627] = stor13[idx + 1].field_0
            mem[_627 + 32] = stor13[idx + 1].field_256
            mem[_627 + 64] = stor13[idx + 1].field_512
            mem[_627 + 96] = stor13[idx + 1].field_768
            mem[_627 + 128] = stor13[idx + 1].field_1024
            mem[_627 + 160] = bool(stor13[idx + 1].field_1280)
            _628 = mem[64]
            mem[64] = mem[64] + 96
            mem[_628] = stor13[idx + 1].field_1536
            mem[_628 + 32] = stor13[idx + 1].field_1792
            mem[_628 + 64] = stor13[idx + 1].field_2048
            mem[_627 + 192] = _628
            if s >= mem[96]:
                revert with 0, 50
            mem[(32 * s) + 128] = _627
            if s > -2:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + 1
            continue 
        _610 = mem[64]
        mem[mem[64]] = 32
        _611 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _611:
            _650 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_650 + 32]
            mem[t + 64] = mem[_650 + 76 len 20]
            mem[t + 96] = mem[_650 + 108 len 20]
            mem[t + 128] = mem[_650 + 128]
            mem[t + 160] = bool(mem[_650 + 160])
            _657 = mem[_650 + 192]
            mem[t + 192] = mem[mem[_650 + 192]]
            mem[t + 224] = mem[_657 + 44 len 20]
            mem[t + 256] = mem[_657 + 64]
            idx = idx + 1
            s = s + 32
            t = t + 288
            continue 
        return memory
          from mem[64]
           len _610 + (288 * _611) + -mem[64] + 64
}

function sub_fa8d8f81(?) {
    idx = 0
    s = 0
    while idx < _itemIds:
        if 1 > !idx:
            revert with 0, 17
        mem[0] = idx + 1
        mem[32] = 13
        if stor13[idx + 1].field_1792 != msg.sender:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        if s > -2:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + 1
        continue 
    if s > test266151307():
        revert with 0, 65
    mem[96] = s
    mem[64] = (32 * s) + 128
    if not s:
        idx = 0
        s = 0
        while idx < _itemIds:
            if 1 > !idx:
                revert with 0, 17
            mem[0] = idx + 1
            mem[32] = 13
            if stor13[idx + 1].field_1792 != msg.sender:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            if 1 > !idx:
                revert with 0, 17
            mem[0] = idx + 1
            mem[32] = 13
            _82 = mem[64]
            mem[64] = mem[64] + 224
            mem[_82] = stor13[idx + 1].field_0
            mem[_82 + 32] = stor13[idx + 1].field_256
            mem[_82 + 64] = stor13[idx + 1].field_512
            mem[_82 + 96] = stor13[idx + 1].field_768
            mem[_82 + 128] = stor13[idx + 1].field_1024
            mem[_82 + 160] = bool(stor13[idx + 1].field_1280)
            _83 = mem[64]
            mem[64] = mem[64] + 96
            mem[_83] = stor13[idx + 1].field_1536
            mem[_83 + 32] = stor13[idx + 1].field_1792
            mem[_83 + 64] = stor13[idx + 1].field_2048
            mem[_82 + 192] = _83
            if s >= mem[96]:
                revert with 0, 50
            mem[(32 * s) + 128] = _82
            if s > -2:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + 1
            continue 
        _66 = mem[64]
        mem[mem[64]] = 32
        _67 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _67:
            _106 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_106 + 32]
            mem[t + 64] = mem[_106 + 76 len 20]
            mem[t + 96] = mem[_106 + 108 len 20]
            mem[t + 128] = mem[_106 + 128]
            mem[t + 160] = bool(mem[_106 + 160])
            _113 = mem[_106 + 192]
            mem[t + 192] = mem[mem[_106 + 192]]
            mem[t + 224] = mem[_113 + 44 len 20]
            mem[t + 256] = mem[_113 + 64]
            idx = idx + 1
            s = s + 32
            t = t + 288
            continue 
        return memory
          from mem[64]
           len _66 + (288 * _67) + -mem[64] + 64
    mem[(32 * s) + 128] = 0
    mem[(32 * s) + 160] = 0
    mem[(32 * s) + 192] = 0
    mem[(32 * s) + 224] = 0
    mem[(32 * s) + 256] = 0
    mem[(32 * s) + 288] = 0
    mem[64] = (32 * s) + 448
    mem[(32 * s) + 352] = 0
    mem[(32 * s) + 384] = 0
    mem[(32 * s) + 416] = 0
    mem[var18002] = idx
    mem[var20002] = var20001
    if not var20003 - 1:
        idx = 0
        s = 0
        while idx < _itemIds:
            if 1 > !idx:
                revert with 0, 17
            mem[0] = idx + 1
            mem[32] = 13
            if stor13[idx + 1].field_1792 != msg.sender:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            if 1 > !idx:
                revert with 0, 17
            mem[0] = idx + 1
            mem[32] = 13
            _219 = mem[64]
            mem[64] = mem[64] + 224
            mem[_219] = stor13[idx + 1].field_0
            mem[_219 + 32] = stor13[idx + 1].field_256
            mem[_219 + 64] = stor13[idx + 1].field_512
            mem[_219 + 96] = stor13[idx + 1].field_768
            mem[_219 + 128] = stor13[idx + 1].field_1024
            mem[_219 + 160] = bool(stor13[idx + 1].field_1280)
            _220 = mem[64]
            mem[64] = mem[64] + 96
            mem[_220] = stor13[idx + 1].field_1536
            mem[_220 + 32] = stor13[idx + 1].field_1792
            mem[_220 + 64] = stor13[idx + 1].field_2048
            mem[_219 + 192] = _220
            if s >= mem[96]:
                revert with 0, 50
            mem[(32 * s) + 128] = _219
            if s > -2:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + 1
            continue 
        _202 = mem[64]
        mem[mem[64]] = 32
        _203 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _203:
            _242 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_242 + 32]
            mem[t + 64] = mem[_242 + 76 len 20]
            mem[t + 96] = mem[_242 + 108 len 20]
            mem[t + 128] = mem[_242 + 128]
            mem[t + 160] = bool(mem[_242 + 160])
            _249 = mem[_242 + 192]
            mem[t + 192] = mem[mem[_242 + 192]]
            mem[t + 224] = mem[_249 + 44 len 20]
            mem[t + 256] = mem[_249 + 64]
            idx = idx + 1
            s = s + 32
            t = t + 288
            continue 
        return memory
          from mem[64]
           len _202 + (288 * _203) + -mem[64] + 64
    mem[(32 * s) + 448] = 0
    mem[(32 * s) + 480] = 0
    mem[(32 * s) + 512] = 0
    mem[(32 * s) + 544] = 0
    mem[(32 * s) + 576] = 0
    mem[(32 * s) + 608] = 0
    mem[64] = (32 * s) + 768
    mem[(32 * s) + 672] = 0
    mem[(32 * s) + 704] = 0
    mem[(32 * s) + 736] = 0
    mem[var26002] = var26001
    mem[var28002] = var28001
    if not var28003 - 1:
        idx = 0
        s = 0
        while idx < _itemIds:
            if 1 > !idx:
                revert with 0, 17
            mem[0] = idx + 1
            mem[32] = 13
            if stor13[idx + 1].field_1792 != msg.sender:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            if 1 > !idx:
                revert with 0, 17
            mem[0] = idx + 1
            mem[32] = 13
            _355 = mem[64]
            mem[64] = mem[64] + 224
            mem[_355] = stor13[idx + 1].field_0
            mem[_355 + 32] = stor13[idx + 1].field_256
            mem[_355 + 64] = stor13[idx + 1].field_512
            mem[_355 + 96] = stor13[idx + 1].field_768
            mem[_355 + 128] = stor13[idx + 1].field_1024
            mem[_355 + 160] = bool(stor13[idx + 1].field_1280)
            _356 = mem[64]
            mem[64] = mem[64] + 96
            mem[_356] = stor13[idx + 1].field_1536
            mem[_356 + 32] = stor13[idx + 1].field_1792
            mem[_356 + 64] = stor13[idx + 1].field_2048
            mem[_355 + 192] = _356
            if s >= mem[96]:
                revert with 0, 50
            mem[(32 * s) + 128] = _355
            if s > -2:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + 1
            continue 
        _338 = mem[64]
        mem[mem[64]] = 32
        _339 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _339:
            _378 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_378 + 32]
            mem[t + 64] = mem[_378 + 76 len 20]
            mem[t + 96] = mem[_378 + 108 len 20]
            mem[t + 128] = mem[_378 + 128]
            mem[t + 160] = bool(mem[_378 + 160])
            _385 = mem[_378 + 192]
            mem[t + 192] = mem[mem[_378 + 192]]
            mem[t + 224] = mem[_385 + 44 len 20]
            mem[t + 256] = mem[_385 + 64]
            idx = idx + 1
            s = s + 32
            t = t + 288
            continue 
        return memory
          from mem[64]
           len _338 + (288 * _339) + -mem[64] + 64
    mem[(32 * s) + 768] = 0
    mem[(32 * s) + 800] = 0
    mem[(32 * s) + 832] = 0
    mem[(32 * s) + 864] = 0
    mem[(32 * s) + 896] = 0
    mem[(32 * s) + 928] = 0
    mem[64] = (32 * s) + 1088
    mem[(32 * s) + 992] = 0
    mem[(32 * s) + 1024] = 0
    mem[(32 * s) + 1056] = 0
    mem[var34002] = var34001
    mem[var36002] = var36001
    if not var36003 - 1:
        idx = 0
        s = 0
        while idx < _itemIds:
            if 1 > !idx:
                revert with 0, 17
            mem[0] = idx + 1
            mem[32] = 13
            if stor13[idx + 1].field_1792 != msg.sender:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            if 1 > !idx:
                revert with 0, 17
            mem[0] = idx + 1
            mem[32] = 13
            _491 = mem[64]
            mem[64] = mem[64] + 224
            mem[_491] = stor13[idx + 1].field_0
            mem[_491 + 32] = stor13[idx + 1].field_256
            mem[_491 + 64] = stor13[idx + 1].field_512
            mem[_491 + 96] = stor13[idx + 1].field_768
            mem[_491 + 128] = stor13[idx + 1].field_1024
            mem[_491 + 160] = bool(stor13[idx + 1].field_1280)
            _492 = mem[64]
            mem[64] = mem[64] + 96
            mem[_492] = stor13[idx + 1].field_1536
            mem[_492 + 32] = stor13[idx + 1].field_1792
            mem[_492 + 64] = stor13[idx + 1].field_2048
            mem[_491 + 192] = _492
            if s >= mem[96]:
                revert with 0, 50
            mem[(32 * s) + 128] = _491
            if s > -2:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + 1
            continue 
        _474 = mem[64]
        mem[mem[64]] = 32
        _475 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _475:
            _514 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_514 + 32]
            mem[t + 64] = mem[_514 + 76 len 20]
            mem[t + 96] = mem[_514 + 108 len 20]
            mem[t + 128] = mem[_514 + 128]
            mem[t + 160] = bool(mem[_514 + 160])
            _521 = mem[_514 + 192]
            mem[t + 192] = mem[mem[_514 + 192]]
            mem[t + 224] = mem[_521 + 44 len 20]
            mem[t + 256] = mem[_521 + 64]
            idx = idx + 1
            s = s + 32
            t = t + 288
            continue 
        return memory
          from mem[64]
           len _474 + (288 * _475) + -mem[64] + 64
    mem[(32 * s) + 1088] = 0
    mem[(32 * s) + 1120] = 0
    mem[(32 * s) + 1152] = 0
    mem[(32 * s) + 1184] = 0
    mem[(32 * s) + 1216] = 0
    mem[(32 * s) + 1248] = 0
    mem[64] = (32 * s) + 1408
    mem[(32 * s) + 1312] = 0
    mem[(32 * s) + 1344] = 0
    mem[(32 * s) + 1376] = 0
    mem[var42002] = var42001
    mem[var44002] = var44001
    if var44003 - 1:
        # nil
    else:
        idx = 0
        s = 0
        while idx < _itemIds:
            if 1 > !idx:
                revert with 0, 17
            mem[0] = idx + 1
            mem[32] = 13
            if stor13[idx + 1].field_1792 != msg.sender:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            if 1 > !idx:
                revert with 0, 17
            mem[0] = idx + 1
            mem[32] = 13
            _627 = mem[64]
            mem[64] = mem[64] + 224
            mem[_627] = stor13[idx + 1].field_0
            mem[_627 + 32] = stor13[idx + 1].field_256
            mem[_627 + 64] = stor13[idx + 1].field_512
            mem[_627 + 96] = stor13[idx + 1].field_768
            mem[_627 + 128] = stor13[idx + 1].field_1024
            mem[_627 + 160] = bool(stor13[idx + 1].field_1280)
            _628 = mem[64]
            mem[64] = mem[64] + 96
            mem[_628] = stor13[idx + 1].field_1536
            mem[_628 + 32] = stor13[idx + 1].field_1792
            mem[_628 + 64] = stor13[idx + 1].field_2048
            mem[_627 + 192] = _628
            if s >= mem[96]:
                revert with 0, 50
            mem[(32 * s) + 128] = _627
            if s > -2:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + 1
            continue 
        _610 = mem[64]
        mem[mem[64]] = 32
        _611 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _611:
            _650 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_650 + 32]
            mem[t + 64] = mem[_650 + 76 len 20]
            mem[t + 96] = mem[_650 + 108 len 20]
            mem[t + 128] = mem[_650 + 128]
            mem[t + 160] = bool(mem[_650 + 160])
            _657 = mem[_650 + 192]
            mem[t + 192] = mem[mem[_650 + 192]]
            mem[t + 224] = mem[_657 + 44 len 20]
            mem[t + 256] = mem[_657 + 64]
            idx = idx + 1
            s = s + 32
            t = t + 288
            continue 
        return memory
          from mem[64]
           len _610 + (288 * _611) + -mem[64] + 64
}

function sub_ae9fb014(?) payable {
    require calldata.size - 4 >= 64
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    if arg1 > _itemIds:
        revert with 0, 'Item not exist'
    if msg.value < arg2:
        revert with 0, 'Not enough BNB'
    if arg2 < stor13[arg1].field_1024:
        if arg2 <= stor13[arg1].field_1536:
            revert with 0, 'New bid must be > lastBid'
        sub_96ec50c3[address(msg.sender)].field_0++
        sub_96ec50c3[address(msg.sender)][sub_96ec50c3[address(msg.sender)].field_0].field_0 = stor13[arg1].field_256
        sub_96ec50c3[address(msg.sender)][sub_96ec50c3[address(msg.sender)].field_0].field_256 = arg2
        stor13[arg1].field_1536 = arg2
        stor13[arg1].field_1792 = msg.sender
        stor13[arg1].field_2048 = block.timestamp
        sub_b62a0e33[stor13[arg1].field_256].field_0 = stor13[arg1].field_0
        sub_b62a0e33[stor13[arg1].field_256].field_256 = stor13[arg1].field_256
        sub_b62a0e33[stor13[arg1].field_256].field_512 = stor13[arg1].field_512
        sub_b62a0e33[stor13[arg1].field_256].field_768 = stor13[arg1].field_768
        sub_b62a0e33[stor13[arg1].field_256].field_1024 = stor13[arg1].field_1024
        sub_b62a0e33[stor13[arg1].field_256].field_1280 = uint8(bool(stor13[arg1].field_1280))
        sub_b62a0e33[stor13[arg1].field_256].field_1536 = stor13[arg1].field_1536
        sub_b62a0e33[stor13[arg1].field_256].field_1792 = stor13[arg1].field_1792
        sub_b62a0e33[stor13[arg1].field_256].field_2048 = stor13[arg1].field_2048
        if eth.balance(this.address) < stor13[arg1].field_1536:
            revert with 0, 'Address: insufficient balance'
        call stor13[arg1].field_1792 with:
           value stor13[arg1].field_1536 wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with 0, 'Address: unable to send value, recipient may have reverted'
        if msg.value < arg2:
            revert with 0, 17
        if msg.value - arg2 > 0:
            if msg.value < arg2:
                revert with 0, 17
            if eth.balance(this.address) < msg.value - arg2:
                revert with 0, 'Address: insufficient balance'
            call msg.sender with:
               value msg.value - arg2 wei
                 gas gas_remaining wei
            if not ext_call.success:
                revert with 0, 'Address: unable to send value, recipient may have reverted'
        emit 0xc035f067: arg2, msg.sender, block.timestamp, arg1
    else:
        if arg1 > _itemIds:
            revert with 0, 'Item not exist'
        if not stor13[arg1].field_1792:
            if stor13[arg1].field_1024 > msg.value:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            'Please submit the asking price in order to complete the purchase'
            if stor13[arg1].field_1024 and stor7 > -1 / stor13[arg1].field_1024:
                revert with 0, 17
            if stor13[arg1].field_1024 and stor8 > -1 / stor13[arg1].field_1024:
                revert with 0, 17
            if stor13[arg1].field_1024 and stor9 > -1 / stor13[arg1].field_1024:
                revert with 0, 17
            if eth.balance(this.address) < stor13[arg1].field_1024 * stor7 / 100:
                revert with 0, 'Address: insufficient balance'
            call stor4 with:
               value stor13[arg1].field_1024 * stor7 / 100 wei
                 gas gas_remaining wei
            if not return_data.size:
                if not ext_call.success:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                'Address: unable to send value, recipient may have reverted'
                if eth.balance(this.address) < stor13[arg1].field_1024 * stor8 / 100:
                    revert with 0, 'Address: insufficient balance'
                call stor5 with:
                   value stor13[arg1].field_1024 * stor8 / 100 wei
                     gas gas_remaining wei
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    'Address: unable to send value, recipient may have reverted'
                else:
                    if not ext_call.success:
                        revert with 0, 'Address: unable to send value, recipient may have reverted'
            else:
                if not ext_call.success:
                    revert with 0, 'Address: unable to send value, recipient may have reverted'
                if eth.balance(this.address) < stor13[arg1].field_1024 * stor8 / 100:
                    revert with 0, 'Address: insufficient balance'
                call stor5 with:
                   value stor13[arg1].field_1024 * stor8 / 100 wei
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with 0, 'Address: unable to send value, recipient may have reverted'
        else:
            if eth.balance(this.address) < stor13[arg1].field_1536:
                revert with 0, 'Address: insufficient balance'
            call stor13[arg1].field_1792 with:
               value stor13[arg1].field_1536 wei
                 gas gas_remaining wei
            if not return_data.size:
                if not ext_call.success:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                'Address: unable to send value, recipient may have reverted'
                if stor13[arg1].field_1024 > msg.value:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                'Please submit the asking price in order to complete the purchase'
                if stor13[arg1].field_1024 and stor7 > -1 / stor13[arg1].field_1024:
                    revert with 0, 17
                if stor13[arg1].field_1024 and stor8 > -1 / stor13[arg1].field_1024:
                    revert with 0, 17
                if stor13[arg1].field_1024 and stor9 > -1 / stor13[arg1].field_1024:
                    revert with 0, 17
                if eth.balance(this.address) < stor13[arg1].field_1024 * stor7 / 100:
                    revert with 0, 'Address: insufficient balance'
                call stor4 with:
                   value stor13[arg1].field_1024 * stor7 / 100 wei
                     gas gas_remaining wei
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    'Address: unable to send value, recipient may have reverted'
                    if eth.balance(this.address) < stor13[arg1].field_1024 * stor8 / 100:
                        revert with 0, 'Address: insufficient balance'
                    call stor5 with:
                       value stor13[arg1].field_1024 * stor8 / 100 wei
                         gas gas_remaining wei
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        'Address: unable to send value, recipient may have reverted'
                    else:
                        if not ext_call.success:
                            revert with 0, 'Address: unable to send value, recipient may have reverted'
                else:
                    if not ext_call.success:
                        revert with 0, 'Address: unable to send value, recipient may have reverted'
                    if eth.balance(this.address) < stor13[arg1].field_1024 * stor8 / 100:
                        revert with 0, 'Address: insufficient balance'
                    call stor5 with:
                       value stor13[arg1].field_1024 * stor8 / 100 wei
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with 0, 'Address: unable to send value, recipient may have reverted'
            else:
                if not ext_call.success:
                    revert with 0, 'Address: unable to send value, recipient may have reverted'
                if stor13[arg1].field_1024 > msg.value:
                    revert with 0, 'Please submit the asking price in order to complete the purchase'
                if stor13[arg1].field_1024 and stor7 > -1 / stor13[arg1].field_1024:
                    revert with 0, 17
                if stor13[arg1].field_1024 and stor8 > -1 / stor13[arg1].field_1024:
                    revert with 0, 17
                if stor13[arg1].field_1024 and stor9 > -1 / stor13[arg1].field_1024:
                    revert with 0, 17
                if eth.balance(this.address) < stor13[arg1].field_1024 * stor7 / 100:
                    revert with 0, 'Address: insufficient balance'
                call stor4 with:
                   value stor13[arg1].field_1024 * stor7 / 100 wei
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with 0, 'Address: unable to send value, recipient may have reverted'
                if eth.balance(this.address) < stor13[arg1].field_1024 * stor8 / 100:
                    revert with 0, 'Address: insufficient balance'
                call stor5 with:
                   value stor13[arg1].field_1024 * stor8 / 100 wei
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with 0, 'Address: unable to send value, recipient may have reverted'
        ('bool', 'ext_call.success')
        require ext_code.size(sub_cd6c1dfbAddress)
        staticcall sub_cd6c1dfbAddress.minters(uint256 arg1) with:
                gas gas_remaining wei
               args stor13[arg1].field_256
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if eth.balance(this.address) < stor13[arg1].field_1024 * stor9 / 100:
            revert with 0, 'Address: insufficient balance'
        call ext_call.return_data[12 len 20] with:
           value stor13[arg1].field_1024 * stor9 / 100 wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with 0, 'Address: unable to send value, recipient may have reverted'
        require ext_code.size(sub_cd6c1dfbAddress)
        staticcall sub_cd6c1dfbAddress.minters(uint256 arg1) with:
                gas gas_remaining wei
               args stor13[arg1].field_256
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if sub_b51cf707[ext_call.return_data[12 len 20]] > !(stor13[arg1].field_1024 * stor9 / 100):
            revert with 0, 17
        sub_b51cf707[ext_call.return_data[12 len 20]] += stor13[arg1].field_1024 * stor9 / 100
        if stor13[arg1].field_1024 < stor13[arg1].field_1024 * stor7 / 100:
            revert with 0, 17
        if stor13[arg1].field_1024 - (stor13[arg1].field_1024 * stor7 / 100) < stor13[arg1].field_1024 * stor8 / 100:
            revert with 0, 17
        if stor13[arg1].field_1024 - (stor13[arg1].field_1024 * stor7 / 100) - (stor13[arg1].field_1024 * stor8 / 100) < stor13[arg1].field_1024 * stor9 / 100:
            revert with 0, 17
        if eth.balance(this.address) < stor13[arg1].field_1024 - (stor13[arg1].field_1024 * stor7 / 100) - (stor13[arg1].field_1024 * stor8 / 100) - (stor13[arg1].field_1024 * stor9 / 100):
            revert with 0, 'Address: insufficient balance'
        call stor13[arg1].field_512 with:
           value stor13[arg1].field_1024 - (stor13[arg1].field_1024 * stor7 / 100) - (stor13[arg1].field_1024 * stor8 / 100) - (stor13[arg1].field_1024 * stor9 / 100) wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with 0, 'Address: unable to send value, recipient may have reverted'
        if msg.value < stor13[arg1].field_1024:
            revert with 0, 17
        if msg.value - stor13[arg1].field_1024 > 0:
            if msg.value < stor13[arg1].field_1024:
                revert with 0, 17
            call msg.sender with:
               value msg.value - stor13[arg1].field_1024 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(sub_cd6c1dfbAddress)
        call sub_cd6c1dfbAddress.0x23b872dd with:
             gas gas_remaining wei
            args this.address, msg.sender, stor13[arg1].field_256
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _itemsSold++
        sub_b62a0e33[stor13[arg1].field_256].field_0 = 0
        sub_b62a0e33[stor13[arg1].field_256].field_256 = 0
        sub_b62a0e33[stor13[arg1].field_256].field_512 = 0
        sub_b62a0e33[stor13[arg1].field_256].field_768 = 0
        sub_b62a0e33[stor13[arg1].field_256].field_1024 = 0
        sub_b62a0e33[stor13[arg1].field_256].field_1280 = 0
        sub_b62a0e33[stor13[arg1].field_256].field_1536 = 0
        sub_b62a0e33[stor13[arg1].field_256].field_1792 = 0
        sub_b62a0e33[stor13[arg1].field_256].field_2048 = 0
        sub_b62a0e33[stor13[arg1].field_256].field_0 = sub_b62a0e33[0].field_0
        sub_b62a0e33[stor13[arg1].field_256].field_256 = storE710
        sub_b62a0e33[stor13[arg1].field_256].field_512 = storE710
        sub_b62a0e33[stor13[arg1].field_256].field_768 = storE710
        sub_b62a0e33[stor13[arg1].field_256].field_1024 = storE710
        sub_b62a0e33[stor13[arg1].field_256].field_1280 = uint8(bool(storE710))
        sub_b62a0e33[stor13[arg1].field_256].field_1536 = storE710
        sub_b62a0e33[stor13[arg1].field_256].field_1792 = storE710
        sub_b62a0e33[stor13[arg1].field_256].field_2048 = storE710
        stor13[arg1].field_0 = stor13[stor2].field_0
        stor13[arg1].field_256 = stor13[stor2].field_256
        stor13[arg1].field_512 = stor13[stor2].field_512
        stor13[arg1].field_768 = stor13[stor2].field_768
        stor13[arg1].field_1024 = stor13[stor2].field_1024
        stor13[arg1].field_1280 = uint8(bool(stor13[stor2].field_1280))
        stor13[arg1].field_1536 = stor13[stor2].field_1536
        stor13[arg1].field_1792 = stor13[stor2].field_1792
        stor13[arg1].field_2048 = stor13[stor2].field_2048
        stor13[stor2].field_0 = 0
        stor13[stor2].field_256 = 0
        stor13[stor2].field_512 = 0
        stor13[stor2].field_768 = 0
        stor13[stor2].field_1024 = 0
        stor13[stor2].field_1280 = 0
        stor13[stor2].field_1536 = 0
        stor13[stor2].field_1792 = 0
        stor13[stor2].field_2048 = 0
        stor13[arg1].field_0 = arg1
        if not _itemIds:
            revert with 0, 'Counter: decrement overflow'
        _itemIds--
        emit 0x458478e8: stor13[arg1].field_512, msg.sender, stor13[arg1].field_1024, arg1, stor13[arg1].field_256
    stor0 = 1
}



}
