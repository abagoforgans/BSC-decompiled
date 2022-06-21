contract main {




// =====================  Runtime code  =====================


#
#  - safeBatchTransferFrom(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5)
#
const getChainId = chainid

const ERC712_VERSION = '1', 0


mapping of uint256 balanceOf;
mapping of uint8 stor1;
array of struct stor2;
uint256 domainSeperator;
mapping of uint256 nonce;
address owner;
address stor7;
mapping of address creators;
mapping of uint256 totalSupply;
mapping of struct stor10;
array of struct stor11;
array of struct stor12;
array of struct stor13;

function balanceOf(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: balance query for the zero address'
    return balanceOf[arg2][address(arg1)]
}

function getDomainSeperator() {
    return domainSeperator
}

function tokenSupply(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return totalSupply[arg1]
}

function getNonce(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return nonce[address(arg1)]
}

function owner() {
    return owner
}

function totalSupply(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return totalSupply[arg1]
}

function creators(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return creators[arg1]
}

function _fallback() payable {
    revert
}

function exists(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return not not creators[arg1]
}

function renounceOwnership() {
    if this.address != msg.sender:
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
    else:
        mem[96] = calldata.size
        mem[128 len calldata.size] = call.data[0 len calldata.size]
        if owner != mem[calldata.size + 108 len 20]:
            revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function supportsInterface(bytes4 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if Mask(32, 224, arg1) == 0xd9b67a2600000000000000000000000000000000000000000000000000000000:
        return True
    if Mask(32, 224, arg1) == 0xe89341c00000000000000000000000000000000000000000000000000000000:
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function isApprovedForAll(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require ext_code.size(stor7)
    staticcall stor7.proxies(address arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != arg2:
        return bool(stor1[address(arg1)][address(arg2)])
    return 1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if this.address != msg.sender:
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    else:
        mem[96] = calldata.size
        mem[128 len calldata.size] = call.data[0 len calldata.size]
        if owner != mem[calldata.size + 108 len 20]:
            revert with 0, 'Ownable: caller is not the owner'
        if not arg1:
            revert with 0, 'Ownable: new owner is the zero address'
    ('bool', ('param', 'arg1'))
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function setApprovalForAll(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if this.address != msg.sender:
        if msg.sender == arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: setting approval status for self'
        stor1[address(msg.sender)][address(arg1)] = uint8(arg2)
        emit ApprovalForAll(arg2, msg.sender, arg1);
    else:
        mem[96] = calldata.size
        mem[128 len calldata.size] = call.data[0 len calldata.size]
        if mem[calldata.size + 108 len 20] == arg1:
            revert with 0, 'ERC1155: setting approval status for self'
        stor1[mem[calldata.size + 108 len 20]][address(arg1)] = uint8(arg2)
        emit ApprovalForAll(arg2, mem[calldata.size + 108 len 20], arg1);
}

function setURI(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(arg1.length) + 128 > test266151307() or ceil32(arg1.length) + 128 < 96:
        revert with 'NH{q', 65
    require arg1 + arg1.length + 36 <= calldata.size
    mem[arg1.length + 128] = 0
    if this.address != msg.sender:
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
    else:
        mem[ceil32(arg1.length) + 128] = calldata.size
        mem[ceil32(arg1.length) + 160 len calldata.size] = call.data[0 len calldata.size]
        if owner != mem[ceil32(arg1.length) + calldata.size + 140 len 20]:
            revert with 0, 'Ownable: caller is not the owner'
    if bool(stor2.length):
        if bool(stor2.length) == stor2.length.field_1 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor2[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor2.length = 0
            idx = 0
            while stor2.length.field_1 + 31 / 32 > idx:
                stor2[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor2.length) == stor2.length.field_1 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor2[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor2.length = 0
            idx = 0
            while stor2.length.field_1 + 31 / 32 > idx:
                stor2[idx].field_0 = 0
                idx = idx + 1
                continue 
}

function setContractURI(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(arg1.length) + 128 > test266151307() or ceil32(arg1.length) + 128 < 96:
        revert with 'NH{q', 65
    require arg1 + arg1.length + 36 <= calldata.size
    mem[arg1.length + 128] = 0
    if this.address != msg.sender:
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
    else:
        mem[ceil32(arg1.length) + 128] = calldata.size
        mem[ceil32(arg1.length) + 160 len calldata.size] = call.data[0 len calldata.size]
        if owner != mem[ceil32(arg1.length) + calldata.size + 140 len 20]:
            revert with 0, 'Ownable: caller is not the owner'
    if bool(stor13.length):
        if bool(stor13.length) == stor13.length.field_1 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor13[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor13.length = 0
            idx = 0
            while stor13.length.field_1 + 31 / 32 > idx:
                stor13[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor13.length) == stor13.length.field_1 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor13[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor13.length = 0
            idx = 0
            while stor13.length.field_1 + 31 / 32 > idx:
                stor13[idx].field_0 = 0
                idx = idx + 1
                continue 
}

function setCreator(address arg1, uint256[] arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if (32 * arg2.length) + 128 > test266151307() or (32 * arg2.length) + 128 < 96:
        revert with 'NH{q', 65
    mem[64] = (32 * arg2.length) + 128
    mem[96] = arg2.length
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    idx = 0
    s = arg2 + 36
    t = 128
    while idx < arg2.length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if not arg1:
        revert with 0, 'ERC1155Tradable#setCreator: INVALID_ADDRESS.'
    idx = 0
    while idx < arg2.length:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _34 = mem[(32 * idx) + 128]
        if this.address != msg.sender:
            if creators[mem[(32 * idx) + 128]] != msg.sender:
                revert with 0, 'ERC1155Tradable#creatorOnly: ONLY_CREATOR_ALLOWED'
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 8
            creators[mem[(32 * idx) + 128]] = arg1
        else:
            _35 = mem[64]
            mem[64] = mem[64] + ceil32(calldata.size) + 32
            mem[_35] = calldata.size
            mem[_35 + 32 len calldata.size] = call.data[0 len calldata.size]
            mem[_35 + calldata.size + 32] = 0
            if creators[_34] != mem[_35 + calldata.size + 12 len 20]:
                revert with 0, 'ERC1155Tradable#creatorOnly: ONLY_CREATOR_ALLOWED'
            mem[0] = _34
            mem[32] = 8
            creators[_34] = arg1
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function balanceOfBatch(address[] arg1, uint256[] arg2) {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if (32 * arg1.length) + 128 > test266151307() or (32 * arg1.length) + 128 < 96:
        revert with 'NH{q', 65
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    idx = 0
    s = arg1 + 36
    t = 128
    while idx < arg1.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if (32 * arg1.length) + (32 * arg2.length) + 160 > test266151307() or (32 * arg2.length) + 160 < 128:
        revert with 'NH{q', 65
    mem[(32 * arg1.length) + 128] = arg2.length
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    idx = 0
    s = arg2 + 36
    t = (32 * arg1.length) + 160
    while idx < arg2.length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if arg1.length != arg2.length:
        revert with 0, 'ERC1155: accounts and ids length mismatch'
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = arg1.length
    if arg1.length:
        mem[(32 * arg1.length) + (32 * arg2.length) + 192 len 32 * arg1.length] = call.data[calldata.size len 32 * arg1.length]
    idx = 0
    while idx < arg1.length:
        if idx >= arg1.length:
            revert with 'NH{q', 50
        if idx >= arg2.length:
            revert with 'NH{q', 50
        if not mem[(32 * idx) + 140 len 20]:
            revert with 0, 'ERC1155: balance query for the zero address'
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = sha3(mem[(32 * idx) + (32 * arg1.length) + 160], 0)
        if idx >= arg1.length:
            revert with 'NH{q', 50
        mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = balanceOf[mem[(32 * idx) + (32 * arg1.length) + 160]][address(mem[(32 * idx) + 128])]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    mem[(64 * arg1.length) + (32 * arg2.length) + 192] = 32
    mem[(64 * arg1.length) + (32 * arg2.length) + 224] = arg1.length
    mem[(64 * arg1.length) + (32 * arg2.length) + 256 len 32 * arg1.length] = mem[(32 * arg1.length) + (32 * arg2.length) + 192 len 32 * arg1.length]
    return Array(len=arg1.length, data=mem[(32 * arg1.length) + (32 * arg2.length) + 192 len 32 * arg1.length])
}

function executeMetaTransaction(address arg1, bytes arg2, bytes32 arg3, bytes32 arg4, uint8 arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(arg2.length) + 128 > test266151307() or ceil32(arg2.length) + 128 < 96:
        revert with 'NH{q', 65
    require arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    mem[ceil32(arg2.length) + 128] = nonce[address(arg1)]
    if not arg1:
        revert with 0, 'NativeMetaTransaction: INVALID_SIGNER'
    signer = erecover(sha3(0, domainSeperator, sha3(sha3(0xfe4d6574615472616e73616374696f6e2875696e74323536206e6f6e63652c616464726573732066726f6d2c62797465732066756e6374696f6e5369676e6174757265), nonce[address(arg1)], address(arg1), sha3(arg2[all]))), arg5 << 248, arg3, arg4) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if arg1 != address(signer):
        revert with 0, 'Signer and signature do not match'
    if nonce[address(arg1)] > -2:
        revert with 'NH{q', 17
    nonce[address(arg1)]++
    mem[ceil32(arg2.length) + 674] = msg.sender
    mem[ceil32(arg2.length) + 706] = 96
    mem[ceil32(arg2.length) + 738] = arg2.length
    mem[ceil32(arg2.length) + 770 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    if ceil32(arg2.length) > arg2.length:
        mem[ceil32(arg2.length) + arg2.length + 770] = 0
    emit MetaTransactionExecuted(address(arg1), msg.sender, Array(len=arg2.length, data=arg2[all]));
    mem[ceil32(arg2.length) + 674 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    mem[ceil32(arg2.length) + arg2.length + 674] = address(arg1)
    mem[ceil32(arg2.length) + arg2.length + 694 len floor32(arg2.length + 51)] = Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + 674 len floor32(arg2.length + 51) - ceil32(arg2.length)]
    if floor32(arg2.length + 51) > arg2.length + 20:
        mem[ceil32(arg2.length) + (2 * arg2.length) + 714] = 0
    call this.address.mem[ceil32(arg2.length) + arg2.length + 694 len 4] with:
         gas gas_remaining wei
        args mem[ceil32(arg2.length) + arg2.length + 698 len arg2.length + 16]
    if not ext_call.success:
        revert with 0, 'Function call not successful'
    if not return_data.size:
        return Array(len=arg2.length, data=arg2[all])
    return Array(len=return_data.size, data=ext_call.return_data[0 len return_data.size])
}

function setCustomURI(uint256 arg1, string arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(arg2.length) + 128 > test266151307() or ceil32(arg2.length) + 128 < 96:
        revert with 'NH{q', 65
    require arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    if this.address != msg.sender:
        if creators[arg1] != msg.sender:
            revert with 0, 'ERC1155Tradable#creatorOnly: ONLY_CREATOR_ALLOWED'
        if stor10[arg1].field_0:
            if stor10[arg1].field_0 == stor10[arg1].field_1 < 32:
                revert with 'NH{q', 34
            if arg2.length:
                stor10[arg1][].field_0 = Array(len=arg2.length, data=arg2[all])
            else:
                stor10[arg1].field_0 = 0
                idx = 0
                while stor10[arg1].field_1 + 31 / 32 > idx:
                    stor10[arg1][idx].field_0 = 0
                    idx = idx + 1
                    continue 
        else:
            if stor10[arg1].field_0 == stor10[arg1].field_1 < 32:
                revert with 'NH{q', 34
            if arg2.length:
                stor10[arg1][].field_0 = Array(len=arg2.length, data=arg2[all])
            else:
                stor10[arg1].field_0 = 0
                idx = 0
                while stor10[arg1].field_1 + 31 / 32 > idx:
                    stor10[arg1][idx].field_0 = 0
                    idx = idx + 1
                    continue 
        mem[ceil32(arg2.length) + 128] = 32
        mem[ceil32(arg2.length) + 160] = arg2.length
        emit URI(string arg1, uint256 arg2):
                 Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0),
                 mem[arg2.length + 160 len (4 * ceil32(arg2.length)) + -arg2.length + 32],
                 arg1,
    else:
        mem[ceil32(arg2.length) + 128] = calldata.size
        mem[ceil32(arg2.length) + 160 len calldata.size] = call.data[0 len calldata.size]
        if creators[arg1] != mem[ceil32(arg2.length) + calldata.size + 140 len 20]:
            revert with 0, 'ERC1155Tradable#creatorOnly: ONLY_CREATOR_ALLOWED'
        if stor10[arg1].field_0:
            if stor10[arg1].field_0 == stor10[arg1].field_1 < 32:
                revert with 'NH{q', 34
            if arg2.length:
                stor10[arg1][].field_0 = Array(len=arg2.length, data=arg2[all])
            else:
                stor10[arg1].field_0 = 0
                idx = 0
                while stor10[arg1].field_1 + 31 / 32 > idx:
                    stor10[arg1][idx].field_0 = 0
                    idx = idx + 1
                    continue 
        else:
            if stor10[arg1].field_0 == stor10[arg1].field_1 < 32:
                revert with 'NH{q', 34
            if arg2.length:
                stor10[arg1][].field_0 = Array(len=arg2.length, data=arg2[all])
            else:
                stor10[arg1].field_0 = 0
                idx = 0
                while stor10[arg1].field_1 + 31 / 32 > idx:
                    stor10[arg1][idx].field_0 = 0
                    idx = idx + 1
                    continue 
        mem[ceil32(arg2.length) + ceil32(calldata.size) + 224 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
        if ceil32(arg2.length) > arg2.length:
            mem[ceil32(arg2.length) + ceil32(calldata.size) + arg2.length + 224] = 0
        emit URI(Array(len=arg2.length, data=Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + ceil32(calldata.size) + 224 len 2 * ceil32(arg2.length)]), arg1);
}

function name() {
    if bool(stor11.length):
        if bool(stor11.length) == stor11.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor11.length):
            if bool(stor11.length) == stor11.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor11.length.field_1:
                if 31 < stor11.length.field_1:
                    mem[128] = uint256(stor11.field_0)
                    idx = 128
                    s = 0
                    while stor11.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor11[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor11.length.field_1), data=mem[128 len ceil32(stor11.length.field_1)])
                mem[128] = 256 * stor11.length.field_8
        else:
            if bool(stor11.length) == stor11.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor11.length.field_1:
                if 31 < stor11.length.field_1:
                    mem[128] = uint256(stor11.field_0)
                    idx = 128
                    s = 0
                    while stor11.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor11[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor11.length.field_1), data=mem[128 len ceil32(stor11.length.field_1)])
                mem[128] = 256 * stor11.length.field_8
        mem[ceil32(stor11.length.field_1) + 192 len ceil32(stor11.length.field_1)] = mem[128 len ceil32(stor11.length.field_1)]
        if ceil32(stor11.length.field_1) > stor11.length.field_1:
            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor11.length.field_1), data=mem[128 len ceil32(stor11.length.field_1)], mem[(2 * ceil32(stor11.length.field_1)) + 192 len 2 * ceil32(stor11.length.field_1)]), 
    if bool(stor11.length) == stor11.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor11.length):
        if bool(stor11.length) == stor11.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor11.length.field_1:
            if 31 < stor11.length.field_1:
                mem[128] = uint256(stor11.field_0)
                idx = 128
                s = 0
                while stor11.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor11[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor11.length % 128, data=mem[128 len ceil32(stor11.length.field_1)])
            mem[128] = 256 * stor11.length.field_8
    else:
        if bool(stor11.length) == stor11.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor11.length.field_1:
            if 31 < stor11.length.field_1:
                mem[128] = uint256(stor11.field_0)
                idx = 128
                s = 0
                while stor11.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor11[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor11.length % 128, data=mem[128 len ceil32(stor11.length.field_1)])
            mem[128] = 256 * stor11.length.field_8
    mem[ceil32(stor11.length.field_1) + 192 len ceil32(stor11.length.field_1)] = mem[128 len ceil32(stor11.length.field_1)]
    if ceil32(stor11.length.field_1) > stor11.length.field_1:
        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 192] = 0
    return Array(len=stor11.length % 128, data=mem[128 len ceil32(stor11.length.field_1)], mem[(2 * ceil32(stor11.length.field_1)) + 192 len 2 * ceil32(stor11.length.field_1)]), 
}

function symbol() {
    if bool(stor12.length):
        if bool(stor12.length) == stor12.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor12.length):
            if bool(stor12.length) == stor12.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor12.length.field_1:
                if 31 < stor12.length.field_1:
                    mem[128] = uint256(stor12.field_0)
                    idx = 128
                    s = 0
                    while stor12.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor12[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor12.length.field_1), data=mem[128 len ceil32(stor12.length.field_1)])
                mem[128] = 256 * stor12.length.field_8
        else:
            if bool(stor12.length) == stor12.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor12.length.field_1:
                if 31 < stor12.length.field_1:
                    mem[128] = uint256(stor12.field_0)
                    idx = 128
                    s = 0
                    while stor12.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor12[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor12.length.field_1), data=mem[128 len ceil32(stor12.length.field_1)])
                mem[128] = 256 * stor12.length.field_8
        mem[ceil32(stor12.length.field_1) + 192 len ceil32(stor12.length.field_1)] = mem[128 len ceil32(stor12.length.field_1)]
        if ceil32(stor12.length.field_1) > stor12.length.field_1:
            mem[ceil32(stor12.length.field_1) + stor12.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor12.length.field_1), data=mem[128 len ceil32(stor12.length.field_1)], mem[(2 * ceil32(stor12.length.field_1)) + 192 len 2 * ceil32(stor12.length.field_1)]), 
    if bool(stor12.length) == stor12.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor12.length):
        if bool(stor12.length) == stor12.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor12.length.field_1:
            if 31 < stor12.length.field_1:
                mem[128] = uint256(stor12.field_0)
                idx = 128
                s = 0
                while stor12.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor12[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor12.length % 128, data=mem[128 len ceil32(stor12.length.field_1)])
            mem[128] = 256 * stor12.length.field_8
    else:
        if bool(stor12.length) == stor12.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor12.length.field_1:
            if 31 < stor12.length.field_1:
                mem[128] = uint256(stor12.field_0)
                idx = 128
                s = 0
                while stor12.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor12[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor12.length % 128, data=mem[128 len ceil32(stor12.length.field_1)])
            mem[128] = 256 * stor12.length.field_8
    mem[ceil32(stor12.length.field_1) + 192 len ceil32(stor12.length.field_1)] = mem[128 len ceil32(stor12.length.field_1)]
    if ceil32(stor12.length.field_1) > stor12.length.field_1:
        mem[ceil32(stor12.length.field_1) + stor12.length.field_1 + 192] = 0
    return Array(len=stor12.length % 128, data=mem[128 len ceil32(stor12.length.field_1)], mem[(2 * ceil32(stor12.length.field_1)) + 192 len 2 * ceil32(stor12.length.field_1)]), 
}

function contractURI() {
    if bool(stor13.length):
        if bool(stor13.length) == stor13.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor13.length):
            if bool(stor13.length) == stor13.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor13.length.field_1:
                if 31 < stor13.length.field_1:
                    mem[128] = uint256(stor13.field_0)
                    idx = 128
                    s = 0
                    while stor13.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor13[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor13.length.field_1), data=mem[128 len ceil32(stor13.length.field_1)])
                mem[128] = 256 * stor13.length.field_8
        else:
            if bool(stor13.length) == stor13.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor13.length.field_1:
                if 31 < stor13.length.field_1:
                    mem[128] = uint256(stor13.field_0)
                    idx = 128
                    s = 0
                    while stor13.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor13[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor13.length.field_1), data=mem[128 len ceil32(stor13.length.field_1)])
                mem[128] = 256 * stor13.length.field_8
        mem[ceil32(stor13.length.field_1) + 192 len ceil32(stor13.length.field_1)] = mem[128 len ceil32(stor13.length.field_1)]
        if ceil32(stor13.length.field_1) > stor13.length.field_1:
            mem[ceil32(stor13.length.field_1) + stor13.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor13.length.field_1), data=mem[128 len ceil32(stor13.length.field_1)], mem[(2 * ceil32(stor13.length.field_1)) + 192 len 2 * ceil32(stor13.length.field_1)]), 
    if bool(stor13.length) == stor13.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor13.length):
        if bool(stor13.length) == stor13.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor13.length.field_1:
            if 31 < stor13.length.field_1:
                mem[128] = uint256(stor13.field_0)
                idx = 128
                s = 0
                while stor13.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor13[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor13.length % 128, data=mem[128 len ceil32(stor13.length.field_1)])
            mem[128] = 256 * stor13.length.field_8
    else:
        if bool(stor13.length) == stor13.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor13.length.field_1:
            if 31 < stor13.length.field_1:
                mem[128] = uint256(stor13.field_0)
                idx = 128
                s = 0
                while stor13.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor13[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor13.length % 128, data=mem[128 len ceil32(stor13.length.field_1)])
            mem[128] = 256 * stor13.length.field_8
    mem[ceil32(stor13.length.field_1) + 192 len ceil32(stor13.length.field_1)] = mem[128 len ceil32(stor13.length.field_1)]
    if ceil32(stor13.length.field_1) > stor13.length.field_1:
        mem[ceil32(stor13.length.field_1) + stor13.length.field_1 + 192] = 0
    return Array(len=stor13.length % 128, data=mem[128 len ceil32(stor13.length.field_1)], mem[(2 * ceil32(stor13.length.field_1)) + 192 len 2 * ceil32(stor13.length.field_1)]), 
}

function mint(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(arg4.length) + 128 > test266151307() or ceil32(arg4.length) + 128 < 96:
        revert with 'NH{q', 65
    require arg4 + arg4.length + 36 <= calldata.size
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    if this.address != msg.sender:
        if creators[arg2] != msg.sender:
            revert with 0, 'ERC1155Tradable#creatorOnly: ONLY_CREATOR_ALLOWED'
        if not arg1:
            revert with 0, 'ERC1155: mint to the zero address'
        if this.address != msg.sender:
            mem[ceil32(arg4.length) + 128] = 1
            if 0 >= Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]:
                revert with 'NH{q', 50
            if balanceOf[arg2][address(arg1)] > -arg3 - 1:
                revert with 'NH{q', 17
            balanceOf[arg2][address(arg1)] += arg3
            emit TransferSingle(arg2, arg3, msg.sender, 0, arg1);
            if ext_code.size(arg1) > 0:
                require ext_code.size(arg1)
                call arg1.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                     gas gas_remaining wei
                    args msg.sender, 0, arg2, arg3, 160, arg4.length, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                if not ext_call.success:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                require return_data.size >= 32
                require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
        else:
            mem[ceil32(arg4.length) + 128] = calldata.size
            mem[ceil32(arg4.length) + 160 len calldata.size] = call.data[0 len calldata.size]
            if balanceOf[arg2][address(arg1)] > -arg3 - 1:
                revert with 'NH{q', 17
            balanceOf[arg2][address(arg1)] += arg3
            emit TransferSingle(arg2, arg3, mem[ceil32(arg4.length) + calldata.size + 140 len 20], 0, arg1);
            if ext_code.size(arg1) > 0:
                require ext_code.size(arg1)
                call arg1.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                     gas gas_remaining wei
                    args mem[ceil32(arg4.length) + calldata.size + 140 len 20], 0, arg2, arg3, 160, arg4.length, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                if not ext_call.success:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                require return_data.size >= 32
                require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
    else:
        mem[ceil32(arg4.length) + 128] = calldata.size
        mem[ceil32(arg4.length) + 160 len calldata.size] = call.data[0 len calldata.size]
        if creators[arg2] != mem[ceil32(arg4.length) + calldata.size + 140 len 20]:
            revert with 0, 'ERC1155Tradable#creatorOnly: ONLY_CREATOR_ALLOWED'
        if not arg1:
            revert with 0, 'ERC1155: mint to the zero address'
        if this.address != msg.sender:
            if balanceOf[arg2][address(arg1)] > -arg3 - 1:
                revert with 'NH{q', 17
            balanceOf[arg2][address(arg1)] += arg3
            emit TransferSingle(arg2, arg3, msg.sender, 0, arg1);
            if ext_code.size(arg1) > 0:
                require ext_code.size(arg1)
                call arg1.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                     gas gas_remaining wei
                    args msg.sender, 0, arg2, arg3, 160, arg4.length, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                if not ext_call.success:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                require return_data.size >= 32
                require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
        else:
            mem[ceil32(arg4.length) + ceil32(calldata.size) + 160] = calldata.size
            mem[ceil32(arg4.length) + ceil32(calldata.size) + 192 len calldata.size] = call.data[0 len calldata.size]
            mem[ceil32(arg4.length) + (2 * ceil32(calldata.size)) + 224] = arg2
            mem[ceil32(arg4.length) + (2 * ceil32(calldata.size)) + 256] = 1
            mem[ceil32(arg4.length) + (2 * ceil32(calldata.size)) + 288] = arg3
            if balanceOf[arg2][address(arg1)] > -arg3 - 1:
                revert with 'NH{q', 17
            balanceOf[arg2][address(arg1)] += arg3
            mem[ceil32(arg4.length) + (2 * ceil32(calldata.size)) + 320] = arg2
            mem[ceil32(arg4.length) + (2 * ceil32(calldata.size)) + 352] = arg3
            emit TransferSingle(arg2, arg3, mem[ceil32(arg4.length) + ceil32(calldata.size) + calldata.size + 172 len 20], 0, arg1);
            if ext_code.size(arg1) > 0:
                mem[ceil32(arg4.length) + (2 * ceil32(calldata.size)) + 320] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
                mem[ceil32(arg4.length) + (2 * ceil32(calldata.size)) + 324] = mem[ceil32(arg4.length) + ceil32(calldata.size) + calldata.size + 172 len 20]
                mem[ceil32(arg4.length) + (2 * ceil32(calldata.size)) + 356] = 0
                mem[ceil32(arg4.length) + (2 * ceil32(calldata.size)) + 388] = arg2
                mem[ceil32(arg4.length) + (2 * ceil32(calldata.size)) + 420] = arg3
                mem[ceil32(arg4.length) + (2 * ceil32(calldata.size)) + 452] = 160
                mem[ceil32(arg4.length) + (2 * ceil32(calldata.size)) + 484] = arg4.length
                mem[ceil32(arg4.length) + (2 * ceil32(calldata.size)) + 516 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                if ceil32(arg4.length) > arg4.length:
                    mem[ceil32(arg4.length) + (2 * ceil32(calldata.size)) + arg4.length + 516] = 0
                require ext_code.size(arg1)
                call arg1.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                     gas gas_remaining wei
                    args mem[ceil32(arg4.length) + ceil32(calldata.size) + calldata.size + 172 len 20], 0, arg2, arg3, 160, arg4.length, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                if not ext_call.success:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                require return_data.size >= 32
                require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
    if totalSupply[arg2] > -arg3 - 1:
        revert with 'NH{q', 17
    totalSupply[arg2] += arg3
}

