contract main {




// =====================  Runtime code  =====================


mapping of uint8 stor0;
address owner;
mapping of uint8 stor2;
array of struct tokenURIPrefix;
array of struct stor4;
array of uint256 contractURI;
mapping of uint256 balanceOf;
mapping of uint8 stor7;
mapping of address creators;
array of struct fees;
array of uint256 name;
array of uint256 symbol;

function balanceOf(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return balanceOf[arg2][address(arg1)]
}

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    return bool(stor0[Mask(32, 224, arg1)])
}

function name() payable {
    return name[0 len name.length]
}

function fees(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require arg2 < fees[arg1].field_0
    return fees[arg1][arg2].field_0, fees[arg1][arg2].field_256
}

function isSigner(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roles: account is the zero address'
    return bool(stor2[address(arg1)])
}

function owner() payable {
    return owner
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function tokenURIPrefix() payable {
    return tokenURIPrefix[0 len tokenURIPrefix.length].field_0
}

function creators(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return creators[arg1]
}

function contractURI() payable {
    return contractURI[0 len contractURI.length]
}

function isApprovedForAll(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor7[address(arg1)][address(arg2)])
}

function _fallback() payable {
    revert
}

function isOwner() payable {
    return (msg.sender == owner)
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setApprovalForAll(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    stor7[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function renounceSigner() payable {
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roles: account is the zero address'
    if not stor2[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roles: account does not have role'
    stor2[address(msg.sender)] = 0
    emit SignerRemoved(msg.sender);
}

function addSigner(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roles: account is the zero address'
    if stor2[address(arg1)]:
        revert with 0, 'Roles: account already has role'
    stor2[address(arg1)] = 1
}

function setContractURI(string arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require ceil32(arg1.length) + 128 <= test266151307() and ceil32(arg1.length) + 128 >= 96
    require arg1 + arg1.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    contractURI[] = Array(len=arg1.length, data=arg1[all])
}

function setTokenURIPrefix(string arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require ceil32(arg1.length) + 128 <= test266151307() and ceil32(arg1.length) + 128 >= 96
    require arg1 + arg1.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    tokenURIPrefix[].field_0 = Array(len=arg1.length, data=arg1[all])
}

function removeSigner(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roles: account is the zero address'
    if not stor2[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roles: account does not have role'
    stor2[address(arg1)] = 0
    emit SignerRemoved(arg1);
}

function burn(address arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if arg1 != msg.sender:
        if bool(stor7[address(arg1)][address(msg.sender)]) != 1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Need operator approva for 3rd party burns'
    require arg3 <= balanceOf[arg2][address(arg1)]
    balanceOf[arg2][address(arg1)] -= arg3
    emit TransferSingle(arg2, arg3, msg.sender, arg1, 0);
}

function balanceOfBatch(address[] arg1, uint256[] arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    if arg1.length != arg2.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, '_owners and _ids array length must match'
    if arg1.length:
        mem[128 len 32 * arg1.length] = code.data[18116 len 32 * arg1.length]
    idx = 0
    while idx < arg1.length:
        require idx < arg2.length
        require idx < arg1.length
        require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = sha3(cd[((32 * idx) + arg2 + 36)], 6)
        require idx < arg1.length
        mem[(32 * idx) + 128] = balanceOf[cd[((32 * idx) + arg2 + 36)]][address(cd[((32 * idx) + arg1 + 36)])]
        idx = idx + 1
        continue 
    return Array(len=arg1.length, data=mem[128 len 32 * arg1.length])
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    require arg5.length <= test266151307()
    require arg5 + arg5.length + 36 <= calldata.size
    if not arg2:
        revert with 0, 'Address: _to must be non-zero'
    if arg1 != msg.sender:
        if bool(stor7[address(arg1)][address(msg.sender)]) != 1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'Approval: need operator approval for 3rd party transfers'
    require arg4 <= balanceOf[arg3][address(arg1)]
    balanceOf[arg3][address(arg1)] -= arg4
    require arg4 + balanceOf[arg3][address(arg2)] >= arg4
    balanceOf[arg3][address(arg2)] += arg4
    emit TransferSingle(arg3, arg4, msg.sender, arg1, arg2);
    if ext_code.size(arg2) <= 0:
    require ext_code.size(arg2)
    call arg2 with:
         gas gas_remaining wei
        args msg.sender, address(arg1), arg3, arg4, Array(len=arg5.length, data=arg5[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require not 0, ext_call.return_data[4 len 28]
    revert with 0, 'contract returned an unknown value from onERC1155Received'
}

function getFeeBps(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[0] = arg1
    mem[32] = 9
    mem[64] = (32 * fees[arg1].field_0) + 128
    mem[96] = fees[arg1].field_0
    s = 128
    idx = 0
    while idx < fees[arg1].field_0:
        mem[0] = sha3(arg1, 9)
        _28 = mem[64]
        mem[64] = mem[64] + 64
        mem[_28] = fees[arg1][idx].field_0
        mem[_28 + 32] = fees[arg1][idx].field_256
        mem[s] = _28
        s = s + 32
        idx = idx + 1
        continue 
    _25 = mem[96]
    _26 = mem[64]
    mem[mem[64]] = mem[96]
    mem[64] = mem[64] + (32 * _25) + 32
    if not _25:
        _47 = mem[96]
        idx = 0
        while idx < _47:
            require idx < mem[96]
            require idx < mem[_26]
            mem[(32 * idx) + _26 + 32] = mem[mem[(32 * idx) + 128] + 32]
            _47 = mem[96]
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        _59 = mem[_26]
        mem[mem[64] + 32] = mem[_26]
        mem[mem[64] + 64 len 32 * _59] = mem[_26 + 32 len 32 * _59]
        return 32, mem[mem[64] + 32 len (32 * _59) + 32]
    mem[_26 + 32 len 32 * _25] = code.data[18116 len 32 * _25]
    _48 = mem[96]
    idx = 0
    while idx < _48:
        require idx < mem[96]
        require idx < mem[_26]
        mem[(32 * idx) + _26 + 32] = mem[mem[(32 * idx) + 128] + 32]
        _48 = mem[96]
        idx = idx + 1
        continue 
    mem[mem[64]] = 32
    _60 = mem[_26]
    mem[mem[64] + 32] = mem[_26]
    mem[mem[64] + 64 len 32 * _60] = mem[_26 + 32 len 32 * _60]
    return 32, mem[mem[64] + 32 len (32 * _60) + 32]
}

function uri(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    idx = 128
    s = 0
    while stor4[arg1].length + 96 > idx:
        mem[idx + 32] = stor4[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    idx = ceil32(stor4[arg1].length) + 160
    s = 0
    while ceil32(stor4[arg1].length) + tokenURIPrefix.length + 128 > idx:
        mem[idx + 32] = tokenURIPrefix[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if tokenURIPrefix.length + stor4[arg1].length:
        mem[ceil32(stor4[arg1].length) + ceil32(tokenURIPrefix.length) + 192 len tokenURIPrefix.length + stor4[arg1].length] = code.data[18116 len tokenURIPrefix.length + stor4[arg1].length]
    idx = 0
    s = 0
    while idx < tokenURIPrefix.length:
        require idx < tokenURIPrefix.length
        require s < tokenURIPrefix.length + stor4[arg1].length
        mem[s + ceil32(stor4[arg1].length) + ceil32(tokenURIPrefix.length) + 192 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        idx = idx + 1
        s = s + 1
        continue 
    idx = 0
    s = tokenURIPrefix.length
    while idx < stor4[arg1].length:
        require idx < stor4[arg1].length
        require s < tokenURIPrefix.length + stor4[arg1].length
        mem[s + ceil32(stor4[arg1].length) + ceil32(tokenURIPrefix.length) + 192 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        idx = idx + 1
        s = s + 1
        continue 
    return Array(len=tokenURIPrefix.length + stor4[arg1].length, data=mem[ceil32(stor4[arg1].length) + ceil32(tokenURIPrefix.length) + 192 len floor32(tokenURIPrefix.length + stor4[arg1].length + 31)]), 
}

function getFeeRecipients(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[0] = arg1
    mem[32] = 9
    mem[64] = (32 * fees[arg1].field_0) + 128
    mem[96] = fees[arg1].field_0
    s = 128
    idx = 0
    while idx < fees[arg1].field_0:
        mem[0] = sha3(arg1, 9)
        _28 = mem[64]
        mem[64] = mem[64] + 64
        mem[_28] = fees[arg1][idx].field_0
        mem[_28 + 32] = fees[arg1][idx].field_256
        mem[s] = _28
        s = s + 32
        idx = idx + 1
        continue 
    _25 = mem[96]
    _26 = mem[64]
    mem[mem[64]] = mem[96]
    mem[64] = mem[64] + (32 * _25) + 32
    if not _25:
        _47 = mem[96]
        idx = 0
        while idx < _47:
            require idx < mem[96]
            require idx < mem[_26]
            mem[(32 * idx) + _26 + 32] = mem[mem[(32 * idx) + 128] + 12 len 20]
            _47 = mem[96]
            idx = idx + 1
            continue 
        _51 = mem[64]
        mem[mem[64]] = 32
        _59 = mem[_26]
        mem[mem[64] + 32] = mem[_26]
        idx = 0
        s = _26 + 32
        t = mem[64] + 64
        while idx < _59:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _51 + (32 * _59) + -mem[64] + 64
    mem[_26 + 32 len 32 * _25] = code.data[18116 len 32 * _25]
    _48 = mem[96]
    idx = 0
    while idx < _48:
        require idx < mem[96]
        require idx < mem[_26]
        mem[(32 * idx) + _26 + 32] = mem[mem[(32 * idx) + 128] + 12 len 20]
        _48 = mem[96]
        idx = idx + 1
        continue 
    _55 = mem[64]
    mem[mem[64]] = 32
    _60 = mem[_26]
    mem[mem[64] + 32] = mem[_26]
    idx = 0
    s = _26 + 32
    t = mem[64] + 64
    while idx < _60:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len _55 + (32 * _60) + -mem[64] + 64
}

function safeBatchTransferFrom(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + (32 * arg3.length) + 36 <= calldata.size
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + (32 * arg4.length) + 36 <= calldata.size
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    require arg5.length <= test266151307()
    require arg5 + arg5.length + 36 <= calldata.size
    if not arg2:
        revert with 0, 'Address: _to must be non-zero'
    if arg3.length != arg4.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, '_ids and _values array length must match'
    if arg1 != msg.sender:
        if bool(stor7[address(arg1)][address(msg.sender)]) != 1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'Approval: need operator approval for 3rd party transfers'
    idx = 0
    while idx < arg3.length:
        require idx < arg4.length
        require cd[((32 * idx) + arg4 + 36)] <= balanceOf[cd[((32 * idx) + arg3 + 36)]][address(arg1)]
        balanceOf[cd[((32 * idx) + arg3 + 36)]][address(arg1)] -= cd[((32 * idx) + arg4 + 36)]
        require cd[((32 * idx) + arg4 + 36)] + balanceOf[cd[((32 * idx) + arg3 + 36)]][address(arg2)] >= cd[((32 * idx) + arg4 + 36)]
        mem[0] = arg2
        mem[32] = sha3(cd[((32 * idx) + arg3 + 36)], 6)
        balanceOf[cd[((32 * idx) + arg3 + 36)]][address(arg2)] += cd[((32 * idx) + arg4 + 36)]
        idx = idx + 1
        continue 
    require arg3.length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
    mem[(32 * arg3.length) + 192] = arg4.length
    require arg4.length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
    mem[(32 * arg3.length) + 224 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    mem[(32 * arg3.length) + (32 * arg4.length) + 224] = 0
    emit TransferBatch(Array(len=arg3.length, data=call.data[arg3 + 36 len 32 * arg3.length], arg4.length, call.data[arg4 + 36 len 32 * arg4.length]), (32 * arg3.length) + 96, msg.sender, arg1, arg2);
    if ext_code.size(arg2) <= 0:
    mem[(32 * arg3.length) + (32 * arg4.length) + 192 len arg5.length] = arg5[all]
    mem[(32 * arg3.length) + (32 * arg4.length) + arg5.length + 192] = 0
    mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + 192] = 0xbc197c8100000000000000000000000000000000000000000000000000000000
    mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + 196] = msg.sender
    mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + 228] = arg1
    mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + 260] = 160
    mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + 356] = arg3.length
    mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + 388 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + 292] = (96 * arg3.length) + 192
    mem[(64 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + 388] = arg4.length
    mem[(64 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + 420 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + 324] = (96 * arg3.length) + (32 * arg4.length) + 224
    mem[(64 * arg3.length) + (64 * arg4.length) + ceil32(arg5.length) + 420] = arg5.length
    mem[(64 * arg3.length) + (64 * arg4.length) + ceil32(arg5.length) + 452 len ceil32(arg5.length)] = arg5[all], mem[(32 * arg3.length) + (32 * arg4.length) + arg5.length + 192 len ceil32(arg5.length) - arg5.length]
    if ceil32(arg5.length) > arg5.length:
        mem[(64 * arg3.length) + (64 * arg4.length) + ceil32(arg5.length) + arg5.length + 452] = 0
    require ext_code.size(arg2)
    call arg2 with:
         gas gas_remaining wei
        args mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + 196 len (96 * arg3.length) + (96 * arg4.length) + ceil32(arg5.length) + 256]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require not 0, ext_call.return_data[4 len 28]
    revert with 0, 'contract returned an unknown value from onERC1155BatchReceived'
}

function mint(uint256 arg1, address arg2, uint256[] arg3, uint256 arg4, string arg5) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require (32 * arg2.length) + 128 <= test266151307() and (32 * arg2.length) + 128 >= 96
    mem[64] = (32 * arg2.length) + 128
    mem[96] = arg2.length
    require arg2 + (64 * arg2.length) + 36 <= calldata.size
    idx = 0
    s = arg2 + 36
    t = 128
    while idx < arg2.length:
        require calldata.size - s >= 64
        _395 = mem[64]
        require mem[64] + 64 <= test266151307() and mem[64] + 64 >= mem[64]
        mem[64] = mem[64] + 64
        require cd[s] == address(cd[s])
        mem[_395] = cd[s]
        require cd[(s + 32)] == cd[(s + 32)]
        mem[_395 + 32] = cd[(s + 32)]
        mem[t] = _395
        idx = idx + 1
        s = s + 64
        t = t + 32
        continue 
    require arg3 == arg3
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    _396 = mem[64]
    require mem[64] + ceil32(arg4.length) + 32 <= test266151307() and mem[64] + ceil32(arg4.length) + 32 >= mem[64]
    mem[64] = mem[64] + ceil32(arg4.length) + 32
    mem[_396] = arg4.length
    require arg4 + arg4.length + 36 <= calldata.size
    mem[_396 + 32 len arg4.length] = arg4[all]
    mem[_396 + arg4.length + 32] = 0
    if creators[arg1]:
        revert with 0, 'Token is already minted'
    if not arg3:
        revert with 0, 'Supply should be positive'
    if arg4.length <= 0:
        revert with 0, 'uri should be set'
    mem[0] = arg1
    mem[32] = 8
    creators[arg1] = msg.sender
    _402 = mem[96]
    _403 = mem[64]
    mem[mem[64]] = mem[96]
    if not _402:
        mem[mem[64] + (32 * _402) + 32] = mem[96]
        mem[64] = mem[64] + (32 * _402) + (32 * mem[96]) + 64
        if not mem[96]:
            _788 = mem[96]
            idx = 0
            while idx < _788:
                require idx < mem[96]
                if not mem[mem[(32 * idx) + 128] + 12 len 20]:
                    revert with 0, 'Recipient should be present'
                require idx < mem[96]
                if not mem[mem[(32 * idx) + 128] + 32]:
                    revert with 0, 'Fee value should be positive'
                mem[32] = 9
                require idx < mem[96]
                fees[arg1].field_0++
                mem[0] = sha3(arg1, 9)
                fees[arg1][fees[arg1].field_0].field_0 = mem[mem[(32 * idx) + 128] + 12 len 20]
                fees[arg1][fees[arg1].field_0].field_256 = mem[mem[(32 * idx) + 128] + 32]
                require idx < mem[96]
                require idx < mem[_403]
                mem[(32 * idx) + _403 + 32] = mem[mem[(32 * idx) + 128] + 12 len 20]
                require idx < mem[96]
                require idx < mem[_403 + (32 * _402) + 32]
                mem[(32 * idx) + _403 + (32 * _402) + 64] = mem[mem[(32 * idx) + 128] + 32]
                _788 = mem[96]
                idx = idx + 1
                continue 
            if mem[96] <= 0:
                balanceOf[arg1][address(msg.sender)] = arg3
                if not creators[arg1]:
                    revert with 0, 'setTokenURI:Token should exist'
                mem[0] = arg1
                mem[32] = 4
                _845 = mem[_396]
                mem[0] = sha3(arg1, 4)
                stor4[arg1][].field_0 = Array(len=_845, data=mem[_396 + 32 len _845])
                mem[mem[64] + 32] = arg3
                emit TransferSingle(arg1, arg3, msg.sender, 0, msg.sender);
                _1469 = mem[64]
                mem[mem[64]] = 32
                _1484 = mem[_396]
                mem[mem[64] + 32] = mem[_396]
                mem[mem[64] + 64 len ceil32(_1484)] = mem[_396 + 32 len ceil32(_1484)]
                var95001 = ceil32(_1484)
                if ceil32(_1484) <= _1484:
                    emit URI(string rg1, uint256 rg2):
                             32,
                             mem[mem[64] + 32 len ceil32(_1484) + 32],
                             arg1,
                else:
                    mem[mem[64] + _1484 + 64] = 0
                    emit URI(mem[mem[64] len _1469 + ceil32(_1484) + -mem[64] + 64], arg1);
            else:
                _802 = mem[64]
                mem[mem[64]] = arg1
                mem[mem[64] + 32] = 96
                _908 = mem[_403]
                mem[mem[64] + 96] = mem[_403]
                idx = 0
                s = _403 + 32
                t = mem[64] + 128
                while idx < _908:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_802 + 64] = (32 * _908) + 128
                _1172 = mem[_403 + (32 * _402) + 32]
                mem[_802 + (32 * _908) + 128] = mem[_403 + (32 * _402) + 32]
                mem[_802 + (32 * _908) + 160 len 32 * _1172] = mem[_403 + (32 * _402) + 64 len 32 * _1172]
                emit SecondarySaleFees(uint256 rg1, address[] rg2, uint256[] rg3):
                                       mem[mem[64] len _802 + (32 * _908) + (32 * _1172) + -mem[64] + 160],
                balanceOf[arg1][address(msg.sender)] = arg3
                if not creators[arg1]:
                    revert with 0, 'setTokenURI:Token should exist'
                mem[0] = arg1
                mem[32] = 4
                _1431 = mem[_396]
                mem[0] = sha3(arg1, 4)
                stor4[arg1][].field_0 = Array(len=_1431, data=mem[_396 + 32 len _1431])
                mem[mem[64] + 32] = arg3
                emit TransferSingle(arg1, arg3, msg.sender, 0, msg.sender);
                mem[mem[64]] = 32
                _1712 = mem[_396]
                mem[mem[64] + 32] = mem[_396]
                mem[mem[64] + 64 len ceil32(_1712)] = mem[_396 + 32 len ceil32(_1712)]
                if ceil32(_1712) > _1712:
                    mem[mem[64] + _1712 + 64] = 0
                emit URI(string rg1, uint256 rg2):
                         32,
                         mem[mem[64] + 32 len ceil32(_1712) + 32],
                         arg1,
        else:
            mem[_403 + (32 * _402) + 64 len 32 * mem[96]] = code.data[18116 len 32 * mem[96]]
            _789 = mem[96]
            idx = 0
            while idx < _789:
                require idx < mem[96]
                if not mem[mem[(32 * idx) + 128] + 12 len 20]:
                    revert with 0, 'Recipient should be present'
                require idx < mem[96]
                if not mem[mem[(32 * idx) + 128] + 32]:
                    revert with 0, 'Fee value should be positive'
                mem[32] = 9
                require idx < mem[96]
                fees[arg1].field_0++
                mem[0] = sha3(arg1, 9)
                fees[arg1][fees[arg1].field_0].field_0 = mem[mem[(32 * idx) + 128] + 12 len 20]
                fees[arg1][fees[arg1].field_0].field_256 = mem[mem[(32 * idx) + 128] + 32]
                require idx < mem[96]
                require idx < mem[_403]
                mem[(32 * idx) + _403 + 32] = mem[mem[(32 * idx) + 128] + 12 len 20]
                require idx < mem[96]
                require idx < mem[_403 + (32 * _402) + 32]
                mem[(32 * idx) + _403 + (32 * _402) + 64] = mem[mem[(32 * idx) + 128] + 32]
                _789 = mem[96]
                idx = idx + 1
                continue 
            if mem[96] <= 0:
                balanceOf[arg1][address(msg.sender)] = arg3
                if not creators[arg1]:
                    revert with 0, 'setTokenURI:Token should exist'
                mem[0] = arg1
                mem[32] = 4
                _850 = mem[_396]
                mem[0] = sha3(arg1, 4)
                stor4[arg1][].field_0 = Array(len=_850, data=mem[_396 + 32 len _850])
                mem[mem[64] + 32] = arg3
                emit TransferSingle(arg1, arg3, msg.sender, 0, msg.sender);
                _1471 = mem[64]
                mem[mem[64]] = 32
                _1485 = mem[_396]
                mem[mem[64] + 32] = mem[_396]
                mem[mem[64] + 64 len ceil32(_1485)] = mem[_396 + 32 len ceil32(_1485)]
                var96001 = ceil32(_1485)
                if ceil32(_1485) <= _1485:
                    emit URI(string rg1, uint256 rg2):
                             32,
                             mem[mem[64] + 32 len ceil32(_1485) + 32],
                             arg1,
                else:
                    mem[mem[64] + _1485 + 64] = 0
                    emit URI(mem[mem[64] len _1471 + ceil32(_1485) + -mem[64] + 64], arg1);
            else:
                _807 = mem[64]
                mem[mem[64]] = arg1
                mem[mem[64] + 32] = 96
                _913 = mem[_403]
                mem[mem[64] + 96] = mem[_403]
                idx = 0
                s = _403 + 32
                t = mem[64] + 128
                while idx < _913:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 64] = (32 * _913) + 128
                _1173 = mem[_403 + (32 * _402) + 32]
                mem[_807 + (32 * _913) + 128] = mem[_403 + (32 * _402) + 32]
                mem[_807 + (32 * _913) + 160 len 32 * _1173] = mem[_403 + (32 * _402) + 64 len 32 * _1173]
                emit SecondarySaleFees(uint256 rg1, address[] rg2, uint256[] rg3):
                                       mem[mem[64] len _807 + (32 * _913) + (32 * _1173) + -mem[64] + 160],
                balanceOf[arg1][address(msg.sender)] = arg3
                if not creators[arg1]:
                    revert with 0, 'setTokenURI:Token should exist'
                mem[0] = arg1
                mem[32] = 4
                _1435 = mem[_396]
                mem[0] = sha3(arg1, 4)
                stor4[arg1][].field_0 = Array(len=_1435, data=mem[_396 + 32 len _1435])
                mem[mem[64] + 32] = arg3
                emit TransferSingle(arg1, arg3, msg.sender, 0, msg.sender);
                mem[mem[64]] = 32
                _1713 = mem[_396]
                mem[mem[64] + 32] = mem[_396]
                mem[mem[64] + 64 len ceil32(_1713)] = mem[_396 + 32 len ceil32(_1713)]
                if ceil32(_1713) > _1713:
                    mem[mem[64] + _1713 + 64] = 0
                emit URI(string rg1, uint256 rg2):
                         32,
                         mem[mem[64] + 32 len ceil32(_1713) + 32],
                         arg1,
    else:
        mem[mem[64] + 32 len 32 * _402] = code.data[18116 len 32 * _402]
        mem[mem[64] + (32 * _402) + 32] = mem[96]
        mem[64] = mem[64] + (32 * _402) + (32 * mem[96]) + 64
        if not mem[96]:
            _790 = mem[96]
            idx = 0
            while idx < _790:
                require idx < mem[96]
                if not mem[mem[(32 * idx) + 128] + 12 len 20]:
                    revert with 0, 'Recipient should be present'
                require idx < mem[96]
                if not mem[mem[(32 * idx) + 128] + 32]:
                    revert with 0, 'Fee value should be positive'
                mem[32] = 9
                require idx < mem[96]
                fees[arg1].field_0++
                mem[0] = sha3(arg1, 9)
                fees[arg1][fees[arg1].field_0].field_0 = mem[mem[(32 * idx) + 128] + 12 len 20]
                fees[arg1][fees[arg1].field_0].field_256 = mem[mem[(32 * idx) + 128] + 32]
                require idx < mem[96]
                require idx < mem[_403]
                mem[(32 * idx) + _403 + 32] = mem[mem[(32 * idx) + 128] + 12 len 20]
                require idx < mem[96]
                require idx < mem[_403 + (32 * _402) + 32]
                mem[(32 * idx) + _403 + (32 * _402) + 64] = mem[mem[(32 * idx) + 128] + 32]
                _790 = mem[96]
                idx = idx + 1
                continue 
            if mem[96] <= 0:
                balanceOf[arg1][address(msg.sender)] = arg3
                if not creators[arg1]:
                    revert with 0, 'setTokenURI:Token should exist'
                mem[0] = arg1
                mem[32] = 4
                _855 = mem[_396]
                mem[0] = sha3(arg1, 4)
                stor4[arg1][].field_0 = Array(len=_855, data=mem[_396 + 32 len _855])
                mem[mem[64] + 32] = arg3
                emit TransferSingle(arg1, arg3, msg.sender, 0, msg.sender);
                mem[mem[64]] = 32
                _1486 = mem[_396]
                mem[mem[64] + 32] = mem[_396]
                mem[mem[64] + 64 len ceil32(_1486)] = mem[_396 + 32 len ceil32(_1486)]
                var96001 = ceil32(_1486)
                if ceil32(_1486) > _1486:
                    mem[mem[64] + _1486 + 64] = 0
                emit URI(string rg1, uint256 rg2):
                         32,
                         mem[mem[64] + 32 len ceil32(_1486) + 32],
                         arg1,
            else:
                _812 = mem[64]
                mem[mem[64]] = arg1
                mem[mem[64] + 32] = 96
                _918 = mem[_403]
                mem[mem[64] + 96] = mem[_403]
                idx = 0
                s = _403 + 32
                t = mem[64] + 128
                while idx < _918:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 64] = (32 * _918) + 128
                _1174 = mem[_403 + (32 * _402) + 32]
                mem[_812 + (32 * _918) + 128] = mem[_403 + (32 * _402) + 32]
                mem[_812 + (32 * _918) + 160 len 32 * _1174] = mem[_403 + (32 * _402) + 64 len 32 * _1174]
                emit SecondarySaleFees(uint256 rg1, address[] rg2, uint256[] rg3):
                                       mem[mem[64] len _812 + (32 * _918) + (32 * _1174) + -mem[64] + 160],
                balanceOf[arg1][address(msg.sender)] = arg3
                if not creators[arg1]:
                    revert with 0, 'setTokenURI:Token should exist'
                mem[0] = arg1
                mem[32] = 4
                _1439 = mem[_396]
                mem[0] = sha3(arg1, 4)
                stor4[arg1][].field_0 = Array(len=_1439, data=mem[_396 + 32 len _1439])
                mem[mem[64] + 32] = arg3
                emit TransferSingle(arg1, arg3, msg.sender, 0, msg.sender);
                _1709 = mem[64]
                mem[mem[64]] = 32
                _1714 = mem[_396]
                mem[mem[64] + 32] = mem[_396]
                mem[mem[64] + 64 len ceil32(_1714)] = mem[_396 + 32 len ceil32(_1714)]
                if ceil32(_1714) <= _1714:
                    emit URI(string rg1, uint256 rg2):
                             32,
                             mem[mem[64] + 32 len ceil32(_1714) + 32],
                             arg1,
                else:
                    mem[mem[64] + _1714 + 64] = 0
                    emit URI(mem[mem[64] len _1709 + ceil32(_1714) + -mem[64] + 64], arg1);
        else:
            mem[_403 + (32 * _402) + 64 len 32 * mem[96]] = code.data[18116 len 32 * mem[96]]
            _791 = mem[96]
            idx = 0
            while idx < _791:
                require idx < mem[96]
                if not mem[mem[(32 * idx) + 128] + 12 len 20]:
                    revert with 0, 'Recipient should be present'
                require idx < mem[96]
                if not mem[mem[(32 * idx) + 128] + 32]:
                    revert with 0, 'Fee value should be positive'
                mem[32] = 9
                require idx < mem[96]
                fees[arg1].field_0++
                mem[0] = sha3(arg1, 9)
                fees[arg1][fees[arg1].field_0].field_0 = mem[mem[(32 * idx) + 128] + 12 len 20]
                fees[arg1][fees[arg1].field_0].field_256 = mem[mem[(32 * idx) + 128] + 32]
                require idx < mem[96]
                require idx < mem[_403]
                mem[(32 * idx) + _403 + 32] = mem[mem[(32 * idx) + 128] + 12 len 20]
                require idx < mem[96]
                require idx < mem[_403 + (32 * _402) + 32]
                mem[(32 * idx) + _403 + (32 * _402) + 64] = mem[mem[(32 * idx) + 128] + 32]
                _791 = mem[96]
                idx = idx + 1
                continue 
            if mem[96] <= 0:
                balanceOf[arg1][address(msg.sender)] = arg3
                if not creators[arg1]:
                    revert with 0, 'setTokenURI:Token should exist'
                mem[0] = arg1
                mem[32] = 4
                _860 = mem[_396]
                mem[0] = sha3(arg1, 4)
                stor4[arg1][].field_0 = Array(len=_860, data=mem[_396 + 32 len _860])
                mem[mem[64] + 32] = arg3
                emit TransferSingle(arg1, arg3, msg.sender, 0, msg.sender);
                mem[mem[64]] = 32
                _1487 = mem[_396]
                mem[mem[64] + 32] = mem[_396]
                mem[mem[64] + 64 len ceil32(_1487)] = mem[_396 + 32 len ceil32(_1487)]
                var97001 = ceil32(_1487)
                if ceil32(_1487) > _1487:
                    mem[mem[64] + _1487 + 64] = 0
                emit URI(string rg1, uint256 rg2):
                         32,
                         mem[mem[64] + 32 len ceil32(_1487) + 32],
                         arg1,
            else:
                _817 = mem[64]
                mem[mem[64]] = arg1
                mem[mem[64] + 32] = 96
                _923 = mem[_403]
                mem[mem[64] + 96] = mem[_403]
                idx = 0
                s = _403 + 32
                t = mem[64] + 128
                while idx < _923:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 64] = (32 * _923) + 128
                _1175 = mem[_403 + (32 * _402) + 32]
                mem[_817 + (32 * _923) + 128] = mem[_403 + (32 * _402) + 32]
                mem[_817 + (32 * _923) + 160 len 32 * _1175] = mem[_403 + (32 * _402) + 64 len 32 * _1175]
                emit SecondarySaleFees(uint256 rg1, address[] rg2, uint256[] rg3):
                                       mem[mem[64] len _817 + (32 * _923) + (32 * _1175) + -mem[64] + 160],
                balanceOf[arg1][address(msg.sender)] = arg3
                if not creators[arg1]:
                    revert with 0, 'setTokenURI:Token should exist'
                mem[0] = arg1
                mem[32] = 4
                _1443 = mem[_396]
                mem[0] = sha3(arg1, 4)
                stor4[arg1][].field_0 = Array(len=_1443, data=mem[_396 + 32 len _1443])
                mem[mem[64] + 32] = arg3
                emit TransferSingle(arg1, arg3, msg.sender, 0, msg.sender);
                mem[mem[64]] = 32
                _1715 = mem[_396]
                mem[mem[64] + 32] = mem[_396]
                mem[mem[64] + 64 len ceil32(_1715)] = mem[_396 + 32 len ceil32(_1715)]
                if ceil32(_1715) > _1715:
                    mem[mem[64] + _1715 + 64] = 0
                emit URI(string rg1, uint256 rg2):
                         32,
                         mem[mem[64] + 32 len ceil32(_1715) + 32],
                         arg1,
}



}
