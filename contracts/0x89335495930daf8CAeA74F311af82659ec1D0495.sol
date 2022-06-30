contract main {




// =====================  Runtime code  =====================


#
#  - refundAmount(uint256 arg1)
#
uint256 stor0;
address owner;
uint32 stor2;
address stor2;
uint256 stor2;
address stor3;
address pancakeRouterAddress;
address sub_a9ea6d8aAddress;
address stor6;
address tokenAddress;
mapping of struct stakeInfo;
uint256 totalStakers;
uint256 sub_9e722a89;
address treasuryAddress;
mapping of address stor99;

function getStakeInfo(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return uint256(stakeInfo[arg1].field_0), 
           uint256(stakeInfo[arg1].field_256),
           bool(uint8(stakeInfo[arg1].field_512)),
           stakeInfo[arg1].field_512,
           stakeInfo[arg1].field_768,
           uint256(stakeInfo[arg1].field_1024),
           uint256(stakeInfo[arg1].field_1280),
           uint256(stakeInfo[arg1].field_1536),
           uint256(stakeInfo[arg1].field_1792),
           uint256(stakeInfo[arg1].field_2048),
           uint256(stakeInfo[arg1].field_2304),
           uint256(stakeInfo[arg1].field_2560),
           uint256(stakeInfo[arg1].field_2816),
           uint256(stakeInfo[arg1].field_3072)
}

function sub_563fa3a0(?) payable {
    return sub_9e722a89
}

function totalStakers() payable {
    return totalStakers
}

function owner() payable {
    return owner
}

function tokenAddress() payable {
    return tokenAddress
}

function sub_9e722a89(?) payable {
    return sub_9e722a89
}

function sub_a9ea6d8a(?) payable {
    return sub_a9ea6d8aAddress
}

function pancakeRouter() payable {
    return pancakeRouterAddress
}

function treasuryAddress() payable {
    return treasuryAddress
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

function getLatestPrice() payable {
    require ext_code.size(stor3)
    staticcall stor3.latestRoundData() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[22 len 10]
    require ext_call.return_data[128] == ext_call.return_data[150 len 10]
    return ext_call.return_data[32]
}

function sendNFT(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    require ext_code.size(stor6)
    call stor6.0x23b872dd with:
         gas gas_remaining wei
        args address(this.address), address(arg2), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor0 = 1
}

function sub_957d9c26(?) payable {
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require msg.sender
    require address(arg2)
    if not arg1:
        revert with 0, 'Invalid token id'
    uint8(stakeInfo[arg1].field_512) = 0
    require ext_code.size(stor6)
    call stor6.0x23b872dd with:
         gas gas_remaining wei
        args address(this.address), address(arg2), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_1c043104(?) payable {
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
    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 9
    mem[ceil32(ceil32(arg1.length)) + 97] = stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])]
    return memory
      from ceil32(ceil32(arg1.length)) + 97
       len 32
}

function unStakeNFT(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    if not msg.sender:
        revert with 0, 'Zero address'
    if not arg1:
        revert with 0, 'Invalid token id'
    if stakeInfo[arg1].field_768 != msg.sender:
        revert with 0, 'NOT OWNER'
    if not uint256(stakeInfo[arg1].field_0):
        revert with 0, 'Token if not found'
    uint8(stakeInfo[arg1].field_512) = 0
    require ext_code.size(stor6)
    call stor6.0x23b872dd with:
         gas gas_remaining wei
        args address(this.address), msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if totalStakers < 1:
        revert with 0, 17
    totalStakers--
    if sub_9e722a89 < uint256(stakeInfo[arg1].field_1024):
        revert with 0, 17
    sub_9e722a89 -= uint256(stakeInfo[arg1].field_1024)
    stor0 = 1
}

function sub_730b99b9(?) payable {
    require calldata.size - 4 >= 160
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    if arg5.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg5.length)) + 97 < 96 or ceil32(ceil32(arg5.length)) + 97 > test266151307():
        revert with 0, 65
    require arg5 + arg5.length + 36 <= calldata.size
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    if not msg.sender:
        revert with 0, 'Zero address'
    if not arg1:
        revert with 0, 'Invalid token id'
    require ext_code.size(stor6)
    staticcall stor6.0x6352211e with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'NOT OWNER'
    if arg2 > 7:
        revert with 0, 'Invalid slot index'
    require ext_code.size(stor6)
    call stor6.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor[Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 9)][Mask(8 * ceil32(arg5.length), -(8 * ceil32(arg5.length)) + 256, arg5[all], ext_call.return_data[arg5.length + -ceil32(ceil32(arg5.length)) + 31 len ceil32(arg5.length) - arg5.length]) << (8 * ceil32(arg5.length)) - 256] = msg.sender
    uint256(stakeInfo[arg1].field_0) = arg1
    uint256(stakeInfo[arg1].field_768) = msg.sender or Mask(96, 160, uint256(stakeInfo[arg1].field_768))
    uint256(stakeInfo[arg1].field_256) = arg2
    uint256(stakeInfo[arg1].field_1024) = arg3
    uint256(stakeInfo[arg1].field_1792) = arg4
    uint256(stakeInfo[arg1].field_2816) = 0
    uint8(stakeInfo[arg1].field_512) = 1
    Mask(248, 0, stakeInfo[arg1].field_520) = stakeInfo[arg1].field_768
    uint256(stakeInfo[arg1].field_2048) = block.timestamp
    if totalStakers > -2:
        revert with 0, 17
    totalStakers++
    if sub_9e722a89 > !arg3:
        revert with 0, 17
    sub_9e722a89 += arg3
    stor0 = 1
}

