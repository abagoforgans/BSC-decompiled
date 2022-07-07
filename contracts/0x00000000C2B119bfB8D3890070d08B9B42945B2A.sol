contract main {




// =====================  Runtime code  =====================


#
#  - approveToken(address arg1, address arg2, uint256 arg3)
#  - transferTokenFrom(address arg1, address arg2, address arg3, uint256 arg4)
#  - transferToken(address arg1, address arg2, uint256 arg3)
#
address owner;
mapping of uint8 stor1;
address stor2;

function owner() {
    return owner
}

function isMember(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor1[address(arg1)])
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function removeMember(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor1[address(arg1)] = 0
}

function addMember(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor1[address(arg1)]:
        stor1[address(arg1)] = 1
}

function transferETH(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call arg1 with:
       value arg2 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'TransferHelper: ETH_TRANSFER_FAILED'
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function addMembers(address[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg1.length) + 97 > test266151307() or floor32(arg1.length) + 97 < 96:
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
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < arg1.length:
        if idx >= arg1.length:
            revert with 'NH{q', 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 1
        if not stor1[mem[(32 * idx) + 140 len 20]]:
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 1
            stor1[address(mem[(32 * idx) + 128])] = 1
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_a0a073a9(?) {
    require calldata.size - 4 >= 160
    require cd[4] == cd[4]
    require cd[36] == cd[36]
    require cd[68] == address(cd[68])
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    require ('cd', 100).length <= test266151307()
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    require cd[132] == cd[132]
    mem[0] = msg.sender
    mem[32] = 1
    if bool(stor1[address(msg.sender)]) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'OnlyMember: caller is not a member'
    mem[96] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
    mem[100] = cd[4]
    mem[132] = cd[36]
    mem[164] = 160
    mem[260] = ('cd', 100).length
    idx = 0
    s = cd[100] + 36
    t = 292
    while idx < ('cd', 100).length:
        require cd[s] == address(cd[s])
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[196] = address(cd[68])
    mem[228] = cd[132]
    require ext_code.size(stor2)
    call stor2.swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args cd[4], cd[36], Array(len=('cd', 100).length, data=mem[292 len 32 * ('cd', 100).length]), address(cd[68]), cd[132]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _17 = mem[96 len 4], Mask(224, 32, cd[4]) >> 32
    require mem[96 len 4], Mask(224, 32, cd[4]) >> 32 <= test266151307()
    require mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 127 < return_data.size + 96
    _18 = mem[mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]
    if mem[mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 96] > test266151307():
        revert with 'NH{q', 65
    if ceil32(return_data.size) + floor32(mem[mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]) + 97 > test266151307() or floor32(mem[mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = ceil32(return_data.size) + floor32(mem[mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]) + 97
    mem[ceil32(return_data.size) + 96] = _18
    require _17 + (32 * _18) + 32 <= return_data.size
    idx = 0
    s = _17 + 128
    t = ceil32(return_data.size) + 128
    while idx < _18:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64]] = 32
    mem[mem[64] + 32] = _18
    mem[mem[64] + 64 len 32 * _18] = mem[ceil32(return_data.size) + 128 len 32 * _18]
    return Array(len=_18, data=mem[mem[64] + 64 len 32 * _18])
}

function sub_cb06403f(?) {
    require calldata.size - 4 >= 160
    require cd[4] == cd[4]
    require cd[36] == cd[36]
    require cd[68] == address(cd[68])
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    require ('cd', 100).length <= test266151307()
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    require cd[132] == cd[132]
    mem[0] = msg.sender
    mem[32] = 1
    if bool(stor1[address(msg.sender)]) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'OnlyMember: caller is not a member'
    mem[96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[100] = cd[4]
    mem[132] = cd[36]
    mem[164] = 160
    mem[260] = ('cd', 100).length
    idx = 0
    s = cd[100] + 36
    t = 292
    while idx < ('cd', 100).length:
        require cd[s] == address(cd[s])
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[196] = address(cd[68])
    mem[228] = cd[132]
    require ext_code.size(stor2)
    call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args cd[4], cd[36], Array(len=('cd', 100).length, data=mem[292 len 32 * ('cd', 100).length]), address(cd[68]), cd[132]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _17 = mem[96 len 4], Mask(224, 32, cd[4]) >> 32
    require mem[96 len 4], Mask(224, 32, cd[4]) >> 32 <= test266151307()
    require mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 127 < return_data.size + 96
    _18 = mem[mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]
    if mem[mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 96] > test266151307():
        revert with 'NH{q', 65
    if ceil32(return_data.size) + floor32(mem[mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]) + 97 > test266151307() or floor32(mem[mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = ceil32(return_data.size) + floor32(mem[mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]) + 97
    mem[ceil32(return_data.size) + 96] = _18
    require _17 + (32 * _18) + 32 <= return_data.size
    idx = 0
    s = _17 + 128
    t = ceil32(return_data.size) + 128
    while idx < _18:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64]] = 32
    mem[mem[64] + 32] = _18
    mem[mem[64] + 64 len 32 * _18] = mem[ceil32(return_data.size) + 128 len 32 * _18]
    return Array(len=_18, data=mem[mem[64] + 64 len 32 * _18])
}



}
