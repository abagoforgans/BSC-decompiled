contract main {




// =====================  Runtime code  =====================


#
#  - uri(uint256 arg1)
#
mapping of uint256 balanceOf;
mapping of uint8 stor1;
array of uint256 stor2;
address owner;
mapping of uint8 stor4;
mapping of uint8 stor5;
address stor6;
uint256 _currentTokenID;
mapping of address creator;
mapping of uint256 loyaltyFee;
mapping of uint256 totalSupply;
mapping of uint256 maxSupply;
array of uint256 tokenURI;
array of uint256 name;
array of uint256 symbol;

function tokenMaxSupply(uint256 arg1) {
    require calldata.size - 4 >= 32
    return maxSupply[arg1]
}

function balanceOf(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    return balanceOf[address(arg1)][arg2]
}

function name() {
    return name[0 len name.length]
}

function loyaltyFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    return loyaltyFee[arg1]
}

function tokenSupply(uint256 arg1) {
    require calldata.size - 4 >= 32
    return totalSupply[arg1]
}

function getLoyaltyFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    return loyaltyFee[arg1]
}

function _currentTokenID() {
    return _currentTokenID
}

function maxSupply(uint256 arg1) {
    require calldata.size - 4 >= 32
    return maxSupply[arg1]
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function isMinter(address arg1) {
    require calldata.size - 4 >= 32
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roles: account is the zero address'
    return bool(stor4[address(arg1)])
}

function isWhitelistAdmin(address arg1) {
    require calldata.size - 4 >= 32
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roles: account is the zero address'
    return bool(stor5[address(arg1)])
}

function totalSupply(uint256 arg1) {
    require calldata.size - 4 >= 32
    return totalSupply[arg1]
}

function tokenURI(uint256 arg1) {
    return tokenURI[arg1][0 len tokenURI[arg1].length]
}

function creators(uint256 arg1) {
    require calldata.size - 4 >= 32
    return creator[arg1]
}

function getCreator(uint256 arg1) {
    require calldata.size - 4 >= 32
    return creator[arg1]
}

function _fallback() payable {
    revert
}

function isOwner() {
    return (msg.sender == owner)
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setProxyAddress(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor6 = arg1
    return 1
}

function setApprovalForAll(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    stor1[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function supportsInterface(bytes4 arg1) {
    require calldata.size - 4 >= 32
    if Mask(32, 224, arg1) != 0x1ffc9a700000000000000000000000000000000000000000000000000000000:
        if Mask(32, 224, arg1) != 0xd9b67a2600000000000000000000000000000000000000000000000000000000:
            return 0
    return 1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function renounceMinter() {
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roles: account is the zero address'
    if not stor4[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roles: account does not have role'
    stor4[address(msg.sender)] = 0
    emit MinterRemoved(msg.sender);
}

function renounceWhitelistAdmin() {
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roles: account is the zero address'
    if not stor5[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roles: account does not have role'
    stor5[address(msg.sender)] = 0
    emit WhitelistAdminRemoved(msg.sender);
}

function setBaseMetadataURI(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    if not msg.sender:
        revert with 0, 'Roles: account is the zero address'
    if not stor5[address(msg.sender)]:
        revert with 0, 'WhitelistAdminRole: caller does not have the WhitelistAdmin role'
    stor2[] = Array(len=arg1.length, data=arg1[all])
}

function removeMinter(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roles: account is the zero address'
    if not stor4[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roles: account does not have role'
    stor4[address(arg1)] = 0
    emit MinterRemoved(arg1);
}

function removeWhitelistAdmin(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roles: account is the zero address'
    if not stor5[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roles: account does not have role'
    stor5[address(arg1)] = 0
    emit WhitelistAdminRemoved(arg1);
}

function isApprovedForAll(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    if not stor6:
        return bool(stor1[address(arg1)][address(arg2)])
    require ext_code.size(stor6)
    staticcall stor6.proxies(address arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != arg2:
        return bool(stor1[address(arg1)][address(arg2)])
    return 1
}

function addMinter(address arg1) {
    require calldata.size - 4 >= 32
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roles: account is the zero address'
    if not stor4[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'MinterRole: caller does not have the Minter role'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roles: account is the zero address'
    if stor4[address(arg1)]:
        revert with 0, 'Roles: account already has role'
    stor4[address(arg1)] = 1
    emit MinterAdded(arg1);
}

function addWhitelistAdmin(address arg1) {
    require calldata.size - 4 >= 32
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roles: account is the zero address'
    if not stor5[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'WhitelistAdminRole: caller does not have the WhitelistAdmin role'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roles: account is the zero address'
    if stor5[address(arg1)]:
        revert with 0, 'Roles: account already has role'
    stor5[address(arg1)] = 1
    emit WhitelistAdminAdded(arg1);
}

function balanceOfBatch(address[] arg1, uint256[] arg2) {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    if arg1.length != arg2.length:
        revert with 0, 'ERC1155#balanceOfBatch: INVALID_ARRAY_LENGTH'
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = arg1.length
    if arg1.length:
        mem[(32 * arg1.length) + (32 * arg2.length) + 192 len 32 * arg1.length] = code.data[18809 len 32 * arg1.length]
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        require idx < arg2.length
        mem[0] = mem[(32 * idx) + (32 * arg1.length) + 160]
        mem[32] = sha3(mem[(32 * idx) + 140 len 20], 0)
        require idx < arg1.length
        mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = balanceOf[mem[(32 * idx) + 140 len 20]][mem[(32 * idx) + (32 * arg1.length) + 160]]
        idx = idx + 1
        continue 
    mem[(64 * arg1.length) + (32 * arg2.length) + 192] = 32
    mem[(64 * arg1.length) + (32 * arg2.length) + 224] = arg1.length
    mem[(64 * arg1.length) + (32 * arg2.length) + 256 len floor32(arg1.length)] = mem[(32 * arg1.length) + (32 * arg2.length) + 192 len floor32(arg1.length)]
    return memory
      from (64 * arg1.length) + (32 * arg2.length) + 192
       len (161 * arg1.length) + 64
}

function mint(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    if creator[arg2] != msg.sender:
        revert with 0, 'Only-creator-can-mint'
    if totalSupply[arg2] >= maxSupply[arg2]:
        revert with 0, 'Max supply reached'
    if balanceOf[address(arg1)][arg2] + arg3 < balanceOf[address(arg1)][arg2]:
        revert with 0, 'SafeMath#add: OVERFLOW'
    balanceOf[address(arg1)][arg2] += arg3
    mem[ceil32(arg4.length) + 128] = arg2
    mem[ceil32(arg4.length) + 160] = arg3
    emit TransferSingle(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length) + 32], msg.sender, 0, arg1);
    if ext_code.hash(arg1):
        if ext_code.hash(arg1) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
            mem[ceil32(arg4.length) + 128] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
            mem[ceil32(arg4.length) + 324 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
            if not arg4.length % 32:
                require ext_code.size(arg1)
                call arg1 with:
                     gas gas_remaining wei
                    args msg.sender, 0, arg2, arg3, 160, arg4.length, Mask(8 * arg4.length, -(8 * arg4.length) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * arg4.length) - 256
            else:
                mem[floor32(arg4.length) + ceil32(arg4.length) + 324] = mem[floor32(arg4.length) + ceil32(arg4.length) + -(arg4.length % 32) + 356 len arg4.length % 32]
                require ext_code.size(arg1)
                call arg1 with:
                     gas gas_remaining wei
                    args msg.sender, 0, arg2, arg3, 160, arg4.length, Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[(2 * ceil32(arg4.length)) + 324 len floor32(arg4.length) + -ceil32(arg4.length) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                revert with 0, 'ERC1155#_callonERC1155Received: INVALID_ON_RECEIVE_MESSAGE'
    if totalSupply[arg2] + arg3 < totalSupply[arg2]:
        revert with 0, 'SafeMath#add: OVERFLOW'
    totalSupply[arg2] += arg3
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) {
    require calldata.size - 4 >= 160
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + arg5.length + 36 <= calldata.size
    if msg.sender == arg1:
        if not arg2:
            revert with 0, 'ERC1155#safeTransferFrom: INVALID_RECIPIENT'
        if arg4 > balanceOf[address(arg1)][arg3]:
            revert with 0, 'SafeMath#sub: UNDERFLOW'
        balanceOf[address(arg1)][arg3] -= arg4
        if balanceOf[address(arg2)][arg3] + arg4 < balanceOf[address(arg2)][arg3]:
            revert with 0, 'SafeMath#add: OVERFLOW'
        balanceOf[address(arg2)][arg3] += arg4
        mem[ceil32(arg5.length) + 128] = arg3
        mem[ceil32(arg5.length) + 160] = arg4
        emit TransferSingle(Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length) + 32], msg.sender, arg1, arg2);
    else:
        if not stor6:
            if not stor1[address(arg1)][address(msg.sender)]:
                revert with 0, 'ERC1155#safeTransferFrom: INVALID_OPERATOR'
            if not arg2:
                revert with 0, 'ERC1155#safeTransferFrom: INVALID_RECIPIENT'
            if arg4 > balanceOf[address(arg1)][arg3]:
                revert with 0, 'SafeMath#sub: UNDERFLOW'
            balanceOf[address(arg1)][arg3] -= arg4
            if balanceOf[address(arg2)][arg3] + arg4 < balanceOf[address(arg2)][arg3]:
                revert with 0, 'SafeMath#add: OVERFLOW'
            balanceOf[address(arg2)][arg3] += arg4
            mem[ceil32(arg5.length) + 128] = arg3
            mem[ceil32(arg5.length) + 160] = arg4
            emit TransferSingle(Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length) + 32], msg.sender, arg1, arg2);
        else:
            require ext_code.size(stor6)
            staticcall stor6.proxies(address arg1) with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[12 len 20] != msg.sender:
                if not stor1[address(arg1)][address(msg.sender)]:
                    revert with 0, 'ERC1155#safeTransferFrom: INVALID_OPERATOR'
            if not arg2:
                revert with 0, 'ERC1155#safeTransferFrom: INVALID_RECIPIENT'
            if arg4 > balanceOf[address(arg1)][arg3]:
                revert with 0, 'SafeMath#sub: UNDERFLOW'
            balanceOf[address(arg1)][arg3] -= arg4
            if balanceOf[address(arg2)][arg3] + arg4 < balanceOf[address(arg2)][arg3]:
                revert with 0, 'SafeMath#add: OVERFLOW'
            balanceOf[address(arg2)][arg3] += arg4
            emit TransferSingle(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5):
                                0,
                                Mask(224, 0, arg3),
                                arg4,
                                msg.sender,
                                arg1,
                                arg2,
    if ext_code.hash(arg2):
        if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
            require ext_code.size(arg2)
            call arg2 with:
                 gas gas_remaining wei
                args msg.sender, address(arg1), arg3, arg4, Array(len=arg5.length, data=arg5[all])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                revert with 0, 'ERC1155#_callonERC1155Received: INVALID_ON_RECEIVE_MESSAGE'
}

function create(uint256 arg1, uint256 arg2, uint256 arg3, string arg4, bytes arg5) {
    require calldata.size - 4 >= 160
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + arg5.length + 36 <= calldata.size
    mem[ceil32(arg4.length) + 160 len arg5.length] = arg5[all]
    mem[ceil32(arg4.length) + arg5.length + 160] = 0
    if arg2 > arg1:
        revert with 0, 'Initial supply cannot be more than max supply'
    if 0 > arg3:
        revert with 0, 'Invalid-loyalty-fee'
    if arg3 > 10000:
        revert with 0, 'Invalid-loyalty-fee'
    if _currentTokenID + 1 < _currentTokenID:
        revert with 0, 'SafeMath#add: OVERFLOW'
    _currentTokenID++
    creator[stor7 + 1] = msg.sender
    loyaltyFee[stor7 + 1] = arg3
    tokenURI[stor7 + 1][] = Array(len=arg4.length, data=arg4[all])
    if not arg2:
        totalSupply[stor7 + 1] = arg2
        maxSupply[stor7 + 1] = arg1
        mem[ceil32(arg4.length) + ceil32(arg5.length) + 160] = arg1
        mem[ceil32(arg4.length) + ceil32(arg5.length) + 192] = arg2
        emit Create(Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[ceil32(arg4.length) + arg5.length + 192 len -arg5.length + ceil32(arg5.length) + 32], msg.sender, _currentTokenID + 1, arg3);
        mem[ceil32(arg4.length) + ceil32(arg5.length) + 160] = _currentTokenID + 1
        return Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), 
               mem[ceil32(arg4.length) + arg5.length + 192 len -arg5.length + ceil32(arg5.length)]
    if balanceOf[address(msg.sender)][stor7 + 1] + arg2 < balanceOf[address(msg.sender)][stor7 + 1]:
        revert with 0, 'SafeMath#add: OVERFLOW'
    balanceOf[address(msg.sender)][stor7 + 1] += arg2
    mem[ceil32(arg4.length) + ceil32(arg5.length) + 160] = _currentTokenID + 1
    mem[ceil32(arg4.length) + ceil32(arg5.length) + 192] = arg2
    emit TransferSingle(Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[ceil32(arg4.length) + arg5.length + 192 len -arg5.length + ceil32(arg5.length) + 32], msg.sender, 0, msg.sender);
    if not ext_code.hash(msg.sender):
        totalSupply[stor7 + 1] = arg2
        maxSupply[stor7 + 1] = arg1
        mem[ceil32(arg4.length) + ceil32(arg5.length) + 160] = arg1
        mem[ceil32(arg4.length) + ceil32(arg5.length) + 192] = arg2
        emit Create(Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[ceil32(arg4.length) + arg5.length + 192 len -arg5.length + ceil32(arg5.length) + 32], msg.sender, _currentTokenID + 1, arg3);
        mem[ceil32(arg4.length) + ceil32(arg5.length) + 160] = _currentTokenID + 1
        return Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), 
               mem[ceil32(arg4.length) + arg5.length + 192 len -arg5.length + ceil32(arg5.length)]
    if ext_code.hash(msg.sender) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
        totalSupply[stor7 + 1] = arg2
        maxSupply[stor7 + 1] = arg1
        mem[ceil32(arg4.length) + ceil32(arg5.length) + 160] = arg1
        mem[ceil32(arg4.length) + ceil32(arg5.length) + 192] = arg2
        emit Create(Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[ceil32(arg4.length) + arg5.length + 192 len -arg5.length + ceil32(arg5.length) + 32], msg.sender, _currentTokenID + 1, arg3);
        mem[ceil32(arg4.length) + ceil32(arg5.length) + 160] = _currentTokenID + 1
        return Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), 
               mem[ceil32(arg4.length) + arg5.length + 192 len -arg5.length + ceil32(arg5.length)]
    mem[ceil32(arg4.length) + ceil32(arg5.length) + 160] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg4.length) + ceil32(arg5.length) + 356 len ceil32(arg5.length)] = arg5[all], mem[ceil32(arg4.length) + arg5.length + 160 len ceil32(arg5.length) - arg5.length]
    if not arg5.length % 32:
        require ext_code.size(msg.sender)
        call msg.sender with:
             gas gas_remaining wei
            args msg.sender, 0, _currentTokenID + 1, arg2, 160, arg5.length, Mask(8 * arg5.length, -(8 * arg5.length) + 256, arg5[all], mem[ceil32(arg4.length) + arg5.length + 160 len ceil32(arg5.length) - arg5.length]) << (8 * arg5.length) - 256
    else:
        mem[floor32(arg5.length) + ceil32(arg4.length) + ceil32(arg5.length) + 356] = mem[floor32(arg5.length) + ceil32(arg4.length) + ceil32(arg5.length) + -(arg5.length % 32) + 388 len arg5.length % 32]
        require ext_code.size(msg.sender)
        call msg.sender with:
             gas gas_remaining wei
            args msg.sender, 0, _currentTokenID + 1, arg2, 160, arg5.length, Mask(8 * ceil32(arg5.length), -(8 * ceil32(arg5.length)) + 256, arg5[all], mem[ceil32(arg4.length) + arg5.length + 160 len ceil32(arg5.length) - arg5.length]) << (8 * ceil32(arg5.length)) - 256, mem[ceil32(arg4.length) + (2 * ceil32(arg5.length)) + 356 len floor32(arg5.length) + -ceil32(arg5.length) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
        revert with 0, 'ERC1155#_callonERC1155Received: INVALID_ON_RECEIVE_MESSAGE'
    totalSupply[stor7 + 1] = arg2
    maxSupply[stor7 + 1] = arg1
    emit Create(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5):
                0,
                Mask(224, 0, arg1),
                arg2,
                msg.sender,
                _currentTokenID + 1,
                arg3,
    return 0, Mask(224, 0, _currentTokenID + 1)
}

function safeBatchTransferFrom(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) {
    require calldata.size - 4 >= 160
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + (32 * arg4.length) + 36 <= calldata.size
    mem[(32 * arg3.length) + 128] = arg4.length
    mem[(32 * arg3.length) + 160 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + arg5.length + 36 <= calldata.size
    mem[(32 * arg3.length) + (32 * arg4.length) + 160] = arg5.length
    mem[(32 * arg3.length) + (32 * arg4.length) + 192 len arg5.length] = arg5[all]
    mem[(32 * arg3.length) + (32 * arg4.length) + arg5.length + 192] = 0
    if msg.sender == arg1:
        if not arg2:
            revert with 0, 'ERC1155#safeBatchTransferFrom: INVALID_RECIPIENT'
        if arg3.length != arg4.length:
            revert with 0, 'ERC1155#_safeBatchTransferFrom: INVALID_ARRAYS_LENGTH'
        idx = 0
        while idx < arg3.length:
            require idx < arg4.length
            require idx < arg3.length
            if mem[(32 * idx) + (32 * arg3.length) + 160] > balanceOf[address(arg1)][mem[(32 * idx) + 128]]:
                revert with 0, 'SafeMath#sub: UNDERFLOW'
            require idx < arg3.length
            balanceOf[address(arg1)][mem[(32 * idx) + 128]] -= mem[(32 * idx) + (32 * arg3.length) + 160]
            require idx < arg4.length
            require idx < arg3.length
            if balanceOf[address(arg2)][mem[(32 * idx) + 128]] + mem[(32 * idx) + (32 * arg3.length) + 160] < balanceOf[address(arg2)][mem[(32 * idx) + 128]]:
                revert with 0, 'SafeMath#add: OVERFLOW'
            require idx < arg3.length
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = sha3(address(arg2), 0)
            balanceOf[address(arg2)][mem[(32 * idx) + 128]] += mem[(32 * idx) + (32 * arg3.length) + 160]
            idx = idx + 1
            continue 
        mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + 192] = 64
        mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + 288 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
        mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + 224] = (32 * arg3.length) + 96
        mem[(64 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + 288] = arg4.length
        mem[(64 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + 320 len floor32(arg4.length)] = call.data[arg4 + 36 len floor32(arg4.length)]
        emit TransferBatch(address arg1, address arg2, address arg3, uint256[] arg4, uint256[] arg5):
                           Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0),
                           mem[(32 * arg3.length) + (32 * arg4.length) + arg5.length + 224 len ceil32(arg5.length) + -arg5.length + 32],
                           arg3.length,
                           call.data[arg3 + 36 len floor32(arg3.length)],
                           mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + floor32(arg3.length) + 288 len (32 * arg3.length) + (32 * arg4.length) + -floor32(arg3.length) + 32],
                           msg.sender,
                           arg1,
                           arg2,
    else:
        if not stor6:
            if not stor1[address(arg1)][address(msg.sender)]:
                revert with 0, 'ERC1155#safeBatchTransferFrom: INVALID_OPERATOR'
            if not arg2:
                revert with 0, 'ERC1155#safeBatchTransferFrom: INVALID_RECIPIENT'
            if arg3.length != arg4.length:
                revert with 0, 'ERC1155#_safeBatchTransferFrom: INVALID_ARRAYS_LENGTH'
            idx = 0
            while idx < arg3.length:
                require idx < arg4.length
                require idx < arg3.length
                if mem[(32 * idx) + (32 * arg3.length) + 160] > balanceOf[address(arg1)][mem[(32 * idx) + 128]]:
                    revert with 0, 'SafeMath#sub: UNDERFLOW'
                require idx < arg3.length
                balanceOf[address(arg1)][mem[(32 * idx) + 128]] -= mem[(32 * idx) + (32 * arg3.length) + 160]
                require idx < arg4.length
                require idx < arg3.length
                if balanceOf[address(arg2)][mem[(32 * idx) + 128]] + mem[(32 * idx) + (32 * arg3.length) + 160] < balanceOf[address(arg2)][mem[(32 * idx) + 128]]:
                    revert with 0, 'SafeMath#add: OVERFLOW'
                require idx < arg3.length
                mem[0] = mem[(32 * idx) + 128]
                mem[32] = sha3(address(arg2), 0)
                balanceOf[address(arg2)][mem[(32 * idx) + 128]] += mem[(32 * idx) + (32 * arg3.length) + 160]
                idx = idx + 1
                continue 
            mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + 192] = 64
            mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + 288 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
            mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + 224] = (32 * arg3.length) + 96
            mem[(64 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + 288] = arg4.length
            mem[(64 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + 320 len floor32(arg4.length)] = call.data[arg4 + 36 len floor32(arg4.length)]
            emit TransferBatch(address arg1, address arg2, address arg3, uint256[] arg4, uint256[] arg5):
                               Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0),
                               mem[(32 * arg3.length) + (32 * arg4.length) + arg5.length + 224 len ceil32(arg5.length) + -arg5.length + 32],
                               arg3.length,
                               call.data[arg3 + 36 len floor32(arg3.length)],
                               mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + floor32(arg3.length) + 288 len (32 * arg3.length) + (32 * arg4.length) + -floor32(arg3.length) + 32],
                               msg.sender,
                               arg1,
                               arg2,
        else:
            mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + 196] = arg1
            require ext_code.size(stor6)
            staticcall stor6.proxies(address arg1) with:
                    gas gas_remaining wei
                   args arg1
            mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + 192] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[12 len 20] != msg.sender:
                if not stor1[address(arg1)][address(msg.sender)]:
                    revert with 0, 'ERC1155#safeBatchTransferFrom: INVALID_OPERATOR'
            if not arg2:
                revert with 0, 'ERC1155#safeBatchTransferFrom: INVALID_RECIPIENT'
            if arg3.length != arg4.length:
                revert with 0, 'ERC1155#_safeBatchTransferFrom: INVALID_ARRAYS_LENGTH'
            idx = 0
            while idx < arg3.length:
                require idx < arg4.length
                require idx < arg3.length
                if mem[(32 * idx) + (32 * arg3.length) + 160] > balanceOf[address(arg1)][mem[(32 * idx) + 128]]:
                    revert with 0, 'SafeMath#sub: UNDERFLOW'
                require idx < arg3.length
                balanceOf[address(arg1)][mem[(32 * idx) + 128]] -= mem[(32 * idx) + (32 * arg3.length) + 160]
                require idx < arg4.length
                require idx < arg3.length
                if balanceOf[address(arg2)][mem[(32 * idx) + 128]] + mem[(32 * idx) + (32 * arg3.length) + 160] < balanceOf[address(arg2)][mem[(32 * idx) + 128]]:
                    revert with 0, 'SafeMath#add: OVERFLOW'
                require idx < arg3.length
                mem[0] = mem[(32 * idx) + 128]
                mem[32] = sha3(address(arg2), 0)
                balanceOf[address(arg2)][mem[(32 * idx) + 128]] += mem[(32 * idx) + (32 * arg3.length) + 160]
                idx = idx + 1
                continue 
            mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + 288 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
            mem[(64 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + 288] = arg4.length
            mem[(64 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + 320 len floor32(arg4.length)] = call.data[arg4 + 36 len floor32(arg4.length)]
            emit TransferBatch(address arg1, address arg2, address arg3, uint256[] arg4, uint256[] arg5):
                               0,
                               64,
                               (32 * arg3.length) + 96,
                               arg3.length,
                               call.data[arg3 + 36 len floor32(arg3.length)],
                               mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + floor32(arg3.length) + 288 len (32 * arg3.length) + (32 * arg4.length) + -floor32(arg3.length) + 32],
                               msg.sender,
                               arg1,
                               arg2,
    if ext_code.hash(arg2):
        if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
            mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + 192] = 0xbc197c8100000000000000000000000000000000000000000000000000000000
            mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + 388 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
            mem[(64 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + 388] = arg4.length
            mem[(64 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + 420 len floor32(arg4.length)] = call.data[arg4 + 36 len floor32(arg4.length)]
            mem[(64 * arg4.length) + (64 * arg3.length) + ceil32(arg5.length) + 420] = arg5.length
            mem[(64 * arg4.length) + (64 * arg3.length) + ceil32(arg5.length) + 452 len ceil32(arg5.length)] = arg5[all], mem[(32 * arg3.length) + (32 * arg4.length) + arg5.length + 192 len ceil32(arg5.length) - arg5.length]
            if not arg5.length % 32:
                require ext_code.size(arg2)
                call arg2 with:
                     gas gas_remaining wei
                    args msg.sender, address(arg1), Array(len=arg3.length, data=call.data[arg3 + 36 len floor32(arg3.length)], mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + floor32(arg3.length) + 388 len (32 * arg3.length) + (32 * arg4.length) + arg5.length + -floor32(arg3.length) + 64]), (32 * arg3.length) + 192, (32 * arg4.length) + (32 * arg3.length) + 224
            else:
                mem[floor32(arg5.length) + (64 * arg4.length) + (64 * arg3.length) + ceil32(arg5.length) + 452] = mem[floor32(arg5.length) + (64 * arg4.length) + (64 * arg3.length) + ceil32(arg5.length) + -(arg5.length % 32) + 484 len arg5.length % 32]
                require ext_code.size(arg2)
                call arg2 with:
                     gas gas_remaining wei
                    args msg.sender, address(arg1), Array(len=arg3.length, data=call.data[arg3 + 36 len floor32(arg3.length)], mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + floor32(arg3.length) + 388 len (32 * arg3.length) + (32 * arg4.length) + floor32(arg5.length) + -floor32(arg3.length) + 96]), (32 * arg3.length) + 192, (32 * arg4.length) + (32 * arg3.length) + 224
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if Mask(32, 224, ext_call.return_data[0]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                revert with 0, 'ERC1155#_callonERC1155BatchReceived: INVALID_ON_RECEIVE_MESSAGE'
}



}
