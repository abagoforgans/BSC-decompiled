contract main {




// =====================  Runtime code  =====================


address owner;
address implementationAddress;
address verifyAddress;
address sub_14e0f2aeAddress;
array of struct stor4;
mapping of struct userInfos;
mapping of uint32 sub_e1523328;
mapping of address sub_b922f94c;
mapping of uint256 sub_9c129eb3;
mapping of uint256 sub_25fabb20;

function sub_14e0f2ae(?) payable {
    return sub_14e0f2aeAddress
}

function sub_25fabb20(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_25fabb20[arg1]
}

function implementation() payable {
    return implementationAddress
}

function userInfos(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return userInfos[arg1][arg2].field_0, 
           userInfos[arg1][arg2].field_256,
           userInfos[arg1][arg2].field_512,
           userInfos[arg1][arg2].field_768
}

function owner() payable {
    return owner
}

function sub_9c129eb3(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_9c129eb3[arg1]
}

function sub_b922f94c(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_b922f94c[arg1]
}

function sub_e1523328(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_e1523328[arg1]
}

function verify() payable {
    return verifyAddress
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

function sub_0e9c9f18(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 >= stor4.length:
        revert with 'NH{q', 50
    stor4[arg1].field_1280 = arg2
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

function sub_05d73674(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == uint32(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if uint32(arg2) < 300:
        revert with 0, 'setPoolFee:fee invalid'
    if uint32(arg2) > 500:
        revert with 0, 'setPoolFee:fee invalid'
    if arg1 >= stor4.length:
        revert with 'NH{q', 50
    stor4[arg1].field_1536 = uint32(arg2)
}

function withdrawCoin(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    call arg1.0x23b872dd with:
         gas gas_remaining wei
        args address(this.address), msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function removePool(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 >= stor4.length:
        revert with 'NH{q', 50
    stor4[arg1].field_0 = 0
    if stor4[arg1].field_256:
        if stor4[arg1].field_256 == stor4[arg1].field_257 < 32:
            revert with 'NH{q', 34
        stor4[arg1].field_256 = 0
        idx = 0
        while stor4[arg1].field_257 + 31 / 32 > idx:
            stor[idx + sha3((12 * arg1) + ('name', 'stor4', 4) + 1)].field_0 = 0
            idx = idx + 1
            continue 
    else:
        if stor4[arg1].field_256 == stor4[arg1].field_257 < 32:
            revert with 'NH{q', 34
        stor4[arg1].field_256 = 0
        idx = 0
        while stor4[arg1].field_257 + 31 / 32 > idx:
            stor[idx + sha3((12 * arg1) + ('name', 'stor4', 4) + 1)].field_0 = 0
            idx = idx + 1
            continue 
    stor4[arg1].field_512 = 0
    stor4[arg1].field_768 = 0
    stor4[arg1].field_768 = 0
    stor4[arg1].field_1024 = 0
    stor4[arg1].field_1280 = 0
    stor4[arg1].field_1536 = 0
    stor4[arg1].field_1792 = 0
    stor4[arg1].field_1792 = 0
    stor4[arg1].field_2048 = 0
    stor4[arg1].field_2304 = 0
    stor4[arg1].field_2560 = 0
    stor4[arg1].field_2816 = 0
}

function sub_3362c117(?) payable {
    require calldata.size - 4 >= 160
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg1.length)) + 97 > test266151307() or ceil32(ceil32(arg1.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg1 + arg1.length + 36 <= calldata.size
    require arg2 == address(arg2)
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == uint32(arg5)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if uint32(arg5) < 300:
        revert with 0, 'addPool:fee invalid'
    if uint32(arg5) > 500:
        revert with 0, 'addPool:fee invalid'
    stor4.length++
    stor4[stor4.length].field_0 = stor4.length
    if stor4[stor4.length].field_256:
        if stor4[stor4.length].field_256 == stor4[stor4.length].field_257 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor[sha3((12 * stor4.length) + ('name', 'stor4', 4) + 1)][].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor4[stor4.length].field_256 = 0
            idx = 0
            while stor4[stor4.length].field_257 + 31 / 32 > idx:
                stor[idx + sha3((12 * stor4.length) + ('name', 'stor4', 4) + 1)].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor4[stor4.length].field_256 == stor4[stor4.length].field_257 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor[sha3((12 * stor4.length) + ('name', 'stor4', 4) + 1)][].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor4[stor4.length].field_256 = 0
            idx = 0
            while stor4[stor4.length].field_257 + 31 / 32 > idx:
                stor[idx + sha3((12 * stor4.length) + ('name', 'stor4', 4) + 1)].field_0 = 0
                idx = idx + 1
                continue 
    stor4[stor4.length].field_512 = address(arg2)
    stor4[stor4.length].field_768 = arg3
    stor4[stor4.length].field_1024 = arg3
    stor4[stor4.length].field_1280 = arg4
    stor4[stor4.length].field_1536 = uint32(arg5)
    stor4[stor4.length].field_1792 = block.number
    stor4[stor4.length].field_2048 = 0
    stor4[stor4.length].field_2304 = 0
    stor4[stor4.length].field_2560 = 0
    stor4[stor4.length].field_2816 = 0
}

function sub_b2d1db66(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 >= stor4.length:
        revert with 'NH{q', 50
    if stor4[arg1].field_256:
        if stor4[arg1].field_256 == stor4[arg1].field_257 < 32:
            revert with 'NH{q', 34
    else:
        if stor4[arg1].field_256 == stor4[arg1].field_257 < 32:
            revert with 'NH{q', 34
    if stor4[arg1].field_256:
        if stor4[arg1].field_256 == stor4[arg1].field_257 < 32:
            revert with 'NH{q', 34
        if stor4[arg1].field_257:
            if 31 < stor4[arg1].field_257:
                idx = 640
                s = 0
                while stor4[arg1].field_257 + 608 > idx:
                    mem[idx + 32] = stor[s + sha3((12 * arg1) + ('name', 'stor4', 4) + 1)].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if stor4[arg1].field_256 == stor4[arg1].field_257 < 32:
            revert with 'NH{q', 34
        if stor4[arg1].field_257:
            if 31 < stor4[arg1].field_257:
                idx = 640
                s = 0
                while stor4[arg1].field_257 + 608 > idx:
                    mem[idx + 32] = stor[s + sha3((12 * arg1) + ('name', 'stor4', 4) + 1)].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    if block.number < stor4[arg1].field_2560:
        revert with 'NH{q', 17
    if block.number - stor4[arg1].field_2560 and stor4[arg1].field_1280 > -1 / block.number - stor4[arg1].field_2560:
        revert with 'NH{q', 17
    if stor4[arg1].field_2048 <= 0:
        if stor4[arg1].field_2816 and userInfos[arg1][address(msg.sender)].field_0 > -1 / stor4[arg1].field_2816:
            revert with 'NH{q', 17
        if stor4[arg1].field_2816 * userInfos[arg1][address(msg.sender)].field_0 < userInfos[arg1][address(msg.sender)].field_256:
            revert with 'NH{q', 17
        return ((stor4[arg1].field_2816 * userInfos[arg1][address(msg.sender)].field_0) - userInfos[arg1][address(msg.sender)].field_256)
    if not stor4[arg1].field_2048:
        revert with 'NH{q', 18
    if stor4[arg1].field_2816 > -((block.number * stor4[arg1].field_1280) - (stor4[arg1].field_2560 * stor4[arg1].field_1280) / stor4[arg1].field_2048) - 1:
        revert with 'NH{q', 17
    if stor4[arg1].field_2816 + ((block.number * stor4[arg1].field_1280) - (stor4[arg1].field_2560 * stor4[arg1].field_1280) / stor4[arg1].field_2048) and userInfos[arg1][address(msg.sender)].field_0 > -1 / stor4[arg1].field_2816 + ((block.number * stor4[arg1].field_1280) - (stor4[arg1].field_2560 * stor4[arg1].field_1280) / stor4[arg1].field_2048):
        revert with 'NH{q', 17
    if (stor4[arg1].field_2816 * userInfos[arg1][address(msg.sender)].field_0) + ((block.number * stor4[arg1].field_1280) - (stor4[arg1].field_2560 * stor4[arg1].field_1280) / stor4[arg1].field_2048 * userInfos[arg1][address(msg.sender)].field_0) < userInfos[arg1][address(msg.sender)].field_256:
        revert with 'NH{q', 17
    return ((stor4[arg1].field_2816 * userInfos[arg1][address(msg.sender)].field_0) + ((block.number * stor4[arg1].field_1280) - (stor4[arg1].field_2560 * stor4[arg1].field_1280) / stor4[arg1].field_2048 * userInfos[arg1][address(msg.sender)].field_0) - userInfos[arg1][address(msg.sender)].field_256)
}

function pools(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < stor4.length
    if stor4[arg1].field_256:
        if stor4[arg1].field_256 == stor4[arg1].field_257 < 32:
            revert with 'NH{q', 34
        if stor4[arg1].field_256:
            if stor4[arg1].field_256 == stor4[arg1].field_257 < 32:
                revert with 'NH{q', 34
            if stor4[arg1].field_257:
                if 31 >= stor4[arg1].field_257:
                    mem[128] = 256 * stor4[arg1].field_264
                else:
                    mem[128] = stor[sha3((12 * arg1) + ('name', 'stor4', 4) + 1)].field_0
                    idx = 128
                    s = 0
                    while stor4[arg1].field_257 + 96 > idx:
                        mem[idx + 32] = stor[s + sha3((12 * arg1) + ('name', 'stor4', 4) + 1)].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if stor4[arg1].field_256 == stor4[arg1].field_257 < 32:
                revert with 'NH{q', 34
            if stor4[arg1].field_257:
                if 31 >= stor4[arg1].field_257:
                    mem[128] = 256 * stor4[arg1].field_264
                else:
                    mem[128] = stor[sha3((12 * arg1) + ('name', 'stor4', 4) + 1)].field_0
                    idx = 128
                    s = 0
                    while stor4[arg1].field_257 + 96 > idx:
                        mem[idx + 32] = stor[s + sha3((12 * arg1) + ('name', 'stor4', 4) + 1)].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        return stor4[arg1].field_0, 
               Array(len=2 * Mask(256, -1, stor4[arg1].field_257), data=mem[128 len ceil32(stor4[arg1].field_257)]),
               stor4[arg1].field_512,
               stor4[arg1].field_768,
               stor4[arg1].field_1024,
               stor4[arg1].field_1280,
               stor4[arg1].field_1536,
               stor4[arg1].field_1792,
               stor4[arg1].field_2048,
               stor4[arg1].field_2304,
               stor4[arg1].field_2560,
               stor4[arg1].field_2816
    if stor4[arg1].field_256 == stor4[arg1].field_257 < 32:
        revert with 'NH{q', 34
    if stor4[arg1].field_256:
        if stor4[arg1].field_256 == stor4[arg1].field_257 < 32:
            revert with 'NH{q', 34
        if stor4[arg1].field_257:
            if 31 >= stor4[arg1].field_257:
                mem[128] = 256 * stor4[arg1].field_264
            else:
                mem[128] = stor[sha3((12 * arg1) + ('name', 'stor4', 4) + 1)].field_0
                idx = 128
                s = 0
                while stor4[arg1].field_257 + 96 > idx:
                    mem[idx + 32] = stor[s + sha3((12 * arg1) + ('name', 'stor4', 4) + 1)].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if stor4[arg1].field_256 == stor4[arg1].field_257 < 32:
            revert with 'NH{q', 34
        if stor4[arg1].field_257:
            if 31 >= stor4[arg1].field_257:
                mem[128] = 256 * stor4[arg1].field_264
            else:
                mem[128] = stor[sha3((12 * arg1) + ('name', 'stor4', 4) + 1)].field_0
                idx = 128
                s = 0
                while stor4[arg1].field_257 + 96 > idx:
                    mem[idx + 32] = stor[s + sha3((12 * arg1) + ('name', 'stor4', 4) + 1)].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    return stor4[arg1].field_0, 
           Array(len=stor4[arg1].field_256, data=mem[128 len ceil32(stor4[arg1].field_257)]),
           stor4[arg1].field_512,
           stor4[arg1].field_768,
           stor4[arg1].field_1024,
           stor4[arg1].field_1280,
           stor4[arg1].field_1536,
           stor4[arg1].field_1792,
           stor4[arg1].field_2048,
           stor4[arg1].field_2304,
           stor4[arg1].field_2560,
           stor4[arg1].field_2816
}

function deposit(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, bytes arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    if arg5.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg5.length)) + 97 > test266151307() or ceil32(ceil32(arg5.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg5 + arg5.length + 36 <= calldata.size
    if arg1 >= stor4.length:
        revert with 'NH{q', 50
    if not stor4[arg1].field_1792:
        revert with 0, 'deposit: Pool not exist'
    if block.timestamp < arg4:
        revert with 'NH{q', 17
    if block.timestamp - arg4 >= 300:
        revert with 0, 'deposit: Sign timeout'
    require ext_code.size(0x6b82cf143ee04c9370db46c7a2418a537e7bf7)
    delegate 0x6b82cf143ee04c9370db46c7a2418a537e7bf7.0x2e295ec9 with:
         gas gas_remaining wei
        args 64, 256, 148, msg.sender, arg1, arg2, arg3, arg4, 0, 0 >> 928, 0, arg5.length, arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256, 148) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require delegate.return_data[0] == delegate.return_data[12 len 20]
    if delegate.return_data[12 len 20] != verifyAddress:
        revert with 0, 'deposit: Signature error'
    if sub_e1523328[arg3] <= 0:
        revert with 0, 'deposit: nftType error'
    require ext_code.size(sub_14e0f2aeAddress)
    call sub_14e0f2aeAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    sub_b922f94c[arg2] = msg.sender
    sub_9c129eb3[arg2] = arg3
    if arg1 >= stor4.length:
        revert with 'NH{q', 50
    if block.number < stor4[arg1].field_2560:
        revert with 'NH{q', 17
    if block.number - stor4[arg1].field_2560 and stor4[arg1].field_1280 > -1 / block.number - stor4[arg1].field_2560:
        revert with 'NH{q', 17
    if not stor4[arg1].field_1024:
        revert with 0, 'deposit: rewords pool is out of use'
    if not stor4[arg1].field_1280:
        revert with 'NH{q', 18
    if stor4[arg1].field_1792 > -(stor4[arg1].field_768 / stor4[arg1].field_1280) - 1:
        revert with 'NH{q', 17
    if stor4[arg1].field_1792 + (stor4[arg1].field_768 / stor4[arg1].field_1280) < block.number:
        revert with 0, 'deposit: rewords pool is out of use'
    if stor4[arg1].field_1024 >= (block.number * stor4[arg1].field_1280) - (stor4[arg1].field_2560 * stor4[arg1].field_1280):
        if stor4[arg1].field_2048 > 0:
            if stor4[arg1].field_1024 < (block.number * stor4[arg1].field_1280) - (stor4[arg1].field_2560 * stor4[arg1].field_1280):
                revert with 'NH{q', 17
            stor4[arg1].field_1024 = stor4[arg1].field_1024 - (block.number * stor4[arg1].field_1280) + (stor4[arg1].field_2560 * stor4[arg1].field_1280)
            if not stor4[arg1].field_2048:
                revert with 'NH{q', 18
            if stor4[arg1].field_2816 > -((block.number * stor4[arg1].field_1280) - (stor4[arg1].field_2560 * stor4[arg1].field_1280) / stor4[arg1].field_2048) - 1:
                revert with 'NH{q', 17
            stor4[arg1].field_2816 += (block.number * stor4[arg1].field_1280) - (stor4[arg1].field_2560 * stor4[arg1].field_1280) / stor4[arg1].field_2048
    else:
        if stor4[arg1].field_2048 > 0:
            if stor4[arg1].field_1024 < stor4[arg1].field_1024:
                revert with 'NH{q', 17
            stor4[arg1].field_1024 = 0
            if not stor4[arg1].field_2048:
                revert with 'NH{q', 18
            if stor4[arg1].field_2816 > -(stor4[arg1].field_1024 / stor4[arg1].field_2048) - 1:
                revert with 'NH{q', 17
            stor4[arg1].field_2816 += stor4[arg1].field_1024 / stor4[arg1].field_2048
    stor4[arg1].field_2560 = block.number
    if sub_e1523328[arg3] and stor4[arg1].field_2816 > -1 / sub_e1523328[arg3]:
        revert with 'NH{q', 17
    if stor4[arg1].field_2048 > -sub_e1523328[arg3] - 1:
        revert with 'NH{q', 17
    stor4[arg1].field_2048 += sub_e1523328[arg3]
    if stor4[arg1].field_2304 == -1:
        revert with 'NH{q', 17
    stor4[arg1].field_2304++
    if not userInfos[arg1][address(msg.sender)].field_0:
        userInfos[arg1][address(msg.sender)].field_0 = sub_e1523328[arg3]
        userInfos[arg1][address(msg.sender)].field_256 = sub_e1523328[arg3] * stor4[arg1].field_2816
        userInfos[arg1][address(msg.sender)].field_512 = block.timestamp
        userInfos[arg1][address(msg.sender)].field_768 = 0
    else:
        if userInfos[arg1][address(msg.sender)].field_0 > -sub_e1523328[arg3] - 1:
            revert with 'NH{q', 17
        userInfos[arg1][address(msg.sender)].field_0 += sub_e1523328[arg3]
        if userInfos[arg1][address(msg.sender)].field_256 > (-1 * sub_e1523328[arg3] * stor4[arg1].field_2816) - 1:
            revert with 'NH{q', 17
        userInfos[arg1][address(msg.sender)].field_256 += sub_e1523328[arg3] * stor4[arg1].field_2816
        userInfos[arg1][address(msg.sender)].field_512 = block.timestamp
    sub_25fabb20[arg2] = arg1
    emit Deposit(arg2, arg3, block.timestamp, msg.sender, arg1);
}

function sub_d484b267(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 >= stor4.length:
        revert with 'NH{q', 50
    if not stor4[arg1].field_1792:
        revert with 0, 'withdrawRewords: Pool not exist'
    if arg1 >= stor4.length:
        revert with 'NH{q', 50
    if block.number < stor4[arg1].field_2560:
        revert with 'NH{q', 17
    if block.number - stor4[arg1].field_2560 and stor4[arg1].field_1280 > -1 / block.number - stor4[arg1].field_2560:
        revert with 'NH{q', 17
    if not stor4[arg1].field_1024:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'withdrawRewords:rewords pool is out of use'
    if not stor4[arg1].field_1280:
        revert with 'NH{q', 18
    if stor4[arg1].field_1792 > -(stor4[arg1].field_768 / stor4[arg1].field_1280) - 1:
        revert with 'NH{q', 17
    if stor4[arg1].field_1792 + (stor4[arg1].field_768 / stor4[arg1].field_1280) < block.number:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'withdrawRewords:rewords pool is out of use'
    if stor4[arg1].field_1024 >= (block.number * stor4[arg1].field_1280) - (stor4[arg1].field_2560 * stor4[arg1].field_1280):
        if stor4[arg1].field_2048 > 0:
            if stor4[arg1].field_1024 < (block.number * stor4[arg1].field_1280) - (stor4[arg1].field_2560 * stor4[arg1].field_1280):
                revert with 'NH{q', 17
            stor4[arg1].field_1024 = stor4[arg1].field_1024 - (block.number * stor4[arg1].field_1280) + (stor4[arg1].field_2560 * stor4[arg1].field_1280)
            if not stor4[arg1].field_2048:
                revert with 'NH{q', 18
            if stor4[arg1].field_2816 > -((block.number * stor4[arg1].field_1280) - (stor4[arg1].field_2560 * stor4[arg1].field_1280) / stor4[arg1].field_2048) - 1:
                revert with 'NH{q', 17
            stor4[arg1].field_2816 += (block.number * stor4[arg1].field_1280) - (stor4[arg1].field_2560 * stor4[arg1].field_1280) / stor4[arg1].field_2048
    else:
        if stor4[arg1].field_2048 > 0:
            if stor4[arg1].field_1024 < stor4[arg1].field_1024:
                revert with 'NH{q', 17
            stor4[arg1].field_1024 = 0
            if not stor4[arg1].field_2048:
                revert with 'NH{q', 18
            if stor4[arg1].field_2816 > -(stor4[arg1].field_1024 / stor4[arg1].field_2048) - 1:
                revert with 'NH{q', 17
            stor4[arg1].field_2816 += stor4[arg1].field_1024 / stor4[arg1].field_2048
    stor4[arg1].field_2560 = block.number
    if arg1 >= stor4.length:
        revert with 'NH{q', 50
    if stor4[arg1].field_2816 and userInfos[arg1][address(msg.sender)].field_0 > -1 / stor4[arg1].field_2816:
        revert with 'NH{q', 17
    if stor4[arg1].field_2816 * userInfos[arg1][address(msg.sender)].field_0 < userInfos[arg1][address(msg.sender)].field_256:
        revert with 'NH{q', 17
    if userInfos[arg1][address(msg.sender)].field_256 > (-1 * stor4[arg1].field_2816 * userInfos[arg1][address(msg.sender)].field_0) + userInfos[arg1][address(msg.sender)].field_256 - 1:
        revert with 'NH{q', 17
    userInfos[arg1][address(msg.sender)].field_256 = stor4[arg1].field_2816 * userInfos[arg1][address(msg.sender)].field_0
    if userInfos[arg1][address(msg.sender)].field_512 > -432001:
        revert with 'NH{q', 17
    if userInfos[arg1][address(msg.sender)].field_512 + (120 * 24 * 3600) <= block.timestamp:
        if (stor4[arg1].field_2816 * userInfos[arg1][address(msg.sender)].field_0) - userInfos[arg1][address(msg.sender)].field_256 > -userInfos[arg1][address(msg.sender)].field_768 - 1:
            revert with 'NH{q', 17
        userInfos[arg1][address(msg.sender)].field_768 = 0
        if arg1 >= stor4.length:
            revert with 'NH{q', 50
        require ext_code.size(stor4[arg1].field_512)
        call stor4[arg1].field_512.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, (stor4[arg1].field_2816 * userInfos[arg1][address(msg.sender)].field_0) - userInfos[arg1][address(msg.sender)].field_256 + userInfos[arg1][address(msg.sender)].field_768
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        emit 0xb9c249b3: (stor4[arg1].field_2816 * userInfos[arg1][address(msg.sender)].field_0) - userInfos[arg1][address(msg.sender)].field_256 + userInfos[arg1][address(msg.sender)].field_768, block.timestamp, msg.sender, arg1
    else:
        if arg1 >= stor4.length:
            revert with 'NH{q', 50
        if stor4[arg1].field_1536 and (stor4[arg1].field_2816 * userInfos[arg1][address(msg.sender)].field_0) - userInfos[arg1][address(msg.sender)].field_256 > -1 / stor4[arg1].field_1536:
            revert with 'NH{q', 17
        if userInfos[arg1][address(msg.sender)].field_768 > -((stor4[arg1].field_2816 * userInfos[arg1][address(msg.sender)].field_0 * stor4[arg1].field_1536) - (userInfos[arg1][address(msg.sender)].field_256 * stor4[arg1].field_1536) / 10000) - 1:
            revert with 'NH{q', 17
        userInfos[arg1][address(msg.sender)].field_768 += (stor4[arg1].field_2816 * userInfos[arg1][address(msg.sender)].field_0 * stor4[arg1].field_1536) - (userInfos[arg1][address(msg.sender)].field_256 * stor4[arg1].field_1536) / 10000
        if (stor4[arg1].field_2816 * userInfos[arg1][address(msg.sender)].field_0) - userInfos[arg1][address(msg.sender)].field_256 < (stor4[arg1].field_2816 * userInfos[arg1][address(msg.sender)].field_0 * stor4[arg1].field_1536) - (userInfos[arg1][address(msg.sender)].field_256 * stor4[arg1].field_1536) / 10000:
            revert with 'NH{q', 17
        if arg1 >= stor4.length:
            revert with 'NH{q', 50
        require ext_code.size(stor4[arg1].field_512)
        call stor4[arg1].field_512.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, (stor4[arg1].field_2816 * userInfos[arg1][address(msg.sender)].field_0) - userInfos[arg1][address(msg.sender)].field_256 - ((stor4[arg1].field_2816 * userInfos[arg1][address(msg.sender)].field_0 * stor4[arg1].field_1536) - (userInfos[arg1][address(msg.sender)].field_256 * stor4[arg1].field_1536) / 10000)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        emit 0xb9c249b3: (stor4[arg1].field_2816 * userInfos[arg1][address(msg.sender)].field_0) - userInfos[arg1][address(msg.sender)].field_256 - ((stor4[arg1].field_2816 * userInfos[arg1][address(msg.sender)].field_0 * stor4[arg1].field_1536) - (userInfos[arg1][address(msg.sender)].field_256 * stor4[arg1].field_1536) / 10000), block.timestamp, msg.sender, arg1
}

function sub_95782e35(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if sub_25fabb20[arg2] != arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'withdrawNft: PoolId and tokenId not match'
    if arg1 >= stor4.length:
        revert with 'NH{q', 50
    if not stor4[arg1].field_1792:
        revert with 0, 'withdrawNft: Pool not exist'
    if sub_b922f94c[arg2] != msg.sender:
        revert with 0, 'withdrawNft: Nft not owned'
    if arg1 >= stor4.length:
        revert with 'NH{q', 50
    if not stor4[arg1].field_1792:
        revert with 0, 'withdrawRewords: Pool not exist'
    if arg1 >= stor4.length:
        revert with 'NH{q', 50
    if block.number < stor4[arg1].field_2560:
        revert with 'NH{q', 17
    if block.number - stor4[arg1].field_2560 and stor4[arg1].field_1280 > -1 / block.number - stor4[arg1].field_2560:
        revert with 'NH{q', 17
    if not stor4[arg1].field_1024:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'withdrawRewords:rewords pool is out of use'
    if not stor4[arg1].field_1280:
        revert with 'NH{q', 18
    if stor4[arg1].field_1792 > -(stor4[arg1].field_768 / stor4[arg1].field_1280) - 1:
        revert with 'NH{q', 17
    if stor4[arg1].field_1792 + (stor4[arg1].field_768 / stor4[arg1].field_1280) < block.number:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'withdrawRewords:rewords pool is out of use'
    if stor4[arg1].field_1024 >= (block.number * stor4[arg1].field_1280) - (stor4[arg1].field_2560 * stor4[arg1].field_1280):
        if stor4[arg1].field_2048 > 0:
            if stor4[arg1].field_1024 < (block.number * stor4[arg1].field_1280) - (stor4[arg1].field_2560 * stor4[arg1].field_1280):
                revert with 'NH{q', 17
            stor4[arg1].field_1024 = stor4[arg1].field_1024 - (block.number * stor4[arg1].field_1280) + (stor4[arg1].field_2560 * stor4[arg1].field_1280)
            if not stor4[arg1].field_2048:
                revert with 'NH{q', 18
            if stor4[arg1].field_2816 > -((block.number * stor4[arg1].field_1280) - (stor4[arg1].field_2560 * stor4[arg1].field_1280) / stor4[arg1].field_2048) - 1:
                revert with 'NH{q', 17
            stor4[arg1].field_2816 += (block.number * stor4[arg1].field_1280) - (stor4[arg1].field_2560 * stor4[arg1].field_1280) / stor4[arg1].field_2048
    else:
        if stor4[arg1].field_2048 > 0:
            if stor4[arg1].field_1024 < stor4[arg1].field_1024:
                revert with 'NH{q', 17
            stor4[arg1].field_1024 = 0
            if not stor4[arg1].field_2048:
                revert with 'NH{q', 18
            if stor4[arg1].field_2816 > -(stor4[arg1].field_1024 / stor4[arg1].field_2048) - 1:
                revert with 'NH{q', 17
            stor4[arg1].field_2816 += stor4[arg1].field_1024 / stor4[arg1].field_2048
    stor4[arg1].field_2560 = block.number
    if arg1 >= stor4.length:
        revert with 'NH{q', 50
    if stor4[arg1].field_2816 and userInfos[arg1][address(msg.sender)].field_0 > -1 / stor4[arg1].field_2816:
        revert with 'NH{q', 17
    if stor4[arg1].field_2816 * userInfos[arg1][address(msg.sender)].field_0 < userInfos[arg1][address(msg.sender)].field_256:
        revert with 'NH{q', 17
    if userInfos[arg1][address(msg.sender)].field_256 > (-1 * stor4[arg1].field_2816 * userInfos[arg1][address(msg.sender)].field_0) + userInfos[arg1][address(msg.sender)].field_256 - 1:
        revert with 'NH{q', 17
    userInfos[arg1][address(msg.sender)].field_256 = stor4[arg1].field_2816 * userInfos[arg1][address(msg.sender)].field_0
    if userInfos[arg1][address(msg.sender)].field_512 > -432001:
        revert with 'NH{q', 17
    if userInfos[arg1][address(msg.sender)].field_512 + (120 * 24 * 3600) <= block.timestamp:
        if (stor4[arg1].field_2816 * userInfos[arg1][address(msg.sender)].field_0) - userInfos[arg1][address(msg.sender)].field_256 > -userInfos[arg1][address(msg.sender)].field_768 - 1:
            revert with 'NH{q', 17
        userInfos[arg1][address(msg.sender)].field_768 = 0
        if arg1 >= stor4.length:
            revert with 'NH{q', 50
        require ext_code.size(stor4[arg1].field_512)
        call stor4[arg1].field_512.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, (stor4[arg1].field_2816 * userInfos[arg1][address(msg.sender)].field_0) - userInfos[arg1][address(msg.sender)].field_256 + userInfos[arg1][address(msg.sender)].field_768
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        emit 0xb9c249b3: (stor4[arg1].field_2816 * userInfos[arg1][address(msg.sender)].field_0) - userInfos[arg1][address(msg.sender)].field_256 + userInfos[arg1][address(msg.sender)].field_768, block.timestamp, msg.sender, arg1
    else:
        if arg1 >= stor4.length:
            revert with 'NH{q', 50
        if stor4[arg1].field_1536 and (stor4[arg1].field_2816 * userInfos[arg1][address(msg.sender)].field_0) - userInfos[arg1][address(msg.sender)].field_256 > -1 / stor4[arg1].field_1536:
            revert with 'NH{q', 17
        if userInfos[arg1][address(msg.sender)].field_768 > -((stor4[arg1].field_2816 * userInfos[arg1][address(msg.sender)].field_0 * stor4[arg1].field_1536) - (userInfos[arg1][address(msg.sender)].field_256 * stor4[arg1].field_1536) / 10000) - 1:
            revert with 'NH{q', 17
        userInfos[arg1][address(msg.sender)].field_768 += (stor4[arg1].field_2816 * userInfos[arg1][address(msg.sender)].field_0 * stor4[arg1].field_1536) - (userInfos[arg1][address(msg.sender)].field_256 * stor4[arg1].field_1536) / 10000
        if (stor4[arg1].field_2816 * userInfos[arg1][address(msg.sender)].field_0) - userInfos[arg1][address(msg.sender)].field_256 < (stor4[arg1].field_2816 * userInfos[arg1][address(msg.sender)].field_0 * stor4[arg1].field_1536) - (userInfos[arg1][address(msg.sender)].field_256 * stor4[arg1].field_1536) / 10000:
            revert with 'NH{q', 17
        if arg1 >= stor4.length:
            revert with 'NH{q', 50
        require ext_code.size(stor4[arg1].field_512)
        call stor4[arg1].field_512.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, (stor4[arg1].field_2816 * userInfos[arg1][address(msg.sender)].field_0) - userInfos[arg1][address(msg.sender)].field_256 - ((stor4[arg1].field_2816 * userInfos[arg1][address(msg.sender)].field_0 * stor4[arg1].field_1536) - (userInfos[arg1][address(msg.sender)].field_256 * stor4[arg1].field_1536) / 10000)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        emit 0xb9c249b3: (stor4[arg1].field_2816 * userInfos[arg1][address(msg.sender)].field_0) - userInfos[arg1][address(msg.sender)].field_256 - ((stor4[arg1].field_2816 * userInfos[arg1][address(msg.sender)].field_0 * stor4[arg1].field_1536) - (userInfos[arg1][address(msg.sender)].field_256 * stor4[arg1].field_1536) / 10000), block.timestamp, msg.sender, arg1
    if arg1 >= stor4.length:
        revert with 'NH{q', 50
    if stor4[arg1].field_2048 < sub_e1523328[stor8[arg2]]:
        revert with 'NH{q', 17
    stor4[arg1].field_2048 -= sub_e1523328[stor8[arg2]]
    if userInfos[arg1][address(msg.sender)].field_0 < sub_e1523328[stor8[arg2]]:
        revert with 'NH{q', 17
    userInfos[arg1][address(msg.sender)].field_0 -= sub_e1523328[stor8[arg2]]
    if userInfos[arg1][address(msg.sender)].field_0:
        if arg1 >= stor4.length:
            revert with 'NH{q', 50
        if sub_e1523328[stor8[arg2]] and stor4[arg1].field_2816 > -1 / sub_e1523328[stor8[arg2]]:
            revert with 'NH{q', 17
        if userInfos[arg1][address(msg.sender)].field_256 < sub_e1523328[stor8[arg2]] * stor4[arg1].field_2816:
            revert with 'NH{q', 17
        userInfos[arg1][address(msg.sender)].field_256 += -1 * sub_e1523328[stor8[arg2]] * stor4[arg1].field_2816
    else:
        userInfos[arg1][address(msg.sender)].field_0 = 0
        userInfos[arg1][address(msg.sender)].field_256 = 0
        userInfos[arg1][address(msg.sender)].field_512 = 0
        userInfos[arg1][address(msg.sender)].field_768 = 0
    require ext_code.size(sub_14e0f2aeAddress)
    call sub_14e0f2aeAddress.0x23b872dd with:
         gas gas_remaining wei
        args address(this.address), msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if arg1 >= stor4.length:
        revert with 'NH{q', 50
    if not stor4[arg1].field_2304:
        revert with 'NH{q', 17
    stor4[arg1].field_2304--
    sub_b922f94c[arg2] = 0
    sub_25fabb20[arg2] = 0
    emit 0x9dc7a517: arg2, block.timestamp, msg.sender, arg1
}



}
