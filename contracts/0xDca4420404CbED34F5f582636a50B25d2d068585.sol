contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint8 stor1;
mapping of uint8 stor2;
mapping of uint8 stor3;
address feesTokenAddress;
address feesAddress;
uint256 sub_209eef7a;
uint256 sub_1acdcc87;
mapping of struct sub_5c625dca;
array of address sub_61e6d8a3;
mapping of uint256 sub_a407dc87;
mapping of uint8 stor99;

function sub_1acdcc87(?) payable {
    return sub_1acdcc87
}

function sub_209eef7a(?) payable {
    return sub_209eef7a
}

function feesToken() payable {
    return feesTokenAddress
}

function _minters(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor1[arg1])
}

function sub_5c625dca(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return address(sub_5c625dca[arg1].field_0), 
           address(sub_5c625dca[arg1].field_256),
           uint256(sub_5c625dca[arg1].field_512),
           uint256(sub_5c625dca[arg1].field_768)
}

function sub_61e6d8a3(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_61e6d8a3.length
    return sub_61e6d8a3[arg1]
}

function owner() payable {
    return owner
}

function feesAddress() payable {
    return feesAddress
}

function sub_a407dc87(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    return sub_a407dc87[arg1][arg2]
}

function _fallback() payable {
    revert
}

