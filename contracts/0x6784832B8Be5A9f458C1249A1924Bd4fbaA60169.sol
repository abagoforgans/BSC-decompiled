contract main {




// =====================  Runtime code  =====================


#
#  - buy(uint256 arg1)
#
address owner;
mapping of uint8 stor1;
mapping of uint8 stor2;
address exchangeTokenAddress;
mapping of uint256 stor4;
mapping of uint256 stor5;
uint256 stor6;
mapping of struct order;
uint256 totalOrder;
uint256 stor9;

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    return bool(stor2[Mask(32, 224, arg1)])
}

function totalOrder() payable {
    return totalOrder
}

function isAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor1[address(arg1)])
}

function admins(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor1[arg1])
}

function owner() payable {
    return owner
}

function exchangeToken() payable {
    return exchangeTokenAddress
}

function getOrder(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return order[arg1].field_0, order[arg1].field_256, order[arg1].field_512, order[arg1].field_768, order[arg1].field_1024
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function addAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor1[address(arg1)] = 1
}

function removeAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor1[address(arg1)] = 0
}

function setPrice(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not order[arg1].field_0:
        revert with 0, 'BestNftExchange: bad id'
    if order[arg1].field_768 != msg.sender:
        revert with 0, 'BestNftExchange: not order owner'
    order[arg1].field_1024 = arg2
    emit PriceUpdated(arg1, arg2);
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

function withdrawAmount(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require stor1[msg.sender]
    require ext_code.size(exchangeTokenAddress)
    call exchangeTokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function withdrawAll() payable {
    require stor1[msg.sender]
    require ext_code.size(exchangeTokenAddress)
    staticcall exchangeTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require stor1[msg.sender]
    require ext_code.size(exchangeTokenAddress)
    call exchangeTokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function revoke(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not order[arg1].field_0:
        revert with 0, 'BestNftExchange: bad id'
    if order[arg1].field_768 != msg.sender:
        revert with 0, 'BestNftExchange: not order owner'
    require ext_code.size(order[arg1].field_0)
    call order[arg1].field_0.0xf242432a with:
         gas gas_remaining wei
        args address(this.address), msg.sender, order[arg1].field_256, order[arg1].field_512, 160, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    order[arg1].field_0 = 0
    order[arg1].field_256 = 0
    order[arg1].field_512 = 0
    order[arg1].field_768 = 0
    order[arg1].field_1024 = 0
    if arg1 == stor6:
        stor6 = stor5[arg1]
    stor4[stor5[arg1]] = stor4[arg1]
    stor5[stor4[arg1]] = stor5[arg1]
    stor4[arg1] = 0
    stor5[arg1] = 0
    totalOrder--
    emit OrderRemoved(arg1);
}

function onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    require arg5.length <= test266151307()
    require arg5 + arg5.length + 36 <= calldata.size
    if not arg5.length:
        order[stor9].field_0 = msg.sender
        order[stor9].field_256 = arg3
        order[stor9].field_512 = arg4
        order[stor9].field_768 = arg2
        order[stor9].field_1024 = 0
        stor4[stor6] = stor9
        stor5[stor9] = stor6
        stor6 = stor9
        stor9++
        totalOrder++
        emit OrderAdded(stor9, arg3, arg4, 0, msg.sender, arg2);
    else:
        require arg5.length >= 32
        order[stor9].field_0 = msg.sender
        order[stor9].field_256 = arg3
        order[stor9].field_512 = arg4
        order[stor9].field_768 = arg2
        order[stor9].field_1024 = cd[(arg5 + 36)]
        stor4[stor6] = stor9
        stor5[stor9] = stor6
        stor6 = stor9
        stor9++
        totalOrder++
        emit OrderAdded(stor9, arg3, arg4, cd[(arg5 + 36)], msg.sender, arg2);
    return 0xf23a6e6100000000000000000000000000000000000000000000000000000000
}

function onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) payable {
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
    require arg5.length >= 32
    require cd[(arg5 + 36)] <= test266151307()
    require arg5 + cd[(arg5 + 36)] + 67 < arg5 + arg5.length + 36
    require cd[(arg5 + cd[(arg5 + 36)] + 36)] <= test266151307()
    require (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128 >= 96 and (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128 <= test266151307()
    mem[64] = (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128
    mem[96] = cd[(arg5 + cd[(arg5 + 36)] + 36)]
    require arg5.length + 36 >= cd[(arg5 + 36)] + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 68
    s = arg5 + cd[(arg5 + 36)] + 68
    t = 128
    idx = 0
    while idx < cd[(arg5 + cd[(arg5 + 36)] + 36)]:
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    if arg3.length != cd[(arg5 + cd[(arg5 + 36)] + 36)]:
        revert with 0, 'BestNftExchange: prices count mismatch'
    idx = 0
    while idx < arg3.length:
        require idx < arg4.length
        require idx < mem[96]
        _41 = mem[(32 * idx) + 128]
        _42 = mem[64]
        mem[64] = mem[64] + 160
        mem[_42] = msg.sender
        mem[_42 + 32] = cd[((32 * idx) + arg3 + 36)]
        mem[_42 + 64] = cd[((32 * idx) + arg4 + 36)]
        mem[_42 + 96] = arg2
        mem[_42 + 128] = _41
        order[stor9].field_0 = msg.sender
        order[stor9].field_256 = cd[((32 * idx) + arg3 + 36)]
        order[stor9].field_512 = cd[((32 * idx) + arg4 + 36)]
        order[stor9].field_768 = arg2
        order[stor9].field_1024 = _41
        stor4[stor6] = stor9
        mem[0] = stor9
        mem[32] = 5
        stor5[stor9] = stor6
        stor6 = stor9
        stor9++
        totalOrder++
        mem[mem[64]] = stor9
        mem[mem[64] + 32] = cd[((32 * idx) + arg3 + 36)]
        mem[mem[64] + 64] = cd[((32 * idx) + arg4 + 36)]
        mem[mem[64] + 96] = _41
        emit OrderAdded(stor9, cd[((32 * idx) + arg3 + 36)], cd[((32 * idx) + arg4 + 36)], _41, msg.sender, arg2);
        idx = idx + 1
        continue 
    return 0xbc197c8100000000000000000000000000000000000000000000000000000000
}

function getOrders() payable {
    require totalOrder <= test266151307()
    mem[96] = totalOrder
    mem[64] = (32 * totalOrder) + 128
    if not totalOrder:
        mem[0] = 0
        mem[32] = 4
        idx = stor4[0]
        s = 0
        while idx:
            mem[0] = idx
            mem[32] = 7
            _30 = mem[64]
            mem[64] = mem[64] + 160
            mem[_30] = order[idx].field_0
            mem[_30 + 32] = order[idx].field_256
            mem[_30 + 64] = order[idx].field_512
            mem[_30 + 96] = order[idx].field_768
            mem[_30 + 128] = order[idx].field_1024
            require s < mem[96]
            mem[(32 * s) + 128] = _30
            mem[0] = idx
            mem[32] = 4
            idx = stor4[idx]
            s = s + 1
            continue 
        _33 = mem[64]
        mem[mem[64]] = 32
        _35 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = mem[64] + 64
        t = 128
        while idx < _35:
            _57 = mem[t]
            mem[s] = mem[mem[t] + 12 len 20]
            mem[s + 32] = mem[_57 + 32]
            mem[s + 64] = mem[_57 + 64]
            mem[s + 96] = mem[_57 + 108 len 20]
            mem[s + 128] = mem[_57 + 128]
            idx = idx + 1
            s = s + 160
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _33 + (160 * _35) + -mem[64] + 64
    mem[64] = (32 * totalOrder) + 288
    mem[(32 * totalOrder) + 128] = 0
    mem[(32 * totalOrder) + 160] = 0
    mem[(32 * totalOrder) + 192] = 0
    mem[(32 * totalOrder) + 224] = 0
    mem[(32 * totalOrder) + 256] = 0
    mem[var8001] = (32 * totalOrder) + 128
    s = var8001
    idx = var8002
    while idx - 1:
        mem[64] = mem[64] + 160
        mem[(32 * totalOrder) + 128] = 0
        mem[(32 * totalOrder) + 160] = 0
        mem[(32 * totalOrder) + 192] = 0
        mem[(32 * totalOrder) + 224] = 0
        mem[(32 * totalOrder) + 256] = 0
        mem[s + 32] = (32 * totalOrder) + 128
        s = s + 32
        idx = idx - 1
        continue 
    mem[0] = 0
    mem[32] = 4
    idx = stor4[0]
    s = 0
    while idx:
        mem[0] = idx
        mem[32] = 7
        _78 = mem[64]
        mem[64] = mem[64] + 160
        mem[_78] = order[idx].field_0
        mem[_78 + 32] = order[idx].field_256
        mem[_78 + 64] = order[idx].field_512
        mem[_78 + 96] = order[idx].field_768
        mem[_78 + 128] = order[idx].field_1024
        require s < mem[96]
        mem[(32 * s) + 128] = _78
        mem[0] = idx
        mem[32] = 4
        idx = stor4[idx]
        s = s + 1
        continue 
    _80 = mem[64]
    mem[mem[64]] = 32
    _82 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < _82:
        _90 = mem[t]
        mem[s] = mem[mem[t] + 12 len 20]
        mem[s + 32] = mem[_90 + 32]
        mem[s + 64] = mem[_90 + 64]
        mem[s + 96] = mem[_90 + 108 len 20]
        mem[s + 128] = mem[_90 + 128]
        idx = idx + 1
        s = s + 160
        t = t + 32
        continue 
    return memory
      from mem[64]
       len _80 + (160 * _82) + -mem[64] + 64
}



}
