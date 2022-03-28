contract main {




// =====================  Runtime code  =====================


address bridgeAddress;
mapping of uint8 stor1;
address owner;
array of struct tokenURIPrefix;
array of struct stor4;
array of uint256 contractURI;
mapping of uint256 balanceOf;
mapping of uint8 stor7;
mapping of address creators;
array of struct fees;
array of uint256 name;
array of uint256 symbol;

function balanceOf(address arg1, uint256 arg2) {
    return balanceOf[arg2][address(arg1)]
}

function supportsInterface(bytes4 arg1) {
    return bool(stor1[Mask(32, 224, arg1)])
}

function name() {
    return name[0 len name.length]
}

function fees(uint256 arg1, uint256 arg2) {
    require arg2 < fees[arg1].field_0
    return fees[arg1][arg2].field_0, fees[arg1][arg2].field_256
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function tokenURIPrefix() {
    return tokenURIPrefix[0 len tokenURIPrefix.length].field_0
}

function creators(uint256 arg1) {
    return address(creators[arg1])
}

function bridge() {
    return bridgeAddress
}

function contractURI() {
    return contractURI[0 len contractURI.length]
}

function isApprovedForAll(address arg1, address arg2) {
    return bool(stor7[address(arg1)][address(arg2)])
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function transferBridgeRole(address arg1) {
    require msg.sender == bridgeAddress
    if arg1:
        bridgeAddress = arg1
}

function setContractURI(string arg1) {
    require msg.sender == owner
    contractURI[] = Array(len=arg1.length, data=arg1[all])
}

function setTokenURIPrefix(string arg1) {
    require msg.sender == owner
    tokenURIPrefix[].field_0 = Array(len=arg1.length, data=arg1[all])
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setApprovalForAll(address arg1, bool arg2) {
    stor7[msg.sender][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function burn(uint256 arg1) {
    require msg.sender == bridgeAddress
    require 1 <= balanceOf[arg1][msg.sender]
    balanceOf[arg1][address(msg.sender)] = balanceOf[arg1][msg.sender] - 1
    emit TransferSingle(arg1, 1, msg.sender, msg.sender, 0);
}

function burn(address arg1, uint256 arg2, uint256 arg3) {
    if arg1 != msg.sender:
        if bool(stor7[address(arg1)][msg.sender]) != 1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Need operator approval for 3rd party burns.'
    require arg3 <= balanceOf[arg2][address(arg1)]
    balanceOf[arg2][address(arg1)] -= arg3
    emit TransferSingle(arg2, arg3, msg.sender, arg1, 0);
}

function balanceOfBatch(address[] arg1, uint256[] arg2) {
    require arg2.length == arg1.length
    if arg1.length:
        mem[128 len 32 * arg1.length] = code.data[8515 len 32 * arg1.length]
    idx = 0
    while idx < arg1.length:
        require idx < arg2.length
        require idx < arg1.length
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = sha3(cd[((32 * idx) + arg2 + 36)], 6)
        require idx < arg1.length
        mem[(32 * idx) + 128] = balanceOf[cd[((32 * idx) + arg2 + 36)]][address(cd[((32 * idx) + arg1 + 36)])]
        idx = idx + 1
        continue 
    mem[(32 * arg1.length) + 192 len floor32(arg1.length)] = mem[128 len floor32(arg1.length)]
    return Array(len=arg1.length, data=mem[128 len floor32(arg1.length)], mem[(32 * arg1.length) + floor32(arg1.length) + 192 len (32 * arg1.length) - floor32(arg1.length)]), 
}

function mint(uint256 arg1, address arg2) {
    require msg.sender == bridgeAddress
    mem[128] = 'ipfs://ipfs/QmSZWnXzEqsAgFf22Kji'
    mem[160] = 'ZokS9nbGDDhWSNHPRyZaUQY5to'
    if address(creators[arg1]):
        revert with 0, 'Token is already minted'
    uint256(creators[arg1]) = msg.sender or Mask(96, 160, uint256(creators[arg1]))
    balanceOf[arg1][msg.sender] = 1
    if not address(creators[arg1]):
        revert with 0, '_setTokenURI: Token should exist'
    stor4[arg1].field_0 = 117
    s = 0
    idx = 128
    while 186 > idx:
        stor4[arg1][s].field_0 = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 2
    while stor4[arg1].length + 31 / 32 > idx:
        stor4[arg1][idx].field_0 = 0
        idx = idx + 1
        continue 
    emit TransferSingle(arg1, 1, msg.sender, 0, msg.sender);
    emit URI(Array(len=58, data='ipfs://ipfs/QmSZWnXzEqsAgFf22Kji', 'ZokS9nbGDDhWSNHPRyZaUQY5to', Mask(208, -256, 'ipfs://ipfs/QmSZWnXzEqsAgFf22Kji', 'ZokS9nbGDDhWSNHPRyZaUQY5to') << 256), arg1);
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) {
    if not arg2:
        revert with 0, '_to must be non-zero.'
    if arg1 != msg.sender:
        if bool(stor7[address(arg1)][msg.sender]) != 1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Need operator approval for 3rd party transfers.'
    require arg4 <= balanceOf[arg3][address(arg1)]
    balanceOf[arg3][address(arg1)] -= arg4
    require balanceOf[arg3][arg2] + arg4 >= arg4
    balanceOf[arg3][address(arg2)] = balanceOf[arg3][arg2] + arg4
    emit TransferSingle(arg3, arg4, msg.sender, arg1, arg2);
    if ext_code.size(arg2) > 0:
        require ext_code.size(arg2)
        call arg2.onERC1155Received(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
             gas gas_remaining wei
            args msg.sender, address(arg1), arg3, arg4, Array(len=arg5.length, data=arg5[all])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
            revert with 0, 'contract returned an unknown value from onERC1155Received'
}

function getFeeBps(uint256 arg1) {
    mem[0] = arg1
    mem[32] = 9
    mem[64] = (32 * fees[arg1].field_0) + 128
    mem[96] = fees[arg1].field_0
    s = 128
    idx = 0
    while idx < fees[arg1].field_0:
        mem[0] = sha3(arg1, 9)
        _30 = mem[64]
        mem[64] = mem[64] + 64
        mem[_30] = fees[arg1][idx].field_0
        mem[_30 + 32] = fees[arg1][idx].field_256
        mem[s] = _30
        s = s + 32
        idx = idx + 1
        continue 
    _27 = mem[96]
    _28 = mem[64]
    mem[mem[64]] = mem[96]
    mem[64] = mem[64] + (32 * _27) + 32
    if not _27:
        _51 = mem[96]
        idx = 0
        while idx < _51:
            require idx < mem[96]
            require idx < mem[_28]
            mem[_28 + (32 * idx) + 32] = mem[mem[(32 * idx) + 128] + 32]
            _51 = mem[96]
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        mem[mem[64] + 32] = mem[_28]
        _57 = mem[_28]
        mem[mem[64] + 64 len floor32(mem[_28])] = mem[_28 + 32 len floor32(mem[_28])]
        return 32, mem[mem[64] + 32 len (32 * _57) + 32]
    mem[_28 + 32 len 32 * _27] = code.data[8515 len 32 * _27]
    _52 = mem[96]
    idx = 0
    while idx < _52:
        require idx < mem[96]
        require idx < mem[_28]
        mem[_28 + (32 * idx) + 32] = mem[mem[(32 * idx) + 128] + 32]
        _52 = mem[96]
        idx = idx + 1
        continue 
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[_28]
    _63 = mem[_28]
    mem[mem[64] + 64 len floor32(mem[_28])] = mem[_28 + 32 len floor32(mem[_28])]
    return 32, mem[mem[64] + 32 len (32 * _63) + 32]
}

function getFeeRecipients(uint256 arg1) {
    mem[0] = arg1
    mem[32] = 9
    mem[64] = (32 * fees[arg1].field_0) + 128
    mem[96] = fees[arg1].field_0
    s = 128
    idx = 0
    while idx < fees[arg1].field_0:
        mem[0] = sha3(arg1, 9)
        _30 = mem[64]
        mem[64] = mem[64] + 64
        mem[_30] = fees[arg1][idx].field_0
        mem[_30 + 32] = fees[arg1][idx].field_256
        mem[s] = _30
        s = s + 32
        idx = idx + 1
        continue 
    _27 = mem[96]
    _28 = mem[64]
    mem[mem[64]] = mem[96]
    mem[64] = mem[64] + (32 * _27) + 32
    if not _27:
        _51 = mem[96]
        idx = 0
        while idx < _51:
            require idx < mem[96]
            require idx < mem[_28]
            mem[_28 + (32 * idx) + 32] = mem[mem[(32 * idx) + 128] + 12 len 20]
            _51 = mem[96]
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        mem[mem[64] + 32] = mem[_28]
        _57 = mem[_28]
        mem[mem[64] + 64 len floor32(mem[_28])] = mem[_28 + 32 len floor32(mem[_28])]
        return 32, mem[mem[64] + 32 len (32 * _57) + 32]
    mem[_28 + 32 len 32 * _27] = code.data[8515 len 32 * _27]
    _52 = mem[96]
    idx = 0
    while idx < _52:
        require idx < mem[96]
        require idx < mem[_28]
        mem[_28 + (32 * idx) + 32] = mem[mem[(32 * idx) + 128] + 12 len 20]
        _52 = mem[96]
        idx = idx + 1
        continue 
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[_28]
    _63 = mem[_28]
    mem[mem[64] + 64 len floor32(mem[_28])] = mem[_28 + 32 len floor32(mem[_28])]
    return 32, mem[mem[64] + 32 len (32 * _63) + 32]
}

function uri(uint256 arg1) {
    mem[128] = stor4[arg1].field_0
    idx = 128
    s = 0
    while stor4[arg1].length + 96 > idx:
        mem[idx + 32] = stor4[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(stor4[arg1].length) + 128] = tokenURIPrefix.length
    mem[ceil32(stor4[arg1].length) + 160] = uint256(tokenURIPrefix.field_0)
    idx = ceil32(stor4[arg1].length) + 160
    s = 0
    while ceil32(stor4[arg1].length) + tokenURIPrefix.length + 128 > idx:
        mem[idx + 32] = tokenURIPrefix[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(stor4[arg1].length) + ceil32(tokenURIPrefix.length) + 160] = tokenURIPrefix.length + stor4[arg1].length
    if tokenURIPrefix.length + stor4[arg1].length:
        mem[ceil32(stor4[arg1].length) + ceil32(tokenURIPrefix.length) + 192 len 32 * tokenURIPrefix.length + stor4[arg1].length] = code.data[8515 len 32 * tokenURIPrefix.length + stor4[arg1].length]
    idx = 0
    s = 0
    while idx < tokenURIPrefix.length:
        require idx < tokenURIPrefix.length
        require s < tokenURIPrefix.length + stor4[arg1].length
        mem[ceil32(stor4[arg1].length) + ceil32(tokenURIPrefix.length) + s + 192 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 160, ('mask_shl', 251, 5, 0, ('add', 31, ('stor', ('length', ('map', ('param', 'arg1'), ('name', 'stor4', 4)))))), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 160, ('mask_shl', 251, 5, 0, ('add', 31, ('stor', ('length', ('map', ('param', 'arg1'), ('name', 'stor4', 4)))))), ('var', 0)), 32))), 0) - 256
        idx = idx + 1
        s = s + 1
        continue 
    idx = 0
    s = tokenURIPrefix.length
    while idx < stor4[arg1].length:
        require idx < stor4[arg1].length
        require s < tokenURIPrefix.length + stor4[arg1].length
        mem[ceil32(stor4[arg1].length) + ceil32(tokenURIPrefix.length) + s + 192 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
        idx = idx + 1
        s = s + 1
        continue 
    mem[ceil32(stor4[arg1].length) + ceil32(tokenURIPrefix.length) + floor32(tokenURIPrefix.length + stor4[arg1].length + 31) + 256 len floor32(tokenURIPrefix.length + stor4[arg1].length + 31)] = mem[ceil32(stor4[arg1].length) + ceil32(tokenURIPrefix.length) + 192 len floor32(tokenURIPrefix.length + stor4[arg1].length + 31)]
    return Array(len=tokenURIPrefix.length + stor4[arg1].length, data=mem[ceil32(stor4[arg1].length) + ceil32(tokenURIPrefix.length) + floor32(tokenURIPrefix.length + stor4[arg1].length + 31) + 256 len tokenURIPrefix.length + stor4[arg1].length]), 
}

function tokenURI(uint256 arg1) {
    mem[128] = stor4[arg1].field_0
    idx = 128
    s = 0
    while stor4[arg1].length + 96 > idx:
        mem[idx + 32] = stor4[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(stor4[arg1].length) + 128] = tokenURIPrefix.length
    mem[ceil32(stor4[arg1].length) + 160] = uint256(tokenURIPrefix.field_0)
    idx = ceil32(stor4[arg1].length) + 160
    s = 0
    while ceil32(stor4[arg1].length) + tokenURIPrefix.length + 128 > idx:
        mem[idx + 32] = tokenURIPrefix[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(stor4[arg1].length) + ceil32(tokenURIPrefix.length) + 160] = tokenURIPrefix.length + stor4[arg1].length
    if tokenURIPrefix.length + stor4[arg1].length:
        mem[ceil32(stor4[arg1].length) + ceil32(tokenURIPrefix.length) + 192 len 32 * tokenURIPrefix.length + stor4[arg1].length] = code.data[8515 len 32 * tokenURIPrefix.length + stor4[arg1].length]
    idx = 0
    s = 0
    while idx < tokenURIPrefix.length:
        require idx < tokenURIPrefix.length
        require s < tokenURIPrefix.length + stor4[arg1].length
        mem[ceil32(stor4[arg1].length) + ceil32(tokenURIPrefix.length) + s + 192 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 160, ('mask_shl', 251, 5, 0, ('add', 31, ('stor', ('length', ('map', ('param', 'arg1'), ('name', 'stor4', 4)))))), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 160, ('mask_shl', 251, 5, 0, ('add', 31, ('stor', ('length', ('map', ('param', 'arg1'), ('name', 'stor4', 4)))))), ('var', 0)), 32))), 0) - 256
        idx = idx + 1
        s = s + 1
        continue 
    idx = 0
    s = tokenURIPrefix.length
    while idx < stor4[arg1].length:
        require idx < stor4[arg1].length
        require s < tokenURIPrefix.length + stor4[arg1].length
        mem[ceil32(stor4[arg1].length) + ceil32(tokenURIPrefix.length) + s + 192 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
        idx = idx + 1
        s = s + 1
        continue 
    mem[ceil32(stor4[arg1].length) + ceil32(tokenURIPrefix.length) + floor32(tokenURIPrefix.length + stor4[arg1].length + 31) + 256 len floor32(tokenURIPrefix.length + stor4[arg1].length + 31)] = mem[ceil32(stor4[arg1].length) + ceil32(tokenURIPrefix.length) + 192 len floor32(tokenURIPrefix.length + stor4[arg1].length + 31)]
    return Array(len=tokenURIPrefix.length + stor4[arg1].length, data=mem[ceil32(stor4[arg1].length) + ceil32(tokenURIPrefix.length) + floor32(tokenURIPrefix.length + stor4[arg1].length + 31) + 256 len tokenURIPrefix.length + stor4[arg1].length]), 
}

function safeBatchTransferFrom(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) {
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'destination address must be non-zero.'
    if arg4.length != arg3.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, '_ids and _values array lenght must match.'
    if arg1 != msg.sender:
        if bool(stor7[address(arg1)][msg.sender]) != 1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Need operator approval for 3rd party transfers.'
    s = 0
    s = 0
    idx = 0
    while idx < arg3.length:
        require idx < arg4.length
        require cd[((32 * idx) + arg4 + 36)] <= balanceOf[cd[((32 * idx) + arg3 + 36)]][address(arg1)]
        balanceOf[cd[((32 * idx) + arg3 + 36)]][address(arg1)] -= cd[((32 * idx) + arg4 + 36)]
        require balanceOf[cd[((32 * idx) + arg3 + 36)]][address(arg2)] + cd[((32 * idx) + arg4 + 36)] >= cd[((32 * idx) + arg4 + 36)]
        mem[0] = arg2
        mem[32] = sha3(cd[((32 * idx) + arg3 + 36)], 6)
        balanceOf[cd[((32 * idx) + arg3 + 36)]][address(arg2)] += cd[((32 * idx) + arg4 + 36)]
        s = cd[((32 * idx) + arg4 + 36)]
        s = cd[((32 * idx) + arg3 + 36)]
        idx = idx + 1
        continue 
    mem[(32 * arg3.length) + 192] = arg4.length
    mem[(32 * arg3.length) + 224 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    emit TransferBatch(Array(len=arg3.length, data=call.data[arg3 + 36 len 32 * arg3.length], arg4.length, call.data[arg4 + 36 len 32 * arg4.length]), (32 * arg3.length) + 96, msg.sender, arg1, arg2);
    if ext_code.size(arg2) > 0:
        mem[(32 * arg3.length) + (32 * arg4.length) + 192 len arg5.length] = arg5[all]
        mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + 192] = 0xbc197c8100000000000000000000000000000000000000000000000000000000
        mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + 388 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
        mem[(64 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + 388] = arg4.length
        mem[(64 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + 420 len floor32(arg4.length)] = call.data[arg4 + 36 len floor32(arg4.length)]
        mem[(64 * arg4.length) + (64 * arg3.length) + ceil32(arg5.length) + 420] = arg5.length
        mem[(64 * arg4.length) + (64 * arg3.length) + ceil32(arg5.length) + 452 len ceil32(arg5.length)] = arg5[all], mem[(32 * arg3.length) + (32 * arg4.length) + arg5.length + 192 len ceil32(arg5.length) - arg5.length]
        if not arg5.length % 32:
            require ext_code.size(arg2)
            call arg2.onERC1155BatchReceived(address rg1, address rg2, uint256[] rg3, uint256[] rg4, bytes rg5) with:
                 gas gas_remaining wei
                args msg.sender, address(arg1), Array(len=arg3.length, data=call.data[arg3 + 36 len floor32(arg3.length)], mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + floor32(arg3.length) + 388 len (32 * arg3.length) + (32 * arg4.length) + arg5.length + -floor32(arg3.length) + 64]), (32 * arg3.length) + 192, (32 * arg4.length) + (32 * arg3.length) + 224
        else:
            mem[floor32(arg5.length) + (64 * arg4.length) + (64 * arg3.length) + ceil32(arg5.length) + 452] = mem[floor32(arg5.length) + (64 * arg4.length) + (64 * arg3.length) + ceil32(arg5.length) + -(arg5.length % 32) + 484 len arg5.length % 32]
            require ext_code.size(arg2)
            call arg2.onERC1155BatchReceived(address rg1, address rg2, uint256[] rg3, uint256[] rg4, bytes rg5) with:
                 gas gas_remaining wei
                args msg.sender, address(arg1), Array(len=arg3.length, data=call.data[arg3 + 36 len floor32(arg3.length)], mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + floor32(arg3.length) + 388 len (32 * arg3.length) + (32 * arg4.length) + floor32(arg5.length) + -floor32(arg3.length) + 96]), (32 * arg3.length) + 192, (32 * arg4.length) + (32 * arg3.length) + 224
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if Mask(32, 224, ext_call.return_data[0]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
            revert with 0, 'contract returned an unknown value from onERC1155BatchReceived'
}



}