function getMessageHash(address arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    return sha3(arg1, arg2, arg3)
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function addMinter(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor1[address(arg1)] = 1
}

function removeMinter(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor1[address(arg1)] = 0
}

function sub_4066d246(?) payable {
    require calldata.size - 4 >= 32
    require msg.sender
    require msg.sender != this.address
    if not stor1[msg.sender]:
        revert with 0, '!minter'
    sub_1acdcc87 = arg1
    return 1
}

function sub_b5cdf2e5(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require msg.sender
    require msg.sender != this.address
    feesTokenAddress = address(arg1)
    feesAddress = address(arg2)
    sub_209eef7a = arg3
    return 1
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

function sub_6098dd07(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require msg.sender
    require msg.sender != this.address
    if not stor1[msg.sender]:
        revert with 0, '!minter'
    address(sub_5c625dca[address(arg1)].field_256) = address(arg2)
    uint256(sub_5c625dca[address(arg1)].field_512) = arg3
    uint256(sub_5c625dca[address(arg1)].field_768) = arg4
    return 1
}

function sub_9b9b1a19(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    idx = 0
    while idx < sub_61e6d8a3.length:
        mem[0] = sub_61e6d8a3[idx]
        mem[32] = 8
        if address(sub_5c625dca[stor9[idx]].field_256) != address(arg1):
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if idx >= sub_61e6d8a3.length:
            revert with 0, 50
        return address(sub_5c625dca[stor9[idx]].field_0)
    return 0
}

function sub_05b9cd34(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(arg1.length) + 128 < 96 or ceil32(arg1.length) + 128 > test266151307():
        revert with 0, 65
    require calldata.size >= arg1.length + arg1 + 36
    mem[ceil32(arg1.length) + 128] = bool(stor3[arg1[all]])
    return Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
}

function usedSignatures(bytes arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(arg1.length) + 128 < 96 or ceil32(arg1.length) + 128 > test266151307():
        revert with 0, 65
    require calldata.size >= arg1.length + arg1 + 36
    mem[ceil32(arg1.length) + 128] = bool(stor2[arg1[all]])
    return Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
}

function sub_99b6ab94(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg3 == address(arg3)
    require msg.sender
    require msg.sender != this.address
    if not address(arg1):
        revert with 0, 'invalid token'
    require ext_code.size(address(arg1))
    call address(arg1).0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    emit 0x5a1a1a6b: address(arg1), arg2, address(arg3)
    return 1
}

function sub_88ac46d2(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require msg.sender
    require msg.sender != this.address
    if not stor1[msg.sender]:
        revert with 0, '!minter'
    idx = 0
    while idx < sub_61e6d8a3.length:
        mem[0] = 9
        if sub_61e6d8a3[idx] == address(arg1):
            return 0
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    address(sub_5c625dca[address(arg1)].field_0) = address(arg1)
    address(sub_5c625dca[address(arg1)].field_256) = address(arg2)
    uint256(sub_5c625dca[address(arg1)].field_512) = arg3
    uint256(sub_5c625dca[address(arg1)].field_768) = arg4
    sub_61e6d8a3.length++
    sub_61e6d8a3[sub_61e6d8a3.length] = address(arg1)
    return 1
}

function sub_eefc4ff7(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require msg.sender
    require msg.sender != this.address
    if not stor1[msg.sender]:
        revert with 0, '!minter'
    idx = 0
    while idx < sub_61e6d8a3.length:
        mem[0] = 9
        if sub_61e6d8a3[idx] != address(arg1):
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if sub_61e6d8a3.length < 1:
            revert with 0, 17
        if sub_61e6d8a3.length - 1 >= sub_61e6d8a3.length:
            revert with 0, 50
        if idx >= sub_61e6d8a3.length:
            revert with 0, 50
        sub_61e6d8a3[idx] = sub_61e6d8a3[sub_61e6d8a3.length]
        if not sub_61e6d8a3.length:
            revert with 0, 49
        sub_61e6d8a3[sub_61e6d8a3.length] = 0
        sub_61e6d8a3.length--
        address(sub_5c625dca[address(arg1)].field_0) = 0
        address(sub_5c625dca[address(arg1)].field_256) = 0
        uint256(sub_5c625dca[address(arg1)].field_512) = 0
        uint256(sub_5c625dca[address(arg1)].field_768) = 0
        return 1
    return 0
}

function sub_e1c74b76(?) payable {
    require calldata.size - 4 >= 160
    require arg1 == address(arg1)
    require arg3 == address(arg3)
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    if arg5.length > test266151307():
        revert with 0, 65
    if ceil32(arg5.length) + 128 < 96 or ceil32(arg5.length) + 128 > test266151307():
        revert with 0, 65
    require calldata.size >= arg5.length + arg5 + 36
    mem[128 len arg5.length] = arg5[all]
    mem[arg5.length + 128] = 0
    if not stor1[msg.sender]:
        revert with 0, '!minter'
    if not address(arg1):
        revert with 0, 'invalid token'
    mem[ceil32(arg5.length) + 128 len ceil32(arg5.length)] = arg5[all], mem[arg5.length + 128 len ceil32(arg5.length) - arg5.length]
    mem[arg5.length + ceil32(arg5.length) + 128] = 3
    if stor[mem[arg5.length + 160 len ceil32(arg5.length)]][Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0)]:
        revert with 0, 'tx hash used'
    if not sub_1acdcc87:
        sub_1acdcc87 = arg4
    if arg4 < sub_1acdcc87:
        revert with 0, 'invalid block number'
    mem[ceil32(arg5.length) + 132] = address(arg3)
    mem[ceil32(arg5.length) + 164] = arg2
    require ext_code.size(address(arg1))
    call address(arg1).0xa9059cbb with:
         gas gas_remaining wei
        args address(arg3), arg2
    mem[ceil32(arg5.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 0, ext_call.return_data[4 len 28] == bool(0, ext_call.return_data[4 len 28])
    mem[ceil32(arg5.length) + ceil32(return_data.size) + 128 len ceil32(arg5.length)] = arg5[all], mem[arg5.length + 128 len ceil32(arg5.length) - arg5.length]
    mem[arg5.length + ceil32(arg5.length) + ceil32(return_data.size) + 128] = 3
    stor[sha3(mem[ceil32(arg5.length) + ceil32(return_data.size) + 128 len arg5.length + 32])] = 1
    mem[ceil32(arg5.length) + ceil32(return_data.size) + 128 len ceil32(arg5.length)] = arg5[all], mem[arg5.length + 128 len ceil32(arg5.length) - arg5.length]
    emit 0x4f60d0a6: address(arg1), arg2, arg4, address(arg3), sha3(mem[ceil32(arg5.length) + ceil32(return_data.size) + 128 len arg5.length])
    return 1
}

function sub_aaa9acd2(?) payable {
    require calldata.size - 4 >= 160
    require arg1 == address(arg1)
    require arg3 == address(arg3)
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    if arg5.length > test266151307():
        revert with 0, 65
    if ceil32(arg5.length) + 128 < 96 or ceil32(arg5.length) + 128 > test266151307():
        revert with 0, 65
    require calldata.size >= arg5.length + arg5 + 36
    mem[128 len arg5.length] = arg5[all]
    mem[arg5.length + 128] = 0
    if not stor1[msg.sender]:
        revert with 0, '!minter'
    if not address(arg1):
        revert with 0, 'invalid token'
    mem[ceil32(arg5.length) + 128 len ceil32(arg5.length)] = arg5[all], mem[arg5.length + 128 len ceil32(arg5.length) - arg5.length]
    mem[arg5.length + ceil32(arg5.length) + 128] = 3
    if stor[mem[arg5.length + 160 len ceil32(arg5.length)]][Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0)]:
        revert with 0, 'tx hash used'
    if not sub_1acdcc87:
        sub_1acdcc87 = arg4
    if arg4 < sub_1acdcc87:
        revert with 0, 'invalid block number'
    mem[ceil32(arg5.length) + 132] = address(arg3)
    mem[ceil32(arg5.length) + 164] = arg2
    require ext_code.size(address(arg1))
    call address(arg1).deposit(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg3), arg2
    mem[ceil32(arg5.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 0, ext_call.return_data[4 len 28] == bool(0, ext_call.return_data[4 len 28])
    mem[ceil32(arg5.length) + ceil32(return_data.size) + 128 len ceil32(arg5.length)] = arg5[all], mem[arg5.length + 128 len ceil32(arg5.length) - arg5.length]
    mem[arg5.length + ceil32(arg5.length) + ceil32(return_data.size) + 128] = 3
    stor[sha3(mem[ceil32(arg5.length) + ceil32(return_data.size) + 128 len arg5.length + 32])] = 1
    mem[ceil32(arg5.length) + ceil32(return_data.size) + 128 len ceil32(arg5.length)] = arg5[all], mem[arg5.length + 128 len ceil32(arg5.length) - arg5.length]
    emit 0x838bd6ab: address(arg1), arg2, address(arg3), sha3(mem[ceil32(arg5.length) + ceil32(return_data.size) + 128 len arg5.length])
    return 1
}

function sub_43cebf0e(?) payable {
    if sub_61e6d8a3.length > test266151307():
        revert with 0, 65
    mem[96] = sub_61e6d8a3.length
    mem[64] = (32 * sub_61e6d8a3.length) + 128
    if not sub_61e6d8a3.length:
        idx = 0
        while idx < sub_61e6d8a3.length:
            mem[0] = sub_61e6d8a3[idx]
            mem[32] = 8
            _31 = mem[64]
            mem[64] = mem[64] + 128
            mem[_31] = address(sub_5c625dca[stor9[idx]].field_0)
            mem[_31 + 32] = address(sub_5c625dca[stor9[idx]].field_256)
            mem[_31 + 64] = uint256(sub_5c625dca[stor9[idx]].field_512)
            mem[_31 + 96] = uint256(sub_5c625dca[stor9[idx]].field_768)
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = _31
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        _33 = mem[96]
        mem[mem[64] + 32] = mem[96]
        s = 0
        s = 128
        t = mem[64] + 64
        while sub_61e6d8a3.length < _33:
            _53 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_53 + 44 len 20]
            mem[t + 64] = mem[_53 + 64]
            mem[t + 96] = mem[_53 + 96]
            s = sub_61e6d8a3.length + 1
            s = s + 32
            t = t + 128
            continue 
    else:
        mem[64] = (32 * sub_61e6d8a3.length) + 256
        mem[(32 * sub_61e6d8a3.length) + 128] = 0
        mem[(32 * sub_61e6d8a3.length) + 160] = 0
        mem[(32 * sub_61e6d8a3.length) + 192] = 0
        mem[(32 * sub_61e6d8a3.length) + 224] = 0
        mem[var8001] = (32 * sub_61e6d8a3.length) + 128
        s = var8001
        idx = var8002
        while idx - 1:
            mem[64] = mem[64] + 128
            mem[(32 * sub_61e6d8a3.length) + 128] = 0
            mem[(32 * sub_61e6d8a3.length) + 160] = 0
            mem[(32 * sub_61e6d8a3.length) + 192] = 0
            mem[(32 * sub_61e6d8a3.length) + 224] = 0
            mem[s + 32] = (32 * sub_61e6d8a3.length) + 128
            s = s + 32
            idx = idx - 1
            continue 
        idx = 0
        while idx < sub_61e6d8a3.length:
            mem[0] = sub_61e6d8a3[idx]
            mem[32] = 8
            _74 = mem[64]
            mem[64] = mem[64] + 128
            mem[_74] = address(sub_5c625dca[stor9[idx]].field_0)
            mem[_74 + 32] = address(sub_5c625dca[stor9[idx]].field_256)
            mem[_74 + 64] = uint256(sub_5c625dca[stor9[idx]].field_512)
            mem[_74 + 96] = uint256(sub_5c625dca[stor9[idx]].field_768)
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = _74
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        _76 = mem[96]
        mem[mem[64] + 32] = mem[96]
        s = 0
        s = 128
        t = mem[64] + 64
        while sub_61e6d8a3.length < _76:
            _83 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_83 + 44 len 20]
            mem[t + 64] = mem[_83 + 64]
            mem[t + 96] = mem[_83 + 96]
            s = sub_61e6d8a3.length + 1
            s = s + 32
            t = t + 128
            continue 
    return memory
      from mem[64]
       len t - mem[64]
}

function sub_95becdcb(?) payable {
    require calldata.size - 4 >= 160
    require arg1 == address(arg1)
    require arg3 == address(arg3)
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    if arg5.length > test266151307():
        revert with 0, 65
    if ceil32(arg5.length) + 128 < 96 or ceil32(arg5.length) + 128 > test266151307():
        revert with 0, 65
    require calldata.size >= arg5.length + arg5 + 36
    mem[128 len arg5.length] = arg5[all]
    mem[arg5.length + 128] = 0
    if not stor1[msg.sender]:
        revert with 0, '!minter'
    if arg4 < block.timestamp:
        revert with 0, 'timeout'
    if not address(arg1):
        revert with 0, 'invalid token'
    if arg2 >= uint256(sub_5c625dca[address(arg1)].field_512):
        revert with 0, 'limit max withdraw'
    if not address(sub_5c625dca[address(arg1)].field_256):
        revert with 0, 'token can't withdraw'
    if block.timestamp <= sub_a407dc87[address(arg3)][address(arg1)]:
        revert with 0, 'withdraw wait lock time'
    mem[ceil32(arg5.length) + 128 len ceil32(arg5.length)] = arg5[all], mem[arg5.length + 128 len ceil32(arg5.length) - arg5.length]
    mem[arg5.length + ceil32(arg5.length) + 128] = 2
    if stor[mem[arg5.length + 160 len ceil32(arg5.length)]][Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0)]:
        revert with 0, 'signature used'
    mem[ceil32(arg5.length) + 160] = address(arg1)
    mem[ceil32(arg5.length) + 180] = arg2
    mem[ceil32(arg5.length) + 212] = arg4
    mem[ceil32(arg5.length) + 128] = 84
    if ceil32(arg5.length) <= arg5.length:
        _396 = sha3(mem[ceil32(arg5.length) + 160 len Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]])
        if 65 == arg5.length:
            if mem[160] > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
                revert with 0, 'ECDSA: invalid signature 's' value'
            revert with 0, 'ECDSA: invalid signature 'v' value'
        if arg5.length != 64:
            revert with 0, 'ECDSA: invalid signature length'
        if uint255(mem[160]) > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
            revert with 0, 'ECDSA: invalid signature 's' value'
        if uint8((bool(mem[160]) >> 255) + 27) != 27:
            if uint8((bool(mem[160]) >> 255) + 27) != 28:
                revert with 0, 'ECDSA: invalid signature 'v' value'
        mem[ceil32(arg5.length) + 400] = uint8((bool(mem[160]) >> 255) + 27)
        mem[ceil32(arg5.length) + 432] = mem[128]
        mem[ceil32(arg5.length) + 464] = uint255(mem[160])
        signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, _396), (bool(mem[160]) >> 255) + 27 << 248, mem[128], uint255(mem[160])) 
    else:
        _400 = sha3(mem[ceil32(arg5.length) + 160 len Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]])
        if 65 == arg5.length:
            if mem[160] > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
                revert with 0, 'ECDSA: invalid signature 's' value'
            revert with 0, 'ECDSA: invalid signature 'v' value'
        if arg5.length != 64:
            revert with 0, 'ECDSA: invalid signature length'
        if uint255(mem[160]) > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
            revert with 0, 'ECDSA: invalid signature 's' value'
        if uint8((bool(mem[160]) >> 255) + 27) != 27:
            if uint8((bool(mem[160]) >> 255) + 27) != 28:
                revert with 0, 'ECDSA: invalid signature 'v' value'
        mem[ceil32(arg5.length) + 400] = uint8((bool(mem[160]) >> 255) + 27)
        mem[ceil32(arg5.length) + 432] = mem[128]
        mem[ceil32(arg5.length) + 464] = uint255(mem[160])
        signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, _400), (bool(mem[160]) >> 255) + 27 << 248, mem[128], uint255(mem[160])) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if not address(signer):
        revert with 0, 'ECDSA: invalid signature'
    if address(signer) != address(arg3):
        revert with 0, 'Invalid signature'
    mem[ceil32(arg5.length) + 372] = address(arg3)
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args address(arg3)
    mem[ceil32(arg5.length) + 368] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg2:
        revert with 0, 'not enough token'
    if not address(arg1):
        revert with 0, 'not enough token'
    mem[ceil32(arg5.length) + ceil32(return_data.size) + 372] = address(arg3)
    require ext_code.size(feesTokenAddress)
    staticcall feesTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args address(arg3)
    mem[ceil32(arg5.length) + ceil32(return_data.size) + 368] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg2:
        revert with 0, 'not enough fee'
    if not feesTokenAddress:
        revert with 0, 'not enough fee'
    mem[ceil32(arg5.length) + (2 * ceil32(return_data.size)) + 372] = address(arg3)
    mem[ceil32(arg5.length) + (2 * ceil32(return_data.size)) + 404] = feesAddress
    mem[ceil32(arg5.length) + (2 * ceil32(return_data.size)) + 436] = sub_209eef7a
    require ext_code.size(feesTokenAddress)
    call feesTokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args address(arg3), feesAddress, sub_209eef7a
    mem[ceil32(arg5.length) + (2 * ceil32(return_data.size)) + 368] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[ceil32(arg5.length) + (4 * ceil32(return_data.size)) + 372] = address(arg3)
    mem[ceil32(arg5.length) + (4 * ceil32(return_data.size)) + 404] = arg2
    require ext_code.size(address(arg1))
    call address(arg1).withdraw(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg3), arg2
    mem[ceil32(arg5.length) + (4 * ceil32(return_data.size)) + 368] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[ceil32(arg5.length) + (6 * ceil32(return_data.size)) + 368 len ceil32(arg5.length)] = arg5[all], mem[arg5.length + 128 len ceil32(arg5.length) - arg5.length]
    mem[arg5.length + ceil32(arg5.length) + (6 * ceil32(return_data.size)) + 368] = 2
    stor[mem[(2 * ceil32(arg5.length)) + (6 * ceil32(return_data.size)) + 368 len arg5.length + -ceil32(arg5.length) + 32]][Mask(8 * ceil32(arg5.length), -(8 * ceil32(arg5.length)) + 256, arg5[all], mem[arg5.length + 128 len ceil32(arg5.length) - arg5.length]) << (8 * ceil32(arg5.length)) - 256] = 1
    if block.timestamp > !uint256(sub_5c625dca[address(arg1)].field_768):
        revert with 0, 17
    sub_a407dc87[address(arg3)][address(arg1)] = block.timestamp + uint256(sub_5c625dca[address(arg1)].field_768)
    emit 0x3bc883c4: address(arg1), arg2, arg4, address(arg3), sha3(Mask(8 * arg5.length, -(8 * arg5.length) + 256, arg5[all], mem[arg5.length + 128 len ceil32(arg5.length) - arg5.length]) << (8 * arg5.length) - 256)
    return 1
}



}
