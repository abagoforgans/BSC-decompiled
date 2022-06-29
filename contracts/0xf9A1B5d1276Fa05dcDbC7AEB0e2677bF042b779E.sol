contract main {




// =====================  Runtime code  =====================


const ERC1155InterfaceId = 0xd9b67a2600000000000000000000000000000000000000000000000000000000

const ERC721InterfaceId = 0x80ac58cd00000000000000000000000000000000000000000000000000000000

const DEFAULT_ADMIN_ROLE = 0


mapping of struct roleAdmin;
uint256 stor1;
address _walletAddress;
address stor3;
array of struct stor4;
array of struct stor5;

function getRoleAdmin(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_256
}

function _wallet() payable {
    return _walletAddress
}

function hasRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return bool(roleAdmin[arg1][address(arg2)].field_0)
}

function _fallback() payable {
    revert
}

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if 0x7965db0b00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function renounceRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if arg2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: can only renounce roles for self'
    if roleAdmin[arg1][address(arg2)].field_0:
        roleAdmin[arg1][address(arg2)].field_0 = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
}

function sub_41853382(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if arg2 >= stor5[address(arg1)].field_0:
        revert with 0, 50
    return 1, 
           stor5[address(arg1)][arg2].field_0,
           stor5[address(arg1)][arg2].field_256,
           stor5[address(arg1)][arg2].field_512,
           stor5[address(arg1)][arg2].field_768,
           stor5[address(arg1)][arg2].field_1024,
           stor5[address(arg1)][arg2].field_1280,
           bool(stor5[address(arg1)][arg2].field_1536),
           bool(stor5[address(arg1)][arg2].field_1544)
}

function setAdminWallet(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if roleAdmin[address(msg.sender)].field_0:
        _walletAddress = arg1
    mem[128 len 42] = call.data[calldata.size len 42]
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 0, 50
        if idx >= 42:
            revert with 0, 50
        mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if msg.sender + 10240:
        revert with 0, 'Strings: hex length insufficient'
    mem[224 len 66] = call.data[calldata.size len 66]
    idx = 65
    while idx > 1:
        if idx >= 66:
            revert with 0, 50
        mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        continue 
    revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
}

function sub_2b6c52da(?) payable {
    require calldata.size - 4 >= 32
    if arg1 >= stor4.length:
        revert with 0, 50
    if stor4[arg1].field_160 > 2:
        revert with 0, 33
    if stor4[arg1].field_160 >= 3:
        revert with 0, 33
    if stor4[arg1].field_0:
        return 1, 
               stor4[arg1].field_0,
               stor4[arg1].field_0,
               stor4[arg1].field_256,
               stor4[arg1].field_512,
               stor4[arg1].field_768,
               stor4[arg1].field_1024,
               stor4[arg1].field_1280,
               stor4[arg1].field_1536,
               bool(stor4[arg1].field_1696),
               stor4[arg1].field_1792,
               stor4[arg1].field_2048
    return 0, 
           stor4[arg1].field_0,
           stor4[arg1].field_0,
           stor4[arg1].field_256,
           stor4[arg1].field_512,
           stor4[arg1].field_768,
           stor4[arg1].field_1024,
           stor4[arg1].field_1280,
           stor4[arg1].field_1536,
           bool(stor4[arg1].field_1696),
           stor4[arg1].field_1792,
           stor4[arg1].field_2048
}

function sub_e10b8eae(?) payable {
    require calldata.size - 4 >= 160
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg5 == bool(arg5)
    idx = 0
    while idx < stor4.length:
        mem[0] = 4
        if bool(stor4[idx].field_1696) != bool(arg5):
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if idx >= stor4.length:
            revert with 0, 50
        mem[0] = 4
        if stor4[idx].field_256 != address(arg2):
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if idx >= stor4.length:
            revert with 0, 50
        mem[0] = 4
        if stor4[idx].field_512 != arg3:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if idx >= stor4.length:
            revert with 0, 50
        mem[0] = 4
        if stor4[idx].field_768 != arg4:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if idx >= stor4.length:
            revert with 0, 50
        mem[0] = 4
        if stor4[idx].field_0 != address(arg1):
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if idx >= stor4.length:
            revert with 0, 50
        return 1, stor4[idx].field_1792
    return 0
}

function revokeRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0:
        if roleAdmin[arg1][address(arg2)].field_0:
            roleAdmin[arg1][address(arg2)].field_0 = 0
            emit RoleRevoked(arg1, arg2, msg.sender);
    mem[128 len 42] = call.data[calldata.size len 42]
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 0, 50
        if idx >= 42:
            revert with 0, 50
        mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if msg.sender + 10240:
        revert with 0, 'Strings: hex length insufficient'
    mem[224 len 66] = call.data[calldata.size len 66]
    idx = 65
    s = roleAdmin[arg1].field_256
    while idx > 1:
        if s % 16 >= 16:
            revert with 0, 50
        if idx >= 66:
            revert with 0, 50
        mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if roleAdmin[arg1].field_256 + 16384:
        revert with 0, 'Strings: hex length insufficient'
    revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
}

function grantRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0:
        if not roleAdmin[arg1][address(arg2)].field_0:
            roleAdmin[arg1][address(arg2)].field_0 = 1
            emit RoleGranted(arg1, arg2, msg.sender);
    mem[128 len 42] = call.data[calldata.size len 42]
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 0, 50
        if idx >= 42:
            revert with 0, 50
        mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if msg.sender + 10240:
        revert with 0, 'Strings: hex length insufficient'
    mem[224 len 66] = call.data[calldata.size len 66]
    idx = 65
    s = roleAdmin[arg1].field_256
    while idx > 1:
        if s % 16 >= 16:
            revert with 0, 50
        if idx >= 66:
            revert with 0, 50
        mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if roleAdmin[arg1].field_256 + 16384:
        revert with 0, 'Strings: hex length insufficient'
    revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
}

