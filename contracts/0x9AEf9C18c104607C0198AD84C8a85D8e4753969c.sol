contract main {




// =====================  Runtime code  =====================


#
#  - executeMetaTransaction(address arg1, bytes arg2, bytes32 arg3, bytes32 arg4, uint8 arg5)
#  - safeBatchTransferFrom(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5)
#
mapping of uint256 nonce;
mapping of uint256 stor2;
mapping of uint8 stor3;
mapping of address ownerOf;
address owner;
uint256 stor6;
mapping of address creators;
mapping of uint256 maxIndex;
array of uint256 name;
array of uint256 symbol;
array of uint256 uri;

function name() {
    return name[0 len name.length]
}

function maxIndex(uint256 arg1) {
    require calldata.size - 4 >= 32
    return maxIndex[arg1]
}

function uri(uint256 arg1) {
    return uri[Mask(128, 128, arg1)][0 len uri[Mask(128, 128, arg1)].length]
}

function getNonce(address arg1) {
    require calldata.size - 4 >= 32
    return nonce[address(arg1)]
}

function ownerOf(uint256 arg1) {
    require calldata.size - 4 >= 32
    return ownerOf[arg1]
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function creators(uint256 arg1) {
    require calldata.size - 4 >= 32
    return creators[arg1]
}

function isApprovedForAll(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return bool(stor3[address(arg1)][address(arg2)])
}

function _fallback() payable {
    revert
}

function changeOwner(address arg1) {
    require calldata.size - 4 >= 32
    owner = arg1
}

function getNonFungibleIndex(uint256 arg1) {
    require calldata.size - 4 >= 32
    return uint128(arg1)
}

function isFungible(uint256 arg1) {
    require calldata.size - 4 >= 32
    return not bool(Mask(1, 255, arg1))
}

function getNonFungibleBaseType(uint256 arg1) {
    require calldata.size - 4 >= 32
    return Mask(128, 128, arg1)
}

function isNonFungible(uint256 arg1) {
    require calldata.size - 4 >= 32
    return (Mask(1, 255, arg1) == 0x8000000000000000000000000000000000000000000000000000000000000000)
}

function supportsInterface(bytes4 arg1) {
    require calldata.size - 4 >= 32
    if Mask(32, 224, arg1) != 0x1ffc9a700000000000000000000000000000000000000000000000000000000:
        if Mask(32, 224, arg1) != 0xd9b67a2600000000000000000000000000000000000000000000000000000000:
            return 0
    return 1
}

function isNonFungibleItem(uint256 arg1) {
    require calldata.size - 4 >= 32
    if Mask(1, 255, arg1) != 0x8000000000000000000000000000000000000000000000000000000000000000:
        return (Mask(1, 255, arg1) == 0x8000000000000000000000000000000000000000000000000000000000000000)
    return bool(uint128(arg1))
}

function isNonFungibleBaseType(uint256 arg1) {
    require calldata.size - 4 >= 32
    if Mask(1, 255, arg1) != 0x8000000000000000000000000000000000000000000000000000000000000000:
        return (Mask(1, 255, arg1) == 0x8000000000000000000000000000000000000000000000000000000000000000)
    return not bool(uint128(arg1))
}

function balanceOf(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if Mask(1, 255, arg2) != 0x8000000000000000000000000000000000000000000000000000000000000000:
        return stor2[arg2][address(arg1)]
    if not uint128(arg2):
        return stor2[arg2][address(arg1)]
    if ownerOf[arg2] == arg1:
        return 1
    else:
        return 0
}

function setApprovalForAll(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if msg.sender != this.address:
        stor3[address(msg.sender)][address(arg1)] = uint8(arg2)
        emit ApprovalForAll(arg2, msg.sender, arg1);
    else:
        mem[96] = calldata.size
        mem[128 len calldata.size] = call.data[0 len calldata.size]
        stor3[mem[calldata.size + 108 len 20]][address(arg1)] = uint8(arg2)
        mem[ceil32(calldata.size) + 128] = calldata.size
        mem[ceil32(calldata.size) + 160 len calldata.size] = call.data[0 len calldata.size]
        emit ApprovalForAll(arg2, mem[calldata.size + ceil32(calldata.size) + 140 len 20], arg1);
}

function balanceOfBatch(address[] arg1, uint256[] arg2) {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    require arg2.length == arg1.length
    require arg1.length <= test266151307()
    if arg1.length:
        mem[128 len 32 * arg1.length] = call.data[calldata.size len 32 * arg1.length]
    idx = 0
    while idx < arg1.length:
        require idx < arg2.length
        require idx < arg1.length
        if Mask(1, 255, cd[((32 * idx) + arg2 + 36)]) != 0x8000000000000000000000000000000000000000000000000000000000000000:
            mem[0] = address(cd[((32 * idx) + arg1 + 36)])
            mem[32] = sha3(cd[((32 * idx) + arg2 + 36)], 2)
            require idx < arg1.length
            mem[(32 * idx) + 128] = stor2[cd[((32 * idx) + arg2 + 36)]][address(cd[((32 * idx) + arg1 + 36)])]
        else:
            if not uint128(cd[((32 * idx) + arg2 + 36)]):
                mem[0] = address(cd[((32 * idx) + arg1 + 36)])
                mem[32] = sha3(cd[((32 * idx) + arg2 + 36)], 2)
                require idx < arg1.length
                mem[(32 * idx) + 128] = stor2[cd[((32 * idx) + arg2 + 36)]][address(cd[((32 * idx) + arg1 + 36)])]
            else:
                mem[0] = cd[((32 * idx) + arg2 + 36)]
                mem[32] = 4
                require idx < arg1.length
                if ownerOf[cd[((32 * idx) + arg2 + 36)]] == address(cd[((32 * idx) + arg1 + 36)]):
                    mem[(32 * idx) + 128] = 1
                else:
                    mem[(32 * idx) + 128] = 0
        idx = idx + 1
        continue 
    mem[(32 * arg1.length) + 192 len floor32(arg1.length)] = mem[128 len floor32(arg1.length)]
    return Array(len=arg1.length, data=mem[128 len floor32(arg1.length)], mem[(32 * arg1.length) + floor32(arg1.length) + 192 len (32 * arg1.length) - floor32(arg1.length)]), 
}

function setUri(uint256 arg1, string arg2) {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    if this.address == msg.sender:
        mem[ceil32(arg2.length) + 128] = calldata.size
        mem[ceil32(arg2.length) + 160 len calldata.size] = call.data[0 len calldata.size]
        require owner == mem[calldata.size + ceil32(arg2.length) + 140 len 20]
        if arg2.length:
            uri[arg1][] = Array(len=arg2.length, data=arg2[all])
        else:
            uri[arg1] = 0
            idx = 0
            while uri[arg1].length + 31 / 32 > idx:
                uri[arg1][idx] = 0
                idx = idx + 1
                continue 
        emit URI(Array(len=arg2.length, data=arg2[all]), arg1);
    else:
        require owner == msg.sender
        if arg2.length:
            uri[arg1][] = Array(len=arg2.length, data=arg2[all])
        else:
            uri[arg1] = 0
            idx = 0
            while uri[arg1].length + 31 / 32 > idx:
                uri[arg1][idx] = 0
                idx = idx + 1
                continue 
        mem[ceil32(arg2.length) + 128] = 32
        mem[ceil32(arg2.length) + 160] = arg2.length
        mem[ceil32(arg2.length) + 192 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
        if not arg2.length % 32:
            emit URI(string rg1, uint256 rg2):
                     Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0),
                     mem[arg2.length + 160 len ceil32(arg2.length) + -arg2.length + 32],
                     Mask(8 * arg2.length, -(8 * arg2.length) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * arg2.length) - 256,
                     arg1,
        else:
            mem[floor32(arg2.length) + ceil32(arg2.length) + 192] = mem[floor32(arg2.length) + ceil32(arg2.length) + -(arg2.length % 32) + 224 len arg2.length % 32]
            emit URI(string rg1, uint256 rg2):
                     Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0),
                     mem[arg2.length + 160 len ceil32(arg2.length) + -arg2.length + 32],
                     Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256,
                     mem[(2 * ceil32(arg2.length)) + 192 len floor32(arg2.length) + -ceil32(arg2.length) + 32],
                     arg1,
}

function mintNonFungible(uint256 arg1, address[] arg2) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    if msg.sender != this.address:
        require owner == msg.sender
        require Mask(1, 255, arg1) == 0x8000000000000000000000000000000000000000000000000000000000000000
        require maxIndex[arg1] + arg2.length >= arg2.length
        mem[0] = arg1
        mem[32] = 8
        maxIndex[arg1] += arg2.length
        idx = 0
        while idx < arg2.length:
            mem[0] = arg1 or idx + maxIndex[arg1] + 1
            mem[32] = 4
            ownerOf[arg1 or idx + stor8[arg1] + 1] = address(cd[((32 * idx) + arg2 + 36)])
            if msg.sender != this.address:
                mem[mem[64]] = arg1 or idx + maxIndex[arg1] + 1
                mem[mem[64] + 32] = 1
                emit TransferSingle(arg1 or idx + maxIndex[arg1] + 1, 1, msg.sender, 0, address(cd[((32 * idx) + arg2 + 36)]));
                if ext_code.size(address(cd[((32 * idx) + arg2 + 36)])):
                    if msg.sender != this.address:
                        _195 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_195] = 0
                        mem[mem[64]] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = arg1 or idx + maxIndex[arg1] + 1
                        mem[mem[64] + 100] = 1
                        mem[mem[64] + 132] = 160
                        mem[mem[64] + 164] = 0
                        s = 0
                        while s < 0:
                            mem[s + mem[64] + 196] = mem[s + _195 + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(address(cd[((32 * idx) + arg2 + 36)]))
                        call address(cd[((32 * idx) + arg2 + 36)]).onERC1155Received(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                             gas gas_remaining wei
                            args msg.sender, msg.sender, arg1 or idx + maxIndex[arg1] + 1, 1, 160, 0
                    else:
                        _179 = mem[64]
                        mem[64] = mem[64] + ceil32(calldata.size) + 32
                        mem[_179] = calldata.size
                        mem[_179 + 32 len calldata.size] = call.data[0 len calldata.size]
                        mem[_179 + calldata.size + 32] = 0
                        _180 = mem[calldata.size + _179]
                        _187 = mem[64]
                        mem[64] = mem[64] + ceil32(calldata.size) + 32
                        mem[_187] = calldata.size
                        mem[_187 + 32 len calldata.size] = call.data[0 len calldata.size]
                        mem[_187 + calldata.size + 32] = 0
                        _188 = mem[calldata.size + _187]
                        _196 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_196] = 0
                        mem[mem[64]] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = address(_180)
                        mem[mem[64] + 36] = address(_188)
                        mem[mem[64] + 68] = arg1 or idx + maxIndex[arg1] + 1
                        mem[mem[64] + 100] = 1
                        mem[mem[64] + 132] = 160
                        mem[mem[64] + 164] = 0
                        s = 0
                        while s < 0:
                            mem[s + mem[64] + 196] = mem[s + _196 + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(address(cd[((32 * idx) + arg2 + 36)]))
                        call address(cd[((32 * idx) + arg2 + 36)]).onERC1155Received(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                             gas gas_remaining wei
                            args address(_180), address(_188), arg1 or idx + maxIndex[arg1] + 1, 1, 160, 0
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                        revert with 0, '.contract returned an unknown value from onERC1155Receive'
            else:
                _167 = mem[64]
                mem[64] = mem[64] + ceil32(calldata.size) + 32
                mem[_167] = calldata.size
                mem[_167 + 32 len calldata.size] = call.data[0 len calldata.size]
                mem[_167 + calldata.size + 32] = 0
                _168 = mem[calldata.size + _167]
                mem[mem[64]] = arg1 or idx + maxIndex[arg1] + 1
                mem[mem[64] + 32] = 1
                emit TransferSingle(arg1 or idx + maxIndex[arg1] + 1, 1, address(_168), 0, address(cd[((32 * idx) + arg2 + 36)]));
                if ext_code.size(address(cd[((32 * idx) + arg2 + 36)])):
                    if msg.sender != this.address:
                        _197 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_197] = 0
                        mem[mem[64]] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = arg1 or idx + maxIndex[arg1] + 1
                        mem[mem[64] + 100] = 1
                        mem[mem[64] + 132] = 160
                        mem[mem[64] + 164] = 0
                        s = 0
                        while s < 0:
                            mem[s + mem[64] + 196] = mem[s + _197 + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(address(cd[((32 * idx) + arg2 + 36)]))
                        call address(cd[((32 * idx) + arg2 + 36)]).onERC1155Received(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                             gas gas_remaining wei
                            args msg.sender, msg.sender, arg1 or idx + maxIndex[arg1] + 1, 1, 160, 0
                    else:
                        _181 = mem[64]
                        mem[64] = mem[64] + ceil32(calldata.size) + 32
                        mem[_181] = calldata.size
                        mem[_181 + 32 len calldata.size] = call.data[0 len calldata.size]
                        mem[_181 + calldata.size + 32] = 0
                        _182 = mem[calldata.size + _181]
                        _189 = mem[64]
                        mem[64] = mem[64] + ceil32(calldata.size) + 32
                        mem[_189] = calldata.size
                        mem[_189 + 32 len calldata.size] = call.data[0 len calldata.size]
                        mem[_189 + calldata.size + 32] = 0
                        _190 = mem[calldata.size + _189]
                        _198 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_198] = 0
                        mem[mem[64]] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = address(_182)
                        mem[mem[64] + 36] = address(_190)
                        mem[mem[64] + 68] = arg1 or idx + maxIndex[arg1] + 1
                        mem[mem[64] + 100] = 1
                        mem[mem[64] + 132] = 160
                        mem[mem[64] + 164] = 0
                        s = 0
                        while s < 0:
                            mem[s + mem[64] + 196] = mem[s + _198 + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(address(cd[((32 * idx) + arg2 + 36)]))
                        call address(cd[((32 * idx) + arg2 + 36)]).onERC1155Received(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                             gas gas_remaining wei
                            args address(_182), address(_190), arg1 or idx + maxIndex[arg1] + 1, 1, 160, 0
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                        revert with 0, '.contract returned an unknown value from onERC1155Receive'
            idx = idx + 1
            continue 
    else:
        mem[64] = ceil32(calldata.size) + 128
        mem[96] = calldata.size
        mem[128 len calldata.size] = call.data[0 len calldata.size]
        mem[calldata.size + 128] = 0
        require owner == mem[calldata.size + 108 len 20]
        require Mask(1, 255, arg1) == 0x8000000000000000000000000000000000000000000000000000000000000000
        require maxIndex[arg1] + arg2.length >= arg2.length
        mem[0] = arg1
        mem[32] = 8
        maxIndex[arg1] += arg2.length
        idx = 0
        while idx < arg2.length:
            mem[0] = arg1 or idx + maxIndex[arg1] + 1
            mem[32] = 4
            ownerOf[arg1 or idx + stor8[arg1] + 1] = address(cd[((32 * idx) + arg2 + 36)])
            if msg.sender != this.address:
                mem[mem[64]] = arg1 or idx + maxIndex[arg1] + 1
                mem[mem[64] + 32] = 1
                emit TransferSingle(arg1 or idx + maxIndex[arg1] + 1, 1, msg.sender, 0, address(cd[((32 * idx) + arg2 + 36)]));
                if ext_code.size(address(cd[((32 * idx) + arg2 + 36)])):
                    if msg.sender != this.address:
                        _199 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_199] = 0
                        mem[mem[64]] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = arg1 or idx + maxIndex[arg1] + 1
                        mem[mem[64] + 100] = 1
                        mem[mem[64] + 132] = 160
                        mem[mem[64] + 164] = 0
                        s = 0
                        while s < 0:
                            mem[s + mem[64] + 196] = mem[s + _199 + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(address(cd[((32 * idx) + arg2 + 36)]))
                        call address(cd[((32 * idx) + arg2 + 36)]).onERC1155Received(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                             gas gas_remaining wei
                            args msg.sender, msg.sender, arg1 or idx + maxIndex[arg1] + 1, 1, 160, 0
                    else:
                        _183 = mem[64]
                        mem[64] = mem[64] + ceil32(calldata.size) + 32
                        mem[_183] = calldata.size
                        mem[_183 + 32 len calldata.size] = call.data[0 len calldata.size]
                        mem[_183 + calldata.size + 32] = 0
                        _184 = mem[calldata.size + _183]
                        _191 = mem[64]
                        mem[64] = mem[64] + ceil32(calldata.size) + 32
                        mem[_191] = calldata.size
                        mem[_191 + 32 len calldata.size] = call.data[0 len calldata.size]
                        mem[_191 + calldata.size + 32] = 0
                        _192 = mem[calldata.size + _191]
                        _200 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_200] = 0
                        mem[mem[64]] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = address(_184)
                        mem[mem[64] + 36] = address(_192)
                        mem[mem[64] + 68] = arg1 or idx + maxIndex[arg1] + 1
                        mem[mem[64] + 100] = 1
                        mem[mem[64] + 132] = 160
                        mem[mem[64] + 164] = 0
                        s = 0
                        while s < 0:
                            mem[s + mem[64] + 196] = mem[s + _200 + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(address(cd[((32 * idx) + arg2 + 36)]))
                        call address(cd[((32 * idx) + arg2 + 36)]).onERC1155Received(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                             gas gas_remaining wei
                            args address(_184), address(_192), arg1 or idx + maxIndex[arg1] + 1, 1, 160, 0
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                        revert with 0, '.contract returned an unknown value from onERC1155Receive'
            else:
                _169 = mem[64]
                mem[64] = mem[64] + ceil32(calldata.size) + 32
                mem[_169] = calldata.size
                mem[_169 + 32 len calldata.size] = call.data[0 len calldata.size]
                mem[_169 + calldata.size + 32] = 0
                _170 = mem[calldata.size + _169]
                mem[mem[64]] = arg1 or idx + maxIndex[arg1] + 1
                mem[mem[64] + 32] = 1
                emit TransferSingle(arg1 or idx + maxIndex[arg1] + 1, 1, address(_170), 0, address(cd[((32 * idx) + arg2 + 36)]));
                if ext_code.size(address(cd[((32 * idx) + arg2 + 36)])):
                    if msg.sender != this.address:
                        _201 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_201] = 0
                        mem[mem[64]] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = arg1 or idx + maxIndex[arg1] + 1
                        mem[mem[64] + 100] = 1
                        mem[mem[64] + 132] = 160
                        mem[mem[64] + 164] = 0
                        s = 0
                        while s < 0:
                            mem[s + mem[64] + 196] = mem[s + _201 + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(address(cd[((32 * idx) + arg2 + 36)]))
                        call address(cd[((32 * idx) + arg2 + 36)]).onERC1155Received(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                             gas gas_remaining wei
                            args msg.sender, msg.sender, arg1 or idx + maxIndex[arg1] + 1, 1, 160, 0
                    else:
                        _185 = mem[64]
                        mem[64] = mem[64] + ceil32(calldata.size) + 32
                        mem[_185] = calldata.size
                        mem[_185 + 32 len calldata.size] = call.data[0 len calldata.size]
                        mem[_185 + calldata.size + 32] = 0
                        _186 = mem[calldata.size + _185]
                        _193 = mem[64]
                        mem[64] = mem[64] + ceil32(calldata.size) + 32
                        mem[_193] = calldata.size
                        mem[_193 + 32 len calldata.size] = call.data[0 len calldata.size]
                        mem[_193 + calldata.size + 32] = 0
                        _194 = mem[calldata.size + _193]
                        _202 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_202] = 0
                        mem[mem[64]] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = address(_186)
                        mem[mem[64] + 36] = address(_194)
                        mem[mem[64] + 68] = arg1 or idx + maxIndex[arg1] + 1
                        mem[mem[64] + 100] = 1
                        mem[mem[64] + 132] = 160
                        mem[mem[64] + 164] = 0
                        s = 0
                        while s < 0:
                            mem[s + mem[64] + 196] = mem[s + _202 + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(address(cd[((32 * idx) + arg2 + 36)]))
                        call address(cd[((32 * idx) + arg2 + 36)]).onERC1155Received(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                             gas gas_remaining wei
                            args address(_186), address(_194), arg1 or idx + maxIndex[arg1] + 1, 1, 160, 0
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                        revert with 0, '.contract returned an unknown value from onERC1155Receive'
            idx = idx + 1
            continue 
}

function mintFungible(uint256 arg1, address[] arg2, uint256[] arg3) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 96
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    if msg.sender != this.address:
        require owner == msg.sender
        require not Mask(1, 255, arg1)
        idx = 0
        while idx < arg2.length:
            require idx < arg3.length
            require stor2[arg1][address(cd[((32 * idx) + arg2 + 36)])] + cd[((32 * idx) + arg3 + 36)] >= cd[((32 * idx) + arg3 + 36)]
            mem[0] = address(cd[((32 * idx) + arg2 + 36)])
            mem[32] = sha3(arg1, 2)
            stor2[arg1][address(cd[((32 * idx) + arg2 + 36)])] += cd[((32 * idx) + arg3 + 36)]
            if msg.sender != this.address:
                mem[mem[64]] = arg1
                mem[mem[64] + 32] = cd[((32 * idx) + arg3 + 36)]
                emit TransferSingle(arg1, cd[((32 * idx) + arg3 + 36)], msg.sender, 0, address(cd[((32 * idx) + arg2 + 36)]));
                if ext_code.size(address(cd[((32 * idx) + arg2 + 36)])):
                    if msg.sender != this.address:
                        _203 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_203] = 0
                        mem[mem[64]] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = arg1
                        mem[mem[64] + 100] = cd[((32 * idx) + arg3 + 36)]
                        mem[mem[64] + 132] = 160
                        mem[mem[64] + 164] = 0
                        s = 0
                        while s < 0:
                            mem[s + mem[64] + 196] = mem[s + _203 + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(address(cd[((32 * idx) + arg2 + 36)]))
                        call address(cd[((32 * idx) + arg2 + 36)]).onERC1155Received(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                             gas gas_remaining wei
                            args msg.sender, msg.sender, arg1, cd[((32 * idx) + arg3 + 36)], 160, 0
                    else:
                        _187 = mem[64]
                        mem[64] = mem[64] + ceil32(calldata.size) + 32
                        mem[_187] = calldata.size
                        mem[_187 + 32 len calldata.size] = call.data[0 len calldata.size]
                        mem[_187 + calldata.size + 32] = 0
                        _188 = mem[calldata.size + _187]
                        _195 = mem[64]
                        mem[64] = mem[64] + ceil32(calldata.size) + 32
                        mem[_195] = calldata.size
                        mem[_195 + 32 len calldata.size] = call.data[0 len calldata.size]
                        mem[_195 + calldata.size + 32] = 0
                        _196 = mem[calldata.size + _195]
                        _204 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_204] = 0
                        mem[mem[64]] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = address(_188)
                        mem[mem[64] + 36] = address(_196)
                        mem[mem[64] + 68] = arg1
                        mem[mem[64] + 100] = cd[((32 * idx) + arg3 + 36)]
                        mem[mem[64] + 132] = 160
                        mem[mem[64] + 164] = 0
                        s = 0
                        while s < 0:
                            mem[s + mem[64] + 196] = mem[s + _204 + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(address(cd[((32 * idx) + arg2 + 36)]))
                        call address(cd[((32 * idx) + arg2 + 36)]).onERC1155Received(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                             gas gas_remaining wei
                            args address(_188), address(_196), arg1, cd[((32 * idx) + arg3 + 36)], 160, 0
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                        revert with 0, 
                                    32,
                                    57,
                                    0x2e636f6e74726163742072657475726e656420616e20756e6b6e6f776e2076616c75652066726f6d206f6e4552433131353552656365697665,
                                    cd[((32 * idx) + arg3 + 36)] % 72057594037927936
            else:
                _175 = mem[64]
                mem[64] = mem[64] + ceil32(calldata.size) + 32
                mem[_175] = calldata.size
                mem[_175 + 32 len calldata.size] = call.data[0 len calldata.size]
                mem[_175 + calldata.size + 32] = 0
                _176 = mem[calldata.size + _175]
                mem[mem[64]] = arg1
                mem[mem[64] + 32] = cd[((32 * idx) + arg3 + 36)]
                emit TransferSingle(arg1, cd[((32 * idx) + arg3 + 36)], address(_176), 0, address(cd[((32 * idx) + arg2 + 36)]));
                if ext_code.size(address(cd[((32 * idx) + arg2 + 36)])):
                    if msg.sender != this.address:
                        _205 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_205] = 0
                        mem[mem[64]] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = arg1
                        mem[mem[64] + 100] = cd[((32 * idx) + arg3 + 36)]
                        mem[mem[64] + 132] = 160
                        mem[mem[64] + 164] = 0
                        s = 0
                        while s < 0:
                            mem[s + mem[64] + 196] = mem[s + _205 + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(address(cd[((32 * idx) + arg2 + 36)]))
                        call address(cd[((32 * idx) + arg2 + 36)]).onERC1155Received(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                             gas gas_remaining wei
                            args msg.sender, msg.sender, arg1, cd[((32 * idx) + arg3 + 36)], 160, 0
                    else:
                        _189 = mem[64]
                        mem[64] = mem[64] + ceil32(calldata.size) + 32
                        mem[_189] = calldata.size
                        mem[_189 + 32 len calldata.size] = call.data[0 len calldata.size]
                        mem[_189 + calldata.size + 32] = 0
                        _190 = mem[calldata.size + _189]
                        _197 = mem[64]
                        mem[64] = mem[64] + ceil32(calldata.size) + 32
                        mem[_197] = calldata.size
                        mem[_197 + 32 len calldata.size] = call.data[0 len calldata.size]
                        mem[_197 + calldata.size + 32] = 0
                        _198 = mem[calldata.size + _197]
                        _206 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_206] = 0
                        mem[mem[64]] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = address(_190)
                        mem[mem[64] + 36] = address(_198)
                        mem[mem[64] + 68] = arg1
                        mem[mem[64] + 100] = cd[((32 * idx) + arg3 + 36)]
                        mem[mem[64] + 132] = 160
                        mem[mem[64] + 164] = 0
                        s = 0
                        while s < 0:
                            mem[s + mem[64] + 196] = mem[s + _206 + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(address(cd[((32 * idx) + arg2 + 36)]))
                        call address(cd[((32 * idx) + arg2 + 36)]).onERC1155Received(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                             gas gas_remaining wei
                            args address(_190), address(_198), arg1, cd[((32 * idx) + arg3 + 36)], 160, 0
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                        revert with 0, 
                                    32,
                                    57,
                                    0x2e636f6e74726163742072657475726e656420616e20756e6b6e6f776e2076616c75652066726f6d206f6e4552433131353552656365697665,
                                    cd[((32 * idx) + arg3 + 36)] % 72057594037927936
            idx = idx + 1
            continue 
    else:
        mem[64] = ceil32(calldata.size) + 128
        mem[96] = calldata.size
        mem[128 len calldata.size] = call.data[0 len calldata.size]
        mem[calldata.size + 128] = 0
        require owner == mem[calldata.size + 108 len 20]
        require not Mask(1, 255, arg1)
        idx = 0
        while idx < arg2.length:
            require idx < arg3.length
            require stor2[arg1][address(cd[((32 * idx) + arg2 + 36)])] + cd[((32 * idx) + arg3 + 36)] >= cd[((32 * idx) + arg3 + 36)]
            mem[0] = address(cd[((32 * idx) + arg2 + 36)])
            mem[32] = sha3(arg1, 2)
            stor2[arg1][address(cd[((32 * idx) + arg2 + 36)])] += cd[((32 * idx) + arg3 + 36)]
            if msg.sender != this.address:
                mem[mem[64]] = arg1
                mem[mem[64] + 32] = cd[((32 * idx) + arg3 + 36)]
                emit TransferSingle(arg1, cd[((32 * idx) + arg3 + 36)], msg.sender, 0, address(cd[((32 * idx) + arg2 + 36)]));
                if ext_code.size(address(cd[((32 * idx) + arg2 + 36)])):
                    if msg.sender != this.address:
                        _207 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_207] = 0
                        mem[mem[64]] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = arg1
                        mem[mem[64] + 100] = cd[((32 * idx) + arg3 + 36)]
                        mem[mem[64] + 132] = 160
                        mem[mem[64] + 164] = 0
                        s = 0
                        while s < 0:
                            mem[s + mem[64] + 196] = mem[s + _207 + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(address(cd[((32 * idx) + arg2 + 36)]))
                        call address(cd[((32 * idx) + arg2 + 36)]).onERC1155Received(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                             gas gas_remaining wei
                            args msg.sender, msg.sender, arg1, cd[((32 * idx) + arg3 + 36)], 160, 0
                    else:
                        _191 = mem[64]
                        mem[64] = mem[64] + ceil32(calldata.size) + 32
                        mem[_191] = calldata.size
                        mem[_191 + 32 len calldata.size] = call.data[0 len calldata.size]
                        mem[_191 + calldata.size + 32] = 0
                        _192 = mem[calldata.size + _191]
                        _199 = mem[64]
                        mem[64] = mem[64] + ceil32(calldata.size) + 32
                        mem[_199] = calldata.size
                        mem[_199 + 32 len calldata.size] = call.data[0 len calldata.size]
                        mem[_199 + calldata.size + 32] = 0
                        _200 = mem[calldata.size + _199]
                        _208 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_208] = 0
                        mem[mem[64]] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = address(_192)
                        mem[mem[64] + 36] = address(_200)
                        mem[mem[64] + 68] = arg1
                        mem[mem[64] + 100] = cd[((32 * idx) + arg3 + 36)]
                        mem[mem[64] + 132] = 160
                        mem[mem[64] + 164] = 0
                        s = 0
                        while s < 0:
                            mem[s + mem[64] + 196] = mem[s + _208 + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(address(cd[((32 * idx) + arg2 + 36)]))
                        call address(cd[((32 * idx) + arg2 + 36)]).onERC1155Received(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                             gas gas_remaining wei
                            args address(_192), address(_200), arg1, cd[((32 * idx) + arg3 + 36)], 160, 0
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                        revert with 0, 
                                    32,
                                    57,
                                    0x2e636f6e74726163742072657475726e656420616e20756e6b6e6f776e2076616c75652066726f6d206f6e4552433131353552656365697665,
                                    cd[((32 * idx) + arg3 + 36)] % 72057594037927936
            else:
                _177 = mem[64]
                mem[64] = mem[64] + ceil32(calldata.size) + 32
                mem[_177] = calldata.size
                mem[_177 + 32 len calldata.size] = call.data[0 len calldata.size]
                mem[_177 + calldata.size + 32] = 0
                _178 = mem[calldata.size + _177]
                mem[mem[64]] = arg1
                mem[mem[64] + 32] = cd[((32 * idx) + arg3 + 36)]
                emit TransferSingle(arg1, cd[((32 * idx) + arg3 + 36)], address(_178), 0, address(cd[((32 * idx) + arg2 + 36)]));
                if ext_code.size(address(cd[((32 * idx) + arg2 + 36)])):
                    if msg.sender != this.address:
                        _209 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_209] = 0
                        mem[mem[64]] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = arg1
                        mem[mem[64] + 100] = cd[((32 * idx) + arg3 + 36)]
                        mem[mem[64] + 132] = 160
                        mem[mem[64] + 164] = 0
                        s = 0
                        while s < 0:
                            mem[s + mem[64] + 196] = mem[s + _209 + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(address(cd[((32 * idx) + arg2 + 36)]))
                        call address(cd[((32 * idx) + arg2 + 36)]).onERC1155Received(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                             gas gas_remaining wei
                            args msg.sender, msg.sender, arg1, cd[((32 * idx) + arg3 + 36)], 160, 0
                    else:
                        _193 = mem[64]
                        mem[64] = mem[64] + ceil32(calldata.size) + 32
                        mem[_193] = calldata.size
                        mem[_193 + 32 len calldata.size] = call.data[0 len calldata.size]
                        mem[_193 + calldata.size + 32] = 0
                        _194 = mem[calldata.size + _193]
                        _201 = mem[64]
                        mem[64] = mem[64] + ceil32(calldata.size) + 32
                        mem[_201] = calldata.size
                        mem[_201 + 32 len calldata.size] = call.data[0 len calldata.size]
                        mem[_201 + calldata.size + 32] = 0
                        _202 = mem[calldata.size + _201]
                        _210 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_210] = 0
                        mem[mem[64]] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = address(_194)
                        mem[mem[64] + 36] = address(_202)
                        mem[mem[64] + 68] = arg1
                        mem[mem[64] + 100] = cd[((32 * idx) + arg3 + 36)]
                        mem[mem[64] + 132] = 160
                        mem[mem[64] + 164] = 0
                        s = 0
                        while s < 0:
                            mem[s + mem[64] + 196] = mem[s + _210 + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(address(cd[((32 * idx) + arg2 + 36)]))
                        call address(cd[((32 * idx) + arg2 + 36)]).onERC1155Received(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                             gas gas_remaining wei
                            args address(_194), address(_202), arg1, cd[((32 * idx) + arg3 + 36)], 160, 0
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                        revert with 0, 
                                    32,
                                    57,
                                    0x2e636f6e74726163742072657475726e656420616e20756e6b6e6f776e2076616c75652066726f6d206f6e4552433131353552656365697665,
                                    cd[((32 * idx) + arg3 + 36)] % 72057594037927936
            idx = idx + 1
            continue 
}

function create(string arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    if msg.sender != this.address:
        require owner == msg.sender
        stor6++
        if not arg2:
            if msg.sender != this.address:
                creators[stor6 + 1] = msg.sender
                if not arg1.length:
                    return (stor6 + 1 << 128)
                mem[128 len arg1.length] = arg1[all]
                mem[arg1.length + 128] = 0
                if this.address == msg.sender:
                    mem[ceil32(arg1.length) + 128] = calldata.size
                    mem[ceil32(arg1.length) + 160 len calldata.size] = call.data[0 len calldata.size]
                    require owner == mem[calldata.size + ceil32(arg1.length) + 140 len 20]
                    if arg1.length:
                        uri[stor6 + 1][] = Array(len=arg1.length, data=arg1[all])
                    else:
                        uri[stor6 + 1] = 0
                        idx = 0
                        while uri[stor6 + 1].length + 31 / 32 > idx:
                            uri[stor6 + 1][idx] = 0
                            idx = idx + 1
                            continue 
                    emit URI(Array(len=arg1.length, data=arg1[all]), stor6 + 1 << 128);
                    return (stor6 + 1 << 128)
                require owner == msg.sender
                if arg1.length:
                    uri[stor6 + 1][] = Array(len=arg1.length, data=arg1[all])
                else:
                    uri[stor6 + 1] = 0
                    idx = 0
                    while uri[stor6 + 1].length + 31 / 32 > idx:
                        uri[stor6 + 1][idx] = 0
                        idx = idx + 1
                        continue 
                mem[ceil32(arg1.length) + 128] = 32
                mem[ceil32(arg1.length) + 160] = arg1.length
                mem[ceil32(arg1.length) + 192 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                if not arg1.length % 32:
                    emit URI(string rg1, uint256 rg2):
                             Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0),
                             mem[arg1.length + 160 len ceil32(arg1.length) + -arg1.length + 32],
                             Mask(8 * arg1.length, -(8 * arg1.length) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * arg1.length) - 256,
                             stor6 + 1 << 128,
                else:
                    mem[floor32(arg1.length) + ceil32(arg1.length) + 192] = mem[floor32(arg1.length) + ceil32(arg1.length) + -(arg1.length % 32) + 224 len arg1.length % 32]
                    emit URI(string rg1, uint256 rg2):
                             Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0),
                             mem[arg1.length + 160 len ceil32(arg1.length) + -arg1.length + 32],
                             Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256,
                             mem[(2 * ceil32(arg1.length)) + 192 len floor32(arg1.length) + -ceil32(arg1.length) + 32],
                             stor6 + 1 << 128,
                mem[ceil32(arg1.length) + 128] = stor6 + 1 << 128
                return Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
            mem[96] = calldata.size
            mem[128 len calldata.size] = call.data[0 len calldata.size]
            creators[stor6 + 1] = mem[calldata.size + 108 len 20]
            if not arg1.length:
                return (stor6 + 1 << 128)
            mem[ceil32(calldata.size) + 160 len arg1.length] = arg1[all]
            mem[ceil32(calldata.size) + arg1.length + 160] = 0
            if this.address == msg.sender:
                mem[ceil32(calldata.size) + ceil32(arg1.length) + 160] = calldata.size
                mem[ceil32(calldata.size) + ceil32(arg1.length) + 192 len calldata.size] = call.data[0 len calldata.size]
                require owner == mem[calldata.size + ceil32(calldata.size) + ceil32(arg1.length) + 172 len 20]
                if arg1.length:
                    uri[stor6 + 1][] = Array(len=arg1.length, data=arg1[all])
                else:
                    uri[stor6 + 1] = 0
                    idx = 0
                    while uri[stor6 + 1].length + 31 / 32 > idx:
                        uri[stor6 + 1][idx] = 0
                        idx = idx + 1
                        continue 
                emit URI(Array(len=arg1.length, data=arg1[all]), stor6 + 1 << 128);
                return (stor6 + 1 << 128)
            require owner == msg.sender
            if arg1.length:
                uri[stor6 + 1][] = Array(len=arg1.length, data=arg1[all])
            else:
                uri[stor6 + 1] = 0
                idx = 0
                while uri[stor6 + 1].length + 31 / 32 > idx:
                    uri[stor6 + 1][idx] = 0
                    idx = idx + 1
                    continue 
            mem[ceil32(calldata.size) + ceil32(arg1.length) + 160] = 32
            mem[ceil32(calldata.size) + ceil32(arg1.length) + 192] = arg1.length
            mem[ceil32(calldata.size) + ceil32(arg1.length) + 224 len ceil32(arg1.length)] = arg1[all], mem[ceil32(calldata.size) + arg1.length + 160 len ceil32(arg1.length) - arg1.length]
            if not arg1.length % 32:
                emit URI(string rg1, uint256 rg2):
                         Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0),
                         mem[ceil32(calldata.size) + arg1.length + 192 len ceil32(arg1.length) + -arg1.length + 32],
                         Mask(8 * arg1.length, -(8 * arg1.length) + 256, arg1[all], mem[ceil32(calldata.size) + arg1.length + 160 len ceil32(arg1.length) - arg1.length]) << (8 * arg1.length) - 256,
                         stor6 + 1 << 128,
            else:
                mem[floor32(arg1.length) + ceil32(calldata.size) + ceil32(arg1.length) + 224] = mem[floor32(arg1.length) + ceil32(calldata.size) + ceil32(arg1.length) + -(arg1.length % 32) + 256 len arg1.length % 32]
                emit URI(string rg1, uint256 rg2):
                         Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0),
                         mem[ceil32(calldata.size) + arg1.length + 192 len ceil32(arg1.length) + -arg1.length + 32],
                         Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[ceil32(calldata.size) + arg1.length + 160 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256,
                         mem[ceil32(calldata.size) + (2 * ceil32(arg1.length)) + 224 len floor32(arg1.length) + -ceil32(arg1.length) + 32],
                         stor6 + 1 << 128,
            mem[ceil32(calldata.size) + ceil32(arg1.length) + 160] = stor6 + 1 << 128
        else:
            if msg.sender != this.address:
                creators[stor6 + 1 << 128 or 0x8000000000000000000000000000000000000000000000000000000000000000] = msg.sender
                if not arg1.length:
                    return (stor6 + 1 << 128 or 0x8000000000000000000000000000000000000000000000000000000000000000)
                mem[128 len arg1.length] = arg1[all]
                mem[arg1.length + 128] = 0
                if this.address == msg.sender:
                    mem[ceil32(arg1.length) + 128] = calldata.size
                    mem[ceil32(arg1.length) + 160 len calldata.size] = call.data[0 len calldata.size]
                    require owner == mem[calldata.size + ceil32(arg1.length) + 140 len 20]
                    if arg1.length:
                        uri[stor6 + 1 << 128 or 0x8000000000000000000000000000000000000000000000000000000000000000][] = Array(len=arg1.length, data=arg1[all])
                    else:
                        uri[stor6 + 1 << 128 or 0x8000000000000000000000000000000000000000000000000000000000000000] = 0
                        idx = 0
                        while uri[stor6 + 1 << 128 or 0x8000000000000000000000000000000000000000000000000000000000000000].length + 31 / 32 > idx:
                            uri[stor6 + 1 << 128 or 0x8000000000000000000000000000000000000000000000000000000000000000][idx] = 0
                            idx = idx + 1
                            continue 
                    emit URI(Array(len=arg1.length, data=arg1[all]), stor6 + 1 << 128 or 0x8000000000000000000000000000000000000000000000000000000000000000);
                    return (stor6 + 1 << 128 or 0x8000000000000000000000000000000000000000000000000000000000000000)
                require owner == msg.sender
                if arg1.length:
                    uri[stor6 + 1 << 128 or 0x8000000000000000000000000000000000000000000000000000000000000000][] = Array(len=arg1.length, data=arg1[all])
                else:
                    uri[stor6 + 1 << 128 or 0x8000000000000000000000000000000000000000000000000000000000000000] = 0
                    idx = 0
                    while uri[stor6 + 1 << 128 or 0x8000000000000000000000000000000000000000000000000000000000000000].length + 31 / 32 > idx:
                        uri[stor6 + 1 << 128 or 0x8000000000000000000000000000000000000000000000000000000000000000][idx] = 0
                        idx = idx + 1
                        continue 
                mem[ceil32(arg1.length) + 128] = 32
                mem[ceil32(arg1.length) + 160] = arg1.length
                mem[ceil32(arg1.length) + 192 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                if not arg1.length % 32:
                    emit URI(string rg1, uint256 rg2):
                             Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0),
                             mem[arg1.length + 160 len ceil32(arg1.length) + -arg1.length + 32],
                             Mask(8 * arg1.length, -(8 * arg1.length) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * arg1.length) - 256,
                             stor6 + 1 << 128 or 0x8000000000000000000000000000000000000000000000000000000000000000,
                else:
                    mem[floor32(arg1.length) + ceil32(arg1.length) + 192] = mem[floor32(arg1.length) + ceil32(arg1.length) + -(arg1.length % 32) + 224 len arg1.length % 32]
                    emit URI(string rg1, uint256 rg2):
                             Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0),
                             mem[arg1.length + 160 len ceil32(arg1.length) + -arg1.length + 32],
                             Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256,
                             mem[(2 * ceil32(arg1.length)) + 192 len floor32(arg1.length) + -ceil32(arg1.length) + 32],
                             stor6 + 1 << 128 or 0x8000000000000000000000000000000000000000000000000000000000000000,
                mem[ceil32(arg1.length) + 128] = stor6 + 1 << 128 or 0x8000000000000000000000000000000000000000000000000000000000000000
                return Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
            mem[96] = calldata.size
            mem[128 len calldata.size] = call.data[0 len calldata.size]
            creators[stor6 + 1 << 128 or 0x8000000000000000000000000000000000000000000000000000000000000000] = mem[calldata.size + 108 len 20]
            if not arg1.length:
                return (stor6 + 1 << 128 or 0x8000000000000000000000000000000000000000000000000000000000000000)
            mem[ceil32(calldata.size) + 160 len arg1.length] = arg1[all]
            mem[ceil32(calldata.size) + arg1.length + 160] = 0
            if this.address == msg.sender:
                mem[ceil32(calldata.size) + ceil32(arg1.length) + 160] = calldata.size
                mem[ceil32(calldata.size) + ceil32(arg1.length) + 192 len calldata.size] = call.data[0 len calldata.size]
                require owner == mem[calldata.size + ceil32(calldata.size) + ceil32(arg1.length) + 172 len 20]
                if arg1.length:
                    uri[stor6 + 1 << 128 or 0x8000000000000000000000000000000000000000000000000000000000000000][] = Array(len=arg1.length, data=arg1[all])
                else:
                    uri[stor6 + 1 << 128 or 0x8000000000000000000000000000000000000000000000000000000000000000] = 0
                    idx = 0
                    while uri[stor6 + 1 << 128 or 0x8000000000000000000000000000000000000000000000000000000000000000].length + 31 / 32 > idx:
                        uri[stor6 + 1 << 128 or 0x8000000000000000000000000000000000000000000000000000000000000000][idx] = 0
                        idx = idx + 1
                        continue 
                emit URI(Array(len=arg1.length, data=arg1[all]), stor6 + 1 << 128 or 0x8000000000000000000000000000000000000000000000000000000000000000);
                return (stor6 + 1 << 128 or 0x8000000000000000000000000000000000000000000000000000000000000000)
            require owner == msg.sender
            if arg1.length:
                uri[stor6 + 1 << 128 or 0x8000000000000000000000000000000000000000000000000000000000000000][] = Array(len=arg1.length, data=arg1[all])
            else:
                uri[stor6 + 1 << 128 or 0x8000000000000000000000000000000000000000000000000000000000000000] = 0
                idx = 0
                while uri[stor6 + 1 << 128 or 0x8000000000000000000000000000000000000000000000000000000000000000].length + 31 / 32 > idx:
                    uri[stor6 + 1 << 128 or 0x8000000000000000000000000000000000000000000000000000000000000000][idx] = 0
                    idx = idx + 1
                    continue 
            mem[ceil32(calldata.size) + ceil32(arg1.length) + 160] = 32
            mem[ceil32(calldata.size) + ceil32(arg1.length) + 192] = arg1.length
            mem[ceil32(calldata.size) + ceil32(arg1.length) + 224 len ceil32(arg1.length)] = arg1[all], mem[ceil32(calldata.size) + arg1.length + 160 len ceil32(arg1.length) - arg1.length]
            if not arg1.length % 32:
                emit URI(string rg1, uint256 rg2):
                         Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0),
                         mem[ceil32(calldata.size) + arg1.length + 192 len ceil32(arg1.length) + -arg1.length + 32],
                         Mask(8 * arg1.length, -(8 * arg1.length) + 256, arg1[all], mem[ceil32(calldata.size) + arg1.length + 160 len ceil32(arg1.length) - arg1.length]) << (8 * arg1.length) - 256,
                         stor6 + 1 << 128 or 0x8000000000000000000000000000000000000000000000000000000000000000,
            else:
                mem[floor32(arg1.length) + ceil32(calldata.size) + ceil32(arg1.length) + 224] = mem[floor32(arg1.length) + ceil32(calldata.size) + ceil32(arg1.length) + -(arg1.length % 32) + 256 len arg1.length % 32]
                emit URI(string rg1, uint256 rg2):
                         Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0),
                         mem[ceil32(calldata.size) + arg1.length + 192 len ceil32(arg1.length) + -arg1.length + 32],
                         Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[ceil32(calldata.size) + arg1.length + 160 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256,
                         mem[ceil32(calldata.size) + (2 * ceil32(arg1.length)) + 224 len floor32(arg1.length) + -ceil32(arg1.length) + 32],
                         stor6 + 1 << 128 or 0x8000000000000000000000000000000000000000000000000000000000000000,
            mem[ceil32(calldata.size) + ceil32(arg1.length) + 160] = stor6 + 1 << 128 or 0x8000000000000000000000000000000000000000000000000000000000000000
        return Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), 
               mem[ceil32(calldata.size) + arg1.length + 192 len -arg1.length + ceil32(arg1.length)]
    mem[96] = calldata.size
    mem[128 len calldata.size] = call.data[0 len calldata.size]
    require owner == mem[calldata.size + 108 len 20]
    stor6++
    if not arg2:
        if msg.sender != this.address:
            creators[stor6 + 1] = msg.sender
            if not arg1.length:
                return (stor6 + 1 << 128)
            mem[ceil32(calldata.size) + 160 len arg1.length] = arg1[all]
            mem[ceil32(calldata.size) + arg1.length + 160] = 0
            if this.address == msg.sender:
                mem[ceil32(calldata.size) + ceil32(arg1.length) + 160] = calldata.size
                mem[ceil32(calldata.size) + ceil32(arg1.length) + 192 len calldata.size] = call.data[0 len calldata.size]
                require owner == mem[calldata.size + ceil32(calldata.size) + ceil32(arg1.length) + 172 len 20]
                if arg1.length:
                    uri[stor6 + 1][] = Array(len=arg1.length, data=arg1[all])
                else:
                    uri[stor6 + 1] = 0
                    idx = 0
                    while uri[stor6 + 1].length + 31 / 32 > idx:
                        uri[stor6 + 1][idx] = 0
                        idx = idx + 1
                        continue 
                emit URI(Array(len=arg1.length, data=arg1[all]), stor6 + 1 << 128);
                return (stor6 + 1 << 128)
            require owner == msg.sender
            if arg1.length:
                uri[stor6 + 1][] = Array(len=arg1.length, data=arg1[all])
            else:
                uri[stor6 + 1] = 0
                idx = 0
                while uri[stor6 + 1].length + 31 / 32 > idx:
                    uri[stor6 + 1][idx] = 0
                    idx = idx + 1
                    continue 
            mem[ceil32(calldata.size) + ceil32(arg1.length) + 160] = 32
            mem[ceil32(calldata.size) + ceil32(arg1.length) + 192] = arg1.length
            mem[ceil32(calldata.size) + ceil32(arg1.length) + 224 len ceil32(arg1.length)] = arg1[all], mem[ceil32(calldata.size) + arg1.length + 160 len ceil32(arg1.length) - arg1.length]
            if not arg1.length % 32:
                emit URI(string rg1, uint256 rg2):
                         Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0),
                         mem[ceil32(calldata.size) + arg1.length + 192 len ceil32(arg1.length) + -arg1.length + 32],
                         Mask(8 * arg1.length, -(8 * arg1.length) + 256, arg1[all], mem[ceil32(calldata.size) + arg1.length + 160 len ceil32(arg1.length) - arg1.length]) << (8 * arg1.length) - 256,
                         stor6 + 1 << 128,
            else:
                mem[floor32(arg1.length) + ceil32(calldata.size) + ceil32(arg1.length) + 224] = mem[floor32(arg1.length) + ceil32(calldata.size) + ceil32(arg1.length) + -(arg1.length % 32) + 256 len arg1.length % 32]
                emit URI(string rg1, uint256 rg2):
                         Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0),
                         mem[ceil32(calldata.size) + arg1.length + 192 len ceil32(arg1.length) + -arg1.length + 32],
                         Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[ceil32(calldata.size) + arg1.length + 160 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256,
                         mem[ceil32(calldata.size) + (2 * ceil32(arg1.length)) + 224 len floor32(arg1.length) + -ceil32(arg1.length) + 32],
                         stor6 + 1 << 128,
            mem[ceil32(calldata.size) + ceil32(arg1.length) + 160] = stor6 + 1 << 128
            return Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), 
                   mem[ceil32(calldata.size) + arg1.length + 192 len -arg1.length + ceil32(arg1.length)]
        mem[ceil32(calldata.size) + 128] = calldata.size
        mem[ceil32(calldata.size) + 160 len calldata.size] = call.data[0 len calldata.size]
        creators[stor6 + 1] = mem[calldata.size + ceil32(calldata.size) + 140 len 20]
        if not arg1.length:
            return (stor6 + 1 << 128)
        mem[(2 * ceil32(calldata.size)) + 192 len arg1.length] = arg1[all]
        mem[(2 * ceil32(calldata.size)) + arg1.length + 192] = 0
        if this.address == msg.sender:
            mem[(2 * ceil32(calldata.size)) + ceil32(arg1.length) + 192] = calldata.size
            mem[(2 * ceil32(calldata.size)) + ceil32(arg1.length) + 224 len calldata.size] = call.data[0 len calldata.size]
            require owner == mem[calldata.size + (2 * ceil32(calldata.size)) + ceil32(arg1.length) + 204 len 20]
            if arg1.length:
                uri[stor6 + 1][] = Array(len=arg1.length, data=arg1[all])
            else:
                uri[stor6 + 1] = 0
                idx = 0
                while uri[stor6 + 1].length + 31 / 32 > idx:
                    uri[stor6 + 1][idx] = 0
                    idx = idx + 1
                    continue 
            emit URI(Array(len=arg1.length, data=arg1[all]), stor6 + 1 << 128);
            return (stor6 + 1 << 128)
        require owner == msg.sender
        if arg1.length:
            uri[stor6 + 1][] = Array(len=arg1.length, data=arg1[all])
        else:
            uri[stor6 + 1] = 0
            idx = 0
            while uri[stor6 + 1].length + 31 / 32 > idx:
                uri[stor6 + 1][idx] = 0
                idx = idx + 1
                continue 
        mem[(2 * ceil32(calldata.size)) + ceil32(arg1.length) + 192] = 32
        mem[(2 * ceil32(calldata.size)) + ceil32(arg1.length) + 224] = arg1.length
        mem[(2 * ceil32(calldata.size)) + ceil32(arg1.length) + 256 len ceil32(arg1.length)] = arg1[all], mem[(2 * ceil32(calldata.size)) + arg1.length + 192 len ceil32(arg1.length) - arg1.length]
        if not arg1.length % 32:
            emit URI(string rg1, uint256 rg2):
                     Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0),
                     mem[(2 * ceil32(calldata.size)) + arg1.length + 224 len ceil32(arg1.length) + -arg1.length + 32],
                     Mask(8 * arg1.length, -(8 * arg1.length) + 256, arg1[all], mem[(2 * ceil32(calldata.size)) + arg1.length + 192 len ceil32(arg1.length) - arg1.length]) << (8 * arg1.length) - 256,
                     stor6 + 1 << 128,
        else:
            mem[floor32(arg1.length) + (2 * ceil32(calldata.size)) + ceil32(arg1.length) + 256] = mem[floor32(arg1.length) + (2 * ceil32(calldata.size)) + ceil32(arg1.length) + -(arg1.length % 32) + 288 len arg1.length % 32]
            emit URI(string rg1, uint256 rg2):
                     Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0),
                     mem[(2 * ceil32(calldata.size)) + arg1.length + 224 len ceil32(arg1.length) + -arg1.length + 32],
                     Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[(2 * ceil32(calldata.size)) + arg1.length + 192 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256,
                     mem[(2 * ceil32(calldata.size)) + (2 * ceil32(arg1.length)) + 256 len floor32(arg1.length) + -ceil32(arg1.length) + 32],
                     stor6 + 1 << 128,
        mem[(2 * ceil32(calldata.size)) + ceil32(arg1.length) + 192] = stor6 + 1 << 128
    else:
        if msg.sender != this.address:
            creators[stor6 + 1 << 128 or 0x8000000000000000000000000000000000000000000000000000000000000000] = msg.sender
            if not arg1.length:
                return (stor6 + 1 << 128 or 0x8000000000000000000000000000000000000000000000000000000000000000)
            mem[ceil32(calldata.size) + 160 len arg1.length] = arg1[all]
            mem[ceil32(calldata.size) + arg1.length + 160] = 0
            if this.address == msg.sender:
                mem[ceil32(calldata.size) + ceil32(arg1.length) + 160] = calldata.size
                mem[ceil32(calldata.size) + ceil32(arg1.length) + 192 len calldata.size] = call.data[0 len calldata.size]
                require owner == mem[calldata.size + ceil32(calldata.size) + ceil32(arg1.length) + 172 len 20]
                if arg1.length:
                    uri[stor6 + 1 << 128 or 0x8000000000000000000000000000000000000000000000000000000000000000][] = Array(len=arg1.length, data=arg1[all])
                else:
                    uri[stor6 + 1 << 128 or 0x8000000000000000000000000000000000000000000000000000000000000000] = 0
                    idx = 0
                    while uri[stor6 + 1 << 128 or 0x8000000000000000000000000000000000000000000000000000000000000000].length + 31 / 32 > idx:
                        uri[stor6 + 1 << 128 or 0x8000000000000000000000000000000000000000000000000000000000000000][idx] = 0
                        idx = idx + 1
                        continue 
                emit URI(Array(len=arg1.length, data=arg1[all]), stor6 + 1 << 128 or 0x8000000000000000000000000000000000000000000000000000000000000000);
                return (stor6 + 1 << 128 or 0x8000000000000000000000000000000000000000000000000000000000000000)
            require owner == msg.sender
            if arg1.length:
                uri[stor6 + 1 << 128 or 0x8000000000000000000000000000000000000000000000000000000000000000][] = Array(len=arg1.length, data=arg1[all])
            else:
                uri[stor6 + 1 << 128 or 0x8000000000000000000000000000000000000000000000000000000000000000] = 0
                idx = 0
                while uri[stor6 + 1 << 128 or 0x8000000000000000000000000000000000000000000000000000000000000000].length + 31 / 32 > idx:
                    uri[stor6 + 1 << 128 or 0x8000000000000000000000000000000000000000000000000000000000000000][idx] = 0
                    idx = idx + 1
                    continue 
            mem[ceil32(calldata.size) + ceil32(arg1.length) + 160] = 32
            mem[ceil32(calldata.size) + ceil32(arg1.length) + 192] = arg1.length
            mem[ceil32(calldata.size) + ceil32(arg1.length) + 224 len ceil32(arg1.length)] = arg1[all], mem[ceil32(calldata.size) + arg1.length + 160 len ceil32(arg1.length) - arg1.length]
            if not arg1.length % 32:
                emit URI(string rg1, uint256 rg2):
                         Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0),
                         mem[ceil32(calldata.size) + arg1.length + 192 len ceil32(arg1.length) + -arg1.length + 32],
                         Mask(8 * arg1.length, -(8 * arg1.length) + 256, arg1[all], mem[ceil32(calldata.size) + arg1.length + 160 len ceil32(arg1.length) - arg1.length]) << (8 * arg1.length) - 256,
                         stor6 + 1 << 128 or 0x8000000000000000000000000000000000000000000000000000000000000000,
            else:
                mem[floor32(arg1.length) + ceil32(calldata.size) + ceil32(arg1.length) + 224] = mem[floor32(arg1.length) + ceil32(calldata.size) + ceil32(arg1.length) + -(arg1.length % 32) + 256 len arg1.length % 32]
                emit URI(string rg1, uint256 rg2):
                         Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0),
                         mem[ceil32(calldata.size) + arg1.length + 192 len ceil32(arg1.length) + -arg1.length + 32],
                         Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[ceil32(calldata.size) + arg1.length + 160 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256,
                         mem[ceil32(calldata.size) + (2 * ceil32(arg1.length)) + 224 len floor32(arg1.length) + -ceil32(arg1.length) + 32],
                         stor6 + 1 << 128 or 0x8000000000000000000000000000000000000000000000000000000000000000,
            mem[ceil32(calldata.size) + ceil32(arg1.length) + 160] = stor6 + 1 << 128 or 0x8000000000000000000000000000000000000000000000000000000000000000
            return Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), 
                   mem[ceil32(calldata.size) + arg1.length + 192 len -arg1.length + ceil32(arg1.length)]
        mem[ceil32(calldata.size) + 128] = calldata.size
        mem[ceil32(calldata.size) + 160 len calldata.size] = call.data[0 len calldata.size]
        creators[stor6 + 1 << 128 or 0x8000000000000000000000000000000000000000000000000000000000000000] = mem[calldata.size + ceil32(calldata.size) + 140 len 20]
        if not arg1.length:
            return (stor6 + 1 << 128 or 0x8000000000000000000000000000000000000000000000000000000000000000)
        mem[(2 * ceil32(calldata.size)) + 192 len arg1.length] = arg1[all]
        mem[(2 * ceil32(calldata.size)) + arg1.length + 192] = 0
        if this.address == msg.sender:
            mem[(2 * ceil32(calldata.size)) + ceil32(arg1.length) + 192] = calldata.size
            mem[(2 * ceil32(calldata.size)) + ceil32(arg1.length) + 224 len calldata.size] = call.data[0 len calldata.size]
            require owner == mem[calldata.size + (2 * ceil32(calldata.size)) + ceil32(arg1.length) + 204 len 20]
            if arg1.length:
                uri[stor6 + 1 << 128 or 0x8000000000000000000000000000000000000000000000000000000000000000][] = Array(len=arg1.length, data=arg1[all])
            else:
                uri[stor6 + 1 << 128 or 0x8000000000000000000000000000000000000000000000000000000000000000] = 0
                idx = 0
                while uri[stor6 + 1 << 128 or 0x8000000000000000000000000000000000000000000000000000000000000000].length + 31 / 32 > idx:
                    uri[stor6 + 1 << 128 or 0x8000000000000000000000000000000000000000000000000000000000000000][idx] = 0
                    idx = idx + 1
                    continue 
            emit URI(Array(len=arg1.length, data=arg1[all]), stor6 + 1 << 128 or 0x8000000000000000000000000000000000000000000000000000000000000000);
            return (stor6 + 1 << 128 or 0x8000000000000000000000000000000000000000000000000000000000000000)
        require owner == msg.sender
        if arg1.length:
            uri[stor6 + 1 << 128 or 0x8000000000000000000000000000000000000000000000000000000000000000][] = Array(len=arg1.length, data=arg1[all])
        else:
            uri[stor6 + 1 << 128 or 0x8000000000000000000000000000000000000000000000000000000000000000] = 0
            idx = 0
            while uri[stor6 + 1 << 128 or 0x8000000000000000000000000000000000000000000000000000000000000000].length + 31 / 32 > idx:
                uri[stor6 + 1 << 128 or 0x8000000000000000000000000000000000000000000000000000000000000000][idx] = 0
                idx = idx + 1
                continue 
        mem[(2 * ceil32(calldata.size)) + ceil32(arg1.length) + 192] = 32
        mem[(2 * ceil32(calldata.size)) + ceil32(arg1.length) + 224] = arg1.length
        mem[(2 * ceil32(calldata.size)) + ceil32(arg1.length) + 256 len ceil32(arg1.length)] = arg1[all], mem[(2 * ceil32(calldata.size)) + arg1.length + 192 len ceil32(arg1.length) - arg1.length]
        if not arg1.length % 32:
            emit URI(string rg1, uint256 rg2):
                     Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0),
                     mem[(2 * ceil32(calldata.size)) + arg1.length + 224 len ceil32(arg1.length) + -arg1.length + 32],
                     Mask(8 * arg1.length, -(8 * arg1.length) + 256, arg1[all], mem[(2 * ceil32(calldata.size)) + arg1.length + 192 len ceil32(arg1.length) - arg1.length]) << (8 * arg1.length) - 256,
                     stor6 + 1 << 128 or 0x8000000000000000000000000000000000000000000000000000000000000000,
        else:
            mem[floor32(arg1.length) + (2 * ceil32(calldata.size)) + ceil32(arg1.length) + 256] = mem[floor32(arg1.length) + (2 * ceil32(calldata.size)) + ceil32(arg1.length) + -(arg1.length % 32) + 288 len arg1.length % 32]
            emit URI(string rg1, uint256 rg2):
                     Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0),
                     mem[(2 * ceil32(calldata.size)) + arg1.length + 224 len ceil32(arg1.length) + -arg1.length + 32],
                     Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[(2 * ceil32(calldata.size)) + arg1.length + 192 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256,
                     mem[(2 * ceil32(calldata.size)) + (2 * ceil32(arg1.length)) + 256 len floor32(arg1.length) + -ceil32(arg1.length) + 32],
                     stor6 + 1 << 128 or 0x8000000000000000000000000000000000000000000000000000000000000000,
        mem[(2 * ceil32(calldata.size)) + ceil32(arg1.length) + 192] = stor6 + 1 << 128 or 0x8000000000000000000000000000000000000000000000000000000000000000
    return Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), 
           mem[(2 * ceil32(calldata.size)) + arg1.length + 224 len -arg1.length + ceil32(arg1.length)]
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) {
    require calldata.size - 4 >= 160
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + arg5.length + 36 <= calldata.size
    if not arg2:
        revert with 0, 'cannot send to zero address'
    if msg.sender != this.address:
        if arg1 == msg.sender:
            if arg4 <= 0:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            42,
                            0x685472616e7366657220616d6f756e74206e6565647320746f20626520686967686572207468616e2030,
                            mem[206 len 22]
            if Mask(1, 255, arg3) == 0x8000000000000000000000000000000000000000000000000000000000000000:
                if arg4 != 1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                47,
                                0x295472616e7366657220616d6f756e74206e6565647320746f206265203120666f72206e6f6e2066756e6769626c65,
                                mem[211 len 17]
                require ownerOf[arg3] == arg1
                ownerOf[arg3] = arg2
            else:
                require arg4 <= stor2[arg3][address(arg1)]
                stor2[arg3][address(arg1)] -= arg4
                require arg4 + stor2[arg3][arg2] >= stor2[arg3][arg2]
                stor2[arg3][address(arg2)] = arg4 + stor2[arg3][arg2]
            if msg.sender != this.address:
                mem[128] = arg4
                emit TransferSingle(arg3, arg4, msg.sender, arg1, arg2);
                if ext_code.size(arg2):
                    if msg.sender != this.address:
                        require ext_code.size(arg2)
                        call arg2 with:
                             gas gas_remaining wei
                            args msg.sender, address(arg1), arg3, arg4, Array(len=arg5.length, data=arg5[all])
                    else:
                        mem[96] = calldata.size
                        mem[128 len calldata.size] = call.data[0 len calldata.size]
                        require ext_code.size(arg2)
                        call arg2 with:
                             gas gas_remaining wei
                            args mem[calldata.size + 108 len 20], address(arg1), arg3, arg4, Array(len=arg5.length, data=arg5[all])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                        revert with 0, 
                                    32,
                                    57,
                                    0x2e636f6e74726163742072657475726e656420616e20756e6b6e6f776e2076616c75652066726f6d206f6e4552433131353552656365697665,
                                    arg4 % 72057594037927936
            else:
                mem[96] = calldata.size
                mem[128 len calldata.size] = call.data[0 len calldata.size]
                mem[ceil32(calldata.size) + 160] = arg4
                emit TransferSingle(arg3, arg4, mem[calldata.size + 108 len 20], arg1, arg2);
                if ext_code.size(arg2):
                    if msg.sender != this.address:
                        require ext_code.size(arg2)
                        call arg2 with:
                             gas gas_remaining wei
                            args msg.sender, address(arg1), arg3, arg4, Array(len=arg5.length, data=arg5[all])
                    else:
                        mem[ceil32(calldata.size) + 128] = calldata.size
                        mem[ceil32(calldata.size) + 160 len calldata.size] = call.data[0 len calldata.size]
                        mem[(2 * ceil32(calldata.size)) + 192 len arg5.length] = arg5[all]
                        mem[(2 * ceil32(calldata.size)) + arg5.length + 192] = 0
                        mem[(2 * ceil32(calldata.size)) + ceil32(arg5.length) + 192] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(calldata.size)) + ceil32(arg5.length) + 196] = mem[calldata.size + ceil32(calldata.size) + 140 len 20]
                        mem[(2 * ceil32(calldata.size)) + ceil32(arg5.length) + 388 len ceil32(arg5.length)] = arg5[all], mem[(2 * ceil32(calldata.size)) + arg5.length + 192 len ceil32(arg5.length) - arg5.length]
                        require ext_code.size(arg2)
                        call arg2 with:
                             gas gas_remaining wei
                            args mem[calldata.size + ceil32(calldata.size) + 140 len 20], address(arg1), arg3, arg4, Array(len=arg5.length, data=arg5[all])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                        revert with 0, 
                                    32,
                                    57,
                                    0x2e636f6e74726163742072657475726e656420616e20756e6b6e6f776e2076616c75652066726f6d206f6e4552433131353552656365697665,
                                    arg4 % 72057594037927936
        else:
            if msg.sender != this.address:
                if bool(stor3[address(arg1)][address(msg.sender)]) != 1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                47,
                                0x734e656564206f70657261746f7220617070726f76616c20666f7220337264207061727479207472616e7366657273,
                                mem[211 len 17]
                if arg4 <= 0:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                42,
                                0x685472616e7366657220616d6f756e74206e6565647320746f20626520686967686572207468616e2030,
                                mem[206 len 22]
                if Mask(1, 255, arg3) == 0x8000000000000000000000000000000000000000000000000000000000000000:
                    if arg4 != 1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    47,
                                    0x295472616e7366657220616d6f756e74206e6565647320746f206265203120666f72206e6f6e2066756e6769626c65,
                                    mem[211 len 17]
                    require ownerOf[arg3] == arg1
                    ownerOf[arg3] = arg2
                else:
                    require arg4 <= stor2[arg3][address(arg1)]
                    stor2[arg3][address(arg1)] -= arg4
                    require arg4 + stor2[arg3][arg2] >= stor2[arg3][arg2]
                    stor2[arg3][address(arg2)] = arg4 + stor2[arg3][arg2]
                if msg.sender != this.address:
                    mem[128] = arg4
                    emit TransferSingle(arg3, arg4, msg.sender, arg1, arg2);
                    if ext_code.size(arg2):
                        if msg.sender != this.address:
                            require ext_code.size(arg2)
                            call arg2 with:
                                 gas gas_remaining wei
                                args msg.sender, address(arg1), arg3, arg4, Array(len=arg5.length, data=arg5[all])
                        else:
                            mem[96] = calldata.size
                            mem[128 len calldata.size] = call.data[0 len calldata.size]
                            require ext_code.size(arg2)
                            call arg2 with:
                                 gas gas_remaining wei
                                args mem[calldata.size + 108 len 20], address(arg1), arg3, arg4, Array(len=arg5.length, data=arg5[all])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                            revert with 0, 
                                        32,
                                        57,
                                        0x2e636f6e74726163742072657475726e656420616e20756e6b6e6f776e2076616c75652066726f6d206f6e4552433131353552656365697665,
                                        arg4 % 72057594037927936
                else:
                    mem[96] = calldata.size
                    mem[128 len calldata.size] = call.data[0 len calldata.size]
                    mem[ceil32(calldata.size) + 160] = arg4
                    emit TransferSingle(arg3, arg4, mem[calldata.size + 108 len 20], arg1, arg2);
                    if ext_code.size(arg2):
                        if msg.sender != this.address:
                            require ext_code.size(arg2)
                            call arg2 with:
                                 gas gas_remaining wei
                                args msg.sender, address(arg1), arg3, arg4, Array(len=arg5.length, data=arg5[all])
                        else:
                            mem[ceil32(calldata.size) + 128] = calldata.size
                            mem[ceil32(calldata.size) + 160 len calldata.size] = call.data[0 len calldata.size]
                            mem[(2 * ceil32(calldata.size)) + 192 len arg5.length] = arg5[all]
                            mem[(2 * ceil32(calldata.size)) + arg5.length + 192] = 0
                            mem[(2 * ceil32(calldata.size)) + ceil32(arg5.length) + 192] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
                            mem[(2 * ceil32(calldata.size)) + ceil32(arg5.length) + 196] = mem[calldata.size + ceil32(calldata.size) + 140 len 20]
                            mem[(2 * ceil32(calldata.size)) + ceil32(arg5.length) + 388 len ceil32(arg5.length)] = arg5[all], mem[(2 * ceil32(calldata.size)) + arg5.length + 192 len ceil32(arg5.length) - arg5.length]
                            require ext_code.size(arg2)
                            call arg2 with:
                                 gas gas_remaining wei
                                args mem[calldata.size + ceil32(calldata.size) + 140 len 20], address(arg1), arg3, arg4, Array(len=arg5.length, data=arg5[all])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                            revert with 0, 
                                        32,
                                        57,
                                        0x2e636f6e74726163742072657475726e656420616e20756e6b6e6f776e2076616c75652066726f6d206f6e4552433131353552656365697665,
                                        arg4 % 72057594037927936
            else:
                mem[96] = calldata.size
                mem[128 len calldata.size] = call.data[0 len calldata.size]
                if bool(stor3[address(arg1)][mem[calldata.size + 108 len 20]]) != 1:
                    revert with 0, 
                                32,
                                47,
                                0x734e656564206f70657261746f7220617070726f76616c20666f7220337264207061727479207472616e7366657273,
                                mem[ceil32(calldata.size) + 243 len 17]
                if arg4 <= 0:
                    revert with 0, 
                                32,
                                42,
                                0x685472616e7366657220616d6f756e74206e6565647320746f20626520686967686572207468616e2030,
                                mem[ceil32(calldata.size) + 238 len 22]
                if Mask(1, 255, arg3) == 0x8000000000000000000000000000000000000000000000000000000000000000:
                    if arg4 != 1:
                        revert with 0, 
                                    32,
                                    47,
                                    0x295472616e7366657220616d6f756e74206e6565647320746f206265203120666f72206e6f6e2066756e6769626c65,
                                    mem[ceil32(calldata.size) + 243 len 17]
                    require ownerOf[arg3] == arg1
                    ownerOf[arg3] = arg2
                else:
                    require arg4 <= stor2[arg3][address(arg1)]
                    stor2[arg3][address(arg1)] -= arg4
                    require arg4 + stor2[arg3][arg2] >= stor2[arg3][arg2]
                    stor2[arg3][address(arg2)] = arg4 + stor2[arg3][arg2]
                if msg.sender != this.address:
                    mem[ceil32(calldata.size) + 160] = arg4
                    emit TransferSingle(arg3, arg4, msg.sender, arg1, arg2);
                    if ext_code.size(arg2):
                        if msg.sender != this.address:
                            require ext_code.size(arg2)
                            call arg2 with:
                                 gas gas_remaining wei
                                args msg.sender, address(arg1), arg3, arg4, Array(len=arg5.length, data=arg5[all])
                        else:
                            mem[ceil32(calldata.size) + 128] = calldata.size
                            mem[ceil32(calldata.size) + 160 len calldata.size] = call.data[0 len calldata.size]
                            mem[(2 * ceil32(calldata.size)) + 192 len arg5.length] = arg5[all]
                            mem[(2 * ceil32(calldata.size)) + arg5.length + 192] = 0
                            mem[(2 * ceil32(calldata.size)) + ceil32(arg5.length) + 192] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
                            mem[(2 * ceil32(calldata.size)) + ceil32(arg5.length) + 196] = mem[calldata.size + ceil32(calldata.size) + 140 len 20]
                            mem[(2 * ceil32(calldata.size)) + ceil32(arg5.length) + 388 len ceil32(arg5.length)] = arg5[all], mem[(2 * ceil32(calldata.size)) + arg5.length + 192 len ceil32(arg5.length) - arg5.length]
                            require ext_code.size(arg2)
                            call arg2 with:
                                 gas gas_remaining wei
                                args mem[calldata.size + ceil32(calldata.size) + 140 len 20], address(arg1), arg3, arg4, Array(len=arg5.length, data=arg5[all])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                            revert with 0, 
                                        32,
                                        57,
                                        0x2e636f6e74726163742072657475726e656420616e20756e6b6e6f776e2076616c75652066726f6d206f6e4552433131353552656365697665,
                                        arg4 % 72057594037927936
                else:
                    mem[ceil32(calldata.size) + 128] = calldata.size
                    mem[ceil32(calldata.size) + 160 len calldata.size] = call.data[0 len calldata.size]
                    mem[(2 * ceil32(calldata.size)) + 192] = arg4
                    emit TransferSingle(arg3, arg4, mem[calldata.size + ceil32(calldata.size) + 140 len 20], arg1, arg2);
                    if ext_code.size(arg2):
                        if msg.sender != this.address:
                            require ext_code.size(arg2)
                            call arg2 with:
                                 gas gas_remaining wei
                                args msg.sender, address(arg1), arg3, arg4, Array(len=arg5.length, data=arg5[all])
                        else:
                            mem[(2 * ceil32(calldata.size)) + 160] = calldata.size
                            mem[(2 * ceil32(calldata.size)) + 192 len calldata.size] = call.data[0 len calldata.size]
                            mem[(4 * ceil32(calldata.size)) + 224 len arg5.length] = arg5[all]
                            mem[(4 * ceil32(calldata.size)) + arg5.length + 224] = 0
                            mem[(4 * ceil32(calldata.size)) + ceil32(arg5.length) + 224] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(calldata.size)) + ceil32(arg5.length) + 228] = mem[calldata.size + (2 * ceil32(calldata.size)) + 172 len 20]
                            mem[(4 * ceil32(calldata.size)) + ceil32(arg5.length) + 420 len ceil32(arg5.length)] = arg5[all], mem[(4 * ceil32(calldata.size)) + arg5.length + 224 len ceil32(arg5.length) - arg5.length]
                            require ext_code.size(arg2)
                            call arg2 with:
                                 gas gas_remaining wei
                                args mem[calldata.size + (2 * ceil32(calldata.size)) + 172 len 20], address(arg1), arg3, arg4, Array(len=arg5.length, data=arg5[all])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                            revert with 0, 
                                        32,
                                        57,
                                        0x2e636f6e74726163742072657475726e656420616e20756e6b6e6f776e2076616c75652066726f6d206f6e4552433131353552656365697665,
                                        arg4 % 72057594037927936
    else:
        mem[96] = calldata.size
        mem[128 len calldata.size] = call.data[0 len calldata.size]
        if arg1 == mem[calldata.size + 108 len 20]:
            if arg4 <= 0:
                revert with 0, 
                            32,
                            42,
                            0x685472616e7366657220616d6f756e74206e6565647320746f20626520686967686572207468616e2030,
                            mem[ceil32(calldata.size) + 238 len 22]
            if Mask(1, 255, arg3) == 0x8000000000000000000000000000000000000000000000000000000000000000:
                if arg4 != 1:
                    revert with 0, 
                                32,
                                47,
                                0x295472616e7366657220616d6f756e74206e6565647320746f206265203120666f72206e6f6e2066756e6769626c65,
                                mem[ceil32(calldata.size) + 243 len 17]
                require ownerOf[arg3] == arg1
                ownerOf[arg3] = arg2
            else:
                require arg4 <= stor2[arg3][address(arg1)]
                stor2[arg3][address(arg1)] -= arg4
                require arg4 + stor2[arg3][arg2] >= stor2[arg3][arg2]
                stor2[arg3][address(arg2)] = arg4 + stor2[arg3][arg2]
            if msg.sender != this.address:
                mem[ceil32(calldata.size) + 160] = arg4
                emit TransferSingle(arg3, arg4, msg.sender, arg1, arg2);
                if ext_code.size(arg2):
                    if msg.sender != this.address:
                        require ext_code.size(arg2)
                        call arg2 with:
                             gas gas_remaining wei
                            args msg.sender, address(arg1), arg3, arg4, Array(len=arg5.length, data=arg5[all])
                    else:
                        mem[ceil32(calldata.size) + 128] = calldata.size
                        mem[ceil32(calldata.size) + 160 len calldata.size] = call.data[0 len calldata.size]
                        mem[(2 * ceil32(calldata.size)) + 192 len arg5.length] = arg5[all]
                        mem[(2 * ceil32(calldata.size)) + arg5.length + 192] = 0
                        mem[(2 * ceil32(calldata.size)) + ceil32(arg5.length) + 192] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(calldata.size)) + ceil32(arg5.length) + 196] = mem[calldata.size + ceil32(calldata.size) + 140 len 20]
                        mem[(2 * ceil32(calldata.size)) + ceil32(arg5.length) + 388 len ceil32(arg5.length)] = arg5[all], mem[(2 * ceil32(calldata.size)) + arg5.length + 192 len ceil32(arg5.length) - arg5.length]
                        require ext_code.size(arg2)
                        call arg2 with:
                             gas gas_remaining wei
                            args mem[calldata.size + ceil32(calldata.size) + 140 len 20], address(arg1), arg3, arg4, Array(len=arg5.length, data=arg5[all])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                        revert with 0, 
                                    32,
                                    57,
                                    0x2e636f6e74726163742072657475726e656420616e20756e6b6e6f776e2076616c75652066726f6d206f6e4552433131353552656365697665,
                                    arg4 % 72057594037927936
            else:
                mem[ceil32(calldata.size) + 128] = calldata.size
                mem[ceil32(calldata.size) + 160 len calldata.size] = call.data[0 len calldata.size]
                mem[(2 * ceil32(calldata.size)) + 192] = arg4
                emit TransferSingle(arg3, arg4, mem[calldata.size + ceil32(calldata.size) + 140 len 20], arg1, arg2);
                if ext_code.size(arg2):
                    if msg.sender != this.address:
                        require ext_code.size(arg2)
                        call arg2 with:
                             gas gas_remaining wei
                            args msg.sender, address(arg1), arg3, arg4, Array(len=arg5.length, data=arg5[all])
                    else:
                        mem[(2 * ceil32(calldata.size)) + 160] = calldata.size
                        mem[(2 * ceil32(calldata.size)) + 192 len calldata.size] = call.data[0 len calldata.size]
                        mem[(4 * ceil32(calldata.size)) + 224 len arg5.length] = arg5[all]
                        mem[(4 * ceil32(calldata.size)) + arg5.length + 224] = 0
                        mem[(4 * ceil32(calldata.size)) + ceil32(arg5.length) + 224] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
                        mem[(4 * ceil32(calldata.size)) + ceil32(arg5.length) + 228] = mem[calldata.size + (2 * ceil32(calldata.size)) + 172 len 20]
                        mem[(4 * ceil32(calldata.size)) + ceil32(arg5.length) + 420 len ceil32(arg5.length)] = arg5[all], mem[(4 * ceil32(calldata.size)) + arg5.length + 224 len ceil32(arg5.length) - arg5.length]
                        require ext_code.size(arg2)
                        call arg2 with:
                             gas gas_remaining wei
                            args mem[calldata.size + (2 * ceil32(calldata.size)) + 172 len 20], address(arg1), arg3, arg4, Array(len=arg5.length, data=arg5[all])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                        revert with 0, 
                                    32,
                                    57,
                                    0x2e636f6e74726163742072657475726e656420616e20756e6b6e6f776e2076616c75652066726f6d206f6e4552433131353552656365697665,
                                    arg4 % 72057594037927936
        else:
            if msg.sender != this.address:
                if bool(stor3[address(arg1)][address(msg.sender)]) != 1:
                    revert with 0, 
                                32,
                                47,
                                0x734e656564206f70657261746f7220617070726f76616c20666f7220337264207061727479207472616e7366657273,
                                mem[ceil32(calldata.size) + 243 len 17]
                if arg4 <= 0:
                    revert with 0, 
                                32,
                                42,
                                0x685472616e7366657220616d6f756e74206e6565647320746f20626520686967686572207468616e2030,
                                mem[ceil32(calldata.size) + 238 len 22]
                if Mask(1, 255, arg3) == 0x8000000000000000000000000000000000000000000000000000000000000000:
                    if arg4 != 1:
                        revert with 0, 
                                    32,
                                    47,
                                    0x295472616e7366657220616d6f756e74206e6565647320746f206265203120666f72206e6f6e2066756e6769626c65,
                                    mem[ceil32(calldata.size) + 243 len 17]
                    require ownerOf[arg3] == arg1
                    ownerOf[arg3] = arg2
                else:
                    require arg4 <= stor2[arg3][address(arg1)]
                    stor2[arg3][address(arg1)] -= arg4
                    require arg4 + stor2[arg3][arg2] >= stor2[arg3][arg2]
                    stor2[arg3][address(arg2)] = arg4 + stor2[arg3][arg2]
                if msg.sender != this.address:
                    mem[ceil32(calldata.size) + 160] = arg4
                    emit TransferSingle(arg3, arg4, msg.sender, arg1, arg2);
                    if ext_code.size(arg2):
                        if msg.sender != this.address:
                            require ext_code.size(arg2)
                            call arg2 with:
                                 gas gas_remaining wei
                                args msg.sender, address(arg1), arg3, arg4, Array(len=arg5.length, data=arg5[all])
                        else:
                            mem[ceil32(calldata.size) + 128] = calldata.size
                            mem[ceil32(calldata.size) + 160 len calldata.size] = call.data[0 len calldata.size]
                            mem[(2 * ceil32(calldata.size)) + 192 len arg5.length] = arg5[all]
                            mem[(2 * ceil32(calldata.size)) + arg5.length + 192] = 0
                            mem[(2 * ceil32(calldata.size)) + ceil32(arg5.length) + 192] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
                            mem[(2 * ceil32(calldata.size)) + ceil32(arg5.length) + 196] = mem[calldata.size + ceil32(calldata.size) + 140 len 20]
                            mem[(2 * ceil32(calldata.size)) + ceil32(arg5.length) + 388 len ceil32(arg5.length)] = arg5[all], mem[(2 * ceil32(calldata.size)) + arg5.length + 192 len ceil32(arg5.length) - arg5.length]
                            require ext_code.size(arg2)
                            call arg2 with:
                                 gas gas_remaining wei
                                args mem[calldata.size + ceil32(calldata.size) + 140 len 20], address(arg1), arg3, arg4, Array(len=arg5.length, data=arg5[all])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                            revert with 0, 
                                        32,
                                        57,
                                        0x2e636f6e74726163742072657475726e656420616e20756e6b6e6f776e2076616c75652066726f6d206f6e4552433131353552656365697665,
                                        arg4 % 72057594037927936
                else:
                    mem[ceil32(calldata.size) + 128] = calldata.size
                    mem[ceil32(calldata.size) + 160 len calldata.size] = call.data[0 len calldata.size]
                    mem[(2 * ceil32(calldata.size)) + 192] = arg4
                    emit TransferSingle(arg3, arg4, mem[calldata.size + ceil32(calldata.size) + 140 len 20], arg1, arg2);
                    if ext_code.size(arg2):
                        if msg.sender != this.address:
                            require ext_code.size(arg2)
                            call arg2 with:
                                 gas gas_remaining wei
                                args msg.sender, address(arg1), arg3, arg4, Array(len=arg5.length, data=arg5[all])
                        else:
                            mem[(2 * ceil32(calldata.size)) + 160] = calldata.size
                            mem[(2 * ceil32(calldata.size)) + 192 len calldata.size] = call.data[0 len calldata.size]
                            mem[(4 * ceil32(calldata.size)) + 224 len arg5.length] = arg5[all]
                            mem[(4 * ceil32(calldata.size)) + arg5.length + 224] = 0
                            mem[(4 * ceil32(calldata.size)) + ceil32(arg5.length) + 224] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(calldata.size)) + ceil32(arg5.length) + 228] = mem[calldata.size + (2 * ceil32(calldata.size)) + 172 len 20]
                            mem[(4 * ceil32(calldata.size)) + ceil32(arg5.length) + 420 len ceil32(arg5.length)] = arg5[all], mem[(4 * ceil32(calldata.size)) + arg5.length + 224 len ceil32(arg5.length) - arg5.length]
                            require ext_code.size(arg2)
                            call arg2 with:
                                 gas gas_remaining wei
                                args mem[calldata.size + (2 * ceil32(calldata.size)) + 172 len 20], address(arg1), arg3, arg4, Array(len=arg5.length, data=arg5[all])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                            revert with 0, 
                                        32,
                                        57,
                                        0x2e636f6e74726163742072657475726e656420616e20756e6b6e6f776e2076616c75652066726f6d206f6e4552433131353552656365697665,
                                        arg4 % 72057594037927936
            else:
                mem[ceil32(calldata.size) + 128] = calldata.size
                mem[ceil32(calldata.size) + 160 len calldata.size] = call.data[0 len calldata.size]
                if bool(stor3[address(arg1)][mem[calldata.size + ceil32(calldata.size) + 140 len 20]]) != 1:
                    revert with 0, 
                                32,
                                47,
                                0x734e656564206f70657261746f7220617070726f76616c20666f7220337264207061727479207472616e7366657273,
                                mem[(2 * ceil32(calldata.size)) + 275 len 17]
                if arg4 <= 0:
                    revert with 0, 
                                32,
                                42,
                                0x685472616e7366657220616d6f756e74206e6565647320746f20626520686967686572207468616e2030,
                                mem[(2 * ceil32(calldata.size)) + 270 len 22]
                if Mask(1, 255, arg3) == 0x8000000000000000000000000000000000000000000000000000000000000000:
                    if arg4 != 1:
                        revert with 0, 
                                    32,
                                    47,
                                    0x295472616e7366657220616d6f756e74206e6565647320746f206265203120666f72206e6f6e2066756e6769626c65,
                                    mem[(2 * ceil32(calldata.size)) + 275 len 17]
                    require ownerOf[arg3] == arg1
                    ownerOf[arg3] = arg2
                else:
                    require arg4 <= stor2[arg3][address(arg1)]
                    stor2[arg3][address(arg1)] -= arg4
                    require arg4 + stor2[arg3][arg2] >= stor2[arg3][arg2]
                    stor2[arg3][address(arg2)] = arg4 + stor2[arg3][arg2]
                if this.address == msg.sender:
                    mem[(2 * ceil32(calldata.size)) + 160] = calldata.size
                    mem[(2 * ceil32(calldata.size)) + 192 len calldata.size] = call.data[0 len calldata.size]
                    mem[(4 * ceil32(calldata.size)) + 224] = arg4
                    emit TransferSingle(arg3, arg4, mem[calldata.size + (2 * ceil32(calldata.size)) + 172 len 20], arg1, arg2);
                    if ext_code.size(arg2):
                        if msg.sender != this.address:
                            require ext_code.size(arg2)
                            call arg2 with:
                                 gas gas_remaining wei
                                args msg.sender, address(arg1), arg3, arg4, Array(len=arg5.length, data=arg5[all])
                        else:
                            mem[(4 * ceil32(calldata.size)) + 192] = calldata.size
                            mem[(4 * ceil32(calldata.size)) + 224 len calldata.size] = call.data[0 len calldata.size]
                            require ext_code.size(arg2)
                            call arg2 with:
                                 gas gas_remaining wei
                                args mem[calldata.size + (4 * ceil32(calldata.size)) + 204 len 20], address(arg1), arg3, arg4, Array(len=arg5.length, data=arg5[all])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                            revert with 0, 
                                        32,
                                        57,
                                        0x2e636f6e74726163742072657475726e656420616e20756e6b6e6f776e2076616c75652066726f6d206f6e4552433131353552656365697665,
                                        arg4 % 72057594037927936
                else:
                    mem[(2 * ceil32(calldata.size)) + 192] = arg4
                    emit TransferSingle(arg3, arg4, msg.sender, arg1, arg2);
                    if ext_code.size(arg2):
                        if msg.sender != this.address:
                            require ext_code.size(arg2)
                            call arg2 with:
                                 gas gas_remaining wei
                                args msg.sender, address(arg1), arg3, arg4, Array(len=arg5.length, data=arg5[all])
                        else:
                            mem[(2 * ceil32(calldata.size)) + 160] = calldata.size
                            mem[(2 * ceil32(calldata.size)) + 192 len calldata.size] = call.data[0 len calldata.size]
                            mem[(4 * ceil32(calldata.size)) + 224 len arg5.length] = arg5[all]
                            mem[(4 * ceil32(calldata.size)) + arg5.length + 224] = 0
                            mem[(4 * ceil32(calldata.size)) + ceil32(arg5.length) + 224] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(calldata.size)) + ceil32(arg5.length) + 228] = mem[calldata.size + (2 * ceil32(calldata.size)) + 172 len 20]
                            mem[(4 * ceil32(calldata.size)) + ceil32(arg5.length) + 420 len ceil32(arg5.length)] = arg5[all], mem[(4 * ceil32(calldata.size)) + arg5.length + 224 len ceil32(arg5.length) - arg5.length]
                            require ext_code.size(arg2)
                            call arg2 with:
                                 gas gas_remaining wei
                                args mem[calldata.size + (2 * ceil32(calldata.size)) + 172 len 20], address(arg1), arg3, arg4, Array(len=arg5.length, data=arg5[all])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                            revert with 0, 
                                        32,
                                        57,
                                        0x2e636f6e74726163742072657475726e656420616e20756e6b6e6f776e2076616c75652066726f6d206f6e4552433131353552656365697665,
                                        arg4 % 72057594037927936
}



}
