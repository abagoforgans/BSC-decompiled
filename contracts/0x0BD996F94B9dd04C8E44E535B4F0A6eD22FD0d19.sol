contract main {




// =====================  Runtime code  =====================


#
#  - sub_aacb3d86(?)
#
uint8 stor0; offset 160
uint128 stor0; offset 160
address owner;
address nftAddress;
address sub_86c2ef68Address;
array of struct stor3;
mapping of uint256 stor4;
array of struct stor5;
mapping of uint256 stor6;
address feePoolAddress;
address wbnbAddress;
array of address sub_b1dcffad;
address routerAddress;
uint256 sub_afc903ba;
mapping of address stor12;
array of uint256 stor13;

function nft() {
    return nftAddress
}

function paused() {
    return bool(uint8(stor0.field_160))
}

function getAskLength() {
    return stor3.length
}

function sub_86c2ef68(?) {
    return sub_86c2ef68Address
}

function wbnb() {
    return wbnbAddress
}

function owner() {
    return owner
}

function feePool() {
    return feePoolAddress
}

function sub_afc903ba(?) {
    return sub_afc903ba
}

function sub_b1dcffad(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < sub_b1dcffad.length
    return sub_b1dcffad[arg1]
}

function router() {
    return routerAddress
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_13791535(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_afc903ba = arg1
}

function setRouter(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    routerAddress = arg1
}

function setFeePool(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    feePoolAddress = arg1
}

function pause() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if uint8(stor0.field_160):
        revert with 0, 'Pausable: paused'
    Mask(96, 0, stor0.field_160) = 1
    emit Paused(msg.sender);
}

function unpause() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not uint8(stor0.field_160):
        revert with 0, 'Pausable: not paused'
    Mask(96, 0, stor0.field_160) = 0
    emit Unpaused(msg.sender);
}

function sub_2e6c99de(?) {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require ceil32(arg4.length) + 128 <= test266151307() and ceil32(arg4.length) + 128 >= 96
    require arg4 + arg4.length + 36 <= calldata.size
    mem[ceil32(arg4.length) + 128] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
    return Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
}

function setCurrentPrice(uint256 arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if uint8(stor0.field_160):
        revert with 0, 'Pausable: paused'
    if not stor13[address(msg.sender)][1][arg1]:
        revert with 0, 'Only Seller can update price'
    if arg2 <= 0:
        revert with 0, 'Price must be granter than zero'
    if arg3 <= 0:
        revert with 0, 'Price must be granter than zero'
    if stor6[arg1]:
        require stor6[arg1] - 1 < stor5.length
        stor5[stor6[arg1] - 1].field_256 = arg3
    else:
        stor5.length++
        stor5[stor5.length].field_0 = arg1
        stor5[stor5.length].field_256 = arg3
        stor6[arg1] = stor5.length
    if stor4[arg1]:
        require stor4[arg1] - 1 < stor3.length
        stor3[stor4[arg1] - 1].field_256 = arg2
    else:
        stor3.length++
        stor3[stor3.length].field_0 = arg1
        stor3[stor3.length].field_256 = arg2
        stor4[arg1] = stor3.length
    emit Ask(arg2, arg3, msg.sender, arg1);
}

function readyToSellToken(uint256 arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if uint8(stor0.field_160):
        revert with 0, 'Pausable: paused'
    require ext_code.size(nftAddress)
    staticcall nftAddress.ownerOf(uint256 rg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'Only Token Owner can sell token'
    if arg2 <= 0:
        revert with 0, 'Price must be granter than zero'
    if arg3 <= 0:
        revert with 0, 'Price must be granter than zero'
    require ext_code.size(nftAddress)
    call nftAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3) with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if stor4[arg1]:
        require stor4[arg1] - 1 < stor3.length
        stor3[stor4[arg1] - 1].field_256 = arg2
    else:
        stor3.length++
        stor3[stor3.length].field_0 = arg1
        stor3[stor3.length].field_256 = arg2
        stor4[arg1] = stor3.length
    if stor6[arg1]:
        require stor6[arg1] - 1 < stor5.length
        stor5[stor6[arg1] - 1].field_256 = arg3
    else:
        stor5.length++
        stor5[stor5.length].field_0 = arg1
        stor5[stor5.length].field_256 = arg3
        stor6[arg1] = stor5.length
    stor12[arg1] = msg.sender
    if not stor13[address(msg.sender)][1][arg1]:
        stor13[address(msg.sender)]++
        stor13[address(msg.sender)][stor13[address(msg.sender)]] = arg1
        stor13[address(msg.sender)][1][arg1] = stor13[address(msg.sender)]
    emit Ask(arg2, arg3, msg.sender, arg1);
}

function cancelSellToken(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if uint8(stor0.field_160):
        revert with 0, 'Pausable: paused'
    if not stor13[address(msg.sender)][1][arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only Seller can cancel sell token'
    require ext_code.size(nftAddress)
    call nftAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3) with:
         gas gas_remaining wei
        args address(this.address), msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if stor4[arg1]:
        require stor3.length - 1 < stor3.length
        require stor4[arg1] - 1 < stor3.length
        stor3[stor4[arg1] - 1].field_0 = stor3[stor3.length - 1].field_0
        stor3[stor4[arg1] - 1].field_256 = stor3[stor3.length - 1].field_256
        stor4[stor3[stor3.length - 1].field_0] = stor4[arg1]
        require stor3.length
        stor3[stor3.length - 1].field_0 = 0
        stor3[stor3.length - 1].field_256 = 0
        stor3.length--
        stor4[arg1] = 0
    if stor6[arg1]:
        require stor5.length - 1 < stor5.length
        require stor6[arg1] - 1 < stor5.length
        stor5[stor6[arg1] - 1].field_0 = stor5[stor5.length - 1].field_0
        stor5[stor6[arg1] - 1].field_256 = stor5[stor5.length - 1].field_256
        stor6[stor5[stor5.length - 1].field_0] = stor6[arg1]
        require stor5.length
        stor5[stor5.length - 1].field_0 = 0
        stor5[stor5.length - 1].field_256 = 0
        stor5.length--
        stor6[arg1] = 0
    if stor13[stor12[arg1]][1][arg1]:
        require stor13[stor12[arg1]] - 1 < stor13[stor12[arg1]]
        require stor13[stor12[arg1]][1][arg1] - 1 < stor13[stor12[arg1]]
        stor13[stor12[arg1]][stor13[stor12[arg1]][1][arg1]] = stor13[stor12[arg1]][stor13[stor12[arg1]]]
        stor13[stor12[arg1]][1][stor13[stor12[arg1]][stor13[stor12[arg1]]]] = stor13[stor12[arg1]][1][arg1]
        require stor13[stor12[arg1]]
        stor13[stor12[arg1]][stor13[stor12[arg1]]] = 0
        stor13[stor12[arg1]]--
        stor13[stor12[arg1]][1][arg1] = 0
    stor12[arg1] = 0
    emit CancelSellToken(msg.sender, arg1);
}

function getAsks() {
    require stor3.length <= test266151307()
    mem[96] = stor3.length
    mem[64] = (32 * stor3.length) + 128
    if not stor3.length:
        if var39002 >= stor3.length:
            mem[(32 * stor3.length) + 128] = 32
            mem[(32 * stor3.length) + 160] = stor3.length
            idx = 0
            s = 128
            t = (32 * stor3.length) + 192
            while idx < mem[96]:
                _252 = mem[s]
                mem[t] = mem[mem[s]]
                mem[t + 32] = mem[_252 + 32]
                mem[t + 64] = mem[_252 + 64]
                idx = idx + 1
                s = s + 32
                t = t + 96
                continue 
            return memory
              from mem[64]
               len (129 * stor3.length) + -mem[64] + 192
        if stor3.length <= var45001:
            revert with 0, 'EnumerableMap: index out of bounds'
        require var47003 < stor3.length
        mem[64] = (32 * stor3.length) + 192
        mem[(32 * stor3.length) + 128] = 30
        mem[(32 * stor3.length) + 160] = 'EnumerableMap: nonexistent key'
        mem[0] = var59002
        mem[32] = 6
        if stor6[var59002]:
            require var61002 - 1 < stor5.length
            # nil
        else:
            mem[(32 * stor3.length) + 192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(32 * stor3.length) + 196] = 32
            _642 = mem[var59001]
            mem[(32 * stor3.length) + 228] = mem[var59001]
            mem[(32 * stor3.length) + 260 len ceil32(_642)] = mem[var59001 + 32 len ceil32(_642)]
            if ceil32(_642) > _642:
                mem[(32 * stor3.length) + _642 + 260] = 0
            revert with 0, 32, mem[(32 * stor3.length) + 228 len ceil32(_642) + 32]
    else:
        mem[64] = (32 * stor3.length) + 224
        mem[(32 * stor3.length) + 128] = 0
        mem[(32 * stor3.length) + 160] = 0
        mem[(32 * stor3.length) + 192] = 0
        mem[var13001] = (32 * stor3.length) + 128
        s = var13001
        idx = var13002
        while idx - 1:
            mem[64] = mem[64] + 96
            mem[(32 * stor3.length) + 128] = 0
            mem[(32 * stor3.length) + 160] = 0
            mem[(32 * stor3.length) + 192] = 0
            mem[s + 32] = (32 * stor3.length) + 128
            s = s + 32
            idx = idx - 1
            continue 
        if var46002 >= stor3.length:
            _298 = mem[64]
            mem[mem[64]] = 32
            _301 = mem[96]
            mem[mem[64] + 32] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 64
            while idx < _301:
                _345 = mem[s]
                mem[t] = mem[mem[s]]
                mem[t + 32] = mem[_345 + 32]
                mem[t + 64] = mem[_345 + 64]
                idx = idx + 1
                s = s + 32
                t = t + 96
                continue 
            return memory
              from mem[64]
               len _298 + (96 * _301) + -mem[64] + 64
        if stor3.length <= var52001:
            revert with 0, 'EnumerableMap: index out of bounds'
        require var54003 < stor3.length
        mem[0] = 3
        _682 = mem[64]
        mem[64] = mem[64] + 64
        mem[_682] = 30
        mem[_682 + 32] = 'EnumerableMap: nonexistent key'
        mem[0] = var66002
        mem[32] = 6
        if stor6[var66002]:
            require var68002 - 1 < stor5.length
            # nil
        else:
            _728 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _732 = mem[var66001]
            mem[mem[64] + 36] = mem[var66001]
            mem[mem[64] + 68 len ceil32(_732)] = mem[var66001 + 32 len ceil32(_732)]
            if ceil32(_732) <= _732:
                revert with 0, 32, mem[mem[64] + 36 len ceil32(_732) + 32]
            mem[mem[64] + _732 + 68] = 0
            revert with memory
              from mem[64]
               len _728 + ceil32(_732) + -mem[64] + 68
}