function setAvailable(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 >= stor4.length:
        revert with 0, 50
    if stor4[arg1].field_160 > 2:
        revert with 0, 33
    if not stor4[arg1].field_0:
        revert with 0, 'Item is not exist'
    if not stor4[arg1].field_1696:
        revert with 0, 'Item is not available'
    if stor4[arg1].field_1280 < block.timestamp:
        revert with 0, 'This item has expired'
    if roleAdmin[address(msg.sender)].field_0:
        if arg1 >= stor4.length:
            revert with 0, 50
        stor4[arg1].field_1696 = 0
        return 1
    mem[832 len 42] = call.data[calldata.size len 42]
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 0, 50
        if idx >= 42:
            revert with 0, 50
        mem[idx + 832 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if msg.sender + 10240:
        revert with 0, 'Strings: hex length insufficient'
    mem[928 len 66] = call.data[calldata.size len 66]
    idx = 65
    while idx > 1:
        if idx >= 66:
            revert with 0, 50
        mem[idx + 928 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        continue 
    revert with 0, 32, 148, 'AccessControl: account ', mem[864 len 42], 8297, mem[992 len 66], 0, 0 >> 928, 0
}

function sub_5de38109(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    mem[0] = address(arg1)
    mem[32] = 5
    mem[64] = (32 * stor5[address(arg1)].field_0) + 128
    mem[96] = stor5[address(arg1)].field_0
    s = 128
    idx = 0
    while idx < stor5[address(arg1)].field_0:
        mem[0] = sha3(address(arg1), 5)
        _18 = mem[64]
        mem[64] = mem[64] + 256
        mem[_18] = stor5[address(arg1)][idx].field_0
        mem[_18 + 32] = stor5[address(arg1)][idx].field_256
        mem[_18 + 64] = stor5[address(arg1)][idx].field_512
        mem[_18 + 96] = stor5[address(arg1)][idx].field_768
        mem[_18 + 128] = stor5[address(arg1)][idx].field_1024
        mem[_18 + 160] = stor5[address(arg1)][idx].field_1280
        mem[_18 + 192] = bool(stor5[address(arg1)][idx].field_1536)
        mem[_18 + 224] = bool(stor5[address(arg1)][idx].field_1544)
        mem[s] = _18
        s = s + 32
        idx = idx + 1
        continue 
    _19 = mem[64]
    mem[mem[64]] = 32
    _20 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < _20:
        _31 = mem[t]
        mem[s] = mem[mem[t] + 12 len 20]
        mem[s + 32] = mem[_31 + 32]
        mem[s + 64] = mem[_31 + 64]
        mem[s + 96] = mem[_31 + 96]
        mem[s + 128] = mem[_31 + 128]
        mem[s + 160] = mem[_31 + 160]
        mem[s + 192] = bool(mem[_31 + 192])
        mem[s + 224] = bool(mem[_31 + 224])
        idx = idx + 1
        s = s + 256
        t = t + 32
        continue 
    return memory
      from mem[64]
       len _19 + (256 * _20) + -mem[64] + 64
}

function getItems() payable {
    mem[64] = (32 * stor4.length) + 128
    mem[96] = stor4.length
    s = 128
    idx = 0
    while idx < stor4.length:
        mem[0] = 4
        _20 = mem[64]
        mem[64] = mem[64] + 352
        mem[_20] = stor4[idx].field_0
        if stor4[idx].field_160 > 2:
            revert with 0, 33
        mem[_20 + 32] = stor4[idx].field_160
        mem[_20 + 64] = stor4[idx].field_256
        mem[_20 + 96] = stor4[idx].field_512
        mem[_20 + 128] = stor4[idx].field_768
        mem[_20 + 160] = stor4[idx].field_1024
        mem[_20 + 192] = stor4[idx].field_1280
        mem[_20 + 224] = stor4[idx].field_1536
        mem[_20 + 256] = bool(stor4[idx].field_1696)
        mem[_20 + 288] = stor4[idx].field_1792
        mem[_20 + 320] = stor4[idx].field_2048
        mem[s] = _20
        s = s + 32
        idx = idx + 1
        continue 
    _21 = mem[64]
    mem[mem[64]] = 32
    _22 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < _22:
        _36 = mem[t]
        mem[s] = mem[mem[t] + 12 len 20]
        if mem[_36 + 32] >= 3:
            revert with 0, 33
        mem[s + 32] = mem[_36 + 32]
        mem[s + 64] = mem[_36 + 76 len 20]
        mem[s + 96] = mem[_36 + 96]
        mem[s + 128] = mem[_36 + 128]
        mem[s + 160] = mem[_36 + 160]
        mem[s + 192] = mem[_36 + 192]
        mem[s + 224] = mem[_36 + 236 len 20]
        mem[s + 256] = bool(mem[_36 + 256])
        mem[s + 288] = mem[_36 + 288]
        mem[s + 320] = mem[_36 + 332 len 20]
        idx = idx + 1
        s = s + 352
        t = t + 32
        continue 
    return memory
      from mem[64]
       len _21 + (352 * _22) + -mem[64] + 64
}

function sub_4100f6b0(?) payable {
    require calldata.size - 4 >= 64
    if arg2 >= stor4.length:
        revert with 0, 50
    if stor4[arg2].field_160 > 2:
        revert with 0, 33
    if not stor4[arg2].field_0:
        revert with 0, 'Item is not exist'
    if not stor4[arg2].field_1696:
        revert with 0, 'Item is not available'
    if stor4[arg2].field_1280 < block.timestamp:
        revert with 0, 'This item has expired'
    if arg2 >= stor4.length:
        revert with 0, 50
    if arg1 >= stor5[stor4[arg2].field_256].field_0:
        revert with 0, 'Invalid offerId'
    if arg1 >= stor5[stor4[arg2].field_256].field_0:
        revert with 0, 50
    if stor5[stor4[arg2].field_256][arg1].field_0 != msg.sender:
        revert with 0, 'You can't close this offer'
    if arg1 >= stor5[stor4[arg2].field_256].field_0:
        revert with 0, 50
    require ext_code.size(stor3)
    staticcall stor3.0xfcee45f4 with:
            gas gas_remaining wei
           args stor5[stor4[arg2].field_256][arg1].field_256
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg2 >= stor4.length:
        revert with 0, 50
    require ext_code.size(stor4[arg2].field_2048)
    call stor4[arg2].field_2048.0x70a08231 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'Balance is not enough to pay fee'
    if arg2 >= stor4.length:
        revert with 0, 50
    require ext_code.size(stor4[arg2].field_2048)
    call stor4[arg2].field_2048.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, _walletAddress, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if arg1 >= stor5[stor4[arg2].field_256].field_0:
        revert with 0, 50
    stor5[stor4[arg2].field_256][arg1].field_1544 = 0
    emit CloseOffer(arg2, arg1);
}

function sub_64e574c2(?) payable {
    require calldata.size - 4 >= 128
    if arg1 >= stor4.length:
        revert with 0, 50
    if stor4[arg1].field_160 > 2:
        revert with 0, 33
    if not stor4[arg1].field_0:
        revert with 0, 'Item is not exist'
    if not stor4[arg1].field_1696:
        revert with 0, 'Item is not available'
    if stor4[arg1].field_1280 < block.timestamp:
        revert with 0, 'This item has expired'
    if block.timestamp >= arg3:
        revert with 0, 'Offer is expired'
    if arg1 >= stor4.length:
        revert with 0, 50
    if stor4[arg1].field_160 > 2:
        revert with 0, 33
    require ext_code.size(stor4[arg1].field_2048)
    call stor4[arg1].field_2048.0x70a08231 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if stor4[arg1].field_1024 and arg4 > -1 / stor4[arg1].field_1024:
        revert with 0, 17
    if stor4[arg1].field_1024 * arg4 > ext_call.return_data[0]:
        revert with 0, 'Balance is not enough'
    if stor4[arg1].field_768 < arg4:
        revert with 0, 'Amount item is not enough'
    if stor4[arg1].field_1536:
        revert with 0, 'Item is already sold'
    if arg4 <= 0:
        revert with 0, 'Amount is incorrect'
    if msg.sender == stor4[arg1].field_256:
        revert with 0, 'You already owned this item'
    stor5[stor4[arg1].field_256].field_0++
    stor5[stor4[arg1].field_256][stor5[stor4[arg1].field_256].field_0].field_0 = msg.sender
    stor5[stor4[arg1].field_256][stor5[stor4[arg1].field_256].field_0].field_256 = arg2
    stor5[stor4[arg1].field_256][stor5[stor4[arg1].field_256].field_0].field_512 = arg4
    stor5[stor4[arg1].field_256][stor5[stor4[arg1].field_256].field_0].field_768 = arg1
    stor5[stor4[arg1].field_256][stor5[stor4[arg1].field_256].field_0].field_1024 = arg3
    stor5[stor4[arg1].field_256][stor5[stor4[arg1].field_256].field_0].field_1280 = stor5[stor4[arg1].field_256].field_0
    stor5[stor4[arg1].field_256][stor5[stor4[arg1].field_256].field_0].field_1536 = 0
    stor5[stor4[arg1].field_256][stor5[stor4[arg1].field_256].field_0].field_1544 = 1
    if arg2 and arg4 > -1 / arg2:
        revert with 0, 17
    emit 0xe6c07ff1: arg1, arg4, arg2 * arg4, 1
}

function acceptOffer(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg1 >= stor4.length:
        revert with 0, 50
    if stor4[arg1].field_160 > 2:
        revert with 0, 33
    if not stor4[arg1].field_0:
        revert with 0, 'Item is not exist'
    if not stor4[arg1].field_1696:
        revert with 0, 'Item is not available'
    if stor4[arg1].field_1280 < block.timestamp:
        revert with 0, 'This item has expired'
    if arg1 >= stor4.length:
        revert with 0, 50
    if stor4[arg1].field_160 > 2:
        revert with 0, 33
    if stor4[arg1].field_1536:
        revert with 0, 'Item is already sold'
    if arg2 >= stor5[stor4[arg1].field_256].field_0:
        revert with 0, 50
    if not stor5[stor4[arg1].field_256][arg2].field_1544:
        revert with 0, 'Offer is not active'
    if stor5[stor4[arg1].field_256][arg2].field_1536:
        revert with 0, 'Item is already accept'
    if stor5[stor4[arg1].field_256][arg2].field_1024 < block.timestamp:
        revert with 0, 'Offer is expired'
    if stor4[arg1].field_256 != msg.sender:
        revert with 0, 'You can't accept this offer'
    if stor4[arg1].field_768 < stor5[stor4[arg1].field_256][arg2].field_512:
        revert with 0, 'Item in market is not enough'
    if stor5[stor4[arg1].field_256][arg2].field_256 and stor5[stor4[arg1].field_256][arg2].field_512 > -1 / stor5[stor4[arg1].field_256][arg2].field_256:
        revert with 0, 17
    if arg1 >= stor4.length:
        revert with 0, 50
    require ext_code.size(stor4[arg1].field_2048)
    call stor4[arg1].field_2048.0x70a08231 with:
         gas gas_remaining wei
        args stor5[stor4[arg1].field_256][arg2].field_0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < stor5[stor4[arg1].field_256][arg2].field_256 * stor5[stor4[arg1].field_256][arg2].field_512:
        revert with 0, 'Balance buyer is not enough'
    if stor5[stor4[arg1].field_256][arg2].field_256 and stor5[stor4[arg1].field_256][arg2].field_512 > -1 / stor5[stor4[arg1].field_256][arg2].field_256:
        revert with 0, 17
    require ext_code.size(stor4[arg1].field_2048)
    call stor4[arg1].field_2048.0x23b872dd with:
         gas gas_remaining wei
        args stor5[stor4[arg1].field_256][arg2].field_0, stor4[arg1].field_256, stor5[stor4[arg1].field_256][arg2].field_256 * stor5[stor4[arg1].field_256][arg2].field_512
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if stor4[arg1].field_160 > 2:
        revert with 0, 33
    if stor4[arg1].field_160 == 1:
        require ext_code.size(stor4[arg1].field_0)
        call stor4[arg1].field_0.safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
             gas gas_remaining wei
            args stor4[arg1].field_256, stor5[stor4[arg1].field_256][arg2].field_0, stor4[arg1].field_512, stor5[stor4[arg1].field_256][arg2].field_512, 160, 0
    else:
        if stor4[arg1].field_160 > 2:
            revert with 0, 33
        if stor4[arg1].field_160 != 2:
            revert with 0, 'Item type is incorrect'
        require ext_code.size(stor4[arg1].field_0)
        call stor4[arg1].field_0.0x42842e0e with:
             gas gas_remaining wei
            args stor4[arg1].field_256, stor5[stor4[arg1].field_256][arg2].field_0, stor4[arg1].field_512
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if arg1 >= stor4.length:
        revert with 0, 50
    if stor5[stor4[arg1].field_256][arg2].field_512 != stor4[arg1].field_768:
    else:
        stor4[arg1].field_1696 = 0
        stor4[arg1].field_1536 = stor5[stor4[arg1].field_256][arg2].field_0
    if stor4[arg1].field_768 < stor5[stor4[arg1].field_256][arg2].field_512:
        revert with 0, 17
    stor4[arg1].field_768 -= stor5[stor4[arg1].field_256][arg2].field_512
    if arg2 >= stor5[stor4[arg1].field_256].field_0:
        revert with 0, 50
    stor5[stor4[arg1].field_256][arg2].field_1536 = 1
    if arg2 >= stor5[stor4[arg1].field_256].field_0:
        revert with 0, 50
    stor5[stor4[arg1].field_256][arg2].field_1544 = 0
}

function buyItem(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg1 >= stor4.length:
        revert with 0, 50
    if stor4[arg1].field_160 > 2:
        revert with 0, 33
    if not stor4[arg1].field_0:
        revert with 0, 'Item is not exist'
    if not stor4[arg1].field_1696:
        revert with 0, 'Item is not available'
    if stor4[arg1].field_1280 < block.timestamp:
        revert with 0, 'This item has expired'
    if arg1 >= stor4.length:
        revert with 0, 50
    if stor4[arg1].field_160 > 2:
        revert with 0, 33
    if stor4[arg1].field_1024 and arg2 > -1 / stor4[arg1].field_1024:
        revert with 0, 17
    require ext_code.size(stor4[arg1].field_2048)
    call stor4[arg1].field_2048.0x70a08231 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < stor4[arg1].field_1024 * arg2:
        revert with 0, 'Balance is not enough'
    if stor4[arg1].field_1536:
        revert with 0, 'Item is already sold'
    if arg2 > stor4[arg1].field_768:
        revert with 0, 'Item is not enough'
    if msg.sender == stor4[arg1].field_256:
        revert with 0, 'You already owned this item'
    if stor4[arg1].field_160 > 2:
        revert with 0, 33
    if stor4[arg1].field_160 == 1:
        require ext_code.size(stor4[arg1].field_0)
        call stor4[arg1].field_0.balanceOf(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args stor4[arg1].field_256, stor4[arg1].field_512
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < stor4[arg1].field_768:
            revert with 0, 'Seller does not own his item (ERC1155)'
    if stor4[arg1].field_160 > 2:
        revert with 0, 33
    if stor4[arg1].field_160 == 2:
        require ext_code.size(stor4[arg1].field_0)
        call stor4[arg1].field_0.0x6352211e with:
             gas gas_remaining wei
            args stor4[arg1].field_512
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] != stor4[arg1].field_256:
            revert with 0, 'Seller does not own this item (ERC721)'
    if stor4[arg1].field_1024 and arg2 > -1 / stor4[arg1].field_1024:
        revert with 0, 17
    require ext_code.size(stor4[arg1].field_2048)
    call stor4[arg1].field_2048.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, stor4[arg1].field_256, stor4[arg1].field_1024 * arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if stor4[arg1].field_160 > 2:
        revert with 0, 33
    if stor4[arg1].field_160 == 1:
        require ext_code.size(stor4[arg1].field_0)
        call stor4[arg1].field_0.safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
             gas gas_remaining wei
            args stor4[arg1].field_256, msg.sender, stor4[arg1].field_512, arg2, 160, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    if stor4[arg1].field_160 > 2:
        revert with 0, 33
    if stor4[arg1].field_160 == 2:
        require ext_code.size(stor4[arg1].field_0)
        call stor4[arg1].field_0.0x42842e0e with:
             gas gas_remaining wei
            args stor4[arg1].field_256, msg.sender, stor4[arg1].field_512
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    if arg1 >= stor4.length:
        revert with 0, 50
    if stor4[arg1].field_768 != arg2:
    else:
        stor4[arg1].field_1696 = 0
        stor4[arg1].field_1536 = msg.sender
    if stor4[arg1].field_768 < arg2:
        revert with 0, 17
    stor4[arg1].field_768 -= arg2
    if stor4[arg1].field_1024 and arg2 > -1 / stor4[arg1].field_1024:
        revert with 0, 17
    emit 0xbc4cdf6e: arg1, stor4[arg1].field_512, arg2, stor4[arg1].field_1024 * arg2, stor4[arg1].field_256, msg.sender
}

function sub_51563f8e(?) payable {
    require calldata.size - 4 >= 32
    if arg1 >= stor4.length:
        revert with 0, 50
    if stor4[arg1].field_160 > 2:
        revert with 0, 33
    if not stor4[arg1].field_0:
        revert with 0, 'Not found token'
    require ext_code.size(stor4[arg1].field_0)
    call stor4[arg1].field_0.supportsInterface(bytes4 arg1) with:
         gas gas_remaining wei
        args 0x80ac58cd00000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(stor4[arg1].field_0)
    call stor4[arg1].field_0.supportsInterface(bytes4 arg1) with:
         gas gas_remaining wei
        args 0xd9b67a2600000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        if not ext_call.return_data[0]:
            revert with 0, 'You are not owned this token.'
        require ext_code.size(stor4[arg1].field_0)
        call stor4[arg1].field_0.balanceOf(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args stor4[arg1].field_256, stor4[arg1].field_512
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < stor4[arg1].field_768:
            revert with 0, 'You are not owned this token.'
    else:
        require ext_code.size(stor4[arg1].field_0)
        call stor4[arg1].field_0.0x6352211e with:
             gas gas_remaining wei
            args stor4[arg1].field_512
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] != msg.sender:
            if not ext_call.return_data[0]:
                revert with 0, 'You are not owned this token.'
            require ext_code.size(stor4[arg1].field_0)
            call stor4[arg1].field_0.balanceOf(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args stor4[arg1].field_256, stor4[arg1].field_512
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < stor4[arg1].field_768:
                revert with 0, 'You are not owned this token.'
    if arg1 >= stor4.length:
        revert with 0, 50
    if stor4[arg1].field_160 > 2:
        revert with 0, 33
    if arg1 >= stor4.length:
        revert with 0, 50
    if not stor4[arg1].field_1696:
        revert with 0, 'Items is already not available'
    if stor4[arg1].field_256 != msg.sender:
        revert with 0, 'You can't cancel this item'
    require ext_code.size(stor3)
    staticcall stor3.0xfcee45f4 with:
            gas gas_remaining wei
           args stor4[arg1].field_1024
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor4[arg1].field_2048)
    call stor4[arg1].field_2048.0x70a08231 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'Balance is not enough to cancel'
    require ext_code.size(stor3)
    staticcall stor3.0xfcee45f4 with:
            gas gas_remaining wei
           args stor4[arg1].field_1024
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor4[arg1].field_2048)
    call stor4[arg1].field_2048.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, _walletAddress, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0xabcf68d8: stor4[arg1].field_1792, stor4[arg1].field_256, stor4[arg1].field_1024
    if arg1 >= stor4.length:
        revert with 0, 50
    stor4[arg1].field_1696 = 0
}

function sub_fcbc6207(?) payable {
    require calldata.size - 4 >= 192
    require arg1 == address(arg1)
    require arg6 == address(arg6)
    idx = 0
    while idx < stor4.length:
        mem[0] = 4
        if stor4[idx].field_768 == arg3:
            if idx >= stor4.length:
                revert with 0, 50
            mem[0] = 4
            if stor4[idx].field_0 == address(arg1):
                if idx >= stor4.length:
                    revert with 0, 50
                mem[0] = 4
                if stor4[idx].field_512 == arg2:
                    if idx >= stor4.length:
                        revert with 0, 50
                    mem[0] = 4
                    if stor4[idx].field_1696:
                        if idx >= stor4.length:
                            revert with 0, 50
                        mem[0] = 4
                        if stor4[idx].field_256 == msg.sender:
                            revert with 0, 'This item is already created'
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    if arg3 < 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount must be greater or equal than 1'
    if arg4 <= 0:
        revert with 0, 'Price must more than zero'
    require ext_code.size(stor3)
    staticcall stor3.0x8ebaf2b5 with:
            gas gas_remaining wei
           args address(arg6)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Token is not in white list'
    require ext_code.size(stor3)
    staticcall stor3.0xfcee45f4 with:
            gas gas_remaining wei
           args arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(arg6))
    call address(arg6).0x70a08231 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'Balance is not enough to pay fee'
    require ext_code.size(stor3)
    staticcall stor3.0xfcee45f4 with:
            gas gas_remaining wei
           args arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(arg6))
    call address(arg6).0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, _walletAddress, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(arg1))
    call address(arg1).supportsInterface(bytes4 arg1) with:
         gas gas_remaining wei
        args 0xd9b67a2600000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(address(arg1))
    call address(arg1).supportsInterface(bytes4 arg1) with:
         gas gas_remaining wei
        args 0x80ac58cd00000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        if not ext_call.return_data[0]:
            revert with 0, 'Item type is incorrect'
        require ext_code.size(address(arg1))
        call address(arg1).0x6352211e with:
             gas gas_remaining wei
            args arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] != msg.sender:
            revert with 0, 'You do not own this item (ERC721)'
        require ext_code.size(address(arg1))
        call address(arg1).0xe985e9c5 with:
             gas gas_remaining wei
            args msg.sender, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 'Item is not approve'
        if arg5 <= block.timestamp:
            revert with 0, 'Incorrect expiration'
        stor1++
        stor4.length++
        stor4[stor4.length].field_0 = address(arg1)
        stor4[stor4.length].field_0 = address(arg1)
        stor4[stor4.length].field_160 = 2
    else:
        require ext_code.size(address(arg1))
        if not ext_call.return_data[0]:
            call address(arg1).balanceOf(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args msg.sender, arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < arg3:
                revert with 0, 'You do not own this item (ERC1155)'
            require ext_code.size(address(arg1))
            call address(arg1).0xe985e9c5 with:
                 gas gas_remaining wei
                args msg.sender, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                revert with 0, 'Item is not approve'
            if arg5 <= block.timestamp:
                revert with 0, 'Incorrect expiration'
            stor1++
            stor4.length++
            stor4[stor4.length].field_0 = address(arg1)
            stor4[stor4.length].field_0 = address(arg1)
            stor4[stor4.length].field_160 = 1
        else:
            call address(arg1).0x6352211e with:
                 gas gas_remaining wei
                args arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if ext_call.return_data[12 len 20] != msg.sender:
                revert with 0, 'You do not own this item (ERC721)'
            require ext_code.size(address(arg1))
            call address(arg1).0xe985e9c5 with:
                 gas gas_remaining wei
                args msg.sender, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                revert with 0, 'Item is not approve'
            if arg5 <= block.timestamp:
                revert with 0, 'Incorrect expiration'
            stor1++
            stor4.length++
            stor4[stor4.length].field_0 = address(arg1)
            stor4[stor4.length].field_0 = address(arg1)
            stor4[stor4.length].field_160 = 2
    stor4[stor4.length].field_256 = msg.sender
    stor4[stor4.length].field_512 = arg2
    stor4[stor4.length].field_768 = arg3
    stor4[stor4.length].field_1024 = arg4
    stor4[stor4.length].field_1280 = arg5
    stor4[stor4.length].field_1536 = 0
    stor4[stor4.length].field_1696 = 1
    stor4[stor4.length].field_1792 = 0
    stor4[stor4.length].field_1792 = stor1
    stor4[stor4.length].field_2048 = address(arg6)
    emit 0xe0e0c84c: address(arg1), arg4, stor1, arg2, arg3
}



}
