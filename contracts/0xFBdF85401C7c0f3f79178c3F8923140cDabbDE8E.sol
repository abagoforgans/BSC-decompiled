contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;
address stor2;

function destory() {
    if stor0 != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    selfdestruct(this.address)
}

function _fallback() payable {
  stop
}

function sub_a6bd2b47(?) {
    require calldata.size - 4 >= 32
    if 1000 * arg1 / 1000 != arg1:
        revert with 0, 'ds-math-mul-overflow'
    if (1000 * arg1 / 997) + 1 < 1000 * arg1 / 997:
        revert with 0, 'ds-math-add-overflow'
    return arg1, (1000 * arg1 / 997) + 1
}

function transferEth(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if stor0 != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_bd2ccd9a(?) {
    require calldata.size - 4 >= 64
    if stor0 != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    call arg1.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(arg2), -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function transferErc20(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if stor0 != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if stor0 != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    stor0 = arg1
}

function sub_b691d78c(?) payable {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    require arg4.length >= 32
    if stor0 != msg.sender:
        if mem[140 len 20] != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    call arg1 with:
         gas gas_remaining wei
        args arg2, arg3, address(this.address), Array(len=arg4.length, data=arg4[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_fbd3091d(?) {
    require calldata.size - 4 >= 128
    if arg1:
        if 1000 * arg4 / 1000 != arg4:
            revert with 0, 'ds-math-mul-overflow'
        if arg3 - arg1 > arg3:
            revert with 0, 'ds-math-sub-underflow'
        if not arg4:
            require arg3 - arg1
            if (0 / arg3 - arg1) - (1000 * arg4) > 0 / arg3 - arg1:
                revert with 0, 'ds-math-sub-underflow'
            if ((0 / arg3 - arg1) - (1000 * arg4) / 997) + 1 < (0 / arg3 - arg1) - (1000 * arg4) / 997:
                revert with 0, 'ds-math-add-overflow'
            return (((0 / arg3 - arg1) - (1000 * arg4) / 997) + 1)
        require arg4
        if arg3 * arg4 / arg4 != arg3:
            revert with 0, 'ds-math-mul-overflow'
        if 1000 * arg3 * arg4 / 1000 != arg3 * arg4:
            revert with 0, 'ds-math-mul-overflow'
        require arg3 - arg1
        if (1000 * arg3 * arg4 / arg3 - arg1) - (1000 * arg4) > 1000 * arg3 * arg4 / arg3 - arg1:
            revert with 0, 'ds-math-sub-underflow'
        if ((1000 * arg3 * arg4 / arg3 - arg1) - (1000 * arg4) / 997) + 1 < (1000 * arg3 * arg4 / arg3 - arg1) - (1000 * arg4) / 997:
            revert with 0, 'ds-math-add-overflow'
        return (((1000 * arg3 * arg4 / arg3 - arg1) - (1000 * arg4) / 997) + 1)
    if 1000 * arg3 / 1000 != arg3:
        revert with 0, 'ds-math-mul-overflow'
    if arg4 - arg2 > arg4:
        revert with 0, 'ds-math-sub-underflow'
    if not arg4:
        require arg4 - arg2
        if (0 / arg4 - arg2) - (1000 * arg3) > 0 / arg4 - arg2:
            revert with 0, 'ds-math-sub-underflow'
        if ((0 / arg4 - arg2) - (1000 * arg3) / 997) + 1 < (0 / arg4 - arg2) - (1000 * arg3) / 997:
            revert with 0, 'ds-math-add-overflow'
        return (((0 / arg4 - arg2) - (1000 * arg3) / 997) + 1)
    require arg4
    if arg3 * arg4 / arg4 != arg3:
        revert with 0, 'ds-math-mul-overflow'
    if 1000 * arg3 * arg4 / 1000 != arg3 * arg4:
        revert with 0, 'ds-math-mul-overflow'
    require arg4 - arg2
    if (1000 * arg3 * arg4 / arg4 - arg2) - (1000 * arg3) > 1000 * arg3 * arg4 / arg4 - arg2:
        revert with 0, 'ds-math-sub-underflow'
    if ((1000 * arg3 * arg4 / arg4 - arg2) - (1000 * arg3) / 997) + 1 < (1000 * arg3 * arg4 / arg4 - arg2) - (1000 * arg3) / 997:
        revert with 0, 'ds-math-add-overflow'
    return (((1000 * arg3 * arg4 / arg4 - arg2) - (1000 * arg3) / 997) + 1)
}

function pancakeCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    if arg1 != this.address:
        revert with 0, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[ceil32(arg4.length) + 234 len 26]
    require arg4.length >= 416
    if mem[512]:
        require arg4.length >= 384
        _30 = mem[160]
        require ext_code.size(mem[300 len 20])
        call mem[300 len 20].0xa9059cbb with:
             gas gas_remaining wei
            args address(mem[160]), mem[416]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[ceil32(arg4.length) + 160] = mem[140 len 20]
        require 0, 416 >= 32
        if stor0 != msg.sender:
            if uint64(mem[128]) << 96 != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
        mem[ceil32(arg4.length) + 740 len ceil32(0, 416)] = mem[ceil32(arg4.length) + 160 len ceil32(0, 416)]
        require ext_code.size(address(_30))
        call address(_30).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
             gas gas_remaining wei
            args mem[ceil32(arg4.length) + 580 len 0, 416 + 160]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        require arg4.length >= 288
        if not arg2:
            if mem[300 len 20] != stor1:
                require ext_code.size(stor2)
                call stor2.liquidateBorrow(address rg1, address rg2, address rg3, uint256 rg4) with:
                     gas gas_remaining wei
                    args address(mem[224]), address(mem[288]), address(mem[320]), arg3
            else:
                require ext_code.size(mem[300 len 20])
                call mem[300 len 20].withdraw(uint256 rg1) with:
                     gas gas_remaining wei
                    args arg3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(stor2)
                call stor2.liquidateBorrow(address rg1, address rg2, address rg3, uint256 rg4) with:
                   value arg3 wei
                     gas gas_remaining wei
                    args address(mem[224]), address(mem[288]), address(mem[320]), arg3
        else:
            if mem[300 len 20] != stor1:
                require ext_code.size(stor2)
                call stor2.liquidateBorrow(address rg1, address rg2, address rg3, uint256 rg4) with:
                     gas gas_remaining wei
                    args address(mem[224]), address(mem[288]), address(mem[320]), arg2
            else:
                require ext_code.size(mem[300 len 20])
                call mem[300 len 20].withdraw(uint256 rg1) with:
                     gas gas_remaining wei
                    args arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(stor2)
                call stor2.liquidateBorrow(address rg1, address rg2, address rg3, uint256 rg4) with:
                   value arg2 wei
                     gas gas_remaining wei
                    args address(mem[224]), address(mem[288]), address(mem[320]), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(mem[268 len 20])
        staticcall mem[268 len 20].0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor2)
        call stor2.withdraw(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args address(mem[320]), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(mem[332 len 20])
        if mem[332 len 20] == stor1:
            call mem[332 len 20].deposit() with:
               value mem[384] wei
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        call mem[332 len 20].0xa9059cbb with:
             gas gas_remaining wei
            args address(mem[128]), mem[384]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
}

function uniswapV2Call(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    if arg1 != this.address:
        revert with 0, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[ceil32(arg4.length) + 234 len 26]
    require arg4.length >= 416
    if mem[512]:
        require arg4.length >= 384
        _30 = mem[160]
        require ext_code.size(mem[300 len 20])
        call mem[300 len 20].0xa9059cbb with:
             gas gas_remaining wei
            args address(mem[160]), mem[416]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[ceil32(arg4.length) + 160] = mem[140 len 20]
        require 0, 416 >= 32
        if stor0 != msg.sender:
            if uint64(mem[128]) << 96 != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
        mem[ceil32(arg4.length) + 740 len ceil32(0, 416)] = mem[ceil32(arg4.length) + 160 len ceil32(0, 416)]
        require ext_code.size(address(_30))
        call address(_30).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
             gas gas_remaining wei
            args mem[ceil32(arg4.length) + 580 len 0, 416 + 160]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        require arg4.length >= 288
        if not arg2:
            if mem[300 len 20] != stor1:
                require ext_code.size(stor2)
                call stor2.liquidateBorrow(address rg1, address rg2, address rg3, uint256 rg4) with:
                     gas gas_remaining wei
                    args address(mem[224]), address(mem[288]), address(mem[320]), arg3
            else:
                require ext_code.size(mem[300 len 20])
                call mem[300 len 20].withdraw(uint256 rg1) with:
                     gas gas_remaining wei
                    args arg3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(stor2)
                call stor2.liquidateBorrow(address rg1, address rg2, address rg3, uint256 rg4) with:
                   value arg3 wei
                     gas gas_remaining wei
                    args address(mem[224]), address(mem[288]), address(mem[320]), arg3
        else:
            if mem[300 len 20] != stor1:
                require ext_code.size(stor2)
                call stor2.liquidateBorrow(address rg1, address rg2, address rg3, uint256 rg4) with:
                     gas gas_remaining wei
                    args address(mem[224]), address(mem[288]), address(mem[320]), arg2
            else:
                require ext_code.size(mem[300 len 20])
                call mem[300 len 20].withdraw(uint256 rg1) with:
                     gas gas_remaining wei
                    args arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(stor2)
                call stor2.liquidateBorrow(address rg1, address rg2, address rg3, uint256 rg4) with:
                   value arg2 wei
                     gas gas_remaining wei
                    args address(mem[224]), address(mem[288]), address(mem[320]), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(mem[268 len 20])
        staticcall mem[268 len 20].0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor2)
        call stor2.withdraw(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args address(mem[320]), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(mem[332 len 20])
        if mem[332 len 20] == stor1:
            call mem[332 len 20].deposit() with:
               value mem[384] wei
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        call mem[332 len 20].0xa9059cbb with:
             gas gas_remaining wei
            args address(mem[128]), mem[384]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
}



}