function batchMint(address arg1, uint256[] arg2, uint256[] arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if (32 * arg2.length) + 128 > test266151307() or (32 * arg2.length) + 128 < 96:
        revert with 'NH{q', 65
    mem[96] = arg2.length
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    idx = 0
    s = arg2 + 36
    t = 128
    while idx < arg2.length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 'NH{q', 65
    if (32 * arg2.length) + (32 * arg3.length) + 160 > test266151307() or (32 * arg3.length) + 160 < 128:
        revert with 'NH{q', 65
    mem[(32 * arg2.length) + 128] = arg3.length
    require arg3 + (32 * arg3.length) + 36 <= calldata.size
    idx = 0
    s = arg3 + 36
    t = (32 * arg2.length) + 160
    while idx < arg3.length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 'NH{q', 65
    if (32 * arg2.length) + (32 * arg3.length) + ceil32(arg4.length) + 192 > test266151307() or ceil32(arg4.length) + 192 < 160:
        revert with 'NH{q', 65
    mem[64] = (32 * arg2.length) + (32 * arg3.length) + ceil32(arg4.length) + 192
    mem[(32 * arg2.length) + (32 * arg3.length) + 160] = arg4.length
    require arg4 + arg4.length + 36 <= calldata.size
    mem[(32 * arg2.length) + (32 * arg3.length) + 192 len arg4.length] = arg4[all]
    mem[(32 * arg2.length) + (32 * arg3.length) + arg4.length + 192] = 0
    idx = 0
    while idx < arg2.length:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _522 = mem[(32 * idx) + 128]
        if this.address != msg.sender:
            if creators[mem[(32 * idx) + 128]] != msg.sender:
                revert with 0, 'ERC1155Tradable#batchMint: ONLY_CREATOR_ALLOWED'
            if idx >= mem[(32 * arg2.length) + 128]:
                revert with 'NH{q', 50
            if totalSupply[mem[(32 * idx) + 128]] > -mem[(32 * idx) + (32 * arg2.length) + 160] - 1:
                revert with 'NH{q', 17
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 9
            totalSupply[mem[(32 * idx) + 128]] += mem[(32 * idx) + (32 * arg2.length) + 160]
        else:
            _527 = mem[64]
            mem[64] = mem[64] + ceil32(calldata.size) + 32
            mem[_527] = calldata.size
            mem[_527 + 32 len calldata.size] = call.data[0 len calldata.size]
            mem[_527 + calldata.size + 32] = 0
            if creators[_522] != mem[_527 + calldata.size + 12 len 20]:
                revert with 0, 'ERC1155Tradable#batchMint: ONLY_CREATOR_ALLOWED'
            if idx >= mem[(32 * arg2.length) + 128]:
                revert with 'NH{q', 50
            if totalSupply[_522] > -mem[(32 * idx) + (32 * arg2.length) + 160] - 1:
                revert with 'NH{q', 17
            mem[0] = _522
            mem[32] = 9
            totalSupply[_522] += mem[(32 * idx) + (32 * arg2.length) + 160]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    if not arg1:
        revert with 0, 'ERC1155: mint to the zero address'
    if mem[96] != mem[(32 * arg2.length) + 128]:
        revert with 0, 'ERC1155: ids and amounts length mismatch'
    if this.address != msg.sender:
        idx = 0
        while idx < mem[96]:
            if idx >= mem[(32 * arg2.length) + 128]:
                revert with 'NH{q', 50
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[0] = arg1
            mem[32] = sha3(mem[(32 * idx) + 128], 0)
            if balanceOf[mem[(32 * idx) + 128]][address(arg1)] > -mem[(32 * idx) + (32 * arg2.length) + 160] - 1:
                revert with 'NH{q', 17
            balanceOf[mem[(32 * idx) + 128]][address(arg1)] += mem[(32 * idx) + (32 * arg2.length) + 160]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _693 = mem[64]
        mem[mem[64]] = 64
        _707 = mem[96]
        mem[mem[64] + 64] = mem[96]
        mem[mem[64] + 96 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
        mem[mem[64] + 32] = (32 * mem[96]) + 96
        _837 = mem[(32 * arg2.length) + 128]
        mem[_693 + (32 * mem[96]) + 96] = mem[(32 * arg2.length) + 128]
        mem[_693 + (32 * _707) + 128 len 32 * _837] = mem[(32 * arg2.length) + 160 len 32 * _837]
        emit TransferBatch(address arg1, address arg2, address arg3, uint256[] arg4, uint256[] arg5):
                           mem[mem[64] len _693 + (32 * _707) + (32 * _837) + -mem[64] + 128],
                           msg.sender,
                           0,
                           arg1,
        if ext_code.size(arg1) <= 0:
        mem[mem[64]] = 0xbc197c8100000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = 0
        mem[mem[64] + 68] = 160
        mem[mem[64] + 164] = mem[96]
        mem[mem[64] + 196 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
        mem[mem[64] + 100] = (32 * mem[96]) + 192
        _1085 = mem[(32 * arg2.length) + 128]
        mem[mem[64] + (32 * mem[96]) + 196] = mem[(32 * arg2.length) + 128]
        mem[mem[64] + (32 * mem[96]) + 228 len 32 * _1085] = mem[(32 * arg2.length) + 160 len 32 * _1085]
        mem[mem[64] + 132] = (32 * mem[96]) + (32 * _1085) + 224
        _1199 = mem[(32 * arg2.length) + (32 * arg3.length) + 160]
        mem[mem[64] + (32 * mem[96]) + (32 * _1085) + 228] = mem[(32 * arg2.length) + (32 * arg3.length) + 160]
        mem[mem[64] + (32 * mem[96]) + (32 * _1085) + 260 len ceil32(_1199)] = mem[(32 * arg2.length) + (32 * arg3.length) + 192 len ceil32(_1199)]
        if ceil32(_1199) <= _1199:
            require ext_code.size(arg1)
            call arg1.onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
                 gas gas_remaining wei
                args msg.sender, 0, 160, (32 * mem[96]) + 192, (32 * mem[96]) + (32 * _1085) + 224, mem[96], mem[mem[64] + 196 len (32 * mem[96]) + (32 * _1085) + ceil32(_1199) + 64]
            mem[mem[64]] = ext_call.return_data[0]
            if ext_call.success:
                _1313 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1313] == Mask(32, 224, mem[_1313])
                if Mask(32, 224, mem[_1313]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
            if return_data.size < 68:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            mem[0 len 4] = ext_call.return_data[0 len 4]
            if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            _1325 = mem[64]
            mem[mem[64] len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
            if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if mem[mem[64] + ext_call.return_data[0]] > test266151307():
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 32 > return_data.size:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            mem[64] = mem[64] + ext_call.return_data[0] + ceil32(mem[mem[64] + ext_call.return_data[0]]) + 32
            if not _1325 + ext_call.return_data[0]:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _1375 = mem[_1325 + ext_call.return_data[0]]
            mem[mem[64] + 36] = mem[_1325 + ext_call.return_data[0]]
            mem[mem[64] + 68 len ceil32(_1375)] = mem[_1325 + ext_call.return_data[0] + 32 len ceil32(_1375)]
            if ceil32(_1375) > _1375:
                mem[mem[64] + _1375 + 68] = 0
            revert with 0, 32, mem[mem[64] + 36 len ceil32(_1375) + 32]
        mem[mem[64] + (32 * mem[96]) + (32 * _1085) + _1199 + 260] = 0
        require ext_code.size(arg1)
        call arg1.onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
             gas gas_remaining wei
            args msg.sender, 0, 160, (32 * mem[96]) + 192, (32 * mem[96]) + (32 * _1085) + 224, mem[96], mem[mem[64] + 196 len (32 * mem[96]) + (32 * _1085) + ceil32(_1199) + 64]
        mem[mem[64]] = ext_call.return_data[0]
        if ext_call.success:
            _1315 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1315] == Mask(32, 224, mem[_1315])
            if Mask(32, 224, mem[_1315]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
        if return_data.size < 68:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        mem[0 len 4] = ext_call.return_data[0 len 4]
        if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        _1331 = mem[64]
        mem[mem[64] len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
        if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if mem[mem[64] + ext_call.return_data[0]] > test266151307():
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 32 > return_data.size:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        mem[64] = mem[64] + ext_call.return_data[0] + ceil32(mem[mem[64] + ext_call.return_data[0]]) + 32
        if not _1331 + ext_call.return_data[0]:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        _1382 = mem[_1331 + ext_call.return_data[0]]
        mem[mem[64] + 36] = mem[_1331 + ext_call.return_data[0]]
        mem[mem[64] + 68 len ceil32(_1382)] = mem[_1331 + ext_call.return_data[0] + 32 len ceil32(_1382)]
        if ceil32(_1382) > _1382:
            mem[mem[64] + _1382 + 68] = 0
        revert with 0, 32, mem[mem[64] + 36 len ceil32(_1382) + 32]
    _529 = mem[64]
    mem[64] = mem[64] + ceil32(calldata.size) + 32
    mem[_529] = calldata.size
    mem[_529 + 32 len calldata.size] = call.data[0 len calldata.size]
    mem[_529 + calldata.size + 32] = 0
    _530 = mem[_529 + calldata.size]
    idx = 0
    while idx < mem[96]:
        if idx >= mem[(32 * arg2.length) + 128]:
            revert with 'NH{q', 50
        if idx >= mem[96]:
            revert with 'NH{q', 50
        mem[0] = arg1
        mem[32] = sha3(mem[(32 * idx) + 128], 0)
        if balanceOf[mem[(32 * idx) + 128]][address(arg1)] > -mem[(32 * idx) + (32 * arg2.length) + 160] - 1:
            revert with 'NH{q', 17
        balanceOf[mem[(32 * idx) + 128]][address(arg1)] += mem[(32 * idx) + (32 * arg2.length) + 160]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    _695 = mem[64]
    mem[mem[64]] = 64
    _708 = mem[96]
    mem[mem[64] + 64] = mem[96]
    mem[mem[64] + 96 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
    mem[mem[64] + 32] = (32 * mem[96]) + 96
    _838 = mem[(32 * arg2.length) + 128]
    mem[_695 + (32 * mem[96]) + 96] = mem[(32 * arg2.length) + 128]
    mem[_695 + (32 * _708) + 128 len 32 * _838] = mem[(32 * arg2.length) + 160 len 32 * _838]
    emit TransferBatch(address arg1, address arg2, address arg3, uint256[] arg4, uint256[] arg5):
                       mem[mem[64] len _695 + (32 * _708) + (32 * _838) + -mem[64] + 128],
                       address(_530),
                       0,
                       arg1,
    if ext_code.size(arg1) <= 0:
    mem[mem[64]] = 0xbc197c8100000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = address(_530)
    mem[mem[64] + 36] = 0
    mem[mem[64] + 68] = 160
    mem[mem[64] + 164] = mem[96]
    mem[mem[64] + 196 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
    mem[mem[64] + 100] = (32 * mem[96]) + 192
    _1086 = mem[(32 * arg2.length) + 128]
    mem[mem[64] + (32 * mem[96]) + 196] = mem[(32 * arg2.length) + 128]
    mem[mem[64] + (32 * mem[96]) + 228 len 32 * _1086] = mem[(32 * arg2.length) + 160 len 32 * _1086]
    mem[mem[64] + 132] = (32 * mem[96]) + (32 * _1086) + 224
    _1200 = mem[(32 * arg2.length) + (32 * arg3.length) + 160]
    mem[mem[64] + (32 * mem[96]) + (32 * _1086) + 228] = mem[(32 * arg2.length) + (32 * arg3.length) + 160]
    mem[mem[64] + (32 * mem[96]) + (32 * _1086) + 260 len ceil32(_1200)] = mem[(32 * arg2.length) + (32 * arg3.length) + 192 len ceil32(_1200)]
    if ceil32(_1200) <= _1200:
        require ext_code.size(arg1)
        call arg1.onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
             gas gas_remaining wei
            args address(_530), 0, 160, (32 * mem[96]) + 192, (32 * mem[96]) + (32 * _1086) + 224, mem[96], mem[mem[64] + 196 len (32 * mem[96]) + (32 * _1086) + ceil32(_1200) + 64]
        mem[mem[64]] = ext_call.return_data[0]
        if ext_call.success:
            _1314 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1314] == Mask(32, 224, mem[_1314])
            if Mask(32, 224, mem[_1314]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
        if return_data.size < 68:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        mem[0 len 4] = ext_call.return_data[0 len 4]
        if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        _1327 = mem[64]
        mem[mem[64] len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
        if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if mem[mem[64] + ext_call.return_data[0]] > test266151307():
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 32 > return_data.size:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        mem[64] = mem[64] + ext_call.return_data[0] + ceil32(mem[mem[64] + ext_call.return_data[0]]) + 32
        if not _1327 + ext_call.return_data[0]:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        _1378 = mem[_1327 + ext_call.return_data[0]]
        mem[mem[64] + 36] = mem[_1327 + ext_call.return_data[0]]
        mem[mem[64] + 68 len ceil32(_1378)] = mem[_1327 + ext_call.return_data[0] + 32 len ceil32(_1378)]
        if ceil32(_1378) > _1378:
            mem[mem[64] + _1378 + 68] = 0
        revert with 0, 32, mem[mem[64] + 36 len ceil32(_1378) + 32]
    mem[mem[64] + (32 * mem[96]) + (32 * _1086) + _1200 + 260] = 0
    require ext_code.size(arg1)
    call arg1.onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
         gas gas_remaining wei
        args address(_530), 0, 160, (32 * mem[96]) + 192, (32 * mem[96]) + (32 * _1086) + 224, mem[96], mem[mem[64] + 196 len (32 * mem[96]) + (32 * _1086) + ceil32(_1200) + 64]
    mem[mem[64]] = ext_call.return_data[0]
    if ext_call.success:
        _1316 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_1316] == Mask(32, 224, mem[_1316])
        if Mask(32, 224, mem[_1316]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
            revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
    if return_data.size < 68:
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    mem[0 len 4] = ext_call.return_data[0 len 4]
    if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    _1335 = mem[64]
    mem[mem[64] len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
    if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    if mem[mem[64] + ext_call.return_data[0]] > test266151307():
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    if ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 32 > return_data.size:
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    mem[64] = mem[64] + ext_call.return_data[0] + ceil32(mem[mem[64] + ext_call.return_data[0]]) + 32
    if not _1335 + ext_call.return_data[0]:
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = 32
    _1385 = mem[_1335 + ext_call.return_data[0]]
    mem[mem[64] + 36] = mem[_1335 + ext_call.return_data[0]]
    mem[mem[64] + 68 len ceil32(_1385)] = mem[_1335 + ext_call.return_data[0] + 32 len ceil32(_1385)]
    if ceil32(_1385) > _1385:
        mem[mem[64] + _1385 + 68] = 0
    revert with 0, 32, mem[mem[64] + 36 len ceil32(_1385) + 32]
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    if arg5.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(arg5.length) + 128 > test266151307() or ceil32(arg5.length) + 128 < 96:
        revert with 'NH{q', 65
    require arg5 + arg5.length + 36 <= calldata.size
    mem[128 len arg5.length] = arg5[all]
    mem[arg5.length + 128] = 0
    if this.address != msg.sender:
        if arg1 == msg.sender:
            if not arg2:
                revert with 0, 'ERC1155: transfer to the zero address'
            if this.address != msg.sender:
                mem[ceil32(arg5.length) + 128] = 1
                if 0 >= Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]:
                    revert with 'NH{q', 50
                if balanceOf[arg3][address(arg1)] < arg4:
                    revert with 0, 'ERC1155: insufficient balance for transfer'
                balanceOf[arg3][address(arg1)] -= arg4
                if balanceOf[arg3][address(arg2)] > -arg4 - 1:
                    revert with 'NH{q', 17
                balanceOf[arg3][address(arg2)] += arg4
                emit TransferSingle(arg3, arg4, msg.sender, arg1, arg2);
                if ext_code.size(arg2) > 0:
                    require ext_code.size(arg2)
                    call arg2.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                         gas gas_remaining wei
                        args msg.sender, address(arg1), arg3, arg4, Array(len=arg5.length, data=arg5[all])
                    if not ext_call.success:
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    require return_data.size >= 32
                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                    if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
            else:
                mem[ceil32(arg5.length) + 128] = calldata.size
                mem[ceil32(arg5.length) + 160 len calldata.size] = call.data[0 len calldata.size]
                if balanceOf[arg3][address(arg1)] < arg4:
                    revert with 0, 'ERC1155: insufficient balance for transfer'
                balanceOf[arg3][address(arg1)] -= arg4
                if balanceOf[arg3][address(arg2)] > -arg4 - 1:
                    revert with 'NH{q', 17
                balanceOf[arg3][address(arg2)] += arg4
                emit TransferSingle(arg3, arg4, mem[ceil32(arg5.length) + calldata.size + 140 len 20], arg1, arg2);
                if ext_code.size(arg2) > 0:
                    require ext_code.size(arg2)
                    call arg2.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                         gas gas_remaining wei
                        args mem[ceil32(arg5.length) + calldata.size + 140 len 20], address(arg1), arg3, arg4, Array(len=arg5.length, data=arg5[all])
                    if not ext_call.success:
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    require return_data.size >= 32
                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                    if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
        if this.address != msg.sender:
            mem[ceil32(arg5.length) + 132] = arg1
            require ext_code.size(stor7)
            staticcall stor7.proxies(address arg1) with:
                    gas gas_remaining wei
                   args arg1
            mem[ceil32(arg5.length) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 0, ext_call.return_data[4 len 28] == ext_call.return_data[12 len 20]
            if ext_call.return_data[12 len 20] != msg.sender:
                if not stor1[address(arg1)][address(msg.sender)]:
                    revert with 0, 'ERC1155: caller is not owner nor approved'
            if not arg2:
                revert with 0, 'ERC1155: transfer to the zero address'
            if this.address != msg.sender:
                mem[ceil32(arg5.length) + ceil32(return_data.size) + 128] = 1
                if balanceOf[arg3][address(arg1)] < arg4:
                    revert with 0, 'ERC1155: insufficient balance for transfer'
                balanceOf[arg3][address(arg1)] -= arg4
                if balanceOf[arg3][address(arg2)] > -arg4 - 1:
                    revert with 'NH{q', 17
                balanceOf[arg3][address(arg2)] += arg4
                emit TransferSingle(arg3, arg4, msg.sender, arg1, arg2);
                if ext_code.size(arg2) <= 0:
                mem[ceil32(arg5.length) + ceil32(return_data.size) + 260] = msg.sender
                mem[ceil32(arg5.length) + ceil32(return_data.size) + 292] = arg1
                mem[ceil32(arg5.length) + ceil32(return_data.size) + 324] = arg3
                mem[ceil32(arg5.length) + ceil32(return_data.size) + 356] = arg4
                mem[ceil32(arg5.length) + ceil32(return_data.size) + 388] = 160
                mem[ceil32(arg5.length) + ceil32(return_data.size) + 420] = arg5.length
                mem[ceil32(arg5.length) + ceil32(return_data.size) + 452 len ceil32(arg5.length)] = arg5[all], mem[arg5.length + 128 len ceil32(arg5.length) - arg5.length]
                if ceil32(arg5.length) > arg5.length:
                    mem[ceil32(arg5.length) + ceil32(return_data.size) + arg5.length + 452] = 0
                require ext_code.size(arg2)
                call arg2.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                     gas gas_remaining wei
                    args msg.sender, address(arg1), arg3, arg4, Array(len=arg5.length, data=arg5[all])
                mem[ceil32(arg5.length) + ceil32(return_data.size) + 256] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                require return_data.size >= 32
                require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                if Mask(32, 224, ext_call.return_data[0]) == 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                mem[ceil32(arg5.length) + (2 * ceil32(return_data.size)) + 256] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[ceil32(arg5.length) + (2 * ceil32(return_data.size)) + 260] = 32
                mem[ceil32(arg5.length) + (2 * ceil32(return_data.size)) + 292] = 40
                mem[ceil32(arg5.length) + (2 * ceil32(return_data.size)) + 324] = 'ERC1155: ERC1155Receiver rejecte'
                mem[ceil32(arg5.length) + (2 * ceil32(return_data.size)) + 356] = 'd tokens'
                revert with memory
                  from ceil32(arg5.length) + (2 * ceil32(return_data.size)) + 256
                   len ceil32(return_data.size) + 132
            mem[ceil32(arg5.length) + ceil32(return_data.size) + 128] = calldata.size
            mem[ceil32(arg5.length) + ceil32(return_data.size) + 160 len calldata.size] = call.data[0 len calldata.size]
            if balanceOf[arg3][address(arg1)] < arg4:
                revert with 0, 'ERC1155: insufficient balance for transfer'
            balanceOf[arg3][address(arg1)] -= arg4
            if balanceOf[arg3][address(arg2)] > -arg4 - 1:
                revert with 'NH{q', 17
            balanceOf[arg3][address(arg2)] += arg4
            emit TransferSingle(arg3, arg4, mem[ceil32(arg5.length) + ceil32(return_data.size) + calldata.size + 140 len 20], arg1, arg2);
            if ext_code.size(arg2) <= 0:
            mem[ceil32(arg5.length) + ceil32(return_data.size) + ceil32(calldata.size) + 292] = mem[ceil32(arg5.length) + ceil32(return_data.size) + calldata.size + 140 len 20]
            mem[ceil32(arg5.length) + ceil32(return_data.size) + ceil32(calldata.size) + 324] = arg1
            mem[ceil32(arg5.length) + ceil32(return_data.size) + ceil32(calldata.size) + 356] = arg3
            mem[ceil32(arg5.length) + ceil32(return_data.size) + ceil32(calldata.size) + 388] = arg4
            mem[ceil32(arg5.length) + ceil32(return_data.size) + ceil32(calldata.size) + 420] = 160
            mem[ceil32(arg5.length) + ceil32(return_data.size) + ceil32(calldata.size) + 452] = arg5.length
            mem[ceil32(arg5.length) + ceil32(return_data.size) + ceil32(calldata.size) + 484 len ceil32(arg5.length)] = arg5[all], mem[arg5.length + 128 len ceil32(arg5.length) - arg5.length]
            if ceil32(arg5.length) > arg5.length:
                mem[ceil32(arg5.length) + ceil32(return_data.size) + ceil32(calldata.size) + arg5.length + 484] = 0
            require ext_code.size(arg2)
            call arg2.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                 gas gas_remaining wei
                args mem[ceil32(arg5.length) + ceil32(return_data.size) + calldata.size + 140 len 20], address(arg1), arg3, arg4, Array(len=arg5.length, data=arg5[all])
            mem[ceil32(arg5.length) + ceil32(return_data.size) + ceil32(calldata.size) + 288] = ext_call.return_data[0]
            if not ext_call.success:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            require return_data.size >= 32
            require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
            if Mask(32, 224, ext_call.return_data[0]) == 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
            mem[ceil32(arg5.length) + (2 * ceil32(return_data.size)) + ceil32(calldata.size) + 288] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[ceil32(arg5.length) + (2 * ceil32(return_data.size)) + ceil32(calldata.size) + 292] = 32
            mem[ceil32(arg5.length) + (2 * ceil32(return_data.size)) + ceil32(calldata.size) + 324] = 40
            mem[ceil32(arg5.length) + (2 * ceil32(return_data.size)) + ceil32(calldata.size) + 356] = 'ERC1155: ERC1155Receiver rejecte'
            mem[ceil32(arg5.length) + (2 * ceil32(return_data.size)) + ceil32(calldata.size) + 388] = 'd tokens'
            revert with memory
              from ceil32(arg5.length) + (2 * ceil32(return_data.size)) + ceil32(calldata.size) + 288
               len ceil32(return_data.size) + 132
        mem[ceil32(arg5.length) + 128] = calldata.size
        mem[ceil32(arg5.length) + 160 len calldata.size] = call.data[0 len calldata.size]
        mem[ceil32(arg5.length) + ceil32(calldata.size) + 164] = arg1
        require ext_code.size(stor7)
        staticcall stor7.proxies(address arg1) with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] != mem[ceil32(arg5.length) + calldata.size + 140 len 20]:
            if not stor1[address(arg1)][address(mem[ceil32(arg5.length) + calldata.size + 128])]:
                revert with 0, 'ERC1155: caller is not owner nor approved'
    else:
        mem[ceil32(arg5.length) + 128] = calldata.size
        mem[ceil32(arg5.length) + 160 len calldata.size] = call.data[0 len calldata.size]
        if arg1 == mem[ceil32(arg5.length) + calldata.size + 140 len 20]:
            if not arg2:
                revert with 0, 'ERC1155: transfer to the zero address'
            if this.address != msg.sender:
                if balanceOf[arg3][address(arg1)] < arg4:
                    revert with 0, 'ERC1155: insufficient balance for transfer'
                balanceOf[arg3][address(arg1)] -= arg4
                if balanceOf[arg3][address(arg2)] > -arg4 - 1:
                    revert with 'NH{q', 17
                balanceOf[arg3][address(arg2)] += arg4
                emit TransferSingle(arg3, arg4, msg.sender, arg1, arg2);
                if ext_code.size(arg2) > 0:
                    require ext_code.size(arg2)
                    call arg2.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                         gas gas_remaining wei
                        args msg.sender, address(arg1), arg3, arg4, Array(len=arg5.length, data=arg5[all])
                    if not ext_call.success:
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    require return_data.size >= 32
                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                    if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
            else:
                mem[ceil32(arg5.length) + ceil32(calldata.size) + 160] = calldata.size
                mem[ceil32(arg5.length) + ceil32(calldata.size) + 192 len calldata.size] = call.data[0 len calldata.size]
                mem[ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 224] = arg3
                mem[ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 256] = 1
                mem[ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 288] = arg4
                if balanceOf[arg3][address(arg1)] < arg4:
                    revert with 0, 'ERC1155: insufficient balance for transfer'
                balanceOf[arg3][address(arg1)] -= arg4
                if balanceOf[arg3][address(arg2)] > -arg4 - 1:
                    revert with 'NH{q', 17
                balanceOf[arg3][address(arg2)] += arg4
                mem[ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 320] = arg3
                mem[ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 352] = arg4
                emit TransferSingle(arg3, arg4, mem[ceil32(arg5.length) + ceil32(calldata.size) + calldata.size + 172 len 20], arg1, arg2);
                if ext_code.size(arg2) > 0:
                    mem[ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 320] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
                    mem[ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 324] = mem[ceil32(arg5.length) + ceil32(calldata.size) + calldata.size + 172 len 20]
                    mem[ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 356] = arg1
                    mem[ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 388] = arg3
                    mem[ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 420] = arg4
                    mem[ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 452] = 160
                    mem[ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 484] = arg5.length
                    mem[ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 516 len ceil32(arg5.length)] = arg5[all], mem[arg5.length + 128 len ceil32(arg5.length) - arg5.length]
                    if ceil32(arg5.length) > arg5.length:
                        mem[ceil32(arg5.length) + (2 * ceil32(calldata.size)) + arg5.length + 516] = 0
                    require ext_code.size(arg2)
                    call arg2.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                         gas gas_remaining wei
                        args mem[ceil32(arg5.length) + ceil32(calldata.size) + calldata.size + 172 len 20], address(arg1), arg3, arg4, Array(len=arg5.length, data=arg5[all])
                    if not ext_call.success:
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    require return_data.size >= 32
                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                    if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
        if msg.sender == this.address:
            mem[ceil32(arg5.length) + ceil32(calldata.size) + 160] = calldata.size
            mem[ceil32(arg5.length) + ceil32(calldata.size) + 192 len calldata.size] = call.data[0 len calldata.size]
            mem[ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 196] = arg1
            require ext_code.size(stor7)
            staticcall stor7.proxies(address arg1) with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if ext_call.return_data[12 len 20] != mem[ceil32(arg5.length) + ceil32(calldata.size) + calldata.size + 172 len 20]:
                if not stor1[address(arg1)][address(mem[ceil32(arg5.length) + ceil32(calldata.size) + calldata.size + 160])]:
                    revert with 0, 'ERC1155: caller is not owner nor approved'
            if not arg2:
                revert with 0, 'ERC1155: transfer to the zero address'
            if this.address != msg.sender:
                if balanceOf[arg3][address(arg1)] < arg4:
                    revert with 0, 'ERC1155: insufficient balance for transfer'
                balanceOf[arg3][address(arg1)] -= arg4
                if balanceOf[arg3][address(arg2)] > -arg4 - 1:
                    revert with 'NH{q', 17
                balanceOf[arg3][address(arg2)] += arg4
                emit TransferSingle(arg3, arg4, msg.sender, arg1, arg2);
                if ext_code.size(arg2) <= 0:
                mem[ceil32(arg5.length) + (2 * ceil32(calldata.size)) + ceil32(return_data.size) + 324] = msg.sender
                mem[ceil32(arg5.length) + (2 * ceil32(calldata.size)) + ceil32(return_data.size) + 356] = arg1
                mem[ceil32(arg5.length) + (2 * ceil32(calldata.size)) + ceil32(return_data.size) + 388] = arg3
                mem[ceil32(arg5.length) + (2 * ceil32(calldata.size)) + ceil32(return_data.size) + 420] = arg4
                mem[ceil32(arg5.length) + (2 * ceil32(calldata.size)) + ceil32(return_data.size) + 452] = 160
                mem[ceil32(arg5.length) + (2 * ceil32(calldata.size)) + ceil32(return_data.size) + 484] = arg5.length
                mem[ceil32(arg5.length) + (2 * ceil32(calldata.size)) + ceil32(return_data.size) + 516 len ceil32(arg5.length)] = arg5[all], mem[arg5.length + 128 len ceil32(arg5.length) - arg5.length]
                if ceil32(arg5.length) > arg5.length:
                    mem[ceil32(arg5.length) + (2 * ceil32(calldata.size)) + ceil32(return_data.size) + arg5.length + 516] = 0
                require ext_code.size(arg2)
                call arg2.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                     gas gas_remaining wei
                    args msg.sender, address(arg1), arg3, arg4, Array(len=arg5.length, data=arg5[all])
                mem[ceil32(arg5.length) + (2 * ceil32(calldata.size)) + ceil32(return_data.size) + 320] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                require return_data.size >= 32
                require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                if Mask(32, 224, ext_call.return_data[0]) == 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                mem[ceil32(arg5.length) + (2 * ceil32(calldata.size)) + (2 * ceil32(return_data.size)) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[ceil32(arg5.length) + (2 * ceil32(calldata.size)) + (2 * ceil32(return_data.size)) + 324] = 32
                mem[ceil32(arg5.length) + (2 * ceil32(calldata.size)) + (2 * ceil32(return_data.size)) + 356] = 40
                mem[ceil32(arg5.length) + (2 * ceil32(calldata.size)) + (2 * ceil32(return_data.size)) + 388] = 'ERC1155: ERC1155Receiver rejecte'
                mem[ceil32(arg5.length) + (2 * ceil32(calldata.size)) + (2 * ceil32(return_data.size)) + 420] = 'd tokens'
                revert with memory
                  from ceil32(arg5.length) + (2 * ceil32(calldata.size)) + (2 * ceil32(return_data.size)) + 320
                   len ceil32(return_data.size) + 132
            mem[ceil32(arg5.length) + (2 * ceil32(calldata.size)) + ceil32(return_data.size) + 192] = calldata.size
            mem[ceil32(arg5.length) + (2 * ceil32(calldata.size)) + ceil32(return_data.size) + 224 len calldata.size] = call.data[0 len calldata.size]
            if balanceOf[arg3][address(arg1)] < arg4:
                revert with 0, 'ERC1155: insufficient balance for transfer'
            balanceOf[arg3][address(arg1)] -= arg4
            if balanceOf[arg3][address(arg2)] > -arg4 - 1:
                revert with 'NH{q', 17
            balanceOf[arg3][address(arg2)] += arg4
            mem[ceil32(arg5.length) + (4 * ceil32(calldata.size)) + ceil32(return_data.size) + 384] = arg4
            emit TransferSingle(arg3, arg4, mem[ceil32(arg5.length) + (2 * ceil32(calldata.size)) + ceil32(return_data.size) + calldata.size + 204 len 20], arg1, arg2);
            if ext_code.size(arg2) <= 0:
            mem[ceil32(arg5.length) + (4 * ceil32(calldata.size)) + ceil32(return_data.size) + 356] = mem[ceil32(arg5.length) + (2 * ceil32(calldata.size)) + ceil32(return_data.size) + calldata.size + 204 len 20]
            mem[ceil32(arg5.length) + (4 * ceil32(calldata.size)) + ceil32(return_data.size) + 388] = arg1
            mem[ceil32(arg5.length) + (4 * ceil32(calldata.size)) + ceil32(return_data.size) + 420] = arg3
            mem[ceil32(arg5.length) + (4 * ceil32(calldata.size)) + ceil32(return_data.size) + 452] = arg4
            mem[ceil32(arg5.length) + (4 * ceil32(calldata.size)) + ceil32(return_data.size) + 484] = 160
            mem[ceil32(arg5.length) + (4 * ceil32(calldata.size)) + ceil32(return_data.size) + 516] = arg5.length
            mem[ceil32(arg5.length) + (4 * ceil32(calldata.size)) + ceil32(return_data.size) + 548 len ceil32(arg5.length)] = arg5[all], mem[arg5.length + 128 len ceil32(arg5.length) - arg5.length]
            if ceil32(arg5.length) > arg5.length:
                mem[ceil32(arg5.length) + (4 * ceil32(calldata.size)) + ceil32(return_data.size) + arg5.length + 548] = 0
            require ext_code.size(arg2)
            call arg2.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                 gas gas_remaining wei
                args mem[ceil32(arg5.length) + (2 * ceil32(calldata.size)) + ceil32(return_data.size) + calldata.size + 204 len 20], address(arg1), arg3, arg4, Array(len=arg5.length, data=arg5[all])
            mem[ceil32(arg5.length) + (4 * ceil32(calldata.size)) + ceil32(return_data.size) + 352] = ext_call.return_data[0]
            if not ext_call.success:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            require return_data.size >= 32
            require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
            if Mask(32, 224, ext_call.return_data[0]) == 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
            mem[ceil32(arg5.length) + (4 * ceil32(calldata.size)) + (2 * ceil32(return_data.size)) + 352] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[ceil32(arg5.length) + (4 * ceil32(calldata.size)) + (2 * ceil32(return_data.size)) + 356] = 32
            mem[ceil32(arg5.length) + (4 * ceil32(calldata.size)) + (2 * ceil32(return_data.size)) + 388] = 40
            mem[ceil32(arg5.length) + (4 * ceil32(calldata.size)) + (2 * ceil32(return_data.size)) + 420] = 'ERC1155: ERC1155Receiver rejecte'
            mem[ceil32(arg5.length) + (4 * ceil32(calldata.size)) + (2 * ceil32(return_data.size)) + 452] = 'd tokens'
            revert with memory
              from ceil32(arg5.length) + (4 * ceil32(calldata.size)) + (2 * ceil32(return_data.size)) + 352
               len ceil32(return_data.size) + 132
        mem[ceil32(arg5.length) + ceil32(calldata.size) + 164] = arg1
        require ext_code.size(stor7)
        staticcall stor7.proxies(address arg1) with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] != msg.sender:
            if not stor1[address(arg1)][address(msg.sender)]:
                revert with 0, 'ERC1155: caller is not owner nor approved'
    if not arg2:
        revert with 0, 'ERC1155: transfer to the zero address'
    if this.address != msg.sender:
        if balanceOf[arg3][address(arg1)] < arg4:
            revert with 0, 'ERC1155: insufficient balance for transfer'
        balanceOf[arg3][address(arg1)] -= arg4
        if balanceOf[arg3][address(arg2)] > -arg4 - 1:
            revert with 'NH{q', 17
        balanceOf[arg3][address(arg2)] += arg4
        emit TransferSingle(arg3, arg4, msg.sender, arg1, arg2);
        if ext_code.size(arg2) <= 0:
        mem[ceil32(arg5.length) + ceil32(calldata.size) + ceil32(return_data.size) + 292] = msg.sender
        mem[ceil32(arg5.length) + ceil32(calldata.size) + ceil32(return_data.size) + 324] = arg1
        mem[ceil32(arg5.length) + ceil32(calldata.size) + ceil32(return_data.size) + 356] = arg3
        mem[ceil32(arg5.length) + ceil32(calldata.size) + ceil32(return_data.size) + 388] = arg4
        mem[ceil32(arg5.length) + ceil32(calldata.size) + ceil32(return_data.size) + 420] = 160
        mem[ceil32(arg5.length) + ceil32(calldata.size) + ceil32(return_data.size) + 452] = arg5.length
        mem[ceil32(arg5.length) + ceil32(calldata.size) + ceil32(return_data.size) + 484 len ceil32(arg5.length)] = arg5[all], mem[arg5.length + 128 len ceil32(arg5.length) - arg5.length]
        if ceil32(arg5.length) > arg5.length:
            mem[ceil32(arg5.length) + ceil32(calldata.size) + ceil32(return_data.size) + arg5.length + 484] = 0
        require ext_code.size(arg2)
        call arg2.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
             gas gas_remaining wei
            args msg.sender, address(arg1), arg3, arg4, Array(len=arg5.length, data=arg5[all])
        mem[ceil32(arg5.length) + ceil32(calldata.size) + ceil32(return_data.size) + 288] = ext_call.return_data[0]
        if not ext_call.success:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        require return_data.size >= 32
        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
        if Mask(32, 224, ext_call.return_data[0]) == 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
        mem[ceil32(arg5.length) + ceil32(calldata.size) + (2 * ceil32(return_data.size)) + 288] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[ceil32(arg5.length) + ceil32(calldata.size) + (2 * ceil32(return_data.size)) + 292] = 32
        mem[ceil32(arg5.length) + ceil32(calldata.size) + (2 * ceil32(return_data.size)) + 324] = 40
        mem[ceil32(arg5.length) + ceil32(calldata.size) + (2 * ceil32(return_data.size)) + 356] = 'ERC1155: ERC1155Receiver rejecte'
        mem[ceil32(arg5.length) + ceil32(calldata.size) + (2 * ceil32(return_data.size)) + 388] = 'd tokens'
        revert with memory
          from ceil32(arg5.length) + ceil32(calldata.size) + (2 * ceil32(return_data.size)) + 288
           len ceil32(return_data.size) + 132
    mem[ceil32(arg5.length) + ceil32(calldata.size) + ceil32(return_data.size) + 160] = calldata.size
    mem[ceil32(arg5.length) + ceil32(calldata.size) + ceil32(return_data.size) + 192 len calldata.size] = call.data[0 len calldata.size]
    mem[ceil32(arg5.length) + (2 * ceil32(calldata.size)) + ceil32(return_data.size) + 224] = arg3
    mem[ceil32(arg5.length) + (2 * ceil32(calldata.size)) + ceil32(return_data.size) + 256] = 1
    mem[ceil32(arg5.length) + (2 * ceil32(calldata.size)) + ceil32(return_data.size) + 288] = arg4
    if balanceOf[arg3][address(arg1)] < arg4:
        revert with 0, 'ERC1155: insufficient balance for transfer'
    balanceOf[arg3][address(arg1)] -= arg4
    if balanceOf[arg3][address(arg2)] > -arg4 - 1:
        revert with 'NH{q', 17
    balanceOf[arg3][address(arg2)] += arg4
    mem[ceil32(arg5.length) + (2 * ceil32(calldata.size)) + ceil32(return_data.size) + 320] = arg3
    mem[ceil32(arg5.length) + (2 * ceil32(calldata.size)) + ceil32(return_data.size) + 352] = arg4
    emit TransferSingle(arg3, arg4, mem[ceil32(arg5.length) + ceil32(calldata.size) + ceil32(return_data.size) + calldata.size + 172 len 20], arg1, arg2);
    if ext_code.size(arg2) <= 0:
    mem[ceil32(arg5.length) + (2 * ceil32(calldata.size)) + ceil32(return_data.size) + 320] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg5.length) + (2 * ceil32(calldata.size)) + ceil32(return_data.size) + 324] = mem[ceil32(arg5.length) + ceil32(calldata.size) + ceil32(return_data.size) + calldata.size + 172 len 20]
    mem[ceil32(arg5.length) + (2 * ceil32(calldata.size)) + ceil32(return_data.size) + 356] = arg1
    mem[ceil32(arg5.length) + (2 * ceil32(calldata.size)) + ceil32(return_data.size) + 388] = arg3
    mem[ceil32(arg5.length) + (2 * ceil32(calldata.size)) + ceil32(return_data.size) + 420] = arg4
    mem[ceil32(arg5.length) + (2 * ceil32(calldata.size)) + ceil32(return_data.size) + 452] = 160
    mem[ceil32(arg5.length) + (2 * ceil32(calldata.size)) + ceil32(return_data.size) + 484] = arg5.length
    mem[ceil32(arg5.length) + (2 * ceil32(calldata.size)) + ceil32(return_data.size) + 516 len ceil32(arg5.length)] = arg5[all], mem[arg5.length + 128 len ceil32(arg5.length) - arg5.length]
    if ceil32(arg5.length) > arg5.length:
        mem[ceil32(arg5.length) + (2 * ceil32(calldata.size)) + ceil32(return_data.size) + arg5.length + 516] = 0
    require ext_code.size(arg2)
    call arg2.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
         gas gas_remaining wei
        args mem[ceil32(arg5.length) + ceil32(calldata.size) + ceil32(return_data.size) + calldata.size + 172 len 20], address(arg1), arg3, arg4, Array(len=arg5.length, data=arg5[all])
    mem[ceil32(arg5.length) + (2 * ceil32(calldata.size)) + ceil32(return_data.size) + 320] = ext_call.return_data[0]
    if not ext_call.success:
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    require return_data.size >= 32
    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
    if Mask(32, 224, ext_call.return_data[0]) == 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
    mem[ceil32(arg5.length) + (2 * ceil32(calldata.size)) + (2 * ceil32(return_data.size)) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg5.length) + (2 * ceil32(calldata.size)) + (2 * ceil32(return_data.size)) + 324] = 32
    mem[ceil32(arg5.length) + (2 * ceil32(calldata.size)) + (2 * ceil32(return_data.size)) + 356] = 40
    mem[ceil32(arg5.length) + (2 * ceil32(calldata.size)) + (2 * ceil32(return_data.size)) + 388] = 'ERC1155: ERC1155Receiver rejecte'
    mem[ceil32(arg5.length) + (2 * ceil32(calldata.size)) + (2 * ceil32(return_data.size)) + 420] = 'd tokens'
    revert with memory
      from ceil32(arg5.length) + (2 * ceil32(calldata.size)) + (2 * ceil32(return_data.size)) + 320
       len ceil32(return_data.size) + 132
}

function uri(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not creators[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155Tradable#uri: NONEXISTENT_TOKEN'
    if stor10[arg1].field_0:
        if stor10[arg1].field_0 == stor10[arg1].field_1 < 32:
            revert with 'NH{q', 34
        if stor10[arg1].field_0:
            if stor10[arg1].field_0 == stor10[arg1].field_1 < 32:
                revert with 'NH{q', 34
            if not stor10[arg1].field_1:
                if stor10[arg1].field_1 <= 0:
                    if bool(stor2.length):
                        if bool(stor2.length) == stor2.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if bool(stor2.length):
                            if bool(stor2.length) == stor2.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if stor2.length.field_1:
                                if 31 < stor2.length.field_1:
                                    mem[ceil32(stor10[arg1].field_1) + 160] = uint256(stor2.field_0)
                                    idx = ceil32(stor10[arg1].field_1) + 160
                                    s = 0
                                    while ceil32(stor10[arg1].field_1) + stor2.length.field_1 + 128 > idx:
                                        mem[idx + 32] = stor2[s].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    return Array(len=2 * Mask(256, -1, stor2.length.field_1), data=mem[ceil32(stor10[arg1].field_1) + 160 len ceil32(stor2.length.field_1)]), 
                                mem[ceil32(stor10[arg1].field_1) + 160] = 256 * stor2.length.field_8
                        else:
                            if bool(stor2.length) == stor2.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if stor2.length.field_1:
                                if 31 < stor2.length.field_1:
                                    mem[ceil32(stor10[arg1].field_1) + 160] = uint256(stor2.field_0)
                                    idx = ceil32(stor10[arg1].field_1) + 160
                                    s = 0
                                    while ceil32(stor10[arg1].field_1) + stor2.length.field_1 + 128 > idx:
                                        mem[idx + 32] = stor2[s].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    return Array(len=2 * Mask(256, -1, stor2.length.field_1), data=mem[ceil32(stor10[arg1].field_1) + 160 len ceil32(stor2.length.field_1)]), 
                                mem[ceil32(stor10[arg1].field_1) + 160] = 256 * stor2.length.field_8
                        mem[ceil32(stor10[arg1].field_1) + ceil32(stor2.length.field_1) + 224 len ceil32(stor2.length.field_1)] = mem[ceil32(stor10[arg1].field_1) + 160 len ceil32(stor2.length.field_1)]
                        if ceil32(stor2.length.field_1) > stor2.length.field_1:
                            mem[ceil32(stor10[arg1].field_1) + ceil32(stor2.length.field_1) + stor2.length.field_1 + 224] = 0
                        return Array(len=2 * Mask(256, -1, stor2.length.field_1), data=mem[ceil32(stor10[arg1].field_1) + 160 len ceil32(stor2.length.field_1)], mem[ceil32(stor10[arg1].field_1) + (2 * ceil32(stor2.length.field_1)) + 224 len 2 * ceil32(stor2.length.field_1)]), 
                    if bool(stor2.length) == stor2.length.field_1 < 32:
                        revert with 'NH{q', 34
                    if bool(stor2.length):
                        if bool(stor2.length) == stor2.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if stor2.length.field_1:
                            if 31 < stor2.length.field_1:
                                mem[ceil32(stor10[arg1].field_1) + 160] = uint256(stor2.field_0)
                                idx = ceil32(stor10[arg1].field_1) + 160
                                s = 0
                                while ceil32(stor10[arg1].field_1) + stor2.length.field_1 + 128 > idx:
                                    mem[idx + 32] = stor2[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                return Array(len=stor2.length % 128, data=mem[ceil32(stor10[arg1].field_1) + 160 len ceil32(stor2.length.field_1)])
                            mem[ceil32(stor10[arg1].field_1) + 160] = 256 * stor2.length.field_8
                    else:
                        if bool(stor2.length) == stor2.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if stor2.length.field_1:
                            if 31 < stor2.length.field_1:
                                mem[ceil32(stor10[arg1].field_1) + 160] = uint256(stor2.field_0)
                                idx = ceil32(stor10[arg1].field_1) + 160
                                s = 0
                                while ceil32(stor10[arg1].field_1) + stor2.length.field_1 + 128 > idx:
                                    mem[idx + 32] = stor2[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                return Array(len=stor2.length % 128, data=mem[ceil32(stor10[arg1].field_1) + 160 len ceil32(stor2.length.field_1)])
                            mem[ceil32(stor10[arg1].field_1) + 160] = 256 * stor2.length.field_8
                    mem[ceil32(stor10[arg1].field_1) + ceil32(stor2.length.field_1) + 224 len ceil32(stor2.length.field_1)] = mem[ceil32(stor10[arg1].field_1) + 160 len ceil32(stor2.length.field_1)]
                    if ceil32(stor2.length.field_1) > stor2.length.field_1:
                        mem[ceil32(stor10[arg1].field_1) + ceil32(stor2.length.field_1) + stor2.length.field_1 + 224] = 0
                    return Array(len=stor2.length % 128, data=mem[ceil32(stor10[arg1].field_1) + 160 len ceil32(stor2.length.field_1)], mem[ceil32(stor10[arg1].field_1) + (2 * ceil32(stor2.length.field_1)) + 224 len 2 * ceil32(stor2.length.field_1)]), 
                if not stor10[arg1].field_0:
                    if stor10[arg1].field_0 == stor10[arg1].field_1 < 32:
                        revert with 'NH{q', 34
                    if stor10[arg1].field_0:
                        if stor10[arg1].field_0 == stor10[arg1].field_1 < 32:
                            revert with 'NH{q', 34
                        if stor10[arg1].field_1:
                            if 31 < stor10[arg1].field_1:
                                mem[ceil32(stor10[arg1].field_1) + 160] = stor10[arg1].field_0
                                idx = ceil32(stor10[arg1].field_1) + 160
                                s = 0
                                while ceil32(stor10[arg1].field_1) + stor10[arg1].field_1 + 128 > idx:
                                    mem[idx + 32] = stor10[arg1][s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                return Array(len=stor10[arg1].field_0, data=mem[ceil32(stor10[arg1].field_1) + 160 len ceil32(stor10[arg1].field_1)])
                            mem[ceil32(stor10[arg1].field_1) + 160] = 256 * stor10[arg1].field_8
                    else:
                        if stor10[arg1].field_0 == stor10[arg1].field_1 < 32:
                            revert with 'NH{q', 34
                        if stor10[arg1].field_1:
                            if 31 < stor10[arg1].field_1:
                                mem[ceil32(stor10[arg1].field_1) + 160] = stor10[arg1].field_0
                                idx = ceil32(stor10[arg1].field_1) + 160
                                s = 0
                                while ceil32(stor10[arg1].field_1) + stor10[arg1].field_1 + 128 > idx:
                                    mem[idx + 32] = stor10[arg1][s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                return Array(len=stor10[arg1].field_0, data=mem[ceil32(stor10[arg1].field_1) + 160 len ceil32(stor10[arg1].field_1)])
                            mem[ceil32(stor10[arg1].field_1) + 160] = 256 * stor10[arg1].field_8
                    mem[ceil32(stor10[arg1].field_1) + ceil32(stor10[arg1].field_1) + 224 len ceil32(stor10[arg1].field_1)] = mem[ceil32(stor10[arg1].field_1) + 160 len ceil32(stor10[arg1].field_1)]
                    if ceil32(stor10[arg1].field_1) > stor10[arg1].field_1:
                        mem[ceil32(stor10[arg1].field_1) + ceil32(stor10[arg1].field_1) + stor10[arg1].field_1 + 224] = 0
                    return Array(len=stor10[arg1].field_0, data=mem[ceil32(stor10[arg1].field_1) + 160 len ceil32(stor10[arg1].field_1)], mem[ceil32(stor10[arg1].field_1) + (2 * ceil32(stor10[arg1].field_1)) + 224 len 2 * ceil32(stor10[arg1].field_1)]), 
                if stor10[arg1].field_0 == stor10[arg1].field_1 < 32:
                    revert with 'NH{q', 34
                if stor10[arg1].field_0:
                    if stor10[arg1].field_0 == stor10[arg1].field_1 < 32:
                        revert with 'NH{q', 34
                    if not stor10[arg1].field_1:
                        mem[(2 * ceil32(stor10[arg1].field_1)) + 160] = 32
                        mem[(2 * ceil32(stor10[arg1].field_1)) + 192] = stor10[arg1].field_1
                        mem[(2 * ceil32(stor10[arg1].field_1)) + 224 len ceil32(stor10[arg1].field_1)] = mem[ceil32(stor10[arg1].field_1) + 160 len ceil32(stor10[arg1].field_1)]
                        if ceil32(stor10[arg1].field_1) > stor10[arg1].field_1:
                            mem[(2 * ceil32(stor10[arg1].field_1)) + stor10[arg1].field_1 + 224] = 0
                        return memory
                          from (2 * ceil32(stor10[arg1].field_1)) + 160
                           len (6 * ceil32(stor10[arg1].field_1)) + 64
                    if 31 >= stor10[arg1].field_1:
                        mem[ceil32(stor10[arg1].field_1) + 160] = 256 * stor10[arg1].field_8
                        mem[(2 * ceil32(stor10[arg1].field_1)) + 160] = 32
                        mem[(2 * ceil32(stor10[arg1].field_1)) + 192] = stor10[arg1].field_1
                        mem[(2 * ceil32(stor10[arg1].field_1)) + 224 len ceil32(stor10[arg1].field_1)] = mem[ceil32(stor10[arg1].field_1) + 160 len ceil32(stor10[arg1].field_1)]
                        if ceil32(stor10[arg1].field_1) > stor10[arg1].field_1:
                            mem[(2 * ceil32(stor10[arg1].field_1)) + stor10[arg1].field_1 + 224] = 0
                        return memory
                          from (2 * ceil32(stor10[arg1].field_1)) + 160
                           len (6 * ceil32(stor10[arg1].field_1)) + 64
                    mem[ceil32(stor10[arg1].field_1) + 160] = stor10[arg1].field_0
                    idx = ceil32(stor10[arg1].field_1) + 160
                    s = 0
                    while ceil32(stor10[arg1].field_1) + stor10[arg1].field_1 + 128 > idx:
                        mem[idx + 32] = stor10[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                else:
                    if stor10[arg1].field_0 == stor10[arg1].field_1 < 32:
                        revert with 'NH{q', 34
                    if not stor10[arg1].field_1:
                        mem[(2 * ceil32(stor10[arg1].field_1)) + 160] = 32
                        mem[(2 * ceil32(stor10[arg1].field_1)) + 192] = stor10[arg1].field_1
                        mem[(2 * ceil32(stor10[arg1].field_1)) + 224 len ceil32(stor10[arg1].field_1)] = mem[ceil32(stor10[arg1].field_1) + 160 len ceil32(stor10[arg1].field_1)]
                        if ceil32(stor10[arg1].field_1) > stor10[arg1].field_1:
                            mem[(2 * ceil32(stor10[arg1].field_1)) + stor10[arg1].field_1 + 224] = 0
                        return memory
                          from (2 * ceil32(stor10[arg1].field_1)) + 160
                           len (6 * ceil32(stor10[arg1].field_1)) + 64
                    if 31 >= stor10[arg1].field_1:
                        mem[ceil32(stor10[arg1].field_1) + 160] = 256 * stor10[arg1].field_8
                        mem[(2 * ceil32(stor10[arg1].field_1)) + 160] = 32
                        mem[(2 * ceil32(stor10[arg1].field_1)) + 192] = stor10[arg1].field_1
                        mem[(2 * ceil32(stor10[arg1].field_1)) + 224 len ceil32(stor10[arg1].field_1)] = mem[ceil32(stor10[arg1].field_1) + 160 len ceil32(stor10[arg1].field_1)]
                        if ceil32(stor10[arg1].field_1) > stor10[arg1].field_1:
                            mem[(2 * ceil32(stor10[arg1].field_1)) + stor10[arg1].field_1 + 224] = 0
                        return memory
                          from (2 * ceil32(stor10[arg1].field_1)) + 160
                           len (6 * ceil32(stor10[arg1].field_1)) + 64
                    mem[ceil32(stor10[arg1].field_1) + 160] = stor10[arg1].field_0
                    idx = ceil32(stor10[arg1].field_1) + 160
                    s = 0
                    while ceil32(stor10[arg1].field_1) + stor10[arg1].field_1 + 128 > idx:
                        mem[idx + 32] = stor10[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                mem[(2 * ceil32(stor10[arg1].field_1)) + 160] = 32
                mem[(2 * ceil32(stor10[arg1].field_1)) + 192] = stor10[arg1].field_1
                mem[(2 * ceil32(stor10[arg1].field_1)) + 224 len ceil32(stor10[arg1].field_1)] = mem[ceil32(stor10[arg1].field_1) + 160 len ceil32(stor10[arg1].field_1)]
                if ceil32(stor10[arg1].field_1) > stor10[arg1].field_1:
                    mem[(2 * ceil32(stor10[arg1].field_1)) + stor10[arg1].field_1 + 224] = 0
                return memory
                  from (2 * ceil32(stor10[arg1].field_1)) + 160
                   len (4 * ceil32(stor10[arg1].field_1)) + 64
            if 31 >= stor10[arg1].field_1:
                if stor10[arg1].field_1 <= 0:
                    if bool(stor2.length):
                        if bool(stor2.length) == stor2.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if bool(stor2.length):
                            if bool(stor2.length) == stor2.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if stor2.length.field_1:
                                if 31 < stor2.length.field_1:
                                    mem[ceil32(stor10[arg1].field_1) + 160] = uint256(stor2.field_0)
                                    idx = ceil32(stor10[arg1].field_1) + 160
                                    s = 0
                                    while ceil32(stor10[arg1].field_1) + stor2.length.field_1 + 128 > idx:
                                        mem[idx + 32] = stor2[s].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    return Array(len=2 * Mask(256, -1, stor2.length.field_1), data=mem[ceil32(stor10[arg1].field_1) + 160 len ceil32(stor2.length.field_1)]), 
                                mem[ceil32(stor10[arg1].field_1) + 160] = 256 * stor2.length.field_8
                        else:
                            if bool(stor2.length) == stor2.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if stor2.length.field_1:
                                if 31 < stor2.length.field_1:
                                    mem[ceil32(stor10[arg1].field_1) + 160] = uint256(stor2.field_0)
                                    idx = ceil32(stor10[arg1].field_1) + 160
                                    s = 0
                                    while ceil32(stor10[arg1].field_1) + stor2.length.field_1 + 128 > idx:
                                        mem[idx + 32] = stor2[s].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    return Array(len=2 * Mask(256, -1, stor2.length.field_1), data=mem[ceil32(stor10[arg1].field_1) + 160 len ceil32(stor2.length.field_1)]), 
                                mem[ceil32(stor10[arg1].field_1) + 160] = 256 * stor2.length.field_8
                        mem[ceil32(stor10[arg1].field_1) + ceil32(stor2.length.field_1) + 224 len ceil32(stor2.length.field_1)] = mem[ceil32(stor10[arg1].field_1) + 160 len ceil32(stor2.length.field_1)]
                        if ceil32(stor2.length.field_1) > stor2.length.field_1:
                            mem[ceil32(stor10[arg1].field_1) + ceil32(stor2.length.field_1) + stor2.length.field_1 + 224] = 0
                        return Array(len=2 * Mask(256, -1, stor2.length.field_1), data=mem[ceil32(stor10[arg1].field_1) + 160 len ceil32(stor2.length.field_1)], mem[ceil32(stor10[arg1].field_1) + (2 * ceil32(stor2.length.field_1)) + 224 len 2 * ceil32(stor2.length.field_1)]), 
                    if bool(stor2.length) == stor2.length.field_1 < 32:
                        revert with 'NH{q', 34
                    if bool(stor2.length):
                        if bool(stor2.length) == stor2.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if stor2.length.field_1:
                            if 31 < stor2.length.field_1:
                                mem[ceil32(stor10[arg1].field_1) + 160] = uint256(stor2.field_0)
                                idx = ceil32(stor10[arg1].field_1) + 160
                                s = 0
                                while ceil32(stor10[arg1].field_1) + stor2.length.field_1 + 128 > idx:
                                    mem[idx + 32] = stor2[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                return Array(len=stor2.length % 128, data=mem[ceil32(stor10[arg1].field_1) + 160 len ceil32(stor2.length.field_1)])
                            mem[ceil32(stor10[arg1].field_1) + 160] = 256 * stor2.length.field_8
                    else:
                        if bool(stor2.length) == stor2.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if stor2.length.field_1:
                            if 31 < stor2.length.field_1:
                                mem[ceil32(stor10[arg1].field_1) + 160] = uint256(stor2.field_0)
                                idx = ceil32(stor10[arg1].field_1) + 160
                                s = 0
                                while ceil32(stor10[arg1].field_1) + stor2.length.field_1 + 128 > idx:
                                    mem[idx + 32] = stor2[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                return Array(len=stor2.length % 128, data=mem[ceil32(stor10[arg1].field_1) + 160 len ceil32(stor2.length.field_1)])
                            mem[ceil32(stor10[arg1].field_1) + 160] = 256 * stor2.length.field_8
                    mem[ceil32(stor10[arg1].field_1) + ceil32(stor2.length.field_1) + 224 len ceil32(stor2.length.field_1)] = mem[ceil32(stor10[arg1].field_1) + 160 len ceil32(stor2.length.field_1)]
                    if ceil32(stor2.length.field_1) > stor2.length.field_1:
                        mem[ceil32(stor10[arg1].field_1) + ceil32(stor2.length.field_1) + stor2.length.field_1 + 224] = 0
                    return Array(len=stor2.length % 128, data=mem[ceil32(stor10[arg1].field_1) + 160 len ceil32(stor2.length.field_1)], mem[ceil32(stor10[arg1].field_1) + (2 * ceil32(stor2.length.field_1)) + 224 len 2 * ceil32(stor2.length.field_1)]), 
                if not stor10[arg1].field_0:
                    if stor10[arg1].field_0 == stor10[arg1].field_1 < 32:
                        revert with 'NH{q', 34
                    if stor10[arg1].field_0:
                        if stor10[arg1].field_0 == stor10[arg1].field_1 < 32:
                            revert with 'NH{q', 34
                        if stor10[arg1].field_1:
                            if 31 < stor10[arg1].field_1:
                                mem[ceil32(stor10[arg1].field_1) + 160] = stor10[arg1].field_0
                                idx = ceil32(stor10[arg1].field_1) + 160
                                s = 0
                                while ceil32(stor10[arg1].field_1) + stor10[arg1].field_1 + 128 > idx:
                                    mem[idx + 32] = stor10[arg1][s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                return Array(len=stor10[arg1].field_0, data=mem[ceil32(stor10[arg1].field_1) + 160 len ceil32(stor10[arg1].field_1)])
                            mem[ceil32(stor10[arg1].field_1) + 160] = 256 * stor10[arg1].field_8
                    else:
                        if stor10[arg1].field_0 == stor10[arg1].field_1 < 32:
                            revert with 'NH{q', 34
                        if stor10[arg1].field_1:
                            if 31 < stor10[arg1].field_1:
                                mem[ceil32(stor10[arg1].field_1) + 160] = stor10[arg1].field_0
                                idx = ceil32(stor10[arg1].field_1) + 160
                                s = 0
                                while ceil32(stor10[arg1].field_1) + stor10[arg1].field_1 + 128 > idx:
                                    mem[idx + 32] = stor10[arg1][s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                return Array(len=stor10[arg1].field_0, data=mem[ceil32(stor10[arg1].field_1) + 160 len ceil32(stor10[arg1].field_1)])
                            mem[ceil32(stor10[arg1].field_1) + 160] = 256 * stor10[arg1].field_8
                    mem[ceil32(stor10[arg1].field_1) + ceil32(stor10[arg1].field_1) + 224 len ceil32(stor10[arg1].field_1)] = mem[ceil32(stor10[arg1].field_1) + 160 len ceil32(stor10[arg1].field_1)]
                    if ceil32(stor10[arg1].field_1) > stor10[arg1].field_1:
                        mem[ceil32(stor10[arg1].field_1) + ceil32(stor10[arg1].field_1) + stor10[arg1].field_1 + 224] = 0
                    return Array(len=stor10[arg1].field_0, data=mem[ceil32(stor10[arg1].field_1) + 160 len ceil32(stor10[arg1].field_1)], mem[ceil32(stor10[arg1].field_1) + (2 * ceil32(stor10[arg1].field_1)) + 224 len 2 * ceil32(stor10[arg1].field_1)]), 
                if stor10[arg1].field_0 == stor10[arg1].field_1 < 32:
                    revert with 'NH{q', 34
                if stor10[arg1].field_0:
                    if stor10[arg1].field_0 == stor10[arg1].field_1 < 32:
                        revert with 'NH{q', 34
                    if not stor10[arg1].field_1:
                        mem[(2 * ceil32(stor10[arg1].field_1)) + 160] = 32
                        mem[(2 * ceil32(stor10[arg1].field_1)) + 192] = stor10[arg1].field_1
                        mem[(2 * ceil32(stor10[arg1].field_1)) + 224 len ceil32(stor10[arg1].field_1)] = mem[ceil32(stor10[arg1].field_1) + 160 len ceil32(stor10[arg1].field_1)]
                        if ceil32(stor10[arg1].field_1) > stor10[arg1].field_1:
                            mem[(2 * ceil32(stor10[arg1].field_1)) + stor10[arg1].field_1 + 224] = 0
                        return memory
                          from (2 * ceil32(stor10[arg1].field_1)) + 160
                           len (6 * ceil32(stor10[arg1].field_1)) + 64
                    if 31 >= stor10[arg1].field_1:
                        mem[ceil32(stor10[arg1].field_1) + 160] = 256 * stor10[arg1].field_8
                        mem[(2 * ceil32(stor10[arg1].field_1)) + 160] = 32
                        mem[(2 * ceil32(stor10[arg1].field_1)) + 192] = stor10[arg1].field_1
                        mem[(2 * ceil32(stor10[arg1].field_1)) + 224 len ceil32(stor10[arg1].field_1)] = mem[ceil32(stor10[arg1].field_1) + 160 len ceil32(stor10[arg1].field_1)]
                        if ceil32(stor10[arg1].field_1) > stor10[arg1].field_1:
                            mem[(2 * ceil32(stor10[arg1].field_1)) + stor10[arg1].field_1 + 224] = 0
                        return memory
                          from (2 * ceil32(stor10[arg1].field_1)) + 160
                           len (6 * ceil32(stor10[arg1].field_1)) + 64
                    mem[ceil32(stor10[arg1].field_1) + 160] = stor10[arg1].field_0
                    idx = ceil32(stor10[arg1].field_1) + 160
                    s = 0
                    while ceil32(stor10[arg1].field_1) + stor10[arg1].field_1 + 128 > idx:
                        mem[idx + 32] = stor10[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                else:
                    if stor10[arg1].field_0 == stor10[arg1].field_1 < 32:
                        revert with 'NH{q', 34
                    if not stor10[arg1].field_1:
                        mem[(2 * ceil32(stor10[arg1].field_1)) + 160] = 32
                        mem[(2 * ceil32(stor10[arg1].field_1)) + 192] = stor10[arg1].field_1
                        mem[(2 * ceil32(stor10[arg1].field_1)) + 224 len ceil32(stor10[arg1].field_1)] = mem[ceil32(stor10[arg1].field_1) + 160 len ceil32(stor10[arg1].field_1)]
                        if ceil32(stor10[arg1].field_1) > stor10[arg1].field_1:
                            mem[(2 * ceil32(stor10[arg1].field_1)) + stor10[arg1].field_1 + 224] = 0
                        return memory
                          from (2 * ceil32(stor10[arg1].field_1)) + 160
                           len (6 * ceil32(stor10[arg1].field_1)) + 64
                    if 31 >= stor10[arg1].field_1:
                        mem[ceil32(stor10[arg1].field_1) + 160] = 256 * stor10[arg1].field_8
                        mem[(2 * ceil32(stor10[arg1].field_1)) + 160] = 32
                        mem[(2 * ceil32(stor10[arg1].field_1)) + 192] = stor10[arg1].field_1
                        mem[(2 * ceil32(stor10[arg1].field_1)) + 224 len ceil32(stor10[arg1].field_1)] = mem[ceil32(stor10[arg1].field_1) + 160 len ceil32(stor10[arg1].field_1)]
                        if ceil32(stor10[arg1].field_1) > stor10[arg1].field_1:
                            mem[(2 * ceil32(stor10[arg1].field_1)) + stor10[arg1].field_1 + 224] = 0
                        return memory
                          from (2 * ceil32(stor10[arg1].field_1)) + 160
                           len (6 * ceil32(stor10[arg1].field_1)) + 64
                    mem[ceil32(stor10[arg1].field_1) + 160] = stor10[arg1].field_0
                    idx = ceil32(stor10[arg1].field_1) + 160
                    s = 0
                    while ceil32(stor10[arg1].field_1) + stor10[arg1].field_1 + 128 > idx:
                        mem[idx + 32] = stor10[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                mem[(2 * ceil32(stor10[arg1].field_1)) + 160] = 32
                mem[(2 * ceil32(stor10[arg1].field_1)) + 192] = stor10[arg1].field_1
                mem[(2 * ceil32(stor10[arg1].field_1)) + 224 len ceil32(stor10[arg1].field_1)] = mem[ceil32(stor10[arg1].field_1) + 160 len ceil32(stor10[arg1].field_1)]
                if ceil32(stor10[arg1].field_1) > stor10[arg1].field_1:
                    mem[(2 * ceil32(stor10[arg1].field_1)) + stor10[arg1].field_1 + 224] = 0
                return memory
                  from (2 * ceil32(stor10[arg1].field_1)) + 160
                   len (4 * ceil32(stor10[arg1].field_1)) + 64
            idx = 128
            s = 0
            while stor10[arg1].field_1 + 96 > idx:
                mem[idx + 32] = stor10[arg1][s].field_256
                idx = idx + 32
                s = s + 1
                continue 
        else:
            if stor10[arg1].field_0 == stor10[arg1].field_1 < 32:
                revert with 'NH{q', 34
            if not stor10[arg1].field_1:
                if stor10[arg1].field_1 <= 0:
                    if bool(stor2.length):
                        if bool(stor2.length) == stor2.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if bool(stor2.length):
                            if bool(stor2.length) == stor2.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if stor2.length.field_1:
                                if 31 < stor2.length.field_1:
                                    mem[ceil32(stor10[arg1].field_1) + 160] = uint256(stor2.field_0)
                                    idx = ceil32(stor10[arg1].field_1) + 160
                                    s = 0
                                    while ceil32(stor10[arg1].field_1) + stor2.length.field_1 + 128 > idx:
                                        mem[idx + 32] = stor2[s].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    return Array(len=2 * Mask(256, -1, stor2.length.field_1), data=mem[ceil32(stor10[arg1].field_1) + 160 len ceil32(stor2.length.field_1)]), 
                                mem[ceil32(stor10[arg1].field_1) + 160] = 256 * stor2.length.field_8
                        else:
                            if bool(stor2.length) == stor2.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if stor2.length.field_1:
                                if 31 < stor2.length.field_1:
                                    mem[ceil32(stor10[arg1].field_1) + 160] = uint256(stor2.field_0)
                                    idx = ceil32(stor10[arg1].field_1) + 160
                                    s = 0
                                    while ceil32(stor10[arg1].field_1) + stor2.length.field_1 + 128 > idx:
                                        mem[idx + 32] = stor2[s].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    return Array(len=2 * Mask(256, -1, stor2.length.field_1), data=mem[ceil32(stor10[arg1].field_1) + 160 len ceil32(stor2.length.field_1)]), 
                                mem[ceil32(stor10[arg1].field_1) + 160] = 256 * stor2.length.field_8
                        mem[ceil32(stor10[arg1].field_1) + ceil32(stor2.length.field_1) + 224 len ceil32(stor2.length.field_1)] = mem[ceil32(stor10[arg1].field_1) + 160 len ceil32(stor2.length.field_1)]
                        if ceil32(stor2.length.field_1) > stor2.length.field_1:
                            mem[ceil32(stor10[arg1].field_1) + ceil32(stor2.length.field_1) + stor2.length.field_1 + 224] = 0
                        return Array(len=2 * Mask(256, -1, stor2.length.field_1), data=mem[ceil32(stor10[arg1].field_1) + 160 len ceil32(stor2.length.field_1)], mem[ceil32(stor10[arg1].field_1) + (2 * ceil32(stor2.length.field_1)) + 224 len 2 * ceil32(stor2.length.field_1)]), 
                    if bool(stor2.length) == stor2.length.field_1 < 32:
                        revert with 'NH{q', 34
                    if bool(stor2.length):
                        if bool(stor2.length) == stor2.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if stor2.length.field_1:
                            if 31 < stor2.length.field_1:
                                mem[ceil32(stor10[arg1].field_1) + 160] = uint256(stor2.field_0)
                                idx = ceil32(stor10[arg1].field_1) + 160
                                s = 0
                                while ceil32(stor10[arg1].field_1) + stor2.length.field_1 + 128 > idx:
                                    mem[idx + 32] = stor2[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                return Array(len=stor2.length % 128, data=mem[ceil32(stor10[arg1].field_1) + 160 len ceil32(stor2.length.field_1)])
                            mem[ceil32(stor10[arg1].field_1) + 160] = 256 * stor2.length.field_8
                    else:
                        if bool(stor2.length) == stor2.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if stor2.length.field_1:
                            if 31 < stor2.length.field_1:
                                mem[ceil32(stor10[arg1].field_1) + 160] = uint256(stor2.field_0)
                                idx = ceil32(stor10[arg1].field_1) + 160
                                s = 0
                                while ceil32(stor10[arg1].field_1) + stor2.length.field_1 + 128 > idx:
                                    mem[idx + 32] = stor2[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                return Array(len=stor2.length % 128, data=mem[ceil32(stor10[arg1].field_1) + 160 len ceil32(stor2.length.field_1)])
                            mem[ceil32(stor10[arg1].field_1) + 160] = 256 * stor2.length.field_8
                    mem[ceil32(stor10[arg1].field_1) + ceil32(stor2.length.field_1) + 224 len ceil32(stor2.length.field_1)] = mem[ceil32(stor10[arg1].field_1) + 160 len ceil32(stor2.length.field_1)]
                    if ceil32(stor2.length.field_1) > stor2.length.field_1:
                        mem[ceil32(stor10[arg1].field_1) + ceil32(stor2.length.field_1) + stor2.length.field_1 + 224] = 0
                    return Array(len=stor2.length % 128, data=mem[ceil32(stor10[arg1].field_1) + 160 len ceil32(stor2.length.field_1)], mem[ceil32(stor10[arg1].field_1) + (2 * ceil32(stor2.length.field_1)) + 224 len 2 * ceil32(stor2.length.field_1)]), 
                if not stor10[arg1].field_0:
                    if stor10[arg1].field_0 == stor10[arg1].field_1 < 32:
                        revert with 'NH{q', 34
                    if stor10[arg1].field_0:
                        if stor10[arg1].field_0 == stor10[arg1].field_1 < 32:
                            revert with 'NH{q', 34
                        if stor10[arg1].field_1:
                            if 31 < stor10[arg1].field_1:
                                mem[ceil32(stor10[arg1].field_1) + 160] = stor10[arg1].field_0
                                idx = ceil32(stor10[arg1].field_1) + 160
                                s = 0
                                while ceil32(stor10[arg1].field_1) + stor10[arg1].field_1 + 128 > idx:
                                    mem[idx + 32] = stor10[arg1][s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                return Array(len=stor10[arg1].field_0, data=mem[ceil32(stor10[arg1].field_1) + 160 len ceil32(stor10[arg1].field_1)])
                            mem[ceil32(stor10[arg1].field_1) + 160] = 256 * stor10[arg1].field_8
                    else:
                        if stor10[arg1].field_0 == stor10[arg1].field_1 < 32:
                            revert with 'NH{q', 34
                        if stor10[arg1].field_1:
                            if 31 < stor10[arg1].field_1:
                                mem[ceil32(stor10[arg1].field_1) + 160] = stor10[arg1].field_0
                                idx = ceil32(stor10[arg1].field_1) + 160
                                s = 0
                                while ceil32(stor10[arg1].field_1) + stor10[arg1].field_1 + 128 > idx:
                                    mem[idx + 32] = stor10[arg1][s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                return Array(len=stor10[arg1].field_0, data=mem[ceil32(stor10[arg1].field_1) + 160 len ceil32(stor10[arg1].field_1)])
                            mem[ceil32(stor10[arg1].field_1) + 160] = 256 * stor10[arg1].field_8
                    mem[ceil32(stor10[arg1].field_1) + ceil32(stor10[arg1].field_1) + 224 len ceil32(stor10[arg1].field_1)] = mem[ceil32(stor10[arg1].field_1) + 160 len ceil32(stor10[arg1].field_1)]
                    if ceil32(stor10[arg1].field_1) > stor10[arg1].field_1:
                        mem[ceil32(stor10[arg1].field_1) + ceil32(stor10[arg1].field_1) + stor10[arg1].field_1 + 224] = 0
                    return Array(len=stor10[arg1].field_0, data=mem[ceil32(stor10[arg1].field_1) + 160 len ceil32(stor10[arg1].field_1)], mem[ceil32(stor10[arg1].field_1) + (2 * ceil32(stor10[arg1].field_1)) + 224 len 2 * ceil32(stor10[arg1].field_1)]), 
                if stor10[arg1].field_0 == stor10[arg1].field_1 < 32:
                    revert with 'NH{q', 34
                if stor10[arg1].field_0:
                    if stor10[arg1].field_0 == stor10[arg1].field_1 < 32:
                        revert with 'NH{q', 34
                    if not stor10[arg1].field_1:
                        mem[(2 * ceil32(stor10[arg1].field_1)) + 160] = 32
                        mem[(2 * ceil32(stor10[arg1].field_1)) + 192] = stor10[arg1].field_1
                        mem[(2 * ceil32(stor10[arg1].field_1)) + 224 len ceil32(stor10[arg1].field_1)] = mem[ceil32(stor10[arg1].field_1) + 160 len ceil32(stor10[arg1].field_1)]
                        if ceil32(stor10[arg1].field_1) > stor10[arg1].field_1:
                            mem[(2 * ceil32(stor10[arg1].field_1)) + stor10[arg1].field_1 + 224] = 0
                        return memory
                          from (2 * ceil32(stor10[arg1].field_1)) + 160
                           len (6 * ceil32(stor10[arg1].field_1)) + 64
                    if 31 >= stor10[arg1].field_1:
                        mem[ceil32(stor10[arg1].field_1) + 160] = 256 * stor10[arg1].field_8
                        mem[(2 * ceil32(stor10[arg1].field_1)) + 160] = 32
                        mem[(2 * ceil32(stor10[arg1].field_1)) + 192] = stor10[arg1].field_1
                        mem[(2 * ceil32(stor10[arg1].field_1)) + 224 len ceil32(stor10[arg1].field_1)] = mem[ceil32(stor10[arg1].field_1) + 160 len ceil32(stor10[arg1].field_1)]
                        if ceil32(stor10[arg1].field_1) > stor10[arg1].field_1:
                            mem[(2 * ceil32(stor10[arg1].field_1)) + stor10[arg1].field_1 + 224] = 0
                        return memory
                          from (2 * ceil32(stor10[arg1].field_1)) + 160
                           len (6 * ceil32(stor10[arg1].field_1)) + 64
                    mem[ceil32(stor10[arg1].field_1) + 160] = stor10[arg1].field_0
                    idx = ceil32(stor10[arg1].field_1) + 160
                    s = 0
                    while ceil32(stor10[arg1].field_1) + stor10[arg1].field_1 + 128 > idx:
                        mem[idx + 32] = stor10[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                else:
                    if stor10[arg1].field_0 == stor10[arg1].field_1 < 32:
                        revert with 'NH{q', 34
                    if not stor10[arg1].field_1:
                        mem[(2 * ceil32(stor10[arg1].field_1)) + 160] = 32
                        mem[(2 * ceil32(stor10[arg1].field_1)) + 192] = stor10[arg1].field_1
                        mem[(2 * ceil32(stor10[arg1].field_1)) + 224 len ceil32(stor10[arg1].field_1)] = mem[ceil32(stor10[arg1].field_1) + 160 len ceil32(stor10[arg1].field_1)]
                        if ceil32(stor10[arg1].field_1) > stor10[arg1].field_1:
                            mem[(2 * ceil32(stor10[arg1].field_1)) + stor10[arg1].field_1 + 224] = 0
                        return memory
                          from (2 * ceil32(stor10[arg1].field_1)) + 160
                           len (6 * ceil32(stor10[arg1].field_1)) + 64
                    if 31 >= stor10[arg1].field_1:
                        mem[ceil32(stor10[arg1].field_1) + 160] = 256 * stor10[arg1].field_8
                        mem[(2 * ceil32(stor10[arg1].field_1)) + 160] = 32
                        mem[(2 * ceil32(stor10[arg1].field_1)) + 192] = stor10[arg1].field_1
                        mem[(2 * ceil32(stor10[arg1].field_1)) + 224 len ceil32(stor10[arg1].field_1)] = mem[ceil32(stor10[arg1].field_1) + 160 len ceil32(stor10[arg1].field_1)]
                        if ceil32(stor10[arg1].field_1) > stor10[arg1].field_1:
                            mem[(2 * ceil32(stor10[arg1].field_1)) + stor10[arg1].field_1 + 224] = 0
                        return memory
                          from (2 * ceil32(stor10[arg1].field_1)) + 160
                           len (6 * ceil32(stor10[arg1].field_1)) + 64
                    mem[ceil32(stor10[arg1].field_1) + 160] = stor10[arg1].field_0
                    idx = ceil32(stor10[arg1].field_1) + 160
                    s = 0
                    while ceil32(stor10[arg1].field_1) + stor10[arg1].field_1 + 128 > idx:
                        mem[idx + 32] = stor10[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                mem[(2 * ceil32(stor10[arg1].field_1)) + 160] = 32
                mem[(2 * ceil32(stor10[arg1].field_1)) + 192] = stor10[arg1].field_1
                mem[(2 * ceil32(stor10[arg1].field_1)) + 224 len ceil32(stor10[arg1].field_1)] = mem[ceil32(stor10[arg1].field_1) + 160 len ceil32(stor10[arg1].field_1)]
                if ceil32(stor10[arg1].field_1) > stor10[arg1].field_1:
                    mem[(2 * ceil32(stor10[arg1].field_1)) + stor10[arg1].field_1 + 224] = 0
                return memory
                  from (2 * ceil32(stor10[arg1].field_1)) + 160
                   len (4 * ceil32(stor10[arg1].field_1)) + 64
            if 31 >= stor10[arg1].field_1:
                if stor10[arg1].field_1 <= 0:
                    if bool(stor2.length):
                        if bool(stor2.length) == stor2.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if bool(stor2.length):
                            if bool(stor2.length) == stor2.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if stor2.length.field_1:
                                if 31 < stor2.length.field_1:
                                    mem[ceil32(stor10[arg1].field_1) + 160] = uint256(stor2.field_0)
                                    idx = ceil32(stor10[arg1].field_1) + 160
                                    s = 0
                                    while ceil32(stor10[arg1].field_1) + stor2.length.field_1 + 128 > idx:
                                        mem[idx + 32] = stor2[s].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    return Array(len=2 * Mask(256, -1, stor2.length.field_1), data=mem[ceil32(stor10[arg1].field_1) + 160 len ceil32(stor2.length.field_1)]), 
                                mem[ceil32(stor10[arg1].field_1) + 160] = 256 * stor2.length.field_8
                        else:
                            if bool(stor2.length) == stor2.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if stor2.length.field_1:
                                if 31 < stor2.length.field_1:
                                    mem[ceil32(stor10[arg1].field_1) + 160] = uint256(stor2.field_0)
                                    idx = ceil32(stor10[arg1].field_1) + 160
                                    s = 0
                                    while ceil32(stor10[arg1].field_1) + stor2.length.field_1 + 128 > idx:
                                        mem[idx + 32] = stor2[s].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    return Array(len=2 * Mask(256, -1, stor2.length.field_1), data=mem[ceil32(stor10[arg1].field_1) + 160 len ceil32(stor2.length.field_1)]), 
                                mem[ceil32(stor10[arg1].field_1) + 160] = 256 * stor2.length.field_8
                        mem[ceil32(stor10[arg1].field_1) + ceil32(stor2.length.field_1) + 224 len ceil32(stor2.length.field_1)] = mem[ceil32(stor10[arg1].field_1) + 160 len ceil32(stor2.length.field_1)]
                        if ceil32(stor2.length.field_1) > stor2.length.field_1:
                            mem[ceil32(stor10[arg1].field_1) + ceil32(stor2.length.field_1) + stor2.length.field_1 + 224] = 0
                        return Array(len=2 * Mask(256, -1, stor2.length.field_1), data=mem[ceil32(stor10[arg1].field_1) + 160 len ceil32(stor2.length.field_1)], mem[ceil32(stor10[arg1].field_1) + (2 * ceil32(stor2.length.field_1)) + 224 len 2 * ceil32(stor2.length.field_1)]), 
                    if bool(stor2.length) == stor2.length.field_1 < 32:
                        revert with 'NH{q', 34
                    if bool(stor2.length):
                        if bool(stor2.length) == stor2.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if stor2.length.field_1:
                            if 31 < stor2.length.field_1:
                                mem[ceil32(stor10[arg1].field_1) + 160] = uint256(stor2.field_0)
                                idx = ceil32(stor10[arg1].field_1) + 160
                                s = 0
                                while ceil32(stor10[arg1].field_1) + stor2.length.field_1 + 128 > idx:
                                    mem[idx + 32] = stor2[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                return Array(len=stor2.length % 128, data=mem[ceil32(stor10[arg1].field_1) + 160 len ceil32(stor2.length.field_1)])
                            mem[ceil32(stor10[arg1].field_1) + 160] = 256 * stor2.length.field_8
                    else:
                        if bool(stor2.length) == stor2.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if stor2.length.field_1:
                            if 31 < stor2.length.field_1:
                                mem[ceil32(stor10[arg1].field_1) + 160] = uint256(stor2.field_0)
                                idx = ceil32(stor10[arg1].field_1) + 160
                                s = 0
                                while ceil32(stor10[arg1].field_1) + stor2.length.field_1 + 128 > idx:
                                    mem[idx + 32] = stor2[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                return Array(len=stor2.length % 128, data=mem[ceil32(stor10[arg1].field_1) + 160 len ceil32(stor2.length.field_1)])
                            mem[ceil32(stor10[arg1].field_1) + 160] = 256 * stor2.length.field_8
                    mem[ceil32(stor10[arg1].field_1) + ceil32(stor2.length.field_1) + 224 len ceil32(stor2.length.field_1)] = mem[ceil32(stor10[arg1].field_1) + 160 len ceil32(stor2.length.field_1)]
                    if ceil32(stor2.length.field_1) > stor2.length.field_1:
                        mem[ceil32(stor10[arg1].field_1) + ceil32(stor2.length.field_1) + stor2.length.field_1 + 224] = 0
                    return Array(len=stor2.length % 128, data=mem[ceil32(stor10[arg1].field_1) + 160 len ceil32(stor2.length.field_1)], mem[ceil32(stor10[arg1].field_1) + (2 * ceil32(stor2.length.field_1)) + 224 len 2 * ceil32(stor2.length.field_1)]), 
                if not stor10[arg1].field_0:
                    if stor10[arg1].field_0 == stor10[arg1].field_1 < 32:
                        revert with 'NH{q', 34
                    if stor10[arg1].field_0:
                        if stor10[arg1].field_0 == stor10[arg1].field_1 < 32:
                            revert with 'NH{q', 34
                        if stor10[arg1].field_1:
                            if 31 < stor10[arg1].field_1:
                                mem[ceil32(stor10[arg1].field_1) + 160] = stor10[arg1].field_0
                                idx = ceil32(stor10[arg1].field_1) + 160
                                s = 0
                                while ceil32(stor10[arg1].field_1) + stor10[arg1].field_1 + 128 > idx:
                                    mem[idx + 32] = stor10[arg1][s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                return Array(len=stor10[arg1].field_0, data=mem[ceil32(stor10[arg1].field_1) + 160 len ceil32(stor10[arg1].field_1)])
                            mem[ceil32(stor10[arg1].field_1) + 160] = 256 * stor10[arg1].field_8
                    else:
                        if stor10[arg1].field_0 == stor10[arg1].field_1 < 32:
                            revert with 'NH{q', 34
                        if stor10[arg1].field_1:
                            if 31 < stor10[arg1].field_1:
                                mem[ceil32(stor10[arg1].field_1) + 160] = stor10[arg1].field_0
                                idx = ceil32(stor10[arg1].field_1) + 160
                                s = 0
                                while ceil32(stor10[arg1].field_1) + stor10[arg1].field_1 + 128 > idx:
                                    mem[idx + 32] = stor10[arg1][s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                return Array(len=stor10[arg1].field_0, data=mem[ceil32(stor10[arg1].field_1) + 160 len ceil32(stor10[arg1].field_1)])
                            mem[ceil32(stor10[arg1].field_1) + 160] = 256 * stor10[arg1].field_8
                    mem[ceil32(stor10[arg1].field_1) + ceil32(stor10[arg1].field_1) + 224 len ceil32(stor10[arg1].field_1)] = mem[ceil32(stor10[arg1].field_1) + 160 len ceil32(stor10[arg1].field_1)]
                    if ceil32(stor10[arg1].field_1) > stor10[arg1].field_1:
                        mem[ceil32(stor10[arg1].field_1) + ceil32(stor10[arg1].field_1) + stor10[arg1].field_1 + 224] = 0
                    return Array(len=stor10[arg1].field_0, data=mem[ceil32(stor10[arg1].field_1) + 160 len ceil32(stor10[arg1].field_1)], mem[ceil32(stor10[arg1].field_1) + (2 * ceil32(stor10[arg1].field_1)) + 224 len 2 * ceil32(stor10[arg1].field_1)]), 
                if stor10[arg1].field_0 == stor10[arg1].field_1 < 32:
                    revert with 'NH{q', 34
                if stor10[arg1].field_0:
                    if stor10[arg1].field_0 == stor10[arg1].field_1 < 32:
                        revert with 'NH{q', 34
                    if not stor10[arg1].field_1:
                        mem[(2 * ceil32(stor10[arg1].field_1)) + 160] = 32
                        mem[(2 * ceil32(stor10[arg1].field_1)) + 192] = stor10[arg1].field_1
                        mem[(2 * ceil32(stor10[arg1].field_1)) + 224 len ceil32(stor10[arg1].field_1)] = mem[ceil32(stor10[arg1].field_1) + 160 len ceil32(stor10[arg1].field_1)]
                        if ceil32(stor10[arg1].field_1) > stor10[arg1].field_1:
                            mem[(2 * ceil32(stor10[arg1].field_1)) + stor10[arg1].field_1 + 224] = 0
                        return memory
                          from (2 * ceil32(stor10[arg1].field_1)) + 160
                           len (6 * ceil32(stor10[arg1].field_1)) + 64
                    if 31 >= stor10[arg1].field_1:
                        mem[ceil32(stor10[arg1].field_1) + 160] = 256 * stor10[arg1].field_8
                        mem[(2 * ceil32(stor10[arg1].field_1)) + 160] = 32
                        mem[(2 * ceil32(stor10[arg1].field_1)) + 192] = stor10[arg1].field_1
                        mem[(2 * ceil32(stor10[arg1].field_1)) + 224 len ceil32(stor10[arg1].field_1)] = mem[ceil32(stor10[arg1].field_1) + 160 len ceil32(stor10[arg1].field_1)]
                        if ceil32(stor10[arg1].field_1) > stor10[arg1].field_1:
                            mem[(2 * ceil32(stor10[arg1].field_1)) + stor10[arg1].field_1 + 224] = 0
                        return memory
                          from (2 * ceil32(stor10[arg1].field_1)) + 160
                           len (6 * ceil32(stor10[arg1].field_1)) + 64
                    mem[ceil32(stor10[arg1].field_1) + 160] = stor10[arg1].field_0
                    idx = ceil32(stor10[arg1].field_1) + 160
                    s = 0
                    while ceil32(stor10[arg1].field_1) + stor10[arg1].field_1 + 128 > idx:
                        mem[idx + 32] = stor10[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                else:
                    if stor10[arg1].field_0 == stor10[arg1].field_1 < 32:
                        revert with 'NH{q', 34
                    if not stor10[arg1].field_1:
                        mem[(2 * ceil32(stor10[arg1].field_1)) + 160] = 32
                        mem[(2 * ceil32(stor10[arg1].field_1)) + 192] = stor10[arg1].field_1
                        mem[(2 * ceil32(stor10[arg1].field_1)) + 224 len ceil32(stor10[arg1].field_1)] = mem[ceil32(stor10[arg1].field_1) + 160 len ceil32(stor10[arg1].field_1)]
                        if ceil32(stor10[arg1].field_1) > stor10[arg1].field_1:
                            mem[(2 * ceil32(stor10[arg1].field_1)) + stor10[arg1].field_1 + 224] = 0
                        return memory
                          from (2 * ceil32(stor10[arg1].field_1)) + 160
                           len (6 * ceil32(stor10[arg1].field_1)) + 64
                    if 31 >= stor10[arg1].field_1:
                        mem[ceil32(stor10[arg1].field_1) + 160] = 256 * stor10[arg1].field_8
                        mem[(2 * ceil32(stor10[arg1].field_1)) + 160] = 32
                        mem[(2 * ceil32(stor10[arg1].field_1)) + 192] = stor10[arg1].field_1
                        mem[(2 * ceil32(stor10[arg1].field_1)) + 224 len ceil32(stor10[arg1].field_1)] = mem[ceil32(stor10[arg1].field_1) + 160 len ceil32(stor10[arg1].field_1)]
                        if ceil32(stor10[arg1].field_1) > stor10[arg1].field_1:
                            mem[(2 * ceil32(stor10[arg1].field_1)) + stor10[arg1].field_1 + 224] = 0
                        return memory
                          from (2 * ceil32(stor10[arg1].field_1)) + 160
                           len (6 * ceil32(stor10[arg1].field_1)) + 64
                    mem[ceil32(stor10[arg1].field_1) + 160] = stor10[arg1].field_0
                    idx = ceil32(stor10[arg1].field_1) + 160
                    s = 0
                    while ceil32(stor10[arg1].field_1) + stor10[arg1].field_1 + 128 > idx:
                        mem[idx + 32] = stor10[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                mem[(2 * ceil32(stor10[arg1].field_1)) + 160] = 32
                mem[(2 * ceil32(stor10[arg1].field_1)) + 192] = stor10[arg1].field_1
                mem[(2 * ceil32(stor10[arg1].field_1)) + 224 len ceil32(stor10[arg1].field_1)] = mem[ceil32(stor10[arg1].field_1) + 160 len ceil32(stor10[arg1].field_1)]
                if ceil32(stor10[arg1].field_1) > stor10[arg1].field_1:
                    mem[(2 * ceil32(stor10[arg1].field_1)) + stor10[arg1].field_1 + 224] = 0
                return memory
                  from (2 * ceil32(stor10[arg1].field_1)) + 160
                   len (4 * ceil32(stor10[arg1].field_1)) + 64
            idx = 128
            s = 0
            while stor10[arg1].field_1 + 96 > idx:
                mem[idx + 32] = stor10[arg1][s].field_256
                idx = idx + 32
                s = s + 1
                continue 
        if stor10[arg1].field_1 <= 0:
            if bool(stor2.length):
                if bool(stor2.length) == stor2.length.field_1 < 32:
                    revert with 'NH{q', 34
                if bool(stor2.length):
                    if bool(stor2.length) == stor2.length.field_1 < 32:
                        revert with 'NH{q', 34
                    if stor2.length.field_1:
                        if 31 >= stor2.length.field_1:
                            mem[ceil32(stor10[arg1].field_1) + 160] = 256 * stor2.length.field_8
                        else:
                            mem[ceil32(stor10[arg1].field_1) + 160] = uint256(stor2.field_0)
                            idx = ceil32(stor10[arg1].field_1) + 160
                            s = 0
                            while ceil32(stor10[arg1].field_1) + stor2.length.field_1 + 128 > idx:
                                mem[idx + 32] = stor2[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                else:
                    if bool(stor2.length) == stor2.length.field_1 < 32:
                        revert with 'NH{q', 34
                    if stor2.length.field_1:
                        if 31 >= stor2.length.field_1:
                            mem[ceil32(stor10[arg1].field_1) + 160] = 256 * stor2.length.field_8
                        else:
                            mem[ceil32(stor10[arg1].field_1) + 160] = uint256(stor2.field_0)
                            idx = ceil32(stor10[arg1].field_1) + 160
                            s = 0
                            while ceil32(stor10[arg1].field_1) + stor2.length.field_1 + 128 > idx:
                                mem[idx + 32] = stor2[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                return Array(len=2 * Mask(256, -1, stor2.length.field_1), data=mem[ceil32(stor10[arg1].field_1) + 160 len ceil32(stor2.length.field_1)]), 
            if bool(stor2.length) == stor2.length.field_1 < 32:
                revert with 'NH{q', 34
            if bool(stor2.length):
                if bool(stor2.length) == stor2.length.field_1 < 32:
                    revert with 'NH{q', 34
                if stor2.length.field_1:
                    if 31 >= stor2.length.field_1:
                        mem[ceil32(stor10[arg1].field_1) + 160] = 256 * stor2.length.field_8
                    else:
                        mem[ceil32(stor10[arg1].field_1) + 160] = uint256(stor2.field_0)
                        idx = ceil32(stor10[arg1].field_1) + 160
                        s = 0
                        while ceil32(stor10[arg1].field_1) + stor2.length.field_1 + 128 > idx:
                            mem[idx + 32] = stor2[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
            else:
                if bool(stor2.length) == stor2.length.field_1 < 32:
                    revert with 'NH{q', 34
                if stor2.length.field_1:
                    if 31 >= stor2.length.field_1:
                        mem[ceil32(stor10[arg1].field_1) + 160] = 256 * stor2.length.field_8
                    else:
                        mem[ceil32(stor10[arg1].field_1) + 160] = uint256(stor2.field_0)
                        idx = ceil32(stor10[arg1].field_1) + 160
                        s = 0
                        while ceil32(stor10[arg1].field_1) + stor2.length.field_1 + 128 > idx:
                            mem[idx + 32] = stor2[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
            return Array(len=stor2.length % 128, data=mem[ceil32(stor10[arg1].field_1) + 160 len ceil32(stor2.length.field_1)])
        if not stor10[arg1].field_0:
            if stor10[arg1].field_0 == stor10[arg1].field_1 < 32:
                revert with 'NH{q', 34
            if stor10[arg1].field_0:
                if stor10[arg1].field_0 == stor10[arg1].field_1 < 32:
                    revert with 'NH{q', 34
                if stor10[arg1].field_1:
                    if 31 >= stor10[arg1].field_1:
                        mem[ceil32(stor10[arg1].field_1) + 160] = 256 * stor10[arg1].field_8
                    else:
                        mem[ceil32(stor10[arg1].field_1) + 160] = stor10[arg1].field_0
                        idx = ceil32(stor10[arg1].field_1) + 160
                        s = 0
                        while ceil32(stor10[arg1].field_1) + stor10[arg1].field_1 + 128 > idx:
                            mem[idx + 32] = stor10[arg1][s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
            else:
                if stor10[arg1].field_0 == stor10[arg1].field_1 < 32:
                    revert with 'NH{q', 34
                if stor10[arg1].field_1:
                    if 31 >= stor10[arg1].field_1:
                        mem[ceil32(stor10[arg1].field_1) + 160] = 256 * stor10[arg1].field_8
                    else:
                        mem[ceil32(stor10[arg1].field_1) + 160] = stor10[arg1].field_0
                        idx = ceil32(stor10[arg1].field_1) + 160
                        s = 0
                        while ceil32(stor10[arg1].field_1) + stor10[arg1].field_1 + 128 > idx:
                            mem[idx + 32] = stor10[arg1][s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
            return Array(len=stor10[arg1].field_0, data=mem[ceil32(stor10[arg1].field_1) + 160 len ceil32(stor10[arg1].field_1)])
        if stor10[arg1].field_0 == stor10[arg1].field_1 < 32:
            revert with 'NH{q', 34
        if stor10[arg1].field_0:
            if stor10[arg1].field_0 == stor10[arg1].field_1 < 32:
                revert with 'NH{q', 34
            if not stor10[arg1].field_1:
                mem[(2 * ceil32(stor10[arg1].field_1)) + 160] = 32
                mem[(2 * ceil32(stor10[arg1].field_1)) + 192] = stor10[arg1].field_1
                mem[(2 * ceil32(stor10[arg1].field_1)) + 224 len ceil32(stor10[arg1].field_1)] = mem[ceil32(stor10[arg1].field_1) + 160 len ceil32(stor10[arg1].field_1)]
                if ceil32(stor10[arg1].field_1) > stor10[arg1].field_1:
                    mem[(2 * ceil32(stor10[arg1].field_1)) + stor10[arg1].field_1 + 224] = 0
                return memory
                  from (2 * ceil32(stor10[arg1].field_1)) + 160
                   len (4 * ceil32(stor10[arg1].field_1)) + 64
            if 31 >= stor10[arg1].field_1:
                mem[ceil32(stor10[arg1].field_1) + 160] = 256 * stor10[arg1].field_8
                mem[(2 * ceil32(stor10[arg1].field_1)) + 160] = 32
                mem[(2 * ceil32(stor10[arg1].field_1)) + 192] = stor10[arg1].field_1
                mem[(2 * ceil32(stor10[arg1].field_1)) + 224 len ceil32(stor10[arg1].field_1)] = mem[ceil32(stor10[arg1].field_1) + 160 len ceil32(stor10[arg1].field_1)]
                if ceil32(stor10[arg1].field_1) > stor10[arg1].field_1:
                    mem[(2 * ceil32(stor10[arg1].field_1)) + stor10[arg1].field_1 + 224] = 0
                return memory
                  from (2 * ceil32(stor10[arg1].field_1)) + 160
                   len (4 * ceil32(stor10[arg1].field_1)) + 64
            mem[ceil32(stor10[arg1].field_1) + 160] = stor10[arg1].field_0
            idx = ceil32(stor10[arg1].field_1) + 160
            s = 0
            while ceil32(stor10[arg1].field_1) + stor10[arg1].field_1 + 128 > idx:
                mem[idx + 32] = stor10[arg1][s].field_256
                idx = idx + 32
                s = s + 1
                continue 
        else:
            if stor10[arg1].field_0 == stor10[arg1].field_1 < 32:
                revert with 'NH{q', 34
            if not stor10[arg1].field_1:
                mem[(2 * ceil32(stor10[arg1].field_1)) + 160] = 32
                mem[(2 * ceil32(stor10[arg1].field_1)) + 192] = stor10[arg1].field_1
                mem[(2 * ceil32(stor10[arg1].field_1)) + 224 len ceil32(stor10[arg1].field_1)] = mem[ceil32(stor10[arg1].field_1) + 160 len ceil32(stor10[arg1].field_1)]
                if ceil32(stor10[arg1].field_1) > stor10[arg1].field_1:
                    mem[(2 * ceil32(stor10[arg1].field_1)) + stor10[arg1].field_1 + 224] = 0
                return memory
                  from (2 * ceil32(stor10[arg1].field_1)) + 160
                   len (4 * ceil32(stor10[arg1].field_1)) + 64
            if 31 >= stor10[arg1].field_1:
                mem[ceil32(stor10[arg1].field_1) + 160] = 256 * stor10[arg1].field_8
                mem[(2 * ceil32(stor10[arg1].field_1)) + 160] = 32
                mem[(2 * ceil32(stor10[arg1].field_1)) + 192] = stor10[arg1].field_1
                mem[(2 * ceil32(stor10[arg1].field_1)) + 224 len ceil32(stor10[arg1].field_1)] = mem[ceil32(stor10[arg1].field_1) + 160 len ceil32(stor10[arg1].field_1)]
                if ceil32(stor10[arg1].field_1) > stor10[arg1].field_1:
                    mem[(2 * ceil32(stor10[arg1].field_1)) + stor10[arg1].field_1 + 224] = 0
                return memory
                  from (2 * ceil32(stor10[arg1].field_1)) + 160
                   len (4 * ceil32(stor10[arg1].field_1)) + 64
            mem[ceil32(stor10[arg1].field_1) + 160] = stor10[arg1].field_0
            idx = ceil32(stor10[arg1].field_1) + 160
            s = 0
            while ceil32(stor10[arg1].field_1) + stor10[arg1].field_1 + 128 > idx:
                mem[idx + 32] = stor10[arg1][s].field_256
                idx = idx + 32
                s = s + 1
                continue 
        mem[(2 * ceil32(stor10[arg1].field_1)) + 160] = 32
        mem[(2 * ceil32(stor10[arg1].field_1)) + 192] = stor10[arg1].field_1
        mem[(2 * ceil32(stor10[arg1].field_1)) + 224 len ceil32(stor10[arg1].field_1)] = mem[ceil32(stor10[arg1].field_1) + 160 len ceil32(stor10[arg1].field_1)]
        if ceil32(stor10[arg1].field_1) <= stor10[arg1].field_1:
            return memory
              from (2 * ceil32(stor10[arg1].field_1)) + 160
               len ceil32(stor10[arg1].field_1) + 64
        mem[(2 * ceil32(stor10[arg1].field_1)) + stor10[arg1].field_1 + 224] = 0
        return memory
          from (2 * ceil32(stor10[arg1].field_1)) + 160
           len (5 * ceil32(stor10[arg1].field_1)) + 64
    if stor10[arg1].field_0 == stor10[arg1].field_1 < 32:
        revert with 'NH{q', 34
    if stor10[arg1].field_0:
        if stor10[arg1].field_0 == stor10[arg1].field_1 < 32:
            revert with 'NH{q', 34
        if not stor10[arg1].field_1:
            if stor10[arg1].field_1 <= 0:
                if bool(stor2.length):
                    if bool(stor2.length) == stor2.length.field_1 < 32:
                        revert with 'NH{q', 34
                    if bool(stor2.length):
                        if bool(stor2.length) == stor2.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if stor2.length.field_1:
                            if 31 < stor2.length.field_1:
                                mem[ceil32(stor10[arg1].field_1) + 160] = uint256(stor2.field_0)
                                idx = ceil32(stor10[arg1].field_1) + 160
                                s = 0
                                while ceil32(stor10[arg1].field_1) + stor2.length.field_1 + 128 > idx:
                                    mem[idx + 32] = stor2[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                return Array(len=2 * Mask(256, -1, stor2.length.field_1), data=mem[ceil32(stor10[arg1].field_1) + 160 len ceil32(stor2.length.field_1)]), 
                            mem[ceil32(stor10[arg1].field_1) + 160] = 256 * stor2.length.field_8
                    else:
                        if bool(stor2.length) == stor2.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if stor2.length.field_1:
                            if 31 < stor2.length.field_1:
                                mem[ceil32(stor10[arg1].field_1) + 160] = uint256(stor2.field_0)
                                idx = ceil32(stor10[arg1].field_1) + 160
                                s = 0
                                while ceil32(stor10[arg1].field_1) + stor2.length.field_1 + 128 > idx:
                                    mem[idx + 32] = stor2[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                return Array(len=2 * Mask(256, -1, stor2.length.field_1), data=mem[ceil32(stor10[arg1].field_1) + 160 len ceil32(stor2.length.field_1)]), 
                            mem[ceil32(stor10[arg1].field_1) + 160] = 256 * stor2.length.field_8
                    mem[ceil32(stor10[arg1].field_1) + ceil32(stor2.length.field_1) + 224 len ceil32(stor2.length.field_1)] = mem[ceil32(stor10[arg1].field_1) + 160 len ceil32(stor2.length.field_1)]
                    if ceil32(stor2.length.field_1) > stor2.length.field_1:
                        mem[ceil32(stor10[arg1].field_1) + ceil32(stor2.length.field_1) + stor2.length.field_1 + 224] = 0
                    return Array(len=2 * Mask(256, -1, stor2.length.field_1), data=mem[ceil32(stor10[arg1].field_1) + 160 len ceil32(stor2.length.field_1)], mem[ceil32(stor10[arg1].field_1) + (2 * ceil32(stor2.length.field_1)) + 224 len 2 * ceil32(stor2.length.field_1)]), 
                if bool(stor2.length) == stor2.length.field_1 < 32:
                    revert with 'NH{q', 34
                if bool(stor2.length):
                    if bool(stor2.length) == stor2.length.field_1 < 32:
                        revert with 'NH{q', 34
                    if stor2.length.field_1:
                        if 31 < stor2.length.field_1:
                            mem[ceil32(stor10[arg1].field_1) + 160] = uint256(stor2.field_0)
                            idx = ceil32(stor10[arg1].field_1) + 160
                            s = 0
                            while ceil32(stor10[arg1].field_1) + stor2.length.field_1 + 128 > idx:
                                mem[idx + 32] = stor2[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            return Array(len=stor2.length % 128, data=mem[ceil32(stor10[arg1].field_1) + 160 len ceil32(stor2.length.field_1)])
                        mem[ceil32(stor10[arg1].field_1) + 160] = 256 * stor2.length.field_8
                else:
                    if bool(stor2.length) == stor2.length.field_1 < 32:
                        revert with 'NH{q', 34
                    if stor2.length.field_1:
                        if 31 < stor2.length.field_1:
                            mem[ceil32(stor10[arg1].field_1) + 160] = uint256(stor2.field_0)
                            idx = ceil32(stor10[arg1].field_1) + 160
                            s = 0
                            while ceil32(stor10[arg1].field_1) + stor2.length.field_1 + 128 > idx:
                                mem[idx + 32] = stor2[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            return Array(len=stor2.length % 128, data=mem[ceil32(stor10[arg1].field_1) + 160 len ceil32(stor2.length.field_1)])
                        mem[ceil32(stor10[arg1].field_1) + 160] = 256 * stor2.length.field_8
                mem[ceil32(stor10[arg1].field_1) + ceil32(stor2.length.field_1) + 224 len ceil32(stor2.length.field_1)] = mem[ceil32(stor10[arg1].field_1) + 160 len ceil32(stor2.length.field_1)]
                if ceil32(stor2.length.field_1) > stor2.length.field_1:
                    mem[ceil32(stor10[arg1].field_1) + ceil32(stor2.length.field_1) + stor2.length.field_1 + 224] = 0
                return Array(len=stor2.length % 128, data=mem[ceil32(stor10[arg1].field_1) + 160 len ceil32(stor2.length.field_1)], mem[ceil32(stor10[arg1].field_1) + (2 * ceil32(stor2.length.field_1)) + 224 len 2 * ceil32(stor2.length.field_1)]), 
            if stor10[arg1].field_0:
                if stor10[arg1].field_0 == stor10[arg1].field_1 < 32:
                    revert with 'NH{q', 34
                if stor10[arg1].field_0:
                    if stor10[arg1].field_0 == stor10[arg1].field_1 < 32:
                        revert with 'NH{q', 34
                    if stor10[arg1].field_1:
                        if 31 < stor10[arg1].field_1:
                            mem[ceil32(stor10[arg1].field_1) + 160] = stor10[arg1].field_0
                            idx = ceil32(stor10[arg1].field_1) + 160
                            s = 0
                            while ceil32(stor10[arg1].field_1) + stor10[arg1].field_1 + 128 > idx:
                                mem[idx + 32] = stor10[arg1][s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            return Array(len=2 * Mask(256, -1, stor10[arg1].field_1), data=mem[ceil32(stor10[arg1].field_1) + 160 len ceil32(stor10[arg1].field_1)]), 
                        mem[ceil32(stor10[arg1].field_1) + 160] = 256 * stor10[arg1].field_8
                else:
                    if stor10[arg1].field_0 == stor10[arg1].field_1 < 32:
                        revert with 'NH{q', 34
                    if stor10[arg1].field_1:
                        if 31 < stor10[arg1].field_1:
                            mem[ceil32(stor10[arg1].field_1) + 160] = stor10[arg1].field_0
                            idx = ceil32(stor10[arg1].field_1) + 160
                            s = 0
                            while ceil32(stor10[arg1].field_1) + stor10[arg1].field_1 + 128 > idx:
                                mem[idx + 32] = stor10[arg1][s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            return Array(len=2 * Mask(256, -1, stor10[arg1].field_1), data=mem[ceil32(stor10[arg1].field_1) + 160 len ceil32(stor10[arg1].field_1)]), 
                        mem[ceil32(stor10[arg1].field_1) + 160] = 256 * stor10[arg1].field_8
                mem[ceil32(stor10[arg1].field_1) + ceil32(stor10[arg1].field_1) + 224 len ceil32(stor10[arg1].field_1)] = mem[ceil32(stor10[arg1].field_1) + 160 len ceil32(stor10[arg1].field_1)]
                if ceil32(stor10[arg1].field_1) > stor10[arg1].field_1:
                    mem[ceil32(stor10[arg1].field_1) + ceil32(stor10[arg1].field_1) + stor10[arg1].field_1 + 224] = 0
                return Array(len=2 * Mask(256, -1, stor10[arg1].field_1), data=mem[ceil32(stor10[arg1].field_1) + 160 len ceil32(stor10[arg1].field_1)], mem[ceil32(stor10[arg1].field_1) + (2 * ceil32(stor10[arg1].field_1)) + 224 len 2 * ceil32(stor10[arg1].field_1)]), 
            if stor10[arg1].field_0 == stor10[arg1].field_1 < 32:
                revert with 'NH{q', 34
            if stor10[arg1].field_0:
                if stor10[arg1].field_0 == stor10[arg1].field_1 < 32:
                    revert with 'NH{q', 34
                if not stor10[arg1].field_1:
                    mem[(2 * ceil32(stor10[arg1].field_1)) + 160] = 32
                    mem[(2 * ceil32(stor10[arg1].field_1)) + 192] = stor10[arg1].field_1
                    mem[(2 * ceil32(stor10[arg1].field_1)) + 224 len ceil32(stor10[arg1].field_1)] = mem[ceil32(stor10[arg1].field_1) + 160 len ceil32(stor10[arg1].field_1)]
                    if ceil32(stor10[arg1].field_1) > stor10[arg1].field_1:
                        mem[(2 * ceil32(stor10[arg1].field_1)) + stor10[arg1].field_1 + 224] = 0
                    return memory
                      from (2 * ceil32(stor10[arg1].field_1)) + 160
                       len (6 * ceil32(stor10[arg1].field_1)) + 64
                if 31 >= stor10[arg1].field_1:
                    mem[ceil32(stor10[arg1].field_1) + 160] = 256 * stor10[arg1].field_8
                    mem[(2 * ceil32(stor10[arg1].field_1)) + 160] = 32
                    mem[(2 * ceil32(stor10[arg1].field_1)) + 192] = stor10[arg1].field_1
                    mem[(2 * ceil32(stor10[arg1].field_1)) + 224 len ceil32(stor10[arg1].field_1)] = mem[ceil32(stor10[arg1].field_1) + 160 len ceil32(stor10[arg1].field_1)]
                    if ceil32(stor10[arg1].field_1) > stor10[arg1].field_1:
                        mem[(2 * ceil32(stor10[arg1].field_1)) + stor10[arg1].field_1 + 224] = 0
                    return memory
                      from (2 * ceil32(stor10[arg1].field_1)) + 160
                       len (6 * ceil32(stor10[arg1].field_1)) + 64
                mem[ceil32(stor10[arg1].field_1) + 160] = stor10[arg1].field_0
                idx = ceil32(stor10[arg1].field_1) + 160
                s = 0
                while ceil32(stor10[arg1].field_1) + stor10[arg1].field_1 + 128 > idx:
                    mem[idx + 32] = stor10[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
            else:
                if stor10[arg1].field_0 == stor10[arg1].field_1 < 32:
                    revert with 'NH{q', 34
                if not stor10[arg1].field_1:
                    mem[(2 * ceil32(stor10[arg1].field_1)) + 160] = 32
                    mem[(2 * ceil32(stor10[arg1].field_1)) + 192] = stor10[arg1].field_1
                    mem[(2 * ceil32(stor10[arg1].field_1)) + 224 len ceil32(stor10[arg1].field_1)] = mem[ceil32(stor10[arg1].field_1) + 160 len ceil32(stor10[arg1].field_1)]
                    if ceil32(stor10[arg1].field_1) > stor10[arg1].field_1:
                        mem[(2 * ceil32(stor10[arg1].field_1)) + stor10[arg1].field_1 + 224] = 0
                    return memory
                      from (2 * ceil32(stor10[arg1].field_1)) + 160
                       len (6 * ceil32(stor10[arg1].field_1)) + 64
                if 31 >= stor10[arg1].field_1:
                    mem[ceil32(stor10[arg1].field_1) + 160] = 256 * stor10[arg1].field_8
                    mem[(2 * ceil32(stor10[arg1].field_1)) + 160] = 32
                    mem[(2 * ceil32(stor10[arg1].field_1)) + 192] = stor10[arg1].field_1
                    mem[(2 * ceil32(stor10[arg1].field_1)) + 224 len ceil32(stor10[arg1].field_1)] = mem[ceil32(stor10[arg1].field_1) + 160 len ceil32(stor10[arg1].field_1)]
                    if ceil32(stor10[arg1].field_1) > stor10[arg1].field_1:
                        mem[(2 * ceil32(stor10[arg1].field_1)) + stor10[arg1].field_1 + 224] = 0
                    return memory
                      from (2 * ceil32(stor10[arg1].field_1)) + 160
                       len (6 * ceil32(stor10[arg1].field_1)) + 64
                mem[ceil32(stor10[arg1].field_1) + 160] = stor10[arg1].field_0
                idx = ceil32(stor10[arg1].field_1) + 160
                s = 0
                while ceil32(stor10[arg1].field_1) + stor10[arg1].field_1 + 128 > idx:
                    mem[idx + 32] = stor10[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
            mem[(2 * ceil32(stor10[arg1].field_1)) + 160] = 32
            mem[(2 * ceil32(stor10[arg1].field_1)) + 192] = stor10[arg1].field_1
            mem[(2 * ceil32(stor10[arg1].field_1)) + 224 len ceil32(stor10[arg1].field_1)] = mem[ceil32(stor10[arg1].field_1) + 160 len ceil32(stor10[arg1].field_1)]
            if ceil32(stor10[arg1].field_1) > stor10[arg1].field_1:
                mem[(2 * ceil32(stor10[arg1].field_1)) + stor10[arg1].field_1 + 224] = 0
            return memory
              from (2 * ceil32(stor10[arg1].field_1)) + 160
               len (4 * ceil32(stor10[arg1].field_1)) + 64
        if 31 >= stor10[arg1].field_1:
            if stor10[arg1].field_1 <= 0:
                if bool(stor2.length):
                    if bool(stor2.length) == stor2.length.field_1 < 32:
                        revert with 'NH{q', 34
                    if bool(stor2.length):
                        if bool(stor2.length) == stor2.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if stor2.length.field_1:
                            if 31 < stor2.length.field_1:
                                mem[ceil32(stor10[arg1].field_1) + 160] = uint256(stor2.field_0)
                                idx = ceil32(stor10[arg1].field_1) + 160
                                s = 0
                                while ceil32(stor10[arg1].field_1) + stor2.length.field_1 + 128 > idx:
                                    mem[idx + 32] = stor2[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                return Array(len=2 * Mask(256, -1, stor2.length.field_1), data=mem[ceil32(stor10[arg1].field_1) + 160 len ceil32(stor2.length.field_1)]), 
                            mem[ceil32(stor10[arg1].field_1) + 160] = 256 * stor2.length.field_8
                    else:
                        if bool(stor2.length) == stor2.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if stor2.length.field_1:
                            if 31 < stor2.length.field_1:
                                mem[ceil32(stor10[arg1].field_1) + 160] = uint256(stor2.field_0)
                                idx = ceil32(stor10[arg1].field_1) + 160
                                s = 0
                                while ceil32(stor10[arg1].field_1) + stor2.length.field_1 + 128 > idx:
                                    mem[idx + 32] = stor2[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                return Array(len=2 * Mask(256, -1, stor2.length.field_1), data=mem[ceil32(stor10[arg1].field_1) + 160 len ceil32(stor2.length.field_1)]), 
                            mem[ceil32(stor10[arg1].field_1) + 160] = 256 * stor2.length.field_8
                    mem[ceil32(stor10[arg1].field_1) + ceil32(stor2.length.field_1) + 224 len ceil32(stor2.length.field_1)] = mem[ceil32(stor10[arg1].field_1) + 160 len ceil32(stor2.length.field_1)]
                    if ceil32(stor2.length.field_1) > stor2.length.field_1:
                        mem[ceil32(stor10[arg1].field_1) + ceil32(stor2.length.field_1) + stor2.length.field_1 + 224] = 0
                    return Array(len=2 * Mask(256, -1, stor2.length.field_1), data=mem[ceil32(stor10[arg1].field_1) + 160 len ceil32(stor2.length.field_1)], mem[ceil32(stor10[arg1].field_1) + (2 * ceil32(stor2.length.field_1)) + 224 len 2 * ceil32(stor2.length.field_1)]), 
                if bool(stor2.length) == stor2.length.field_1 < 32:
                    revert with 'NH{q', 34
                if bool(stor2.length):
                    if bool(stor2.length) == stor2.length.field_1 < 32:
                        revert with 'NH{q', 34
                    if stor2.length.field_1:
                        if 31 < stor2.length.field_1:
                            mem[ceil32(stor10[arg1].field_1) + 160] = uint256(stor2.field_0)
                            idx = ceil32(stor10[arg1].field_1) + 160
                            s = 0
                            while ceil32(stor10[arg1].field_1) + stor2.length.field_1 + 128 > idx:
                                mem[idx + 32] = stor2[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            return Array(len=stor2.length % 128, data=mem[ceil32(stor10[arg1].field_1) + 160 len ceil32(stor2.length.field_1)])
                        mem[ceil32(stor10[arg1].field_1) + 160] = 256 * stor2.length.field_8
                else:
                    if bool(stor2.length) == stor2.length.field_1 < 32:
                        revert with 'NH{q', 34
                    if stor2.length.field_1:
                        if 31 < stor2.length.field_1:
                            mem[ceil32(stor10[arg1].field_1) + 160] = uint256(stor2.field_0)
                            idx = ceil32(stor10[arg1].field_1) + 160
                            s = 0
                            while ceil32(stor10[arg1].field_1) + stor2.length.field_1 + 128 > idx:
                                mem[idx + 32] = stor2[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            return Array(len=stor2.length % 128, data=mem[ceil32(stor10[arg1].field_1) + 160 len ceil32(stor2.length.field_1)])
                        mem[ceil32(stor10[arg1].field_1) + 160] = 256 * stor2.length.field_8
                mem[ceil32(stor10[arg1].field_1) + ceil32(stor2.length.field_1) + 224 len ceil32(stor2.length.field_1)] = mem[ceil32(stor10[arg1].field_1) + 160 len ceil32(stor2.length.field_1)]
                if ceil32(stor2.length.field_1) > stor2.length.field_1:
                    mem[ceil32(stor10[arg1].field_1) + ceil32(stor2.length.field_1) + stor2.length.field_1 + 224] = 0
                return Array(len=stor2.length % 128, data=mem[ceil32(stor10[arg1].field_1) + 160 len ceil32(stor2.length.field_1)], mem[ceil32(stor10[arg1].field_1) + (2 * ceil32(stor2.length.field_1)) + 224 len 2 * ceil32(stor2.length.field_1)]), 
            if stor10[arg1].field_0:
                if stor10[arg1].field_0 == stor10[arg1].field_1 < 32:
                    revert with 'NH{q', 34
                if stor10[arg1].field_0:
                    if stor10[arg1].field_0 == stor10[arg1].field_1 < 32:
                        revert with 'NH{q', 34
                    if stor10[arg1].field_1:
                        if 31 < stor10[arg1].field_1:
                            mem[ceil32(stor10[arg1].field_1) + 160] = stor10[arg1].field_0
                            idx = ceil32(stor10[arg1].field_1) + 160
                            s = 0
                            while ceil32(stor10[arg1].field_1) + stor10[arg1].field_1 + 128 > idx:
                                mem[idx + 32] = stor10[arg1][s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            return Array(len=2 * Mask(256, -1, stor10[arg1].field_1), data=mem[ceil32(stor10[arg1].field_1) + 160 len ceil32(stor10[arg1].field_1)]), 
                        mem[ceil32(stor10[arg1].field_1) + 160] = 256 * stor10[arg1].field_8
                else:
                    if stor10[arg1].field_0 == stor10[arg1].field_1 < 32:
                        revert with 'NH{q', 34
                    if stor10[arg1].field_1:
                        if 31 < stor10[arg1].field_1:
                            mem[ceil32(stor10[arg1].field_1) + 160] = stor10[arg1].field_0
                            idx = ceil32(stor10[arg1].field_1) + 160
                            s = 0
                            while ceil32(stor10[arg1].field_1) + stor10[arg1].field_1 + 128 > idx:
                                mem[idx + 32] = stor10[arg1][s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            return Array(len=2 * Mask(256, -1, stor10[arg1].field_1), data=mem[ceil32(stor10[arg1].field_1) + 160 len ceil32(stor10[arg1].field_1)]), 
                        mem[ceil32(stor10[arg1].field_1) + 160] = 256 * stor10[arg1].field_8
                mem[ceil32(stor10[arg1].field_1) + ceil32(stor10[arg1].field_1) + 224 len ceil32(stor10[arg1].field_1)] = mem[ceil32(stor10[arg1].field_1) + 160 len ceil32(stor10[arg1].field_1)]
                if ceil32(stor10[arg1].field_1) > stor10[arg1].field_1:
                    mem[ceil32(stor10[arg1].field_1) + ceil32(stor10[arg1].field_1) + stor10[arg1].field_1 + 224] = 0
                return Array(len=2 * Mask(256, -1, stor10[arg1].field_1), data=mem[ceil32(stor10[arg1].field_1) + 160 len ceil32(stor10[arg1].field_1)], mem[ceil32(stor10[arg1].field_1) + (2 * ceil32(stor10[arg1].field_1)) + 224 len 2 * ceil32(stor10[arg1].field_1)]), 
            if stor10[arg1].field_0 == stor10[arg1].field_1 < 32:
                revert with 'NH{q', 34
            if stor10[arg1].field_0:
                if stor10[arg1].field_0 == stor10[arg1].field_1 < 32:
                    revert with 'NH{q', 34
                if not stor10[arg1].field_1:
                    mem[(2 * ceil32(stor10[arg1].field_1)) + 160] = 32
                    mem[(2 * ceil32(stor10[arg1].field_1)) + 192] = stor10[arg1].field_1
                    mem[(2 * ceil32(stor10[arg1].field_1)) + 224 len ceil32(stor10[arg1].field_1)] = mem[ceil32(stor10[arg1].field_1) + 160 len ceil32(stor10[arg1].field_1)]
                    if ceil32(stor10[arg1].field_1) > stor10[arg1].field_1:
                        mem[(2 * ceil32(stor10[arg1].field_1)) + stor10[arg1].field_1 + 224] = 0
                    return memory
                      from (2 * ceil32(stor10[arg1].field_1)) + 160
                       len (6 * ceil32(stor10[arg1].field_1)) + 64
                if 31 >= stor10[arg1].field_1:
                    mem[ceil32(stor10[arg1].field_1) + 160] = 256 * stor10[arg1].field_8
                    mem[(2 * ceil32(stor10[arg1].field_1)) + 160] = 32
                    mem[(2 * ceil32(stor10[arg1].field_1)) + 192] = stor10[arg1].field_1
                    mem[(2 * ceil32(stor10[arg1].field_1)) + 224 len ceil32(stor10[arg1].field_1)] = mem[ceil32(stor10[arg1].field_1) + 160 len ceil32(stor10[arg1].field_1)]
                    if ceil32(stor10[arg1].field_1) > stor10[arg1].field_1:
                        mem[(2 * ceil32(stor10[arg1].field_1)) + stor10[arg1].field_1 + 224] = 0
                    return memory
                      from (2 * ceil32(stor10[arg1].field_1)) + 160
                       len (6 * ceil32(stor10[arg1].field_1)) + 64
                mem[ceil32(stor10[arg1].field_1) + 160] = stor10[arg1].field_0
                idx = ceil32(stor10[arg1].field_1) + 160
                s = 0
                while ceil32(stor10[arg1].field_1) + stor10[arg1].field_1 + 128 > idx:
                    mem[idx + 32] = stor10[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
            else:
                if stor10[arg1].field_0 == stor10[arg1].field_1 < 32:
                    revert with 'NH{q', 34
                if not stor10[arg1].field_1:
                    mem[(2 * ceil32(stor10[arg1].field_1)) + 160] = 32
                    mem[(2 * ceil32(stor10[arg1].field_1)) + 192] = stor10[arg1].field_1
                    mem[(2 * ceil32(stor10[arg1].field_1)) + 224 len ceil32(stor10[arg1].field_1)] = mem[ceil32(stor10[arg1].field_1) + 160 len ceil32(stor10[arg1].field_1)]
                    if ceil32(stor10[arg1].field_1) > stor10[arg1].field_1:
                        mem[(2 * ceil32(stor10[arg1].field_1)) + stor10[arg1].field_1 + 224] = 0
                    return memory
                      from (2 * ceil32(stor10[arg1].field_1)) + 160
                       len (6 * ceil32(stor10[arg1].field_1)) + 64
                if 31 >= stor10[arg1].field_1:
                    mem[ceil32(stor10[arg1].field_1) + 160] = 256 * stor10[arg1].field_8
                    mem[(2 * ceil32(stor10[arg1].field_1)) + 160] = 32
                    mem[(2 * ceil32(stor10[arg1].field_1)) + 192] = stor10[arg1].field_1
                    mem[(2 * ceil32(stor10[arg1].field_1)) + 224 len ceil32(stor10[arg1].field_1)] = mem[ceil32(stor10[arg1].field_1) + 160 len ceil32(stor10[arg1].field_1)]
                    if ceil32(stor10[arg1].field_1) > stor10[arg1].field_1:
                        mem[(2 * ceil32(stor10[arg1].field_1)) + stor10[arg1].field_1 + 224] = 0
                    return memory
                      from (2 * ceil32(stor10[arg1].field_1)) + 160
                       len (6 * ceil32(stor10[arg1].field_1)) + 64
                mem[ceil32(stor10[arg1].field_1) + 160] = stor10[arg1].field_0
                idx = ceil32(stor10[arg1].field_1) + 160
                s = 0
                while ceil32(stor10[arg1].field_1) + stor10[arg1].field_1 + 128 > idx:
                    mem[idx + 32] = stor10[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
            mem[(2 * ceil32(stor10[arg1].field_1)) + 160] = 32
            mem[(2 * ceil32(stor10[arg1].field_1)) + 192] = stor10[arg1].field_1
            mem[(2 * ceil32(stor10[arg1].field_1)) + 224 len ceil32(stor10[arg1].field_1)] = mem[ceil32(stor10[arg1].field_1) + 160 len ceil32(stor10[arg1].field_1)]
            if ceil32(stor10[arg1].field_1) > stor10[arg1].field_1:
                mem[(2 * ceil32(stor10[arg1].field_1)) + stor10[arg1].field_1 + 224] = 0
            return memory
              from (2 * ceil32(stor10[arg1].field_1)) + 160
               len (4 * ceil32(stor10[arg1].field_1)) + 64
        idx = 128
        s = 0
        while stor10[arg1].field_1 + 96 > idx:
            mem[idx + 32] = stor10[arg1][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    else:
        if stor10[arg1].field_0 == stor10[arg1].field_1 < 32:
            revert with 'NH{q', 34
        if not stor10[arg1].field_1:
            if stor10[arg1].field_1 <= 0:
                if bool(stor2.length):
                    if bool(stor2.length) == stor2.length.field_1 < 32:
                        revert with 'NH{q', 34
                    if bool(stor2.length):
                        if bool(stor2.length) == stor2.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if stor2.length.field_1:
                            if 31 < stor2.length.field_1:
                                mem[ceil32(stor10[arg1].field_1) + 160] = uint256(stor2.field_0)
                                idx = ceil32(stor10[arg1].field_1) + 160
                                s = 0
                                while ceil32(stor10[arg1].field_1) + stor2.length.field_1 + 128 > idx:
                                    mem[idx + 32] = stor2[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                return Array(len=2 * Mask(256, -1, stor2.length.field_1), data=mem[ceil32(stor10[arg1].field_1) + 160 len ceil32(stor2.length.field_1)]), 
                            mem[ceil32(stor10[arg1].field_1) + 160] = 256 * stor2.length.field_8
                    else:
                        if bool(stor2.length) == stor2.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if stor2.length.field_1:
                            if 31 < stor2.length.field_1:
                                mem[ceil32(stor10[arg1].field_1) + 160] = uint256(stor2.field_0)
                                idx = ceil32(stor10[arg1].field_1) + 160
                                s = 0
                                while ceil32(stor10[arg1].field_1) + stor2.length.field_1 + 128 > idx:
                                    mem[idx + 32] = stor2[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                return Array(len=2 * Mask(256, -1, stor2.length.field_1), data=mem[ceil32(stor10[arg1].field_1) + 160 len ceil32(stor2.length.field_1)]), 
                            mem[ceil32(stor10[arg1].field_1) + 160] = 256 * stor2.length.field_8
                    mem[ceil32(stor10[arg1].field_1) + ceil32(stor2.length.field_1) + 224 len ceil32(stor2.length.field_1)] = mem[ceil32(stor10[arg1].field_1) + 160 len ceil32(stor2.length.field_1)]
                    if ceil32(stor2.length.field_1) > stor2.length.field_1:
                        mem[ceil32(stor10[arg1].field_1) + ceil32(stor2.length.field_1) + stor2.length.field_1 + 224] = 0
                    return Array(len=2 * Mask(256, -1, stor2.length.field_1), data=mem[ceil32(stor10[arg1].field_1) + 160 len ceil32(stor2.length.field_1)], mem[ceil32(stor10[arg1].field_1) + (2 * ceil32(stor2.length.field_1)) + 224 len 2 * ceil32(stor2.length.field_1)]), 
                if bool(stor2.length) == stor2.length.field_1 < 32:
                    revert with 'NH{q', 34
                if bool(stor2.length):
                    if bool(stor2.length) == stor2.length.field_1 < 32:
                        revert with 'NH{q', 34
                    if stor2.length.field_1:
                        if 31 < stor2.length.field_1:
                            mem[ceil32(stor10[arg1].field_1) + 160] = uint256(stor2.field_0)
                            idx = ceil32(stor10[arg1].field_1) + 160
                            s = 0
                            while ceil32(stor10[arg1].field_1) + stor2.length.field_1 + 128 > idx:
                                mem[idx + 32] = stor2[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            return Array(len=stor2.length % 128, data=mem[ceil32(stor10[arg1].field_1) + 160 len ceil32(stor2.length.field_1)])
                        mem[ceil32(stor10[arg1].field_1) + 160] = 256 * stor2.length.field_8
                else:
                    if bool(stor2.length) == stor2.length.field_1 < 32:
                        revert with 'NH{q', 34
                    if stor2.length.field_1:
                        if 31 < stor2.length.field_1:
                            mem[ceil32(stor10[arg1].field_1) + 160] = uint256(stor2.field_0)
                            idx = ceil32(stor10[arg1].field_1) + 160
                            s = 0
                            while ceil32(stor10[arg1].field_1) + stor2.length.field_1 + 128 > idx:
                                mem[idx + 32] = stor2[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            return Array(len=stor2.length % 128, data=mem[ceil32(stor10[arg1].field_1) + 160 len ceil32(stor2.length.field_1)])
                        mem[ceil32(stor10[arg1].field_1) + 160] = 256 * stor2.length.field_8
                mem[ceil32(stor10[arg1].field_1) + ceil32(stor2.length.field_1) + 224 len ceil32(stor2.length.field_1)] = mem[ceil32(stor10[arg1].field_1) + 160 len ceil32(stor2.length.field_1)]
                if ceil32(stor2.length.field_1) > stor2.length.field_1:
                    mem[ceil32(stor10[arg1].field_1) + ceil32(stor2.length.field_1) + stor2.length.field_1 + 224] = 0
                return Array(len=stor2.length % 128, data=mem[ceil32(stor10[arg1].field_1) + 160 len ceil32(stor2.length.field_1)], mem[ceil32(stor10[arg1].field_1) + (2 * ceil32(stor2.length.field_1)) + 224 len 2 * ceil32(stor2.length.field_1)]), 
            if stor10[arg1].field_0:
                if stor10[arg1].field_0 == stor10[arg1].field_1 < 32:
                    revert with 'NH{q', 34
                if stor10[arg1].field_0:
                    if stor10[arg1].field_0 == stor10[arg1].field_1 < 32:
                        revert with 'NH{q', 34
                    if stor10[arg1].field_1:
                        if 31 < stor10[arg1].field_1:
                            mem[ceil32(stor10[arg1].field_1) + 160] = stor10[arg1].field_0
                            idx = ceil32(stor10[arg1].field_1) + 160
                            s = 0
                            while ceil32(stor10[arg1].field_1) + stor10[arg1].field_1 + 128 > idx:
                                mem[idx + 32] = stor10[arg1][s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            return Array(len=2 * Mask(256, -1, stor10[arg1].field_1), data=mem[ceil32(stor10[arg1].field_1) + 160 len ceil32(stor10[arg1].field_1)]), 
                        mem[ceil32(stor10[arg1].field_1) + 160] = 256 * stor10[arg1].field_8
                else:
                    if stor10[arg1].field_0 == stor10[arg1].field_1 < 32:
                        revert with 'NH{q', 34
                    if stor10[arg1].field_1:
                        if 31 < stor10[arg1].field_1:
                            mem[ceil32(stor10[arg1].field_1) + 160] = stor10[arg1].field_0
                            idx = ceil32(stor10[arg1].field_1) + 160
                            s = 0
                            while ceil32(stor10[arg1].field_1) + stor10[arg1].field_1 + 128 > idx:
                                mem[idx + 32] = stor10[arg1][s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            return Array(len=2 * Mask(256, -1, stor10[arg1].field_1), data=mem[ceil32(stor10[arg1].field_1) + 160 len ceil32(stor10[arg1].field_1)]), 
                        mem[ceil32(stor10[arg1].field_1) + 160] = 256 * stor10[arg1].field_8
                mem[ceil32(stor10[arg1].field_1) + ceil32(stor10[arg1].field_1) + 224 len ceil32(stor10[arg1].field_1)] = mem[ceil32(stor10[arg1].field_1) + 160 len ceil32(stor10[arg1].field_1)]
                if ceil32(stor10[arg1].field_1) > stor10[arg1].field_1:
                    mem[ceil32(stor10[arg1].field_1) + ceil32(stor10[arg1].field_1) + stor10[arg1].field_1 + 224] = 0
                return Array(len=2 * Mask(256, -1, stor10[arg1].field_1), data=mem[ceil32(stor10[arg1].field_1) + 160 len ceil32(stor10[arg1].field_1)], mem[ceil32(stor10[arg1].field_1) + (2 * ceil32(stor10[arg1].field_1)) + 224 len 2 * ceil32(stor10[arg1].field_1)]), 
            if stor10[arg1].field_0 == stor10[arg1].field_1 < 32:
                revert with 'NH{q', 34
            if stor10[arg1].field_0:
                if stor10[arg1].field_0 == stor10[arg1].field_1 < 32:
                    revert with 'NH{q', 34
                if not stor10[arg1].field_1:
                    mem[(2 * ceil32(stor10[arg1].field_1)) + 160] = 32
                    mem[(2 * ceil32(stor10[arg1].field_1)) + 192] = stor10[arg1].field_1
                    mem[(2 * ceil32(stor10[arg1].field_1)) + 224 len ceil32(stor10[arg1].field_1)] = mem[ceil32(stor10[arg1].field_1) + 160 len ceil32(stor10[arg1].field_1)]
                    if ceil32(stor10[arg1].field_1) > stor10[arg1].field_1:
                        mem[(2 * ceil32(stor10[arg1].field_1)) + stor10[arg1].field_1 + 224] = 0
                    return memory
                      from (2 * ceil32(stor10[arg1].field_1)) + 160
                       len (6 * ceil32(stor10[arg1].field_1)) + 64
                if 31 >= stor10[arg1].field_1:
                    mem[ceil32(stor10[arg1].field_1) + 160] = 256 * stor10[arg1].field_8
                    mem[(2 * ceil32(stor10[arg1].field_1)) + 160] = 32
                    mem[(2 * ceil32(stor10[arg1].field_1)) + 192] = stor10[arg1].field_1
                    mem[(2 * ceil32(stor10[arg1].field_1)) + 224 len ceil32(stor10[arg1].field_1)] = mem[ceil32(stor10[arg1].field_1) + 160 len ceil32(stor10[arg1].field_1)]
                    if ceil32(stor10[arg1].field_1) > stor10[arg1].field_1:
                        mem[(2 * ceil32(stor10[arg1].field_1)) + stor10[arg1].field_1 + 224] = 0
                    return memory
                      from (2 * ceil32(stor10[arg1].field_1)) + 160
                       len (6 * ceil32(stor10[arg1].field_1)) + 64
                mem[ceil32(stor10[arg1].field_1) + 160] = stor10[arg1].field_0
                idx = ceil32(stor10[arg1].field_1) + 160
                s = 0
                while ceil32(stor10[arg1].field_1) + stor10[arg1].field_1 + 128 > idx:
                    mem[idx + 32] = stor10[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
            else:
                if stor10[arg1].field_0 == stor10[arg1].field_1 < 32:
                    revert with 'NH{q', 34
                if not stor10[arg1].field_1:
                    mem[(2 * ceil32(stor10[arg1].field_1)) + 160] = 32
                    mem[(2 * ceil32(stor10[arg1].field_1)) + 192] = stor10[arg1].field_1
                    mem[(2 * ceil32(stor10[arg1].field_1)) + 224 len ceil32(stor10[arg1].field_1)] = mem[ceil32(stor10[arg1].field_1) + 160 len ceil32(stor10[arg1].field_1)]
                    if ceil32(stor10[arg1].field_1) > stor10[arg1].field_1:
                        mem[(2 * ceil32(stor10[arg1].field_1)) + stor10[arg1].field_1 + 224] = 0
                    return memory
                      from (2 * ceil32(stor10[arg1].field_1)) + 160
                       len (6 * ceil32(stor10[arg1].field_1)) + 64
                if 31 >= stor10[arg1].field_1:
                    mem[ceil32(stor10[arg1].field_1) + 160] = 256 * stor10[arg1].field_8
                    mem[(2 * ceil32(stor10[arg1].field_1)) + 160] = 32
                    mem[(2 * ceil32(stor10[arg1].field_1)) + 192] = stor10[arg1].field_1
                    mem[(2 * ceil32(stor10[arg1].field_1)) + 224 len ceil32(stor10[arg1].field_1)] = mem[ceil32(stor10[arg1].field_1) + 160 len ceil32(stor10[arg1].field_1)]
                    if ceil32(stor10[arg1].field_1) > stor10[arg1].field_1:
                        mem[(2 * ceil32(stor10[arg1].field_1)) + stor10[arg1].field_1 + 224] = 0
                    return memory
                      from (2 * ceil32(stor10[arg1].field_1)) + 160
                       len (6 * ceil32(stor10[arg1].field_1)) + 64
                mem[ceil32(stor10[arg1].field_1) + 160] = stor10[arg1].field_0
                idx = ceil32(stor10[arg1].field_1) + 160
                s = 0
                while ceil32(stor10[arg1].field_1) + stor10[arg1].field_1 + 128 > idx:
                    mem[idx + 32] = stor10[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
            mem[(2 * ceil32(stor10[arg1].field_1)) + 160] = 32
            mem[(2 * ceil32(stor10[arg1].field_1)) + 192] = stor10[arg1].field_1
            mem[(2 * ceil32(stor10[arg1].field_1)) + 224 len ceil32(stor10[arg1].field_1)] = mem[ceil32(stor10[arg1].field_1) + 160 len ceil32(stor10[arg1].field_1)]
            if ceil32(stor10[arg1].field_1) > stor10[arg1].field_1:
                mem[(2 * ceil32(stor10[arg1].field_1)) + stor10[arg1].field_1 + 224] = 0
            return memory
              from (2 * ceil32(stor10[arg1].field_1)) + 160
               len (4 * ceil32(stor10[arg1].field_1)) + 64
        if 31 >= stor10[arg1].field_1:
            if stor10[arg1].field_1 <= 0:
                if bool(stor2.length):
                    if bool(stor2.length) == stor2.length.field_1 < 32:
                        revert with 'NH{q', 34
                    if bool(stor2.length):
                        if bool(stor2.length) == stor2.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if stor2.length.field_1:
                            if 31 < stor2.length.field_1:
                                mem[ceil32(stor10[arg1].field_1) + 160] = uint256(stor2.field_0)
                                idx = ceil32(stor10[arg1].field_1) + 160
                                s = 0
                                while ceil32(stor10[arg1].field_1) + stor2.length.field_1 + 128 > idx:
                                    mem[idx + 32] = stor2[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                return Array(len=2 * Mask(256, -1, stor2.length.field_1), data=mem[ceil32(stor10[arg1].field_1) + 160 len ceil32(stor2.length.field_1)]), 
                            mem[ceil32(stor10[arg1].field_1) + 160] = 256 * stor2.length.field_8
                    else:
                        if bool(stor2.length) == stor2.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if stor2.length.field_1:
                            if 31 < stor2.length.field_1:
                                mem[ceil32(stor10[arg1].field_1) + 160] = uint256(stor2.field_0)
                                idx = ceil32(stor10[arg1].field_1) + 160
                                s = 0
                                while ceil32(stor10[arg1].field_1) + stor2.length.field_1 + 128 > idx:
                                    mem[idx + 32] = stor2[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                return Array(len=2 * Mask(256, -1, stor2.length.field_1), data=mem[ceil32(stor10[arg1].field_1) + 160 len ceil32(stor2.length.field_1)]), 
                            mem[ceil32(stor10[arg1].field_1) + 160] = 256 * stor2.length.field_8
                    mem[ceil32(stor10[arg1].field_1) + ceil32(stor2.length.field_1) + 224 len ceil32(stor2.length.field_1)] = mem[ceil32(stor10[arg1].field_1) + 160 len ceil32(stor2.length.field_1)]
                    if ceil32(stor2.length.field_1) > stor2.length.field_1:
                        mem[ceil32(stor10[arg1].field_1) + ceil32(stor2.length.field_1) + stor2.length.field_1 + 224] = 0
                    return Array(len=2 * Mask(256, -1, stor2.length.field_1), data=mem[ceil32(stor10[arg1].field_1) + 160 len ceil32(stor2.length.field_1)], mem[ceil32(stor10[arg1].field_1) + (2 * ceil32(stor2.length.field_1)) + 224 len 2 * ceil32(stor2.length.field_1)]), 
                if bool(stor2.length) == stor2.length.field_1 < 32:
                    revert with 'NH{q', 34
                if bool(stor2.length):
                    if bool(stor2.length) == stor2.length.field_1 < 32:
                        revert with 'NH{q', 34
                    if stor2.length.field_1:
                        if 31 < stor2.length.field_1:
                            mem[ceil32(stor10[arg1].field_1) + 160] = uint256(stor2.field_0)
                            idx = ceil32(stor10[arg1].field_1) + 160
                            s = 0
                            while ceil32(stor10[arg1].field_1) + stor2.length.field_1 + 128 > idx:
                                mem[idx + 32] = stor2[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            return Array(len=stor2.length % 128, data=mem[ceil32(stor10[arg1].field_1) + 160 len ceil32(stor2.length.field_1)])
                        mem[ceil32(stor10[arg1].field_1) + 160] = 256 * stor2.length.field_8
                else:
                    if bool(stor2.length) == stor2.length.field_1 < 32:
                        revert with 'NH{q', 34
                    if stor2.length.field_1:
                        if 31 < stor2.length.field_1:
                            mem[ceil32(stor10[arg1].field_1) + 160] = uint256(stor2.field_0)
                            idx = ceil32(stor10[arg1].field_1) + 160
                            s = 0
                            while ceil32(stor10[arg1].field_1) + stor2.length.field_1 + 128 > idx:
                                mem[idx + 32] = stor2[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            return Array(len=stor2.length % 128, data=mem[ceil32(stor10[arg1].field_1) + 160 len ceil32(stor2.length.field_1)])
                        mem[ceil32(stor10[arg1].field_1) + 160] = 256 * stor2.length.field_8
                mem[ceil32(stor10[arg1].field_1) + ceil32(stor2.length.field_1) + 224 len ceil32(stor2.length.field_1)] = mem[ceil32(stor10[arg1].field_1) + 160 len ceil32(stor2.length.field_1)]
                if ceil32(stor2.length.field_1) > stor2.length.field_1:
                    mem[ceil32(stor10[arg1].field_1) + ceil32(stor2.length.field_1) + stor2.length.field_1 + 224] = 0
                return Array(len=stor2.length % 128, data=mem[ceil32(stor10[arg1].field_1) + 160 len ceil32(stor2.length.field_1)], mem[ceil32(stor10[arg1].field_1) + (2 * ceil32(stor2.length.field_1)) + 224 len 2 * ceil32(stor2.length.field_1)]), 
            if stor10[arg1].field_0:
                if stor10[arg1].field_0 == stor10[arg1].field_1 < 32:
                    revert with 'NH{q', 34
                if stor10[arg1].field_0:
                    if stor10[arg1].field_0 == stor10[arg1].field_1 < 32:
                        revert with 'NH{q', 34
                    if stor10[arg1].field_1:
                        if 31 < stor10[arg1].field_1:
                            mem[ceil32(stor10[arg1].field_1) + 160] = stor10[arg1].field_0
                            idx = ceil32(stor10[arg1].field_1) + 160
                            s = 0
                            while ceil32(stor10[arg1].field_1) + stor10[arg1].field_1 + 128 > idx:
                                mem[idx + 32] = stor10[arg1][s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            return Array(len=2 * Mask(256, -1, stor10[arg1].field_1), data=mem[ceil32(stor10[arg1].field_1) + 160 len ceil32(stor10[arg1].field_1)]), 
                        mem[ceil32(stor10[arg1].field_1) + 160] = 256 * stor10[arg1].field_8
                else:
                    if stor10[arg1].field_0 == stor10[arg1].field_1 < 32:
                        revert with 'NH{q', 34
                    if stor10[arg1].field_1:
                        if 31 < stor10[arg1].field_1:
                            mem[ceil32(stor10[arg1].field_1) + 160] = stor10[arg1].field_0
                            idx = ceil32(stor10[arg1].field_1) + 160
                            s = 0
                            while ceil32(stor10[arg1].field_1) + stor10[arg1].field_1 + 128 > idx:
                                mem[idx + 32] = stor10[arg1][s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            return Array(len=2 * Mask(256, -1, stor10[arg1].field_1), data=mem[ceil32(stor10[arg1].field_1) + 160 len ceil32(stor10[arg1].field_1)]), 
                        mem[ceil32(stor10[arg1].field_1) + 160] = 256 * stor10[arg1].field_8
                mem[ceil32(stor10[arg1].field_1) + ceil32(stor10[arg1].field_1) + 224 len ceil32(stor10[arg1].field_1)] = mem[ceil32(stor10[arg1].field_1) + 160 len ceil32(stor10[arg1].field_1)]
                if ceil32(stor10[arg1].field_1) > stor10[arg1].field_1:
                    mem[ceil32(stor10[arg1].field_1) + ceil32(stor10[arg1].field_1) + stor10[arg1].field_1 + 224] = 0
                return Array(len=2 * Mask(256, -1, stor10[arg1].field_1), data=mem[ceil32(stor10[arg1].field_1) + 160 len ceil32(stor10[arg1].field_1)], mem[ceil32(stor10[arg1].field_1) + (2 * ceil32(stor10[arg1].field_1)) + 224 len 2 * ceil32(stor10[arg1].field_1)]), 
            if stor10[arg1].field_0 == stor10[arg1].field_1 < 32:
                revert with 'NH{q', 34
            if stor10[arg1].field_0:
                if stor10[arg1].field_0 == stor10[arg1].field_1 < 32:
                    revert with 'NH{q', 34
                if not stor10[arg1].field_1:
                    mem[(2 * ceil32(stor10[arg1].field_1)) + 160] = 32
                    mem[(2 * ceil32(stor10[arg1].field_1)) + 192] = stor10[arg1].field_1
                    mem[(2 * ceil32(stor10[arg1].field_1)) + 224 len ceil32(stor10[arg1].field_1)] = mem[ceil32(stor10[arg1].field_1) + 160 len ceil32(stor10[arg1].field_1)]
                    if ceil32(stor10[arg1].field_1) > stor10[arg1].field_1:
                        mem[(2 * ceil32(stor10[arg1].field_1)) + stor10[arg1].field_1 + 224] = 0
                    return memory
                      from (2 * ceil32(stor10[arg1].field_1)) + 160
                       len (6 * ceil32(stor10[arg1].field_1)) + 64
                if 31 >= stor10[arg1].field_1:
                    mem[ceil32(stor10[arg1].field_1) + 160] = 256 * stor10[arg1].field_8
                    mem[(2 * ceil32(stor10[arg1].field_1)) + 160] = 32
                    mem[(2 * ceil32(stor10[arg1].field_1)) + 192] = stor10[arg1].field_1
                    mem[(2 * ceil32(stor10[arg1].field_1)) + 224 len ceil32(stor10[arg1].field_1)] = mem[ceil32(stor10[arg1].field_1) + 160 len ceil32(stor10[arg1].field_1)]
                    if ceil32(stor10[arg1].field_1) > stor10[arg1].field_1:
                        mem[(2 * ceil32(stor10[arg1].field_1)) + stor10[arg1].field_1 + 224] = 0
                    return memory
                      from (2 * ceil32(stor10[arg1].field_1)) + 160
                       len (6 * ceil32(stor10[arg1].field_1)) + 64
                mem[ceil32(stor10[arg1].field_1) + 160] = stor10[arg1].field_0
                idx = ceil32(stor10[arg1].field_1) + 160
                s = 0
                while ceil32(stor10[arg1].field_1) + stor10[arg1].field_1 + 128 > idx:
                    mem[idx + 32] = stor10[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
            else:
                if stor10[arg1].field_0 == stor10[arg1].field_1 < 32:
                    revert with 'NH{q', 34
                if not stor10[arg1].field_1:
                    mem[(2 * ceil32(stor10[arg1].field_1)) + 160] = 32
                    mem[(2 * ceil32(stor10[arg1].field_1)) + 192] = stor10[arg1].field_1
                    mem[(2 * ceil32(stor10[arg1].field_1)) + 224 len ceil32(stor10[arg1].field_1)] = mem[ceil32(stor10[arg1].field_1) + 160 len ceil32(stor10[arg1].field_1)]
                    if ceil32(stor10[arg1].field_1) > stor10[arg1].field_1:
                        mem[(2 * ceil32(stor10[arg1].field_1)) + stor10[arg1].field_1 + 224] = 0
                    return memory
                      from (2 * ceil32(stor10[arg1].field_1)) + 160
                       len (6 * ceil32(stor10[arg1].field_1)) + 64
                if 31 >= stor10[arg1].field_1:
                    mem[ceil32(stor10[arg1].field_1) + 160] = 256 * stor10[arg1].field_8
                    mem[(2 * ceil32(stor10[arg1].field_1)) + 160] = 32
                    mem[(2 * ceil32(stor10[arg1].field_1)) + 192] = stor10[arg1].field_1
                    mem[(2 * ceil32(stor10[arg1].field_1)) + 224 len ceil32(stor10[arg1].field_1)] = mem[ceil32(stor10[arg1].field_1) + 160 len ceil32(stor10[arg1].field_1)]
                    if ceil32(stor10[arg1].field_1) > stor10[arg1].field_1:
                        mem[(2 * ceil32(stor10[arg1].field_1)) + stor10[arg1].field_1 + 224] = 0
                    return memory
                      from (2 * ceil32(stor10[arg1].field_1)) + 160
                       len (6 * ceil32(stor10[arg1].field_1)) + 64
                mem[ceil32(stor10[arg1].field_1) + 160] = stor10[arg1].field_0
                idx = ceil32(stor10[arg1].field_1) + 160
                s = 0
                while ceil32(stor10[arg1].field_1) + stor10[arg1].field_1 + 128 > idx:
                    mem[idx + 32] = stor10[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
            mem[(2 * ceil32(stor10[arg1].field_1)) + 160] = 32
            mem[(2 * ceil32(stor10[arg1].field_1)) + 192] = stor10[arg1].field_1
            mem[(2 * ceil32(stor10[arg1].field_1)) + 224 len ceil32(stor10[arg1].field_1)] = mem[ceil32(stor10[arg1].field_1) + 160 len ceil32(stor10[arg1].field_1)]
            if ceil32(stor10[arg1].field_1) > stor10[arg1].field_1:
                mem[(2 * ceil32(stor10[arg1].field_1)) + stor10[arg1].field_1 + 224] = 0
            return memory
              from (2 * ceil32(stor10[arg1].field_1)) + 160
               len (4 * ceil32(stor10[arg1].field_1)) + 64
        idx = 128
        s = 0
        while stor10[arg1].field_1 + 96 > idx:
            mem[idx + 32] = stor10[arg1][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    if stor10[arg1].field_1 <= 0:
        if bool(stor2.length):
            if bool(stor2.length) == stor2.length.field_1 < 32:
                revert with 'NH{q', 34
            if bool(stor2.length):
                if bool(stor2.length) == stor2.length.field_1 < 32:
                    revert with 'NH{q', 34
                if stor2.length.field_1:
                    if 31 >= stor2.length.field_1:
                        mem[ceil32(stor10[arg1].field_1) + 160] = 256 * stor2.length.field_8
                    else:
                        mem[ceil32(stor10[arg1].field_1) + 160] = uint256(stor2.field_0)
                        idx = ceil32(stor10[arg1].field_1) + 160
                        s = 0
                        while ceil32(stor10[arg1].field_1) + stor2.length.field_1 + 128 > idx:
                            mem[idx + 32] = stor2[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
            else:
                if bool(stor2.length) == stor2.length.field_1 < 32:
                    revert with 'NH{q', 34
                if stor2.length.field_1:
                    if 31 >= stor2.length.field_1:
                        mem[ceil32(stor10[arg1].field_1) + 160] = 256 * stor2.length.field_8
                    else:
                        mem[ceil32(stor10[arg1].field_1) + 160] = uint256(stor2.field_0)
                        idx = ceil32(stor10[arg1].field_1) + 160
                        s = 0
                        while ceil32(stor10[arg1].field_1) + stor2.length.field_1 + 128 > idx:
                            mem[idx + 32] = stor2[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
            return Array(len=2 * Mask(256, -1, stor2.length.field_1), data=mem[ceil32(stor10[arg1].field_1) + 160 len ceil32(stor2.length.field_1)]), 
        if bool(stor2.length) == stor2.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor2.length):
            if bool(stor2.length) == stor2.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor2.length.field_1:
                if 31 >= stor2.length.field_1:
                    mem[ceil32(stor10[arg1].field_1) + 160] = 256 * stor2.length.field_8
                else:
                    mem[ceil32(stor10[arg1].field_1) + 160] = uint256(stor2.field_0)
                    idx = ceil32(stor10[arg1].field_1) + 160
                    s = 0
                    while ceil32(stor10[arg1].field_1) + stor2.length.field_1 + 128 > idx:
                        mem[idx + 32] = stor2[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if bool(stor2.length) == stor2.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor2.length.field_1:
                if 31 >= stor2.length.field_1:
                    mem[ceil32(stor10[arg1].field_1) + 160] = 256 * stor2.length.field_8
                else:
                    mem[ceil32(stor10[arg1].field_1) + 160] = uint256(stor2.field_0)
                    idx = ceil32(stor10[arg1].field_1) + 160
                    s = 0
                    while ceil32(stor10[arg1].field_1) + stor2.length.field_1 + 128 > idx:
                        mem[idx + 32] = stor2[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        return Array(len=stor2.length % 128, data=mem[ceil32(stor10[arg1].field_1) + 160 len ceil32(stor2.length.field_1)])
    if stor10[arg1].field_0:
        if stor10[arg1].field_0 == stor10[arg1].field_1 < 32:
            revert with 'NH{q', 34
        if stor10[arg1].field_0:
            if stor10[arg1].field_0 == stor10[arg1].field_1 < 32:
                revert with 'NH{q', 34
            if stor10[arg1].field_1:
                if 31 >= stor10[arg1].field_1:
                    mem[ceil32(stor10[arg1].field_1) + 160] = 256 * stor10[arg1].field_8
                else:
                    mem[ceil32(stor10[arg1].field_1) + 160] = stor10[arg1].field_0
                    idx = ceil32(stor10[arg1].field_1) + 160
                    s = 0
                    while ceil32(stor10[arg1].field_1) + stor10[arg1].field_1 + 128 > idx:
                        mem[idx + 32] = stor10[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if stor10[arg1].field_0 == stor10[arg1].field_1 < 32:
                revert with 'NH{q', 34
            if stor10[arg1].field_1:
                if 31 >= stor10[arg1].field_1:
                    mem[ceil32(stor10[arg1].field_1) + 160] = 256 * stor10[arg1].field_8
                else:
                    mem[ceil32(stor10[arg1].field_1) + 160] = stor10[arg1].field_0
                    idx = ceil32(stor10[arg1].field_1) + 160
                    s = 0
                    while ceil32(stor10[arg1].field_1) + stor10[arg1].field_1 + 128 > idx:
                        mem[idx + 32] = stor10[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        return Array(len=2 * Mask(256, -1, stor10[arg1].field_1), data=mem[ceil32(stor10[arg1].field_1) + 160 len ceil32(stor10[arg1].field_1)]), 
    if stor10[arg1].field_0 == stor10[arg1].field_1 < 32:
        revert with 'NH{q', 34
    if stor10[arg1].field_0:
        if stor10[arg1].field_0 == stor10[arg1].field_1 < 32:
            revert with 'NH{q', 34
        if not stor10[arg1].field_1:
            mem[(2 * ceil32(stor10[arg1].field_1)) + 160] = 32
            mem[(2 * ceil32(stor10[arg1].field_1)) + 192] = stor10[arg1].field_1
            mem[(2 * ceil32(stor10[arg1].field_1)) + 224 len ceil32(stor10[arg1].field_1)] = mem[ceil32(stor10[arg1].field_1) + 160 len ceil32(stor10[arg1].field_1)]
            if ceil32(stor10[arg1].field_1) > stor10[arg1].field_1:
                mem[(2 * ceil32(stor10[arg1].field_1)) + stor10[arg1].field_1 + 224] = 0
            return memory
              from (2 * ceil32(stor10[arg1].field_1)) + 160
               len (4 * ceil32(stor10[arg1].field_1)) + 64
        if 31 >= stor10[arg1].field_1:
            mem[ceil32(stor10[arg1].field_1) + 160] = 256 * stor10[arg1].field_8
            mem[(2 * ceil32(stor10[arg1].field_1)) + 160] = 32
            mem[(2 * ceil32(stor10[arg1].field_1)) + 192] = stor10[arg1].field_1
            mem[(2 * ceil32(stor10[arg1].field_1)) + 224 len ceil32(stor10[arg1].field_1)] = mem[ceil32(stor10[arg1].field_1) + 160 len ceil32(stor10[arg1].field_1)]
            if ceil32(stor10[arg1].field_1) > stor10[arg1].field_1:
                mem[(2 * ceil32(stor10[arg1].field_1)) + stor10[arg1].field_1 + 224] = 0
            return memory
              from (2 * ceil32(stor10[arg1].field_1)) + 160
               len (4 * ceil32(stor10[arg1].field_1)) + 64
        mem[ceil32(stor10[arg1].field_1) + 160] = stor10[arg1].field_0
        idx = ceil32(stor10[arg1].field_1) + 160
        s = 0
        while ceil32(stor10[arg1].field_1) + stor10[arg1].field_1 + 128 > idx:
            mem[idx + 32] = stor10[arg1][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    else:
        if stor10[arg1].field_0 == stor10[arg1].field_1 < 32:
            revert with 'NH{q', 34
        if not stor10[arg1].field_1:
            mem[(2 * ceil32(stor10[arg1].field_1)) + 160] = 32
            mem[(2 * ceil32(stor10[arg1].field_1)) + 192] = stor10[arg1].field_1
            mem[(2 * ceil32(stor10[arg1].field_1)) + 224 len ceil32(stor10[arg1].field_1)] = mem[ceil32(stor10[arg1].field_1) + 160 len ceil32(stor10[arg1].field_1)]
            if ceil32(stor10[arg1].field_1) > stor10[arg1].field_1:
                mem[(2 * ceil32(stor10[arg1].field_1)) + stor10[arg1].field_1 + 224] = 0
            return memory
              from (2 * ceil32(stor10[arg1].field_1)) + 160
               len (4 * ceil32(stor10[arg1].field_1)) + 64
        if 31 >= stor10[arg1].field_1:
            mem[ceil32(stor10[arg1].field_1) + 160] = 256 * stor10[arg1].field_8
            mem[(2 * ceil32(stor10[arg1].field_1)) + 160] = 32
            mem[(2 * ceil32(stor10[arg1].field_1)) + 192] = stor10[arg1].field_1
            mem[(2 * ceil32(stor10[arg1].field_1)) + 224 len ceil32(stor10[arg1].field_1)] = mem[ceil32(stor10[arg1].field_1) + 160 len ceil32(stor10[arg1].field_1)]
            if ceil32(stor10[arg1].field_1) > stor10[arg1].field_1:
                mem[(2 * ceil32(stor10[arg1].field_1)) + stor10[arg1].field_1 + 224] = 0
            return memory
              from (2 * ceil32(stor10[arg1].field_1)) + 160
               len (4 * ceil32(stor10[arg1].field_1)) + 64
        mem[ceil32(stor10[arg1].field_1) + 160] = stor10[arg1].field_0
        idx = ceil32(stor10[arg1].field_1) + 160
        s = 0
        while ceil32(stor10[arg1].field_1) + stor10[arg1].field_1 + 128 > idx:
            mem[idx + 32] = stor10[arg1][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    mem[(2 * ceil32(stor10[arg1].field_1)) + 160] = 32
    mem[(2 * ceil32(stor10[arg1].field_1)) + 192] = stor10[arg1].field_1
    mem[(2 * ceil32(stor10[arg1].field_1)) + 224 len ceil32(stor10[arg1].field_1)] = mem[ceil32(stor10[arg1].field_1) + 160 len ceil32(stor10[arg1].field_1)]
    if ceil32(stor10[arg1].field_1) <= stor10[arg1].field_1:
        return memory
          from (2 * ceil32(stor10[arg1].field_1)) + 160
           len ceil32(stor10[arg1].field_1) + 64
    mem[(2 * ceil32(stor10[arg1].field_1)) + stor10[arg1].field_1 + 224] = 0
    return memory
      from (2 * ceil32(stor10[arg1].field_1)) + 160
       len (5 * ceil32(stor10[arg1].field_1)) + 64
}

function create(address arg1, uint256 arg2, uint256 arg3, string arg4, bytes arg5) {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(arg4.length) + 128 > test266151307() or ceil32(arg4.length) + 128 < 96:
        revert with 'NH{q', 65
    require arg4 + arg4.length + 36 <= calldata.size
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    if arg5.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(arg4.length) + ceil32(arg5.length) + 160 > test266151307() or ceil32(arg5.length) + 160 < 128:
        revert with 'NH{q', 65
    mem[ceil32(arg4.length) + 128] = arg5.length
    require arg5 + arg5.length + 36 <= calldata.size
    mem[ceil32(arg4.length) + 160 len arg5.length] = arg5[all]
    mem[ceil32(arg4.length) + arg5.length + 160] = 0
    if this.address != msg.sender:
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
        if creators[arg2]:
            revert with 0, 'token _id already exists'
        if this.address != msg.sender:
            creators[arg2] = msg.sender
            if arg4.length <= 0:
                if not arg1:
                    revert with 0, 'ERC1155: mint to the zero address'
                if this.address != msg.sender:
                    mem[ceil32(arg4.length) + ceil32(arg5.length) + 160] = 1
                    if 0 >= Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[ceil32(arg4.length) + arg5.length + 192 len -arg5.length + ceil32(arg5.length)]:
                        revert with 'NH{q', 50
                    if balanceOf[arg2][address(arg1)] > -arg3 - 1:
                        revert with 'NH{q', 17
                    balanceOf[arg2][address(arg1)] += arg3
                    emit TransferSingle(arg2, arg3, msg.sender, 0, arg1);
                    if ext_code.size(arg1) > 0:
                        require ext_code.size(arg1)
                        call arg1.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                             gas gas_remaining wei
                            args msg.sender, 0, arg2, arg3, 160, arg5.length, arg5[all], mem[ceil32(arg4.length) + arg5.length + 160 len ceil32(arg5.length) - arg5.length]
                        if not ext_call.success:
                            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                        require return_data.size >= 32
                        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                        if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                else:
                    mem[ceil32(arg4.length) + ceil32(arg5.length) + 160] = calldata.size
                    mem[ceil32(arg4.length) + ceil32(arg5.length) + 192 len calldata.size] = call.data[0 len calldata.size]
                    if balanceOf[arg2][address(arg1)] > -arg3 - 1:
                        revert with 'NH{q', 17
                    balanceOf[arg2][address(arg1)] += arg3
                    emit TransferSingle(arg2, arg3, mem[ceil32(arg4.length) + ceil32(arg5.length) + calldata.size + 172 len 20], 0, arg1);
                    if ext_code.size(arg1) > 0:
                        require ext_code.size(arg1)
                        call arg1.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                             gas gas_remaining wei
                            args mem[ceil32(arg4.length) + ceil32(arg5.length) + calldata.size + 172 len 20], 0, arg2, arg3, 160, arg5.length, arg5[all], mem[ceil32(arg4.length) + arg5.length + 160 len ceil32(arg5.length) - arg5.length]
                        if not ext_call.success:
                            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                        require return_data.size >= 32
                        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                        if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
            else:
                if stor10[arg2].field_0:
                    if stor10[arg2].field_0 == stor10[arg2].field_1 < 32:
                        revert with 'NH{q', 34
                    if arg4.length:
                        stor10[arg2][].field_0 = Array(len=arg4.length, data=arg4[all])
                        mem[ceil32(arg4.length) + ceil32(arg5.length) + 160] = 32
                        mem[ceil32(arg4.length) + ceil32(arg5.length) + 192] = arg4.length
                        mem[ceil32(arg4.length) + ceil32(arg5.length) + 224 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                        if ceil32(arg4.length) <= arg4.length:
                            emit URI(string arg1, uint256 arg2):
                                     Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0),
                                     mem[ceil32(arg4.length) + arg5.length + 192 len ceil32(arg5.length) + -arg5.length + 32],
                                     Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256,
                                     mem[(2 * ceil32(arg4.length)) + ceil32(arg5.length) + 224 len 2 * ceil32(arg4.length)],
                                     arg2,
                            if not arg1:
                                revert with 0, 'ERC1155: mint to the zero address'
                            if this.address != msg.sender:
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + 160] = 1
                                if 0 >= Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[ceil32(arg4.length) + arg5.length + 192 len -arg5.length + ceil32(arg5.length)]:
                                    revert with 'NH{q', 50
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + 192] = arg2
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + 224] = 1
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + 256] = arg3
                                if balanceOf[arg2][address(arg1)] > -arg3 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[arg2][address(arg1)] += arg3
                                emit TransferSingle(arg2, arg3, msg.sender, 0, arg1);
                                if ext_code.size(arg1) > 0:
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + 288] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + 292] = msg.sender
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + 324] = 0
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + 356] = arg2
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + 388] = arg3
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + 420] = 160
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + 452] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + 484 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                                    if ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) > Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]:
                                        mem[ceil32(arg4.length) + ceil32(arg5.length) + Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] + 484] = 0
                                    require ext_code.size(arg1)
                                    call arg1.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                         gas gas_remaining wei
                                        args msg.sender, 0, arg2, arg3, 160, mem[ceil32(arg4.length) + ceil32(arg5.length) + 452 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 32]
                                    if not ext_call.success:
                                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                    if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                            else:
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + 160] = calldata.size
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + 192 len calldata.size] = call.data[0 len calldata.size]
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + calldata.size + 192] = 0
                                _26020 = mem[ceil32(arg4.length) + ceil32(arg5.length) + calldata.size + 160]
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 192] = 1
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 224] = arg2
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 256] = 1
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 288] = arg3
                                if balanceOf[arg2][address(arg1)] > -arg3 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[arg2][address(arg1)] += arg3
                                emit TransferSingle(arg2, arg3, mem[ceil32(arg4.length) + ceil32(arg5.length) + calldata.size + 172 len 20], 0, arg1);
                                if ext_code.size(arg1) > 0:
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 320] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 324] = mem[ceil32(arg4.length) + ceil32(arg5.length) + calldata.size + 172 len 20]
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 356] = 0
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 388] = arg2
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 420] = arg3
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 452] = 160
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 484] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 516 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                                    if ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) <= Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]:
                                        require ext_code.size(arg1)
                                        call arg1.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                             gas gas_remaining wei
                                            args address(mem[ceil32(arg4.length) + ceil32(arg5.length) + calldata.size + 160]), 0, arg2, arg3, 160, mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 484 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 32]
                                    else:
                                        mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] + 516] = 0
                                        require ext_code.size(arg1)
                                        call arg1.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                             gas gas_remaining wei
                                            args address(_26020), 0, arg2, arg3, 160, mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 484 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 32]
                                    if not ext_call.success:
                                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                    if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                        else:
                            mem[ceil32(arg4.length) + ceil32(arg5.length) + arg4.length + 224] = 0
                            emit URI(string arg1, uint256 arg2):
                                     Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0),
                                     mem[ceil32(arg4.length) + arg5.length + 192 len ceil32(arg5.length) + -arg5.length + 32],
                                     Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256,
                                     mem[(2 * ceil32(arg4.length)) + ceil32(arg5.length) + 224 len 2 * ceil32(arg4.length)],
                                     arg2,
                            if not arg1:
                                revert with 0, 'ERC1155: mint to the zero address'
                            if this.address != msg.sender:
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + 160] = 1
                                if 0 >= Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[ceil32(arg4.length) + arg5.length + 192 len -arg5.length + ceil32(arg5.length)]:
                                    revert with 'NH{q', 50
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + 192] = arg2
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + 224] = 1
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + 256] = arg3
                                if balanceOf[arg2][address(arg1)] > -arg3 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[arg2][address(arg1)] += arg3
                                emit TransferSingle(arg2, arg3, msg.sender, 0, arg1);
                                if ext_code.size(arg1) > 0:
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + 288] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + 292] = msg.sender
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + 324] = 0
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + 356] = arg2
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + 388] = arg3
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + 420] = 160
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + 452] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + 484 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                                    if ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) > Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]:
                                        mem[ceil32(arg4.length) + ceil32(arg5.length) + Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] + 484] = 0
                                    require ext_code.size(arg1)
                                    call arg1.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                         gas gas_remaining wei
                                        args msg.sender, 0, arg2, arg3, 160, mem[ceil32(arg4.length) + ceil32(arg5.length) + 452 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 32]
                                    if not ext_call.success:
                                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                    if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                            else:
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + 160] = calldata.size
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + 192 len calldata.size] = call.data[0 len calldata.size]
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + calldata.size + 192] = 0
                                _26220 = mem[ceil32(arg4.length) + ceil32(arg5.length) + calldata.size + 160]
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 192] = 1
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 224] = arg2
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 256] = 1
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 288] = arg3
                                if balanceOf[arg2][address(arg1)] > -arg3 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[arg2][address(arg1)] += arg3
                                emit TransferSingle(arg2, arg3, mem[ceil32(arg4.length) + ceil32(arg5.length) + calldata.size + 172 len 20], 0, arg1);
                                if ext_code.size(arg1) > 0:
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 320] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 324] = mem[ceil32(arg4.length) + ceil32(arg5.length) + calldata.size + 172 len 20]
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 356] = 0
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 388] = arg2
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 420] = arg3
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 452] = 160
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 484] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 516 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                                    if ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) <= Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]:
                                        require ext_code.size(arg1)
                                        call arg1.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                             gas gas_remaining wei
                                            args address(mem[ceil32(arg4.length) + ceil32(arg5.length) + calldata.size + 160]), 0, arg2, arg3, 160, mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 484 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 32]
                                    else:
                                        mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] + 516] = 0
                                        require ext_code.size(arg1)
                                        call arg1.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                             gas gas_remaining wei
                                            args address(_26220), 0, arg2, arg3, 160, mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 484 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 32]
                                    if not ext_call.success:
                                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                    if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                    else:
                        stor10[arg2].field_0 = 0
                        idx = 0
                        while stor10[arg2].field_1 + 31 / 32 > idx:
                            stor10[arg2][idx].field_0 = 0
                            idx = idx + 1
                            continue 
                        mem[ceil32(arg4.length) + ceil32(arg5.length) + 160] = 32
                        mem[ceil32(arg4.length) + ceil32(arg5.length) + 192] = arg4.length
                        mem[ceil32(arg4.length) + ceil32(arg5.length) + 224 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                        if ceil32(arg4.length) <= arg4.length:
                            emit URI(string arg1, uint256 arg2):
                                     Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0),
                                     mem[ceil32(arg4.length) + arg5.length + 192 len ceil32(arg5.length) + -arg5.length + 32],
                                     Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256,
                                     mem[(2 * ceil32(arg4.length)) + ceil32(arg5.length) + 224 len 2 * ceil32(arg4.length)],
                                     arg2,
                            if not arg1:
                                revert with 0, 'ERC1155: mint to the zero address'
                            if this.address != msg.sender:
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + 160] = 1
                                if 0 >= Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[ceil32(arg4.length) + arg5.length + 192 len -arg5.length + ceil32(arg5.length)]:
                                    revert with 'NH{q', 50
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + 192] = arg2
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + 224] = 1
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + 256] = arg3
                                if balanceOf[arg2][address(arg1)] > -arg3 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[arg2][address(arg1)] += arg3
                                emit TransferSingle(arg2, arg3, msg.sender, 0, arg1);
                                if ext_code.size(arg1) > 0:
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + 288] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + 292] = msg.sender
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + 324] = 0
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + 356] = arg2
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + 388] = arg3
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + 420] = 160
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + 452] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + 484 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                                    if ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) > Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]:
                                        mem[ceil32(arg4.length) + ceil32(arg5.length) + Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] + 484] = 0
                                    require ext_code.size(arg1)
                                    call arg1.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                         gas gas_remaining wei
                                        args msg.sender, 0, arg2, arg3, 160, mem[ceil32(arg4.length) + ceil32(arg5.length) + 452 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 32]
                                    if not ext_call.success:
                                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                    if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                            else:
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + 160] = calldata.size
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + 192 len calldata.size] = call.data[0 len calldata.size]
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + calldata.size + 192] = 0
                                _15864 = mem[ceil32(arg4.length) + ceil32(arg5.length) + calldata.size + 160]
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 192] = 1
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 224] = arg2
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 256] = 1
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 288] = arg3
                                if balanceOf[arg2][address(arg1)] > -arg3 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[arg2][address(arg1)] += arg3
                                emit TransferSingle(arg2, arg3, mem[ceil32(arg4.length) + ceil32(arg5.length) + calldata.size + 172 len 20], 0, arg1);
                                if ext_code.size(arg1) > 0:
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 320] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 324] = mem[ceil32(arg4.length) + ceil32(arg5.length) + calldata.size + 172 len 20]
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 356] = 0
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 388] = arg2
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 420] = arg3
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 452] = 160
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 484] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 516 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                                    if ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) <= Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]:
                                        require ext_code.size(arg1)
                                        call arg1.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                             gas gas_remaining wei
                                            args address(mem[ceil32(arg4.length) + ceil32(arg5.length) + calldata.size + 160]), 0, arg2, arg3, 160, mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 484 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 32]
                                    else:
                                        mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] + 516] = 0
                                        require ext_code.size(arg1)
                                        call arg1.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                             gas gas_remaining wei
                                            args address(_15864), 0, arg2, arg3, 160, mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 484 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 32]
                                    if not ext_call.success:
                                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                    if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                        else:
                            mem[ceil32(arg4.length) + ceil32(arg5.length) + arg4.length + 224] = 0
                            emit URI(string arg1, uint256 arg2):
                                     Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0),
                                     mem[ceil32(arg4.length) + arg5.length + 192 len ceil32(arg5.length) + -arg5.length + 32],
                                     Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256,
                                     mem[(2 * ceil32(arg4.length)) + ceil32(arg5.length) + 224 len 2 * ceil32(arg4.length)],
                                     arg2,
                            if not arg1:
                                revert with 0, 'ERC1155: mint to the zero address'
                            if this.address != msg.sender:
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + 160] = 1
                                if 0 >= Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[ceil32(arg4.length) + arg5.length + 192 len -arg5.length + ceil32(arg5.length)]:
                                    revert with 'NH{q', 50
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + 192] = arg2
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + 224] = 1
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + 256] = arg3
                                if balanceOf[arg2][address(arg1)] > -arg3 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[arg2][address(arg1)] += arg3
                                emit TransferSingle(arg2, arg3, msg.sender, 0, arg1);
                                if ext_code.size(arg1) > 0:
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + 288] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + 292] = msg.sender
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + 324] = 0
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + 356] = arg2
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + 388] = arg3
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + 420] = 160
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + 452] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + 484 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                                    if ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) > Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]:
                                        mem[ceil32(arg4.length) + ceil32(arg5.length) + Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] + 484] = 0
                                    require ext_code.size(arg1)
                                    call arg1.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                         gas gas_remaining wei
                                        args msg.sender, 0, arg2, arg3, 160, mem[ceil32(arg4.length) + ceil32(arg5.length) + 452 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 32]
                                    if not ext_call.success:
                                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                    if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                            else:
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + 160] = calldata.size
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + 192 len calldata.size] = call.data[0 len calldata.size]
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + calldata.size + 192] = 0
                                _15912 = mem[ceil32(arg4.length) + ceil32(arg5.length) + calldata.size + 160]
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 192] = 1
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 224] = arg2
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 256] = 1
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 288] = arg3
                                if balanceOf[arg2][address(arg1)] > -arg3 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[arg2][address(arg1)] += arg3
                                emit TransferSingle(arg2, arg3, mem[ceil32(arg4.length) + ceil32(arg5.length) + calldata.size + 172 len 20], 0, arg1);
                                if ext_code.size(arg1) > 0:
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 320] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 324] = mem[ceil32(arg4.length) + ceil32(arg5.length) + calldata.size + 172 len 20]
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 356] = 0
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 388] = arg2
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 420] = arg3
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 452] = 160
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 484] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 516 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                                    if ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) <= Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]:
                                        require ext_code.size(arg1)
                                        call arg1.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                             gas gas_remaining wei
                                            args address(mem[ceil32(arg4.length) + ceil32(arg5.length) + calldata.size + 160]), 0, arg2, arg3, 160, mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 484 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 32]
                                    else:
                                        mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] + 516] = 0
                                        require ext_code.size(arg1)
                                        call arg1.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                             gas gas_remaining wei
                                            args address(_15912), 0, arg2, arg3, 160, mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 484 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 32]
                                    if not ext_call.success:
                                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                    if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                else:
                    if stor10[arg2].field_0 == stor10[arg2].field_1 < 32:
                        revert with 'NH{q', 34
                    if arg4.length:
                        stor10[arg2][].field_0 = Array(len=arg4.length, data=arg4[all])
                        mem[ceil32(arg4.length) + ceil32(arg5.length) + 160] = 32
                        mem[ceil32(arg4.length) + ceil32(arg5.length) + 192] = arg4.length
                        mem[ceil32(arg4.length) + ceil32(arg5.length) + 224 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                        if ceil32(arg4.length) <= arg4.length:
                            emit URI(string arg1, uint256 arg2):
                                     Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0),
                                     mem[ceil32(arg4.length) + arg5.length + 192 len ceil32(arg5.length) + -arg5.length + 32],
                                     Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256,
                                     mem[(2 * ceil32(arg4.length)) + ceil32(arg5.length) + 224 len 2 * ceil32(arg4.length)],
                                     arg2,
                            if not arg1:
                                revert with 0, 'ERC1155: mint to the zero address'
                            if this.address != msg.sender:
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + 160] = 1
                                if 0 >= Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[ceil32(arg4.length) + arg5.length + 192 len -arg5.length + ceil32(arg5.length)]:
                                    revert with 'NH{q', 50
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + 192] = arg2
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + 224] = 1
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + 256] = arg3
                                if balanceOf[arg2][address(arg1)] > -arg3 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[arg2][address(arg1)] += arg3
                                emit TransferSingle(arg2, arg3, msg.sender, 0, arg1);
                                if ext_code.size(arg1) > 0:
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + 288] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + 292] = msg.sender
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + 324] = 0
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + 356] = arg2
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + 388] = arg3
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + 420] = 160
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + 452] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + 484 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                                    if ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) > Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]:
                                        mem[ceil32(arg4.length) + ceil32(arg5.length) + Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] + 484] = 0
                                    require ext_code.size(arg1)
                                    call arg1.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                         gas gas_remaining wei
                                        args msg.sender, 0, arg2, arg3, 160, mem[ceil32(arg4.length) + ceil32(arg5.length) + 452 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 32]
                                    if not ext_call.success:
                                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                    if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                            else:
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + 160] = calldata.size
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + 192 len calldata.size] = call.data[0 len calldata.size]
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + calldata.size + 192] = 0
                                _26046 = mem[ceil32(arg4.length) + ceil32(arg5.length) + calldata.size + 160]
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 192] = 1
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 224] = arg2
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 256] = 1
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 288] = arg3
                                if balanceOf[arg2][address(arg1)] > -arg3 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[arg2][address(arg1)] += arg3
                                emit TransferSingle(arg2, arg3, mem[ceil32(arg4.length) + ceil32(arg5.length) + calldata.size + 172 len 20], 0, arg1);
                                if ext_code.size(arg1) > 0:
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 320] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 324] = mem[ceil32(arg4.length) + ceil32(arg5.length) + calldata.size + 172 len 20]
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 356] = 0
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 388] = arg2
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 420] = arg3
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 452] = 160
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 484] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 516 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                                    if ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) <= Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]:
                                        require ext_code.size(arg1)
                                        call arg1.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                             gas gas_remaining wei
                                            args address(mem[ceil32(arg4.length) + ceil32(arg5.length) + calldata.size + 160]), 0, arg2, arg3, 160, mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 484 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 32]
                                    else:
                                        mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] + 516] = 0
                                        require ext_code.size(arg1)
                                        call arg1.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                             gas gas_remaining wei
                                            args address(_26046), 0, arg2, arg3, 160, mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 484 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 32]
                                    if not ext_call.success:
                                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                    if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                        else:
                            mem[ceil32(arg4.length) + ceil32(arg5.length) + arg4.length + 224] = 0
                            emit URI(string arg1, uint256 arg2):
                                     Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0),
                                     mem[ceil32(arg4.length) + arg5.length + 192 len ceil32(arg5.length) + -arg5.length + 32],
                                     Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256,
                                     mem[(2 * ceil32(arg4.length)) + ceil32(arg5.length) + 224 len 2 * ceil32(arg4.length)],
                                     arg2,
                            if not arg1:
                                revert with 0, 'ERC1155: mint to the zero address'
                            if this.address != msg.sender:
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + 160] = 1
                                if 0 >= Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[ceil32(arg4.length) + arg5.length + 192 len -arg5.length + ceil32(arg5.length)]:
                                    revert with 'NH{q', 50
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + 192] = arg2
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + 224] = 1
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + 256] = arg3
                                if balanceOf[arg2][address(arg1)] > -arg3 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[arg2][address(arg1)] += arg3
                                emit TransferSingle(arg2, arg3, msg.sender, 0, arg1);
                                if ext_code.size(arg1) > 0:
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + 288] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + 292] = msg.sender
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + 324] = 0
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + 356] = arg2
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + 388] = arg3
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + 420] = 160
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + 452] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + 484 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                                    if ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) > Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]:
                                        mem[ceil32(arg4.length) + ceil32(arg5.length) + Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] + 484] = 0
                                    require ext_code.size(arg1)
                                    call arg1.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                         gas gas_remaining wei
                                        args msg.sender, 0, arg2, arg3, 160, mem[ceil32(arg4.length) + ceil32(arg5.length) + 452 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 32]
                                    if not ext_call.success:
                                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                    if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                            else:
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + 160] = calldata.size
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + 192 len calldata.size] = call.data[0 len calldata.size]
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + calldata.size + 192] = 0
                                _26222 = mem[ceil32(arg4.length) + ceil32(arg5.length) + calldata.size + 160]
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 192] = 1
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 224] = arg2
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 256] = 1
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 288] = arg3
                                if balanceOf[arg2][address(arg1)] > -arg3 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[arg2][address(arg1)] += arg3
                                emit TransferSingle(arg2, arg3, mem[ceil32(arg4.length) + ceil32(arg5.length) + calldata.size + 172 len 20], 0, arg1);
                                if ext_code.size(arg1) > 0:
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 320] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 324] = mem[ceil32(arg4.length) + ceil32(arg5.length) + calldata.size + 172 len 20]
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 356] = 0
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 388] = arg2
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 420] = arg3
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 452] = 160
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 484] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 516 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                                    if ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) <= Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]:
                                        require ext_code.size(arg1)
                                        call arg1.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                             gas gas_remaining wei
                                            args address(mem[ceil32(arg4.length) + ceil32(arg5.length) + calldata.size + 160]), 0, arg2, arg3, 160, mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 484 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 32]
                                    else:
                                        mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] + 516] = 0
                                        require ext_code.size(arg1)
                                        call arg1.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                             gas gas_remaining wei
                                            args address(_26222), 0, arg2, arg3, 160, mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 484 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 32]
                                    if not ext_call.success:
                                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                    if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                    else:
                        stor10[arg2].field_0 = 0
                        idx = 0
                        while stor10[arg2].field_1 + 31 / 32 > idx:
                            stor10[arg2][idx].field_0 = 0
                            idx = idx + 1
                            continue 
                        mem[ceil32(arg4.length) + ceil32(arg5.length) + 160] = 32
                        mem[ceil32(arg4.length) + ceil32(arg5.length) + 192] = arg4.length
                        mem[ceil32(arg4.length) + ceil32(arg5.length) + 224 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                        if ceil32(arg4.length) <= arg4.length:
                            emit URI(string arg1, uint256 arg2):
                                     Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0),
                                     mem[ceil32(arg4.length) + arg5.length + 192 len ceil32(arg5.length) + -arg5.length + 32],
                                     Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256,
                                     mem[(2 * ceil32(arg4.length)) + ceil32(arg5.length) + 224 len 2 * ceil32(arg4.length)],
                                     arg2,
                            if not arg1:
                                revert with 0, 'ERC1155: mint to the zero address'
                            if this.address != msg.sender:
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + 160] = 1
                                if 0 >= Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[ceil32(arg4.length) + arg5.length + 192 len -arg5.length + ceil32(arg5.length)]:
                                    revert with 'NH{q', 50
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + 192] = arg2
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + 224] = 1
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + 256] = arg3
                                if balanceOf[arg2][address(arg1)] > -arg3 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[arg2][address(arg1)] += arg3
                                emit TransferSingle(arg2, arg3, msg.sender, 0, arg1);
                                if ext_code.size(arg1) > 0:
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + 288] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + 292] = msg.sender
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + 324] = 0
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + 356] = arg2
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + 388] = arg3
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + 420] = 160
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + 452] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + 484 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                                    if ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) > Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]:
                                        mem[ceil32(arg4.length) + ceil32(arg5.length) + Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] + 484] = 0
                                    require ext_code.size(arg1)
                                    call arg1.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                         gas gas_remaining wei
                                        args msg.sender, 0, arg2, arg3, 160, mem[ceil32(arg4.length) + ceil32(arg5.length) + 452 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 32]
                                    if not ext_call.success:
                                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                    if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                            else:
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + 160] = calldata.size
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + 192 len calldata.size] = call.data[0 len calldata.size]
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + calldata.size + 192] = 0
                                _15870 = mem[ceil32(arg4.length) + ceil32(arg5.length) + calldata.size + 160]
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 192] = 1
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 224] = arg2
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 256] = 1
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 288] = arg3
                                if balanceOf[arg2][address(arg1)] > -arg3 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[arg2][address(arg1)] += arg3
                                emit TransferSingle(arg2, arg3, mem[ceil32(arg4.length) + ceil32(arg5.length) + calldata.size + 172 len 20], 0, arg1);
                                if ext_code.size(arg1) > 0:
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 320] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 324] = mem[ceil32(arg4.length) + ceil32(arg5.length) + calldata.size + 172 len 20]
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 356] = 0
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 388] = arg2
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 420] = arg3
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 452] = 160
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 484] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 516 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                                    if ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) <= Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]:
                                        require ext_code.size(arg1)
                                        call arg1.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                             gas gas_remaining wei
                                            args address(mem[ceil32(arg4.length) + ceil32(arg5.length) + calldata.size + 160]), 0, arg2, arg3, 160, mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 484 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 32]
                                    else:
                                        mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] + 516] = 0
                                        require ext_code.size(arg1)
                                        call arg1.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                             gas gas_remaining wei
                                            args address(_15870), 0, arg2, arg3, 160, mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 484 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 32]
                                    if not ext_call.success:
                                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                    if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                        else:
                            mem[ceil32(arg4.length) + ceil32(arg5.length) + arg4.length + 224] = 0
                            emit URI(string arg1, uint256 arg2):
                                     Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0),
                                     mem[ceil32(arg4.length) + arg5.length + 192 len ceil32(arg5.length) + -arg5.length + 32],
                                     Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256,
                                     mem[(2 * ceil32(arg4.length)) + ceil32(arg5.length) + 224 len 2 * ceil32(arg4.length)],
                                     arg2,
                            if not arg1:
                                revert with 0, 'ERC1155: mint to the zero address'
                            if this.address != msg.sender:
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + 160] = 1
                                if 0 >= Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[ceil32(arg4.length) + arg5.length + 192 len -arg5.length + ceil32(arg5.length)]:
                                    revert with 'NH{q', 50
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + 192] = arg2
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + 224] = 1
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + 256] = arg3
                                if balanceOf[arg2][address(arg1)] > -arg3 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[arg2][address(arg1)] += arg3
                                emit TransferSingle(arg2, arg3, msg.sender, 0, arg1);
                                if ext_code.size(arg1) > 0:
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + 288] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + 292] = msg.sender
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + 324] = 0
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + 356] = arg2
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + 388] = arg3
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + 420] = 160
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + 452] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + 484 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                                    if ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) > Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]:
                                        mem[ceil32(arg4.length) + ceil32(arg5.length) + Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] + 484] = 0
                                    require ext_code.size(arg1)
                                    call arg1.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                         gas gas_remaining wei
                                        args msg.sender, 0, arg2, arg3, 160, mem[ceil32(arg4.length) + ceil32(arg5.length) + 452 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 32]
                                    if not ext_call.success:
                                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                    if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                            else:
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + 160] = calldata.size
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + 192 len calldata.size] = call.data[0 len calldata.size]
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + calldata.size + 192] = 0
                                _15918 = mem[ceil32(arg4.length) + ceil32(arg5.length) + calldata.size + 160]
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 192] = 1
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 224] = arg2
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 256] = 1
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 288] = arg3
                                if balanceOf[arg2][address(arg1)] > -arg3 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[arg2][address(arg1)] += arg3
                                emit TransferSingle(arg2, arg3, mem[ceil32(arg4.length) + ceil32(arg5.length) + calldata.size + 172 len 20], 0, arg1);
                                if ext_code.size(arg1) > 0:
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 320] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 324] = mem[ceil32(arg4.length) + ceil32(arg5.length) + calldata.size + 172 len 20]
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 356] = 0
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 388] = arg2
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 420] = arg3
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 452] = 160
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 484] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 516 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                                    if ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) <= Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]:
                                        require ext_code.size(arg1)
                                        call arg1.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                             gas gas_remaining wei
                                            args address(mem[ceil32(arg4.length) + ceil32(arg5.length) + calldata.size + 160]), 0, arg2, arg3, 160, mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 484 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 32]
                                    else:
                                        mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] + 516] = 0
                                        require ext_code.size(arg1)
                                        call arg1.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                             gas gas_remaining wei
                                            args address(_15918), 0, arg2, arg3, 160, mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 484 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 32]
                                    if not ext_call.success:
                                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                    if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
        else:
            mem[ceil32(arg4.length) + ceil32(arg5.length) + 160] = calldata.size
            mem[ceil32(arg4.length) + ceil32(arg5.length) + 192 len calldata.size] = call.data[0 len calldata.size]
            mem[ceil32(arg4.length) + ceil32(arg5.length) + calldata.size + 192] = 0
            creators[arg2] = mem[ceil32(arg4.length) + ceil32(arg5.length) + calldata.size + 172 len 20]
            if arg4.length <= 0:
                if not arg1:
                    revert with 0, 'ERC1155: mint to the zero address'
                if this.address != msg.sender:
                    if balanceOf[arg2][address(arg1)] > -arg3 - 1:
                        revert with 'NH{q', 17
                    balanceOf[arg2][address(arg1)] += arg3
                    emit TransferSingle(arg2, arg3, msg.sender, 0, arg1);
                    if ext_code.size(arg1) > 0:
                        require ext_code.size(arg1)
                        call arg1.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                             gas gas_remaining wei
                            args msg.sender, 0, arg2, arg3, 160, arg5.length, arg5[all], mem[ceil32(arg4.length) + arg5.length + 160 len ceil32(arg5.length) - arg5.length]
                        if not ext_call.success:
                            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                        require return_data.size >= 32
                        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                        if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                else:
                    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 192] = calldata.size
                    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 224 len calldata.size] = call.data[0 len calldata.size]
                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 256] = arg2
                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 288] = 1
                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 320] = arg3
                    if balanceOf[arg2][address(arg1)] > -arg3 - 1:
                        revert with 'NH{q', 17
                    balanceOf[arg2][address(arg1)] += arg3
                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 352] = arg2
                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 384] = arg3
                    emit TransferSingle(arg2, arg3, mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + calldata.size + 204 len 20], 0, arg1);
                    if ext_code.size(arg1) > 0:
                        mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 352] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 356] = mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + calldata.size + 204 len 20]
                        mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 388] = 0
                        mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 420] = arg2
                        mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 452] = arg3
                        mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 484] = 160
                        mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 516] = arg5.length
                        mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 548 len ceil32(arg5.length)] = arg5[all], mem[ceil32(arg4.length) + arg5.length + 160 len ceil32(arg5.length) - arg5.length]
                        if ceil32(arg5.length) > arg5.length:
                            mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + arg5.length + 548] = 0
                        require ext_code.size(arg1)
                        call arg1.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                             gas gas_remaining wei
                            args mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + calldata.size + 204 len 20], 0, arg2, arg3, 160, arg5.length, arg5[all], mem[ceil32(arg4.length) + arg5.length + 160 len ceil32(arg5.length) - arg5.length]
                        if not ext_call.success:
                            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                        require return_data.size >= 32
                        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                        if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
            else:
                if stor10[arg2].field_0:
                    if stor10[arg2].field_0 == stor10[arg2].field_1 < 32:
                        revert with 'NH{q', 34
                    if arg4.length:
                        stor10[arg2][].field_0 = Array(len=arg4.length, data=arg4[all])
                        mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 224] = arg4.length
                        mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 256 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                        if ceil32(arg4.length) <= arg4.length:
                            emit URI(Array(len=arg4.length, data=Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[(2 * ceil32(arg4.length)) + ceil32(arg5.length) + ceil32(calldata.size) + 256 len 2 * ceil32(arg4.length)]), arg2);
                            if not arg1:
                                revert with 0, 'ERC1155: mint to the zero address'
                            if this.address != msg.sender:
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 192] = 1
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 224] = arg2
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 256] = 1
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 288] = arg3
                                if balanceOf[arg2][address(arg1)] > -arg3 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[arg2][address(arg1)] += arg3
                                emit TransferSingle(arg2, arg3, msg.sender, 0, arg1);
                                if ext_code.size(arg1) > 0:
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 320] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 324] = msg.sender
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 356] = 0
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 388] = arg2
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 420] = arg3
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 452] = 160
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 484] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 516 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                                    if ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) > Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]:
                                        mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] + 516] = 0
                                    require ext_code.size(arg1)
                                    call arg1.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                         gas gas_remaining wei
                                        args msg.sender, 0, arg2, arg3, 160, mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 484 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 32]
                                    if not ext_call.success:
                                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                    if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                            else:
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 192] = calldata.size
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 224 len calldata.size] = call.data[0 len calldata.size]
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + calldata.size + 224] = 0
                                _26072 = mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + calldata.size + 192]
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 224] = 1
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 256] = arg2
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 288] = 1
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 320] = arg3
                                if balanceOf[arg2][address(arg1)] > -arg3 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[arg2][address(arg1)] += arg3
                                emit TransferSingle(arg2, arg3, mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + calldata.size + 204 len 20], 0, arg1);
                                if ext_code.size(arg1) > 0:
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 352] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 356] = mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + calldata.size + 204 len 20]
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 388] = 0
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 420] = arg2
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 452] = arg3
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 484] = 160
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 516] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 548 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                                    if ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) <= Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]:
                                        require ext_code.size(arg1)
                                        call arg1.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                             gas gas_remaining wei
                                            args address(mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + calldata.size + 192]), 0, arg2, arg3, 160, mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 516 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 32]
                                    else:
                                        mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] + 548] = 0
                                        require ext_code.size(arg1)
                                        call arg1.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                             gas gas_remaining wei
                                            args address(_26072), 0, arg2, arg3, 160, mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 516 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 32]
                                    if not ext_call.success:
                                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                    if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                        else:
                            mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + arg4.length + 256] = 0
                            emit URI(Array(len=arg4.length, data=Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[(2 * ceil32(arg4.length)) + ceil32(arg5.length) + ceil32(calldata.size) + 256 len 2 * ceil32(arg4.length)]), arg2);
                            if not arg1:
                                revert with 0, 'ERC1155: mint to the zero address'
                            if this.address != msg.sender:
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 192] = 1
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 224] = arg2
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 256] = 1
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 288] = arg3
                                if balanceOf[arg2][address(arg1)] > -arg3 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[arg2][address(arg1)] += arg3
                                emit TransferSingle(arg2, arg3, msg.sender, 0, arg1);
                                if ext_code.size(arg1) > 0:
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 320] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 324] = msg.sender
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 356] = 0
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 388] = arg2
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 420] = arg3
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 452] = 160
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 484] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 516 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                                    if ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) > Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]:
                                        mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] + 516] = 0
                                    require ext_code.size(arg1)
                                    call arg1.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                         gas gas_remaining wei
                                        args msg.sender, 0, arg2, arg3, 160, mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 484 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 32]
                                    if not ext_call.success:
                                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                    if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                            else:
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 192] = calldata.size
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 224 len calldata.size] = call.data[0 len calldata.size]
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + calldata.size + 224] = 0
                                _26224 = mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + calldata.size + 192]
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 224] = 1
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 256] = arg2
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 288] = 1
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 320] = arg3
                                if balanceOf[arg2][address(arg1)] > -arg3 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[arg2][address(arg1)] += arg3
                                emit TransferSingle(arg2, arg3, mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + calldata.size + 204 len 20], 0, arg1);
                                if ext_code.size(arg1) > 0:
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 352] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 356] = mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + calldata.size + 204 len 20]
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 388] = 0
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 420] = arg2
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 452] = arg3
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 484] = 160
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 516] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 548 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                                    if ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) <= Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]:
                                        require ext_code.size(arg1)
                                        call arg1.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                             gas gas_remaining wei
                                            args address(mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + calldata.size + 192]), 0, arg2, arg3, 160, mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 516 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 32]
                                    else:
                                        mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] + 548] = 0
                                        require ext_code.size(arg1)
                                        call arg1.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                             gas gas_remaining wei
                                            args address(_26224), 0, arg2, arg3, 160, mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 516 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 32]
                                    if not ext_call.success:
                                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                    if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                    else:
                        stor10[arg2].field_0 = 0
                        idx = 0
                        while stor10[arg2].field_1 + 31 / 32 > idx:
                            stor10[arg2][idx].field_0 = 0
                            idx = idx + 1
                            continue 
                        mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 224] = arg4.length
                        mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 256 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                        if ceil32(arg4.length) <= arg4.length:
                            emit URI(Array(len=arg4.length, data=Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[(2 * ceil32(arg4.length)) + ceil32(arg5.length) + ceil32(calldata.size) + 256 len 2 * ceil32(arg4.length)]), arg2);
                            if not arg1:
                                revert with 0, 'ERC1155: mint to the zero address'
                            if this.address != msg.sender:
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 192] = 1
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 224] = arg2
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 256] = 1
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 288] = arg3
                                if balanceOf[arg2][address(arg1)] > -arg3 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[arg2][address(arg1)] += arg3
                                emit TransferSingle(arg2, arg3, msg.sender, 0, arg1);
                                if ext_code.size(arg1) > 0:
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 320] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 324] = msg.sender
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 356] = 0
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 388] = arg2
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 420] = arg3
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 452] = 160
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 484] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 516 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                                    if ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) > Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]:
                                        mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] + 516] = 0
                                    require ext_code.size(arg1)
                                    call arg1.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                         gas gas_remaining wei
                                        args msg.sender, 0, arg2, arg3, 160, mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 484 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 32]
                                    if not ext_call.success:
                                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                    if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                            else:
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 192] = calldata.size
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 224 len calldata.size] = call.data[0 len calldata.size]
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + calldata.size + 224] = 0
                                _15876 = mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + calldata.size + 192]
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 224] = 1
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 256] = arg2
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 288] = 1
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 320] = arg3
                                if balanceOf[arg2][address(arg1)] > -arg3 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[arg2][address(arg1)] += arg3
                                emit TransferSingle(arg2, arg3, mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + calldata.size + 204 len 20], 0, arg1);
                                if ext_code.size(arg1) > 0:
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 352] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 356] = mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + calldata.size + 204 len 20]
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 388] = 0
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 420] = arg2
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 452] = arg3
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 484] = 160
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 516] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 548 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                                    if ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) <= Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]:
                                        require ext_code.size(arg1)
                                        call arg1.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                             gas gas_remaining wei
                                            args address(mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + calldata.size + 192]), 0, arg2, arg3, 160, mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 516 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 32]
                                    else:
                                        mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] + 548] = 0
                                        require ext_code.size(arg1)
                                        call arg1.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                             gas gas_remaining wei
                                            args address(_15876), 0, arg2, arg3, 160, mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 516 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 32]
                                    if not ext_call.success:
                                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                    if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                        else:
                            mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + arg4.length + 256] = 0
                            emit URI(Array(len=arg4.length, data=Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[(2 * ceil32(arg4.length)) + ceil32(arg5.length) + ceil32(calldata.size) + 256 len 2 * ceil32(arg4.length)]), arg2);
                            if not arg1:
                                revert with 0, 'ERC1155: mint to the zero address'
                            if this.address != msg.sender:
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 192] = 1
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 224] = arg2
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 256] = 1
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 288] = arg3
                                if balanceOf[arg2][address(arg1)] > -arg3 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[arg2][address(arg1)] += arg3
                                emit TransferSingle(arg2, arg3, msg.sender, 0, arg1);
                                if ext_code.size(arg1) > 0:
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 320] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 324] = msg.sender
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 356] = 0
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 388] = arg2
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 420] = arg3
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 452] = 160
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 484] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 516 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                                    if ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) > Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]:
                                        mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] + 516] = 0
                                    require ext_code.size(arg1)
                                    call arg1.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                         gas gas_remaining wei
                                        args msg.sender, 0, arg2, arg3, 160, mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 484 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 32]
                                    if not ext_call.success:
                                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                    if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                            else:
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 192] = calldata.size
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 224 len calldata.size] = call.data[0 len calldata.size]
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + calldata.size + 224] = 0
                                _15924 = mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + calldata.size + 192]
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 224] = 1
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 256] = arg2
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 288] = 1
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 320] = arg3
                                if balanceOf[arg2][address(arg1)] > -arg3 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[arg2][address(arg1)] += arg3
                                emit TransferSingle(arg2, arg3, mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + calldata.size + 204 len 20], 0, arg1);
                                if ext_code.size(arg1) > 0:
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 352] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 356] = mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + calldata.size + 204 len 20]
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 388] = 0
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 420] = arg2
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 452] = arg3
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 484] = 160
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 516] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 548 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                                    if ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) <= Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]:
                                        require ext_code.size(arg1)
                                        call arg1.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                             gas gas_remaining wei
                                            args address(mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + calldata.size + 192]), 0, arg2, arg3, 160, mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 516 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 32]
                                    else:
                                        mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] + 548] = 0
                                        require ext_code.size(arg1)
                                        call arg1.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                             gas gas_remaining wei
                                            args address(_15924), 0, arg2, arg3, 160, mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 516 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 32]
                                    if not ext_call.success:
                                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                    if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                else:
                    if stor10[arg2].field_0 == stor10[arg2].field_1 < 32:
                        revert with 'NH{q', 34
                    if arg4.length:
                        stor10[arg2][].field_0 = Array(len=arg4.length, data=arg4[all])
                        mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 224] = arg4.length
                        mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 256 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                        if ceil32(arg4.length) <= arg4.length:
                            emit URI(Array(len=arg4.length, data=Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[(2 * ceil32(arg4.length)) + ceil32(arg5.length) + ceil32(calldata.size) + 256 len 2 * ceil32(arg4.length)]), arg2);
                            if not arg1:
                                revert with 0, 'ERC1155: mint to the zero address'
                            if this.address != msg.sender:
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 192] = 1
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 224] = arg2
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 256] = 1
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 288] = arg3
                                if balanceOf[arg2][address(arg1)] > -arg3 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[arg2][address(arg1)] += arg3
                                emit TransferSingle(arg2, arg3, msg.sender, 0, arg1);
                                if ext_code.size(arg1) > 0:
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 320] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 324] = msg.sender
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 356] = 0
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 388] = arg2
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 420] = arg3
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 452] = 160
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 484] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 516 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                                    if ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) > Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]:
                                        mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] + 516] = 0
                                    require ext_code.size(arg1)
                                    call arg1.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                         gas gas_remaining wei
                                        args msg.sender, 0, arg2, arg3, 160, mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 484 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 32]
                                    if not ext_call.success:
                                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                    if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                            else:
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 192] = calldata.size
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 224 len calldata.size] = call.data[0 len calldata.size]
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + calldata.size + 224] = 0
                                _26098 = mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + calldata.size + 192]
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 224] = 1
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 256] = arg2
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 288] = 1
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 320] = arg3
                                if balanceOf[arg2][address(arg1)] > -arg3 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[arg2][address(arg1)] += arg3
                                emit TransferSingle(arg2, arg3, mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + calldata.size + 204 len 20], 0, arg1);
                                if ext_code.size(arg1) > 0:
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 352] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 356] = mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + calldata.size + 204 len 20]
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 388] = 0
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 420] = arg2
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 452] = arg3
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 484] = 160
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 516] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 548 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                                    if ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) <= Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]:
                                        require ext_code.size(arg1)
                                        call arg1.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                             gas gas_remaining wei
                                            args address(mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + calldata.size + 192]), 0, arg2, arg3, 160, mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 516 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 32]
                                    else:
                                        mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] + 548] = 0
                                        require ext_code.size(arg1)
                                        call arg1.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                             gas gas_remaining wei
                                            args address(_26098), 0, arg2, arg3, 160, mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 516 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 32]
                                    if not ext_call.success:
                                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                    if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                        else:
                            mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + arg4.length + 256] = 0
                            emit URI(Array(len=arg4.length, data=Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[(2 * ceil32(arg4.length)) + ceil32(arg5.length) + ceil32(calldata.size) + 256 len 2 * ceil32(arg4.length)]), arg2);
                            if not arg1:
                                revert with 0, 'ERC1155: mint to the zero address'
                            if this.address != msg.sender:
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 192] = 1
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 224] = arg2
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 256] = 1
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 288] = arg3
                                if balanceOf[arg2][address(arg1)] > -arg3 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[arg2][address(arg1)] += arg3
                                emit TransferSingle(arg2, arg3, msg.sender, 0, arg1);
                                if ext_code.size(arg1) > 0:
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 320] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 324] = msg.sender
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 356] = 0
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 388] = arg2
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 420] = arg3
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 452] = 160
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 484] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 516 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                                    if ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) > Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]:
                                        mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] + 516] = 0
                                    require ext_code.size(arg1)
                                    call arg1.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                         gas gas_remaining wei
                                        args msg.sender, 0, arg2, arg3, 160, mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 484 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 32]
                                    if not ext_call.success:
                                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                    if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                            else:
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 192] = calldata.size
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 224 len calldata.size] = call.data[0 len calldata.size]
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + calldata.size + 224] = 0
                                _26226 = mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + calldata.size + 192]
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 224] = 1
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 256] = arg2
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 288] = 1
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 320] = arg3
                                if balanceOf[arg2][address(arg1)] > -arg3 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[arg2][address(arg1)] += arg3
                                emit TransferSingle(arg2, arg3, mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + calldata.size + 204 len 20], 0, arg1);
                                if ext_code.size(arg1) > 0:
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 352] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 356] = mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + calldata.size + 204 len 20]
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 388] = 0
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 420] = arg2
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 452] = arg3
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 484] = 160
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 516] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 548 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                                    if ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) <= Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]:
                                        require ext_code.size(arg1)
                                        call arg1.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                             gas gas_remaining wei
                                            args address(mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + calldata.size + 192]), 0, arg2, arg3, 160, mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 516 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 32]
                                    else:
                                        mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] + 548] = 0
                                        require ext_code.size(arg1)
                                        call arg1.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                             gas gas_remaining wei
                                            args address(_26226), 0, arg2, arg3, 160, mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 516 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 32]
                                    if not ext_call.success:
                                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                    if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                    else:
                        stor10[arg2].field_0 = 0
                        idx = 0
                        while stor10[arg2].field_1 + 31 / 32 > idx:
                            stor10[arg2][idx].field_0 = 0
                            idx = idx + 1
                            continue 
                        mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 224] = arg4.length
                        mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 256 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                        if ceil32(arg4.length) <= arg4.length:
                            emit URI(Array(len=arg4.length, data=Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[(2 * ceil32(arg4.length)) + ceil32(arg5.length) + ceil32(calldata.size) + 256 len 2 * ceil32(arg4.length)]), arg2);
                            if not arg1:
                                revert with 0, 'ERC1155: mint to the zero address'
                            if this.address != msg.sender:
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 192] = 1
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 224] = arg2
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 256] = 1
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 288] = arg3
                                if balanceOf[arg2][address(arg1)] > -arg3 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[arg2][address(arg1)] += arg3
                                emit TransferSingle(arg2, arg3, msg.sender, 0, arg1);
                                if ext_code.size(arg1) > 0:
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 320] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 324] = msg.sender
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 356] = 0
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 388] = arg2
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 420] = arg3
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 452] = 160
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 484] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 516 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                                    if ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) > Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]:
                                        mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] + 516] = 0
                                    require ext_code.size(arg1)
                                    call arg1.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                         gas gas_remaining wei
                                        args msg.sender, 0, arg2, arg3, 160, mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 484 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 32]
                                    if not ext_call.success:
                                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                    if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                            else:
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 192] = calldata.size
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 224 len calldata.size] = call.data[0 len calldata.size]
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + calldata.size + 224] = 0
                                _15882 = mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + calldata.size + 192]
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 224] = 1
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 256] = arg2
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 288] = 1
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 320] = arg3
                                if balanceOf[arg2][address(arg1)] > -arg3 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[arg2][address(arg1)] += arg3
                                emit TransferSingle(arg2, arg3, mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + calldata.size + 204 len 20], 0, arg1);
                                if ext_code.size(arg1) > 0:
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 352] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 356] = mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + calldata.size + 204 len 20]
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 388] = 0
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 420] = arg2
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 452] = arg3
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 484] = 160
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 516] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 548 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                                    if ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) <= Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]:
                                        require ext_code.size(arg1)
                                        call arg1.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                             gas gas_remaining wei
                                            args address(mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + calldata.size + 192]), 0, arg2, arg3, 160, mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 516 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 32]
                                    else:
                                        mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] + 548] = 0
                                        require ext_code.size(arg1)
                                        call arg1.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                             gas gas_remaining wei
                                            args address(_15882), 0, arg2, arg3, 160, mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 516 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 32]
                                    if not ext_call.success:
                                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                    if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                        else:
                            mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + arg4.length + 256] = 0
                            emit URI(Array(len=arg4.length, data=Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[(2 * ceil32(arg4.length)) + ceil32(arg5.length) + ceil32(calldata.size) + 256 len 2 * ceil32(arg4.length)]), arg2);
                            if not arg1:
                                revert with 0, 'ERC1155: mint to the zero address'
                            if this.address != msg.sender:
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 192] = 1
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 224] = arg2
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 256] = 1
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 288] = arg3
                                if balanceOf[arg2][address(arg1)] > -arg3 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[arg2][address(arg1)] += arg3
                                emit TransferSingle(arg2, arg3, msg.sender, 0, arg1);
                                if ext_code.size(arg1) > 0:
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 320] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 324] = msg.sender
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 356] = 0
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 388] = arg2
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 420] = arg3
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 452] = 160
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 484] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 516 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                                    if ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) > Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]:
                                        mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] + 516] = 0
                                    require ext_code.size(arg1)
                                    call arg1.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                         gas gas_remaining wei
                                        args msg.sender, 0, arg2, arg3, 160, mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 484 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 32]
                                    if not ext_call.success:
                                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                    if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                            else:
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 192] = calldata.size
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 224 len calldata.size] = call.data[0 len calldata.size]
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + calldata.size + 224] = 0
                                _15930 = mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + calldata.size + 192]
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 224] = 1
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 256] = arg2
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 288] = 1
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 320] = arg3
                                if balanceOf[arg2][address(arg1)] > -arg3 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[arg2][address(arg1)] += arg3
                                emit TransferSingle(arg2, arg3, mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + calldata.size + 204 len 20], 0, arg1);
                                if ext_code.size(arg1) > 0:
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 352] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 356] = mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + calldata.size + 204 len 20]
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 388] = 0
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 420] = arg2
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 452] = arg3
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 484] = 160
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 516] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 548 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                                    if ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) <= Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]:
                                        require ext_code.size(arg1)
                                        call arg1.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                             gas gas_remaining wei
                                            args address(mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + calldata.size + 192]), 0, arg2, arg3, 160, mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 516 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 32]
                                    else:
                                        mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] + 548] = 0
                                        require ext_code.size(arg1)
                                        call arg1.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                             gas gas_remaining wei
                                            args address(_15930), 0, arg2, arg3, 160, mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 516 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 32]
                                    if not ext_call.success:
                                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                    if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
    else:
        mem[ceil32(arg4.length) + ceil32(arg5.length) + 160] = calldata.size
        mem[ceil32(arg4.length) + ceil32(arg5.length) + 192 len calldata.size] = call.data[0 len calldata.size]
        mem[ceil32(arg4.length) + ceil32(arg5.length) + calldata.size + 192] = 0
        if owner != mem[ceil32(arg4.length) + ceil32(arg5.length) + calldata.size + 172 len 20]:
            revert with 0, 'Ownable: caller is not the owner'
        if creators[arg2]:
            revert with 0, 'token _id already exists'
        if this.address != msg.sender:
            creators[arg2] = msg.sender
            if arg4.length <= 0:
                if not arg1:
                    revert with 0, 'ERC1155: mint to the zero address'
                if this.address != msg.sender:
                    if balanceOf[arg2][address(arg1)] > -arg3 - 1:
                        revert with 'NH{q', 17
                    balanceOf[arg2][address(arg1)] += arg3
                    emit TransferSingle(arg2, arg3, msg.sender, 0, arg1);
                    if ext_code.size(arg1) > 0:
                        require ext_code.size(arg1)
                        call arg1.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                             gas gas_remaining wei
                            args msg.sender, 0, arg2, arg3, 160, arg5.length, arg5[all], mem[ceil32(arg4.length) + arg5.length + 160 len ceil32(arg5.length) - arg5.length]
                        if not ext_call.success:
                            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                        require return_data.size >= 32
                        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                        if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                else:
                    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 192] = calldata.size
                    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 224 len calldata.size] = call.data[0 len calldata.size]
                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 256] = arg2
                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 288] = 1
                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 320] = arg3
                    if balanceOf[arg2][address(arg1)] > -arg3 - 1:
                        revert with 'NH{q', 17
                    balanceOf[arg2][address(arg1)] += arg3
                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 352] = arg2
                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 384] = arg3
                    emit TransferSingle(arg2, arg3, mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + calldata.size + 204 len 20], 0, arg1);
                    if ext_code.size(arg1) > 0:
                        mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 352] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 356] = mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + calldata.size + 204 len 20]
                        mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 388] = 0
                        mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 420] = arg2
                        mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 452] = arg3
                        mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 484] = 160
                        mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 516] = arg5.length
                        mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 548 len ceil32(arg5.length)] = arg5[all], mem[ceil32(arg4.length) + arg5.length + 160 len ceil32(arg5.length) - arg5.length]
                        if ceil32(arg5.length) > arg5.length:
                            mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + arg5.length + 548] = 0
                        require ext_code.size(arg1)
                        call arg1.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                             gas gas_remaining wei
                            args mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + calldata.size + 204 len 20], 0, arg2, arg3, 160, arg5.length, arg5[all], mem[ceil32(arg4.length) + arg5.length + 160 len ceil32(arg5.length) - arg5.length]
                        if not ext_call.success:
                            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                        require return_data.size >= 32
                        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                        if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
            else:
                if stor10[arg2].field_0:
                    if stor10[arg2].field_0 == stor10[arg2].field_1 < 32:
                        revert with 'NH{q', 34
                    if arg4.length:
                        stor10[arg2][].field_0 = Array(len=arg4.length, data=arg4[all])
                        mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 224] = arg4.length
                        mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 256 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                        if ceil32(arg4.length) <= arg4.length:
                            emit URI(Array(len=arg4.length, data=Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[(2 * ceil32(arg4.length)) + ceil32(arg5.length) + ceil32(calldata.size) + 256 len 2 * ceil32(arg4.length)]), arg2);
                            if not arg1:
                                revert with 0, 'ERC1155: mint to the zero address'
                            if this.address != msg.sender:
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 192] = 1
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 224] = arg2
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 256] = 1
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 288] = arg3
                                if balanceOf[arg2][address(arg1)] > -arg3 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[arg2][address(arg1)] += arg3
                                emit TransferSingle(arg2, arg3, msg.sender, 0, arg1);
                                if ext_code.size(arg1) > 0:
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 320] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 324] = msg.sender
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 356] = 0
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 388] = arg2
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 420] = arg3
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 452] = 160
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 484] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 516 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                                    if ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) > Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]:
                                        mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] + 516] = 0
                                    require ext_code.size(arg1)
                                    call arg1.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                         gas gas_remaining wei
                                        args msg.sender, 0, arg2, arg3, 160, mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 484 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 32]
                                    if not ext_call.success:
                                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                    if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                            else:
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 192] = calldata.size
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 224 len calldata.size] = call.data[0 len calldata.size]
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + calldata.size + 224] = 0
                                _26124 = mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + calldata.size + 192]
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 224] = 1
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 256] = arg2
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 288] = 1
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 320] = arg3
                                if balanceOf[arg2][address(arg1)] > -arg3 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[arg2][address(arg1)] += arg3
                                emit TransferSingle(arg2, arg3, mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + calldata.size + 204 len 20], 0, arg1);
                                if ext_code.size(arg1) > 0:
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 352] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 356] = mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + calldata.size + 204 len 20]
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 388] = 0
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 420] = arg2
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 452] = arg3
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 484] = 160
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 516] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 548 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                                    if ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) <= Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]:
                                        require ext_code.size(arg1)
                                        call arg1.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                             gas gas_remaining wei
                                            args address(mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + calldata.size + 192]), 0, arg2, arg3, 160, mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 516 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 32]
                                    else:
                                        mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] + 548] = 0
                                        require ext_code.size(arg1)
                                        call arg1.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                             gas gas_remaining wei
                                            args address(_26124), 0, arg2, arg3, 160, mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 516 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 32]
                                    if not ext_call.success:
                                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                    if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                        else:
                            mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + arg4.length + 256] = 0
                            emit URI(Array(len=arg4.length, data=Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[(2 * ceil32(arg4.length)) + ceil32(arg5.length) + ceil32(calldata.size) + 256 len 2 * ceil32(arg4.length)]), arg2);
                            if not arg1:
                                revert with 0, 'ERC1155: mint to the zero address'
                            if this.address != msg.sender:
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 192] = 1
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 224] = arg2
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 256] = 1
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 288] = arg3
                                if balanceOf[arg2][address(arg1)] > -arg3 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[arg2][address(arg1)] += arg3
                                emit TransferSingle(arg2, arg3, msg.sender, 0, arg1);
                                if ext_code.size(arg1) > 0:
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 320] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 324] = msg.sender
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 356] = 0
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 388] = arg2
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 420] = arg3
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 452] = 160
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 484] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 516 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                                    if ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) > Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]:
                                        mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] + 516] = 0
                                    require ext_code.size(arg1)
                                    call arg1.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                         gas gas_remaining wei
                                        args msg.sender, 0, arg2, arg3, 160, mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 484 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 32]
                                    if not ext_call.success:
                                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                    if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                            else:
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 192] = calldata.size
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 224 len calldata.size] = call.data[0 len calldata.size]
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + calldata.size + 224] = 0
                                _26228 = mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + calldata.size + 192]
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 224] = 1
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 256] = arg2
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 288] = 1
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 320] = arg3
                                if balanceOf[arg2][address(arg1)] > -arg3 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[arg2][address(arg1)] += arg3
                                emit TransferSingle(arg2, arg3, mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + calldata.size + 204 len 20], 0, arg1);
                                if ext_code.size(arg1) > 0:
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 352] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 356] = mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + calldata.size + 204 len 20]
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 388] = 0
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 420] = arg2
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 452] = arg3
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 484] = 160
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 516] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 548 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                                    if ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) <= Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]:
                                        require ext_code.size(arg1)
                                        call arg1.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                             gas gas_remaining wei
                                            args address(mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + calldata.size + 192]), 0, arg2, arg3, 160, mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 516 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 32]
                                    else:
                                        mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] + 548] = 0
                                        require ext_code.size(arg1)
                                        call arg1.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                             gas gas_remaining wei
                                            args address(_26228), 0, arg2, arg3, 160, mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 516 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 32]
                                    if not ext_call.success:
                                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                    if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                    else:
                        stor10[arg2].field_0 = 0
                        idx = 0
                        while stor10[arg2].field_1 + 31 / 32 > idx:
                            stor10[arg2][idx].field_0 = 0
                            idx = idx + 1
                            continue 
                        mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 224] = arg4.length
                        mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 256 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                        if ceil32(arg4.length) <= arg4.length:
                            emit URI(Array(len=arg4.length, data=Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[(2 * ceil32(arg4.length)) + ceil32(arg5.length) + ceil32(calldata.size) + 256 len 2 * ceil32(arg4.length)]), arg2);
                            if not arg1:
                                revert with 0, 'ERC1155: mint to the zero address'
                            if this.address != msg.sender:
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 192] = 1
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 224] = arg2
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 256] = 1
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 288] = arg3
                                if balanceOf[arg2][address(arg1)] > -arg3 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[arg2][address(arg1)] += arg3
                                emit TransferSingle(arg2, arg3, msg.sender, 0, arg1);
                                if ext_code.size(arg1) > 0:
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 320] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 324] = msg.sender
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 356] = 0
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 388] = arg2
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 420] = arg3
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 452] = 160
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 484] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 516 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                                    if ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) > Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]:
                                        mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] + 516] = 0
                                    require ext_code.size(arg1)
                                    call arg1.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                         gas gas_remaining wei
                                        args msg.sender, 0, arg2, arg3, 160, mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 484 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 32]
                                    if not ext_call.success:
                                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                    if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                            else:
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 192] = calldata.size
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 224 len calldata.size] = call.data[0 len calldata.size]
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + calldata.size + 224] = 0
                                _15888 = mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + calldata.size + 192]
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 224] = 1
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 256] = arg2
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 288] = 1
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 320] = arg3
                                if balanceOf[arg2][address(arg1)] > -arg3 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[arg2][address(arg1)] += arg3
                                emit TransferSingle(arg2, arg3, mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + calldata.size + 204 len 20], 0, arg1);
                                if ext_code.size(arg1) > 0:
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 352] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 356] = mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + calldata.size + 204 len 20]
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 388] = 0
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 420] = arg2
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 452] = arg3
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 484] = 160
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 516] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 548 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                                    if ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) <= Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]:
                                        require ext_code.size(arg1)
                                        call arg1.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                             gas gas_remaining wei
                                            args address(mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + calldata.size + 192]), 0, arg2, arg3, 160, mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 516 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 32]
                                    else:
                                        mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] + 548] = 0
                                        require ext_code.size(arg1)
                                        call arg1.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                             gas gas_remaining wei
                                            args address(_15888), 0, arg2, arg3, 160, mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 516 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 32]
                                    if not ext_call.success:
                                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                    if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                        else:
                            mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + arg4.length + 256] = 0
                            emit URI(Array(len=arg4.length, data=Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[(2 * ceil32(arg4.length)) + ceil32(arg5.length) + ceil32(calldata.size) + 256 len 2 * ceil32(arg4.length)]), arg2);
                            if not arg1:
                                revert with 0, 'ERC1155: mint to the zero address'
                            if this.address != msg.sender:
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 192] = 1
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 224] = arg2
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 256] = 1
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 288] = arg3
                                if balanceOf[arg2][address(arg1)] > -arg3 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[arg2][address(arg1)] += arg3
                                emit TransferSingle(arg2, arg3, msg.sender, 0, arg1);
                                if ext_code.size(arg1) > 0:
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 320] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 324] = msg.sender
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 356] = 0
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 388] = arg2
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 420] = arg3
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 452] = 160
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 484] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 516 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                                    if ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) > Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]:
                                        mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] + 516] = 0
                                    require ext_code.size(arg1)
                                    call arg1.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                         gas gas_remaining wei
                                        args msg.sender, 0, arg2, arg3, 160, mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 484 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 32]
                                    if not ext_call.success:
                                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                    if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                            else:
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 192] = calldata.size
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 224 len calldata.size] = call.data[0 len calldata.size]
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + calldata.size + 224] = 0
                                _15936 = mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + calldata.size + 192]
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 224] = 1
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 256] = arg2
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 288] = 1
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 320] = arg3
                                if balanceOf[arg2][address(arg1)] > -arg3 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[arg2][address(arg1)] += arg3
                                emit TransferSingle(arg2, arg3, mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + calldata.size + 204 len 20], 0, arg1);
                                if ext_code.size(arg1) > 0:
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 352] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 356] = mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + calldata.size + 204 len 20]
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 388] = 0
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 420] = arg2
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 452] = arg3
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 484] = 160
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 516] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 548 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                                    if ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) <= Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]:
                                        require ext_code.size(arg1)
                                        call arg1.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                             gas gas_remaining wei
                                            args address(mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + calldata.size + 192]), 0, arg2, arg3, 160, mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 516 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 32]
                                    else:
                                        mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] + 548] = 0
                                        require ext_code.size(arg1)
                                        call arg1.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                             gas gas_remaining wei
                                            args address(_15936), 0, arg2, arg3, 160, mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 516 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 32]
                                    if not ext_call.success:
                                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                    if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                else:
                    if stor10[arg2].field_0 == stor10[arg2].field_1 < 32:
                        revert with 'NH{q', 34
                    if arg4.length:
                        stor10[arg2][].field_0 = Array(len=arg4.length, data=arg4[all])
                        mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 224] = arg4.length
                        mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 256 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                        if ceil32(arg4.length) <= arg4.length:
                            emit URI(Array(len=arg4.length, data=Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[(2 * ceil32(arg4.length)) + ceil32(arg5.length) + ceil32(calldata.size) + 256 len 2 * ceil32(arg4.length)]), arg2);
                            if not arg1:
                                revert with 0, 'ERC1155: mint to the zero address'
                            if this.address != msg.sender:
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 192] = 1
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 224] = arg2
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 256] = 1
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 288] = arg3
                                if balanceOf[arg2][address(arg1)] > -arg3 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[arg2][address(arg1)] += arg3
                                emit TransferSingle(arg2, arg3, msg.sender, 0, arg1);
                                if ext_code.size(arg1) > 0:
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 320] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 324] = msg.sender
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 356] = 0
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 388] = arg2
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 420] = arg3
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 452] = 160
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 484] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 516 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                                    if ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) > Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]:
                                        mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] + 516] = 0
                                    require ext_code.size(arg1)
                                    call arg1.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                         gas gas_remaining wei
                                        args msg.sender, 0, arg2, arg3, 160, mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 484 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 32]
                                    if not ext_call.success:
                                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                    if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                            else:
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 192] = calldata.size
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 224 len calldata.size] = call.data[0 len calldata.size]
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + calldata.size + 224] = 0
                                _26150 = mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + calldata.size + 192]
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 224] = 1
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 256] = arg2
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 288] = 1
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 320] = arg3
                                if balanceOf[arg2][address(arg1)] > -arg3 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[arg2][address(arg1)] += arg3
                                emit TransferSingle(arg2, arg3, mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + calldata.size + 204 len 20], 0, arg1);
                                if ext_code.size(arg1) > 0:
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 352] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 356] = mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + calldata.size + 204 len 20]
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 388] = 0
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 420] = arg2
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 452] = arg3
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 484] = 160
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 516] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 548 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                                    if ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) <= Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]:
                                        require ext_code.size(arg1)
                                        call arg1.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                             gas gas_remaining wei
                                            args address(mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + calldata.size + 192]), 0, arg2, arg3, 160, mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 516 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 32]
                                    else:
                                        mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] + 548] = 0
                                        require ext_code.size(arg1)
                                        call arg1.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                             gas gas_remaining wei
                                            args address(_26150), 0, arg2, arg3, 160, mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 516 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 32]
                                    if not ext_call.success:
                                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                    if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                        else:
                            mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + arg4.length + 256] = 0
                            emit URI(Array(len=arg4.length, data=Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[(2 * ceil32(arg4.length)) + ceil32(arg5.length) + ceil32(calldata.size) + 256 len 2 * ceil32(arg4.length)]), arg2);
                            if not arg1:
                                revert with 0, 'ERC1155: mint to the zero address'
                            if this.address != msg.sender:
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 192] = 1
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 224] = arg2
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 256] = 1
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 288] = arg3
                                if balanceOf[arg2][address(arg1)] > -arg3 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[arg2][address(arg1)] += arg3
                                emit TransferSingle(arg2, arg3, msg.sender, 0, arg1);
                                if ext_code.size(arg1) > 0:
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 320] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 324] = msg.sender
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 356] = 0
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 388] = arg2
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 420] = arg3
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 452] = 160
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 484] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 516 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                                    if ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) > Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]:
                                        mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] + 516] = 0
                                    require ext_code.size(arg1)
                                    call arg1.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                         gas gas_remaining wei
                                        args msg.sender, 0, arg2, arg3, 160, mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 484 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 32]
                                    if not ext_call.success:
                                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                    if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                            else:
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 192] = calldata.size
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 224 len calldata.size] = call.data[0 len calldata.size]
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + calldata.size + 224] = 0
                                _26230 = mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + calldata.size + 192]
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 224] = 1
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 256] = arg2
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 288] = 1
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 320] = arg3
                                if balanceOf[arg2][address(arg1)] > -arg3 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[arg2][address(arg1)] += arg3
                                emit TransferSingle(arg2, arg3, mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + calldata.size + 204 len 20], 0, arg1);
                                if ext_code.size(arg1) > 0:
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 352] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 356] = mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + calldata.size + 204 len 20]
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 388] = 0
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 420] = arg2
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 452] = arg3
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 484] = 160
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 516] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 548 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                                    if ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) <= Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]:
                                        require ext_code.size(arg1)
                                        call arg1.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                             gas gas_remaining wei
                                            args address(mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + calldata.size + 192]), 0, arg2, arg3, 160, mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 516 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 32]
                                    else:
                                        mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] + 548] = 0
                                        require ext_code.size(arg1)
                                        call arg1.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                             gas gas_remaining wei
                                            args address(_26230), 0, arg2, arg3, 160, mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 516 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 32]
                                    if not ext_call.success:
                                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                    if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                    else:
                        stor10[arg2].field_0 = 0
                        idx = 0
                        while stor10[arg2].field_1 + 31 / 32 > idx:
                            stor10[arg2][idx].field_0 = 0
                            idx = idx + 1
                            continue 
                        mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 224] = arg4.length
                        mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 256 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                        if ceil32(arg4.length) <= arg4.length:
                            emit URI(Array(len=arg4.length, data=Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[(2 * ceil32(arg4.length)) + ceil32(arg5.length) + ceil32(calldata.size) + 256 len 2 * ceil32(arg4.length)]), arg2);
                            if not arg1:
                                revert with 0, 'ERC1155: mint to the zero address'
                            if this.address != msg.sender:
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 192] = 1
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 224] = arg2
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 256] = 1
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 288] = arg3
                                if balanceOf[arg2][address(arg1)] > -arg3 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[arg2][address(arg1)] += arg3
                                emit TransferSingle(arg2, arg3, msg.sender, 0, arg1);
                                if ext_code.size(arg1) > 0:
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 320] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 324] = msg.sender
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 356] = 0
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 388] = arg2
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 420] = arg3
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 452] = 160
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 484] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 516 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                                    if ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) > Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]:
                                        mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] + 516] = 0
                                    require ext_code.size(arg1)
                                    call arg1.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                         gas gas_remaining wei
                                        args msg.sender, 0, arg2, arg3, 160, mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 484 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 32]
                                    if not ext_call.success:
                                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                    if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                            else:
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 192] = calldata.size
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 224 len calldata.size] = call.data[0 len calldata.size]
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + calldata.size + 224] = 0
                                _15894 = mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + calldata.size + 192]
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 224] = 1
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 256] = arg2
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 288] = 1
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 320] = arg3
                                if balanceOf[arg2][address(arg1)] > -arg3 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[arg2][address(arg1)] += arg3
                                emit TransferSingle(arg2, arg3, mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + calldata.size + 204 len 20], 0, arg1);
                                if ext_code.size(arg1) > 0:
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 352] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 356] = mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + calldata.size + 204 len 20]
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 388] = 0
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 420] = arg2
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 452] = arg3
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 484] = 160
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 516] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 548 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                                    if ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) <= Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]:
                                        require ext_code.size(arg1)
                                        call arg1.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                             gas gas_remaining wei
                                            args address(mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + calldata.size + 192]), 0, arg2, arg3, 160, mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 516 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 32]
                                    else:
                                        mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] + 548] = 0
                                        require ext_code.size(arg1)
                                        call arg1.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                             gas gas_remaining wei
                                            args address(_15894), 0, arg2, arg3, 160, mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 516 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 32]
                                    if not ext_call.success:
                                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                    if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                        else:
                            mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + arg4.length + 256] = 0
                            emit URI(Array(len=arg4.length, data=Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[(2 * ceil32(arg4.length)) + ceil32(arg5.length) + ceil32(calldata.size) + 256 len 2 * ceil32(arg4.length)]), arg2);
                            if not arg1:
                                revert with 0, 'ERC1155: mint to the zero address'
                            if this.address != msg.sender:
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 192] = 1
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 224] = arg2
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 256] = 1
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 288] = arg3
                                if balanceOf[arg2][address(arg1)] > -arg3 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[arg2][address(arg1)] += arg3
                                emit TransferSingle(arg2, arg3, msg.sender, 0, arg1);
                                if ext_code.size(arg1) > 0:
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 320] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 324] = msg.sender
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 356] = 0
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 388] = arg2
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 420] = arg3
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 452] = 160
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 484] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 516 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                                    if ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) > Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]:
                                        mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] + 516] = 0
                                    require ext_code.size(arg1)
                                    call arg1.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                         gas gas_remaining wei
                                        args msg.sender, 0, arg2, arg3, 160, mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 484 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 32]
                                    if not ext_call.success:
                                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                    if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                            else:
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 192] = calldata.size
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 224 len calldata.size] = call.data[0 len calldata.size]
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + calldata.size + 224] = 0
                                _15942 = mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + calldata.size + 192]
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 224] = 1
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 256] = arg2
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 288] = 1
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 320] = arg3
                                if balanceOf[arg2][address(arg1)] > -arg3 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[arg2][address(arg1)] += arg3
                                emit TransferSingle(arg2, arg3, mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + calldata.size + 204 len 20], 0, arg1);
                                if ext_code.size(arg1) > 0:
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 352] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 356] = mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + calldata.size + 204 len 20]
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 388] = 0
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 420] = arg2
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 452] = arg3
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 484] = 160
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 516] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 548 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                                    if ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) <= Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]:
                                        require ext_code.size(arg1)
                                        call arg1.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                             gas gas_remaining wei
                                            args address(mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + calldata.size + 192]), 0, arg2, arg3, 160, mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 516 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 32]
                                    else:
                                        mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] + 548] = 0
                                        require ext_code.size(arg1)
                                        call arg1.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                             gas gas_remaining wei
                                            args address(_15942), 0, arg2, arg3, 160, mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 516 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 32]
                                    if not ext_call.success:
                                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                    if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
        else:
            mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 192] = calldata.size
            mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 224 len calldata.size] = call.data[0 len calldata.size]
            mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + calldata.size + 224] = 0
            creators[arg2] = mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + calldata.size + 204 len 20]
            if arg4.length <= 0:
                if not arg1:
                    revert with 0, 'ERC1155: mint to the zero address'
                if this.address != msg.sender:
                    if balanceOf[arg2][address(arg1)] > -arg3 - 1:
                        revert with 'NH{q', 17
                    balanceOf[arg2][address(arg1)] += arg3
                    emit TransferSingle(arg2, arg3, msg.sender, 0, arg1);
                    if ext_code.size(arg1) > 0:
                        require ext_code.size(arg1)
                        call arg1.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                             gas gas_remaining wei
                            args msg.sender, 0, arg2, arg3, 160, arg5.length, arg5[all], mem[ceil32(arg4.length) + arg5.length + 160 len ceil32(arg5.length) - arg5.length]
                        if not ext_call.success:
                            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                        require return_data.size >= 32
                        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                        if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                else:
                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 224] = calldata.size
                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 256 len calldata.size] = call.data[0 len calldata.size]
                    if balanceOf[arg2][address(arg1)] > -arg3 - 1:
                        revert with 'NH{q', 17
                    balanceOf[arg2][address(arg1)] += arg3
                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (4 * ceil32(calldata.size)) + 416] = arg3
                    emit TransferSingle(arg2, arg3, mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + calldata.size + 236 len 20], 0, arg1);
                    if ext_code.size(arg1) > 0:
                        mem[ceil32(arg4.length) + ceil32(arg5.length) + (4 * ceil32(calldata.size)) + 420] = 0
                        mem[ceil32(arg4.length) + ceil32(arg5.length) + (4 * ceil32(calldata.size)) + 452] = arg2
                        mem[ceil32(arg4.length) + ceil32(arg5.length) + (4 * ceil32(calldata.size)) + 484] = arg3
                        mem[ceil32(arg4.length) + ceil32(arg5.length) + (4 * ceil32(calldata.size)) + 516] = 160
                        mem[ceil32(arg4.length) + ceil32(arg5.length) + (4 * ceil32(calldata.size)) + 548] = arg5.length
                        mem[ceil32(arg4.length) + ceil32(arg5.length) + (4 * ceil32(calldata.size)) + 580 len ceil32(arg5.length)] = arg5[all], mem[ceil32(arg4.length) + arg5.length + 160 len ceil32(arg5.length) - arg5.length]
                        if ceil32(arg5.length) > arg5.length:
                            mem[ceil32(arg4.length) + ceil32(arg5.length) + (4 * ceil32(calldata.size)) + arg5.length + 580] = 0
                        require ext_code.size(arg1)
                        call arg1.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                             gas gas_remaining wei
                            args mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + calldata.size + 236 len 20], 0, arg2, arg3, 160, arg5.length, arg5[all], mem[ceil32(arg4.length) + arg5.length + 160 len ceil32(arg5.length) - arg5.length]
                        if not ext_call.success:
                            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                        require return_data.size >= 32
                        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                        if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
            else:
                if stor10[arg2].field_0:
                    if stor10[arg2].field_0 == stor10[arg2].field_1 < 32:
                        revert with 'NH{q', 34
                    if arg4.length:
                        stor10[arg2][].field_0 = Array(len=arg4.length, data=arg4[all])
                        mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 256] = arg4.length
                        mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 288 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                        if ceil32(arg4.length) <= arg4.length:
                            emit URI(Array(len=arg4.length, data=Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[(2 * ceil32(arg4.length)) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 288 len 2 * ceil32(arg4.length)]), arg2);
                            if not arg1:
                                revert with 0, 'ERC1155: mint to the zero address'
                            if this.address != msg.sender:
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 224] = 1
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 256] = arg2
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 288] = 1
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 320] = arg3
                                if balanceOf[arg2][address(arg1)] > -arg3 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[arg2][address(arg1)] += arg3
                                emit TransferSingle(arg2, arg3, msg.sender, 0, arg1);
                                if ext_code.size(arg1) > 0:
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 352] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 356] = msg.sender
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 388] = 0
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 420] = arg2
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 452] = arg3
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 484] = 160
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 516] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 548 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                                    if ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) > Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]:
                                        mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] + 548] = 0
                                    require ext_code.size(arg1)
                                    call arg1.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                         gas gas_remaining wei
                                        args msg.sender, 0, arg2, arg3, 160, mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 516 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 32]
                                    if not ext_call.success:
                                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                    if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                            else:
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 224] = calldata.size
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 256 len calldata.size] = call.data[0 len calldata.size]
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + calldata.size + 256] = 0
                                _26176 = mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + calldata.size + 224]
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + (4 * ceil32(calldata.size)) + 256] = 1
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + (4 * ceil32(calldata.size)) + 288] = arg2
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + (4 * ceil32(calldata.size)) + 320] = 1
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + (4 * ceil32(calldata.size)) + 352] = arg3
                                if balanceOf[arg2][address(arg1)] > -arg3 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[arg2][address(arg1)] += arg3
                                emit TransferSingle(arg2, arg3, mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + calldata.size + 236 len 20], 0, arg1);
                                if ext_code.size(arg1) > 0:
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (4 * ceil32(calldata.size)) + 384] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (4 * ceil32(calldata.size)) + 388] = mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + calldata.size + 236 len 20]
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (4 * ceil32(calldata.size)) + 420] = 0
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (4 * ceil32(calldata.size)) + 452] = arg2
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (4 * ceil32(calldata.size)) + 484] = arg3
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (4 * ceil32(calldata.size)) + 516] = 160
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (4 * ceil32(calldata.size)) + 548] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (4 * ceil32(calldata.size)) + 580 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                                    if ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) <= Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]:
                                        require ext_code.size(arg1)
                                        call arg1.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                             gas gas_remaining wei
                                            args address(mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + calldata.size + 224]), 0, arg2, arg3, 160, mem[ceil32(arg4.length) + ceil32(arg5.length) + (4 * ceil32(calldata.size)) + 548 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 32]
                                    else:
                                        mem[ceil32(arg4.length) + ceil32(arg5.length) + (4 * ceil32(calldata.size)) + Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] + 580] = 0
                                        require ext_code.size(arg1)
                                        call arg1.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                             gas gas_remaining wei
                                            args address(_26176), 0, arg2, arg3, 160, mem[ceil32(arg4.length) + ceil32(arg5.length) + (4 * ceil32(calldata.size)) + 548 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 32]
                                    if not ext_call.success:
                                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                    if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                        else:
                            mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + arg4.length + 288] = 0
                            emit URI(Array(len=arg4.length, data=Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[(2 * ceil32(arg4.length)) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 288 len 2 * ceil32(arg4.length)]), arg2);
                            if not arg1:
                                revert with 0, 'ERC1155: mint to the zero address'
                            if this.address != msg.sender:
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 224] = 1
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 256] = arg2
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 288] = 1
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 320] = arg3
                                if balanceOf[arg2][address(arg1)] > -arg3 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[arg2][address(arg1)] += arg3
                                emit TransferSingle(arg2, arg3, msg.sender, 0, arg1);
                                if ext_code.size(arg1) > 0:
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 352] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 356] = msg.sender
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 388] = 0
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 420] = arg2
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 452] = arg3
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 484] = 160
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 516] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 548 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                                    if ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) > Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]:
                                        mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] + 548] = 0
                                    require ext_code.size(arg1)
                                    call arg1.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                         gas gas_remaining wei
                                        args msg.sender, 0, arg2, arg3, 160, mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 516 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 32]
                                    if not ext_call.success:
                                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                    if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                            else:
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 224] = calldata.size
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 256 len calldata.size] = call.data[0 len calldata.size]
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + calldata.size + 256] = 0
                                _26232 = mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + calldata.size + 224]
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + (4 * ceil32(calldata.size)) + 256] = 1
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + (4 * ceil32(calldata.size)) + 288] = arg2
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + (4 * ceil32(calldata.size)) + 320] = 1
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + (4 * ceil32(calldata.size)) + 352] = arg3
                                if balanceOf[arg2][address(arg1)] > -arg3 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[arg2][address(arg1)] += arg3
                                emit TransferSingle(arg2, arg3, mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + calldata.size + 236 len 20], 0, arg1);
                                if ext_code.size(arg1) > 0:
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (4 * ceil32(calldata.size)) + 384] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (4 * ceil32(calldata.size)) + 388] = mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + calldata.size + 236 len 20]
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (4 * ceil32(calldata.size)) + 420] = 0
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (4 * ceil32(calldata.size)) + 452] = arg2
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (4 * ceil32(calldata.size)) + 484] = arg3
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (4 * ceil32(calldata.size)) + 516] = 160
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (4 * ceil32(calldata.size)) + 548] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (4 * ceil32(calldata.size)) + 580 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                                    if ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) <= Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]:
                                        require ext_code.size(arg1)
                                        call arg1.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                             gas gas_remaining wei
                                            args address(mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + calldata.size + 224]), 0, arg2, arg3, 160, mem[ceil32(arg4.length) + ceil32(arg5.length) + (4 * ceil32(calldata.size)) + 548 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 32]
                                    else:
                                        mem[ceil32(arg4.length) + ceil32(arg5.length) + (4 * ceil32(calldata.size)) + Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] + 580] = 0
                                        require ext_code.size(arg1)
                                        call arg1.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                             gas gas_remaining wei
                                            args address(_26232), 0, arg2, arg3, 160, mem[ceil32(arg4.length) + ceil32(arg5.length) + (4 * ceil32(calldata.size)) + 548 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 32]
                                    if not ext_call.success:
                                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                    if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                    else:
                        stor10[arg2].field_0 = 0
                        idx = 0
                        while stor10[arg2].field_1 + 31 / 32 > idx:
                            stor10[arg2][idx].field_0 = 0
                            idx = idx + 1
                            continue 
                        mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 256] = arg4.length
                        mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 288 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                        if ceil32(arg4.length) <= arg4.length:
                            emit URI(Array(len=arg4.length, data=Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[(2 * ceil32(arg4.length)) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 288 len 2 * ceil32(arg4.length)]), arg2);
                            if not arg1:
                                revert with 0, 'ERC1155: mint to the zero address'
                            if this.address != msg.sender:
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 224] = 1
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 256] = arg2
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 288] = 1
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 320] = arg3
                                if balanceOf[arg2][address(arg1)] > -arg3 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[arg2][address(arg1)] += arg3
                                emit TransferSingle(arg2, arg3, msg.sender, 0, arg1);
                                if ext_code.size(arg1) > 0:
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 352] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 356] = msg.sender
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 388] = 0
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 420] = arg2
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 452] = arg3
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 484] = 160
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 516] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 548 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                                    if ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) > Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]:
                                        mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] + 548] = 0
                                    require ext_code.size(arg1)
                                    call arg1.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                         gas gas_remaining wei
                                        args msg.sender, 0, arg2, arg3, 160, mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 516 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 32]
                                    if not ext_call.success:
                                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                    if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                            else:
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 224] = calldata.size
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 256 len calldata.size] = call.data[0 len calldata.size]
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + calldata.size + 256] = 0
                                _15900 = mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + calldata.size + 224]
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + (4 * ceil32(calldata.size)) + 256] = 1
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + (4 * ceil32(calldata.size)) + 288] = arg2
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + (4 * ceil32(calldata.size)) + 320] = 1
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + (4 * ceil32(calldata.size)) + 352] = arg3
                                if balanceOf[arg2][address(arg1)] > -arg3 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[arg2][address(arg1)] += arg3
                                emit TransferSingle(arg2, arg3, mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + calldata.size + 236 len 20], 0, arg1);
                                if ext_code.size(arg1) > 0:
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (4 * ceil32(calldata.size)) + 384] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (4 * ceil32(calldata.size)) + 388] = mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + calldata.size + 236 len 20]
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (4 * ceil32(calldata.size)) + 420] = 0
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (4 * ceil32(calldata.size)) + 452] = arg2
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (4 * ceil32(calldata.size)) + 484] = arg3
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (4 * ceil32(calldata.size)) + 516] = 160
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (4 * ceil32(calldata.size)) + 548] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (4 * ceil32(calldata.size)) + 580 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                                    if ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) <= Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]:
                                        require ext_code.size(arg1)
                                        call arg1.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                             gas gas_remaining wei
                                            args address(mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + calldata.size + 224]), 0, arg2, arg3, 160, mem[ceil32(arg4.length) + ceil32(arg5.length) + (4 * ceil32(calldata.size)) + 548 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 32]
                                    else:
                                        mem[ceil32(arg4.length) + ceil32(arg5.length) + (4 * ceil32(calldata.size)) + Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] + 580] = 0
                                        require ext_code.size(arg1)
                                        call arg1.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                             gas gas_remaining wei
                                            args address(_15900), 0, arg2, arg3, 160, mem[ceil32(arg4.length) + ceil32(arg5.length) + (4 * ceil32(calldata.size)) + 548 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 32]
                                    if not ext_call.success:
                                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                    if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                        else:
                            mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + arg4.length + 288] = 0
                            emit URI(Array(len=arg4.length, data=Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[(2 * ceil32(arg4.length)) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 288 len 2 * ceil32(arg4.length)]), arg2);
                            if not arg1:
                                revert with 0, 'ERC1155: mint to the zero address'
                            if this.address != msg.sender:
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 224] = 1
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 256] = arg2
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 288] = 1
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 320] = arg3
                                if balanceOf[arg2][address(arg1)] > -arg3 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[arg2][address(arg1)] += arg3
                                emit TransferSingle(arg2, arg3, msg.sender, 0, arg1);
                                if ext_code.size(arg1) > 0:
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 352] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 356] = msg.sender
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 388] = 0
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 420] = arg2
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 452] = arg3
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 484] = 160
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 516] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 548 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                                    if ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) > Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]:
                                        mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] + 548] = 0
                                    require ext_code.size(arg1)
                                    call arg1.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                         gas gas_remaining wei
                                        args msg.sender, 0, arg2, arg3, 160, mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 516 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 32]
                                    if not ext_call.success:
                                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                    if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                            else:
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 224] = calldata.size
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 256 len calldata.size] = call.data[0 len calldata.size]
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + calldata.size + 256] = 0
                                _15948 = mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + calldata.size + 224]
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + (4 * ceil32(calldata.size)) + 256] = 1
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + (4 * ceil32(calldata.size)) + 288] = arg2
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + (4 * ceil32(calldata.size)) + 320] = 1
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + (4 * ceil32(calldata.size)) + 352] = arg3
                                if balanceOf[arg2][address(arg1)] > -arg3 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[arg2][address(arg1)] += arg3
                                emit TransferSingle(arg2, arg3, mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + calldata.size + 236 len 20], 0, arg1);
                                if ext_code.size(arg1) > 0:
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (4 * ceil32(calldata.size)) + 384] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (4 * ceil32(calldata.size)) + 388] = mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + calldata.size + 236 len 20]
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (4 * ceil32(calldata.size)) + 420] = 0
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (4 * ceil32(calldata.size)) + 452] = arg2
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (4 * ceil32(calldata.size)) + 484] = arg3
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (4 * ceil32(calldata.size)) + 516] = 160
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (4 * ceil32(calldata.size)) + 548] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (4 * ceil32(calldata.size)) + 580 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                                    if ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) <= Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]:
                                        require ext_code.size(arg1)
                                        call arg1.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                             gas gas_remaining wei
                                            args address(mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + calldata.size + 224]), 0, arg2, arg3, 160, mem[ceil32(arg4.length) + ceil32(arg5.length) + (4 * ceil32(calldata.size)) + 548 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 32]
                                    else:
                                        mem[ceil32(arg4.length) + ceil32(arg5.length) + (4 * ceil32(calldata.size)) + Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] + 580] = 0
                                        require ext_code.size(arg1)
                                        call arg1.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                             gas gas_remaining wei
                                            args address(_15948), 0, arg2, arg3, 160, mem[ceil32(arg4.length) + ceil32(arg5.length) + (4 * ceil32(calldata.size)) + 548 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 32]
                                    if not ext_call.success:
                                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                    if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                else:
                    if stor10[arg2].field_0 == stor10[arg2].field_1 < 32:
                        revert with 'NH{q', 34
                    if arg4.length:
                        stor10[arg2][].field_0 = Array(len=arg4.length, data=arg4[all])
                        mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 256] = arg4.length
                        mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 288 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                        if ceil32(arg4.length) <= arg4.length:
                            emit URI(Array(len=arg4.length, data=Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[(2 * ceil32(arg4.length)) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 288 len 2 * ceil32(arg4.length)]), arg2);
                            if not arg1:
                                revert with 0, 'ERC1155: mint to the zero address'
                            if this.address != msg.sender:
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 224] = 1
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 256] = arg2
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 288] = 1
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 320] = arg3
                                if balanceOf[arg2][address(arg1)] > -arg3 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[arg2][address(arg1)] += arg3
                                emit TransferSingle(arg2, arg3, msg.sender, 0, arg1);
                                if ext_code.size(arg1) > 0:
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 352] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 356] = msg.sender
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 388] = 0
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 420] = arg2
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 452] = arg3
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 484] = 160
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 516] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 548 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                                    if ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) > Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]:
                                        mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] + 548] = 0
                                    require ext_code.size(arg1)
                                    call arg1.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                         gas gas_remaining wei
                                        args msg.sender, 0, arg2, arg3, 160, mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 516 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 32]
                                    if not ext_call.success:
                                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                    if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                            else:
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 224] = calldata.size
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 256 len calldata.size] = call.data[0 len calldata.size]
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + calldata.size + 256] = 0
                                _26202 = mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + calldata.size + 224]
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + (4 * ceil32(calldata.size)) + 256] = 1
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + (4 * ceil32(calldata.size)) + 288] = arg2
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + (4 * ceil32(calldata.size)) + 320] = 1
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + (4 * ceil32(calldata.size)) + 352] = arg3
                                if balanceOf[arg2][address(arg1)] > -arg3 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[arg2][address(arg1)] += arg3
                                emit TransferSingle(arg2, arg3, mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + calldata.size + 236 len 20], 0, arg1);
                                if ext_code.size(arg1) > 0:
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (4 * ceil32(calldata.size)) + 384] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (4 * ceil32(calldata.size)) + 388] = mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + calldata.size + 236 len 20]
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (4 * ceil32(calldata.size)) + 420] = 0
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (4 * ceil32(calldata.size)) + 452] = arg2
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (4 * ceil32(calldata.size)) + 484] = arg3
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (4 * ceil32(calldata.size)) + 516] = 160
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (4 * ceil32(calldata.size)) + 548] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (4 * ceil32(calldata.size)) + 580 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                                    if ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) <= Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]:
                                        require ext_code.size(arg1)
                                        call arg1.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                             gas gas_remaining wei
                                            args address(mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + calldata.size + 224]), 0, arg2, arg3, 160, mem[ceil32(arg4.length) + ceil32(arg5.length) + (4 * ceil32(calldata.size)) + 548 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 32]
                                    else:
                                        mem[ceil32(arg4.length) + ceil32(arg5.length) + (4 * ceil32(calldata.size)) + Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] + 580] = 0
                                        require ext_code.size(arg1)
                                        call arg1.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                             gas gas_remaining wei
                                            args address(_26202), 0, arg2, arg3, 160, mem[ceil32(arg4.length) + ceil32(arg5.length) + (4 * ceil32(calldata.size)) + 548 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 32]
                                    if not ext_call.success:
                                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                    if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                        else:
                            mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + arg4.length + 288] = 0
                            emit URI(Array(len=arg4.length, data=Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[(2 * ceil32(arg4.length)) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 288 len 2 * ceil32(arg4.length)]), arg2);
                            if not arg1:
                                revert with 0, 'ERC1155: mint to the zero address'
                            if this.address != msg.sender:
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 224] = 1
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 256] = arg2
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 288] = 1
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 320] = arg3
                                if balanceOf[arg2][address(arg1)] > -arg3 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[arg2][address(arg1)] += arg3
                                emit TransferSingle(arg2, arg3, msg.sender, 0, arg1);
                                if ext_code.size(arg1) > 0:
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 352] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 356] = msg.sender
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 388] = 0
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 420] = arg2
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 452] = arg3
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 484] = 160
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 516] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 548 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                                    if ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) > Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]:
                                        mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] + 548] = 0
                                    require ext_code.size(arg1)
                                    call arg1.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                         gas gas_remaining wei
                                        args msg.sender, 0, arg2, arg3, 160, mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 516 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 32]
                                    if not ext_call.success:
                                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                    if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                            else:
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 224] = calldata.size
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 256 len calldata.size] = call.data[0 len calldata.size]
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + calldata.size + 256] = 0
                                _26234 = mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + calldata.size + 224]
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + (4 * ceil32(calldata.size)) + 256] = 1
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + (4 * ceil32(calldata.size)) + 288] = arg2
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + (4 * ceil32(calldata.size)) + 320] = 1
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + (4 * ceil32(calldata.size)) + 352] = arg3
                                if balanceOf[arg2][address(arg1)] > -arg3 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[arg2][address(arg1)] += arg3
                                emit TransferSingle(arg2, arg3, mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + calldata.size + 236 len 20], 0, arg1);
                                if ext_code.size(arg1) > 0:
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (4 * ceil32(calldata.size)) + 384] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (4 * ceil32(calldata.size)) + 388] = mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + calldata.size + 236 len 20]
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (4 * ceil32(calldata.size)) + 420] = 0
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (4 * ceil32(calldata.size)) + 452] = arg2
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (4 * ceil32(calldata.size)) + 484] = arg3
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (4 * ceil32(calldata.size)) + 516] = 160
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (4 * ceil32(calldata.size)) + 548] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (4 * ceil32(calldata.size)) + 580 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                                    if ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) <= Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]:
                                        require ext_code.size(arg1)
                                        call arg1.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                             gas gas_remaining wei
                                            args address(mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + calldata.size + 224]), 0, arg2, arg3, 160, mem[ceil32(arg4.length) + ceil32(arg5.length) + (4 * ceil32(calldata.size)) + 548 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 32]
                                    else:
                                        mem[ceil32(arg4.length) + ceil32(arg5.length) + (4 * ceil32(calldata.size)) + Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] + 580] = 0
                                        require ext_code.size(arg1)
                                        call arg1.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                             gas gas_remaining wei
                                            args address(_26234), 0, arg2, arg3, 160, mem[ceil32(arg4.length) + ceil32(arg5.length) + (4 * ceil32(calldata.size)) + 548 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 32]
                                    if not ext_call.success:
                                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                    if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                    else:
                        stor10[arg2].field_0 = 0
                        idx = 0
                        while stor10[arg2].field_1 + 31 / 32 > idx:
                            stor10[arg2][idx].field_0 = 0
                            idx = idx + 1
                            continue 
                        mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 256] = arg4.length
                        mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 288 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                        if ceil32(arg4.length) <= arg4.length:
                            emit URI(Array(len=arg4.length, data=Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[(2 * ceil32(arg4.length)) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 288 len 2 * ceil32(arg4.length)]), arg2);
                            if not arg1:
                                revert with 0, 'ERC1155: mint to the zero address'
                            if this.address != msg.sender:
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 224] = 1
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 256] = arg2
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 288] = 1
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 320] = arg3
                                if balanceOf[arg2][address(arg1)] > -arg3 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[arg2][address(arg1)] += arg3
                                emit TransferSingle(arg2, arg3, msg.sender, 0, arg1);
                                if ext_code.size(arg1) > 0:
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 352] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 356] = msg.sender
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 388] = 0
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 420] = arg2
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 452] = arg3
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 484] = 160
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 516] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 548 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                                    if ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) > Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]:
                                        mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] + 548] = 0
                                    require ext_code.size(arg1)
                                    call arg1.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                         gas gas_remaining wei
                                        args msg.sender, 0, arg2, arg3, 160, mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 516 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 32]
                                    if not ext_call.success:
                                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                    if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                            else:
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 224] = calldata.size
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 256 len calldata.size] = call.data[0 len calldata.size]
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + calldata.size + 256] = 0
                                _15906 = mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + calldata.size + 224]
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + (4 * ceil32(calldata.size)) + 256] = 1
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + (4 * ceil32(calldata.size)) + 288] = arg2
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + (4 * ceil32(calldata.size)) + 320] = 1
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + (4 * ceil32(calldata.size)) + 352] = arg3
                                if balanceOf[arg2][address(arg1)] > -arg3 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[arg2][address(arg1)] += arg3
                                emit TransferSingle(arg2, arg3, mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + calldata.size + 236 len 20], 0, arg1);
                                if ext_code.size(arg1) > 0:
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (4 * ceil32(calldata.size)) + 384] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (4 * ceil32(calldata.size)) + 388] = mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + calldata.size + 236 len 20]
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (4 * ceil32(calldata.size)) + 420] = 0
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (4 * ceil32(calldata.size)) + 452] = arg2
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (4 * ceil32(calldata.size)) + 484] = arg3
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (4 * ceil32(calldata.size)) + 516] = 160
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (4 * ceil32(calldata.size)) + 548] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (4 * ceil32(calldata.size)) + 580 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                                    if ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) <= Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]:
                                        require ext_code.size(arg1)
                                        call arg1.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                             gas gas_remaining wei
                                            args address(mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + calldata.size + 224]), 0, arg2, arg3, 160, mem[ceil32(arg4.length) + ceil32(arg5.length) + (4 * ceil32(calldata.size)) + 548 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 32]
                                    else:
                                        mem[ceil32(arg4.length) + ceil32(arg5.length) + (4 * ceil32(calldata.size)) + Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] + 580] = 0
                                        require ext_code.size(arg1)
                                        call arg1.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                             gas gas_remaining wei
                                            args address(_15906), 0, arg2, arg3, 160, mem[ceil32(arg4.length) + ceil32(arg5.length) + (4 * ceil32(calldata.size)) + 548 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 32]
                                    if not ext_call.success:
                                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                    if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                        else:
                            mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + arg4.length + 288] = 0
                            emit URI(Array(len=arg4.length, data=Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[(2 * ceil32(arg4.length)) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 288 len 2 * ceil32(arg4.length)]), arg2);
                            if not arg1:
                                revert with 0, 'ERC1155: mint to the zero address'
                            if this.address != msg.sender:
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 224] = 1
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 256] = arg2
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 288] = 1
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 320] = arg3
                                if balanceOf[arg2][address(arg1)] > -arg3 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[arg2][address(arg1)] += arg3
                                emit TransferSingle(arg2, arg3, msg.sender, 0, arg1);
                                if ext_code.size(arg1) > 0:
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 352] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 356] = msg.sender
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 388] = 0
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 420] = arg2
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 452] = arg3
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 484] = 160
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 516] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 548 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                                    if ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) > Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]:
                                        mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] + 548] = 0
                                    require ext_code.size(arg1)
                                    call arg1.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                         gas gas_remaining wei
                                        args msg.sender, 0, arg2, arg3, 160, mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 516 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 32]
                                    if not ext_call.success:
                                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                    if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                            else:
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 224] = calldata.size
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 256 len calldata.size] = call.data[0 len calldata.size]
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + calldata.size + 256] = 0
                                _15954 = mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + calldata.size + 224]
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + (4 * ceil32(calldata.size)) + 256] = 1
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + (4 * ceil32(calldata.size)) + 288] = arg2
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + (4 * ceil32(calldata.size)) + 320] = 1
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + (4 * ceil32(calldata.size)) + 352] = arg3
                                if balanceOf[arg2][address(arg1)] > -arg3 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[arg2][address(arg1)] += arg3
                                emit TransferSingle(arg2, arg3, mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + calldata.size + 236 len 20], 0, arg1);
                                if ext_code.size(arg1) > 0:
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (4 * ceil32(calldata.size)) + 384] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (4 * ceil32(calldata.size)) + 388] = mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + calldata.size + 236 len 20]
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (4 * ceil32(calldata.size)) + 420] = 0
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (4 * ceil32(calldata.size)) + 452] = arg2
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (4 * ceil32(calldata.size)) + 484] = arg3
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (4 * ceil32(calldata.size)) + 516] = 160
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (4 * ceil32(calldata.size)) + 548] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (4 * ceil32(calldata.size)) + 580 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                                    if ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) <= Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]:
                                        require ext_code.size(arg1)
                                        call arg1.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                             gas gas_remaining wei
                                            args address(mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + calldata.size + 224]), 0, arg2, arg3, 160, mem[ceil32(arg4.length) + ceil32(arg5.length) + (4 * ceil32(calldata.size)) + 548 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 32]
                                    else:
                                        mem[ceil32(arg4.length) + ceil32(arg5.length) + (4 * ceil32(calldata.size)) + Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] + 580] = 0
                                        require ext_code.size(arg1)
                                        call arg1.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                             gas gas_remaining wei
                                            args address(_15954), 0, arg2, arg3, 160, mem[ceil32(arg4.length) + ceil32(arg5.length) + (4 * ceil32(calldata.size)) + 548 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 32]
                                    if not ext_call.success:
                                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                    if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
    totalSupply[arg2] = arg3
    return arg2
}



}
