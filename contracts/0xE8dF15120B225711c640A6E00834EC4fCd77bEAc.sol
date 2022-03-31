contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;

function destory() {
    if stor0 != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    selfdestruct(this.address)
}

function _fallback() payable {
  stop
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
    if stor0 != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    call arg1 with:
         gas gas_remaining wei
        args arg2, arg3, address(this.address), Array(len=arg4.length, data=arg4[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
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
    require arg4.length >= 384
    if not arg2:
        _7 = mem[160]
        if mem[480]:
            require ext_code.size(mem[300 len 20])
            call mem[300 len 20].0xa9059cbb with:
                 gas gas_remaining wei
                args address(mem[160]), arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[ceil32(arg4.length) + 160] = mem[140 len 20]
            if stor0 != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            mem[ceil32(arg4.length) + 708 len ceil32(0, 384)] = mem[ceil32(arg4.length) + 160 len ceil32(0, 384)]
            require ext_code.size(address(_7))
            call address(_7).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                 gas gas_remaining wei
                args mem[ceil32(arg4.length) + 548 len 0, 384 + 160]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        else:
            if mem[300 len 20] != stor1:
                require ext_code.size(mem[204 len 20])
                call mem[204 len 20].liquidateBorrow(address rg1, uint256 rg2, address rg3) with:
                     gas gas_remaining wei
                    args address(mem[224]), arg3, mem[268 len 20]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
            else:
                require ext_code.size(mem[300 len 20])
                call mem[300 len 20].withdraw(uint256 rg1) with:
                     gas gas_remaining wei
                    args arg3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(mem[204 len 20])
                call mem[204 len 20].liquidateBorrow(address rg1, address rg2) with:
                   value arg3 wei
                     gas gas_remaining wei
                    args address(mem[224]), mem[268 len 20]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(mem[268 len 20])
            staticcall mem[268 len 20].0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(mem[268 len 20])
            call mem[268 len 20].redeem(uint256 rg1) with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
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
            require ext_code.size(mem[332 len 20])
            staticcall mem[332 len 20].0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] <= 0:
                revert with 0, 'no earn more money'
            require ext_code.size(mem[332 len 20])
            call mem[332 len 20].0xa9059cbb with:
                 gas gas_remaining wei
                args stor0, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
    else:
        _19 = mem[160]
        if mem[480]:
            require ext_code.size(mem[300 len 20])
            call mem[300 len 20].0xa9059cbb with:
                 gas gas_remaining wei
                args address(mem[160]), arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[ceil32(arg4.length) + 160] = mem[140 len 20]
            if stor0 != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            mem[ceil32(arg4.length) + 708 len ceil32(0, 384)] = mem[ceil32(arg4.length) + 160 len ceil32(0, 384)]
            require ext_code.size(address(_19))
            call address(_19).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                 gas gas_remaining wei
                args mem[ceil32(arg4.length) + 548 len 0, 384 + 160]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        else:
            if mem[300 len 20] != stor1:
                require ext_code.size(mem[204 len 20])
                call mem[204 len 20].liquidateBorrow(address rg1, uint256 rg2, address rg3) with:
                     gas gas_remaining wei
                    args address(mem[224]), arg2, mem[268 len 20]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
            else:
                require ext_code.size(mem[300 len 20])
                call mem[300 len 20].withdraw(uint256 rg1) with:
                     gas gas_remaining wei
                    args arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(mem[204 len 20])
                call mem[204 len 20].liquidateBorrow(address rg1, address rg2) with:
                   value arg2 wei
                     gas gas_remaining wei
                    args address(mem[224]), mem[268 len 20]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(mem[268 len 20])
            staticcall mem[268 len 20].0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(mem[268 len 20])
            call mem[268 len 20].redeem(uint256 rg1) with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
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
            require ext_code.size(mem[332 len 20])
            staticcall mem[332 len 20].0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] <= 0:
                revert with 0, 'no earn more money'
            require ext_code.size(mem[332 len 20])
            call mem[332 len 20].0xa9059cbb with:
                 gas gas_remaining wei
                args stor0, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
}



}
