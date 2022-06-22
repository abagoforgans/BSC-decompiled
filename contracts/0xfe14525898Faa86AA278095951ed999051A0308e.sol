contract main {




// =====================  Runtime code  =====================


#
#  - sub_2eb31683(?)
#  - sub_a1a34f87(?)
#
address owner;
uint256 stor1;
address stor2;
mapping of struct stor3;
mapping of uint8 stor4;

function approvedTokens(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor4[arg1])
}

function owner() payable {
    return owner
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

function setSigner(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor2 = arg1
}

function approveToken(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor4[address(arg1)] = 1
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

function sub_3f75a07d(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg1.length)) + 97 > test266151307() or ceil32(ceil32(arg1.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    return uint64(sha3(Mask(8 * arg1.length, -(8 * arg1.length) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * arg1.length) - 256) % test266151307())
}

function sub_ff96a9b7(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == uint16(arg4)
    if arg3 and uint16(arg4) > -1 / arg3:
        revert with 'NH{q', 17
    if arg2 < arg3 * uint16(arg4):
        revert with 'NH{q', 17
    if not uint16(arg4):
        revert with 'NH{q', 18
    if arg2 - (arg3 * uint16(arg4)) / uint16(arg4) and 2 > -1 / arg2 - (arg3 * uint16(arg4)) / uint16(arg4):
        revert with 'NH{q', 17
    if 2 * arg2 - (arg3 * uint16(arg4)) / uint16(arg4) / 1000 and uint16(uint16(sha3(block.difficulty, block.timestamp, address(arg1))) % 1000) > -1 / 2 * arg2 - (arg3 * uint16(arg4)) / uint16(arg4) / 1000:
        revert with 'NH{q', 17
    if 2 * arg2 - (arg3 * uint16(arg4)) / uint16(arg4) / 1000 * uint16(uint16(sha3(block.difficulty, block.timestamp, address(arg1))) % 1000) > -arg3 - 1:
        revert with 'NH{q', 17
    return ((2 * arg2 - (arg3 * uint16(arg4)) / uint16(arg4) / 1000 * uint16(uint16(sha3(block.difficulty, block.timestamp, address(arg1))) % 1000)) + arg3)
}

function sub_cb168b3b(?) payable {
    require calldata.size - 4 >= 224
    require cd[4] == uint64(cd[4])
    require cd[36] == address(cd[36])
    require cd[68] == cd[68]
    require cd[100] == uint16(cd[100])
    require cd[132] == uint8(cd[132])
    require cd[164] == cd[164]
    require cd[196] <= test266151307()
    require cd[196] + 35 < calldata.size
    if ('cd', 196).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 196).length) + 97 > test266151307() or floor32(('cd', 196).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = ('cd', 196).length
    require cd[196] + (32 * ('cd', 196).length) + 36 <= calldata.size
    idx = 0
    s = cd[196] + 36
    t = 128
    while idx < ('cd', 196).length:
        require cd[s] == uint64(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if stor3[cd[4] << 192].field_0:
        revert with 0, 'balance not zero'
    if cd[68] <= 0:
        revert with 0, 'Trying to create zero balance envelope'
    if bool(stor4[address(cd[36])]) != 1:
        revert with 0, 'We only allow certain tokens!'
    if cd[164] and uint16(cd[100]) > -1 / cd[164]:
        revert with 'NH{q', 17
    if cd[68] < cd[164] * uint16(cd[100]):
        revert with 0, 'Everyone should be able to get min!'
    mem[floor32(('cd', 196).length) + 133] = msg.sender
    mem[floor32(('cd', 196).length) + 165] = this.address
    mem[floor32(('cd', 196).length) + 197] = cd[68]
    mem[floor32(('cd', 196).length) + 97] = 100
    mem[floor32(('cd', 196).length) + 129 len 4] = unknown_0x23b872dd(?????)
    mem[64] = floor32(('cd', 196).length) + 293
    mem[floor32(('cd', 196).length) + 229] = 32
    mem[floor32(('cd', 196).length) + 261] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if ext_code.size(address(cd[36])) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[floor32(('cd', 196).length) + 293 len 128] = 0, msg.sender, address(this.address), cd[68], 0
    mem[floor32(('cd', 196).length) + 393] = 0
    call address(cd[36]) with:
       funct Mask(32, 224, 0, msg.sender, address(this.address), cd[68], 0) >> 224
         gas gas_remaining wei
        args (Mask(768, -544, 0, msg.sender, address(this.address), cd[68], 0) << 544)
    if not return_data.size:
        if not ext_call.success:
            if ('cd', 196).length > 0:
                revert with memory
                  from 128
                   len ('cd', 196).length
            revert with 0, 'SafeERC20: low-level call failed'
        if ('cd', 196).length <= 0:
            stor3[cd[4] << 192].field_256 = cd[164]
            stor3[cd[4] << 192].field_1024 = uint16(cd[100])
            stor3[cd[4] << 192].field_512 = msg.sender
            idx = 0
            while idx < ('cd', 196).length:
                _437 = mem[64]
                mem[64] = mem[64] + 64
                mem[_437] = 0
                mem[_437 + 32] = 0
                _445 = mem[64]
                mem[64] = mem[64] + 64
                mem[_445] = 1
                mem[_445 + 32] = 0
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[0] = mem[(32 * idx) + 152 len 8]
                mem[32] = sha3(cd[4] << 192, 3) + 3
                stor3[cd[4] << 192][3][mem[(32 * idx) + 152 len 8]].field_0 = 1
                stor3[cd[4] << 192][3][mem[(32 * idx) + 152 len 8]].field_8 = 0
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
        else:
            require ('cd', 196).length >= 32
            require mem[128] == bool(mem[128])
            if not mem[128]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            stor3[cd[4] << 192].field_256 = cd[164]
            stor3[cd[4] << 192].field_1024 = uint16(cd[100])
            stor3[cd[4] << 192].field_512 = msg.sender
            idx = 0
            while idx < ('cd', 196).length:
                _438 = mem[64]
                mem[64] = mem[64] + 64
                mem[_438] = 0
                mem[_438 + 32] = 0
                _446 = mem[64]
                mem[64] = mem[64] + 64
                mem[_446] = 1
                mem[_446 + 32] = 0
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[0] = mem[(32 * idx) + 152 len 8]
                mem[32] = sha3(cd[4] << 192, 3) + 3
                stor3[cd[4] << 192][3][mem[(32 * idx) + 152 len 8]].field_0 = 1
                stor3[cd[4] << 192][3][mem[(32 * idx) + 152 len 8]].field_8 = 0
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
    else:
        mem[64] = floor32(('cd', 196).length) + ceil32(return_data.size) + 294
        mem[floor32(('cd', 196).length) + 293] = return_data.size
        mem[floor32(('cd', 196).length) + 325 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size <= 0:
            stor3[cd[4] << 192].field_256 = cd[164]
            stor3[cd[4] << 192].field_1024 = uint16(cd[100])
            stor3[cd[4] << 192].field_512 = msg.sender
            idx = 0
            while idx < ('cd', 196).length:
                _439 = mem[64]
                mem[64] = mem[64] + 64
                mem[_439] = 0
                mem[_439 + 32] = 0
                _447 = mem[64]
                mem[64] = mem[64] + 64
                mem[_447] = 1
                mem[_447 + 32] = 0
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[0] = mem[(32 * idx) + 152 len 8]
                mem[32] = sha3(cd[4] << 192, 3) + 3
                stor3[cd[4] << 192][3][mem[(32 * idx) + 152 len 8]].field_0 = 1
                stor3[cd[4] << 192][3][mem[(32 * idx) + 152 len 8]].field_8 = 0
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
        else:
            require return_data.size >= 32
            require mem[floor32(('cd', 196).length) + 325] == bool(mem[floor32(('cd', 196).length) + 325])
            if not mem[floor32(('cd', 196).length) + 325]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            stor3[cd[4] << 192].field_256 = cd[164]
            stor3[cd[4] << 192].field_1024 = uint16(cd[100])
            stor3[cd[4] << 192].field_512 = msg.sender
            idx = 0
            while idx < ('cd', 196).length:
                _440 = mem[64]
                mem[64] = mem[64] + 64
                mem[_440] = 0
                mem[_440 + 32] = 0
                _448 = mem[64]
                mem[64] = mem[64] + 64
                mem[_448] = 1
                mem[_448 + 32] = 0
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[0] = mem[(32 * idx) + 152 len 8]
                mem[32] = sha3(cd[4] << 192, 3) + 3
                stor3[cd[4] << 192][3][mem[(32 * idx) + 152 len 8]].field_0 = 1
                stor3[cd[4] << 192][3][mem[(32 * idx) + 152 len 8]].field_8 = 0
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
    stor3[cd[4] << 192].field_0 = cd[68]
    stor3[cd[4] << 192].field_1536 = address(cd[36])
    stor3[cd[4] << 192].field_1040 = uint8(cd[132])
    stor3[cd[4] << 192].field_1280 = block.timestamp
    stor1 = 1
}



}