function getAsksByUser(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[0] = arg1
    require stor13[address(arg1)] <= test266151307()
    mem[96] = stor13[address(arg1)]
    mem[64] = (32 * stor13[address(arg1)]) + 128
    if not stor13[address(arg1)]:
        mem[0] = arg1
        mem[32] = 13
        if var59002 >= var59001:
            mem[(32 * stor13[address(arg1)]) + 128] = 32
            mem[(32 * stor13[address(arg1)]) + 160] = stor13[address(arg1)]
            idx = 0
            s = 128
            t = (32 * stor13[address(arg1)]) + 192
            while idx < mem[96]:
                _376 = mem[s]
                mem[t] = mem[mem[s]]
                mem[t + 32] = mem[_376 + 32]
                mem[t + 64] = mem[_376 + 64]
                idx = idx + 1
                s = s + 32
                t = t + 96
                continue 
            return memory
              from mem[64]
               len (129 * stor13[address(arg1)]) + -mem[64] + 192
        if stor[var65002] <= var65001:
            revert with 0, 'EnumerableSet: index out of bounds'
        require var67002 < stor[var67003]
        mem[64] = (32 * stor13[address(arg1)]) + 192
        mem[(32 * stor13[address(arg1)]) + 128] = 30
        mem[(32 * stor13[address(arg1)]) + 160] = 'EnumerableMap: nonexistent key'
        mem[0] = var79002
        mem[32] = 4
        if stor4[var79002]:
            require var81002 - 1 < stor3.length
            # nil
        else:
            mem[(32 * stor13[address(arg1)]) + 192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(32 * stor13[address(arg1)]) + 196] = 32
            _947 = mem[var79001]
            mem[(32 * stor13[address(arg1)]) + 228] = mem[var79001]
            mem[(32 * stor13[address(arg1)]) + 260 len ceil32(_947)] = mem[var79001 + 32 len ceil32(_947)]
            if ceil32(_947) > _947:
                mem[(32 * stor13[address(arg1)]) + _947 + 260] = 0
            revert with 0, 32, mem[(32 * stor13[address(arg1)]) + 228 len ceil32(_947) + 32]
    else:
        mem[64] = (32 * stor13[address(arg1)]) + 224
        mem[(32 * stor13[address(arg1)]) + 128] = 0
        mem[(32 * stor13[address(arg1)]) + 160] = 0
        mem[(32 * stor13[address(arg1)]) + 192] = 0
        mem[var25001] = (32 * stor13[address(arg1)]) + 128
        s = var25001
        idx = var25002
        while idx - 1:
            mem[64] = mem[64] + 96
            mem[(32 * stor13[address(arg1)]) + 128] = 0
            mem[(32 * stor13[address(arg1)]) + 160] = 0
            mem[(32 * stor13[address(arg1)]) + 192] = 0
            mem[s + 32] = (32 * stor13[address(arg1)]) + 128
            s = s + 32
            idx = idx - 1
            continue 
        mem[0] = arg1
        mem[32] = 13
        if var66002 >= var66001:
            _443 = mem[64]
            mem[mem[64]] = 32
            _446 = mem[96]
            mem[mem[64] + 32] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 64
            while idx < _446:
                _510 = mem[s]
                mem[t] = mem[mem[s]]
                mem[t + 32] = mem[_510 + 32]
                mem[t + 64] = mem[_510 + 64]
                idx = idx + 1
                s = s + 32
                t = t + 96
                continue 
            return memory
              from mem[64]
               len _443 + (96 * _446) + -mem[64] + 64
        mem[32] = 13
        if stor[var72002] <= var72001:
            revert with 0, 'EnumerableSet: index out of bounds'
        require var74002 < stor[var74003]
        mem[0] = var76002
        _1007 = mem[64]
        mem[64] = mem[64] + 64
        mem[_1007] = 30
        mem[_1007 + 32] = 'EnumerableMap: nonexistent key'
        mem[0] = var86002
        mem[32] = 4
        if stor4[var86002]:
            require var88002 - 1 < stor3.length
            # nil
        else:
            _1073 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _1075 = mem[var86001]
            mem[mem[64] + 36] = mem[var86001]
            mem[mem[64] + 68 len ceil32(_1075)] = mem[var86001 + 32 len ceil32(_1075)]
            if ceil32(_1075) <= _1075:
                revert with 0, 32, mem[mem[64] + 36 len ceil32(_1075) + 32]
            mem[mem[64] + _1075 + 68] = 0
            revert with memory
              from mem[64]
               len _1073 + ceil32(_1075) + -mem[64] + 68
}

function getAsksDesc() {
    require stor3.length <= test266151307()
    mem[96] = stor3.length
    mem[64] = (32 * stor3.length) + 128
    if not stor3.length:
        if stor3.length <= 0:
            mem[(32 * stor3.length) + 128] = 32
            mem[(32 * stor3.length) + 160] = stor3.length
            idx = 0
            s = 128
            t = (32 * stor3.length) + 192
            while idx < mem[96]:
                _83 = mem[s]
                mem[t] = mem[mem[s]]
                mem[t + 32] = mem[_83 + 32]
                mem[t + 64] = mem[_83 + 64]
                idx = idx + 1
                s = s + 32
                t = t + 96
                continue 
            return memory
              from mem[64]
               len (129 * stor3.length) + -mem[64] + 192
        idx = stor3.length - 1
        while idx > 0:
            if stor3.length <= idx:
                revert with 0, 'EnumerableMap: index out of bounds'
            require idx < stor3.length
            mem[0] = 3
            _93 = mem[64]
            mem[64] = mem[64] + 64
            mem[_93] = 30
            mem[_93 + 32] = 'EnumerableMap: nonexistent key'
            mem[32] = 6
            if not stor6[stor3[idx].field_0]:
                _101 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_101 + idx + 68] = mem[_93 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_101 + 98] = 0
                revert with memory
                  from mem[64]
                   len _101 + -mem[64] + 100
            require stor6[stor3[idx].field_0] - 1 < stor5.length
            mem[0] = 5
            _108 = mem[64]
            mem[64] = mem[64] + 96
            mem[_108] = stor3[idx].field_0
            mem[_108 + 32] = stor3[idx].field_256
            mem[_108 + 64] = stor5[stor6[stor3[idx].field_0] - 1].field_256
            require stor3.length + -idx - 1 < mem[96]
            mem[(32 * stor3.length + -idx - 1) + 128] = _108
            idx = idx - 1
            continue 
        if stor3.length <= 0:
            revert with 0, 'EnumerableMap: index out of bounds'
        require 0 < stor3.length
        mem[0] = 3
        _92 = mem[64]
        mem[64] = mem[64] + 64
        mem[_92] = 30
        mem[_92 + 32] = 'EnumerableMap: nonexistent key'
        mem[32] = 6
        if not stor6[uint256(stor3.field_0)]:
            revert with 0, 'EnumerableMap: nonexistent key', 0
        require stor6[uint256(stor3.field_0)] - 1 < stor5.length
        mem[0] = 5
        _107 = mem[64]
        mem[64] = mem[64] + 96
        mem[_107] = uint256(stor3.field_0)
        mem[_107 + 32] = uint256(stor3.field_256)
        mem[_107 + 64] = stor5[stor6[uint256(stor3.field_0)] - 1].field_256
        require stor3.length - 1 < mem[96]
        mem[(32 * stor3.length - 1) + 128] = _107
        _118 = mem[64]
        mem[mem[64]] = 32
        _127 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _127:
            _163 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_163 + 32]
            mem[t + 64] = mem[_163 + 64]
            idx = idx + 1
            s = s + 32
            t = t + 96
            continue 
        return memory
          from mem[64]
           len _118 + (96 * _127) + -mem[64] + 64
    mem[64] = (32 * stor3.length) + 224
    mem[(32 * stor3.length) + 128] = 0
    mem[(32 * stor3.length) + 160] = 0
    mem[(32 * stor3.length) + 192] = 0
    mem[var13001] = (32 * stor3.length) + 128
    s = var13001
    idx = var13002
    while idx - 1:
        mem[64] = mem[64] + 96
        mem[(32 * stor3.length) + 128] = 0
        mem[(32 * stor3.length) + 160] = 0
        mem[(32 * stor3.length) + 192] = 0
        mem[s + 32] = (32 * stor3.length) + 128
        s = s + 32
        idx = idx - 1
        continue 
    if stor3.length <= 0:
        _173 = mem[64]
        mem[mem[64]] = 32
        _175 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _175:
            _214 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_214 + 32]
            mem[t + 64] = mem[_214 + 64]
            idx = idx + 1
            s = s + 32
            t = t + 96
            continue 
        return memory
          from mem[64]
           len _173 + (96 * _175) + -mem[64] + 64
    idx = stor3.length - 1
    while idx > 0:
        if stor3.length <= idx:
            revert with 0, 'EnumerableMap: index out of bounds'
        require idx < stor3.length
        mem[0] = 3
        _223 = mem[64]
        mem[64] = mem[64] + 64
        mem[_223] = 30
        mem[_223 + 32] = 'EnumerableMap: nonexistent key'
        mem[32] = 6
        if not stor6[stor3[idx].field_0]:
            _230 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_230 + idx + 68] = mem[_223 + idx + 32]
                idx = idx + 32
                continue 
            mem[_230 + 98] = 0
            revert with memory
              from mem[64]
               len _230 + -mem[64] + 100
        require stor6[stor3[idx].field_0] - 1 < stor5.length
        mem[0] = 5
        _236 = mem[64]
        mem[64] = mem[64] + 96
        mem[_236] = stor3[idx].field_0
        mem[_236 + 32] = stor3[idx].field_256
        mem[_236 + 64] = stor5[stor6[stor3[idx].field_0] - 1].field_256
        require stor3.length + -idx - 1 < mem[96]
        mem[(32 * stor3.length + -idx - 1) + 128] = _236
        idx = idx - 1
        continue 
    if stor3.length <= 0:
        revert with 0, 'EnumerableMap: index out of bounds'
    require 0 < stor3.length
    mem[0] = 3
    _222 = mem[64]
    mem[64] = mem[64] + 64
    mem[_222] = 30
    mem[_222 + 32] = 'EnumerableMap: nonexistent key'
    mem[32] = 6
    if not stor6[uint256(stor3.field_0)]:
        revert with 0, 'EnumerableMap: nonexistent key', 0
    require stor6[uint256(stor3.field_0)] - 1 < stor5.length
    mem[0] = 5
    _235 = mem[64]
    mem[64] = mem[64] + 96
    mem[_235] = uint256(stor3.field_0)
    mem[_235 + 32] = uint256(stor3.field_256)
    mem[_235 + 64] = stor5[stor6[uint256(stor3.field_0)] - 1].field_256
    require stor3.length - 1 < mem[96]
    mem[(32 * stor3.length - 1) + 128] = _235
    _241 = mem[64]
    mem[mem[64]] = 32
    _242 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _242:
        _252 = mem[s]
        mem[t] = mem[mem[s]]
        mem[t + 32] = mem[_252 + 32]
        mem[t + 64] = mem[_252 + 64]
        idx = idx + 1
        s = s + 32
        t = t + 96
        continue 
    return memory
      from mem[64]
       len _241 + (96 * _242) + -mem[64] + 64
}

