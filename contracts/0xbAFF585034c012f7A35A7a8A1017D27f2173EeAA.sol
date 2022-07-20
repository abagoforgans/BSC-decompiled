contract main {




// =====================  Runtime code  =====================


address stor1;
address stor2;
address stor3;
address stor4;
address stor5;
mapping of address sub_7ef1dbea;
address stor7;
address stor8;
address stor9;
address stor10;
address stor11;

function sub_7ef1dbea(?) {
    if stor9 != msg.sender:
        revert with 0, 'A'
    return sub_7ef1dbea[stor2]
}

function l() {
    if stor9 != msg.sender:
        revert with 0, 'A'
    selfdestruct(stor9)
}

function cs() {
  stop
}

function _fallback() payable {
    revert
}

function sub_12498fa6(?) {
    require ext_code.size(stor10)
    staticcall stor10.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_ebb05392(?) {
    require calldata.size - 4 >= 64
    if stor9 != msg.sender:
        revert with 0, 'A'
    require ext_code.size(arg1)
    call arg1.0x23b872dd with:
         gas gas_remaining wei
        args address(this.address), stor9, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function s(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if stor9 != msg.sender:
        revert with 0, 'A'
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor8, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_fe721641(?) {
    require calldata.size - 4 >= 64
    if stor9 != msg.sender:
        revert with 0, 'A'
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(this.address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_950da23f(?) {
    if stor9 != msg.sender:
        revert with 0, 'A'
    idx = stor3
    while address(idx) < stor1:
        mem[0] = address(idx)
        mem[32] = 6
        sub_7ef1dbea[address(idx)] = address(sha3(eth.balance(stor8), block.number, gas_remaining, block.coinbase, block.timestamp, stor10, call.data[0 len calldata.size], uint32(call.func_hash), eth.balance(this.address), uint32(call.func_hash), stor8, block.hash(block.number), eth.balance(stor11)) + (idx * stor5))
        idx = idx + 1
        continue 
    stor2 = address(stor2 + stor4)
    if stor2 >= stor1:
        stor2 = stor3
}

function e() {
    if stor9 != msg.sender:
        revert with 0, 'A'
    require ext_code.size(stor10)
    staticcall stor10.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor10)
    call stor10.0x23b872dd with:
         gas gas_remaining wei
        args address(this.address), stor9, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_d4fd9542(?) {
    require calldata.size - 4 >= 32
    if stor9 != msg.sender:
        revert with 0, 'A'
    require ext_code.size(arg1)
    staticcall arg1.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_code.size(arg1)
    staticcall arg1.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0] << 144, ext_call.return_data[32] << 144, address(ext_call.return_data[0])
}

function sub_031d2346(?) {
    require calldata.size - 4 >= 64
    if stor9 != msg.sender:
        revert with 0, 'A'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg2:
        if stor9 != msg.sender:
            revert with 0, 'A'
        require ext_code.size(arg1)
        call arg1.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(this.address), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0x23b872dd with:
         gas gas_remaining wei
        args address(this.address), stor9, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_04c9d7b2(?) {
    require calldata.size - 4 >= 96
    require ext_code.size(address(arg1 xor sub_7ef1dbea[stor2]))
    staticcall address(arg1 xor sub_7ef1dbea[stor2]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'B'
    if stor9 != msg.sender:
        revert with 0, 'A'
    if arg3 + 12394523 <= block.number:
        if arg3 + 12394523 > block.number - 20:
            if block.gas_limit > 25 * 10^6:
                if gas_remaining < 3500000:
                    if block.gasprice >= 5 * 10^9:
                        if stor9 != msg.sender:
                            revert with 0, 'A'
                        require ext_code.size(address(arg1 xor sub_7ef1dbea[stor2]))
                        call address(arg1 xor sub_7ef1dbea[stor2]).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args stor8, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[388 len 0] = None
                        require ext_code.size(stor7)
                        call stor7.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], arg2, Array(len=2, data=mem[388 len 64]), address(this.address), block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
}

function sub_b15a32ad(?) {
    require calldata.size - 4 >= 128
    require ext_code.size(address(arg1 xor sub_7ef1dbea[stor2]))
    staticcall address(arg1 xor sub_7ef1dbea[stor2]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'B'
    if stor9 != msg.sender:
        revert with 0, 'A'
    if arg3 + 12394523 <= block.number:
        if arg3 + 12394523 > block.number - 20:
            if block.gas_limit > 25 * 10^6:
                if gas_remaining < 3500000:
                    if block.gasprice >= 5 * 10^9:
                        if stor9 != msg.sender:
                            revert with 0, 'A'
                        require ext_code.size(address(arg1 xor sub_7ef1dbea[stor2]))
                        call address(arg1 xor sub_7ef1dbea[stor2]).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args stor8, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[388 len 0] = None
                        require ext_code.size(stor7)
                        call stor7.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], arg2, Array(len=2, data=mem[388 len 64]), address(this.address), block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
}

function sub_bd4db751(?) {
    require calldata.size - 4 >= 192
    require ext_code.size(address(arg3 xor sub_7ef1dbea[stor2]))
    staticcall address(arg3 xor sub_7ef1dbea[stor2]).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_code.size(address(arg3 xor sub_7ef1dbea[stor2]))
    staticcall address(arg3 xor sub_7ef1dbea[stor2]).token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] == stor10:
        if Mask(112, 0, ext_call.return_data[0]) > arg4:
            revert with 0, 'E'
        if Mask(112, 0, ext_call.return_data[0]) <= arg4 / 2:
            revert with 0, 'U'
    else:
        require ext_code.size(address(arg3 xor sub_7ef1dbea[stor2]))
        staticcall address(arg3 xor sub_7ef1dbea[stor2]).token1() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[12 len 20] != stor10:
            revert with 0, 'F'
        if Mask(112, 0, ext_call.return_data[32]) > arg4:
            revert with 0, 'C'
        if Mask(112, 0, ext_call.return_data[0]) <= arg4 / 2:
            revert with 0, 'Z'
    ('gt', ('mask_shl', 112, 0, 0, ('ext_call.return_data', 0, 32)), ('div', ('mask', 256, 0, ('param', 'arg4')), 2))
    if stor9 != msg.sender:
        revert with 0, 'A'
    if arg5 + 12394523 <= block.number:
        if arg5 + 12394523 > block.number - 20:
            if block.gas_limit > 25 * 10^6:
                if gas_remaining < 3500000:
                    if block.gasprice >= 5 * 10^9:
                        mem[388 len 0] = None
                        require ext_code.size(stor7)
                        call stor7.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg1, arg2, Array(len=2, data=mem[388 len 64]), address(this.address), block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
}



}
