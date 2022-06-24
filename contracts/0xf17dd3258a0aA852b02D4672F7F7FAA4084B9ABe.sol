contract main {




// =====================  Runtime code  =====================


const chi = 0x4946c0e9f43f4dee607b0ef1fa1c


address owner;
array of address stor1;
uint256 stor2;
uint8 stor3;
mapping of uint8 stor4;

function owner() {
    return owner
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_ba96d7d0(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor3 = uint8(bool(arg1))
}

function setWhitelist(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor4[address(arg1)] = uint8(arg2)
}

function _fallback() payable {
    require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
    call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.deposit() with:
       value msg.value wei
         gas gas_remaining wei
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
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function withdrawToken(address arg1, uint256 arg2, address arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg3), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function approve(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_a58da0be(?) {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] == bool(cd[36])
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 4
        stor4[address(cd[((32 * idx) + cd[4] + 36)])] = uint8(bool(cd[36]))
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function withdrawAllToken(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function withdrawAllETH(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
    staticcall 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
    call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.withdraw(uint256 arg1) with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call arg1 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
}

function sub_c29065f9(?) {
    require calldata.size - 4 >= 64
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor2 = cd[4]
    stor1.length = ('cd', 36).length
    if not ('cd', 36).length:
        idx = 0
        while stor1.length > idx:
            uint256(stor1[idx]) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = cd[36] + 36
        while cd[36] + (32 * ('cd', 36).length) + 36 > idx:
            address(stor1[s]) = address(cd[idx])
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 36).length) + 31) >> 5
        while stor1.length > idx:
            uint256(stor1[idx]) = 0
            idx = idx + 1
            continue 
}

function sub_3f6bee37(?) {
    require calldata.size - 4 >= 128
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] == address(cd[68])
    mem[0] = msg.sender
    mem[32] = 4
    if not stor4[msg.sender]:
        revert with 0, 'address not in whiteList'
    if stor3:
        revert with 0, 'end'
    mem[100] = this.address
    require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
    staticcall 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'wbnb0!'
    if not cd[100]:
        revert with 0, 18
    idx = 0
    while idx < cd[100]:
        if 300 > !block.timestamp:
            revert with 0, 17
        _27 = mem[64]
        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = ext_call.return_data[0] / cd[100]
        mem[mem[64] + 36] = cd[4] / cd[100]
        mem[mem[64] + 68] = 160
        mem[mem[64] + 164] = ('cd', 36).length
        s = 0
        t = mem[64] + 196
        u = cd[36] + 36
        while s < ('cd', 36).length:
            require cd[u] == address(cd[u])
            mem[t] = address(cd[u])
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        mem[_27 + 100] = owner
        mem[_27 + 132] = block.timestamp + 300
        require ext_code.size(address(cd[68]))
        call address(cd[68]).mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _27 + (32 * ('cd', 36).length) + -mem[64] + 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _43 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _44 = mem[_43]
        require mem[_43] <= test266151307()
        require _43 + mem[_43] + 31 < _43 + return_data.size
        _45 = mem[_43 + mem[_43]]
        if mem[_43 + mem[_43]] > test266151307():
            revert with 0, 65
        if _43 + ceil32(return_data.size) + (32 * mem[_43 + mem[_43]]) + 32 > test266151307() or (32 * mem[_43 + mem[_43]]) + 32 < 0:
            revert with 0, 65
        mem[64] = _43 + ceil32(return_data.size) + (32 * mem[_43 + mem[_43]]) + 32
        mem[_43 + ceil32(return_data.size)] = _45
        require return_data.size >= _44 + (32 * _45) + 32
        t = _43 + _44 + 32
        u = _43 + ceil32(return_data.size) + 32
        s = 0
        while s < _45:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s + 1
            continue 
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    if ('cd', 36).length < 1:
        revert with 0, 17
    if ('cd', 36).length - 1 >= ('cd', 36).length:
        revert with 0, 50
    require cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)] == address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)])
    mem[mem[64] + 4] = owner
    require ext_code.size(address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]))
    staticcall address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]).0x70a08231 with:
            gas gas_remaining wei
           args owner
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _35 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    if mem[_35] <= cd[4]:
        revert with 0, 'token fee scam!'
    stor3 = 1
    if calldata.size > 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 0, 17
    if 21000 > !gas_remaining:
        revert with 0, 17
    if gas_remaining + 21000 < gas_remaining:
        revert with 0, 17
    if 21000 > !(16 * calldata.size):
        revert with 0, 17
    if 14154 > !((16 * calldata.size) + 21000):
        revert with 0, 17
    require ext_code.size(0x4946c0e9f43f4dee607b0ef1fa1c)
    call 0x0000000000004946c0e9f43f4dee607b0ef1fa1c.freeFromUpTo(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args owner, (16 * calldata.size) + 35154 / 41947
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_c99f7fe3(?) {
    require calldata.size - 4 >= 192
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    require cd[100] == address(cd[100])
    require cd[132] == address(cd[132])
    mem[0] = msg.sender
    mem[32] = 4
    if not stor4[msg.sender]:
        revert with 0, 'address not in whiteList'
    if stor3:
        revert with 0, 'end'
    mem[100] = this.address
    require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
    staticcall 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    if ext_call.return_data[0] <= cd[4]:
        revert with 0, 'not enough wbnb'
    if not cd[164]:
        revert with 0, 18
    idx = 0
    while idx < cd[164]:
        if 300 > !block.timestamp:
            revert with 0, 17
        _27 = mem[64]
        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = cd[4] / cd[164]
        mem[mem[64] + 36] = cd[36] / cd[164]
        mem[mem[64] + 68] = 160
        mem[mem[64] + 164] = ('cd', 68).length
        s = 0
        t = mem[64] + 196
        u = cd[68] + 36
        while s < ('cd', 68).length:
            require cd[u] == address(cd[u])
            mem[t] = address(cd[u])
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        mem[_27 + 100] = address(cd[132])
        mem[_27 + 132] = block.timestamp + 300
        require ext_code.size(address(cd[100]))
        call address(cd[100]).mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _27 + (32 * ('cd', 68).length) + -mem[64] + 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _43 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _44 = mem[_43]
        require mem[_43] <= test266151307()
        require _43 + mem[_43] + 31 < _43 + return_data.size
        _45 = mem[_43 + mem[_43]]
        if mem[_43 + mem[_43]] > test266151307():
            revert with 0, 65
        if _43 + ceil32(return_data.size) + (32 * mem[_43 + mem[_43]]) + 32 > test266151307() or (32 * mem[_43 + mem[_43]]) + 32 < 0:
            revert with 0, 65
        mem[64] = _43 + ceil32(return_data.size) + (32 * mem[_43 + mem[_43]]) + 32
        mem[_43 + ceil32(return_data.size)] = _45
        require return_data.size >= _44 + (32 * _45) + 32
        t = _43 + _44 + 32
        u = _43 + ceil32(return_data.size) + 32
        s = 0
        while s < _45:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s + 1
            continue 
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    if ('cd', 68).length < 1:
        revert with 0, 17
    if ('cd', 68).length - 1 >= ('cd', 68).length:
        revert with 0, 50
    require cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)] == address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)])
    mem[mem[64] + 4] = address(cd[132])
    require ext_code.size(address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)]))
    staticcall address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)]).0x70a08231 with:
            gas gas_remaining wei
           args address(cd[132])
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _35 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    if mem[_35] <= cd[36]:
        revert with 0, 'token fee scam!'
    stor3 = 1
    if calldata.size > 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 0, 17
    if 21000 > !gas_remaining:
        revert with 0, 17
    if gas_remaining + 21000 < gas_remaining:
        revert with 0, 17
    if 21000 > !(16 * calldata.size):
        revert with 0, 17
    if 14154 > !((16 * calldata.size) + 21000):
        revert with 0, 17
    require ext_code.size(0x4946c0e9f43f4dee607b0ef1fa1c)
    call 0x0000000000004946c0e9f43f4dee607b0ef1fa1c.freeFromUpTo(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args owner, (16 * calldata.size) + 35154 / 41947
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_1de0139e(?) {
    require calldata.size - 4 >= 96
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] == address(cd[68])
    mem[0] = msg.sender
    mem[32] = 4
    if not stor4[msg.sender]:
        revert with 0, 'address not in whiteList'
    if stor3:
        revert with 0, 'end'
    mem[100] = this.address
    require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
    staticcall 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'wbnb0!'
    if 300 > !block.timestamp:
        revert with 0, 17
    mem[ceil32(return_data.size) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 100] = ext_call.return_data[0]
    mem[ceil32(return_data.size) + 132] = cd[4]
    mem[ceil32(return_data.size) + 164] = 160
    mem[ceil32(return_data.size) + 260] = ('cd', 36).length
    idx = 0
    s = ceil32(return_data.size) + 292
    t = cd[36] + 36
    while idx < ('cd', 36).length:
        require cd[t] == address(cd[t])
        mem[s] = address(cd[t])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[ceil32(return_data.size) + 196] = owner
    mem[ceil32(return_data.size) + 228] = block.timestamp + 300
    require ext_code.size(address(cd[68]))
    call address(cd[68]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args ext_call.return_data[0], cd[4], Array(len=('cd', 36).length, data=mem[ceil32(return_data.size) + 292 len 32 * ('cd', 36).length]), owner, block.timestamp + 300
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    _29 = mem[ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28]
    require mem[ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] + 127 < ceil32(return_data.size) + return_data.size + 96
    _30 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] + 96]
    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] + 96] > test266151307():
        revert with 0, 65
    if (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 128 > test266151307() or (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 32 < 0:
        revert with 0, 65
    mem[64] = (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 128
    mem[(2 * ceil32(return_data.size)) + 96] = _30
    require return_data.size >= _29 + (32 * _30) + 32
    mem[(2 * ceil32(return_data.size)) + 128 len 32 * _30] = mem[ceil32(return_data.size) + _29 + 128 len 32 * _30]
    if ('cd', 36).length < 1:
        revert with 0, 17
    if ('cd', 36).length - 1 >= ('cd', 36).length:
        revert with 0, 50
    require cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)] == address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)])
    mem[mem[64] + 4] = owner
    require ext_code.size(address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]))
    staticcall address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]).0x70a08231 with:
            gas gas_remaining wei
           args owner
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _44 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    if mem[_44] <= cd[4]:
        revert with 0, 'token fee scam!'
    stor3 = 1
    if calldata.size > 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 0, 17
    if 21000 > !gas_remaining:
        revert with 0, 17
    if gas_remaining + 21000 < gas_remaining:
        revert with 0, 17
    if 21000 > !(16 * calldata.size):
        revert with 0, 17
    if 14154 > !((16 * calldata.size) + 21000):
        revert with 0, 17
    require ext_code.size(0x4946c0e9f43f4dee607b0ef1fa1c)
    call 0x0000000000004946c0e9f43f4dee607b0ef1fa1c.freeFromUpTo(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args owner, (16 * calldata.size) + 35154 / 41947
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
