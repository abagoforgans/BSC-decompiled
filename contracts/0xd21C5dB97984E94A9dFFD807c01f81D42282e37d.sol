contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;
mapping of uint8 stor2;
address stor3;
address stor4;
address stor5;
address stor6;

function getOperator(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor2[address(arg1)])
}

function _fallback() payable {
  stop
}

function sendEth(uint256 arg1) {
    require calldata.size - 4 >= 32
    call stor1 with:
       value arg1 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'Failed'
    else:
        return 0
}

function withdrawToken(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args stor1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_f4305035(?) {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = 0
    require msg.sender == stor0
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        require idx < arg2.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 2
        stor2[mem[(32 * idx) + 140 len 20]] = uint8(bool(mem[(32 * idx) + (32 * arg1.length) + 160]))
        idx = idx + 1
        continue 
}

function sub_1a6b31bf(?) {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    if not stor2[address(msg.sender)]:
        revert with 0, 'not allowed'
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _18 = mem[(32 * idx) + 128]
        mem[(32 * arg1.length) + 132] = arg2
        mem[(32 * arg1.length) + 164] = -1
        require ext_code.size(address(_18))
        call address(_18).approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args address(arg2), -1
        mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = idx + 1
        continue 
    return 1
}

function sub_f60c03f9(?) {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = 0
    if not stor2[address(msg.sender)]:
        revert with 0, 'not allowed'
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _21 = mem[(32 * idx) + 128]
        require idx < arg2.length
        mem[(32 * arg1.length) + (32 * arg2.length) + 164] = mem[(32 * idx) + (32 * arg1.length) + 172 len 20]
        mem[(32 * arg1.length) + (32 * arg2.length) + 196] = -1
        require ext_code.size(address(_21))
        call address(_21).approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args mem[(32 * arg1.length) + (32 * arg2.length) + 164], -1
        mem[(32 * arg1.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = idx + 1
        continue 
    return 1
}

function pancakeCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    require ext_code.size(msg.sender)
    staticcall msg.sender.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(msg.sender)
    staticcall msg.sender.token1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg1 == this.address
    mem[100] = address(ext_call.return_data[0])
    mem[132] = address(ext_call.return_data[0])
    require ext_code.size(0xbcfccbde45ce874adcb698cc183debcf17952812)
    staticcall 0xbcfccbde45ce874adcb698cc183debcf17952812.0xe6a43905 with:
            gas gas_remaining wei
           args address(ext_call.return_data[0]), address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require msg.sender == ext_call.return_data[12 len 20]
    require arg4.length >= 192
    require cd[(arg4 + 196)] <= 4294967296
    require cd[(arg4 + 196)] + 68 <= arg4.length + 36
    require cd[(arg4 + cd[(arg4 + 196)] + 36)] <= 4294967296 and cd[(arg4 + 196)] + cd[(arg4 + cd[(arg4 + 196)] + 36)] + 68 <= arg4.length + 36
    mem[128 len cd[(arg4 + cd[(arg4 + 196)] + 36)]] = call.data[arg4 + cd[(arg4 + 196)] + 68 len cd[(arg4 + cd[(arg4 + 196)] + 36)]]
    mem[cd[(arg4 + cd[(arg4 + 196)] + 36)] + 128] = 0
    if cd[(arg4 + 68)]:
        if address(cd[(arg4 + 100)]) == stor3:
            mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + 128] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
            mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + 132] = cd[(arg4 + 164)]
            require ext_code.size(stor3)
            call stor3.0x2e1a7d4d with:
                 gas gas_remaining wei
                args cd[(arg4 + 164)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        require cd[(arg4 + cd[(arg4 + 196)] + 36)] >= 160
        require ext_code.size(stor5)
        if not mem[224]:
            call stor5.liquidateBorrow(address rg1, address rg2, address rg3, uint256 rg4) with:
                 gas gas_remaining wei
                args ext_call.return_data[0] << 160, address(mem[164 len 28]), address(mem[192]), cd[(arg4 + 164)]
        else:
            if not mem[256]:
                call stor5.liquidateBorrow(address rg1, address rg2, address rg3, uint256 rg4) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0] << 160, address(mem[164 len 28]), address(mem[192]), cd[(arg4 + 164)]
            else:
                call stor5.liquidateBorrow(address rg1, address rg2, address rg3, uint256 rg4) with:
                   value cd[(arg4 + 164)] wei
                     gas gas_remaining wei
                    args ext_call.return_data[0] << 160, address(mem[164 len 28]), address(mem[192]), cd[(arg4 + 164)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(stor6)
        call stor6.getFTokeAddress(address rg1) with:
             gas gas_remaining wei
            args mem[204 len 20]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor5)
        call stor5.withdraw(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args address(mem[192]), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if address(cd[(arg4 + 100)]) == stor3:
            require ext_code.size(stor3)
            call stor3.0xd0e30db0 with:
               value cd[(arg4 + 164)] + (2 * cd[(arg4 + 164)] / 998) + 1 wei
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(address(cd[(arg4 + 100)]))
        call address(cd[(arg4 + 100)]).0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, cd[(arg4 + 164)] + (2 * cd[(arg4 + 164)] / 998) + 1
    else:
        if address(cd[(arg4 + 100)]) != stor3:
            mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + 164] = address(cd[(arg4 + 132)])
            require ext_code.size(0xbcfccbde45ce874adcb698cc183debcf17952812)
            staticcall 0xbcfccbde45ce874adcb698cc183debcf17952812.0xe6a43905 with:
                    gas gas_remaining wei
                   args address(cd[(arg4 + 100)]), address(cd[(arg4 + 132)])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(cd[(arg4 + 100)]))
            staticcall address(cd[(arg4 + 100)]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + 132] = address(ext_call.return_data[0])
            require ext_code.size(address(cd[(arg4 + 132)]))
            staticcall address(cd[(arg4 + 132)]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(ext_call.return_data[0])
            mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 998 * ext_call.return_data[0]
            require cd[(arg4 + cd[(arg4 + 196)] + 36)] >= 160
            _92 = mem[192]
            require ext_code.size(stor5)
            if cd[(arg4 + 36)]:
                call stor5.liquidateBorrow(address rg1, address rg2, address rg3, uint256 rg4) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0] << 160, address(mem[164 len 28]), address(mem[192]), cd[(arg4 + 164)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(stor6)
                call stor6.getFTokeAddress(address rg1) with:
                     gas gas_remaining wei
                    args mem[204 len 20]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor5)
                call stor5.withdraw(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args address(mem[192]), ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                if mem[224]:
                    call stor5.liquidateBorrow(address rg1, address rg2, address rg3, uint256 rg4) with:
                       value cd[(arg4 + 164)] wei
                         gas gas_remaining wei
                        args ext_call.return_data[0] << 160, address(mem[164 len 28]), address(mem[192]), cd[(arg4 + 164)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(stor6)
                    call stor6.getFTokeAddress(address rg1) with:
                         gas gas_remaining wei
                        args mem[204 len 20]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor5)
                    call stor5.withdraw(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args address(mem[192]), ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    call stor5.liquidateBorrow(address rg1, address rg2, address rg3, uint256 rg4) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0] << 160, address(mem[164 len 28]), address(mem[192]), cd[(arg4 + 164)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(stor6)
                    call stor6.getFTokeAddress(address rg1) with:
                         gas gas_remaining wei
                        args mem[204 len 20]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor5)
                    call stor5.withdraw(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args address(mem[192]), ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if mem[256]:
                    else:
                        require 0 < 0, 2
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + 160] = mem[204 len 20]
                        require 1 < 0, 2
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + 192] = stor3
                        require ext_code.size(address(_92))
                        staticcall address(_92).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + 224] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + 228] = ext_call.return_data[0]
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + 260] = (1000 * ext_call.return_data[0] * cd[(arg4 + 164)] / 998 * ext_call.return_data[0]) + 1
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + 324] = this.address
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + 356] = block.timestamp + 30
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + 292] = 160
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + 388] = 0, 2
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + 420 len floor32(0, 2)] = mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + 160 len floor32(0, 2)]
                        require ext_code.size(stor4)
                        call stor4.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + 228 len (32 * 0, 2) + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + ceil32(return_data.size) + 224
                        require return_data.size >= 32
                        require mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + 224 len 4], ext_call.return_data[0 len 28] <= 4294967296
                        require mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + 224 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                        require mem[mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + 224 len 4], ext_call.return_data[0 len 28] + ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + 224] <= 4294967296 and mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + 224 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + 224 len 4], ext_call.return_data[0 len 28] + ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + 224]) + 32 <= return_data.size
        else:
            require ext_code.size(stor3)
            call stor3.0x2e1a7d4d with:
                 gas gas_remaining wei
                args cd[(arg4 + 164)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + 164] = address(cd[(arg4 + 132)])
            require ext_code.size(0xbcfccbde45ce874adcb698cc183debcf17952812)
            staticcall 0xbcfccbde45ce874adcb698cc183debcf17952812.0xe6a43905 with:
                    gas gas_remaining wei
                   args address(cd[(arg4 + 100)]), address(cd[(arg4 + 132)])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(cd[(arg4 + 100)]))
            staticcall address(cd[(arg4 + 100)]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + 132] = address(ext_call.return_data[0])
            require ext_code.size(address(cd[(arg4 + 132)]))
            staticcall address(cd[(arg4 + 132)]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(ext_call.return_data[0])
            mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 998 * ext_call.return_data[0]
            require cd[(arg4 + cd[(arg4 + 196)] + 36)] >= 160
            _133 = mem[192]
            require ext_code.size(stor5)
            if cd[(arg4 + 36)]:
                call stor5.liquidateBorrow(address rg1, address rg2, address rg3, uint256 rg4) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0] << 160, address(mem[164 len 28]), address(mem[192]), cd[(arg4 + 164)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(stor6)
                call stor6.getFTokeAddress(address rg1) with:
                     gas gas_remaining wei
                    args mem[204 len 20]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor5)
                call stor5.withdraw(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args address(mem[192]), ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                if mem[224]:
                    call stor5.liquidateBorrow(address rg1, address rg2, address rg3, uint256 rg4) with:
                       value cd[(arg4 + 164)] wei
                         gas gas_remaining wei
                        args ext_call.return_data[0] << 160, address(mem[164 len 28]), address(mem[192]), cd[(arg4 + 164)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(stor6)
                    call stor6.getFTokeAddress(address rg1) with:
                         gas gas_remaining wei
                        args mem[204 len 20]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor5)
                    call stor5.withdraw(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args address(mem[192]), ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    call stor5.liquidateBorrow(address rg1, address rg2, address rg3, uint256 rg4) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0] << 160, address(mem[164 len 28]), address(mem[192]), cd[(arg4 + 164)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(stor6)
                    call stor6.getFTokeAddress(address rg1) with:
                         gas gas_remaining wei
                        args mem[204 len 20]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor5)
                    call stor5.withdraw(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args address(mem[192]), ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if mem[256]:
                    else:
                        require 0 < 0, 2
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + 160] = mem[204 len 20]
                        require 1 < 0, 2
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + 192] = stor3
                        require ext_code.size(address(_133))
                        staticcall address(_133).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + 224] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + 228] = ext_call.return_data[0]
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + 260] = (1000 * ext_call.return_data[0] * cd[(arg4 + 164)] / 998 * ext_call.return_data[0]) + 1
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + 324] = this.address
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + 356] = block.timestamp + 30
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + 292] = 160
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + 388] = 0, 2
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + 420 len floor32(0, 2)] = mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + 160 len floor32(0, 2)]
                        require ext_code.size(stor4)
                        call stor4.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + 228 len (32 * 0, 2) + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + ceil32(return_data.size) + 224
                        require return_data.size >= 32
                        require mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + 224 len 4], ext_call.return_data[0 len 28] <= 4294967296
                        require mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + 224 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                        require mem[mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + 224 len 4], ext_call.return_data[0 len 28] + ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + 224] <= 4294967296 and mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + 224 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + 224 len 4], ext_call.return_data[0 len 28] + ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + 224]) + 32 <= return_data.size
        if address(cd[(arg4 + 132)]) == stor3:
            require ext_code.size(stor3)
            call stor3.0xd0e30db0 with:
               value (1000 * ext_call.return_data[0] * cd[(arg4 + 164)] / 998 * ext_call.return_data[0]) + 1 wei
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(address(cd[(arg4 + 132)]))
        call address(cd[(arg4 + 132)]).0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, (1000 * ext_call.return_data[0] * cd[(arg4 + 164)] / 998 * ext_call.return_data[0]) + 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_f0c890af(?) {
    require calldata.size - 4 >= 96
    require cd[68] <= 4294967296
    require cd[68] + 36 <= calldata.size
    require ('cd', 68).length <= 4294967296 and cd[68] + ('cd', 68).length + 36 <= calldata.size
    mem[0] = msg.sender
    mem[32] = 2
    if not stor2[address(msg.sender)]:
        revert with 0, 'not allowed'
    require ('cd', 68).length >= 160
    mem[96] = ('cd', 68).length
    mem[128 len ('cd', 68).length] = call.data[cd[68] + 36 len ('cd', 68).length]
    mem[('cd', 68).length + 128] = 0
    require ext_code.size(0xbcfccbde45ce874adcb698cc183debcf17952812)
    if cd[4]:
        staticcall 0xbcfccbde45ce874adcb698cc183debcf17952812.0xe6a43905 with:
                gas gas_remaining wei
               args address(('cd', 68)[1]), address(('cd', 68)[2])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[12 len 20]:
            revert with 0, 'Requested pair is not available.'
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).token1() with:
                gas gas_remaining wei
        mem[ceil32(('cd', 68).length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[ceil32(('cd', 68).length) + 160] = bool(cd[4])
        mem[ceil32(('cd', 68).length) + 192] = 0
        mem[ceil32(('cd', 68).length) + 224] = address(('cd', 68)[1])
        mem[ceil32(('cd', 68).length) + 256] = address(('cd', 68)[2])
        mem[ceil32(('cd', 68).length) + 288] = cd[36]
        mem[ceil32(('cd', 68).length) + 320] = 192
        mem[ceil32(('cd', 68).length) + 352] = ('cd', 68).length
        mem[ceil32(('cd', 68).length) + 384 len ceil32(('cd', 68).length)] = call.data[cd[68] + 36 len ('cd', 68).length], mem[('cd', 68).length + 128 len ceil32(('cd', 68).length) - ('cd', 68).length]
        if address(('cd', 68)[1]) == address(ext_call.return_data[0]):
            if address(('cd', 68)[1]) == ext_call.return_data[12 len 20]:
                if not ('cd', 68).length % 32:
                    mem[ceil32(('cd', 68).length) + 128] = ('cd', 68).length + 224
                    mem[64] = ('cd', 68).length + ceil32(('cd', 68).length) + 384
                    mem[('cd', 68).length + ceil32(('cd', 68).length) + 384] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[('cd', 68).length + ceil32(('cd', 68).length) + 388] = cd[36]
                    mem[('cd', 68).length + ceil32(('cd', 68).length) + 420] = cd[36]
                    mem[('cd', 68).length + ceil32(('cd', 68).length) + 452] = this.address
                    mem[('cd', 68).length + ceil32(('cd', 68).length) + 484] = 128
                    mem[('cd', 68).length + ceil32(('cd', 68).length) + 516] = 0, Mask(224, 0, ('cd', 68).length + 224)
                    mem[('cd', 68).length + ceil32(('cd', 68).length) + 548 len ceil32(0, Mask(224, 0, ('cd', 68).length + 224))] = mem[ceil32(('cd', 68).length) + 160 len ceil32(0, Mask(224, 0, ('cd', 68).length + 224))]
                    if not ('cd', 68).length + 224 % 32:
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args mem[('cd', 68).length + ceil32(('cd', 68).length) + 388 len 0, Mask(224, 0, ('cd', 68).length + 224) + 160]
                    else:
                        mem[floor32(0, Mask(224, 0, ('cd', 68).length + 224)) + ('cd', 68).length + ceil32(('cd', 68).length) + 548] = mem[floor32(0, Mask(224, 0, ('cd', 68).length + 224)) + ('cd', 68).length + ceil32(('cd', 68).length) + -(('cd', 68).length + 224 % 32) + 580 len ('cd', 68).length + 224 % 32]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args mem[('cd', 68).length + ceil32(('cd', 68).length) + 388 len floor32(0, Mask(224, 0, ('cd', 68).length + 224)) + 192]
                else:
                    mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 384] = mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + -(('cd', 68).length % 32) + 416 len ('cd', 68).length % 32]
                    mem[ceil32(('cd', 68).length) + 128] = floor32(('cd', 68).length) + 256
                    mem[64] = floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 416
                    mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 416] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 420] = cd[36]
                    mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 452] = cd[36]
                    mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 484] = this.address
                    mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 516] = 128
                    mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 548] = 0, Mask(224, 0, floor32(('cd', 68).length) + 256)
                    mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 580 len ceil32(0, Mask(224, 0, floor32(('cd', 68).length) + 256))] = mem[ceil32(('cd', 68).length) + 160 len ceil32(0, Mask(224, 0, floor32(('cd', 68).length) + 256))]
                    if not floor32(('cd', 68).length) + 256 % 32:
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 420 len 0, Mask(224, 0, floor32(('cd', 68).length) + 256) + 160]
                    else:
                        mem[floor32(0, Mask(224, 0, floor32(('cd', 68).length) + 256)) + floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 580] = mem[floor32(0, Mask(224, 0, floor32(('cd', 68).length) + 256)) + floor32(('cd', 68).length) + ceil32(('cd', 68).length) + -(floor32(('cd', 68).length) + 256 % 32) + 612 len floor32(('cd', 68).length) + 256 % 32]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 420 len floor32(0, Mask(224, 0, floor32(('cd', 68).length) + 256)) + 192]
            else:
                if not ('cd', 68).length % 32:
                    mem[ceil32(('cd', 68).length) + 128] = ('cd', 68).length + 224
                    mem[64] = ('cd', 68).length + ceil32(('cd', 68).length) + 384
                    mem[('cd', 68).length + ceil32(('cd', 68).length) + 384] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[('cd', 68).length + ceil32(('cd', 68).length) + 388] = cd[36]
                    mem[('cd', 68).length + ceil32(('cd', 68).length) + 420] = 0
                    mem[('cd', 68).length + ceil32(('cd', 68).length) + 452] = this.address
                    mem[('cd', 68).length + ceil32(('cd', 68).length) + 484] = 128
                    mem[('cd', 68).length + ceil32(('cd', 68).length) + 516] = 0, Mask(224, 0, ('cd', 68).length + 224)
                    mem[('cd', 68).length + ceil32(('cd', 68).length) + 548 len ceil32(0, Mask(224, 0, ('cd', 68).length + 224))] = mem[ceil32(('cd', 68).length) + 160 len ceil32(0, Mask(224, 0, ('cd', 68).length + 224))]
                    if not ('cd', 68).length + 224 % 32:
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args mem[('cd', 68).length + ceil32(('cd', 68).length) + 388 len 0, Mask(224, 0, ('cd', 68).length + 224) + 160]
                    else:
                        mem[floor32(0, Mask(224, 0, ('cd', 68).length + 224)) + ('cd', 68).length + ceil32(('cd', 68).length) + 548] = mem[floor32(0, Mask(224, 0, ('cd', 68).length + 224)) + ('cd', 68).length + ceil32(('cd', 68).length) + -(('cd', 68).length + 224 % 32) + 580 len ('cd', 68).length + 224 % 32]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args mem[('cd', 68).length + ceil32(('cd', 68).length) + 388 len floor32(0, Mask(224, 0, ('cd', 68).length + 224)) + 192]
                else:
                    mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 384] = mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + -(('cd', 68).length % 32) + 416 len ('cd', 68).length % 32]
                    mem[ceil32(('cd', 68).length) + 128] = floor32(('cd', 68).length) + 256
                    mem[64] = floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 416
                    mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 416] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 420] = cd[36]
                    mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 452] = 0
                    mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 484] = this.address
                    mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 516] = 128
                    mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 548] = 0, Mask(224, 0, floor32(('cd', 68).length) + 256)
                    mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 580 len ceil32(0, Mask(224, 0, floor32(('cd', 68).length) + 256))] = mem[ceil32(('cd', 68).length) + 160 len ceil32(0, Mask(224, 0, floor32(('cd', 68).length) + 256))]
                    if not floor32(('cd', 68).length) + 256 % 32:
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 420 len 0, Mask(224, 0, floor32(('cd', 68).length) + 256) + 160]
                    else:
                        mem[floor32(0, Mask(224, 0, floor32(('cd', 68).length) + 256)) + floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 580] = mem[floor32(0, Mask(224, 0, floor32(('cd', 68).length) + 256)) + floor32(('cd', 68).length) + ceil32(('cd', 68).length) + -(floor32(('cd', 68).length) + 256 % 32) + 612 len floor32(('cd', 68).length) + 256 % 32]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 420 len floor32(0, Mask(224, 0, floor32(('cd', 68).length) + 256)) + 192]
        else:
            if address(('cd', 68)[1]) == ext_call.return_data[12 len 20]:
                if not ('cd', 68).length % 32:
                    mem[ceil32(('cd', 68).length) + 128] = ('cd', 68).length + 224
                    mem[64] = ('cd', 68).length + ceil32(('cd', 68).length) + 384
                    mem[('cd', 68).length + ceil32(('cd', 68).length) + 384] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[('cd', 68).length + ceil32(('cd', 68).length) + 388] = 0
                    mem[('cd', 68).length + ceil32(('cd', 68).length) + 420] = cd[36]
                    mem[('cd', 68).length + ceil32(('cd', 68).length) + 452] = this.address
                    mem[('cd', 68).length + ceil32(('cd', 68).length) + 484] = 128
                    mem[('cd', 68).length + ceil32(('cd', 68).length) + 516] = 0, Mask(224, 0, ('cd', 68).length + 224)
                    mem[('cd', 68).length + ceil32(('cd', 68).length) + 548 len ceil32(0, Mask(224, 0, ('cd', 68).length + 224))] = mem[ceil32(('cd', 68).length) + 160 len ceil32(0, Mask(224, 0, ('cd', 68).length + 224))]
                    if not ('cd', 68).length + 224 % 32:
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args mem[('cd', 68).length + ceil32(('cd', 68).length) + 388 len 0, Mask(224, 0, ('cd', 68).length + 224) + 160]
                    else:
                        mem[floor32(0, Mask(224, 0, ('cd', 68).length + 224)) + ('cd', 68).length + ceil32(('cd', 68).length) + 548] = mem[floor32(0, Mask(224, 0, ('cd', 68).length + 224)) + ('cd', 68).length + ceil32(('cd', 68).length) + -(('cd', 68).length + 224 % 32) + 580 len ('cd', 68).length + 224 % 32]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args mem[('cd', 68).length + ceil32(('cd', 68).length) + 388 len floor32(0, Mask(224, 0, ('cd', 68).length + 224)) + 192]
                else:
                    mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 384] = mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + -(('cd', 68).length % 32) + 416 len ('cd', 68).length % 32]
                    mem[ceil32(('cd', 68).length) + 128] = floor32(('cd', 68).length) + 256
                    mem[64] = floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 416
                    mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 416] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 420] = 0
                    mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 452] = cd[36]
                    mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 484] = this.address
                    mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 516] = 128
                    mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 548] = 0, Mask(224, 0, floor32(('cd', 68).length) + 256)
                    mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 580 len ceil32(0, Mask(224, 0, floor32(('cd', 68).length) + 256))] = mem[ceil32(('cd', 68).length) + 160 len ceil32(0, Mask(224, 0, floor32(('cd', 68).length) + 256))]
                    if not floor32(('cd', 68).length) + 256 % 32:
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 420 len 0, Mask(224, 0, floor32(('cd', 68).length) + 256) + 160]
                    else:
                        mem[floor32(0, Mask(224, 0, floor32(('cd', 68).length) + 256)) + floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 580] = mem[floor32(0, Mask(224, 0, floor32(('cd', 68).length) + 256)) + floor32(('cd', 68).length) + ceil32(('cd', 68).length) + -(floor32(('cd', 68).length) + 256 % 32) + 612 len floor32(('cd', 68).length) + 256 % 32]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 420 len floor32(0, Mask(224, 0, floor32(('cd', 68).length) + 256)) + 192]
            else:
                if not ('cd', 68).length % 32:
                    mem[ceil32(('cd', 68).length) + 128] = ('cd', 68).length + 224
                    mem[64] = ('cd', 68).length + ceil32(('cd', 68).length) + 384
                    mem[('cd', 68).length + ceil32(('cd', 68).length) + 384] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[('cd', 68).length + ceil32(('cd', 68).length) + 388] = 0
                    mem[('cd', 68).length + ceil32(('cd', 68).length) + 420] = 0
                    mem[('cd', 68).length + ceil32(('cd', 68).length) + 452] = this.address
                    mem[('cd', 68).length + ceil32(('cd', 68).length) + 484] = 128
                    mem[('cd', 68).length + ceil32(('cd', 68).length) + 516] = 0, Mask(224, 0, ('cd', 68).length + 224)
                    mem[('cd', 68).length + ceil32(('cd', 68).length) + 548 len ceil32(0, Mask(224, 0, ('cd', 68).length + 224))] = mem[ceil32(('cd', 68).length) + 160 len ceil32(0, Mask(224, 0, ('cd', 68).length + 224))]
                    if not ('cd', 68).length + 224 % 32:
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args mem[('cd', 68).length + ceil32(('cd', 68).length) + 388 len 0, Mask(224, 0, ('cd', 68).length + 224) + 160]
                    else:
                        mem[floor32(0, Mask(224, 0, ('cd', 68).length + 224)) + ('cd', 68).length + ceil32(('cd', 68).length) + 548] = mem[floor32(0, Mask(224, 0, ('cd', 68).length + 224)) + ('cd', 68).length + ceil32(('cd', 68).length) + -(('cd', 68).length + 224 % 32) + 580 len ('cd', 68).length + 224 % 32]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args mem[('cd', 68).length + ceil32(('cd', 68).length) + 388 len floor32(0, Mask(224, 0, ('cd', 68).length + 224)) + 192]
                else:
                    mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 384] = mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + -(('cd', 68).length % 32) + 416 len ('cd', 68).length % 32]
                    mem[ceil32(('cd', 68).length) + 128] = floor32(('cd', 68).length) + 256
                    mem[64] = floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 416
                    mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 416] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 420] = 0
                    mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 452] = 0
                    mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 484] = this.address
                    mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 516] = 128
                    mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 548] = 0, Mask(224, 0, floor32(('cd', 68).length) + 256)
                    mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 580 len ceil32(0, Mask(224, 0, floor32(('cd', 68).length) + 256))] = mem[ceil32(('cd', 68).length) + 160 len ceil32(0, Mask(224, 0, floor32(('cd', 68).length) + 256))]
                    if not floor32(('cd', 68).length) + 256 % 32:
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 420 len 0, Mask(224, 0, floor32(('cd', 68).length) + 256) + 160]
                    else:
                        mem[floor32(0, Mask(224, 0, floor32(('cd', 68).length) + 256)) + floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 580] = mem[floor32(0, Mask(224, 0, floor32(('cd', 68).length) + 256)) + floor32(('cd', 68).length) + ceil32(('cd', 68).length) + -(floor32(('cd', 68).length) + 256 % 32) + 612 len floor32(('cd', 68).length) + 256 % 32]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 420 len floor32(0, Mask(224, 0, floor32(('cd', 68).length) + 256)) + 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(address(('cd', 68)[2]))
        staticcall address(('cd', 68)[2]).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(('cd', 68)[2]))
        call address(('cd', 68)[2]).0xa9059cbb with:
             gas gas_remaining wei
            args stor1, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    else:
        if not ('cd', 68)[3]:
            staticcall 0xbcfccbde45ce874adcb698cc183debcf17952812.0xe6a43905 with:
                    gas gas_remaining wei
                   args address(('cd', 68)[1]), stor3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ('cd', 68)[4]:
                if not ext_call.return_data[12 len 20]:
                    revert with 0, 'Requested pair is not available.'
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).token1() with:
                        gas gas_remaining wei
                mem[ceil32(('cd', 68).length) + 128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[ceil32(('cd', 68).length) + 160] = bool(cd[4])
                mem[ceil32(('cd', 68).length) + 192] = 0
                mem[ceil32(('cd', 68).length) + 224] = address(('cd', 68)[1])
                mem[ceil32(('cd', 68).length) + 256] = stor3
                mem[ceil32(('cd', 68).length) + 288] = cd[36]
                mem[ceil32(('cd', 68).length) + 320] = 192
                mem[ceil32(('cd', 68).length) + 352] = ('cd', 68).length
                mem[ceil32(('cd', 68).length) + 384 len ceil32(('cd', 68).length)] = call.data[cd[68] + 36 len ('cd', 68).length], mem[('cd', 68).length + 128 len ceil32(('cd', 68).length) - ('cd', 68).length]
                if address(('cd', 68)[1]) == address(ext_call.return_data[0]):
                    if address(('cd', 68)[1]) == ext_call.return_data[12 len 20]:
                        if not ('cd', 68).length % 32:
                            mem[ceil32(('cd', 68).length) + 128] = ('cd', 68).length + 224
                            mem[64] = ('cd', 68).length + ceil32(('cd', 68).length) + 384
                            mem[('cd', 68).length + ceil32(('cd', 68).length) + 384] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[('cd', 68).length + ceil32(('cd', 68).length) + 388] = cd[36]
                            mem[('cd', 68).length + ceil32(('cd', 68).length) + 420] = cd[36]
                            mem[('cd', 68).length + ceil32(('cd', 68).length) + 452] = this.address
                            mem[('cd', 68).length + ceil32(('cd', 68).length) + 484] = 128
                            mem[('cd', 68).length + ceil32(('cd', 68).length) + 516] = 0, Mask(224, 0, ('cd', 68).length + 224)
                            mem[('cd', 68).length + ceil32(('cd', 68).length) + 548 len ceil32(0, Mask(224, 0, ('cd', 68).length + 224))] = mem[ceil32(('cd', 68).length) + 160 len ceil32(0, Mask(224, 0, ('cd', 68).length + 224))]
                            if not ('cd', 68).length + 224 % 32:
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args mem[('cd', 68).length + ceil32(('cd', 68).length) + 388 len 0, Mask(224, 0, ('cd', 68).length + 224) + 160]
                            else:
                                mem[floor32(0, Mask(224, 0, ('cd', 68).length + 224)) + ('cd', 68).length + ceil32(('cd', 68).length) + 548] = mem[floor32(0, Mask(224, 0, ('cd', 68).length + 224)) + ('cd', 68).length + ceil32(('cd', 68).length) + -(('cd', 68).length + 224 % 32) + 580 len ('cd', 68).length + 224 % 32]
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args mem[('cd', 68).length + ceil32(('cd', 68).length) + 388 len floor32(0, Mask(224, 0, ('cd', 68).length + 224)) + 192]
                        else:
                            mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 384] = mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + -(('cd', 68).length % 32) + 416 len ('cd', 68).length % 32]
                            mem[ceil32(('cd', 68).length) + 128] = floor32(('cd', 68).length) + 256
                            mem[64] = floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 416
                            mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 416] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 420] = cd[36]
                            mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 452] = cd[36]
                            mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 484] = this.address
                            mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 516] = 128
                            mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 548] = 0, Mask(224, 0, floor32(('cd', 68).length) + 256)
                            mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 580 len ceil32(0, Mask(224, 0, floor32(('cd', 68).length) + 256))] = mem[ceil32(('cd', 68).length) + 160 len ceil32(0, Mask(224, 0, floor32(('cd', 68).length) + 256))]
                            if not floor32(('cd', 68).length) + 256 % 32:
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 420 len 0, Mask(224, 0, floor32(('cd', 68).length) + 256) + 160]
                            else:
                                mem[floor32(0, Mask(224, 0, floor32(('cd', 68).length) + 256)) + floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 580] = mem[floor32(0, Mask(224, 0, floor32(('cd', 68).length) + 256)) + floor32(('cd', 68).length) + ceil32(('cd', 68).length) + -(floor32(('cd', 68).length) + 256 % 32) + 612 len floor32(('cd', 68).length) + 256 % 32]
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 420 len floor32(0, Mask(224, 0, floor32(('cd', 68).length) + 256)) + 192]
                    else:
                        if not ('cd', 68).length % 32:
                            mem[ceil32(('cd', 68).length) + 128] = ('cd', 68).length + 224
                            mem[64] = ('cd', 68).length + ceil32(('cd', 68).length) + 384
                            mem[('cd', 68).length + ceil32(('cd', 68).length) + 384] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[('cd', 68).length + ceil32(('cd', 68).length) + 388] = cd[36]
                            mem[('cd', 68).length + ceil32(('cd', 68).length) + 420] = 0
                            mem[('cd', 68).length + ceil32(('cd', 68).length) + 452] = this.address
                            mem[('cd', 68).length + ceil32(('cd', 68).length) + 484] = 128
                            mem[('cd', 68).length + ceil32(('cd', 68).length) + 516] = 0, Mask(224, 0, ('cd', 68).length + 224)
                            mem[('cd', 68).length + ceil32(('cd', 68).length) + 548 len ceil32(0, Mask(224, 0, ('cd', 68).length + 224))] = mem[ceil32(('cd', 68).length) + 160 len ceil32(0, Mask(224, 0, ('cd', 68).length + 224))]
                            if not ('cd', 68).length + 224 % 32:
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args mem[('cd', 68).length + ceil32(('cd', 68).length) + 388 len 0, Mask(224, 0, ('cd', 68).length + 224) + 160]
                            else:
                                mem[floor32(0, Mask(224, 0, ('cd', 68).length + 224)) + ('cd', 68).length + ceil32(('cd', 68).length) + 548] = mem[floor32(0, Mask(224, 0, ('cd', 68).length + 224)) + ('cd', 68).length + ceil32(('cd', 68).length) + -(('cd', 68).length + 224 % 32) + 580 len ('cd', 68).length + 224 % 32]
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args mem[('cd', 68).length + ceil32(('cd', 68).length) + 388 len floor32(0, Mask(224, 0, ('cd', 68).length + 224)) + 192]
                        else:
                            mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 384] = mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + -(('cd', 68).length % 32) + 416 len ('cd', 68).length % 32]
                            mem[ceil32(('cd', 68).length) + 128] = floor32(('cd', 68).length) + 256
                            mem[64] = floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 416
                            mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 416] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 420] = cd[36]
                            mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 452] = 0
                            mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 484] = this.address
                            mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 516] = 128
                            mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 548] = 0, Mask(224, 0, floor32(('cd', 68).length) + 256)
                            mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 580 len ceil32(0, Mask(224, 0, floor32(('cd', 68).length) + 256))] = mem[ceil32(('cd', 68).length) + 160 len ceil32(0, Mask(224, 0, floor32(('cd', 68).length) + 256))]
                            if not floor32(('cd', 68).length) + 256 % 32:
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 420 len 0, Mask(224, 0, floor32(('cd', 68).length) + 256) + 160]
                            else:
                                mem[floor32(0, Mask(224, 0, floor32(('cd', 68).length) + 256)) + floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 580] = mem[floor32(0, Mask(224, 0, floor32(('cd', 68).length) + 256)) + floor32(('cd', 68).length) + ceil32(('cd', 68).length) + -(floor32(('cd', 68).length) + 256 % 32) + 612 len floor32(('cd', 68).length) + 256 % 32]
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 420 len floor32(0, Mask(224, 0, floor32(('cd', 68).length) + 256)) + 192]
                else:
                    if address(('cd', 68)[1]) == ext_call.return_data[12 len 20]:
                        if not ('cd', 68).length % 32:
                            mem[ceil32(('cd', 68).length) + 128] = ('cd', 68).length + 224
                            mem[64] = ('cd', 68).length + ceil32(('cd', 68).length) + 384
                            mem[('cd', 68).length + ceil32(('cd', 68).length) + 384] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[('cd', 68).length + ceil32(('cd', 68).length) + 388] = 0
                            mem[('cd', 68).length + ceil32(('cd', 68).length) + 420] = cd[36]
                            mem[('cd', 68).length + ceil32(('cd', 68).length) + 452] = this.address
                            mem[('cd', 68).length + ceil32(('cd', 68).length) + 484] = 128
                            mem[('cd', 68).length + ceil32(('cd', 68).length) + 516] = 0, Mask(224, 0, ('cd', 68).length + 224)
                            mem[('cd', 68).length + ceil32(('cd', 68).length) + 548 len ceil32(0, Mask(224, 0, ('cd', 68).length + 224))] = mem[ceil32(('cd', 68).length) + 160 len ceil32(0, Mask(224, 0, ('cd', 68).length + 224))]
                            if not ('cd', 68).length + 224 % 32:
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args mem[('cd', 68).length + ceil32(('cd', 68).length) + 388 len 0, Mask(224, 0, ('cd', 68).length + 224) + 160]
                            else:
                                mem[floor32(0, Mask(224, 0, ('cd', 68).length + 224)) + ('cd', 68).length + ceil32(('cd', 68).length) + 548] = mem[floor32(0, Mask(224, 0, ('cd', 68).length + 224)) + ('cd', 68).length + ceil32(('cd', 68).length) + -(('cd', 68).length + 224 % 32) + 580 len ('cd', 68).length + 224 % 32]
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args mem[('cd', 68).length + ceil32(('cd', 68).length) + 388 len floor32(0, Mask(224, 0, ('cd', 68).length + 224)) + 192]
                        else:
                            mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 384] = mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + -(('cd', 68).length % 32) + 416 len ('cd', 68).length % 32]
                            mem[ceil32(('cd', 68).length) + 128] = floor32(('cd', 68).length) + 256
                            mem[64] = floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 416
                            mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 416] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 420] = 0
                            mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 452] = cd[36]
                            mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 484] = this.address
                            mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 516] = 128
                            mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 548] = 0, Mask(224, 0, floor32(('cd', 68).length) + 256)
                            mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 580 len ceil32(0, Mask(224, 0, floor32(('cd', 68).length) + 256))] = mem[ceil32(('cd', 68).length) + 160 len ceil32(0, Mask(224, 0, floor32(('cd', 68).length) + 256))]
                            if not floor32(('cd', 68).length) + 256 % 32:
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 420 len 0, Mask(224, 0, floor32(('cd', 68).length) + 256) + 160]
                            else:
                                mem[floor32(0, Mask(224, 0, floor32(('cd', 68).length) + 256)) + floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 580] = mem[floor32(0, Mask(224, 0, floor32(('cd', 68).length) + 256)) + floor32(('cd', 68).length) + ceil32(('cd', 68).length) + -(floor32(('cd', 68).length) + 256 % 32) + 612 len floor32(('cd', 68).length) + 256 % 32]
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 420 len floor32(0, Mask(224, 0, floor32(('cd', 68).length) + 256)) + 192]
                    else:
                        if not ('cd', 68).length % 32:
                            mem[ceil32(('cd', 68).length) + 128] = ('cd', 68).length + 224
                            mem[64] = ('cd', 68).length + ceil32(('cd', 68).length) + 384
                            mem[('cd', 68).length + ceil32(('cd', 68).length) + 384] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[('cd', 68).length + ceil32(('cd', 68).length) + 388] = 0
                            mem[('cd', 68).length + ceil32(('cd', 68).length) + 420] = 0
                            mem[('cd', 68).length + ceil32(('cd', 68).length) + 452] = this.address
                            mem[('cd', 68).length + ceil32(('cd', 68).length) + 484] = 128
                            mem[('cd', 68).length + ceil32(('cd', 68).length) + 516] = 0, Mask(224, 0, ('cd', 68).length + 224)
                            mem[('cd', 68).length + ceil32(('cd', 68).length) + 548 len ceil32(0, Mask(224, 0, ('cd', 68).length + 224))] = mem[ceil32(('cd', 68).length) + 160 len ceil32(0, Mask(224, 0, ('cd', 68).length + 224))]
                            if not ('cd', 68).length + 224 % 32:
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args mem[('cd', 68).length + ceil32(('cd', 68).length) + 388 len 0, Mask(224, 0, ('cd', 68).length + 224) + 160]
                            else:
                                mem[floor32(0, Mask(224, 0, ('cd', 68).length + 224)) + ('cd', 68).length + ceil32(('cd', 68).length) + 548] = mem[floor32(0, Mask(224, 0, ('cd', 68).length + 224)) + ('cd', 68).length + ceil32(('cd', 68).length) + -(('cd', 68).length + 224 % 32) + 580 len ('cd', 68).length + 224 % 32]
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args mem[('cd', 68).length + ceil32(('cd', 68).length) + 388 len floor32(0, Mask(224, 0, ('cd', 68).length + 224)) + 192]
                        else:
                            mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 384] = mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + -(('cd', 68).length % 32) + 416 len ('cd', 68).length % 32]
                            mem[ceil32(('cd', 68).length) + 128] = floor32(('cd', 68).length) + 256
                            mem[64] = floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 416
                            mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 416] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 420] = 0
                            mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 452] = 0
                            mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 484] = this.address
                            mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 516] = 128
                            mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 548] = 0, Mask(224, 0, floor32(('cd', 68).length) + 256)
                            mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 580 len ceil32(0, Mask(224, 0, floor32(('cd', 68).length) + 256))] = mem[ceil32(('cd', 68).length) + 160 len ceil32(0, Mask(224, 0, floor32(('cd', 68).length) + 256))]
                            if not floor32(('cd', 68).length) + 256 % 32:
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 420 len 0, Mask(224, 0, floor32(('cd', 68).length) + 256) + 160]
                            else:
                                mem[floor32(0, Mask(224, 0, floor32(('cd', 68).length) + 256)) + floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 580] = mem[floor32(0, Mask(224, 0, floor32(('cd', 68).length) + 256)) + floor32(('cd', 68).length) + ceil32(('cd', 68).length) + -(floor32(('cd', 68).length) + 256 % 32) + 612 len floor32(('cd', 68).length) + 256 % 32]
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 420 len floor32(0, Mask(224, 0, floor32(('cd', 68).length) + 256)) + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                call stor1 with:
                   value eth.balance(this.address) wei
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with 0, 'Failed'
            else:
                if address(('cd', 68)[1]) != address(('cd', 68)[2]):
                    if not ext_call.return_data[12 len 20]:
                        revert with 0, 'Requested pair is not available.'
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).token1() with:
                            gas gas_remaining wei
                    mem[ceil32(('cd', 68).length) + 128] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[ceil32(('cd', 68).length) + 160] = bool(cd[4])
                    mem[ceil32(('cd', 68).length) + 192] = 0
                    mem[ceil32(('cd', 68).length) + 224] = address(('cd', 68)[1])
                    mem[ceil32(('cd', 68).length) + 256] = stor3
                    mem[ceil32(('cd', 68).length) + 288] = cd[36]
                    mem[ceil32(('cd', 68).length) + 320] = 192
                    mem[ceil32(('cd', 68).length) + 352] = ('cd', 68).length
                    mem[ceil32(('cd', 68).length) + 384 len ceil32(('cd', 68).length)] = call.data[cd[68] + 36 len ('cd', 68).length], mem[('cd', 68).length + 128 len ceil32(('cd', 68).length) - ('cd', 68).length]
                    if address(('cd', 68)[1]) == address(ext_call.return_data[0]):
                        if address(('cd', 68)[1]) == ext_call.return_data[12 len 20]:
                            if not ('cd', 68).length % 32:
                                mem[ceil32(('cd', 68).length) + 128] = ('cd', 68).length + 224
                                mem[64] = ('cd', 68).length + ceil32(('cd', 68).length) + 384
                                mem[('cd', 68).length + ceil32(('cd', 68).length) + 384] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[('cd', 68).length + ceil32(('cd', 68).length) + 388] = cd[36]
                                mem[('cd', 68).length + ceil32(('cd', 68).length) + 420] = cd[36]
                                mem[('cd', 68).length + ceil32(('cd', 68).length) + 452] = this.address
                                mem[('cd', 68).length + ceil32(('cd', 68).length) + 484] = 128
                                mem[('cd', 68).length + ceil32(('cd', 68).length) + 516] = 0, Mask(224, 0, ('cd', 68).length + 224)
                                mem[('cd', 68).length + ceil32(('cd', 68).length) + 548 len ceil32(0, Mask(224, 0, ('cd', 68).length + 224))] = mem[ceil32(('cd', 68).length) + 160 len ceil32(0, Mask(224, 0, ('cd', 68).length + 224))]
                                if not ('cd', 68).length + 224 % 32:
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args mem[('cd', 68).length + ceil32(('cd', 68).length) + 388 len 0, Mask(224, 0, ('cd', 68).length + 224) + 160]
                                else:
                                    mem[floor32(0, Mask(224, 0, ('cd', 68).length + 224)) + ('cd', 68).length + ceil32(('cd', 68).length) + 548] = mem[floor32(0, Mask(224, 0, ('cd', 68).length + 224)) + ('cd', 68).length + ceil32(('cd', 68).length) + -(('cd', 68).length + 224 % 32) + 580 len ('cd', 68).length + 224 % 32]
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args mem[('cd', 68).length + ceil32(('cd', 68).length) + 388 len floor32(0, Mask(224, 0, ('cd', 68).length + 224)) + 192]
                            else:
                                mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 384] = mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + -(('cd', 68).length % 32) + 416 len ('cd', 68).length % 32]
                                mem[ceil32(('cd', 68).length) + 128] = floor32(('cd', 68).length) + 256
                                mem[64] = floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 416
                                mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 416] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 420] = cd[36]
                                mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 452] = cd[36]
                                mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 484] = this.address
                                mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 516] = 128
                                mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 548] = 0, Mask(224, 0, floor32(('cd', 68).length) + 256)
                                mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 580 len ceil32(0, Mask(224, 0, floor32(('cd', 68).length) + 256))] = mem[ceil32(('cd', 68).length) + 160 len ceil32(0, Mask(224, 0, floor32(('cd', 68).length) + 256))]
                                if not floor32(('cd', 68).length) + 256 % 32:
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 420 len 0, Mask(224, 0, floor32(('cd', 68).length) + 256) + 160]
                                else:
                                    mem[floor32(0, Mask(224, 0, floor32(('cd', 68).length) + 256)) + floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 580] = mem[floor32(0, Mask(224, 0, floor32(('cd', 68).length) + 256)) + floor32(('cd', 68).length) + ceil32(('cd', 68).length) + -(floor32(('cd', 68).length) + 256 % 32) + 612 len floor32(('cd', 68).length) + 256 % 32]
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 420 len floor32(0, Mask(224, 0, floor32(('cd', 68).length) + 256)) + 192]
                        else:
                            if not ('cd', 68).length % 32:
                                mem[ceil32(('cd', 68).length) + 128] = ('cd', 68).length + 224
                                mem[64] = ('cd', 68).length + ceil32(('cd', 68).length) + 384
                                mem[('cd', 68).length + ceil32(('cd', 68).length) + 384] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[('cd', 68).length + ceil32(('cd', 68).length) + 388] = cd[36]
                                mem[('cd', 68).length + ceil32(('cd', 68).length) + 420] = 0
                                mem[('cd', 68).length + ceil32(('cd', 68).length) + 452] = this.address
                                mem[('cd', 68).length + ceil32(('cd', 68).length) + 484] = 128
                                mem[('cd', 68).length + ceil32(('cd', 68).length) + 516] = 0, Mask(224, 0, ('cd', 68).length + 224)
                                mem[('cd', 68).length + ceil32(('cd', 68).length) + 548 len ceil32(0, Mask(224, 0, ('cd', 68).length + 224))] = mem[ceil32(('cd', 68).length) + 160 len ceil32(0, Mask(224, 0, ('cd', 68).length + 224))]
                                if not ('cd', 68).length + 224 % 32:
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args mem[('cd', 68).length + ceil32(('cd', 68).length) + 388 len 0, Mask(224, 0, ('cd', 68).length + 224) + 160]
                                else:
                                    mem[floor32(0, Mask(224, 0, ('cd', 68).length + 224)) + ('cd', 68).length + ceil32(('cd', 68).length) + 548] = mem[floor32(0, Mask(224, 0, ('cd', 68).length + 224)) + ('cd', 68).length + ceil32(('cd', 68).length) + -(('cd', 68).length + 224 % 32) + 580 len ('cd', 68).length + 224 % 32]
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args mem[('cd', 68).length + ceil32(('cd', 68).length) + 388 len floor32(0, Mask(224, 0, ('cd', 68).length + 224)) + 192]
                            else:
                                mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 384] = mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + -(('cd', 68).length % 32) + 416 len ('cd', 68).length % 32]
                                mem[ceil32(('cd', 68).length) + 128] = floor32(('cd', 68).length) + 256
                                mem[64] = floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 416
                                mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 416] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 420] = cd[36]
                                mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 452] = 0
                                mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 484] = this.address
                                mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 516] = 128
                                mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 548] = 0, Mask(224, 0, floor32(('cd', 68).length) + 256)
                                mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 580 len ceil32(0, Mask(224, 0, floor32(('cd', 68).length) + 256))] = mem[ceil32(('cd', 68).length) + 160 len ceil32(0, Mask(224, 0, floor32(('cd', 68).length) + 256))]
                                if not floor32(('cd', 68).length) + 256 % 32:
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 420 len 0, Mask(224, 0, floor32(('cd', 68).length) + 256) + 160]
                                else:
                                    mem[floor32(0, Mask(224, 0, floor32(('cd', 68).length) + 256)) + floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 580] = mem[floor32(0, Mask(224, 0, floor32(('cd', 68).length) + 256)) + floor32(('cd', 68).length) + ceil32(('cd', 68).length) + -(floor32(('cd', 68).length) + 256 % 32) + 612 len floor32(('cd', 68).length) + 256 % 32]
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 420 len floor32(0, Mask(224, 0, floor32(('cd', 68).length) + 256)) + 192]
                    else:
                        if address(('cd', 68)[1]) == ext_call.return_data[12 len 20]:
                            if not ('cd', 68).length % 32:
                                mem[ceil32(('cd', 68).length) + 128] = ('cd', 68).length + 224
                                mem[64] = ('cd', 68).length + ceil32(('cd', 68).length) + 384
                                mem[('cd', 68).length + ceil32(('cd', 68).length) + 384] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[('cd', 68).length + ceil32(('cd', 68).length) + 388] = 0
                                mem[('cd', 68).length + ceil32(('cd', 68).length) + 420] = cd[36]
                                mem[('cd', 68).length + ceil32(('cd', 68).length) + 452] = this.address
                                mem[('cd', 68).length + ceil32(('cd', 68).length) + 484] = 128
                                mem[('cd', 68).length + ceil32(('cd', 68).length) + 516] = 0, Mask(224, 0, ('cd', 68).length + 224)
                                mem[('cd', 68).length + ceil32(('cd', 68).length) + 548 len ceil32(0, Mask(224, 0, ('cd', 68).length + 224))] = mem[ceil32(('cd', 68).length) + 160 len ceil32(0, Mask(224, 0, ('cd', 68).length + 224))]
                                if not ('cd', 68).length + 224 % 32:
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args mem[('cd', 68).length + ceil32(('cd', 68).length) + 388 len 0, Mask(224, 0, ('cd', 68).length + 224) + 160]
                                else:
                                    mem[floor32(0, Mask(224, 0, ('cd', 68).length + 224)) + ('cd', 68).length + ceil32(('cd', 68).length) + 548] = mem[floor32(0, Mask(224, 0, ('cd', 68).length + 224)) + ('cd', 68).length + ceil32(('cd', 68).length) + -(('cd', 68).length + 224 % 32) + 580 len ('cd', 68).length + 224 % 32]
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args mem[('cd', 68).length + ceil32(('cd', 68).length) + 388 len floor32(0, Mask(224, 0, ('cd', 68).length + 224)) + 192]
                            else:
                                mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 384] = mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + -(('cd', 68).length % 32) + 416 len ('cd', 68).length % 32]
                                mem[ceil32(('cd', 68).length) + 128] = floor32(('cd', 68).length) + 256
                                mem[64] = floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 416
                                mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 416] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 420] = 0
                                mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 452] = cd[36]
                                mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 484] = this.address
                                mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 516] = 128
                                mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 548] = 0, Mask(224, 0, floor32(('cd', 68).length) + 256)
                                mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 580 len ceil32(0, Mask(224, 0, floor32(('cd', 68).length) + 256))] = mem[ceil32(('cd', 68).length) + 160 len ceil32(0, Mask(224, 0, floor32(('cd', 68).length) + 256))]
                                if not floor32(('cd', 68).length) + 256 % 32:
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 420 len 0, Mask(224, 0, floor32(('cd', 68).length) + 256) + 160]
                                else:
                                    mem[floor32(0, Mask(224, 0, floor32(('cd', 68).length) + 256)) + floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 580] = mem[floor32(0, Mask(224, 0, floor32(('cd', 68).length) + 256)) + floor32(('cd', 68).length) + ceil32(('cd', 68).length) + -(floor32(('cd', 68).length) + 256 % 32) + 612 len floor32(('cd', 68).length) + 256 % 32]
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 420 len floor32(0, Mask(224, 0, floor32(('cd', 68).length) + 256)) + 192]
                        else:
                            if not ('cd', 68).length % 32:
                                mem[ceil32(('cd', 68).length) + 128] = ('cd', 68).length + 224
                                mem[64] = ('cd', 68).length + ceil32(('cd', 68).length) + 384
                                mem[('cd', 68).length + ceil32(('cd', 68).length) + 384] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[('cd', 68).length + ceil32(('cd', 68).length) + 388] = 0
                                mem[('cd', 68).length + ceil32(('cd', 68).length) + 420] = 0
                                mem[('cd', 68).length + ceil32(('cd', 68).length) + 452] = this.address
                                mem[('cd', 68).length + ceil32(('cd', 68).length) + 484] = 128
                                mem[('cd', 68).length + ceil32(('cd', 68).length) + 516] = 0, Mask(224, 0, ('cd', 68).length + 224)
                                mem[('cd', 68).length + ceil32(('cd', 68).length) + 548 len ceil32(0, Mask(224, 0, ('cd', 68).length + 224))] = mem[ceil32(('cd', 68).length) + 160 len ceil32(0, Mask(224, 0, ('cd', 68).length + 224))]
                                if not ('cd', 68).length + 224 % 32:
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args mem[('cd', 68).length + ceil32(('cd', 68).length) + 388 len 0, Mask(224, 0, ('cd', 68).length + 224) + 160]
                                else:
                                    mem[floor32(0, Mask(224, 0, ('cd', 68).length + 224)) + ('cd', 68).length + ceil32(('cd', 68).length) + 548] = mem[floor32(0, Mask(224, 0, ('cd', 68).length + 224)) + ('cd', 68).length + ceil32(('cd', 68).length) + -(('cd', 68).length + 224 % 32) + 580 len ('cd', 68).length + 224 % 32]
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args mem[('cd', 68).length + ceil32(('cd', 68).length) + 388 len floor32(0, Mask(224, 0, ('cd', 68).length + 224)) + 192]
                            else:
                                mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 384] = mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + -(('cd', 68).length % 32) + 416 len ('cd', 68).length % 32]
                                mem[ceil32(('cd', 68).length) + 128] = floor32(('cd', 68).length) + 256
                                mem[64] = floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 416
                                mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 416] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 420] = 0
                                mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 452] = 0
                                mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 484] = this.address
                                mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 516] = 128
                                mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 548] = 0, Mask(224, 0, floor32(('cd', 68).length) + 256)
                                mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 580 len ceil32(0, Mask(224, 0, floor32(('cd', 68).length) + 256))] = mem[ceil32(('cd', 68).length) + 160 len ceil32(0, Mask(224, 0, floor32(('cd', 68).length) + 256))]
                                if not floor32(('cd', 68).length) + 256 % 32:
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 420 len 0, Mask(224, 0, floor32(('cd', 68).length) + 256) + 160]
                                else:
                                    mem[floor32(0, Mask(224, 0, floor32(('cd', 68).length) + 256)) + floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 580] = mem[floor32(0, Mask(224, 0, floor32(('cd', 68).length) + 256)) + floor32(('cd', 68).length) + ceil32(('cd', 68).length) + -(floor32(('cd', 68).length) + 256 % 32) + 612 len floor32(('cd', 68).length) + 256 % 32]
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 420 len floor32(0, Mask(224, 0, floor32(('cd', 68).length) + 256)) + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call stor1 with:
                       value eth.balance(this.address) wei
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with 0, 'Failed'
                else:
                    if not ext_call.return_data[12 len 20]:
                        revert with 0, 
                                    32,
                                    34,
                                    0xfe526571756573746564205f746f6b656e206973206e6f7420617661696c61626c65,
                                    mem[ceil32(('cd', 68).length) + 230 len 30]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).token1() with:
                            gas gas_remaining wei
                    mem[ceil32(('cd', 68).length) + 128] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[ceil32(('cd', 68).length) + 160] = 0
                    mem[ceil32(('cd', 68).length) + 192] = 1
                    mem[ceil32(('cd', 68).length) + 224] = address(('cd', 68)[1])
                    mem[ceil32(('cd', 68).length) + 256] = stor3
                    mem[ceil32(('cd', 68).length) + 288] = cd[36]
                    mem[ceil32(('cd', 68).length) + 320] = 192
                    mem[ceil32(('cd', 68).length) + 352] = ('cd', 68).length
                    mem[ceil32(('cd', 68).length) + 384 len ceil32(('cd', 68).length)] = call.data[cd[68] + 36 len ('cd', 68).length], mem[('cd', 68).length + 128 len ceil32(('cd', 68).length) - ('cd', 68).length]
                    if address(('cd', 68)[1]) == address(ext_call.return_data[0]):
                        if address(('cd', 68)[1]) == ext_call.return_data[12 len 20]:
                            if not ('cd', 68).length % 32:
                                mem[ceil32(('cd', 68).length) + 128] = ('cd', 68).length + 224
                                mem[64] = ('cd', 68).length + ceil32(('cd', 68).length) + 384
                                mem[('cd', 68).length + ceil32(('cd', 68).length) + 384] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[('cd', 68).length + ceil32(('cd', 68).length) + 388] = cd[36]
                                mem[('cd', 68).length + ceil32(('cd', 68).length) + 420] = cd[36]
                                mem[('cd', 68).length + ceil32(('cd', 68).length) + 452] = this.address
                                mem[('cd', 68).length + ceil32(('cd', 68).length) + 484] = 128
                                mem[('cd', 68).length + ceil32(('cd', 68).length) + 516] = 0, Mask(224, 0, ('cd', 68).length + 224)
                                mem[('cd', 68).length + ceil32(('cd', 68).length) + 548 len ceil32(0, Mask(224, 0, ('cd', 68).length + 224))] = mem[ceil32(('cd', 68).length) + 160 len ceil32(0, Mask(224, 0, ('cd', 68).length + 224))]
                                if not ('cd', 68).length + 224 % 32:
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args mem[('cd', 68).length + ceil32(('cd', 68).length) + 388 len 0, Mask(224, 0, ('cd', 68).length + 224) + 160]
                                else:
                                    mem[floor32(0, Mask(224, 0, ('cd', 68).length + 224)) + ('cd', 68).length + ceil32(('cd', 68).length) + 548] = mem[floor32(0, Mask(224, 0, ('cd', 68).length + 224)) + ('cd', 68).length + ceil32(('cd', 68).length) + -(('cd', 68).length + 224 % 32) + 580 len ('cd', 68).length + 224 % 32]
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args mem[('cd', 68).length + ceil32(('cd', 68).length) + 388 len floor32(0, Mask(224, 0, ('cd', 68).length + 224)) + 192]
                            else:
                                mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 384] = mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + -(('cd', 68).length % 32) + 416 len ('cd', 68).length % 32]
                                mem[ceil32(('cd', 68).length) + 128] = floor32(('cd', 68).length) + 256
                                mem[64] = floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 416
                                mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 416] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 420] = cd[36]
                                mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 452] = cd[36]
                                mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 484] = this.address
                                mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 516] = 128
                                mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 548] = 0, Mask(224, 0, floor32(('cd', 68).length) + 256)
                                mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 580 len ceil32(0, Mask(224, 0, floor32(('cd', 68).length) + 256))] = mem[ceil32(('cd', 68).length) + 160 len ceil32(0, Mask(224, 0, floor32(('cd', 68).length) + 256))]
                                if not floor32(('cd', 68).length) + 256 % 32:
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 420 len 0, Mask(224, 0, floor32(('cd', 68).length) + 256) + 160]
                                else:
                                    mem[floor32(0, Mask(224, 0, floor32(('cd', 68).length) + 256)) + floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 580] = mem[floor32(0, Mask(224, 0, floor32(('cd', 68).length) + 256)) + floor32(('cd', 68).length) + ceil32(('cd', 68).length) + -(floor32(('cd', 68).length) + 256 % 32) + 612 len floor32(('cd', 68).length) + 256 % 32]
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 420 len floor32(0, Mask(224, 0, floor32(('cd', 68).length) + 256)) + 192]
                        else:
                            if not ('cd', 68).length % 32:
                                mem[ceil32(('cd', 68).length) + 128] = ('cd', 68).length + 224
                                mem[64] = ('cd', 68).length + ceil32(('cd', 68).length) + 384
                                mem[('cd', 68).length + ceil32(('cd', 68).length) + 384] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[('cd', 68).length + ceil32(('cd', 68).length) + 388] = cd[36]
                                mem[('cd', 68).length + ceil32(('cd', 68).length) + 420] = 0
                                mem[('cd', 68).length + ceil32(('cd', 68).length) + 452] = this.address
                                mem[('cd', 68).length + ceil32(('cd', 68).length) + 484] = 128
                                mem[('cd', 68).length + ceil32(('cd', 68).length) + 516] = 0, Mask(224, 0, ('cd', 68).length + 224)
                                mem[('cd', 68).length + ceil32(('cd', 68).length) + 548 len ceil32(0, Mask(224, 0, ('cd', 68).length + 224))] = mem[ceil32(('cd', 68).length) + 160 len ceil32(0, Mask(224, 0, ('cd', 68).length + 224))]
                                if not ('cd', 68).length + 224 % 32:
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args mem[('cd', 68).length + ceil32(('cd', 68).length) + 388 len 0, Mask(224, 0, ('cd', 68).length + 224) + 160]
                                else:
                                    mem[floor32(0, Mask(224, 0, ('cd', 68).length + 224)) + ('cd', 68).length + ceil32(('cd', 68).length) + 548] = mem[floor32(0, Mask(224, 0, ('cd', 68).length + 224)) + ('cd', 68).length + ceil32(('cd', 68).length) + -(('cd', 68).length + 224 % 32) + 580 len ('cd', 68).length + 224 % 32]
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args mem[('cd', 68).length + ceil32(('cd', 68).length) + 388 len floor32(0, Mask(224, 0, ('cd', 68).length + 224)) + 192]
                            else:
                                mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 384] = mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + -(('cd', 68).length % 32) + 416 len ('cd', 68).length % 32]
                                mem[ceil32(('cd', 68).length) + 128] = floor32(('cd', 68).length) + 256
                                mem[64] = floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 416
                                mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 416] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 420] = cd[36]
                                mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 452] = 0
                                mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 484] = this.address
                                mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 516] = 128
                                mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 548] = 0, Mask(224, 0, floor32(('cd', 68).length) + 256)
                                mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 580 len ceil32(0, Mask(224, 0, floor32(('cd', 68).length) + 256))] = mem[ceil32(('cd', 68).length) + 160 len ceil32(0, Mask(224, 0, floor32(('cd', 68).length) + 256))]
                                if not floor32(('cd', 68).length) + 256 % 32:
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 420 len 0, Mask(224, 0, floor32(('cd', 68).length) + 256) + 160]
                                else:
                                    mem[floor32(0, Mask(224, 0, floor32(('cd', 68).length) + 256)) + floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 580] = mem[floor32(0, Mask(224, 0, floor32(('cd', 68).length) + 256)) + floor32(('cd', 68).length) + ceil32(('cd', 68).length) + -(floor32(('cd', 68).length) + 256 % 32) + 612 len floor32(('cd', 68).length) + 256 % 32]
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 420 len floor32(0, Mask(224, 0, floor32(('cd', 68).length) + 256)) + 192]
                    else:
                        if address(('cd', 68)[1]) == ext_call.return_data[12 len 20]:
                            if not ('cd', 68).length % 32:
                                mem[ceil32(('cd', 68).length) + 128] = ('cd', 68).length + 224
                                mem[64] = ('cd', 68).length + ceil32(('cd', 68).length) + 384
                                mem[('cd', 68).length + ceil32(('cd', 68).length) + 384] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[('cd', 68).length + ceil32(('cd', 68).length) + 388] = 0
                                mem[('cd', 68).length + ceil32(('cd', 68).length) + 420] = cd[36]
                                mem[('cd', 68).length + ceil32(('cd', 68).length) + 452] = this.address
                                mem[('cd', 68).length + ceil32(('cd', 68).length) + 484] = 128
                                mem[('cd', 68).length + ceil32(('cd', 68).length) + 516] = 0, Mask(224, 0, ('cd', 68).length + 224)
                                mem[('cd', 68).length + ceil32(('cd', 68).length) + 548 len ceil32(0, Mask(224, 0, ('cd', 68).length + 224))] = mem[ceil32(('cd', 68).length) + 160 len ceil32(0, Mask(224, 0, ('cd', 68).length + 224))]
                                if not ('cd', 68).length + 224 % 32:
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args mem[('cd', 68).length + ceil32(('cd', 68).length) + 388 len 0, Mask(224, 0, ('cd', 68).length + 224) + 160]
                                else:
                                    mem[floor32(0, Mask(224, 0, ('cd', 68).length + 224)) + ('cd', 68).length + ceil32(('cd', 68).length) + 548] = mem[floor32(0, Mask(224, 0, ('cd', 68).length + 224)) + ('cd', 68).length + ceil32(('cd', 68).length) + -(('cd', 68).length + 224 % 32) + 580 len ('cd', 68).length + 224 % 32]
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args mem[('cd', 68).length + ceil32(('cd', 68).length) + 388 len floor32(0, Mask(224, 0, ('cd', 68).length + 224)) + 192]
                            else:
                                mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 384] = mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + -(('cd', 68).length % 32) + 416 len ('cd', 68).length % 32]
                                mem[ceil32(('cd', 68).length) + 128] = floor32(('cd', 68).length) + 256
                                mem[64] = floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 416
                                mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 416] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 420] = 0
                                mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 452] = cd[36]
                                mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 484] = this.address
                                mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 516] = 128
                                mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 548] = 0, Mask(224, 0, floor32(('cd', 68).length) + 256)
                                mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 580 len ceil32(0, Mask(224, 0, floor32(('cd', 68).length) + 256))] = mem[ceil32(('cd', 68).length) + 160 len ceil32(0, Mask(224, 0, floor32(('cd', 68).length) + 256))]
                                if not floor32(('cd', 68).length) + 256 % 32:
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 420 len 0, Mask(224, 0, floor32(('cd', 68).length) + 256) + 160]
                                else:
                                    mem[floor32(0, Mask(224, 0, floor32(('cd', 68).length) + 256)) + floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 580] = mem[floor32(0, Mask(224, 0, floor32(('cd', 68).length) + 256)) + floor32(('cd', 68).length) + ceil32(('cd', 68).length) + -(floor32(('cd', 68).length) + 256 % 32) + 612 len floor32(('cd', 68).length) + 256 % 32]
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 420 len floor32(0, Mask(224, 0, floor32(('cd', 68).length) + 256)) + 192]
                        else:
                            if not ('cd', 68).length % 32:
                                mem[ceil32(('cd', 68).length) + 128] = ('cd', 68).length + 224
                                mem[64] = ('cd', 68).length + ceil32(('cd', 68).length) + 384
                                mem[('cd', 68).length + ceil32(('cd', 68).length) + 384] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[('cd', 68).length + ceil32(('cd', 68).length) + 388] = 0
                                mem[('cd', 68).length + ceil32(('cd', 68).length) + 420] = 0
                                mem[('cd', 68).length + ceil32(('cd', 68).length) + 452] = this.address
                                mem[('cd', 68).length + ceil32(('cd', 68).length) + 484] = 128
                                mem[('cd', 68).length + ceil32(('cd', 68).length) + 516] = 0, Mask(224, 0, ('cd', 68).length + 224)
                                mem[('cd', 68).length + ceil32(('cd', 68).length) + 548 len ceil32(0, Mask(224, 0, ('cd', 68).length + 224))] = mem[ceil32(('cd', 68).length) + 160 len ceil32(0, Mask(224, 0, ('cd', 68).length + 224))]
                                if not ('cd', 68).length + 224 % 32:
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args mem[('cd', 68).length + ceil32(('cd', 68).length) + 388 len 0, Mask(224, 0, ('cd', 68).length + 224) + 160]
                                else:
                                    mem[floor32(0, Mask(224, 0, ('cd', 68).length + 224)) + ('cd', 68).length + ceil32(('cd', 68).length) + 548] = mem[floor32(0, Mask(224, 0, ('cd', 68).length + 224)) + ('cd', 68).length + ceil32(('cd', 68).length) + -(('cd', 68).length + 224 % 32) + 580 len ('cd', 68).length + 224 % 32]
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args mem[('cd', 68).length + ceil32(('cd', 68).length) + 388 len floor32(0, Mask(224, 0, ('cd', 68).length + 224)) + 192]
                            else:
                                mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 384] = mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + -(('cd', 68).length % 32) + 416 len ('cd', 68).length % 32]
                                mem[ceil32(('cd', 68).length) + 128] = floor32(('cd', 68).length) + 256
                                mem[64] = floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 416
                                mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 416] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 420] = 0
                                mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 452] = 0
                                mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 484] = this.address
                                mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 516] = 128
                                mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 548] = 0, Mask(224, 0, floor32(('cd', 68).length) + 256)
                                mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 580 len ceil32(0, Mask(224, 0, floor32(('cd', 68).length) + 256))] = mem[ceil32(('cd', 68).length) + 160 len ceil32(0, Mask(224, 0, floor32(('cd', 68).length) + 256))]
                                if not floor32(('cd', 68).length) + 256 % 32:
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 420 len 0, Mask(224, 0, floor32(('cd', 68).length) + 256) + 160]
                                else:
                                    mem[floor32(0, Mask(224, 0, floor32(('cd', 68).length) + 256)) + floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 580] = mem[floor32(0, Mask(224, 0, floor32(('cd', 68).length) + 256)) + floor32(('cd', 68).length) + ceil32(('cd', 68).length) + -(floor32(('cd', 68).length) + 256 % 32) + 612 len floor32(('cd', 68).length) + 256 % 32]
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 420 len floor32(0, Mask(224, 0, floor32(('cd', 68).length) + 256)) + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(('cd', 68)[2]))
                    staticcall address(('cd', 68)[2]).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(('cd', 68)[2]))
                    call address(('cd', 68)[2]).0xa9059cbb with:
                         gas gas_remaining wei
                        args stor1, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
        else:
            if ('cd', 68)[4]:
                staticcall 0xbcfccbde45ce874adcb698cc183debcf17952812.0xe6a43905 with:
                        gas gas_remaining wei
                       args stor3, 0xe9e7cea3dedca5984780bafc599bd69add087d56
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[12 len 20]:
                    revert with 0, 
                                32,
                                34,
                                0xfe526571756573746564205f746f6b656e206973206e6f7420617661696c61626c65,
                                mem[ceil32(('cd', 68).length) + 230 len 30]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).token1() with:
                        gas gas_remaining wei
                mem[ceil32(('cd', 68).length) + 128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[ceil32(('cd', 68).length) + 160] = 0
                mem[ceil32(('cd', 68).length) + 192] = 1
                mem[ceil32(('cd', 68).length) + 224] = stor3
                mem[ceil32(('cd', 68).length) + 256] = 0xe9e7cea3dedca5984780bafc599bd69add087d56
                mem[ceil32(('cd', 68).length) + 288] = cd[36]
                mem[ceil32(('cd', 68).length) + 320] = 192
                mem[ceil32(('cd', 68).length) + 352] = ('cd', 68).length
                mem[ceil32(('cd', 68).length) + 384 len ceil32(('cd', 68).length)] = call.data[cd[68] + 36 len ('cd', 68).length], mem[('cd', 68).length + 128 len ceil32(('cd', 68).length) - ('cd', 68).length]
                if stor3 == address(ext_call.return_data[0]):
                    if stor3 == ext_call.return_data[12 len 20]:
                        if not ('cd', 68).length % 32:
                            mem[ceil32(('cd', 68).length) + 128] = ('cd', 68).length + 224
                            mem[64] = ('cd', 68).length + ceil32(('cd', 68).length) + 384
                            mem[('cd', 68).length + ceil32(('cd', 68).length) + 384] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[('cd', 68).length + ceil32(('cd', 68).length) + 388] = cd[36]
                            mem[('cd', 68).length + ceil32(('cd', 68).length) + 420] = cd[36]
                            mem[('cd', 68).length + ceil32(('cd', 68).length) + 452] = this.address
                            mem[('cd', 68).length + ceil32(('cd', 68).length) + 484] = 128
                            mem[('cd', 68).length + ceil32(('cd', 68).length) + 516] = 0, Mask(224, 0, ('cd', 68).length + 224)
                            mem[('cd', 68).length + ceil32(('cd', 68).length) + 548 len ceil32(0, Mask(224, 0, ('cd', 68).length + 224))] = mem[ceil32(('cd', 68).length) + 160 len ceil32(0, Mask(224, 0, ('cd', 68).length + 224))]
                            if not ('cd', 68).length + 224 % 32:
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args mem[('cd', 68).length + ceil32(('cd', 68).length) + 388 len 0, Mask(224, 0, ('cd', 68).length + 224) + 160]
                            else:
                                mem[floor32(0, Mask(224, 0, ('cd', 68).length + 224)) + ('cd', 68).length + ceil32(('cd', 68).length) + 548] = mem[floor32(0, Mask(224, 0, ('cd', 68).length + 224)) + ('cd', 68).length + ceil32(('cd', 68).length) + -(('cd', 68).length + 224 % 32) + 580 len ('cd', 68).length + 224 % 32]
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args mem[('cd', 68).length + ceil32(('cd', 68).length) + 388 len floor32(0, Mask(224, 0, ('cd', 68).length + 224)) + 192]
                        else:
                            mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 384] = mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + -(('cd', 68).length % 32) + 416 len ('cd', 68).length % 32]
                            mem[ceil32(('cd', 68).length) + 128] = floor32(('cd', 68).length) + 256
                            mem[64] = floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 416
                            mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 416] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 420] = cd[36]
                            mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 452] = cd[36]
                            mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 484] = this.address
                            mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 516] = 128
                            mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 548] = 0, Mask(224, 0, floor32(('cd', 68).length) + 256)
                            mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 580 len ceil32(0, Mask(224, 0, floor32(('cd', 68).length) + 256))] = mem[ceil32(('cd', 68).length) + 160 len ceil32(0, Mask(224, 0, floor32(('cd', 68).length) + 256))]
                            if not floor32(('cd', 68).length) + 256 % 32:
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 420 len 0, Mask(224, 0, floor32(('cd', 68).length) + 256) + 160]
                            else:
                                mem[floor32(0, Mask(224, 0, floor32(('cd', 68).length) + 256)) + floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 580] = mem[floor32(0, Mask(224, 0, floor32(('cd', 68).length) + 256)) + floor32(('cd', 68).length) + ceil32(('cd', 68).length) + -(floor32(('cd', 68).length) + 256 % 32) + 612 len floor32(('cd', 68).length) + 256 % 32]
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 420 len floor32(0, Mask(224, 0, floor32(('cd', 68).length) + 256)) + 192]
                    else:
                        if not ('cd', 68).length % 32:
                            mem[ceil32(('cd', 68).length) + 128] = ('cd', 68).length + 224
                            mem[64] = ('cd', 68).length + ceil32(('cd', 68).length) + 384
                            mem[('cd', 68).length + ceil32(('cd', 68).length) + 384] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[('cd', 68).length + ceil32(('cd', 68).length) + 388] = cd[36]
                            mem[('cd', 68).length + ceil32(('cd', 68).length) + 420] = 0
                            mem[('cd', 68).length + ceil32(('cd', 68).length) + 452] = this.address
                            mem[('cd', 68).length + ceil32(('cd', 68).length) + 484] = 128
                            mem[('cd', 68).length + ceil32(('cd', 68).length) + 516] = 0, Mask(224, 0, ('cd', 68).length + 224)
                            mem[('cd', 68).length + ceil32(('cd', 68).length) + 548 len ceil32(0, Mask(224, 0, ('cd', 68).length + 224))] = mem[ceil32(('cd', 68).length) + 160 len ceil32(0, Mask(224, 0, ('cd', 68).length + 224))]
                            if not ('cd', 68).length + 224 % 32:
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args mem[('cd', 68).length + ceil32(('cd', 68).length) + 388 len 0, Mask(224, 0, ('cd', 68).length + 224) + 160]
                            else:
                                mem[floor32(0, Mask(224, 0, ('cd', 68).length + 224)) + ('cd', 68).length + ceil32(('cd', 68).length) + 548] = mem[floor32(0, Mask(224, 0, ('cd', 68).length + 224)) + ('cd', 68).length + ceil32(('cd', 68).length) + -(('cd', 68).length + 224 % 32) + 580 len ('cd', 68).length + 224 % 32]
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args mem[('cd', 68).length + ceil32(('cd', 68).length) + 388 len floor32(0, Mask(224, 0, ('cd', 68).length + 224)) + 192]
                        else:
                            mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 384] = mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + -(('cd', 68).length % 32) + 416 len ('cd', 68).length % 32]
                            mem[ceil32(('cd', 68).length) + 128] = floor32(('cd', 68).length) + 256
                            mem[64] = floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 416
                            mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 416] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 420] = cd[36]
                            mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 452] = 0
                            mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 484] = this.address
                            mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 516] = 128
                            mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 548] = 0, Mask(224, 0, floor32(('cd', 68).length) + 256)
                            mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 580 len ceil32(0, Mask(224, 0, floor32(('cd', 68).length) + 256))] = mem[ceil32(('cd', 68).length) + 160 len ceil32(0, Mask(224, 0, floor32(('cd', 68).length) + 256))]
                            if not floor32(('cd', 68).length) + 256 % 32:
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 420 len 0, Mask(224, 0, floor32(('cd', 68).length) + 256) + 160]
                            else:
                                mem[floor32(0, Mask(224, 0, floor32(('cd', 68).length) + 256)) + floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 580] = mem[floor32(0, Mask(224, 0, floor32(('cd', 68).length) + 256)) + floor32(('cd', 68).length) + ceil32(('cd', 68).length) + -(floor32(('cd', 68).length) + 256 % 32) + 612 len floor32(('cd', 68).length) + 256 % 32]
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 420 len floor32(0, Mask(224, 0, floor32(('cd', 68).length) + 256)) + 192]
                else:
                    if stor3 == ext_call.return_data[12 len 20]:
                        if not ('cd', 68).length % 32:
                            mem[ceil32(('cd', 68).length) + 128] = ('cd', 68).length + 224
                            mem[64] = ('cd', 68).length + ceil32(('cd', 68).length) + 384
                            mem[('cd', 68).length + ceil32(('cd', 68).length) + 384] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[('cd', 68).length + ceil32(('cd', 68).length) + 388] = 0
                            mem[('cd', 68).length + ceil32(('cd', 68).length) + 420] = cd[36]
                            mem[('cd', 68).length + ceil32(('cd', 68).length) + 452] = this.address
                            mem[('cd', 68).length + ceil32(('cd', 68).length) + 484] = 128
                            mem[('cd', 68).length + ceil32(('cd', 68).length) + 516] = 0, Mask(224, 0, ('cd', 68).length + 224)
                            mem[('cd', 68).length + ceil32(('cd', 68).length) + 548 len ceil32(0, Mask(224, 0, ('cd', 68).length + 224))] = mem[ceil32(('cd', 68).length) + 160 len ceil32(0, Mask(224, 0, ('cd', 68).length + 224))]
                            if not ('cd', 68).length + 224 % 32:
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args mem[('cd', 68).length + ceil32(('cd', 68).length) + 388 len 0, Mask(224, 0, ('cd', 68).length + 224) + 160]
                            else:
                                mem[floor32(0, Mask(224, 0, ('cd', 68).length + 224)) + ('cd', 68).length + ceil32(('cd', 68).length) + 548] = mem[floor32(0, Mask(224, 0, ('cd', 68).length + 224)) + ('cd', 68).length + ceil32(('cd', 68).length) + -(('cd', 68).length + 224 % 32) + 580 len ('cd', 68).length + 224 % 32]
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args mem[('cd', 68).length + ceil32(('cd', 68).length) + 388 len floor32(0, Mask(224, 0, ('cd', 68).length + 224)) + 192]
                        else:
                            mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 384] = mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + -(('cd', 68).length % 32) + 416 len ('cd', 68).length % 32]
                            mem[ceil32(('cd', 68).length) + 128] = floor32(('cd', 68).length) + 256
                            mem[64] = floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 416
                            mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 416] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 420] = 0
                            mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 452] = cd[36]
                            mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 484] = this.address
                            mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 516] = 128
                            mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 548] = 0, Mask(224, 0, floor32(('cd', 68).length) + 256)
                            mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 580 len ceil32(0, Mask(224, 0, floor32(('cd', 68).length) + 256))] = mem[ceil32(('cd', 68).length) + 160 len ceil32(0, Mask(224, 0, floor32(('cd', 68).length) + 256))]
                            if not floor32(('cd', 68).length) + 256 % 32:
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 420 len 0, Mask(224, 0, floor32(('cd', 68).length) + 256) + 160]
                            else:
                                mem[floor32(0, Mask(224, 0, floor32(('cd', 68).length) + 256)) + floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 580] = mem[floor32(0, Mask(224, 0, floor32(('cd', 68).length) + 256)) + floor32(('cd', 68).length) + ceil32(('cd', 68).length) + -(floor32(('cd', 68).length) + 256 % 32) + 612 len floor32(('cd', 68).length) + 256 % 32]
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 420 len floor32(0, Mask(224, 0, floor32(('cd', 68).length) + 256)) + 192]
                    else:
                        if not ('cd', 68).length % 32:
                            mem[ceil32(('cd', 68).length) + 128] = ('cd', 68).length + 224
                            mem[64] = ('cd', 68).length + ceil32(('cd', 68).length) + 384
                            mem[('cd', 68).length + ceil32(('cd', 68).length) + 384] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[('cd', 68).length + ceil32(('cd', 68).length) + 388] = 0
                            mem[('cd', 68).length + ceil32(('cd', 68).length) + 420] = 0
                            mem[('cd', 68).length + ceil32(('cd', 68).length) + 452] = this.address
                            mem[('cd', 68).length + ceil32(('cd', 68).length) + 484] = 128
                            mem[('cd', 68).length + ceil32(('cd', 68).length) + 516] = 0, Mask(224, 0, ('cd', 68).length + 224)
                            mem[('cd', 68).length + ceil32(('cd', 68).length) + 548 len ceil32(0, Mask(224, 0, ('cd', 68).length + 224))] = mem[ceil32(('cd', 68).length) + 160 len ceil32(0, Mask(224, 0, ('cd', 68).length + 224))]
                            if not ('cd', 68).length + 224 % 32:
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args mem[('cd', 68).length + ceil32(('cd', 68).length) + 388 len 0, Mask(224, 0, ('cd', 68).length + 224) + 160]
                            else:
                                mem[floor32(0, Mask(224, 0, ('cd', 68).length + 224)) + ('cd', 68).length + ceil32(('cd', 68).length) + 548] = mem[floor32(0, Mask(224, 0, ('cd', 68).length + 224)) + ('cd', 68).length + ceil32(('cd', 68).length) + -(('cd', 68).length + 224 % 32) + 580 len ('cd', 68).length + 224 % 32]
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args mem[('cd', 68).length + ceil32(('cd', 68).length) + 388 len floor32(0, Mask(224, 0, ('cd', 68).length + 224)) + 192]
                        else:
                            mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 384] = mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + -(('cd', 68).length % 32) + 416 len ('cd', 68).length % 32]
                            mem[ceil32(('cd', 68).length) + 128] = floor32(('cd', 68).length) + 256
                            mem[64] = floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 416
                            mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 416] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 420] = 0
                            mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 452] = 0
                            mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 484] = this.address
                            mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 516] = 128
                            mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 548] = 0, Mask(224, 0, floor32(('cd', 68).length) + 256)
                            mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 580 len ceil32(0, Mask(224, 0, floor32(('cd', 68).length) + 256))] = mem[ceil32(('cd', 68).length) + 160 len ceil32(0, Mask(224, 0, floor32(('cd', 68).length) + 256))]
                            if not floor32(('cd', 68).length) + 256 % 32:
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 420 len 0, Mask(224, 0, floor32(('cd', 68).length) + 256) + 160]
                            else:
                                mem[floor32(0, Mask(224, 0, floor32(('cd', 68).length) + 256)) + floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 580] = mem[floor32(0, Mask(224, 0, floor32(('cd', 68).length) + 256)) + floor32(('cd', 68).length) + ceil32(('cd', 68).length) + -(floor32(('cd', 68).length) + 256 % 32) + 612 len floor32(('cd', 68).length) + 256 % 32]
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 420 len floor32(0, Mask(224, 0, floor32(('cd', 68).length) + 256)) + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                call stor1 with:
                   value eth.balance(this.address) wei
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with 0, 'Failed'
            else:
                if ('cd', 68)[3]:
                    staticcall 0xbcfccbde45ce874adcb698cc183debcf17952812.0xe6a43905 with:
                            gas gas_remaining wei
                           args stor3, address(('cd', 68)[2])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[12 len 20]:
                        revert with 0, 'Requested pair is not available.'
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).token1() with:
                            gas gas_remaining wei
                    mem[ceil32(('cd', 68).length) + 128] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[ceil32(('cd', 68).length) + 160] = bool(cd[4])
                    mem[ceil32(('cd', 68).length) + 192] = 0
                    mem[ceil32(('cd', 68).length) + 224] = stor3
                    mem[ceil32(('cd', 68).length) + 256] = address(('cd', 68)[2])
                    mem[ceil32(('cd', 68).length) + 288] = cd[36]
                    mem[ceil32(('cd', 68).length) + 320] = 192
                    mem[ceil32(('cd', 68).length) + 352] = ('cd', 68).length
                    mem[ceil32(('cd', 68).length) + 384 len ceil32(('cd', 68).length)] = call.data[cd[68] + 36 len ('cd', 68).length], mem[('cd', 68).length + 128 len ceil32(('cd', 68).length) - ('cd', 68).length]
                    if stor3 == address(ext_call.return_data[0]):
                        if stor3 == ext_call.return_data[12 len 20]:
                            if not ('cd', 68).length % 32:
                                mem[ceil32(('cd', 68).length) + 128] = ('cd', 68).length + 224
                                mem[64] = ('cd', 68).length + ceil32(('cd', 68).length) + 384
                                mem[('cd', 68).length + ceil32(('cd', 68).length) + 384] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[('cd', 68).length + ceil32(('cd', 68).length) + 388] = cd[36]
                                mem[('cd', 68).length + ceil32(('cd', 68).length) + 420] = cd[36]
                                mem[('cd', 68).length + ceil32(('cd', 68).length) + 452] = this.address
                                mem[('cd', 68).length + ceil32(('cd', 68).length) + 484] = 128
                                mem[('cd', 68).length + ceil32(('cd', 68).length) + 516] = 0, Mask(224, 0, ('cd', 68).length + 224)
                                mem[('cd', 68).length + ceil32(('cd', 68).length) + 548 len ceil32(0, Mask(224, 0, ('cd', 68).length + 224))] = mem[ceil32(('cd', 68).length) + 160 len ceil32(0, Mask(224, 0, ('cd', 68).length + 224))]
                                if not ('cd', 68).length + 224 % 32:
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args mem[('cd', 68).length + ceil32(('cd', 68).length) + 388 len 0, Mask(224, 0, ('cd', 68).length + 224) + 160]
                                else:
                                    mem[floor32(0, Mask(224, 0, ('cd', 68).length + 224)) + ('cd', 68).length + ceil32(('cd', 68).length) + 548] = mem[floor32(0, Mask(224, 0, ('cd', 68).length + 224)) + ('cd', 68).length + ceil32(('cd', 68).length) + -(('cd', 68).length + 224 % 32) + 580 len ('cd', 68).length + 224 % 32]
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args mem[('cd', 68).length + ceil32(('cd', 68).length) + 388 len floor32(0, Mask(224, 0, ('cd', 68).length + 224)) + 192]
                            else:
                                mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 384] = mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + -(('cd', 68).length % 32) + 416 len ('cd', 68).length % 32]
                                mem[ceil32(('cd', 68).length) + 128] = floor32(('cd', 68).length) + 256
                                mem[64] = floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 416
                                mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 416] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 420] = cd[36]
                                mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 452] = cd[36]
                                mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 484] = this.address
                                mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 516] = 128
                                mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 548] = 0, Mask(224, 0, floor32(('cd', 68).length) + 256)
                                mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 580 len ceil32(0, Mask(224, 0, floor32(('cd', 68).length) + 256))] = mem[ceil32(('cd', 68).length) + 160 len ceil32(0, Mask(224, 0, floor32(('cd', 68).length) + 256))]
                                if not floor32(('cd', 68).length) + 256 % 32:
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 420 len 0, Mask(224, 0, floor32(('cd', 68).length) + 256) + 160]
                                else:
                                    mem[floor32(0, Mask(224, 0, floor32(('cd', 68).length) + 256)) + floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 580] = mem[floor32(0, Mask(224, 0, floor32(('cd', 68).length) + 256)) + floor32(('cd', 68).length) + ceil32(('cd', 68).length) + -(floor32(('cd', 68).length) + 256 % 32) + 612 len floor32(('cd', 68).length) + 256 % 32]
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 420 len floor32(0, Mask(224, 0, floor32(('cd', 68).length) + 256)) + 192]
                        else:
                            if not ('cd', 68).length % 32:
                                mem[ceil32(('cd', 68).length) + 128] = ('cd', 68).length + 224
                                mem[64] = ('cd', 68).length + ceil32(('cd', 68).length) + 384
                                mem[('cd', 68).length + ceil32(('cd', 68).length) + 384] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[('cd', 68).length + ceil32(('cd', 68).length) + 388] = cd[36]
                                mem[('cd', 68).length + ceil32(('cd', 68).length) + 420] = 0
                                mem[('cd', 68).length + ceil32(('cd', 68).length) + 452] = this.address
                                mem[('cd', 68).length + ceil32(('cd', 68).length) + 484] = 128
                                mem[('cd', 68).length + ceil32(('cd', 68).length) + 516] = 0, Mask(224, 0, ('cd', 68).length + 224)
                                mem[('cd', 68).length + ceil32(('cd', 68).length) + 548 len ceil32(0, Mask(224, 0, ('cd', 68).length + 224))] = mem[ceil32(('cd', 68).length) + 160 len ceil32(0, Mask(224, 0, ('cd', 68).length + 224))]
                                if not ('cd', 68).length + 224 % 32:
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args mem[('cd', 68).length + ceil32(('cd', 68).length) + 388 len 0, Mask(224, 0, ('cd', 68).length + 224) + 160]
                                else:
                                    mem[floor32(0, Mask(224, 0, ('cd', 68).length + 224)) + ('cd', 68).length + ceil32(('cd', 68).length) + 548] = mem[floor32(0, Mask(224, 0, ('cd', 68).length + 224)) + ('cd', 68).length + ceil32(('cd', 68).length) + -(('cd', 68).length + 224 % 32) + 580 len ('cd', 68).length + 224 % 32]
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args mem[('cd', 68).length + ceil32(('cd', 68).length) + 388 len floor32(0, Mask(224, 0, ('cd', 68).length + 224)) + 192]
                            else:
                                mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 384] = mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + -(('cd', 68).length % 32) + 416 len ('cd', 68).length % 32]
                                mem[ceil32(('cd', 68).length) + 128] = floor32(('cd', 68).length) + 256
                                mem[64] = floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 416
                                mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 416] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 420] = cd[36]
                                mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 452] = 0
                                mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 484] = this.address
                                mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 516] = 128
                                mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 548] = 0, Mask(224, 0, floor32(('cd', 68).length) + 256)
                                mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 580 len ceil32(0, Mask(224, 0, floor32(('cd', 68).length) + 256))] = mem[ceil32(('cd', 68).length) + 160 len ceil32(0, Mask(224, 0, floor32(('cd', 68).length) + 256))]
                                if not floor32(('cd', 68).length) + 256 % 32:
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 420 len 0, Mask(224, 0, floor32(('cd', 68).length) + 256) + 160]
                                else:
                                    mem[floor32(0, Mask(224, 0, floor32(('cd', 68).length) + 256)) + floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 580] = mem[floor32(0, Mask(224, 0, floor32(('cd', 68).length) + 256)) + floor32(('cd', 68).length) + ceil32(('cd', 68).length) + -(floor32(('cd', 68).length) + 256 % 32) + 612 len floor32(('cd', 68).length) + 256 % 32]
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 420 len floor32(0, Mask(224, 0, floor32(('cd', 68).length) + 256)) + 192]
                    else:
                        if stor3 == ext_call.return_data[12 len 20]:
                            if not ('cd', 68).length % 32:
                                mem[ceil32(('cd', 68).length) + 128] = ('cd', 68).length + 224
                                mem[64] = ('cd', 68).length + ceil32(('cd', 68).length) + 384
                                mem[('cd', 68).length + ceil32(('cd', 68).length) + 384] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[('cd', 68).length + ceil32(('cd', 68).length) + 388] = 0
                                mem[('cd', 68).length + ceil32(('cd', 68).length) + 420] = cd[36]
                                mem[('cd', 68).length + ceil32(('cd', 68).length) + 452] = this.address
                                mem[('cd', 68).length + ceil32(('cd', 68).length) + 484] = 128
                                mem[('cd', 68).length + ceil32(('cd', 68).length) + 516] = 0, Mask(224, 0, ('cd', 68).length + 224)
                                mem[('cd', 68).length + ceil32(('cd', 68).length) + 548 len ceil32(0, Mask(224, 0, ('cd', 68).length + 224))] = mem[ceil32(('cd', 68).length) + 160 len ceil32(0, Mask(224, 0, ('cd', 68).length + 224))]
                                if not ('cd', 68).length + 224 % 32:
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args mem[('cd', 68).length + ceil32(('cd', 68).length) + 388 len 0, Mask(224, 0, ('cd', 68).length + 224) + 160]
                                else:
                                    mem[floor32(0, Mask(224, 0, ('cd', 68).length + 224)) + ('cd', 68).length + ceil32(('cd', 68).length) + 548] = mem[floor32(0, Mask(224, 0, ('cd', 68).length + 224)) + ('cd', 68).length + ceil32(('cd', 68).length) + -(('cd', 68).length + 224 % 32) + 580 len ('cd', 68).length + 224 % 32]
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args mem[('cd', 68).length + ceil32(('cd', 68).length) + 388 len floor32(0, Mask(224, 0, ('cd', 68).length + 224)) + 192]
                            else:
                                mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 384] = mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + -(('cd', 68).length % 32) + 416 len ('cd', 68).length % 32]
                                mem[ceil32(('cd', 68).length) + 128] = floor32(('cd', 68).length) + 256
                                mem[64] = floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 416
                                mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 416] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 420] = 0
                                mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 452] = cd[36]
                                mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 484] = this.address
                                mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 516] = 128
                                mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 548] = 0, Mask(224, 0, floor32(('cd', 68).length) + 256)
                                mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 580 len ceil32(0, Mask(224, 0, floor32(('cd', 68).length) + 256))] = mem[ceil32(('cd', 68).length) + 160 len ceil32(0, Mask(224, 0, floor32(('cd', 68).length) + 256))]
                                if not floor32(('cd', 68).length) + 256 % 32:
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 420 len 0, Mask(224, 0, floor32(('cd', 68).length) + 256) + 160]
                                else:
                                    mem[floor32(0, Mask(224, 0, floor32(('cd', 68).length) + 256)) + floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 580] = mem[floor32(0, Mask(224, 0, floor32(('cd', 68).length) + 256)) + floor32(('cd', 68).length) + ceil32(('cd', 68).length) + -(floor32(('cd', 68).length) + 256 % 32) + 612 len floor32(('cd', 68).length) + 256 % 32]
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 420 len floor32(0, Mask(224, 0, floor32(('cd', 68).length) + 256)) + 192]
                        else:
                            if not ('cd', 68).length % 32:
                                mem[ceil32(('cd', 68).length) + 128] = ('cd', 68).length + 224
                                mem[64] = ('cd', 68).length + ceil32(('cd', 68).length) + 384
                                mem[('cd', 68).length + ceil32(('cd', 68).length) + 384] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[('cd', 68).length + ceil32(('cd', 68).length) + 388] = 0
                                mem[('cd', 68).length + ceil32(('cd', 68).length) + 420] = 0
                                mem[('cd', 68).length + ceil32(('cd', 68).length) + 452] = this.address
                                mem[('cd', 68).length + ceil32(('cd', 68).length) + 484] = 128
                                mem[('cd', 68).length + ceil32(('cd', 68).length) + 516] = 0, Mask(224, 0, ('cd', 68).length + 224)
                                mem[('cd', 68).length + ceil32(('cd', 68).length) + 548 len ceil32(0, Mask(224, 0, ('cd', 68).length + 224))] = mem[ceil32(('cd', 68).length) + 160 len ceil32(0, Mask(224, 0, ('cd', 68).length + 224))]
                                if not ('cd', 68).length + 224 % 32:
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args mem[('cd', 68).length + ceil32(('cd', 68).length) + 388 len 0, Mask(224, 0, ('cd', 68).length + 224) + 160]
                                else:
                                    mem[floor32(0, Mask(224, 0, ('cd', 68).length + 224)) + ('cd', 68).length + ceil32(('cd', 68).length) + 548] = mem[floor32(0, Mask(224, 0, ('cd', 68).length + 224)) + ('cd', 68).length + ceil32(('cd', 68).length) + -(('cd', 68).length + 224 % 32) + 580 len ('cd', 68).length + 224 % 32]
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args mem[('cd', 68).length + ceil32(('cd', 68).length) + 388 len floor32(0, Mask(224, 0, ('cd', 68).length + 224)) + 192]
                            else:
                                mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 384] = mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + -(('cd', 68).length % 32) + 416 len ('cd', 68).length % 32]
                                mem[ceil32(('cd', 68).length) + 128] = floor32(('cd', 68).length) + 256
                                mem[64] = floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 416
                                mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 416] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 420] = 0
                                mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 452] = 0
                                mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 484] = this.address
                                mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 516] = 128
                                mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 548] = 0, Mask(224, 0, floor32(('cd', 68).length) + 256)
                                mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 580 len ceil32(0, Mask(224, 0, floor32(('cd', 68).length) + 256))] = mem[ceil32(('cd', 68).length) + 160 len ceil32(0, Mask(224, 0, floor32(('cd', 68).length) + 256))]
                                if not floor32(('cd', 68).length) + 256 % 32:
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 420 len 0, Mask(224, 0, floor32(('cd', 68).length) + 256) + 160]
                                else:
                                    mem[floor32(0, Mask(224, 0, floor32(('cd', 68).length) + 256)) + floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 580] = mem[floor32(0, Mask(224, 0, floor32(('cd', 68).length) + 256)) + floor32(('cd', 68).length) + ceil32(('cd', 68).length) + -(floor32(('cd', 68).length) + 256 % 32) + 612 len floor32(('cd', 68).length) + 256 % 32]
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 420 len floor32(0, Mask(224, 0, floor32(('cd', 68).length) + 256)) + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(('cd', 68)[2]))
                    staticcall address(('cd', 68)[2]).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(('cd', 68)[2]))
                    call address(('cd', 68)[2]).0xa9059cbb with:
                         gas gas_remaining wei
                        args stor1, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                else:
                    staticcall 0xbcfccbde45ce874adcb698cc183debcf17952812.0xe6a43905 with:
                            gas gas_remaining wei
                           args address(('cd', 68)[1]), stor3
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ('cd', 68)[4]:
                        if not ext_call.return_data[12 len 20]:
                            revert with 0, 'Requested pair is not available.'
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token1() with:
                                gas gas_remaining wei
                        mem[ceil32(('cd', 68).length) + 128] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[ceil32(('cd', 68).length) + 160] = bool(cd[4])
                        mem[ceil32(('cd', 68).length) + 192] = 0
                        mem[ceil32(('cd', 68).length) + 224] = address(('cd', 68)[1])
                        mem[ceil32(('cd', 68).length) + 256] = stor3
                        mem[ceil32(('cd', 68).length) + 288] = cd[36]
                        mem[ceil32(('cd', 68).length) + 320] = 192
                        mem[ceil32(('cd', 68).length) + 352] = ('cd', 68).length
                        mem[ceil32(('cd', 68).length) + 384 len ceil32(('cd', 68).length)] = call.data[cd[68] + 36 len ('cd', 68).length], mem[('cd', 68).length + 128 len ceil32(('cd', 68).length) - ('cd', 68).length]
                        if address(('cd', 68)[1]) == address(ext_call.return_data[0]):
                            if address(('cd', 68)[1]) == ext_call.return_data[12 len 20]:
                                if not ('cd', 68).length % 32:
                                    mem[ceil32(('cd', 68).length) + 128] = ('cd', 68).length + 224
                                    mem[64] = ('cd', 68).length + ceil32(('cd', 68).length) + 384
                                    mem[('cd', 68).length + ceil32(('cd', 68).length) + 384] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[('cd', 68).length + ceil32(('cd', 68).length) + 388] = cd[36]
                                    mem[('cd', 68).length + ceil32(('cd', 68).length) + 420] = cd[36]
                                    mem[('cd', 68).length + ceil32(('cd', 68).length) + 452] = this.address
                                    mem[('cd', 68).length + ceil32(('cd', 68).length) + 484] = 128
                                    mem[('cd', 68).length + ceil32(('cd', 68).length) + 516] = 0, Mask(224, 0, ('cd', 68).length + 224)
                                    mem[('cd', 68).length + ceil32(('cd', 68).length) + 548 len ceil32(0, Mask(224, 0, ('cd', 68).length + 224))] = mem[ceil32(('cd', 68).length) + 160 len ceil32(0, Mask(224, 0, ('cd', 68).length + 224))]
                                    if not ('cd', 68).length + 224 % 32:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args mem[('cd', 68).length + ceil32(('cd', 68).length) + 388 len 0, Mask(224, 0, ('cd', 68).length + 224) + 160]
                                    else:
                                        mem[floor32(0, Mask(224, 0, ('cd', 68).length + 224)) + ('cd', 68).length + ceil32(('cd', 68).length) + 548] = mem[floor32(0, Mask(224, 0, ('cd', 68).length + 224)) + ('cd', 68).length + ceil32(('cd', 68).length) + -(('cd', 68).length + 224 % 32) + 580 len ('cd', 68).length + 224 % 32]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args mem[('cd', 68).length + ceil32(('cd', 68).length) + 388 len floor32(0, Mask(224, 0, ('cd', 68).length + 224)) + 192]
                                else:
                                    mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 384] = mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + -(('cd', 68).length % 32) + 416 len ('cd', 68).length % 32]
                                    mem[ceil32(('cd', 68).length) + 128] = floor32(('cd', 68).length) + 256
                                    mem[64] = floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 416
                                    mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 416] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 420] = cd[36]
                                    mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 452] = cd[36]
                                    mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 484] = this.address
                                    mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 516] = 128
                                    mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 548] = 0, Mask(224, 0, floor32(('cd', 68).length) + 256)
                                    mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 580 len ceil32(0, Mask(224, 0, floor32(('cd', 68).length) + 256))] = mem[ceil32(('cd', 68).length) + 160 len ceil32(0, Mask(224, 0, floor32(('cd', 68).length) + 256))]
                                    if not floor32(('cd', 68).length) + 256 % 32:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 420 len 0, Mask(224, 0, floor32(('cd', 68).length) + 256) + 160]
                                    else:
                                        mem[floor32(0, Mask(224, 0, floor32(('cd', 68).length) + 256)) + floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 580] = mem[floor32(0, Mask(224, 0, floor32(('cd', 68).length) + 256)) + floor32(('cd', 68).length) + ceil32(('cd', 68).length) + -(floor32(('cd', 68).length) + 256 % 32) + 612 len floor32(('cd', 68).length) + 256 % 32]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 420 len floor32(0, Mask(224, 0, floor32(('cd', 68).length) + 256)) + 192]
                            else:
                                if not ('cd', 68).length % 32:
                                    mem[ceil32(('cd', 68).length) + 128] = ('cd', 68).length + 224
                                    mem[64] = ('cd', 68).length + ceil32(('cd', 68).length) + 384
                                    mem[('cd', 68).length + ceil32(('cd', 68).length) + 384] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[('cd', 68).length + ceil32(('cd', 68).length) + 388] = cd[36]
                                    mem[('cd', 68).length + ceil32(('cd', 68).length) + 420] = 0
                                    mem[('cd', 68).length + ceil32(('cd', 68).length) + 452] = this.address
                                    mem[('cd', 68).length + ceil32(('cd', 68).length) + 484] = 128
                                    mem[('cd', 68).length + ceil32(('cd', 68).length) + 516] = 0, Mask(224, 0, ('cd', 68).length + 224)
                                    mem[('cd', 68).length + ceil32(('cd', 68).length) + 548 len ceil32(0, Mask(224, 0, ('cd', 68).length + 224))] = mem[ceil32(('cd', 68).length) + 160 len ceil32(0, Mask(224, 0, ('cd', 68).length + 224))]
                                    if not ('cd', 68).length + 224 % 32:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args mem[('cd', 68).length + ceil32(('cd', 68).length) + 388 len 0, Mask(224, 0, ('cd', 68).length + 224) + 160]
                                    else:
                                        mem[floor32(0, Mask(224, 0, ('cd', 68).length + 224)) + ('cd', 68).length + ceil32(('cd', 68).length) + 548] = mem[floor32(0, Mask(224, 0, ('cd', 68).length + 224)) + ('cd', 68).length + ceil32(('cd', 68).length) + -(('cd', 68).length + 224 % 32) + 580 len ('cd', 68).length + 224 % 32]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args mem[('cd', 68).length + ceil32(('cd', 68).length) + 388 len floor32(0, Mask(224, 0, ('cd', 68).length + 224)) + 192]
                                else:
                                    mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 384] = mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + -(('cd', 68).length % 32) + 416 len ('cd', 68).length % 32]
                                    mem[ceil32(('cd', 68).length) + 128] = floor32(('cd', 68).length) + 256
                                    mem[64] = floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 416
                                    mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 416] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 420] = cd[36]
                                    mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 452] = 0
                                    mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 484] = this.address
                                    mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 516] = 128
                                    mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 548] = 0, Mask(224, 0, floor32(('cd', 68).length) + 256)
                                    mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 580 len ceil32(0, Mask(224, 0, floor32(('cd', 68).length) + 256))] = mem[ceil32(('cd', 68).length) + 160 len ceil32(0, Mask(224, 0, floor32(('cd', 68).length) + 256))]
                                    if not floor32(('cd', 68).length) + 256 % 32:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 420 len 0, Mask(224, 0, floor32(('cd', 68).length) + 256) + 160]
                                    else:
                                        mem[floor32(0, Mask(224, 0, floor32(('cd', 68).length) + 256)) + floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 580] = mem[floor32(0, Mask(224, 0, floor32(('cd', 68).length) + 256)) + floor32(('cd', 68).length) + ceil32(('cd', 68).length) + -(floor32(('cd', 68).length) + 256 % 32) + 612 len floor32(('cd', 68).length) + 256 % 32]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 420 len floor32(0, Mask(224, 0, floor32(('cd', 68).length) + 256)) + 192]
                        else:
                            if address(('cd', 68)[1]) == ext_call.return_data[12 len 20]:
                                if not ('cd', 68).length % 32:
                                    mem[ceil32(('cd', 68).length) + 128] = ('cd', 68).length + 224
                                    mem[64] = ('cd', 68).length + ceil32(('cd', 68).length) + 384
                                    mem[('cd', 68).length + ceil32(('cd', 68).length) + 384] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[('cd', 68).length + ceil32(('cd', 68).length) + 388] = 0
                                    mem[('cd', 68).length + ceil32(('cd', 68).length) + 420] = cd[36]
                                    mem[('cd', 68).length + ceil32(('cd', 68).length) + 452] = this.address
                                    mem[('cd', 68).length + ceil32(('cd', 68).length) + 484] = 128
                                    mem[('cd', 68).length + ceil32(('cd', 68).length) + 516] = 0, Mask(224, 0, ('cd', 68).length + 224)
                                    mem[('cd', 68).length + ceil32(('cd', 68).length) + 548 len ceil32(0, Mask(224, 0, ('cd', 68).length + 224))] = mem[ceil32(('cd', 68).length) + 160 len ceil32(0, Mask(224, 0, ('cd', 68).length + 224))]
                                    if not ('cd', 68).length + 224 % 32:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args mem[('cd', 68).length + ceil32(('cd', 68).length) + 388 len 0, Mask(224, 0, ('cd', 68).length + 224) + 160]
                                    else:
                                        mem[floor32(0, Mask(224, 0, ('cd', 68).length + 224)) + ('cd', 68).length + ceil32(('cd', 68).length) + 548] = mem[floor32(0, Mask(224, 0, ('cd', 68).length + 224)) + ('cd', 68).length + ceil32(('cd', 68).length) + -(('cd', 68).length + 224 % 32) + 580 len ('cd', 68).length + 224 % 32]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args mem[('cd', 68).length + ceil32(('cd', 68).length) + 388 len floor32(0, Mask(224, 0, ('cd', 68).length + 224)) + 192]
                                else:
                                    mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 384] = mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + -(('cd', 68).length % 32) + 416 len ('cd', 68).length % 32]
                                    mem[ceil32(('cd', 68).length) + 128] = floor32(('cd', 68).length) + 256
                                    mem[64] = floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 416
                                    mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 416] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 420] = 0
                                    mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 452] = cd[36]
                                    mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 484] = this.address
                                    mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 516] = 128
                                    mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 548] = 0, Mask(224, 0, floor32(('cd', 68).length) + 256)
                                    mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 580 len ceil32(0, Mask(224, 0, floor32(('cd', 68).length) + 256))] = mem[ceil32(('cd', 68).length) + 160 len ceil32(0, Mask(224, 0, floor32(('cd', 68).length) + 256))]
                                    if not floor32(('cd', 68).length) + 256 % 32:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 420 len 0, Mask(224, 0, floor32(('cd', 68).length) + 256) + 160]
                                    else:
                                        mem[floor32(0, Mask(224, 0, floor32(('cd', 68).length) + 256)) + floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 580] = mem[floor32(0, Mask(224, 0, floor32(('cd', 68).length) + 256)) + floor32(('cd', 68).length) + ceil32(('cd', 68).length) + -(floor32(('cd', 68).length) + 256 % 32) + 612 len floor32(('cd', 68).length) + 256 % 32]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 420 len floor32(0, Mask(224, 0, floor32(('cd', 68).length) + 256)) + 192]
                            else:
                                if not ('cd', 68).length % 32:
                                    mem[ceil32(('cd', 68).length) + 128] = ('cd', 68).length + 224
                                    mem[64] = ('cd', 68).length + ceil32(('cd', 68).length) + 384
                                    mem[('cd', 68).length + ceil32(('cd', 68).length) + 384] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[('cd', 68).length + ceil32(('cd', 68).length) + 388] = 0
                                    mem[('cd', 68).length + ceil32(('cd', 68).length) + 420] = 0
                                    mem[('cd', 68).length + ceil32(('cd', 68).length) + 452] = this.address
                                    mem[('cd', 68).length + ceil32(('cd', 68).length) + 484] = 128
                                    mem[('cd', 68).length + ceil32(('cd', 68).length) + 516] = 0, Mask(224, 0, ('cd', 68).length + 224)
                                    mem[('cd', 68).length + ceil32(('cd', 68).length) + 548 len ceil32(0, Mask(224, 0, ('cd', 68).length + 224))] = mem[ceil32(('cd', 68).length) + 160 len ceil32(0, Mask(224, 0, ('cd', 68).length + 224))]
                                    if not ('cd', 68).length + 224 % 32:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args mem[('cd', 68).length + ceil32(('cd', 68).length) + 388 len 0, Mask(224, 0, ('cd', 68).length + 224) + 160]
                                    else:
                                        mem[floor32(0, Mask(224, 0, ('cd', 68).length + 224)) + ('cd', 68).length + ceil32(('cd', 68).length) + 548] = mem[floor32(0, Mask(224, 0, ('cd', 68).length + 224)) + ('cd', 68).length + ceil32(('cd', 68).length) + -(('cd', 68).length + 224 % 32) + 580 len ('cd', 68).length + 224 % 32]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args mem[('cd', 68).length + ceil32(('cd', 68).length) + 388 len floor32(0, Mask(224, 0, ('cd', 68).length + 224)) + 192]
                                else:
                                    mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 384] = mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + -(('cd', 68).length % 32) + 416 len ('cd', 68).length % 32]
                                    mem[ceil32(('cd', 68).length) + 128] = floor32(('cd', 68).length) + 256
                                    mem[64] = floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 416
                                    mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 416] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 420] = 0
                                    mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 452] = 0
                                    mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 484] = this.address
                                    mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 516] = 128
                                    mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 548] = 0, Mask(224, 0, floor32(('cd', 68).length) + 256)
                                    mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 580 len ceil32(0, Mask(224, 0, floor32(('cd', 68).length) + 256))] = mem[ceil32(('cd', 68).length) + 160 len ceil32(0, Mask(224, 0, floor32(('cd', 68).length) + 256))]
                                    if not floor32(('cd', 68).length) + 256 % 32:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 420 len 0, Mask(224, 0, floor32(('cd', 68).length) + 256) + 160]
                                    else:
                                        mem[floor32(0, Mask(224, 0, floor32(('cd', 68).length) + 256)) + floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 580] = mem[floor32(0, Mask(224, 0, floor32(('cd', 68).length) + 256)) + floor32(('cd', 68).length) + ceil32(('cd', 68).length) + -(floor32(('cd', 68).length) + 256 % 32) + 612 len floor32(('cd', 68).length) + 256 % 32]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 420 len floor32(0, Mask(224, 0, floor32(('cd', 68).length) + 256)) + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call stor1 with:
                           value eth.balance(this.address) wei
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with 0, 'Failed'
                    else:
                        if address(('cd', 68)[1]) != address(('cd', 68)[2]):
                            if not ext_call.return_data[12 len 20]:
                                revert with 0, 'Requested pair is not available.'
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).token0() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).token1() with:
                                    gas gas_remaining wei
                            mem[ceil32(('cd', 68).length) + 128] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[ceil32(('cd', 68).length) + 160] = bool(cd[4])
                            mem[ceil32(('cd', 68).length) + 192] = 0
                            mem[ceil32(('cd', 68).length) + 224] = address(('cd', 68)[1])
                            mem[ceil32(('cd', 68).length) + 256] = stor3
                            mem[ceil32(('cd', 68).length) + 288] = cd[36]
                            mem[ceil32(('cd', 68).length) + 320] = 192
                            mem[ceil32(('cd', 68).length) + 352] = ('cd', 68).length
                            mem[ceil32(('cd', 68).length) + 384 len ceil32(('cd', 68).length)] = call.data[cd[68] + 36 len ('cd', 68).length], mem[('cd', 68).length + 128 len ceil32(('cd', 68).length) - ('cd', 68).length]
                            if address(('cd', 68)[1]) == address(ext_call.return_data[0]):
                                if address(('cd', 68)[1]) == ext_call.return_data[12 len 20]:
                                    if not ('cd', 68).length % 32:
                                        mem[ceil32(('cd', 68).length) + 128] = ('cd', 68).length + 224
                                        mem[64] = ('cd', 68).length + ceil32(('cd', 68).length) + 384
                                        mem[('cd', 68).length + ceil32(('cd', 68).length) + 384] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[('cd', 68).length + ceil32(('cd', 68).length) + 388] = cd[36]
                                        mem[('cd', 68).length + ceil32(('cd', 68).length) + 420] = cd[36]
                                        mem[('cd', 68).length + ceil32(('cd', 68).length) + 452] = this.address
                                        mem[('cd', 68).length + ceil32(('cd', 68).length) + 484] = 128
                                        mem[('cd', 68).length + ceil32(('cd', 68).length) + 516] = 0, Mask(224, 0, ('cd', 68).length + 224)
                                        mem[('cd', 68).length + ceil32(('cd', 68).length) + 548 len ceil32(0, Mask(224, 0, ('cd', 68).length + 224))] = mem[ceil32(('cd', 68).length) + 160 len ceil32(0, Mask(224, 0, ('cd', 68).length + 224))]
                                        if not ('cd', 68).length + 224 % 32:
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args mem[('cd', 68).length + ceil32(('cd', 68).length) + 388 len 0, Mask(224, 0, ('cd', 68).length + 224) + 160]
                                        else:
                                            mem[floor32(0, Mask(224, 0, ('cd', 68).length + 224)) + ('cd', 68).length + ceil32(('cd', 68).length) + 548] = mem[floor32(0, Mask(224, 0, ('cd', 68).length + 224)) + ('cd', 68).length + ceil32(('cd', 68).length) + -(('cd', 68).length + 224 % 32) + 580 len ('cd', 68).length + 224 % 32]
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args mem[('cd', 68).length + ceil32(('cd', 68).length) + 388 len floor32(0, Mask(224, 0, ('cd', 68).length + 224)) + 192]
                                    else:
                                        mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 384] = mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + -(('cd', 68).length % 32) + 416 len ('cd', 68).length % 32]
                                        mem[ceil32(('cd', 68).length) + 128] = floor32(('cd', 68).length) + 256
                                        mem[64] = floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 416
                                        mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 416] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 420] = cd[36]
                                        mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 452] = cd[36]
                                        mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 484] = this.address
                                        mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 516] = 128
                                        mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 548] = 0, Mask(224, 0, floor32(('cd', 68).length) + 256)
                                        mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 580 len ceil32(0, Mask(224, 0, floor32(('cd', 68).length) + 256))] = mem[ceil32(('cd', 68).length) + 160 len ceil32(0, Mask(224, 0, floor32(('cd', 68).length) + 256))]
                                        if not floor32(('cd', 68).length) + 256 % 32:
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 420 len 0, Mask(224, 0, floor32(('cd', 68).length) + 256) + 160]
                                        else:
                                            mem[floor32(0, Mask(224, 0, floor32(('cd', 68).length) + 256)) + floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 580] = mem[floor32(0, Mask(224, 0, floor32(('cd', 68).length) + 256)) + floor32(('cd', 68).length) + ceil32(('cd', 68).length) + -(floor32(('cd', 68).length) + 256 % 32) + 612 len floor32(('cd', 68).length) + 256 % 32]
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 420 len floor32(0, Mask(224, 0, floor32(('cd', 68).length) + 256)) + 192]
                                else:
                                    if not ('cd', 68).length % 32:
                                        mem[ceil32(('cd', 68).length) + 128] = ('cd', 68).length + 224
                                        mem[64] = ('cd', 68).length + ceil32(('cd', 68).length) + 384
                                        mem[('cd', 68).length + ceil32(('cd', 68).length) + 384] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[('cd', 68).length + ceil32(('cd', 68).length) + 388] = cd[36]
                                        mem[('cd', 68).length + ceil32(('cd', 68).length) + 420] = 0
                                        mem[('cd', 68).length + ceil32(('cd', 68).length) + 452] = this.address
                                        mem[('cd', 68).length + ceil32(('cd', 68).length) + 484] = 128
                                        mem[('cd', 68).length + ceil32(('cd', 68).length) + 516] = 0, Mask(224, 0, ('cd', 68).length + 224)
                                        mem[('cd', 68).length + ceil32(('cd', 68).length) + 548 len ceil32(0, Mask(224, 0, ('cd', 68).length + 224))] = mem[ceil32(('cd', 68).length) + 160 len ceil32(0, Mask(224, 0, ('cd', 68).length + 224))]
                                        if not ('cd', 68).length + 224 % 32:
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args mem[('cd', 68).length + ceil32(('cd', 68).length) + 388 len 0, Mask(224, 0, ('cd', 68).length + 224) + 160]
                                        else:
                                            mem[floor32(0, Mask(224, 0, ('cd', 68).length + 224)) + ('cd', 68).length + ceil32(('cd', 68).length) + 548] = mem[floor32(0, Mask(224, 0, ('cd', 68).length + 224)) + ('cd', 68).length + ceil32(('cd', 68).length) + -(('cd', 68).length + 224 % 32) + 580 len ('cd', 68).length + 224 % 32]
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args mem[('cd', 68).length + ceil32(('cd', 68).length) + 388 len floor32(0, Mask(224, 0, ('cd', 68).length + 224)) + 192]
                                    else:
                                        mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 384] = mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + -(('cd', 68).length % 32) + 416 len ('cd', 68).length % 32]
                                        mem[ceil32(('cd', 68).length) + 128] = floor32(('cd', 68).length) + 256
                                        mem[64] = floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 416
                                        mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 416] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 420] = cd[36]
                                        mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 452] = 0
                                        mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 484] = this.address
                                        mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 516] = 128
                                        mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 548] = 0, Mask(224, 0, floor32(('cd', 68).length) + 256)
                                        mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 580 len ceil32(0, Mask(224, 0, floor32(('cd', 68).length) + 256))] = mem[ceil32(('cd', 68).length) + 160 len ceil32(0, Mask(224, 0, floor32(('cd', 68).length) + 256))]
                                        if not floor32(('cd', 68).length) + 256 % 32:
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 420 len 0, Mask(224, 0, floor32(('cd', 68).length) + 256) + 160]
                                        else:
                                            mem[floor32(0, Mask(224, 0, floor32(('cd', 68).length) + 256)) + floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 580] = mem[floor32(0, Mask(224, 0, floor32(('cd', 68).length) + 256)) + floor32(('cd', 68).length) + ceil32(('cd', 68).length) + -(floor32(('cd', 68).length) + 256 % 32) + 612 len floor32(('cd', 68).length) + 256 % 32]
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 420 len floor32(0, Mask(224, 0, floor32(('cd', 68).length) + 256)) + 192]
                            else:
                                if address(('cd', 68)[1]) == ext_call.return_data[12 len 20]:
                                    if not ('cd', 68).length % 32:
                                        mem[ceil32(('cd', 68).length) + 128] = ('cd', 68).length + 224
                                        mem[64] = ('cd', 68).length + ceil32(('cd', 68).length) + 384
                                        mem[('cd', 68).length + ceil32(('cd', 68).length) + 384] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[('cd', 68).length + ceil32(('cd', 68).length) + 388] = 0
                                        mem[('cd', 68).length + ceil32(('cd', 68).length) + 420] = cd[36]
                                        mem[('cd', 68).length + ceil32(('cd', 68).length) + 452] = this.address
                                        mem[('cd', 68).length + ceil32(('cd', 68).length) + 484] = 128
                                        mem[('cd', 68).length + ceil32(('cd', 68).length) + 516] = 0, Mask(224, 0, ('cd', 68).length + 224)
                                        mem[('cd', 68).length + ceil32(('cd', 68).length) + 548 len ceil32(0, Mask(224, 0, ('cd', 68).length + 224))] = mem[ceil32(('cd', 68).length) + 160 len ceil32(0, Mask(224, 0, ('cd', 68).length + 224))]
                                        if not ('cd', 68).length + 224 % 32:
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args mem[('cd', 68).length + ceil32(('cd', 68).length) + 388 len 0, Mask(224, 0, ('cd', 68).length + 224) + 160]
                                        else:
                                            mem[floor32(0, Mask(224, 0, ('cd', 68).length + 224)) + ('cd', 68).length + ceil32(('cd', 68).length) + 548] = mem[floor32(0, Mask(224, 0, ('cd', 68).length + 224)) + ('cd', 68).length + ceil32(('cd', 68).length) + -(('cd', 68).length + 224 % 32) + 580 len ('cd', 68).length + 224 % 32]
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args mem[('cd', 68).length + ceil32(('cd', 68).length) + 388 len floor32(0, Mask(224, 0, ('cd', 68).length + 224)) + 192]
                                    else:
                                        mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 384] = mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + -(('cd', 68).length % 32) + 416 len ('cd', 68).length % 32]
                                        mem[ceil32(('cd', 68).length) + 128] = floor32(('cd', 68).length) + 256
                                        mem[64] = floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 416
                                        mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 416] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 420] = 0
                                        mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 452] = cd[36]
                                        mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 484] = this.address
                                        mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 516] = 128
                                        mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 548] = 0, Mask(224, 0, floor32(('cd', 68).length) + 256)
                                        mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 580 len ceil32(0, Mask(224, 0, floor32(('cd', 68).length) + 256))] = mem[ceil32(('cd', 68).length) + 160 len ceil32(0, Mask(224, 0, floor32(('cd', 68).length) + 256))]
                                        if not floor32(('cd', 68).length) + 256 % 32:
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 420 len 0, Mask(224, 0, floor32(('cd', 68).length) + 256) + 160]
                                        else:
                                            mem[floor32(0, Mask(224, 0, floor32(('cd', 68).length) + 256)) + floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 580] = mem[floor32(0, Mask(224, 0, floor32(('cd', 68).length) + 256)) + floor32(('cd', 68).length) + ceil32(('cd', 68).length) + -(floor32(('cd', 68).length) + 256 % 32) + 612 len floor32(('cd', 68).length) + 256 % 32]
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 420 len floor32(0, Mask(224, 0, floor32(('cd', 68).length) + 256)) + 192]
                                else:
                                    if not ('cd', 68).length % 32:
                                        mem[ceil32(('cd', 68).length) + 128] = ('cd', 68).length + 224
                                        mem[64] = ('cd', 68).length + ceil32(('cd', 68).length) + 384
                                        mem[('cd', 68).length + ceil32(('cd', 68).length) + 384] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[('cd', 68).length + ceil32(('cd', 68).length) + 388] = 0
                                        mem[('cd', 68).length + ceil32(('cd', 68).length) + 420] = 0
                                        mem[('cd', 68).length + ceil32(('cd', 68).length) + 452] = this.address
                                        mem[('cd', 68).length + ceil32(('cd', 68).length) + 484] = 128
                                        mem[('cd', 68).length + ceil32(('cd', 68).length) + 516] = 0, Mask(224, 0, ('cd', 68).length + 224)
                                        mem[('cd', 68).length + ceil32(('cd', 68).length) + 548 len ceil32(0, Mask(224, 0, ('cd', 68).length + 224))] = mem[ceil32(('cd', 68).length) + 160 len ceil32(0, Mask(224, 0, ('cd', 68).length + 224))]
                                        if not ('cd', 68).length + 224 % 32:
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args mem[('cd', 68).length + ceil32(('cd', 68).length) + 388 len 0, Mask(224, 0, ('cd', 68).length + 224) + 160]
                                        else:
                                            mem[floor32(0, Mask(224, 0, ('cd', 68).length + 224)) + ('cd', 68).length + ceil32(('cd', 68).length) + 548] = mem[floor32(0, Mask(224, 0, ('cd', 68).length + 224)) + ('cd', 68).length + ceil32(('cd', 68).length) + -(('cd', 68).length + 224 % 32) + 580 len ('cd', 68).length + 224 % 32]
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args mem[('cd', 68).length + ceil32(('cd', 68).length) + 388 len floor32(0, Mask(224, 0, ('cd', 68).length + 224)) + 192]
                                    else:
                                        mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 384] = mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + -(('cd', 68).length % 32) + 416 len ('cd', 68).length % 32]
                                        mem[ceil32(('cd', 68).length) + 128] = floor32(('cd', 68).length) + 256
                                        mem[64] = floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 416
                                        mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 416] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 420] = 0
                                        mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 452] = 0
                                        mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 484] = this.address
                                        mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 516] = 128
                                        mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 548] = 0, Mask(224, 0, floor32(('cd', 68).length) + 256)
                                        mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 580 len ceil32(0, Mask(224, 0, floor32(('cd', 68).length) + 256))] = mem[ceil32(('cd', 68).length) + 160 len ceil32(0, Mask(224, 0, floor32(('cd', 68).length) + 256))]
                                        if not floor32(('cd', 68).length) + 256 % 32:
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 420 len 0, Mask(224, 0, floor32(('cd', 68).length) + 256) + 160]
                                        else:
                                            mem[floor32(0, Mask(224, 0, floor32(('cd', 68).length) + 256)) + floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 580] = mem[floor32(0, Mask(224, 0, floor32(('cd', 68).length) + 256)) + floor32(('cd', 68).length) + ceil32(('cd', 68).length) + -(floor32(('cd', 68).length) + 256 % 32) + 612 len floor32(('cd', 68).length) + 256 % 32]
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 420 len floor32(0, Mask(224, 0, floor32(('cd', 68).length) + 256)) + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call stor1 with:
                               value eth.balance(this.address) wei
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with 0, 'Failed'
                        else:
                            if not ext_call.return_data[12 len 20]:
                                revert with 0, 
                                            32,
                                            34,
                                            0xfe526571756573746564205f746f6b656e206973206e6f7420617661696c61626c65,
                                            mem[ceil32(('cd', 68).length) + 230 len 30]
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).token0() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).token1() with:
                                    gas gas_remaining wei
                            mem[ceil32(('cd', 68).length) + 128] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[ceil32(('cd', 68).length) + 160] = 0
                            mem[ceil32(('cd', 68).length) + 192] = 1
                            mem[ceil32(('cd', 68).length) + 224] = address(('cd', 68)[1])
                            mem[ceil32(('cd', 68).length) + 256] = stor3
                            mem[ceil32(('cd', 68).length) + 288] = cd[36]
                            mem[ceil32(('cd', 68).length) + 320] = 192
                            mem[ceil32(('cd', 68).length) + 352] = ('cd', 68).length
                            mem[ceil32(('cd', 68).length) + 384 len ceil32(('cd', 68).length)] = call.data[cd[68] + 36 len ('cd', 68).length], mem[('cd', 68).length + 128 len ceil32(('cd', 68).length) - ('cd', 68).length]
                            if address(('cd', 68)[1]) == address(ext_call.return_data[0]):
                                if address(('cd', 68)[1]) == ext_call.return_data[12 len 20]:
                                    if not ('cd', 68).length % 32:
                                        mem[ceil32(('cd', 68).length) + 128] = ('cd', 68).length + 224
                                        mem[64] = ('cd', 68).length + ceil32(('cd', 68).length) + 384
                                        mem[('cd', 68).length + ceil32(('cd', 68).length) + 384] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[('cd', 68).length + ceil32(('cd', 68).length) + 388] = cd[36]
                                        mem[('cd', 68).length + ceil32(('cd', 68).length) + 420] = cd[36]
                                        mem[('cd', 68).length + ceil32(('cd', 68).length) + 452] = this.address
                                        mem[('cd', 68).length + ceil32(('cd', 68).length) + 484] = 128
                                        mem[('cd', 68).length + ceil32(('cd', 68).length) + 516] = 0, Mask(224, 0, ('cd', 68).length + 224)
                                        mem[('cd', 68).length + ceil32(('cd', 68).length) + 548 len ceil32(0, Mask(224, 0, ('cd', 68).length + 224))] = mem[ceil32(('cd', 68).length) + 160 len ceil32(0, Mask(224, 0, ('cd', 68).length + 224))]
                                        if not ('cd', 68).length + 224 % 32:
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args mem[('cd', 68).length + ceil32(('cd', 68).length) + 388 len 0, Mask(224, 0, ('cd', 68).length + 224) + 160]
                                        else:
                                            mem[floor32(0, Mask(224, 0, ('cd', 68).length + 224)) + ('cd', 68).length + ceil32(('cd', 68).length) + 548] = mem[floor32(0, Mask(224, 0, ('cd', 68).length + 224)) + ('cd', 68).length + ceil32(('cd', 68).length) + -(('cd', 68).length + 224 % 32) + 580 len ('cd', 68).length + 224 % 32]
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args mem[('cd', 68).length + ceil32(('cd', 68).length) + 388 len floor32(0, Mask(224, 0, ('cd', 68).length + 224)) + 192]
                                    else:
                                        mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 384] = mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + -(('cd', 68).length % 32) + 416 len ('cd', 68).length % 32]
                                        mem[ceil32(('cd', 68).length) + 128] = floor32(('cd', 68).length) + 256
                                        mem[64] = floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 416
                                        mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 416] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 420] = cd[36]
                                        mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 452] = cd[36]
                                        mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 484] = this.address
                                        mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 516] = 128
                                        mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 548] = 0, Mask(224, 0, floor32(('cd', 68).length) + 256)
                                        mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 580 len ceil32(0, Mask(224, 0, floor32(('cd', 68).length) + 256))] = mem[ceil32(('cd', 68).length) + 160 len ceil32(0, Mask(224, 0, floor32(('cd', 68).length) + 256))]
                                        if not floor32(('cd', 68).length) + 256 % 32:
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 420 len 0, Mask(224, 0, floor32(('cd', 68).length) + 256) + 160]
                                        else:
                                            mem[floor32(0, Mask(224, 0, floor32(('cd', 68).length) + 256)) + floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 580] = mem[floor32(0, Mask(224, 0, floor32(('cd', 68).length) + 256)) + floor32(('cd', 68).length) + ceil32(('cd', 68).length) + -(floor32(('cd', 68).length) + 256 % 32) + 612 len floor32(('cd', 68).length) + 256 % 32]
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 420 len floor32(0, Mask(224, 0, floor32(('cd', 68).length) + 256)) + 192]
                                else:
                                    if not ('cd', 68).length % 32:
                                        mem[ceil32(('cd', 68).length) + 128] = ('cd', 68).length + 224
                                        mem[64] = ('cd', 68).length + ceil32(('cd', 68).length) + 384
                                        mem[('cd', 68).length + ceil32(('cd', 68).length) + 384] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[('cd', 68).length + ceil32(('cd', 68).length) + 388] = cd[36]
                                        mem[('cd', 68).length + ceil32(('cd', 68).length) + 420] = 0
                                        mem[('cd', 68).length + ceil32(('cd', 68).length) + 452] = this.address
                                        mem[('cd', 68).length + ceil32(('cd', 68).length) + 484] = 128
                                        mem[('cd', 68).length + ceil32(('cd', 68).length) + 516] = 0, Mask(224, 0, ('cd', 68).length + 224)
                                        mem[('cd', 68).length + ceil32(('cd', 68).length) + 548 len ceil32(0, Mask(224, 0, ('cd', 68).length + 224))] = mem[ceil32(('cd', 68).length) + 160 len ceil32(0, Mask(224, 0, ('cd', 68).length + 224))]
                                        if not ('cd', 68).length + 224 % 32:
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args mem[('cd', 68).length + ceil32(('cd', 68).length) + 388 len 0, Mask(224, 0, ('cd', 68).length + 224) + 160]
                                        else:
                                            mem[floor32(0, Mask(224, 0, ('cd', 68).length + 224)) + ('cd', 68).length + ceil32(('cd', 68).length) + 548] = mem[floor32(0, Mask(224, 0, ('cd', 68).length + 224)) + ('cd', 68).length + ceil32(('cd', 68).length) + -(('cd', 68).length + 224 % 32) + 580 len ('cd', 68).length + 224 % 32]
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args mem[('cd', 68).length + ceil32(('cd', 68).length) + 388 len floor32(0, Mask(224, 0, ('cd', 68).length + 224)) + 192]
                                    else:
                                        mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 384] = mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + -(('cd', 68).length % 32) + 416 len ('cd', 68).length % 32]
                                        mem[ceil32(('cd', 68).length) + 128] = floor32(('cd', 68).length) + 256
                                        mem[64] = floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 416
                                        mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 416] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 420] = cd[36]
                                        mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 452] = 0
                                        mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 484] = this.address
                                        mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 516] = 128
                                        mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 548] = 0, Mask(224, 0, floor32(('cd', 68).length) + 256)
                                        mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 580 len ceil32(0, Mask(224, 0, floor32(('cd', 68).length) + 256))] = mem[ceil32(('cd', 68).length) + 160 len ceil32(0, Mask(224, 0, floor32(('cd', 68).length) + 256))]
                                        if not floor32(('cd', 68).length) + 256 % 32:
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 420 len 0, Mask(224, 0, floor32(('cd', 68).length) + 256) + 160]
                                        else:
                                            mem[floor32(0, Mask(224, 0, floor32(('cd', 68).length) + 256)) + floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 580] = mem[floor32(0, Mask(224, 0, floor32(('cd', 68).length) + 256)) + floor32(('cd', 68).length) + ceil32(('cd', 68).length) + -(floor32(('cd', 68).length) + 256 % 32) + 612 len floor32(('cd', 68).length) + 256 % 32]
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 420 len floor32(0, Mask(224, 0, floor32(('cd', 68).length) + 256)) + 192]
                            else:
                                if address(('cd', 68)[1]) == ext_call.return_data[12 len 20]:
                                    if not ('cd', 68).length % 32:
                                        mem[ceil32(('cd', 68).length) + 128] = ('cd', 68).length + 224
                                        mem[64] = ('cd', 68).length + ceil32(('cd', 68).length) + 384
                                        mem[('cd', 68).length + ceil32(('cd', 68).length) + 384] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[('cd', 68).length + ceil32(('cd', 68).length) + 388] = 0
                                        mem[('cd', 68).length + ceil32(('cd', 68).length) + 420] = cd[36]
                                        mem[('cd', 68).length + ceil32(('cd', 68).length) + 452] = this.address
                                        mem[('cd', 68).length + ceil32(('cd', 68).length) + 484] = 128
                                        mem[('cd', 68).length + ceil32(('cd', 68).length) + 516] = 0, Mask(224, 0, ('cd', 68).length + 224)
                                        mem[('cd', 68).length + ceil32(('cd', 68).length) + 548 len ceil32(0, Mask(224, 0, ('cd', 68).length + 224))] = mem[ceil32(('cd', 68).length) + 160 len ceil32(0, Mask(224, 0, ('cd', 68).length + 224))]
                                        if not ('cd', 68).length + 224 % 32:
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args mem[('cd', 68).length + ceil32(('cd', 68).length) + 388 len 0, Mask(224, 0, ('cd', 68).length + 224) + 160]
                                        else:
                                            mem[floor32(0, Mask(224, 0, ('cd', 68).length + 224)) + ('cd', 68).length + ceil32(('cd', 68).length) + 548] = mem[floor32(0, Mask(224, 0, ('cd', 68).length + 224)) + ('cd', 68).length + ceil32(('cd', 68).length) + -(('cd', 68).length + 224 % 32) + 580 len ('cd', 68).length + 224 % 32]
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args mem[('cd', 68).length + ceil32(('cd', 68).length) + 388 len floor32(0, Mask(224, 0, ('cd', 68).length + 224)) + 192]
                                    else:
                                        mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 384] = mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + -(('cd', 68).length % 32) + 416 len ('cd', 68).length % 32]
                                        mem[ceil32(('cd', 68).length) + 128] = floor32(('cd', 68).length) + 256
                                        mem[64] = floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 416
                                        mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 416] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 420] = 0
                                        mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 452] = cd[36]
                                        mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 484] = this.address
                                        mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 516] = 128
                                        mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 548] = 0, Mask(224, 0, floor32(('cd', 68).length) + 256)
                                        mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 580 len ceil32(0, Mask(224, 0, floor32(('cd', 68).length) + 256))] = mem[ceil32(('cd', 68).length) + 160 len ceil32(0, Mask(224, 0, floor32(('cd', 68).length) + 256))]
                                        if not floor32(('cd', 68).length) + 256 % 32:
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 420 len 0, Mask(224, 0, floor32(('cd', 68).length) + 256) + 160]
                                        else:
                                            mem[floor32(0, Mask(224, 0, floor32(('cd', 68).length) + 256)) + floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 580] = mem[floor32(0, Mask(224, 0, floor32(('cd', 68).length) + 256)) + floor32(('cd', 68).length) + ceil32(('cd', 68).length) + -(floor32(('cd', 68).length) + 256 % 32) + 612 len floor32(('cd', 68).length) + 256 % 32]
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 420 len floor32(0, Mask(224, 0, floor32(('cd', 68).length) + 256)) + 192]
                                else:
                                    if not ('cd', 68).length % 32:
                                        mem[ceil32(('cd', 68).length) + 128] = ('cd', 68).length + 224
                                        mem[64] = ('cd', 68).length + ceil32(('cd', 68).length) + 384
                                        mem[('cd', 68).length + ceil32(('cd', 68).length) + 384] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[('cd', 68).length + ceil32(('cd', 68).length) + 388] = 0
                                        mem[('cd', 68).length + ceil32(('cd', 68).length) + 420] = 0
                                        mem[('cd', 68).length + ceil32(('cd', 68).length) + 452] = this.address
                                        mem[('cd', 68).length + ceil32(('cd', 68).length) + 484] = 128
                                        mem[('cd', 68).length + ceil32(('cd', 68).length) + 516] = 0, Mask(224, 0, ('cd', 68).length + 224)
                                        mem[('cd', 68).length + ceil32(('cd', 68).length) + 548 len ceil32(0, Mask(224, 0, ('cd', 68).length + 224))] = mem[ceil32(('cd', 68).length) + 160 len ceil32(0, Mask(224, 0, ('cd', 68).length + 224))]
                                        if not ('cd', 68).length + 224 % 32:
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args mem[('cd', 68).length + ceil32(('cd', 68).length) + 388 len 0, Mask(224, 0, ('cd', 68).length + 224) + 160]
                                        else:
                                            mem[floor32(0, Mask(224, 0, ('cd', 68).length + 224)) + ('cd', 68).length + ceil32(('cd', 68).length) + 548] = mem[floor32(0, Mask(224, 0, ('cd', 68).length + 224)) + ('cd', 68).length + ceil32(('cd', 68).length) + -(('cd', 68).length + 224 % 32) + 580 len ('cd', 68).length + 224 % 32]
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args mem[('cd', 68).length + ceil32(('cd', 68).length) + 388 len floor32(0, Mask(224, 0, ('cd', 68).length + 224)) + 192]
                                    else:
                                        mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 384] = mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + -(('cd', 68).length % 32) + 416 len ('cd', 68).length % 32]
                                        mem[ceil32(('cd', 68).length) + 128] = floor32(('cd', 68).length) + 256
                                        mem[64] = floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 416
                                        mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 416] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 420] = 0
                                        mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 452] = 0
                                        mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 484] = this.address
                                        mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 516] = 128
                                        mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 548] = 0, Mask(224, 0, floor32(('cd', 68).length) + 256)
                                        mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 580 len ceil32(0, Mask(224, 0, floor32(('cd', 68).length) + 256))] = mem[ceil32(('cd', 68).length) + 160 len ceil32(0, Mask(224, 0, floor32(('cd', 68).length) + 256))]
                                        if not floor32(('cd', 68).length) + 256 % 32:
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 420 len 0, Mask(224, 0, floor32(('cd', 68).length) + 256) + 160]
                                        else:
                                            mem[floor32(0, Mask(224, 0, floor32(('cd', 68).length) + 256)) + floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 580] = mem[floor32(0, Mask(224, 0, floor32(('cd', 68).length) + 256)) + floor32(('cd', 68).length) + ceil32(('cd', 68).length) + -(floor32(('cd', 68).length) + 256 % 32) + 612 len floor32(('cd', 68).length) + 256 % 32]
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 420 len floor32(0, Mask(224, 0, floor32(('cd', 68).length) + 256)) + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(address(('cd', 68)[2]))
                            staticcall address(('cd', 68)[2]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(('cd', 68)[2]))
                            call address(('cd', 68)[2]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args stor1, ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
}



}
