contract main {




// =====================  Runtime code  =====================


array of address sub_4b944c01;
address stor1;

function sub_4b944c01(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_4b944c01.length
    return sub_4b944c01[arg1]
}

function _fallback() payable {
    revert
}

function sub_b837ba80(?) payable {
    require calldata.size - 4 >= 32
    if stor1 != msg.sender:
        revert with 0, 'only owner'
    idx = 0
    while idx < arg1:
        mem[96 len 2562] = code.data[5364 len 2562]
        create contract with 0 wei
                        code: code.data[5364 len 2562]
        if not create.new_address:
            revert with ext_call.return_data[0 len return_data.size]
        sub_4b944c01.length++
        mem[0] = 0
        sub_4b944c01[sub_4b944c01.length] = address(create.new_address)
        idx = idx + 1
        continue 
}

function sub_d7002a48(?) payable {
    require calldata.size - 4 >= 96
    if stor1 != msg.sender:
        revert with 0, 'only owner'
    idx = arg1
    while idx <= arg2:
        require idx < sub_4b944c01.length
        mem[0] = 0
        mem[96] = 0xb42652e900000000000000000000000000000000000000000000000000000000
        mem[100] = arg3
        require ext_code.size(sub_4b944c01[idx])
        call sub_4b944c01[idx].exit(address rg1) with:
             gas gas_remaining wei
            args arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
}

function sub_5c722c24(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    if stor1 != msg.sender:
        revert with 0, 'only owner'
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        sub_4b944c01.length++
        mem[0] = 0
        sub_4b944c01[sub_4b944c01.length] = mem[(32 * idx) + 140 len 20]
        idx = idx + 1
        continue 
}

function sub_e601b0fb(?) payable {
    require calldata.size - 4 >= 96
    if stor1 != msg.sender:
        revert with 0, 'only owner'
    idx = arg1
    while idx <= arg2:
        require idx < sub_4b944c01.length
        mem[0] = 0
        mem[96] = 0xb86e321c00000000000000000000000000000000000000000000000000000000
        mem[100] = arg3
        require ext_code.size(sub_4b944c01[idx])
        call sub_4b944c01[idx].withdrawReward(address rg1) with:
             gas gas_remaining wei
            args arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
}

function withdrawToken(address arg1) payable {
    require calldata.size - 4 >= 32
    if stor1 != msg.sender:
        revert with 0, 'only owner'
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
        args stor1, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function getReward(uint256 arg1, uint256 arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    if stor1 != msg.sender:
        revert with 0, 'only owner'
    idx = arg1
    while idx <= arg2:
        require idx < sub_4b944c01.length
        mem[0] = 0
        mem[96] = 0xc00007b000000000000000000000000000000000000000000000000000000000
        mem[100] = arg3
        require ext_code.size(sub_4b944c01[idx])
        call sub_4b944c01[idx].getReward(address rg1) with:
             gas gas_remaining wei
            args arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
}

function withdraw(uint256 arg1, uint256 arg2, uint256 arg3, address arg4) payable {
    require calldata.size - 4 >= 128
    if stor1 != msg.sender:
        revert with 0, 'only owner'
    idx = arg1
    while idx <= arg2:
        require idx < sub_4b944c01.length
        mem[0] = 0
        mem[96] = 0xf3fef3a300000000000000000000000000000000000000000000000000000000
        mem[100] = arg4
        mem[132] = arg3
        require ext_code.size(sub_4b944c01[idx])
        call sub_4b944c01[idx].withdraw(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args address(arg4), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
}

function sub_004ed8e8(?) payable {
    require calldata.size - 4 >= 128
    if stor1 != msg.sender:
        revert with 0, 'only owner'
    idx = arg1
    while idx <= arg2:
        require idx < sub_4b944c01.length
        mem[0] = 0
        require ext_code.size(sub_4b944c01[idx])
        call sub_4b944c01[idx].getReward(address rg1) with:
             gas gas_remaining wei
            args arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[96] = 0xb86e321c00000000000000000000000000000000000000000000000000000000
        mem[100] = arg4
        require ext_code.size(sub_4b944c01[idx])
        call sub_4b944c01[idx].withdrawReward(address rg1) with:
             gas gas_remaining wei
            args arg4
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
}

function sub_d044989e(?) payable {
    require calldata.size - 4 >= 160
    if stor1 != msg.sender:
        revert with 0, 'only owner'
    idx = arg1
    while idx <= arg2:
        require idx < sub_4b944c01.length
        mem[0] = 0
        require ext_code.size(arg5)
        call arg5.0xa9059cbb with:
             gas gas_remaining wei
            args sub_4b944c01[idx], arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[96] = 0xa7d545db00000000000000000000000000000000000000000000000000000000
        mem[100] = arg3
        mem[132] = arg4
        mem[164] = arg5
        require ext_code.size(sub_4b944c01[idx])
        call sub_4b944c01[idx].stake(uint256 rg1, address rg2, address rg3) with:
             gas gas_remaining wei
            args arg3, address(arg4), arg5
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
}



}
