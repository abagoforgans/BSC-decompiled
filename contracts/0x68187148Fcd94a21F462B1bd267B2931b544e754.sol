contract main {




// =====================  Runtime code  =====================


#
#  - sub_95ca407e(?)
#  - sub_98e1655c(?)
#  - sub_9c17e622(?)
#
const getChainId = chainid

const DOMAIN_TYPEHASH = sha3(0, 0, 0, 0, Mask(200, 56, 'address verifyingContract') >> 56, 41)

const DEFAULT_ADMIN_ROLE = 0

const DOMAIN_VERSION = 0xc89efdaa54c0f20c7adf612882df0950f5a951637e0307cdcb4c672f298b8bc6


mapping of struct roleAdmin;
address owner;
uint256 DOMAIN_NAME;
uint256 DOMAIN_CHAIN_ID;
uint256 DOMAIN_SEPARATOR;
uint256 sub_eb9600f2;
address verifyAddress;
address nftAddress;
uint256 sub_8c69b55b;
uint256 maxBuyPrice;
uint256 minBuyPrice;
address tokenAddress;
uint256 devFee;
address devAddress;
uint256 stor14;
uint256 saleCount;
uint8 stor20; offset 160
address sub_04fc2a66Address;

function sub_04fc2a66(?) payable {
    return sub_04fc2a66Address
}

function minBuyPrice() payable {
    return minBuyPrice
}

function getRoleAdmin(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return uint256(roleAdmin[arg1].field_256)
}

function DOMAIN_SEPARATOR() payable {
    return DOMAIN_SEPARATOR
}

function devAddress() payable {
    return address(devAddress)
}

function DOMAIN_CHAIN_ID() payable {
    return DOMAIN_CHAIN_ID
}

function nftAddress() payable {
    return nftAddress
}

function verifyAddress() payable {
    return verifyAddress
}

function devFee() payable {
    return devFee
}

function maxBuyPrice() payable {
    return maxBuyPrice
}

function DOMAIN_NAME() payable {
    return DOMAIN_NAME
}

function sub_8c69b55b(?) payable {
    return sub_8c69b55b
}

function owner() payable {
    return owner
}

function hasRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return bool(uint8(roleAdmin[arg1][address(arg2)].field_0))
}

function tokenAddress() payable {
    return tokenAddress
}

function saleCount() payable {
    return saleCount
}

function getNftAddress() payable {
    return nftAddress
}

function sub_eb9600f2(?) payable {
    return sub_eb9600f2
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_185f0210(?) payable {
    require calldata.size - 4 >= 32
    if not uint8(roleAdmin[address(msg.sender)].field_0):
        revert with 0, 'Caller is not a manager'
    minBuyPrice = arg1
}

function sub_c1bf048a(?) payable {
    require calldata.size - 4 >= 32
    if not uint8(roleAdmin[address(msg.sender)].field_0):
        revert with 0, 'Caller is not a manager'
    maxBuyPrice = arg1
}

function setDevFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not uint8(roleAdmin[address(msg.sender)].field_0):
        revert with 0, 'Caller is not a manager'
    devFee = arg1
}

function setVerifyAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not uint8(roleAdmin[address(msg.sender)].field_0):
        revert with 0, 'Caller is not a manager'
    verifyAddress = arg1
}

function sub_1d737778(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not uint8(roleAdmin[address(msg.sender)].field_0):
        revert with 0, 'Caller is not a manager'
    sub_04fc2a66Address = address(arg1)
}

function setNftAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not uint8(roleAdmin[address(msg.sender)].field_0):
        revert with 0, 'Caller is not a manager'
    if not arg1:
        revert with 0, 'address invalid.'
    nftAddress = arg1
}

function setDevAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not uint8(roleAdmin[address(msg.sender)].field_0):
        revert with 0, 'Caller is not a manager'
    if not arg1:
        revert with 0, 'address invalid.'
    address(devAddress) = arg1
}

function setAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not uint8(roleAdmin[address(arg1)].field_0):
        uint8(roleAdmin[address(arg1)].field_0) = 1
        emit RoleGranted(0, arg1, msg.sender);
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function renounceRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if arg2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: can only renounce roles for self'
    if uint8(roleAdmin[arg1][address(arg2)].field_0):
        uint8(roleAdmin[arg1][address(arg2)].field_0) = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
}

function sub_b64163e7(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg1.length
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 16
    mem[ceil32(ceil32(arg1.length)) + 97] = bool(uint8(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])]))
    return memory
      from ceil32(ceil32(arg1.length)) + 97
       len 32
}

function sub_5e298c97(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg1.length
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 19
    if uint256(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])]) > 0:
        return 1, uint256(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])])
    return 0, uint256(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])])
}

