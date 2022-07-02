contract main {




// =====================  Runtime code  =====================


#
#  - distributeTokens(address arg1, uint256 arg2)
#  - sub_d2bc7d85(?)
#  - _fallback()
#
address stor1;
address stor2;
array of struct holders;
array of struct share;

function holders(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < holders.length
    return holders[arg1].field_0
}

function share(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < share.length
    return uint256(share[arg1].field_0)
}

function sub_34540e18(?) {
    require ext_code.size(stor1)
    staticcall stor1.balanceOf(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] > 1
    require ext_code.size(stor1)
    staticcall stor1.balanceOf(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not holders.length:
        holders.length++
        uint256(holders[holders.length].field_0) = msg.sender or Mask(96, 160, uint256(holders[holders.length].field_0))
        share.length++
        uint256(share[share.length].field_0) = ext_call.return_data[0]
    idx = 0
    while idx < holders.length:
        mem[0] = 3
        if holders[idx].field_0 != msg.sender:
            holders.length++
            uint256(holders[holders.length].field_0) = msg.sender or Mask(96, 160, uint256(holders[holders.length].field_0))
            share.length++
            mem[0] = 4
            uint256(share[share.length].field_0) = ext_call.return_data[0]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_26cc6cc1(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    require msg.sender == stor2
    if holders.length < 1:
        revert with 0, 17
    if var28002 >= holders.length - 1:
        if holders.length < 1:
            revert with 0, 17
        if var45002 >= holders.length - 1:
        if var47001 >= share.length:
            revert with 0, 50
        if arg1 and var51002 > -1 / arg1:
            revert with 0, 17
        if var61003 >= holders.length:
            revert with 0, 50
        mem[0] = 3
        idx = var63003
        s = stor[sha3(mem[0]) + var63001]
        t = var63005
        while eth.balance(this.address) >= idx:
            call address(s) with:
               value idx wei
                 gas gas_remaining wei
            if return_data.size:
                _445 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_445] = return_data.size
                mem[_445 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'Address: unable to send value, recipient may have reverted'
            if t == -1:
                revert with 0, 17
            if holders.length < 1:
                revert with 0, 17
            if t + 1 >= holders.length - 1:
            if t + 1 >= share.length:
                revert with 0, 50
            if arg1 and uint256(share[t].field_256) > -1 / arg1:
                revert with 0, 17
            if t + 1 >= holders.length:
                revert with 0, 50
            mem[0] = 3
            idx = arg1 * uint256(share[t].field_256) / 100
            s = holders[t].field_256
            t = t + 1
            continue 
        revert with 0, 'Address: insufficient balance'
    mem[96] = 0xd293aba400000000000000000000000000000000000000000000000000000000
    mem[100] = this.address
    mem[132] = 96
    mem[196] = 0
    mem[164] = arg1
    require ext_code.size(msg.sender)
    call msg.sender.mem[var32004 len 4] with:
         gas gas_remaining wei
        args mem[var32004 + 4 len var32005 - 4]
    mem[var32006] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require var36002 - var36001 >= 32
    require mem[var38002] == bool(mem[var38002])
    if var44001 == -1:
        revert with 0, 17
    if holders.length < 1:
        revert with 0, 17
    if var56002 >= holders.length - 1:
        # nil
    else:
        require ext_code.size(msg.sender)
        # nil
}



}