function sub_72af727c(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if uint8(stor0.field_160):
        revert with 0, 'Pausable: paused'
    if not msg.sender:
        revert with 0, 'Wrong msg sender'
    if msg.sender == this.address:
        revert with 0, 'Wrong msg sender'
    if not stor4[arg1]:
        revert with 0, 'Token not in sell book'
    require ext_code.size(nftAddress)
    call nftAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3) with:
         gas gas_remaining wei
        args address(this.address), msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96] = 30
    mem[128] = 'EnumerableMap: nonexistent key'
    mem[32] = 4
    if not stor4[arg1]:
        revert with 0, 'EnumerableMap: nonexistent key', 0
    require stor4[arg1] - 1 < stor3.length
    require msg.value >= stor3[stor4[arg1] - 1].field_256
    if not stor3[stor4[arg1] - 1].field_256:
        mem[160] = 26
        mem[192] = 'SafeMath: division by zero'
        mem[224] = 30
        mem[256] = 'SafeMath: subtraction overflow'
        if 0 > stor3[stor4[arg1] - 1].field_256:
            revert with 0, 'SafeMath: subtraction overflow', 0
        mem[288] = 0x9cf6891100000000000000000000000000000000000000000000000000000000
        mem[292] = 0
        mem[324] = 128
        mem[420] = sub_b1dcffad.length
        mem[0] = 9
        idx = 0
        s = 0
        t = 452
        while idx < sub_b1dcffad.length:
            mem[t] = sub_b1dcffad[s]
            idx = idx + 1
            s = s + 1
            t = t + 32
            continue 
        mem[356] = feePoolAddress
        mem[388] = block.timestamp
        require ext_code.size(routerAddress)
        call routerAddress.0x9cf68911 with:
             gas gas_remaining wei
            args 0, 128, feePoolAddress, block.timestamp, sub_b1dcffad.length, mem[452 len 32 * sub_b1dcffad.length]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[288 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 288
        require return_data.size >= 32
        _236 = mem[288 len 4], 0
        require mem[288 len 4], 0 <= test266151307()
        require mem[288 len 4], 0 + 319 < return_data.size + 288
        _238 = mem[mem[288 len 4], 0 + 288]
        require mem[mem[288 len 4], 0 + 288] <= test266151307()
        require ceil32(return_data.size) + (32 * mem[mem[288 len 4], 0 + 288]) + 320 <= test266151307() and (32 * mem[mem[288 len 4], 0 + 288]) + 32 >= 0
        mem[64] = ceil32(return_data.size) + (32 * mem[mem[288 len 4], 0 + 288]) + 320
        mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], 0 + 288]
        require _236 + (32 * _238) + 32 <= return_data.size
        idx = 0
        s = _236 + 320
        t = ceil32(return_data.size) + 320
        while idx < _238:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        call stor12[arg1] with:
           value stor3[stor4[arg1] - 1].field_256 wei
             gas 2300 * is_zero(value) wei
    else:
        require stor3[stor4[arg1] - 1].field_256
        if stor3[stor4[arg1] - 1].field_256 * sub_afc903ba / stor3[stor4[arg1] - 1].field_256 != sub_afc903ba:
            revert with 0, 'SafeMath: multiplication overflow'
        mem[160] = 26
        mem[192] = 'SafeMath: division by zero'
        mem[224] = 30
        mem[256] = 'SafeMath: subtraction overflow'
        if stor3[stor4[arg1] - 1].field_256 * sub_afc903ba / 100 > stor3[stor4[arg1] - 1].field_256:
            revert with 0, 'SafeMath: subtraction overflow', 0
        mem[288] = 0x9cf6891100000000000000000000000000000000000000000000000000000000
        mem[292] = 0
        mem[324] = 128
        mem[420] = sub_b1dcffad.length
        mem[0] = 9
        idx = 0
        s = 0
        t = 452
        while idx < sub_b1dcffad.length:
            mem[t] = sub_b1dcffad[s]
            idx = idx + 1
            s = s + 1
            t = t + 32
            continue 
        mem[356] = feePoolAddress
        mem[388] = block.timestamp
        require ext_code.size(routerAddress)
        call routerAddress.0x9cf68911 with:
           value stor3[stor4[arg1] - 1].field_256 * sub_afc903ba / 100 wei
             gas gas_remaining wei
            args 0, 128, feePoolAddress, block.timestamp, sub_b1dcffad.length, mem[452 len 32 * sub_b1dcffad.length]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[288 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 288
        require return_data.size >= 32
        _235 = mem[288 len 4], 0
        require mem[288 len 4], 0 <= test266151307()
        require mem[288 len 4], 0 + 319 < return_data.size + 288
        _237 = mem[mem[288 len 4], 0 + 288]
        require mem[mem[288 len 4], 0 + 288] <= test266151307()
        require ceil32(return_data.size) + (32 * mem[mem[288 len 4], 0 + 288]) + 320 <= test266151307() and (32 * mem[mem[288 len 4], 0 + 288]) + 32 >= 0
        mem[64] = ceil32(return_data.size) + (32 * mem[mem[288 len 4], 0 + 288]) + 320
        mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], 0 + 288]
        require _235 + (32 * _237) + 32 <= return_data.size
        idx = 0
        s = _235 + 320
        t = ceil32(return_data.size) + 320
        while idx < _237:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        call stor12[arg1] with:
           value stor3[stor4[arg1] - 1].field_256 - (stor3[stor4[arg1] - 1].field_256 * sub_afc903ba / 100) wei
             gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if stor6[arg1]:
        require stor5.length - 1 < stor5.length
        require stor6[arg1] - 1 < stor5.length
        stor5[stor6[arg1] - 1].field_0 = stor5[stor5.length - 1].field_0
        stor5[stor6[arg1] - 1].field_256 = stor5[stor5.length - 1].field_256
        stor6[stor5[stor5.length - 1].field_0] = stor6[arg1]
        require stor5.length
        stor5[stor5.length - 1].field_0 = 0
        stor5[stor5.length - 1].field_256 = 0
        stor5.length--
        stor6[arg1] = 0
    if stor4[arg1]:
        require stor3.length - 1 < stor3.length
        require stor4[arg1] - 1 < stor3.length
        stor3[stor4[arg1] - 1].field_0 = stor3[stor3.length - 1].field_0
        stor3[stor4[arg1] - 1].field_256 = stor3[stor3.length - 1].field_256
        stor4[stor3[stor3.length - 1].field_0] = stor4[arg1]
        require stor3.length
        stor3[stor3.length - 1].field_0 = 0
        stor3[stor3.length - 1].field_256 = 0
        stor3.length--
        stor4[arg1] = 0
    if stor13[stor12[arg1]][1][arg1]:
        require stor13[stor12[arg1]] - 1 < stor13[stor12[arg1]]
        require stor13[stor12[arg1]][1][arg1] - 1 < stor13[stor12[arg1]]
        stor13[stor12[arg1]][stor13[stor12[arg1]][1][arg1]] = stor13[stor12[arg1]][stor13[stor12[arg1]]]
        stor13[stor12[arg1]][1][stor13[stor12[arg1]][stor13[stor12[arg1]]]] = stor13[stor12[arg1]][1][arg1]
        require stor13[stor12[arg1]]
        stor13[stor12[arg1]][stor13[stor12[arg1]]] = 0
        stor13[stor12[arg1]]--
        stor13[stor12[arg1]][1][arg1] = 0
    emit 0x452e90a7: stor3[stor4[arg1] - 1].field_256, stor12[arg1], msg.sender, arg1
    stor12[arg1] = 0
}