function sub_fc06f289(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg1.length
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 17
    if uint256(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])]) > 0:
        return 1, uint256(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])])
    return 0, uint256(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])])
}

function sweep(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not uint8(roleAdmin[address(msg.sender)].field_0):
        revert with 0, 'Caller is not a manager'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        require ext_code.size(arg1)
        if sub_04fc2a66Address:
            call arg1.0xa9059cbb with:
                 gas gas_remaining wei
                args sub_04fc2a66Address, ext_call.return_data[0]
        else:
            call arg1.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function init(address arg1, address arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if stor20:
        revert with 0, 'inited!'
    owner = msg.sender
    emit OwnershipTransferred(owner, msg.sender);
    if not uint8(roleAdmin[address(msg.sender)].field_0):
        uint8(roleAdmin[address(msg.sender)].field_0) = 1
        emit RoleGranted(0, msg.sender, msg.sender);
    tokenAddress = arg1
    nftAddress = arg2
    uint256(stor14) = msg.sender or Mask(96, 160, uint256(stor14))
    devFee = 0
    sub_8c69b55b = 10
    maxBuyPrice = 10000
    minBuyPrice = 0
    DOMAIN_CHAIN_ID = chainid
    DOMAIN_NAME = 0xa1b6404ddeae3e8d0fc4e097a9831f618dc381406be9ce0b5fec0102488a2677
    DOMAIN_SEPARATOR = sha3(sha3(0, 0, 0, 0, 'address verifyingContract', 41), DOMAIN_NAME, 0xc89efdaa54c0f20c7adf612882df0950f5a951637e0307cdcb4c672f298b8bc6, chainid, this.address)
    sub_eb9600f2 = sha3(0xfe5369676e5665726966792875696e743235365b5d2075696e74732c737472696e67207374722c616464726573732061646472, mem[179 len 13] >> 152)
    verifyAddress = arg3
    stor20 = 1
}

function sub_0ffea796(?) payable {
    require calldata.size - 4 >= 64
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 36).length) + 97 < 96 or ceil32(32 * ('cd', 36).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = 128
    while idx < ('cd', 36).length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[ceil32(32 * ('cd', 36).length) + 97] = 1
    mem[ceil32(32 * ('cd', 36).length) + 129] = cd[4]
    mem[ceil32(32 * ('cd', 36).length) + 161] = 0
    mem[ceil32(32 * ('cd', 36).length) + 193] = 32
    if 0 >= ('cd', 36).length:
        revert with 0, 50
    if 1 >= ('cd', 36).length:
        revert with 0, 50
    if 2 >= ('cd', 36).length:
        revert with 0, 50
    signer = erecover(sha3(0, DOMAIN_SEPARATOR, sha3(sub_eb9600f2, sha3(cd[4]), sha3(None), this.address)), mem[192] << 248, mem[128], mem[160]) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if not address(signer):
        revert with 0, 'INVALID_SIG'
    return address(signer)
}

function revokeRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if uint8(roleAdmin[uint256(roleAdmin[arg1].field_256)][address(msg.sender)].field_0):
        if uint8(roleAdmin[arg1][address(arg2)].field_0):
            uint8(roleAdmin[arg1][address(arg2)].field_0) = 0
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
    s = uint256(roleAdmin[arg1].field_256)
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
    if uint256(roleAdmin[arg1].field_256) + 16384:
        revert with 0, 'Strings: hex length insufficient'
    revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
}

function grantRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if uint8(roleAdmin[uint256(roleAdmin[arg1].field_256)][address(msg.sender)].field_0):
        if not uint8(roleAdmin[arg1][address(arg2)].field_0):
            uint8(roleAdmin[arg1][address(arg2)].field_0) = 1
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
    s = uint256(roleAdmin[arg1].field_256)
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
    if uint256(roleAdmin[arg1].field_256) + 16384:
        revert with 0, 'Strings: hex length insufficient'
    revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
}

function charge(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not ext_code.size(msg.sender):
        if tx.origin != msg.sender:
            revert with 0, 'sorry humans only'
        require ext_code.size(nftAddress)
        call nftAddress.0x9f5946d2 with:
             gas gas_remaining wei
            args arg1, 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(nftAddress)
        staticcall nftAddress.nftInfo(uint256 arg1) with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 288
        if not bool(ceil32(return_data.size) + 672 <= test266151307()):
            revert with 0, 65
    else:
        require ext_code.size(nftAddress)
        staticcall nftAddress.0x24194aa1 with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 'sorry place contract only'
        require ext_code.size(nftAddress)
        call nftAddress.0x9f5946d2 with:
             gas gas_remaining wei
            args arg1, 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(nftAddress)
        staticcall nftAddress.nftInfo(uint256 arg1) with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 288
        if not bool((2 * ceil32(return_data.size)) + 672 <= test266151307()):
            revert with 0, 65
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    require ext_call.return_data[256] == ext_call.return_data[287 len 1]
    emit 0x124f9db1: msg.sender, arg1, ext_call.return_data[0] << 248, ext_call.return_data[32], ext_call.return_data[64], ext_call.return_data[96], ext_call.return_data[128], ext_call.return_data[160], ext_call.return_data[192], ext_call.return_data[224], uint8(ext_call.return_data[256])
    return 1
}