function refund() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[100] = this.address
    require ext_code.size(sub_a9ea6d8aAddress)
    staticcall sub_a9ea6d8aAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 132] = address(stor2)
    mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor2)
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
    mem[ceil32(return_data.size) + 196] = 32
    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(sub_a9ea6d8aAddress):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor2), uint32(stor2), ext_call.return_data[0], 0
    mem[ceil32(return_data.size) + 328] = 0
    call sub_a9ea6d8aAddress with:
       funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor2), uint32(stor2), ext_call.return_data[0], 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor2), uint32(stor2), ext_call.return_data[0], 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
            if not uint32(this.address), mem[132 len 28]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
            if not mem[ceil32(return_data.size) + 292]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
}

function sub_12ecc7b7(?) payable {
    require calldata.size - 4 >= 32
    mem[96] = 2
    require ext_code.size(pancakeRouterAddress)
    staticcall pancakeRouterAddress.WETH() with:
            gas gas_remaining wei
    mem[192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[128] = ext_call.return_data[12 len 20]
    mem[160] = tokenAddress
    mem[ceil32(return_data.size) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 196] = arg1
    mem[ceil32(return_data.size) + 228] = 64
    mem[ceil32(return_data.size) + 260] = 2
    idx = 0
    s = ceil32(return_data.size) + 292
    t = 128
    while idx < 2:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(pancakeRouterAddress)
    staticcall pancakeRouterAddress.getAmountsIn(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args arg1, Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 192
    require return_data.size >= 32
    _24 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32
    require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
    _25 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]
    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 193 > test266151307():
        revert with 0, 65
    mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 193
    mem[(2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]
    require return_data.size >= _24 + (32 * _25) + 32
    mem[(2 * ceil32(return_data.size)) + 224 len 32 * _25] = mem[ceil32(return_data.size) + _24 + 224 len 32 * _25]
    if 0 >= _25:
        revert with 0, 50
    mem[mem[64]] = mem[(2 * ceil32(return_data.size)) + 224]
    return memory
      from mem[64]
       len 32
}

function getAmountOutMin(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    mem[96] = 2
    require ext_code.size(pancakeRouterAddress)
    staticcall pancakeRouterAddress.WETH() with:
            gas gas_remaining wei
    mem[192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[128] = ext_call.return_data[12 len 20]
    mem[160] = tokenAddress
    mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 196] = arg1
    mem[ceil32(return_data.size) + 228] = 64
    mem[ceil32(return_data.size) + 260] = 2
    idx = 0
    s = ceil32(return_data.size) + 292
    t = 128
    while idx < 2:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(pancakeRouterAddress)
    staticcall pancakeRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args arg1, Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 192
    require return_data.size >= 32
    _25 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32
    require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
    _26 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]
    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 193 > test266151307():
        revert with 0, 65
    mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 193
    mem[(2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]
    require return_data.size >= _25 + (32 * _26) + 32
    mem[(2 * ceil32(return_data.size)) + 224 len 32 * _26] = mem[ceil32(return_data.size) + _25 + 224 len 32 * _26]
    if 1 >= _26:
        revert with 0, 50
    mem[mem[64]] = mem[(2 * ceil32(return_data.size)) + 256]
    return memory
      from mem[64]
       len 32
}

function sub_0b1ee567(?) payable {
    require calldata.size - 4 >= 96
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg2.length)) + 97 < 96 or ceil32(ceil32(arg2.length)) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg2.length
    require arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg3.length)) + 98 < 97 or ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + 98 > test266151307():
        revert with 0, 65
    mem[ceil32(ceil32(arg2.length)) + 97] = arg3.length
    require arg3 + arg3.length + 36 <= calldata.size
    mem[ceil32(ceil32(arg2.length)) + 129 len arg3.length] = arg3[all]
    mem[ceil32(ceil32(arg2.length)) + arg3.length + 129] = 0
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + 98 len ceil32(arg2.length)] = arg2[all], Mask(8 * ceil32(arg2.length) - arg2.length, -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256, arg3.length) >> -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256
    mem[arg2.length + ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + 98] = 9
    if stor[Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 9)][Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], Mask(8 * ceil32(arg2.length) - arg2.length, -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256, arg3.length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg2.length)) + (8 * ceil32(ceil32(arg2.length))) + 256) << (8 * ceil32(arg2.length)) - 256] != msg.sender:
        revert with 0, 'Invalid pin id'
    mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + 102] = this.address
    require ext_code.size(sub_a9ea6d8aAddress)
    staticcall sub_a9ea6d8aAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + 98] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not msg.sender:
        revert with 0, 'Zero address'
    if not arg1:
        revert with 0, 'Zero amount'
    if not ext_call.return_data[0]:
        revert with 0, 'Zero pool balance'
    mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 98 len ceil32(arg3.length)] = arg3[all], ext_call.return_data[arg3.length + -ceil32(ceil32(arg3.length)) + 31 len ceil32(arg3.length) - arg3.length]
    mem[arg3.length + ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 98] = 9
    stor[Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 9)][Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], ext_call.return_data[arg3.length + -ceil32(ceil32(arg3.length)) + 31 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256] = msg.sender
    mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 134] = msg.sender
    mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 98] = 68
    mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 130 len 4] = unknown_0xa9059cbb(?????)
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(sub_a9ea6d8aAddress):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 262 len 96] = 0, msg.sender, arg1, 0
    call sub_a9ea6d8aAddress with:
       funct Mask(32, 224, 0, msg.sender, arg1, 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, 0, msg.sender, arg1, 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if arg2.length:
                revert with arg2[all]
            revert with 0, 'SafeERC20: low-level call failed'
        if arg2.length:
            require arg2.length >= 32
            require mem[128] == bool(mem[128])
            if not mem[128]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 294 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 294] == bool(mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 294])
            if not mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 294]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    stor0 = 1
}



}