function getAsksByUserDesc(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[0] = arg1
    require stor13[address(arg1)] <= test266151307()
    mem[96] = stor13[address(arg1)]
    mem[64] = (32 * stor13[address(arg1)]) + 128
    if not stor13[address(arg1)]:
        mem[0] = arg1
        mem[32] = 13
        if stor13[address(arg1)] <= 0:
            mem[(32 * stor13[address(arg1)]) + 128] = 32
            mem[(32 * stor13[address(arg1)]) + 160] = stor13[address(arg1)]
            idx = 0
            s = 128
            t = (32 * stor13[address(arg1)]) + 192
            while idx < mem[96]:
                _128 = mem[s]
                mem[t] = mem[mem[s]]
                mem[t + 32] = mem[_128 + 32]
                mem[t + 64] = mem[_128 + 64]
                idx = idx + 1
                s = s + 32
                t = t + 96
                continue 
            return memory
              from mem[64]
               len (129 * stor13[address(arg1)]) + -mem[64] + 192
        mem[0] = arg1
        mem[32] = 13
        idx = stor[sha3(mem[0 len 64])] - 1
        while idx > 0:
            mem[32] = 13
            if stor13[address(arg1)] <= idx:
                revert with 0, 'EnumerableSet: index out of bounds'
            require idx < stor13[address(arg1)]
            mem[0] = sha3(address(arg1), 13)
            _141 = mem[64]
            mem[64] = mem[64] + 64
            mem[_141] = 30
            mem[_141 + 32] = 'EnumerableMap: nonexistent key'
            mem[32] = 4
            if not stor4[stor13[address(arg1)][idx]]:
                _150 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_150 + idx + 68] = mem[_141 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_150 + 98] = 0
                revert with memory
                  from mem[64]
                   len _150 + -mem[64] + 100
            require stor4[stor13[address(arg1)][idx]] - 1 < stor3.length
            mem[0] = 3
            _159 = mem[64]
            mem[64] = mem[64] + 64
            mem[_159] = 30
            mem[_159 + 32] = 'EnumerableMap: nonexistent key'
            mem[32] = 6
            if not stor6[stor13[address(arg1)][idx]]:
                _165 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_165 + idx + 68] = mem[_159 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_165 + 98] = 0
                revert with memory
                  from mem[64]
                   len _165 + -mem[64] + 100
            require stor6[stor13[address(arg1)][idx]] - 1 < stor5.length
            mem[0] = 5
            _179 = mem[64]
            mem[64] = mem[64] + 96
            mem[_179] = stor13[address(arg1)][idx]
            mem[_179 + 32] = stor3[stor4[stor13[address(arg1)][idx]] - 1].field_256
            mem[_179 + 64] = stor5[stor6[stor13[address(arg1)][idx]] - 1].field_256
            mem[0] = arg1
            mem[32] = 13
            require stor13[address(arg1)] + -idx - 1 < mem[96]
            mem[(32 * stor13[address(arg1)] + -idx - 1) + 128] = _179
            idx = idx - 1
            continue 
        mem[32] = 13
        if stor13[address(arg1)] <= 0:
            revert with 0, 'EnumerableSet: index out of bounds'
        require 0 < stor13[address(arg1)]
        mem[0] = sha3(address(arg1), 13)
        _140 = mem[64]
        mem[64] = mem[64] + 64
        mem[_140] = 30
        mem[_140 + 32] = 'EnumerableMap: nonexistent key'
        mem[32] = 4
        if not stor4[stor13[address(arg1)]]:
            revert with 0, 'EnumerableMap: nonexistent key', 0
        require stor4[stor13[address(arg1)]] - 1 < stor3.length
        mem[0] = 3
        _158 = mem[64]
        mem[64] = mem[64] + 64
        mem[_158] = 30
        mem[_158 + 32] = 'EnumerableMap: nonexistent key'
        mem[32] = 6
        if not stor6[stor13[address(arg1)]]:
            revert with 0, 'EnumerableMap: nonexistent key', 0
        require stor6[stor13[address(arg1)]] - 1 < stor5.length
        mem[0] = 5
        _177 = mem[64]
        mem[64] = mem[64] + 96
        mem[_177] = stor13[address(arg1)]
        mem[_177 + 32] = stor3[stor4[stor13[address(arg1)]] - 1].field_256
        mem[_177 + 64] = stor5[stor6[stor13[address(arg1)]] - 1].field_256
        mem[0] = arg1
        mem[32] = 13
        require stor13[address(arg1)] - 1 < mem[96]
        mem[(32 * stor13[address(arg1)] - 1) + 128] = _177
        _202 = mem[64]
        mem[mem[64]] = 32
        _208 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _208:
            _250 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_250 + 32]
            mem[t + 64] = mem[_250 + 64]
            idx = idx + 1
            s = s + 32
            t = t + 96
            continue 
        return memory
          from mem[64]
           len _202 + (96 * _208) + -mem[64] + 64
    mem[64] = (32 * stor13[address(arg1)]) + 224
    mem[(32 * stor13[address(arg1)]) + 128] = 0
    mem[(32 * stor13[address(arg1)]) + 160] = 0
    mem[(32 * stor13[address(arg1)]) + 192] = 0
    mem[var25001] = (32 * stor13[address(arg1)]) + 128
    s = var25001
    idx = var25002
    while idx - 1:
        mem[64] = mem[64] + 96
        mem[(32 * stor13[address(arg1)]) + 128] = 0
        mem[(32 * stor13[address(arg1)]) + 160] = 0
        mem[(32 * stor13[address(arg1)]) + 192] = 0
        mem[s + 32] = (32 * stor13[address(arg1)]) + 128
        s = s + 32
        idx = idx - 1
        continue 
    mem[0] = arg1
    mem[32] = 13
    if stor13[address(arg1)] <= 0:
        _268 = mem[64]
        mem[mem[64]] = 32
        _270 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _270:
            _329 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_329 + 32]
            mem[t + 64] = mem[_329 + 64]
            idx = idx + 1
            s = s + 32
            t = t + 96
            continue 
        return memory
          from mem[64]
           len _268 + (96 * _270) + -mem[64] + 64
    mem[0] = arg1
    mem[32] = 13
    idx = stor[sha3(mem[0 len 64])] - 1
    while idx > 0:
        mem[32] = 13
        if stor13[address(arg1)] <= idx:
            revert with 0, 'EnumerableSet: index out of bounds'
        require idx < stor13[address(arg1)]
        mem[0] = sha3(address(arg1), 13)
        _340 = mem[64]
        mem[64] = mem[64] + 64
        mem[_340] = 30
        mem[_340 + 32] = 'EnumerableMap: nonexistent key'
        mem[32] = 4
        if not stor4[stor13[address(arg1)][idx]]:
            _347 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_347 + idx + 68] = mem[_340 + idx + 32]
                idx = idx + 32
                continue 
            mem[_347 + 98] = 0
            revert with memory
              from mem[64]
               len _347 + -mem[64] + 100
        require stor4[stor13[address(arg1)][idx]] - 1 < stor3.length
        mem[0] = 3
        _353 = mem[64]
        mem[64] = mem[64] + 64
        mem[_353] = 30
        mem[_353 + 32] = 'EnumerableMap: nonexistent key'
        mem[32] = 6
        if not stor6[stor13[address(arg1)][idx]]:
            _357 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_357 + idx + 68] = mem[_353 + idx + 32]
                idx = idx + 32
                continue 
            mem[_357 + 98] = 0
            revert with memory
              from mem[64]
               len _357 + -mem[64] + 100
        require stor6[stor13[address(arg1)][idx]] - 1 < stor5.length
        mem[0] = 5
        _366 = mem[64]
        mem[64] = mem[64] + 96
        mem[_366] = stor13[address(arg1)][idx]
        mem[_366 + 32] = stor3[stor4[stor13[address(arg1)][idx]] - 1].field_256
        mem[_366 + 64] = stor5[stor6[stor13[address(arg1)][idx]] - 1].field_256
        mem[0] = arg1
        mem[32] = 13
        require stor13[address(arg1)] + -idx - 1 < mem[96]
        mem[(32 * stor13[address(arg1)] + -idx - 1) + 128] = _366
        idx = idx - 1
        continue 
    mem[32] = 13
    if stor13[address(arg1)] <= 0:
        revert with 0, 'EnumerableSet: index out of bounds'
    require 0 < stor13[address(arg1)]
    mem[0] = sha3(address(arg1), 13)
    _339 = mem[64]
    mem[64] = mem[64] + 64
    mem[_339] = 30
    mem[_339 + 32] = 'EnumerableMap: nonexistent key'
    mem[32] = 4
    if not stor4[stor13[address(arg1)]]:
        revert with 0, 'EnumerableMap: nonexistent key', 0
    require stor4[stor13[address(arg1)]] - 1 < stor3.length
    mem[0] = 3
    _352 = mem[64]
    mem[64] = mem[64] + 64
    mem[_352] = 30
    mem[_352 + 32] = 'EnumerableMap: nonexistent key'
    mem[32] = 6
    if not stor6[stor13[address(arg1)]]:
        revert with 0, 'EnumerableMap: nonexistent key', 0
    require stor6[stor13[address(arg1)]] - 1 < stor5.length
    mem[0] = 5
    _364 = mem[64]
    mem[64] = mem[64] + 96
    mem[_364] = stor13[address(arg1)]
    mem[_364 + 32] = stor3[stor4[stor13[address(arg1)]] - 1].field_256
    mem[_364 + 64] = stor5[stor6[stor13[address(arg1)]] - 1].field_256
    mem[0] = arg1
    mem[32] = 13
    require stor13[address(arg1)] - 1 < mem[96]
    mem[(32 * stor13[address(arg1)] - 1) + 128] = _364
    _376 = mem[64]
    mem[mem[64]] = 32
    _377 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _377:
        _387 = mem[s]
        mem[t] = mem[mem[s]]
        mem[t + 32] = mem[_387 + 32]
        mem[t + 64] = mem[_387 + 64]
        idx = idx + 1
        s = s + 32
        t = t + 96
        continue 
    return memory
      from mem[64]
       len _376 + (96 * _377) + -mem[64] + 64
}