function sub_96a247b3(?) payable {
    require calldata.size - 4 >= 128
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(('cd', 36).length)) + 98 < 97 or ceil32(32 * ('cd', 4).length) + ceil32(ceil32(('cd', 36).length)) + 98 > test266151307():
        revert with 0, 65
    mem[ceil32(32 * ('cd', 4).length) + 97] = ('cd', 36).length
    require cd[36] + ('cd', 36).length + 36 <= calldata.size
    mem[ceil32(32 * ('cd', 4).length) + ('cd', 36).length + 129] = 0
    require cd[68] == address(cd[68])
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    if ('cd', 100).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 100).length) + 99 < 98 or ceil32(32 * ('cd', 4).length) + ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 100).length) + 99 > test266151307():
        revert with 0, 65
    mem[ceil32(32 * ('cd', 4).length) + ceil32(ceil32(('cd', 36).length)) + 98] = ('cd', 100).length
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    idx = 0
    s = cd[100] + 36
    t = ceil32(32 * ('cd', 4).length) + ceil32(ceil32(('cd', 36).length)) + 130
    while idx < ('cd', 100).length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[ceil32(32 * ('cd', 4).length) + ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 100).length) + 131 len 32 * ('cd', 4).length] = mem[128 len 32 * ('cd', 4).length]
    mem[ceil32(32 * ('cd', 4).length) + ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 100).length) + 99] = 32 * ('cd', 4).length
    _180 = sha3(mem[ceil32(32 * ('cd', 4).length) + ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 100).length) + 131 len 32 * ('cd', 4).length])
    mem[ceil32(32 * ('cd', 4).length) + ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 100).length) + (32 * ('cd', 4).length) + 163 len ceil32(('cd', 36).length)] = call.data[cd[36] + 36 len ('cd', 36).length], Mask(8 * ceil32(('cd', 36).length) - ('cd', 36).length, -(8 * ceil32(('cd', 36).length) + -ceil32(ceil32(('cd', 36).length)) + 31) + 256, ('cd', 100).length) >> -(8 * ceil32(('cd', 36).length) + -ceil32(ceil32(('cd', 36).length)) + 31) + 256
    mem[ceil32(32 * ('cd', 4).length) + ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 100).length) + (32 * ('cd', 4).length) + 131] = ('cd', 36).length
    mem[('cd', 36).length + ceil32(32 * ('cd', 4).length) + ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 100).length) + (32 * ('cd', 4).length) + 195] = sub_eb9600f2
    mem[('cd', 36).length + ceil32(32 * ('cd', 4).length) + ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 100).length) + (32 * ('cd', 4).length) + 163] = 128
    if 0 >= ('cd', 100).length:
        revert with 0, 50
    if 1 >= ('cd', 100).length:
        revert with 0, 50
    if 2 >= ('cd', 100).length:
        revert with 0, 50
    signer = erecover(sha3(0, DOMAIN_SEPARATOR, sha3(sub_eb9600f2, _180, sha3(Mask(8 * ('cd', 36).length, -(8 * ('cd', 36).length) + 256, call.data[cd[36] + 36 len ('cd', 36).length], Mask(8 * ceil32(('cd', 36).length) - ('cd', 36).length, -(8 * ceil32(('cd', 36).length) + -ceil32(ceil32(('cd', 36).length)) + 31) + 256, ('cd', 100).length) >> -(8 * ceil32(('cd', 36).length) + -ceil32(ceil32(('cd', 36).length)) + 31) + 256) << (8 * ('cd', 36).length) - 256), address(cd[68]))), mem[ceil32(32 * ('cd', 4).length) + ceil32(ceil32(('cd', 36).length)) + 194] << 248, mem[ceil32(32 * ('cd', 4).length) + ceil32(ceil32(('cd', 36).length)) + 130], mem[ceil32(32 * ('cd', 4).length) + ceil32(ceil32(('cd', 36).length)) + 162]) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if not address(signer):
        revert with 0, 'INVALID_SIG'
    return address(signer)
}



}
