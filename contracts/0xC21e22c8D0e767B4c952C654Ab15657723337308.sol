contract main {




// =====================  Runtime code  =====================


address owner;
address sub_3070ad8cAddress;
address sub_ff920c74Address;
uint256 defaultAmount;

function sub_3070ad8c(?) {
    return sub_3070ad8cAddress
}

function getOwner() {
    return owner
}

function defaultAmount() {
    return defaultAmount
}

function sub_ff920c74(?) {
    return sub_ff920c74Address
}

function _fallback() payable {
    revert
}

function changeOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    emit OwnerSet(owner, arg1);
    owner = arg1
}

function sub_b5cdf2e5(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    sub_3070ad8cAddress = address(arg1)
    sub_ff920c74Address = address(arg2)
    defaultAmount = arg3
}

function transferETH(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    staticcall this.address.0x893d20e8 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    call ext_call.return_data[12 len 20] with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_8a3f2d01(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    if arg3:
        call address(arg1).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg2), arg3
    else:
        call address(arg1).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg2), test266151307()
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function transferERC(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    staticcall this.address.0x893d20e8 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if arg2:
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args address(ext_call.return_data[0]), arg2
    else:
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args address(ext_call.return_data[0]), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_cf923518(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    staticcall sub_3070ad8cAddress.getPair(address arg1) with:
            gas gas_remaining wei
           args address(arg1)
    mem[800 len 352] = ext_call.return_data[0 len 352]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 352
    require 831 < return_data.size + 800
    if not bool(ceil32(return_data.size) + 960 <= test266151307()):
        revert with 'NH{q', 65
    require 160 <= return_data.size
    idx = 800
    s = ceil32(return_data.size) + 800
    while idx < 960:
        require mem[idx] == mem[idx]
        mem[s] = mem[idx]
        idx = idx + 32
        s = s + 32
        continue 
    require 991 < return_data.size + 800
    if not bool(ceil32(return_data.size) + 1088 <= test266151307()):
        revert with 'NH{q', 65
    require 288 <= return_data.size
    idx = 960
    s = ceil32(return_data.size) + 960
    while idx < 1088:
        require mem[idx] == mem[idx]
        mem[s] = mem[idx]
        idx = idx + 32
        s = s + 32
        continue 
    require 1119 < return_data.size + 800
    if not bool(ceil32(return_data.size) + 1152 <= test266151307()):
        revert with 'NH{q', 65
    require 352 <= return_data.size
    idx = 1088
    s = ceil32(return_data.size) + 1088
    while idx < 1152:
        require mem[idx] == mem[idx]
        mem[s] = mem[idx]
        idx = idx + 32
        s = s + 32
        continue 
    return mem[ceil32(return_data.size) + 800 len 160], 
           mem[ceil32(return_data.size) + 960 len 128],
           mem[ceil32(return_data.size) + 1088 len 64]
}

function sell2(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    staticcall sub_3070ad8cAddress.getPair(address arg1) with:
            gas gas_remaining wei
           args arg1
    mem[448 len 352] = ext_call.return_data[0 len 352]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 352
    require 479 < return_data.size + 448
    if not bool(ceil32(return_data.size) + 608 <= test266151307()):
        revert with 'NH{q', 65
    require 160 <= return_data.size
    idx = 448
    s = ceil32(return_data.size) + 448
    while idx < 608:
        require mem[idx] == mem[idx]
        mem[s] = mem[idx]
        idx = idx + 32
        s = s + 32
        continue 
    require 639 < return_data.size + 448
    if not bool(ceil32(return_data.size) + 736 <= test266151307()):
        revert with 'NH{q', 65
    require 288 <= return_data.size
    idx = 608
    s = ceil32(return_data.size) + 608
    while idx < 736:
        require mem[idx] == mem[idx]
        mem[s] = mem[idx]
        idx = idx + 32
        s = s + 32
        continue 
    require 767 < return_data.size + 448
    if not bool(ceil32(return_data.size) + 800 <= test266151307()):
        revert with 'NH{q', 65
    require 352 <= return_data.size
    idx = 736
    s = ceil32(return_data.size) + 736
    while idx < 800:
        require mem[idx] == mem[idx]
        mem[s] = mem[idx]
        idx = idx + 32
        s = s + 32
        continue 
    require mem[ceil32(return_data.size) + 576] < block.timestamp
    if arg2:
        call arg1.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args sub_3070ad8cAddress, arg2
    else:
        call arg1.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args sub_3070ad8cAddress, mem[ceil32(return_data.size) + 608]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sell(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    staticcall sub_3070ad8cAddress.getPair(address arg1) with:
            gas gas_remaining wei
           args arg1
    mem[448 len 352] = ext_call.return_data[0 len 352]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 352
    require 479 < return_data.size + 448
    if not bool(ceil32(return_data.size) + 608 <= test266151307()):
        revert with 'NH{q', 65
    require 160 <= return_data.size
    idx = 448
    s = ceil32(return_data.size) + 448
    while idx < 608:
        require mem[idx] == mem[idx]
        mem[s] = mem[idx]
        idx = idx + 32
        s = s + 32
        continue 
    require 639 < return_data.size + 448
    if not bool(ceil32(return_data.size) + 736 <= test266151307()):
        revert with 'NH{q', 65
    require 288 <= return_data.size
    idx = 608
    s = ceil32(return_data.size) + 608
    while idx < 736:
        require mem[idx] == mem[idx]
        mem[s] = mem[idx]
        idx = idx + 32
        s = s + 32
        continue 
    require 767 < return_data.size + 448
    if not bool(ceil32(return_data.size) + 800 <= test266151307()):
        revert with 'NH{q', 65
    require 352 <= return_data.size
    idx = 736
    s = ceil32(return_data.size) + 736
    while idx < 800:
        require mem[idx] == mem[idx]
        mem[s] = mem[idx]
        idx = idx + 32
        s = s + 32
        continue 
    require mem[ceil32(return_data.size) + 576] < block.timestamp
    require ext_code.size(sub_3070ad8cAddress)
    if arg2:
        call sub_3070ad8cAddress.swap(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args address(arg1), sub_ff920c74Address, arg2
    else:
        call sub_3070ad8cAddress.swap(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args address(arg1), sub_ff920c74Address, mem[ceil32(return_data.size) + 608]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function calculate(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    staticcall sub_3070ad8cAddress.getPair(address arg1) with:
            gas gas_remaining wei
           args arg1
    mem[448 len 352] = ext_call.return_data[0 len 352]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 352
    require 479 < return_data.size + 448
    if not bool(ceil32(return_data.size) + 608 <= test266151307()):
        revert with 'NH{q', 65
    require 160 <= return_data.size
    idx = 448
    s = ceil32(return_data.size) + 448
    while idx < 608:
        require mem[idx] == mem[idx]
        mem[s] = mem[idx]
        idx = idx + 32
        s = s + 32
        continue 
    require 639 < return_data.size + 448
    if not bool(ceil32(return_data.size) + 736 <= test266151307()):
        revert with 'NH{q', 65
    require 288 <= return_data.size
    idx = 608
    s = ceil32(return_data.size) + 608
    while idx < 736:
        require mem[idx] == mem[idx]
        mem[s] = mem[idx]
        idx = idx + 32
        s = s + 32
        continue 
    require 767 < return_data.size + 448
    if not bool(ceil32(return_data.size) + 800 <= test266151307()):
        revert with 'NH{q', 65
    require 352 <= return_data.size
    idx = 736
    s = ceil32(return_data.size) + 736
    while idx < 800:
        require mem[idx] == mem[idx]
        mem[s] = mem[idx]
        idx = idx + 32
        s = s + 32
        continue 
    if arg2:
        staticcall sub_3070ad8cAddress.0x2cbe7ed with:
                gas gas_remaining wei
               args address(arg1), arg2, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_call.return_data[32] == ext_call.return_data[32]
        return arg2, ext_call.return_data[0], mem[ceil32(return_data.size) + 576]
    if not mem[ceil32(return_data.size) + 544]:
        if mem[ceil32(return_data.size) + 448] < mem[ceil32(return_data.size) + 512]:
            revert with 'NH{q', 17
        if not mem[ceil32(return_data.size) + 480]:
            revert with 'NH{q', 18
        if mem[ceil32(return_data.size) + 448] - mem[ceil32(return_data.size) + 512] / mem[ceil32(return_data.size) + 480] and 1 > -1 / mem[ceil32(return_data.size) + 448] - mem[ceil32(return_data.size) + 512] / mem[ceil32(return_data.size) + 480]:
            revert with 'NH{q', 17
        if defaultAmount < mem[ceil32(return_data.size) + 448] - mem[ceil32(return_data.size) + 512] / mem[ceil32(return_data.size) + 480]:
            revert with 'NH{q', 17
        staticcall sub_3070ad8cAddress.0x2cbe7ed with:
                gas gas_remaining wei
               args address(arg1), defaultAmount - (mem[ceil32(return_data.size) + 448] - mem[ceil32(return_data.size) + 512] / mem[ceil32(return_data.size) + 480]), 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_call.return_data[32] == ext_call.return_data[32]
        return defaultAmount - (mem[ceil32(return_data.size) + 448] - mem[ceil32(return_data.size) + 512] / mem[ceil32(return_data.size) + 480]), 
               ext_call.return_data[0],
               mem[ceil32(return_data.size) + 576]
    if bool(bool(mem[ceil32(return_data.size) + 544] < 78)) or bool(bool(mem[ceil32(return_data.size) + 544] < 32)):
        if 10^mem[ceil32(return_data.size) + 544] > -1:
            revert with 'NH{q', 17
        if mem[ceil32(return_data.size) + 448] < mem[ceil32(return_data.size) + 512]:
            revert with 'NH{q', 17
        if not mem[ceil32(return_data.size) + 480]:
            revert with 'NH{q', 18
        if mem[ceil32(return_data.size) + 448] - mem[ceil32(return_data.size) + 512] / mem[ceil32(return_data.size) + 480] and 10^mem[ceil32(return_data.size) + 544] > -1 / mem[ceil32(return_data.size) + 448] - mem[ceil32(return_data.size) + 512] / mem[ceil32(return_data.size) + 480]:
            revert with 'NH{q', 17
        if defaultAmount < mem[ceil32(return_data.size) + 448] - mem[ceil32(return_data.size) + 512] / mem[ceil32(return_data.size) + 480] * 10^mem[ceil32(return_data.size) + 544]:
            revert with 'NH{q', 17
        staticcall sub_3070ad8cAddress.0x2cbe7ed with:
                gas gas_remaining wei
               args address(arg1), defaultAmount - (mem[ceil32(return_data.size) + 448] - mem[ceil32(return_data.size) + 512] / mem[ceil32(return_data.size) + 480] * 10^mem[ceil32(return_data.size) + 544]), 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_call.return_data[32] == ext_call.return_data[32]
        return defaultAmount - (mem[ceil32(return_data.size) + 448] - mem[ceil32(return_data.size) + 512] / mem[ceil32(return_data.size) + 480] * 10^mem[ceil32(return_data.size) + 544]), 
               ext_call.return_data[0],
               mem[ceil32(return_data.size) + 576]
    s = 10
    t = 1
    idx = mem[ceil32(return_data.size) + 544]
    while idx > 1:
        if s > -1 / s:
            revert with 'NH{q', 17
        if not bool(idx):
            s = s * s
            t = t
            idx = uint255(idx) * 0.5
            continue 
        s = s * s
        t = t * s
        idx = uint255(idx) * 0.5
        continue 
    if t > -1 / s:
        revert with 'NH{q', 17
    if mem[ceil32(return_data.size) + 448] < mem[ceil32(return_data.size) + 512]:
        revert with 'NH{q', 17
    if not mem[ceil32(return_data.size) + 480]:
        revert with 'NH{q', 18
    if mem[ceil32(return_data.size) + 448] - mem[ceil32(return_data.size) + 512] / mem[ceil32(return_data.size) + 480] and t * s > -1 / mem[ceil32(return_data.size) + 448] - mem[ceil32(return_data.size) + 512] / mem[ceil32(return_data.size) + 480]:
        revert with 'NH{q', 17
    if defaultAmount < mem[ceil32(return_data.size) + 448] - mem[ceil32(return_data.size) + 512] / mem[ceil32(return_data.size) + 480] * t * s:
        revert with 'NH{q', 17
    staticcall sub_3070ad8cAddress.0x2cbe7ed with:
            gas gas_remaining wei
           args address(arg1), defaultAmount - (mem[ceil32(return_data.size) + 448] - mem[ceil32(return_data.size) + 512] / mem[ceil32(return_data.size) + 480] * t * s), 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    return defaultAmount - (mem[ceil32(return_data.size) + 448] - mem[ceil32(return_data.size) + 512] / mem[ceil32(return_data.size) + 480] * t * s), 
           ext_call.return_data[0],
           mem[ceil32(return_data.size) + 576]
}

function buy(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    staticcall sub_3070ad8cAddress.getPair(address arg1) with:
            gas gas_remaining wei
           args arg1
    mem[448 len 352] = ext_call.return_data[0 len 352]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 352
    require 479 < return_data.size + 448
    if not bool(ceil32(return_data.size) + 608 <= test266151307()):
        revert with 'NH{q', 65
    require 160 <= return_data.size
    idx = 448
    s = ceil32(return_data.size) + 448
    while idx < 608:
        require mem[idx] == mem[idx]
        mem[s] = mem[idx]
        idx = idx + 32
        s = s + 32
        continue 
    require 639 < return_data.size + 448
    if not bool(ceil32(return_data.size) + 736 <= test266151307()):
        revert with 'NH{q', 65
    require 288 <= return_data.size
    idx = 608
    s = ceil32(return_data.size) + 608
    while idx < 736:
        require mem[idx] == mem[idx]
        mem[s] = mem[idx]
        idx = idx + 32
        s = s + 32
        continue 
    require 767 < return_data.size + 448
    if not bool(ceil32(return_data.size) + 800 <= test266151307()):
        revert with 'NH{q', 65
    require 352 <= return_data.size
    idx = 736
    s = ceil32(return_data.size) + 736
    while idx < 800:
        require mem[idx] == mem[idx]
        mem[s] = mem[idx]
        idx = idx + 32
        s = s + 32
        continue 
    if arg2:
        staticcall sub_3070ad8cAddress.0x2cbe7ed with:
                gas gas_remaining wei
               args address(arg1), arg2, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_call.return_data[32] == ext_call.return_data[32]
        if mem[ceil32(return_data.size) + 576] <= 0:
            revert with 0, 'pair not start.'
        if mem[ceil32(return_data.size) + 576] >= block.timestamp:
            revert with 0, 'pair not start.'
        staticcall sub_ff920c74Address.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] >= ext_call.return_data[0]:
            revert with 0, 'Insufficient contract balance.'
        call sub_ff920c74Address.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args sub_3070ad8cAddress, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(sub_3070ad8cAddress)
        call sub_3070ad8cAddress.swap(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args sub_ff920c74Address, address(arg1), arg2
    else:
        if not mem[ceil32(return_data.size) + 544]:
            if mem[ceil32(return_data.size) + 448] < mem[ceil32(return_data.size) + 512]:
                revert with 'NH{q', 17
            if not mem[ceil32(return_data.size) + 480]:
                revert with 'NH{q', 18
            if mem[ceil32(return_data.size) + 448] - mem[ceil32(return_data.size) + 512] / mem[ceil32(return_data.size) + 480] and 1 > -1 / mem[ceil32(return_data.size) + 448] - mem[ceil32(return_data.size) + 512] / mem[ceil32(return_data.size) + 480]:
                revert with 'NH{q', 17
            if defaultAmount < mem[ceil32(return_data.size) + 448] - mem[ceil32(return_data.size) + 512] / mem[ceil32(return_data.size) + 480]:
                revert with 'NH{q', 17
            staticcall sub_3070ad8cAddress.0x2cbe7ed with:
                    gas gas_remaining wei
                   args address(arg1), defaultAmount - (mem[ceil32(return_data.size) + 448] - mem[ceil32(return_data.size) + 512] / mem[ceil32(return_data.size) + 480]), 0
            mem[ceil32(return_data.size) + 800 len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require ext_call.return_data[0] == ext_call.return_data[0]
            require ext_call.return_data[32] == ext_call.return_data[32]
            if mem[ceil32(return_data.size) + 576] <= 0:
                revert with 0, 'pair not start.'
            if mem[ceil32(return_data.size) + 576] >= block.timestamp:
                revert with 0, 'pair not start.'
            mem[(2 * ceil32(return_data.size)) + 804] = this.address
            staticcall sub_ff920c74Address.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[(2 * ceil32(return_data.size)) + 800] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] >= ext_call.return_data[0]:
                revert with 0, 'Insufficient contract balance.'
            mem[(4 * ceil32(return_data.size)) + 804] = sub_3070ad8cAddress
            mem[(4 * ceil32(return_data.size)) + 836] = ext_call.return_data[0]
            call sub_ff920c74Address.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args sub_3070ad8cAddress, ext_call.return_data[0]
            mem[(4 * ceil32(return_data.size)) + 800] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            require ext_code.size(sub_3070ad8cAddress)
            call sub_3070ad8cAddress.swap(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args sub_ff920c74Address, address(arg1), defaultAmount - (mem[ceil32(return_data.size) + 448] - mem[ceil32(return_data.size) + 512] / mem[ceil32(return_data.size) + 480])
        else:
            if bool(bool(mem[ceil32(return_data.size) + 544] < 78)) or bool(bool(mem[ceil32(return_data.size) + 544] < 32)):
                if 10^mem[ceil32(return_data.size) + 544] > -1:
                    revert with 'NH{q', 17
                if mem[ceil32(return_data.size) + 448] < mem[ceil32(return_data.size) + 512]:
                    revert with 'NH{q', 17
                if not mem[ceil32(return_data.size) + 480]:
                    revert with 'NH{q', 18
                if mem[ceil32(return_data.size) + 448] - mem[ceil32(return_data.size) + 512] / mem[ceil32(return_data.size) + 480] and 10^mem[ceil32(return_data.size) + 544] > -1 / mem[ceil32(return_data.size) + 448] - mem[ceil32(return_data.size) + 512] / mem[ceil32(return_data.size) + 480]:
                    revert with 'NH{q', 17
                if defaultAmount < mem[ceil32(return_data.size) + 448] - mem[ceil32(return_data.size) + 512] / mem[ceil32(return_data.size) + 480] * 10^mem[ceil32(return_data.size) + 544]:
                    revert with 'NH{q', 17
                staticcall sub_3070ad8cAddress.0x2cbe7ed with:
                        gas gas_remaining wei
                       args address(arg1), defaultAmount - (mem[ceil32(return_data.size) + 448] - mem[ceil32(return_data.size) + 512] / mem[ceil32(return_data.size) + 480] * 10^mem[ceil32(return_data.size) + 544]), 0
                mem[ceil32(return_data.size) + 800 len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                require ext_call.return_data[0] == ext_call.return_data[0]
                require ext_call.return_data[32] == ext_call.return_data[32]
                if mem[ceil32(return_data.size) + 576] <= 0:
                    revert with 0, 'pair not start.'
                if mem[ceil32(return_data.size) + 576] >= block.timestamp:
                    revert with 0, 'pair not start.'
                mem[(2 * ceil32(return_data.size)) + 804] = this.address
                staticcall sub_ff920c74Address.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[(2 * ceil32(return_data.size)) + 800] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if ext_call.return_data[0] >= ext_call.return_data[0]:
                    revert with 0, 'Insufficient contract balance.'
                mem[(4 * ceil32(return_data.size)) + 804] = sub_3070ad8cAddress
                mem[(4 * ceil32(return_data.size)) + 836] = ext_call.return_data[0]
                call sub_ff920c74Address.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args sub_3070ad8cAddress, ext_call.return_data[0]
                mem[(4 * ceil32(return_data.size)) + 800] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                require ext_code.size(sub_3070ad8cAddress)
                call sub_3070ad8cAddress.swap(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args sub_ff920c74Address, address(arg1), defaultAmount - (mem[ceil32(return_data.size) + 448] - mem[ceil32(return_data.size) + 512] / mem[ceil32(return_data.size) + 480] * 10^mem[ceil32(return_data.size) + 544])
            else:
                s = 10
                t = 1
                idx = mem[ceil32(return_data.size) + 544]
                while idx > 1:
                    if s > -1 / s:
                        revert with 'NH{q', 17
                    if not bool(idx):
                        s = s * s
                        t = t
                        idx = uint255(idx) * 0.5
                        continue 
                    s = s * s
                    t = t * s
                    idx = uint255(idx) * 0.5
                    continue 
                if t > -1 / s:
                    revert with 'NH{q', 17
                if mem[ceil32(return_data.size) + 448] < mem[ceil32(return_data.size) + 512]:
                    revert with 'NH{q', 17
                if not mem[ceil32(return_data.size) + 480]:
                    revert with 'NH{q', 18
                if mem[ceil32(return_data.size) + 448] - mem[ceil32(return_data.size) + 512] / mem[ceil32(return_data.size) + 480] and t * s > -1 / mem[ceil32(return_data.size) + 448] - mem[ceil32(return_data.size) + 512] / mem[ceil32(return_data.size) + 480]:
                    revert with 'NH{q', 17
                if defaultAmount < mem[ceil32(return_data.size) + 448] - mem[ceil32(return_data.size) + 512] / mem[ceil32(return_data.size) + 480] * t * s:
                    revert with 'NH{q', 17
                staticcall sub_3070ad8cAddress.0x2cbe7ed with:
                        gas gas_remaining wei
                       args address(arg1), defaultAmount - (mem[ceil32(return_data.size) + 448] - mem[ceil32(return_data.size) + 512] / mem[ceil32(return_data.size) + 480] * t * s), 0
                mem[ceil32(return_data.size) + 800 len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                require ext_call.return_data[0] == ext_call.return_data[0]
                require ext_call.return_data[32] == ext_call.return_data[32]
                if mem[ceil32(return_data.size) + 576] <= 0:
                    revert with 0, 'pair not start.'
                if mem[ceil32(return_data.size) + 576] >= block.timestamp:
                    revert with 0, 'pair not start.'
                mem[(2 * ceil32(return_data.size)) + 804] = this.address
                staticcall sub_ff920c74Address.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[(2 * ceil32(return_data.size)) + 800] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if ext_call.return_data[0] >= ext_call.return_data[0]:
                    revert with 0, 'Insufficient contract balance.'
                mem[(4 * ceil32(return_data.size)) + 804] = sub_3070ad8cAddress
                mem[(4 * ceil32(return_data.size)) + 836] = ext_call.return_data[0]
                call sub_ff920c74Address.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args sub_3070ad8cAddress, ext_call.return_data[0]
                mem[(4 * ceil32(return_data.size)) + 800] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                require ext_code.size(sub_3070ad8cAddress)
                call sub_3070ad8cAddress.swap(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args sub_ff920c74Address, address(arg1), defaultAmount - (mem[ceil32(return_data.size) + 448] - mem[ceil32(return_data.size) + 512] / mem[ceil32(return_data.size) + 480] * t * s)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