function getAsksByPage(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if stor3.length <= 0:
        mem[96] = 0
        mem[64] = 128
        mem[128] = 32
        mem[160] = 0
        idx = 0
        s = 128
        t = 192
        while idx < mem[96]:
            _177 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_177 + 32]
            mem[t + 64] = mem[_177 + 64]
            idx = idx + 1
            s = s + 32
            t = t + 96
            continue 
        return memory
          from mem[64]
           len -mem[64] + 192
    if not arg1:
        if arg2 < stor3.length:
            require arg2 <= test266151307()
            mem[96] = arg2
            mem[64] = (32 * arg2) + 128
            if not arg2:
                s = 0
                idx = 0
                while idx < arg2:
                    if stor3.length <= s:
                        revert with 0, 'EnumerableMap: index out of bounds'
                    require s < stor3.length
                    mem[0] = 3
                    _205 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_205] = 30
                    mem[_205 + 32] = 'EnumerableMap: nonexistent key'
                    mem[32] = 6
                    if not stor6[stor3[s].field_0]:
                        _226 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_226 + idx + 68] = mem[_205 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_226 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _226 + -mem[64] + 100
                    require stor6[stor3[s].field_0] - 1 < stor5.length
                    mem[0] = 5
                    _252 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_252] = stor3[s].field_0
                    mem[_252 + 32] = stor3[s].field_256
                    mem[_252 + 64] = stor5[stor6[stor3[s].field_0] - 1].field_256
                    require s < mem[96]
                    mem[(32 * s) + 128] = _252
                    s = s + 1
                    idx = idx + 1
                    continue 
                _184 = mem[64]
                mem[mem[64]] = 32
                _196 = mem[96]
                mem[mem[64] + 32] = mem[96]
                idx = 0
                s = 128
                t = mem[64] + 64
                while idx < _196:
                    _350 = mem[s]
                    mem[t] = mem[mem[s]]
                    mem[t + 32] = mem[_350 + 32]
                    mem[t + 64] = mem[_350 + 64]
                    idx = idx + 1
                    s = s + 32
                    t = t + 96
                    continue 
                return memory
                  from mem[64]
                   len _184 + (96 * _196) + -mem[64] + 64
            mem[64] = (32 * arg2) + 224
            mem[(32 * arg2) + 128] = 0
            mem[(32 * arg2) + 160] = 0
            mem[(32 * arg2) + 192] = 0
            mem[var43001] = (32 * arg2) + 128
            s = var43001
            idx = var43002
            while idx - 1:
                mem[64] = mem[64] + 96
                mem[(32 * arg2) + 128] = 0
                mem[(32 * arg2) + 160] = 0
                mem[(32 * arg2) + 192] = 0
                mem[s + 32] = (32 * arg2) + 128
                s = s + 32
                idx = idx - 1
                continue 
            s = 0
            idx = 0
            while idx < arg2:
                if stor3.length <= s:
                    revert with 0, 'EnumerableMap: index out of bounds'
                require s < stor3.length
                mem[0] = 3
                _478 = mem[64]
                mem[64] = mem[64] + 64
                mem[_478] = 30
                mem[_478 + 32] = 'EnumerableMap: nonexistent key'
                mem[32] = 6
                if not stor6[stor3[s].field_0]:
                    _490 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_490 + idx + 68] = mem[_478 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_490 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _490 + -mem[64] + 100
                require stor6[stor3[s].field_0] - 1 < stor5.length
                mem[0] = 5
                _508 = mem[64]
                mem[64] = mem[64] + 96
                mem[_508] = stor3[s].field_0
                mem[_508 + 32] = stor3[s].field_256
                mem[_508 + 64] = stor5[stor6[stor3[s].field_0] - 1].field_256
                require s < mem[96]
                mem[(32 * s) + 128] = _508
                s = s + 1
                idx = idx + 1
                continue 
            _462 = mem[64]
            mem[mem[64]] = 32
            _474 = mem[96]
            mem[mem[64] + 32] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 64
            while idx < _474:
                _542 = mem[s]
                mem[t] = mem[mem[s]]
                mem[t + 32] = mem[_542 + 32]
                mem[t + 64] = mem[_542 + 64]
                idx = idx + 1
                s = s + 32
                t = t + 96
                continue 
            return memory
              from mem[64]
               len _462 + (96 * _474) + -mem[64] + 64
        require stor3.length <= test266151307()
        mem[96] = stor3.length
        mem[64] = (32 * stor3.length) + 128
        if not stor3.length:
            s = 0
            idx = 0
            while idx < stor3.length:
                if stor3.length <= s:
                    revert with 0, 'EnumerableMap: index out of bounds'
                require s < stor3.length
                mem[0] = 3
                _207 = mem[64]
                mem[64] = mem[64] + 64
                mem[_207] = 30
                mem[_207 + 32] = 'EnumerableMap: nonexistent key'
                mem[32] = 6
                if not stor6[stor3[s].field_0]:
                    _228 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_228 + idx + 68] = mem[_207 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_228 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _228 + -mem[64] + 100
                require stor6[stor3[s].field_0] - 1 < stor5.length
                mem[0] = 5
                _258 = mem[64]
                mem[64] = mem[64] + 96
                mem[_258] = stor3[s].field_0
                mem[_258 + 32] = stor3[s].field_256
                mem[_258 + 64] = stor5[stor6[stor3[s].field_0] - 1].field_256
                require s < mem[96]
                mem[(32 * s) + 128] = _258
                s = s + 1
                idx = idx + 1
                continue 
            _185 = mem[64]
            mem[mem[64]] = 32
            _197 = mem[96]
            mem[mem[64] + 32] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 64
            while idx < _197:
                _352 = mem[s]
                mem[t] = mem[mem[s]]
                mem[t + 32] = mem[_352 + 32]
                mem[t + 64] = mem[_352 + 64]
                idx = idx + 1
                s = s + 32
                t = t + 96
                continue 
            return memory
              from mem[64]
               len _185 + (96 * _197) + -mem[64] + 64
        mem[64] = (32 * stor3.length) + 224
        mem[(32 * stor3.length) + 128] = 0
        mem[(32 * stor3.length) + 160] = 0
        mem[(32 * stor3.length) + 192] = 0
        mem[var43001] = (32 * stor3.length) + 128
        s = var43001
        idx = var43002
        while idx - 1:
            mem[64] = mem[64] + 96
            mem[(32 * stor3.length) + 128] = 0
            mem[(32 * stor3.length) + 160] = 0
            mem[(32 * stor3.length) + 192] = 0
            mem[s + 32] = (32 * stor3.length) + 128
            s = s + 32
            idx = idx - 1
            continue 
        s = 0
        idx = 0
        while idx < stor3.length:
            if stor3.length <= s:
                revert with 0, 'EnumerableMap: index out of bounds'
            require s < stor3.length
            mem[0] = 3
            _479 = mem[64]
            mem[64] = mem[64] + 64
            mem[_479] = 30
            mem[_479 + 32] = 'EnumerableMap: nonexistent key'
            mem[32] = 6
            if not stor6[stor3[s].field_0]:
                _491 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_491 + idx + 68] = mem[_479 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_491 + 98] = 0
                revert with memory
                  from mem[64]
                   len _491 + -mem[64] + 100
            require stor6[stor3[s].field_0] - 1 < stor5.length
            mem[0] = 5
            _512 = mem[64]
            mem[64] = mem[64] + 96
            mem[_512] = stor3[s].field_0
            mem[_512 + 32] = stor3[s].field_256
            mem[_512 + 64] = stor5[stor6[stor3[s].field_0] - 1].field_256
            require s < mem[96]
            mem[(32 * s) + 128] = _512
            s = s + 1
            idx = idx + 1
            continue 
        _463 = mem[64]
        mem[mem[64]] = 32
        _475 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _475:
            _544 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_544 + 32]
            mem[t + 64] = mem[_544 + 64]
            idx = idx + 1
            s = s + 32
            t = t + 96
            continue 
        return memory
          from mem[64]
           len _463 + (96 * _475) + -mem[64] + 64
    if arg1 * arg2 < stor3.length:
        require (arg1 * arg2) + arg2 - (arg1 * arg2) <= test266151307()
        mem[96] = (arg1 * arg2) + arg2 - (arg1 * arg2)
        mem[64] = (32 * (arg1 * arg2) + arg2 - (arg1 * arg2)) + 128
        if not (arg1 * arg2) + arg2 - (arg1 * arg2):
            s = 0
            idx = -arg2 + (arg1 * arg2)
            while idx < arg1 * arg2:
                if stor3.length <= s:
                    revert with 0, 'EnumerableMap: index out of bounds'
                require s < stor3.length
                mem[0] = 3
                _209 = mem[64]
                mem[64] = mem[64] + 64
                mem[_209] = 30
                mem[_209 + 32] = 'EnumerableMap: nonexistent key'
                mem[32] = 6
                if not stor6[stor3[s].field_0]:
                    _230 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_230 + idx + 68] = mem[_209 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_230 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _230 + -mem[64] + 100
                require stor6[stor3[s].field_0] - 1 < stor5.length
                mem[0] = 5
                _264 = mem[64]
                mem[64] = mem[64] + 96
                mem[_264] = stor3[s].field_0
                mem[_264 + 32] = stor3[s].field_256
                mem[_264 + 64] = stor5[stor6[stor3[s].field_0] - 1].field_256
                require s < mem[96]
                mem[(32 * s) + 128] = _264
                s = s + 1
                idx = idx + 1
                continue 
            _186 = mem[64]
            mem[mem[64]] = 32
            _198 = mem[96]
            mem[mem[64] + 32] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 64
            while idx < _198:
                _354 = mem[s]
                mem[t] = mem[mem[s]]
                mem[t + 32] = mem[_354 + 32]
                mem[t + 64] = mem[_354 + 64]
                idx = idx + 1
                s = s + 32
                t = t + 96
                continue 
            return memory
              from mem[64]
               len _186 + (96 * _198) + -mem[64] + 64
        mem[64] = (32 * (arg1 * arg2) + arg2 - (arg1 * arg2)) + 224
        mem[(32 * (arg1 * arg2) + arg2 - (arg1 * arg2)) + 128] = 0
        mem[(32 * (arg1 * arg2) + arg2 - (arg1 * arg2)) + 160] = 0
        mem[(32 * (arg1 * arg2) + arg2 - (arg1 * arg2)) + 192] = 0
        mem[var43001] = (32 * (arg1 * arg2) + arg2 - (arg1 * arg2)) + 128
        s = var43001
        idx = var43002
        while idx - 1:
            mem[64] = mem[64] + 96
            mem[(32 * (arg1 * arg2) + arg2 - (arg1 * arg2)) + 128] = 0
            mem[(32 * (arg1 * arg2) + arg2 - (arg1 * arg2)) + 160] = 0
            mem[(32 * (arg1 * arg2) + arg2 - (arg1 * arg2)) + 192] = 0
            mem[s + 32] = (32 * (arg1 * arg2) + arg2 - (arg1 * arg2)) + 128
            s = s + 32
            idx = idx - 1
            continue 
        s = 0
        idx = -arg2 + (arg1 * arg2)
        while idx < arg1 * arg2:
            if stor3.length <= s:
                revert with 0, 'EnumerableMap: index out of bounds'
            require s < stor3.length
            mem[0] = 3
            _480 = mem[64]
            mem[64] = mem[64] + 64
            mem[_480] = 30
            mem[_480 + 32] = 'EnumerableMap: nonexistent key'
            mem[32] = 6
            if not stor6[stor3[s].field_0]:
                _492 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_492 + idx + 68] = mem[_480 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_492 + 98] = 0
                revert with memory
                  from mem[64]
                   len _492 + -mem[64] + 100
            require stor6[stor3[s].field_0] - 1 < stor5.length
            mem[0] = 5
            _516 = mem[64]
            mem[64] = mem[64] + 96
            mem[_516] = stor3[s].field_0
            mem[_516 + 32] = stor3[s].field_256
            mem[_516 + 64] = stor5[stor6[stor3[s].field_0] - 1].field_256
            require s < mem[96]
            mem[(32 * s) + 128] = _516
            s = s + 1
            idx = idx + 1
            continue 
        _464 = mem[64]
        mem[mem[64]] = 32
        _476 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _476:
            _546 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_546 + 32]
            mem[t + 64] = mem[_546 + 64]
            idx = idx + 1
            s = s + 32
            t = t + 96
            continue 
        return memory
          from mem[64]
           len _464 + (96 * _476) + -mem[64] + 64
    require stor3.length + arg2 - (arg1 * arg2) <= test266151307()
    mem[96] = stor3.length + arg2 - (arg1 * arg2)
    mem[64] = (32 * stor3.length + arg2 - (arg1 * arg2)) + 128
    if not stor3.length + arg2 - (arg1 * arg2):
        s = 0
        idx = -arg2 + (arg1 * arg2)
        while idx < stor3.length:
            if stor3.length <= s:
                revert with 0, 'EnumerableMap: index out of bounds'
            require s < stor3.length
            mem[0] = 3
            _211 = mem[64]
            mem[64] = mem[64] + 64
            mem[_211] = 30
            mem[_211 + 32] = 'EnumerableMap: nonexistent key'
            mem[32] = 6
            if not stor6[stor3[s].field_0]:
                _232 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_232 + idx + 68] = mem[_211 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_232 + 98] = 0
                revert with memory
                  from mem[64]
                   len _232 + -mem[64] + 100
            require stor6[stor3[s].field_0] - 1 < stor5.length
            mem[0] = 5
            _270 = mem[64]
            mem[64] = mem[64] + 96
            mem[_270] = stor3[s].field_0
            mem[_270 + 32] = stor3[s].field_256
            mem[_270 + 64] = stor5[stor6[stor3[s].field_0] - 1].field_256
            require s < mem[96]
            mem[(32 * s) + 128] = _270
            s = s + 1
            idx = idx + 1
            continue 
        _187 = mem[64]
        mem[mem[64]] = 32
        _199 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _199:
            _356 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_356 + 32]
            mem[t + 64] = mem[_356 + 64]
            idx = idx + 1
            s = s + 32
            t = t + 96
            continue 
        return memory
          from mem[64]
           len _187 + (96 * _199) + -mem[64] + 64
    mem[64] = (32 * stor3.length + arg2 - (arg1 * arg2)) + 224
    mem[(32 * stor3.length + arg2 - (arg1 * arg2)) + 128] = 0
    mem[(32 * stor3.length + arg2 - (arg1 * arg2)) + 160] = 0
    mem[(32 * stor3.length + arg2 - (arg1 * arg2)) + 192] = 0
    mem[var43001] = (32 * stor3.length + arg2 - (arg1 * arg2)) + 128
    s = var43001
    idx = var43002
    while idx - 1:
        mem[64] = mem[64] + 96
        mem[(32 * stor3.length + arg2 - (arg1 * arg2)) + 128] = 0
        mem[(32 * stor3.length + arg2 - (arg1 * arg2)) + 160] = 0
        mem[(32 * stor3.length + arg2 - (arg1 * arg2)) + 192] = 0
        mem[s + 32] = (32 * stor3.length + arg2 - (arg1 * arg2)) + 128
        s = s + 32
        idx = idx - 1
        continue 
    s = 0
    idx = -arg2 + (arg1 * arg2)
    while idx < stor3.length:
        if stor3.length <= s:
            revert with 0, 'EnumerableMap: index out of bounds'
        require s < stor3.length
        mem[0] = 3
        _481 = mem[64]
        mem[64] = mem[64] + 64
        mem[_481] = 30
        mem[_481 + 32] = 'EnumerableMap: nonexistent key'
        mem[32] = 6
        if not stor6[stor3[s].field_0]:
            _493 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_493 + idx + 68] = mem[_481 + idx + 32]
                idx = idx + 32
                continue 
            mem[_493 + 98] = 0
            revert with memory
              from mem[64]
               len _493 + -mem[64] + 100
        require stor6[stor3[s].field_0] - 1 < stor5.length
        mem[0] = 5
        _520 = mem[64]
        mem[64] = mem[64] + 96
        mem[_520] = stor3[s].field_0
        mem[_520 + 32] = stor3[s].field_256
        mem[_520 + 64] = stor5[stor6[stor3[s].field_0] - 1].field_256
        require s < mem[96]
        mem[(32 * s) + 128] = _520
        s = s + 1
        idx = idx + 1
        continue 
    _465 = mem[64]
    mem[mem[64]] = 32
    _477 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _477:
        _548 = mem[s]
        mem[t] = mem[mem[s]]
        mem[t + 32] = mem[_548 + 32]
        mem[t + 64] = mem[_548 + 64]
        idx = idx + 1
        s = s + 32
        t = t + 96
        continue 
    return memory
      from mem[64]
       len _465 + (96 * _477) + -mem[64] + 64
}

