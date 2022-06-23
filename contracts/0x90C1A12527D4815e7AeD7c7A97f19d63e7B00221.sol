contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;
address stor2;
address stor3;
address stor4;

function _fallback() payable {
    revert
}

function changeOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor3 != msg.sender:
        require msg.sender == stor4
    stor3 = arg1
}

function withdrawStuck() {
    if stor3 != msg.sender:
        require msg.sender == stor4
    call msg.sender with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
}

function withdrawStuckToken(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor3 != msg.sender:
        require msg.sender == stor4
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
        args stor3, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_e1853af6(?) {
    require calldata.size - 4 >= 96
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if (32 * ('cd', 4).length) + 128 > test266151307() or (32 * ('cd', 4).length) + 128 < 96:
        revert with 0, 65
    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
    s = cd[4] + 36
    t = 128
    idx = 0
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    require cd[68] == address(cd[68])
    if msg.sender == stor3:
        if 0 >= ('cd', 4).length:
            revert with 0, 50
        _27 = mem[128]
        mem[(32 * ('cd', 4).length) + 132] = stor0
        mem[(32 * ('cd', 4).length) + 164] = cd[36]
        require ext_code.size(address(_27))
        call address(_27).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args stor0, cd[36]
    else:
        require msg.sender == stor4
        if 0 >= ('cd', 4).length:
            revert with 0, 50
        _30 = mem[128]
        mem[(32 * ('cd', 4).length) + 132] = stor0
        mem[(32 * ('cd', 4).length) + 164] = cd[36]
        require ext_code.size(address(_30))
        call address(_30).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args stor0, cd[36]
    mem[(32 * ('cd', 4).length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if 15 > !block.timestamp:
        revert with 0, 17
    mem[(32 * ('cd', 4).length) + ceil32(return_data.size) + 128] = 0x791ac94700000000000000000000000000000000000000000000000000000000
    mem[(32 * ('cd', 4).length) + ceil32(return_data.size) + 132] = cd[36]
    mem[(32 * ('cd', 4).length) + ceil32(return_data.size) + 164] = 0
    mem[(32 * ('cd', 4).length) + ceil32(return_data.size) + 196] = 160
    mem[(32 * ('cd', 4).length) + ceil32(return_data.size) + 292] = ('cd', 4).length
    idx = 0
    s = (32 * ('cd', 4).length) + ceil32(return_data.size) + 324
    t = 128
    while idx < ('cd', 4).length:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(32 * ('cd', 4).length) + ceil32(return_data.size) + 228] = this.address
    mem[(32 * ('cd', 4).length) + ceil32(return_data.size) + 260] = block.timestamp + 15
    require ext_code.size(stor1)
    call stor1.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args mem[(32 * ('cd', 4).length) + ceil32(return_data.size) + 132 len (96 * ('cd', 4).length) + 192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor3)
    call stor3.0xd0e30db0 with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_6023e966(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 128
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[100] == address(cd[100])
    if msg.sender == stor3:
        idx = 0
        while idx < cd[36]:
            if eth.balance(this.address) < cd[68]:
                revert with 0, 'Not enough balance'
            if not ('cd', 4).length:
                revert with 0, 50
            require ('cd', 4)[0] == address(('cd', 4)[0])
            if address(('cd', 4)[0]) == stor2:
                if 15 > !block.timestamp:
                    revert with 0, 17
                _13 = mem[64]
                mem[mem[64]] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 0
                mem[mem[64] + 36] = 128
                mem[mem[64] + 132] = ('cd', 4).length
                s = 0
                t = mem[64] + 164
                u = cd[4] + 36
                while s < ('cd', 4).length:
                    require cd[u] == address(cd[u])
                    mem[t] = address(cd[u])
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[_13 + 68] = address(cd[100])
                mem[_13 + 100] = block.timestamp + 15
                require ext_code.size(stor1)
                call stor1.mem[mem[64] len 4] with:
                   value cd[68] wei
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _13 + (32 * ('cd', 4).length) + -mem[64] + 160]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    else:
        require msg.sender == stor4
        idx = 0
        while idx < cd[36]:
            if eth.balance(this.address) < cd[68]:
                revert with 0, 'Not enough balance'
            if not ('cd', 4).length:
                revert with 0, 50
            require ('cd', 4)[0] == address(('cd', 4)[0])
            if address(('cd', 4)[0]) == stor2:
                if 15 > !block.timestamp:
                    revert with 0, 17
                _14 = mem[64]
                mem[mem[64]] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 0
                mem[mem[64] + 36] = 128
                mem[mem[64] + 132] = ('cd', 4).length
                s = 0
                t = mem[64] + 164
                u = cd[4] + 36
                while s < ('cd', 4).length:
                    require cd[u] == address(cd[u])
                    mem[t] = address(cd[u])
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[_14 + 68] = address(cd[100])
                mem[_14 + 100] = block.timestamp + 15
                require ext_code.size(stor1)
                call stor1.mem[mem[64] len 4] with:
                   value cd[68] wei
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _14 + (32 * ('cd', 4).length) + -mem[64] + 160]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
}



}
