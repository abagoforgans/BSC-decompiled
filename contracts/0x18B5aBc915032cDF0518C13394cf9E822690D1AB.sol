contract main {




// =====================  Runtime code  =====================


const chi = 0x4946c0e9f43f4dee607b0ef1fa1c

const BUSD = 0xe9e7cea3dedca5984780bafc599bd69add087d56

const CHI = 0x4946c0e9f43f4dee607b0ef1fa1c


address ROUTERAddress;
address stor1;
address owner;

function ROUTER() {
    return ROUTERAddress
}

function owner() {
    return owner
}

function _fallback() payable {
  stop
}

function setRouter(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Not owner'
    ROUTERAddress = arg1
}

function withdrawBNB() {
    if owner != msg.sender:
        revert with 0, 'Not owner'
    if eth.balance(this.address) > 0:
        call owner with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function withdrawToken(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Not owner'
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] > 0:
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args owner, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_8edb6de1(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Not owner'
    if not ('cd', 4).length:
        revert with 'NH{q', 18
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        call address(cd[((32 * idx) + cd[4] + 36)]) with:
           value msg.value / ('cd', 4).length wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    if calldata.size > 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 'NH{q', 17
    if 21000 > -gas_remaining - 1:
        revert with 'NH{q', 17
    if gas_remaining + 21000 < gas_remaining:
        revert with 'NH{q', 17
    if 21000 > -(16 * calldata.size) - 1:
        revert with 'NH{q', 17
    if (16 * calldata.size) + 21000 > -14155:
        revert with 'NH{q', 17
    require ext_code.size(0x4946c0e9f43f4dee607b0ef1fa1c)
    call 0x0000000000004946c0e9f43f4dee607b0ef1fa1c.freeFromUpTo(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(this.address), (16 * calldata.size) + 35154 / 41947
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_d33af69e(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 96
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] == cd[68]
    if owner != msg.sender:
        revert with 0, 'Not owner'
    idx = 0
    while idx < ('cd', 36).length:
        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = address(cd[((32 * idx) + cd[36] + 36)])
        mem[mem[64] + 68] = cd[68]
        call address(cd[4]).0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(cd[((32 * idx) + cd[36] + 36)]), cd[68]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _11 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_11] == bool(mem[_11])
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    if calldata.size > 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 'NH{q', 17
    if 21000 > -gas_remaining - 1:
        revert with 'NH{q', 17
    if gas_remaining + 21000 < gas_remaining:
        revert with 'NH{q', 17
    if 21000 > -(16 * calldata.size) - 1:
        revert with 'NH{q', 17
    if (16 * calldata.size) + 21000 > -14155:
        revert with 'NH{q', 17
    require ext_code.size(0x4946c0e9f43f4dee607b0ef1fa1c)
    call 0x0000000000004946c0e9f43f4dee607b0ef1fa1c.freeFromUpTo(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(this.address), (16 * calldata.size) + 35154 / 41947
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_c71d2282(?) {
    require calldata.size - 4 >= 128
    require cd[4] == cd[4]
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    require cd[100] == cd[100]
    if owner != msg.sender:
        revert with 0, 'Not owner'
    mem[100] = msg.sender
    mem[132] = this.address
    mem[164] = cd[4]
    call stor1.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), cd[4]
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ('cd', 68).length:
        revert with 'NH{q', 18
    mem[ceil32(return_data.size) + 100] = ROUTERAddress
    mem[ceil32(return_data.size) + 132] = cd[4]
    call stor1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args ROUTERAddress, cd[4]
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(2 * ceil32(return_data.size)) + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[(2 * ceil32(return_data.size)) + 100] = cd[4] / ('cd', 68).length
    mem[(2 * ceil32(return_data.size)) + 132] = 64
    mem[(2 * ceil32(return_data.size)) + 164] = ('cd', 36).length
    idx = 0
    s = cd[36] + 36
    t = (2 * ceil32(return_data.size)) + 196
    while idx < ('cd', 36).length:
        require cd[s] == address(cd[s])
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    staticcall ROUTERAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args cd[4] / ('cd', 68).length, Array(len=('cd', 36).length, data=mem[(2 * ceil32(return_data.size)) + 196 len 32 * ('cd', 36).length])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(2 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (4 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    _24 = mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, cd[4] / ('cd', 68).length) >> 32
    require mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, cd[4] / ('cd', 68).length) >> 32 <= test266151307()
    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, cd[4] / ('cd', 68).length) >> 32 + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
    _25 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, cd[4] / ('cd', 68).length) >> 32 + 96]
    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, cd[4] / ('cd', 68).length) >> 32 + 96] > test266151307():
        revert with 'NH{q', 65
    if (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, cd[4] / ('cd', 68).length) >> 32 + 96]) + 97 > test266151307() or floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, cd[4] / ('cd', 68).length) >> 32 + 96]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, cd[4] / ('cd', 68).length) >> 32 + 96]) + 97
    mem[(4 * ceil32(return_data.size)) + 96] = _25
    require _24 + (32 * _25) + 32 <= return_data.size
    idx = (2 * ceil32(return_data.size)) + _24 + 128
    s = (4 * ceil32(return_data.size)) + 128
    while idx < (2 * ceil32(return_data.size)) + _24 + (32 * _25) + 128:
        require mem[idx] == mem[idx]
        mem[s] = mem[idx]
        idx = idx + 32
        s = s + 32
        continue 
    if 100 < cd[100]:
        revert with 'NH{q', 17
    if _25 < 1:
        revert with 'NH{q', 17
    if _25 - 1 >= _25:
        revert with 'NH{q', 50
    _38 = mem[(32 * _25 - 1) + (4 * ceil32(return_data.size)) + 128]
    if mem[(32 * _25 - 1) + (4 * ceil32(return_data.size)) + 128] and -cd[100] + 100 > -1 / mem[(32 * _25 - 1) + (4 * ceil32(return_data.size)) + 128]:
        revert with 'NH{q', 17
    idx = 0
    while idx < ('cd', 68).length:
        require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
        mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = cd[4] / ('cd', 68).length
        mem[mem[64] + 36] = (100 * _38) - (cd[100] * _38) / 100
        mem[mem[64] + 68] = 160
        mem[mem[64] + 164] = ('cd', 36).length
        s = 0
        t = cd[36] + 36
        u = mem[64] + 196
        while s < ('cd', 36).length:
            require cd[t] == address(cd[t])
            mem[u] = address(cd[t])
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        mem[mem[64] + 100] = address(cd[((32 * idx) + cd[68] + 36)])
        mem[mem[64] + 132] = block.timestamp
        require ext_code.size(ROUTERAddress)
        call ROUTERAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args cd[4] / ('cd', 68).length, (100 * _38) - (cd[100] * _38) / 100, Array(len=('cd', 36).length, data=mem[mem[64] + 196 len 32 * ('cd', 36).length]), address(cd[((32 * idx) + cd[68] + 36)]), block.timestamp
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    if calldata.size > 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 'NH{q', 17
    if 21000 > -gas_remaining - 1:
        revert with 'NH{q', 17
    if gas_remaining + 21000 < gas_remaining:
        revert with 'NH{q', 17
    if 21000 > -(16 * calldata.size) - 1:
        revert with 'NH{q', 17
    if (16 * calldata.size) + 21000 > -14155:
        revert with 'NH{q', 17
    require ext_code.size(0x4946c0e9f43f4dee607b0ef1fa1c)
    call 0x0000000000004946c0e9f43f4dee607b0ef1fa1c.freeFromUpTo(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(this.address), (16 * calldata.size) + 35154 / 41947
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