function getAsksByPageDesc(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if stor3.length <= 0:
        mem[96] = 0
        mem[64] = 128
        mem[128] = 32
        mem[160] = 0
        idx = 0
        s = 128
        t = 192
        while idx < mem[96]:
            _361 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_361 + 32]
            mem[t + 64] = mem[_361 + 64]
            idx = idx + 1
            s = s + 32
            t = t + 96
            continue 
        return memory
          from mem[64]
           len -mem[64] + 192
    if not arg1:
        if arg2 >= stor3.length:
            require stor3.length <= test266151307()
            mem[96] = stor3.length
            mem[64] = (32 * stor3.length) + 128
            if not stor3.length:
                s = 0
                idx = stor3.length - 1
                while idx > 0:
                    if stor3.length <= idx:
                        revert with 0, 'EnumerableMap: index out of bounds'
                    require idx < stor3.length
                    mem[0] = 3
                    _397 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_397] = 30
                    mem[_397 + 32] = 'EnumerableMap: nonexistent key'
                    mem[32] = 6
                    if not stor6[stor3[idx].field_0]:
                        _443 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_443 + idx + 68] = mem[_397 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_443 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _443 + -mem[64] + 100
                    require stor6[stor3[idx].field_0] - 1 < stor5.length
                    mem[0] = 5
                    _491 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_491] = stor3[idx].field_0
                    mem[_491 + 32] = stor3[idx].field_256
                    mem[_491 + 64] = stor5[stor6[stor3[idx].field_0] - 1].field_256
                    require s < mem[96]
                    mem[(32 * s) + 128] = _491
                    s = s + 1
                    idx = idx - 1
                    continue 
                if stor3.length <= 0:
                    revert with 0, 'EnumerableMap: index out of bounds'
                require 0 < stor3.length
                mem[0] = 3
                _396 = mem[64]
                mem[64] = mem[64] + 64
                mem[_396] = 30
                mem[_396 + 32] = 'EnumerableMap: nonexistent key'
                mem[32] = 6
                if not stor6[uint256(stor3.field_0)]:
                    revert with 0, 'EnumerableMap: nonexistent key', 0
                require stor6[uint256(stor3.field_0)] - 1 < stor5.length
                mem[0] = 5
                _489 = mem[64]
                mem[64] = mem[64] + 96
                mem[_489] = uint256(stor3.field_0)
                mem[_489 + 32] = uint256(stor3.field_256)
                mem[_489 + 64] = stor5[stor6[uint256(stor3.field_0)] - 1].field_256
                require stor3.length - 1 < mem[96]
                mem[(32 * stor3.length - 1) + 128] = _489
                _555 = mem[64]
                mem[mem[64]] = 32
                _605 = mem[96]
                mem[mem[64] + 32] = mem[96]
                idx = 0
                s = 128
                t = mem[64] + 64
                while idx < _605:
                    _723 = mem[s]
                    mem[t] = mem[mem[s]]
                    mem[t + 32] = mem[_723 + 32]
                    mem[t + 64] = mem[_723 + 64]
                    idx = idx + 1
                    s = s + 32
                    t = t + 96
                    continue 
                return memory
                  from mem[64]
                   len _555 + (96 * _605) + -mem[64] + 64
            mem[64] = (32 * stor3.length) + 224
            mem[(32 * stor3.length) + 128] = 0
            mem[(32 * stor3.length) + 160] = 0
            mem[(32 * stor3.length) + 192] = 0
            mem[var51001] = (32 * stor3.length) + 128
            s = var51001
            idx = var51002
            while idx - 1:
                mem[64] = mem[64] + 96
                mem[(32 * stor3.length) + 128] = 0
                mem[(32 * stor3.length) + 160] = 0
                mem[(32 * stor3.length) + 192] = 0
                mem[s + 32] = (32 * stor3.length) + 128
                s = s + 32
                idx = idx - 1
                continue 
            s = 0
            idx = stor3.length - 1
            while idx > 0:
                if stor3.length <= idx:
                    revert with 0, 'EnumerableMap: index out of bounds'
                require idx < stor3.length
                mem[0] = 3
                _978 = mem[64]
                mem[64] = mem[64] + 64
                mem[_978] = 30
                mem[_978 + 32] = 'EnumerableMap: nonexistent key'
                mem[32] = 6
                if not stor6[stor3[idx].field_0]:
                    _1008 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_1008 + idx + 68] = mem[_978 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1008 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _1008 + -mem[64] + 100
                require stor6[stor3[idx].field_0] - 1 < stor5.length
                mem[0] = 5
                _1044 = mem[64]
                mem[64] = mem[64] + 96
                mem[_1044] = stor3[idx].field_0
                mem[_1044 + 32] = stor3[idx].field_256
                mem[_1044 + 64] = stor5[stor6[stor3[idx].field_0] - 1].field_256
                require s < mem[96]
                mem[(32 * s) + 128] = _1044
                s = s + 1
                idx = idx - 1
                continue 
            if stor3.length <= 0:
                revert with 0, 'EnumerableMap: index out of bounds'
            require 0 < stor3.length
            mem[0] = 3
            _977 = mem[64]
            mem[64] = mem[64] + 64
            mem[_977] = 30
            mem[_977 + 32] = 'EnumerableMap: nonexistent key'
            mem[32] = 6
            if not stor6[uint256(stor3.field_0)]:
                revert with 0, 'EnumerableMap: nonexistent key', 0
            require stor6[uint256(stor3.field_0)] - 1 < stor5.length
            mem[0] = 5
            _1042 = mem[64]
            mem[64] = mem[64] + 96
            mem[_1042] = uint256(stor3.field_0)
            mem[_1042 + 32] = uint256(stor3.field_256)
            mem[_1042 + 64] = stor5[stor6[uint256(stor3.field_0)] - 1].field_256
            require stor3.length - 1 < mem[96]
            mem[(32 * stor3.length - 1) + 128] = _1042
            _1061 = mem[64]
            mem[mem[64]] = 32
            _1077 = mem[96]
            mem[mem[64] + 32] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 64
            while idx < _1077:
                _1127 = mem[s]
                mem[t] = mem[mem[s]]
                mem[t + 32] = mem[_1127 + 32]
                mem[t + 64] = mem[_1127 + 64]
                idx = idx + 1
                s = s + 32
                t = t + 96
                continue 
            return memory
              from mem[64]
               len _1061 + (96 * _1077) + -mem[64] + 64
        require arg2 <= test266151307()
        mem[96] = arg2
        mem[64] = (32 * arg2) + 128
        if not arg2:
            if stor3.length - arg2:
                s = 0
                idx = stor3.length - 1
                while idx >= stor3.length - arg2:
                    if stor3.length <= idx:
                        revert with 0, 'EnumerableMap: index out of bounds'
                    require idx < stor3.length
                    mem[0] = 3
                    _393 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_393] = 30
                    mem[_393 + 32] = 'EnumerableMap: nonexistent key'
                    mem[32] = 6
                    if not stor6[stor3[idx].field_0]:
                        _436 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_436 + idx + 68] = mem[_393 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_436 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _436 + -mem[64] + 100
                    require stor6[stor3[idx].field_0] - 1 < stor5.length
                    mem[0] = 5
                    _480 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_480] = stor3[idx].field_0
                    mem[_480 + 32] = stor3[idx].field_256
                    mem[_480 + 64] = stor5[stor6[stor3[idx].field_0] - 1].field_256
                    require s < mem[96]
                    mem[(32 * s) + 128] = _480
                    s = s + 1
                    idx = idx - 1
                    continue 
                _368 = mem[64]
                mem[mem[64]] = 32
                _391 = mem[96]
                mem[mem[64] + 32] = mem[96]
                idx = 0
                s = 128
                t = mem[64] + 64
                while idx < _391:
                    _718 = mem[s]
                    mem[t] = mem[mem[s]]
                    mem[t + 32] = mem[_718 + 32]
                    mem[t + 64] = mem[_718 + 64]
                    idx = idx + 1
                    s = s + 32
                    t = t + 96
                    continue 
                return memory
                  from mem[64]
                   len _368 + (96 * _391) + -mem[64] + 64
            s = 0
            idx = stor3.length - 1
            while idx > stor3.length - arg2:
                if stor3.length <= idx:
                    revert with 0, 'EnumerableMap: index out of bounds'
                require idx < stor3.length
                mem[0] = 3
                _395 = mem[64]
                mem[64] = mem[64] + 64
                mem[_395] = 30
                mem[_395 + 32] = 'EnumerableMap: nonexistent key'
                mem[32] = 6
                if not stor6[stor3[idx].field_0]:
                    _438 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_438 + idx + 68] = mem[_395 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_438 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _438 + -mem[64] + 100
                require stor6[stor3[idx].field_0] - 1 < stor5.length
                mem[0] = 5
                _484 = mem[64]
                mem[64] = mem[64] + 96
                mem[_484] = stor3[idx].field_0
                mem[_484 + 32] = stor3[idx].field_256
                mem[_484 + 64] = stor5[stor6[stor3[idx].field_0] - 1].field_256
                require s < mem[96]
                mem[(32 * s) + 128] = _484
                s = s + 1
                idx = idx - 1
                continue 
            if stor3.length <= 0:
                revert with 0, 'EnumerableMap: index out of bounds'
            require 0 < stor3.length
            mem[0] = 3
            _394 = mem[64]
            mem[64] = mem[64] + 64
            mem[_394] = 30
            mem[_394 + 32] = 'EnumerableMap: nonexistent key'
            mem[32] = 6
            if not stor6[uint256(stor3.field_0)]:
                revert with 0, 'EnumerableMap: nonexistent key', 0
            require stor6[uint256(stor3.field_0)] - 1 < stor5.length
            mem[0] = 5
            _482 = mem[64]
            mem[64] = mem[64] + 96
            mem[_482] = uint256(stor3.field_0)
            mem[_482 + 32] = uint256(stor3.field_256)
            mem[_482 + 64] = stor5[stor6[uint256(stor3.field_0)] - 1].field_256
            require arg2 - 1 < mem[96]
            mem[(32 * arg2 - 1) + 128] = _482
            _554 = mem[64]
            mem[mem[64]] = 32
            _602 = mem[96]
            mem[mem[64] + 32] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 64
            while idx < _602:
                _720 = mem[s]
                mem[t] = mem[mem[s]]
                mem[t + 32] = mem[_720 + 32]
                mem[t + 64] = mem[_720 + 64]
                idx = idx + 1
                s = s + 32
                t = t + 96
                continue 
            return memory
              from mem[64]
               len _554 + (96 * _602) + -mem[64] + 64
        mem[64] = (32 * arg2) + 224
        mem[(32 * arg2) + 128] = 0
        mem[(32 * arg2) + 160] = 0
        mem[(32 * arg2) + 192] = 0
        mem[var51001] = (32 * arg2) + 128
        s = var51001
        idx = var51002
        while idx - 1:
            mem[64] = mem[64] + 96
            mem[(32 * arg2) + 128] = 0
            mem[(32 * arg2) + 160] = 0
            mem[(32 * arg2) + 192] = 0
            mem[s + 32] = (32 * arg2) + 128
            s = s + 32
            idx = idx - 1
            continue 
        if stor3.length - arg2:
            s = 0
            idx = stor3.length - 1
            while idx >= stor3.length - arg2:
                if stor3.length <= idx:
                    revert with 0, 'EnumerableMap: index out of bounds'
                require idx < stor3.length
                mem[0] = 3
                _974 = mem[64]
                mem[64] = mem[64] + 64
                mem[_974] = 30
                mem[_974 + 32] = 'EnumerableMap: nonexistent key'
                mem[32] = 6
                if not stor6[stor3[idx].field_0]:
                    _1004 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_1004 + idx + 68] = mem[_974 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1004 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _1004 + -mem[64] + 100
                require stor6[stor3[idx].field_0] - 1 < stor5.length
                mem[0] = 5
                _1036 = mem[64]
                mem[64] = mem[64] + 96
                mem[_1036] = stor3[idx].field_0
                mem[_1036 + 32] = stor3[idx].field_256
                mem[_1036 + 64] = stor5[stor6[stor3[idx].field_0] - 1].field_256
                require s < mem[96]
                mem[(32 * s) + 128] = _1036
                s = s + 1
                idx = idx - 1
                continue 
            _950 = mem[64]
            mem[mem[64]] = 32
            _972 = mem[96]
            mem[mem[64] + 32] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 64
            while idx < _972:
                _1122 = mem[s]
                mem[t] = mem[mem[s]]
                mem[t + 32] = mem[_1122 + 32]
                mem[t + 64] = mem[_1122 + 64]
                idx = idx + 1
                s = s + 32
                t = t + 96
                continue 
            return memory
              from mem[64]
               len _950 + (96 * _972) + -mem[64] + 64
        s = 0
        idx = stor3.length - 1
        while idx > stor3.length - arg2:
            if stor3.length <= idx:
                revert with 0, 'EnumerableMap: index out of bounds'
            require idx < stor3.length
            mem[0] = 3
            _976 = mem[64]
            mem[64] = mem[64] + 64
            mem[_976] = 30
            mem[_976 + 32] = 'EnumerableMap: nonexistent key'
            mem[32] = 6
            if not stor6[stor3[idx].field_0]:
                _1006 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_1006 + idx + 68] = mem[_976 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1006 + 98] = 0
                revert with memory
                  from mem[64]
                   len _1006 + -mem[64] + 100
            require stor6[stor3[idx].field_0] - 1 < stor5.length
            mem[0] = 5
            _1040 = mem[64]
            mem[64] = mem[64] + 96
            mem[_1040] = stor3[idx].field_0
            mem[_1040 + 32] = stor3[idx].field_256
            mem[_1040 + 64] = stor5[stor6[stor3[idx].field_0] - 1].field_256
            require s < mem[96]
            mem[(32 * s) + 128] = _1040
            s = s + 1
            idx = idx - 1
            continue 
        if stor3.length <= 0:
            revert with 0, 'EnumerableMap: index out of bounds'
        require 0 < stor3.length
        mem[0] = 3
        _975 = mem[64]
        mem[64] = mem[64] + 64
        mem[_975] = 30
        mem[_975 + 32] = 'EnumerableMap: nonexistent key'
        mem[32] = 6
        if not stor6[uint256(stor3.field_0)]:
            revert with 0, 'EnumerableMap: nonexistent key', 0
        require stor6[uint256(stor3.field_0)] - 1 < stor5.length
        mem[0] = 5
        _1038 = mem[64]
        mem[64] = mem[64] + 96
        mem[_1038] = uint256(stor3.field_0)
        mem[_1038 + 32] = uint256(stor3.field_256)
        mem[_1038 + 64] = stor5[stor6[uint256(stor3.field_0)] - 1].field_256
        require arg2 - 1 < mem[96]
        mem[(32 * arg2 - 1) + 128] = _1038
        _1060 = mem[64]
        mem[mem[64]] = 32
        _1076 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _1076:
            _1124 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_1124 + 32]
            mem[t + 64] = mem[_1124 + 64]
            idx = idx + 1
            s = s + 32
            t = t + 96
            continue 
        return memory
          from mem[64]
           len _1060 + (96 * _1076) + -mem[64] + 64
    if arg1 * arg2 >= stor3.length:
        require stor3.length + arg2 - (arg1 * arg2) <= test266151307()
        mem[96] = stor3.length + arg2 - (arg1 * arg2)
        mem[64] = (32 * stor3.length + arg2 - (arg1 * arg2)) + 128
        if not stor3.length + arg2 - (arg1 * arg2):
            s = 0
            idx = stor3.length + arg2 + (-1 * arg1 * arg2) - 1
            while idx > 0:
                if stor3.length <= idx:
                    revert with 0, 'EnumerableMap: index out of bounds'
                require idx < stor3.length
                mem[0] = 3
                _402 = mem[64]
                mem[64] = mem[64] + 64
                mem[_402] = 30
                mem[_402 + 32] = 'EnumerableMap: nonexistent key'
                mem[32] = 6
                if not stor6[stor3[idx].field_0]:
                    _453 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_453 + idx + 68] = mem[_402 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_453 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _453 + -mem[64] + 100
                require stor6[stor3[idx].field_0] - 1 < stor5.length
                mem[0] = 5
                _506 = mem[64]
                mem[64] = mem[64] + 96
                mem[_506] = stor3[idx].field_0
                mem[_506 + 32] = stor3[idx].field_256
                mem[_506 + 64] = stor5[stor6[stor3[idx].field_0] - 1].field_256
                require s < mem[96]
                mem[(32 * s) + 128] = _506
                s = s + 1
                idx = idx - 1
                continue 
            if stor3.length <= 0:
                revert with 0, 'EnumerableMap: index out of bounds'
            require 0 < stor3.length
            mem[0] = 3
            _401 = mem[64]
            mem[64] = mem[64] + 64
            mem[_401] = 30
            mem[_401 + 32] = 'EnumerableMap: nonexistent key'
            mem[32] = 6
            if not stor6[uint256(stor3.field_0)]:
                revert with 0, 'EnumerableMap: nonexistent key', 0
            require stor6[uint256(stor3.field_0)] - 1 < stor5.length
            mem[0] = 5
            _504 = mem[64]
            mem[64] = mem[64] + 96
            mem[_504] = uint256(stor3.field_0)
            mem[_504 + 32] = uint256(stor3.field_256)
            mem[_504 + 64] = stor5[stor6[uint256(stor3.field_0)] - 1].field_256
            require stor3.length + arg2 + (-1 * arg1 * arg2) - 1 < mem[96]
            mem[(32 * stor3.length + arg2 + (-1 * arg1 * arg2) - 1) + 128] = _504
            _557 = mem[64]
            mem[mem[64]] = 32
            _609 = mem[96]
            mem[mem[64] + 32] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 64
            while idx < _609:
                _731 = mem[s]
                mem[t] = mem[mem[s]]
                mem[t + 32] = mem[_731 + 32]
                mem[t + 64] = mem[_731 + 64]
                idx = idx + 1
                s = s + 32
                t = t + 96
                continue 
            return memory
              from mem[64]
               len _557 + (96 * _609) + -mem[64] + 64
        mem[64] = (32 * stor3.length + arg2 - (arg1 * arg2)) + 224
        mem[(32 * stor3.length + arg2 - (arg1 * arg2)) + 128] = 0
        mem[(32 * stor3.length + arg2 - (arg1 * arg2)) + 160] = 0
        mem[(32 * stor3.length + arg2 - (arg1 * arg2)) + 192] = 0
        mem[var51001] = (32 * stor3.length + arg2 - (arg1 * arg2)) + 128
        s = var51001
        idx = var51002
        while idx - 1:
            mem[64] = mem[64] + 96
            mem[(32 * stor3.length + arg2 - (arg1 * arg2)) + 128] = 0
            mem[(32 * stor3.length + arg2 - (arg1 * arg2)) + 160] = 0
            mem[(32 * stor3.length + arg2 - (arg1 * arg2)) + 192] = 0
            mem[s + 32] = (32 * stor3.length + arg2 - (arg1 * arg2)) + 128
            s = s + 32
            idx = idx - 1
            continue 
        s = 0
        idx = stor3.length + arg2 + (-1 * arg1 * arg2) - 1
        while idx > 0:
            if stor3.length <= idx:
                revert with 0, 'EnumerableMap: index out of bounds'
            require idx < stor3.length
            mem[0] = 3
            _983 = mem[64]
            mem[64] = mem[64] + 64
            mem[_983] = 30
            mem[_983 + 32] = 'EnumerableMap: nonexistent key'
            mem[32] = 6
            if not stor6[stor3[idx].field_0]:
                _1013 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_1013 + idx + 68] = mem[_983 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1013 + 98] = 0
                revert with memory
                  from mem[64]
                   len _1013 + -mem[64] + 100
            require stor6[stor3[idx].field_0] - 1 < stor5.length
            mem[0] = 5
            _1054 = mem[64]
            mem[64] = mem[64] + 96
            mem[_1054] = stor3[idx].field_0
            mem[_1054 + 32] = stor3[idx].field_256
            mem[_1054 + 64] = stor5[stor6[stor3[idx].field_0] - 1].field_256
            require s < mem[96]
            mem[(32 * s) + 128] = _1054
            s = s + 1
            idx = idx - 1
            continue 
        if stor3.length <= 0:
            revert with 0, 'EnumerableMap: index out of bounds'
        require 0 < stor3.length
        mem[0] = 3
        _982 = mem[64]
        mem[64] = mem[64] + 64
        mem[_982] = 30
        mem[_982 + 32] = 'EnumerableMap: nonexistent key'
        mem[32] = 6
        if not stor6[uint256(stor3.field_0)]:
            revert with 0, 'EnumerableMap: nonexistent key', 0
        require stor6[uint256(stor3.field_0)] - 1 < stor5.length
        mem[0] = 5
        _1052 = mem[64]
        mem[64] = mem[64] + 96
        mem[_1052] = uint256(stor3.field_0)
        mem[_1052 + 32] = uint256(stor3.field_256)
        mem[_1052 + 64] = stor5[stor6[uint256(stor3.field_0)] - 1].field_256
        require stor3.length + arg2 + (-1 * arg1 * arg2) - 1 < mem[96]
        mem[(32 * stor3.length + arg2 + (-1 * arg1 * arg2) - 1) + 128] = _1052
        _1063 = mem[64]
        mem[mem[64]] = 32
        _1079 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _1079:
            _1135 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_1135 + 32]
            mem[t + 64] = mem[_1135 + 64]
            idx = idx + 1
            s = s + 32
            t = t + 96
            continue 
        return memory
          from mem[64]
           len _1063 + (96 * _1079) + -mem[64] + 64
    require arg2 - (arg1 * arg2) + (arg1 * arg2) <= test266151307()
    mem[96] = arg2 - (arg1 * arg2) + (arg1 * arg2)
    mem[64] = (32 * arg2 - (arg1 * arg2) + (arg1 * arg2)) + 128
    if not arg2 - (arg1 * arg2) + (arg1 * arg2):
        if stor3.length - (arg1 * arg2):
            s = 0
            idx = stor3.length + arg2 + (-1 * arg1 * arg2) - 1
            while idx >= stor3.length - (arg1 * arg2):
                if stor3.length <= idx:
                    revert with 0, 'EnumerableMap: index out of bounds'
                require idx < stor3.length
                mem[0] = 3
                _398 = mem[64]
                mem[64] = mem[64] + 64
                mem[_398] = 30
                mem[_398 + 32] = 'EnumerableMap: nonexistent key'
                mem[32] = 6
                if not stor6[stor3[idx].field_0]:
                    _446 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_446 + idx + 68] = mem[_398 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_446 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _446 + -mem[64] + 100
                require stor6[stor3[idx].field_0] - 1 < stor5.length
                mem[0] = 5
                _495 = mem[64]
                mem[64] = mem[64] + 96
                mem[_495] = stor3[idx].field_0
                mem[_495 + 32] = stor3[idx].field_256
                mem[_495 + 64] = stor5[stor6[stor3[idx].field_0] - 1].field_256
                require s < mem[96]
                mem[(32 * s) + 128] = _495
                s = s + 1
                idx = idx - 1
                continue 
            _374 = mem[64]
            mem[mem[64]] = 32
            _392 = mem[96]
            mem[mem[64] + 32] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 64
            while idx < _392:
                _726 = mem[s]
                mem[t] = mem[mem[s]]
                mem[t + 32] = mem[_726 + 32]
                mem[t + 64] = mem[_726 + 64]
                idx = idx + 1
                s = s + 32
                t = t + 96
                continue 
            return memory
              from mem[64]
               len _374 + (96 * _392) + -mem[64] + 64
        s = 0
        idx = stor3.length + arg2 + (-1 * arg1 * arg2) - 1
        while idx > stor3.length - (arg1 * arg2):
            if stor3.length <= idx:
                revert with 0, 'EnumerableMap: index out of bounds'
            require idx < stor3.length
            mem[0] = 3
            _400 = mem[64]
            mem[64] = mem[64] + 64
            mem[_400] = 30
            mem[_400 + 32] = 'EnumerableMap: nonexistent key'
            mem[32] = 6
            if not stor6[stor3[idx].field_0]:
                _448 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_448 + idx + 68] = mem[_400 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_448 + 98] = 0
                revert with memory
                  from mem[64]
                   len _448 + -mem[64] + 100
            require stor6[stor3[idx].field_0] - 1 < stor5.length
            mem[0] = 5
            _499 = mem[64]
            mem[64] = mem[64] + 96
            mem[_499] = stor3[idx].field_0
            mem[_499 + 32] = stor3[idx].field_256
            mem[_499 + 64] = stor5[stor6[stor3[idx].field_0] - 1].field_256
            require s < mem[96]
            mem[(32 * s) + 128] = _499
            s = s + 1
            idx = idx - 1
            continue 
        if stor3.length <= 0:
            revert with 0, 'EnumerableMap: index out of bounds'
        require 0 < stor3.length
        mem[0] = 3
        _399 = mem[64]
        mem[64] = mem[64] + 64
        mem[_399] = 30
        mem[_399 + 32] = 'EnumerableMap: nonexistent key'
        mem[32] = 6
        if not stor6[uint256(stor3.field_0)]:
            revert with 0, 'EnumerableMap: nonexistent key', 0
        require stor6[uint256(stor3.field_0)] - 1 < stor5.length
        mem[0] = 5
        _497 = mem[64]
        mem[64] = mem[64] + 96
        mem[_497] = uint256(stor3.field_0)
        mem[_497 + 32] = uint256(stor3.field_256)
        mem[_497 + 64] = stor5[stor6[uint256(stor3.field_0)] - 1].field_256
        require arg2 + (-1 * arg1 * arg2) + (arg1 * arg2) - 1 < mem[96]
        mem[(32 * arg2 + (-1 * arg1 * arg2) + (arg1 * arg2) - 1) + 128] = _497
        _556 = mem[64]
        mem[mem[64]] = 32
        _606 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _606:
            _728 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_728 + 32]
            mem[t + 64] = mem[_728 + 64]
            idx = idx + 1
            s = s + 32
            t = t + 96
            continue 
        return memory
          from mem[64]
           len _556 + (96 * _606) + -mem[64] + 64
    mem[64] = (32 * arg2 - (arg1 * arg2) + (arg1 * arg2)) + 224
    mem[(32 * arg2 - (arg1 * arg2) + (arg1 * arg2)) + 128] = 0
    mem[(32 * arg2 - (arg1 * arg2) + (arg1 * arg2)) + 160] = 0
    mem[(32 * arg2 - (arg1 * arg2) + (arg1 * arg2)) + 192] = 0
    mem[var51001] = (32 * arg2 - (arg1 * arg2) + (arg1 * arg2)) + 128
    s = var51001
    idx = var51002
    while idx - 1:
        mem[64] = mem[64] + 96
        mem[(32 * arg2 - (arg1 * arg2) + (arg1 * arg2)) + 128] = 0
        mem[(32 * arg2 - (arg1 * arg2) + (arg1 * arg2)) + 160] = 0
        mem[(32 * arg2 - (arg1 * arg2) + (arg1 * arg2)) + 192] = 0
        mem[s + 32] = (32 * arg2 - (arg1 * arg2) + (arg1 * arg2)) + 128
        s = s + 32
        idx = idx - 1
        continue 
    if stor3.length - (arg1 * arg2):
        s = 0
        idx = stor3.length + arg2 + (-1 * arg1 * arg2) - 1
        while idx >= stor3.length - (arg1 * arg2):
            if stor3.length <= idx:
                revert with 0, 'EnumerableMap: index out of bounds'
            require idx < stor3.length
            mem[0] = 3
            _979 = mem[64]
            mem[64] = mem[64] + 64
            mem[_979] = 30
            mem[_979 + 32] = 'EnumerableMap: nonexistent key'
            mem[32] = 6
            if not stor6[stor3[idx].field_0]:
                _1009 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_1009 + idx + 68] = mem[_979 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1009 + 98] = 0
                revert with memory
                  from mem[64]
                   len _1009 + -mem[64] + 100
            require stor6[stor3[idx].field_0] - 1 < stor5.length
            mem[0] = 5
            _1046 = mem[64]
            mem[64] = mem[64] + 96
            mem[_1046] = stor3[idx].field_0
            mem[_1046 + 32] = stor3[idx].field_256
            mem[_1046 + 64] = stor5[stor6[stor3[idx].field_0] - 1].field_256
            require s < mem[96]
            mem[(32 * s) + 128] = _1046
            s = s + 1
            idx = idx - 1
            continue 
        _956 = mem[64]
        mem[mem[64]] = 32
        _973 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _973:
            _1130 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_1130 + 32]
            mem[t + 64] = mem[_1130 + 64]
            idx = idx + 1
            s = s + 32
            t = t + 96
            continue 
        return memory
          from mem[64]
           len _956 + (96 * _973) + -mem[64] + 64
    s = 0
    idx = stor3.length + arg2 + (-1 * arg1 * arg2) - 1
    while idx > stor3.length - (arg1 * arg2):
        if stor3.length <= idx:
            revert with 0, 'EnumerableMap: index out of bounds'
        require idx < stor3.length
        mem[0] = 3
        _981 = mem[64]
        mem[64] = mem[64] + 64
        mem[_981] = 30
        mem[_981 + 32] = 'EnumerableMap: nonexistent key'
        mem[32] = 6
        if not stor6[stor3[idx].field_0]:
            _1011 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_1011 + idx + 68] = mem[_981 + idx + 32]
                idx = idx + 32
                continue 
            mem[_1011 + 98] = 0
            revert with memory
              from mem[64]
               len _1011 + -mem[64] + 100
        require stor6[stor3[idx].field_0] - 1 < stor5.length
        mem[0] = 5
        _1050 = mem[64]
        mem[64] = mem[64] + 96
        mem[_1050] = stor3[idx].field_0
        mem[_1050 + 32] = stor3[idx].field_256
        mem[_1050 + 64] = stor5[stor6[stor3[idx].field_0] - 1].field_256
        require s < mem[96]
        mem[(32 * s) + 128] = _1050
        s = s + 1
        idx = idx - 1
        continue 
    if stor3.length <= 0:
        revert with 0, 'EnumerableMap: index out of bounds'
    require 0 < stor3.length
    mem[0] = 3
    _980 = mem[64]
    mem[64] = mem[64] + 64
    mem[_980] = 30
    mem[_980 + 32] = 'EnumerableMap: nonexistent key'
    mem[32] = 6
    if not stor6[uint256(stor3.field_0)]:
        revert with 0, 'EnumerableMap: nonexistent key', 0
    require stor6[uint256(stor3.field_0)] - 1 < stor5.length
    mem[0] = 5
    _1048 = mem[64]
    mem[64] = mem[64] + 96
    mem[_1048] = uint256(stor3.field_0)
    mem[_1048 + 32] = uint256(stor3.field_256)
    mem[_1048 + 64] = stor5[stor6[uint256(stor3.field_0)] - 1].field_256
    require arg2 + (-1 * arg1 * arg2) + (arg1 * arg2) - 1 < mem[96]
    mem[(32 * arg2 + (-1 * arg1 * arg2) + (arg1 * arg2) - 1) + 128] = _1048
    _1062 = mem[64]
    mem[mem[64]] = 32
    _1078 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _1078:
        _1132 = mem[s]
        mem[t] = mem[mem[s]]
        mem[t + 32] = mem[_1132 + 32]
        mem[t + 64] = mem[_1132 + 64]
        idx = idx + 1
        s = s + 32
        t = t + 96
        continue 
    return memory
      from mem[64]
       len _1062 + (96 * _1078) + -mem[64] + 64
}



}
