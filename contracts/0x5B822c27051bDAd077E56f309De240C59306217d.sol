contract main {




// =====================  Runtime code  =====================


address stor0;
mapping of uint8 stor1;
address stor2;
address stor3;

function getOperator(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor1[address(arg1)])
}

function _fallback() payable {
  stop
}

function sendEth(uint256 arg1) {
    require calldata.size - 4 >= 32
    call stor0 with:
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
        args stor0, arg2
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
        mem[32] = 1
        stor1[mem[(32 * idx) + 140 len 20]] = uint8(bool(mem[(32 * idx) + (32 * arg1.length) + 160]))
        idx = idx + 1
        continue 
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
    if not stor1[address(msg.sender)]:
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
    staticcall 0xbcfccbde45ce874adcb698cc183debcf17952812.getPair(address rg1, address rg2) with:
            gas gas_remaining wei
           args address(ext_call.return_data[0]), address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require msg.sender == ext_call.return_data[12 len 20]
    require arg4.length >= 160
    require cd[(arg4 + 164)] <= 4294967296
    require cd[(arg4 + 164)] + 68 <= arg4.length + 36
    require cd[(arg4 + cd[(arg4 + 164)] + 36)] <= 4294967296 and cd[(arg4 + 164)] + cd[(arg4 + cd[(arg4 + 164)] + 36)] + 68 <= arg4.length + 36
    mem[128 len cd[(arg4 + cd[(arg4 + 164)] + 36)]] = call.data[arg4 + cd[(arg4 + 164)] + 68 len cd[(arg4 + cd[(arg4 + 164)] + 36)]]
    mem[cd[(arg4 + cd[(arg4 + 164)] + 36)] + 128] = 0
    if cd[(arg4 + 36)]:
        if address(cd[(arg4 + 68)]) == stor2:
            mem[ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 128] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
            mem[ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 132] = cd[(arg4 + 132)]
            require ext_code.size(stor2)
            call stor2.withdraw(uint256 rg1) with:
                 gas gas_remaining wei
                args cd[(arg4 + 132)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        require cd[(arg4 + cd[(arg4 + 164)] + 36)] >= 192
        require ext_code.size(mem[172 len 20])
        if not mem[256]:
            call mem[172 len 20].liquidateBorrow(address rg1, uint256 rg2, address rg3) with:
                 gas gas_remaining wei
                args ext_call.return_data[0] << 160, mem[192], mem[236 len 20]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(mem[236 len 20])
            call mem[236 len 20].0x70a08231 with:
                 gas gas_remaining wei
                args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(mem[236 len 20])
            call mem[236 len 20].redeem(uint256 rg1) with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
        else:
            if mem[288]:
                call mem[172 len 20].liquidateBorrow(address rg1, address rg2) with:
                   value mem[192] wei
                     gas gas_remaining wei
                    args ext_call.return_data[0] << 160, mem[236 len 20]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(mem[172 len 20])
                call mem[172 len 20].0x70a08231 with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(mem[172 len 20])
                call mem[172 len 20].redeem(uint256 rg1) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0]
            else:
                call mem[172 len 20].liquidateBorrow(address rg1, uint256 rg2, address rg3) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0] << 160, mem[192], mem[236 len 20]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(mem[236 len 20])
                call mem[236 len 20].0x70a08231 with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(mem[236 len 20])
                call mem[236 len 20].redeem(uint256 rg1) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if address(cd[(arg4 + 68)]) == stor2:
            require ext_code.size(stor2)
            call stor2.deposit() with:
               value cd[(arg4 + 132)] + (3 * cd[(arg4 + 132)] / 997) + 1 wei
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(address(cd[(arg4 + 68)]))
        call address(cd[(arg4 + 68)]).0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, cd[(arg4 + 132)] + (3 * cd[(arg4 + 132)] / 997) + 1
    else:
        if address(cd[(arg4 + 68)]) == stor2:
            require ext_code.size(stor2)
            call stor2.withdraw(uint256 rg1) with:
                 gas gas_remaining wei
                args cd[(arg4 + 132)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 164] = address(cd[(arg4 + 100)])
        require ext_code.size(0xbcfccbde45ce874adcb698cc183debcf17952812)
        staticcall 0xbcfccbde45ce874adcb698cc183debcf17952812.getPair(address rg1, address rg2) with:
                gas gas_remaining wei
               args address(cd[(arg4 + 68)]), address(cd[(arg4 + 100)])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(cd[(arg4 + 68)]))
        staticcall address(cd[(arg4 + 68)]).0x70a08231 with:
                gas gas_remaining wei
               args address(ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 132] = address(ext_call.return_data[0])
        require ext_code.size(address(cd[(arg4 + 100)]))
        staticcall address(cd[(arg4 + 100)]).0x70a08231 with:
                gas gas_remaining wei
               args address(ext_call.return_data[0])
        mem[ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require 997 * ext_call.return_data[0]
        require cd[(arg4 + cd[(arg4 + 164)] + 36)] >= 192
        require ext_code.size(mem[172 len 20])
        if mem[256]:
            call mem[172 len 20].liquidateBorrow(address rg1, address rg2) with:
               value mem[192] wei
                 gas gas_remaining wei
                args ext_call.return_data[0] << 160, mem[236 len 20]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(mem[236 len 20])
            call mem[236 len 20].0x70a08231 with:
                 gas gas_remaining wei
                args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(mem[236 len 20])
            call mem[236 len 20].redeem(uint256 rg1) with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
        else:
            call mem[172 len 20].liquidateBorrow(address rg1, uint256 rg2, address rg3) with:
                 gas gas_remaining wei
                args ext_call.return_data[0] << 160, mem[192], mem[236 len 20]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(mem[236 len 20])
            call mem[236 len 20].0x70a08231 with:
                 gas gas_remaining wei
                args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(mem[236 len 20])
            call mem[236 len 20].redeem(uint256 rg1) with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if mem[288]:
            else:
                require ext_code.size(mem[236 len 20])
                call mem[236 len 20].underlying() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 0 < 0, 2
                mem[ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 160] = address(ext_call.return_data[0])
                require 1 < 0, 2
                mem[ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 192] = stor2
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                mem[ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 228] = ext_call.return_data[0]
                mem[ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 260] = (1000 * ext_call.return_data[0] * cd[(arg4 + 132)] / 997 * ext_call.return_data[0]) + 1
                mem[ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 324] = this.address
                mem[ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 356] = block.timestamp + 30
                mem[ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 292] = 160
                mem[ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 388] = 0, 2
                mem[ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 420 len floor32(0, 2)] = mem[ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 160 len floor32(0, 2)]
                require ext_code.size(stor3)
                call stor3.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args mem[ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 228 len (32 * 0, 2) + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + ceil32(return_data.size) + 224
                require return_data.size >= 32
                require mem[ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224 len 4], ext_call.return_data[0 len 28] <= 4294967296
                require mem[ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                require mem[mem[ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224 len 4], ext_call.return_data[0 len 28] + ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224] <= 4294967296 and mem[ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224 len 4], ext_call.return_data[0 len 28] + ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224]) + 32 <= return_data.size
        if address(cd[(arg4 + 100)]) == stor2:
            require ext_code.size(stor2)
            call stor2.deposit() with:
               value (1000 * ext_call.return_data[0] * cd[(arg4 + 132)] / 997 * ext_call.return_data[0]) + 1 wei
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(address(cd[(arg4 + 100)]))
        call address(cd[(arg4 + 100)]).0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, (1000 * ext_call.return_data[0] * cd[(arg4 + 132)] / 997 * ext_call.return_data[0]) + 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_c98641cc(?) {
    require calldata.size - 4 >= 64
    require cd[36] <= 4294967296
    require cd[36] + 36 <= calldata.size
    require ('cd', 36).length <= 4294967296 and cd[36] + ('cd', 36).length + 36 <= calldata.size
    mem[0] = msg.sender
    mem[32] = 1
    if not stor1[address(msg.sender)]:
        revert with 0, 'not allowed'
    require ('cd', 36).length >= 192
    if not ('cd', 36)[4]:
        require ext_code.size(address(('cd', 36)[1]))
        call address(('cd', 36)[1]).underlying() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ('cd', 36)[5]:
            mem[96] = ('cd', 36).length
            mem[128 len ('cd', 36).length] = call.data[cd[36] + 36 len ('cd', 36).length]
            mem[('cd', 36).length + 128] = 0
            require ext_code.size(0xbcfccbde45ce874adcb698cc183debcf17952812)
            staticcall 0xbcfccbde45ce874adcb698cc183debcf17952812.getPair(address rg1, address rg2) with:
                    gas gas_remaining wei
                   args address(ext_call.return_data[0]), stor2
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
            mem[ceil32(('cd', 36).length) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[ceil32(('cd', 36).length) + 160] = 0
            mem[ceil32(('cd', 36).length) + 192] = address(ext_call.return_data[0])
            mem[ceil32(('cd', 36).length) + 224] = stor2
            mem[ceil32(('cd', 36).length) + 256] = cd[4]
            mem[ceil32(('cd', 36).length) + 288] = 160
            mem[ceil32(('cd', 36).length) + 320] = ('cd', 36).length
            mem[ceil32(('cd', 36).length) + 352 len ceil32(('cd', 36).length)] = call.data[cd[36] + 36 len ('cd', 36).length], mem[('cd', 36).length + 128 len ceil32(('cd', 36).length) - ('cd', 36).length]
            if address(ext_call.return_data[0]) == address(ext_call.return_data[0]):
                if address(ext_call.return_data[0]) == ext_call.return_data[12 len 20]:
                    if not ('cd', 36).length % 32:
                        mem[ceil32(('cd', 36).length) + 128] = ('cd', 36).length + 192
                        mem[64] = ('cd', 36).length + ceil32(('cd', 36).length) + 352
                        mem[('cd', 36).length + ceil32(('cd', 36).length) + 352] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[('cd', 36).length + ceil32(('cd', 36).length) + 356] = cd[4]
                        mem[('cd', 36).length + ceil32(('cd', 36).length) + 388] = cd[4]
                        mem[('cd', 36).length + ceil32(('cd', 36).length) + 420] = this.address
                        mem[('cd', 36).length + ceil32(('cd', 36).length) + 452] = 128
                        mem[('cd', 36).length + ceil32(('cd', 36).length) + 484] = 0, Mask(224, 0, ('cd', 36).length + 192)
                        mem[('cd', 36).length + ceil32(('cd', 36).length) + 516 len ceil32(0, Mask(224, 0, ('cd', 36).length + 192))] = mem[ceil32(('cd', 36).length) + 160 len ceil32(0, Mask(224, 0, ('cd', 36).length + 192))]
                        if not ('cd', 36).length + 192 % 32:
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args mem[('cd', 36).length + ceil32(('cd', 36).length) + 356 len 0, Mask(224, 0, ('cd', 36).length + 192) + 160]
                        else:
                            mem[floor32(0, Mask(224, 0, ('cd', 36).length + 192)) + ('cd', 36).length + ceil32(('cd', 36).length) + 516] = mem[floor32(0, Mask(224, 0, ('cd', 36).length + 192)) + ('cd', 36).length + ceil32(('cd', 36).length) + -(('cd', 36).length + 192 % 32) + 548 len ('cd', 36).length + 192 % 32]
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args mem[('cd', 36).length + ceil32(('cd', 36).length) + 356 len floor32(0, Mask(224, 0, ('cd', 36).length + 192)) + 192]
                    else:
                        mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 352] = mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + -(('cd', 36).length % 32) + 384 len ('cd', 36).length % 32]
                        mem[ceil32(('cd', 36).length) + 128] = floor32(('cd', 36).length) + 224
                        mem[64] = floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 384
                        mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 384] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 388] = cd[4]
                        mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 420] = cd[4]
                        mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 452] = this.address
                        mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 484] = 128
                        mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 516] = 0, Mask(224, 0, floor32(('cd', 36).length) + 224)
                        mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 548 len ceil32(0, Mask(224, 0, floor32(('cd', 36).length) + 224))] = mem[ceil32(('cd', 36).length) + 160 len ceil32(0, Mask(224, 0, floor32(('cd', 36).length) + 224))]
                        if not floor32(('cd', 36).length) + 224 % 32:
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 388 len 0, Mask(224, 0, floor32(('cd', 36).length) + 224) + 160]
                        else:
                            mem[floor32(0, Mask(224, 0, floor32(('cd', 36).length) + 224)) + floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 548] = mem[floor32(0, Mask(224, 0, floor32(('cd', 36).length) + 224)) + floor32(('cd', 36).length) + ceil32(('cd', 36).length) + -(floor32(('cd', 36).length) + 224 % 32) + 580 len floor32(('cd', 36).length) + 224 % 32]
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 388 len floor32(0, Mask(224, 0, floor32(('cd', 36).length) + 224)) + 192]
                else:
                    if not ('cd', 36).length % 32:
                        mem[ceil32(('cd', 36).length) + 128] = ('cd', 36).length + 192
                        mem[64] = ('cd', 36).length + ceil32(('cd', 36).length) + 352
                        mem[('cd', 36).length + ceil32(('cd', 36).length) + 352] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[('cd', 36).length + ceil32(('cd', 36).length) + 356] = cd[4]
                        mem[('cd', 36).length + ceil32(('cd', 36).length) + 388] = 0
                        mem[('cd', 36).length + ceil32(('cd', 36).length) + 420] = this.address
                        mem[('cd', 36).length + ceil32(('cd', 36).length) + 452] = 128
                        mem[('cd', 36).length + ceil32(('cd', 36).length) + 484] = 0, Mask(224, 0, ('cd', 36).length + 192)
                        mem[('cd', 36).length + ceil32(('cd', 36).length) + 516 len ceil32(0, Mask(224, 0, ('cd', 36).length + 192))] = mem[ceil32(('cd', 36).length) + 160 len ceil32(0, Mask(224, 0, ('cd', 36).length + 192))]
                        if not ('cd', 36).length + 192 % 32:
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args mem[('cd', 36).length + ceil32(('cd', 36).length) + 356 len 0, Mask(224, 0, ('cd', 36).length + 192) + 160]
                        else:
                            mem[floor32(0, Mask(224, 0, ('cd', 36).length + 192)) + ('cd', 36).length + ceil32(('cd', 36).length) + 516] = mem[floor32(0, Mask(224, 0, ('cd', 36).length + 192)) + ('cd', 36).length + ceil32(('cd', 36).length) + -(('cd', 36).length + 192 % 32) + 548 len ('cd', 36).length + 192 % 32]
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args mem[('cd', 36).length + ceil32(('cd', 36).length) + 356 len floor32(0, Mask(224, 0, ('cd', 36).length + 192)) + 192]
                    else:
                        mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 352] = mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + -(('cd', 36).length % 32) + 384 len ('cd', 36).length % 32]
                        mem[ceil32(('cd', 36).length) + 128] = floor32(('cd', 36).length) + 224
                        mem[64] = floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 384
                        mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 384] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 388] = cd[4]
                        mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 420] = 0
                        mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 452] = this.address
                        mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 484] = 128
                        mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 516] = 0, Mask(224, 0, floor32(('cd', 36).length) + 224)
                        mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 548 len ceil32(0, Mask(224, 0, floor32(('cd', 36).length) + 224))] = mem[ceil32(('cd', 36).length) + 160 len ceil32(0, Mask(224, 0, floor32(('cd', 36).length) + 224))]
                        if not floor32(('cd', 36).length) + 224 % 32:
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 388 len 0, Mask(224, 0, floor32(('cd', 36).length) + 224) + 160]
                        else:
                            mem[floor32(0, Mask(224, 0, floor32(('cd', 36).length) + 224)) + floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 548] = mem[floor32(0, Mask(224, 0, floor32(('cd', 36).length) + 224)) + floor32(('cd', 36).length) + ceil32(('cd', 36).length) + -(floor32(('cd', 36).length) + 224 % 32) + 580 len floor32(('cd', 36).length) + 224 % 32]
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 388 len floor32(0, Mask(224, 0, floor32(('cd', 36).length) + 224)) + 192]
            else:
                if address(ext_call.return_data[0]) == ext_call.return_data[12 len 20]:
                    if not ('cd', 36).length % 32:
                        mem[ceil32(('cd', 36).length) + 128] = ('cd', 36).length + 192
                        mem[64] = ('cd', 36).length + ceil32(('cd', 36).length) + 352
                        mem[('cd', 36).length + ceil32(('cd', 36).length) + 352] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[('cd', 36).length + ceil32(('cd', 36).length) + 356] = 0
                        mem[('cd', 36).length + ceil32(('cd', 36).length) + 388] = cd[4]
                        mem[('cd', 36).length + ceil32(('cd', 36).length) + 420] = this.address
                        mem[('cd', 36).length + ceil32(('cd', 36).length) + 452] = 128
                        mem[('cd', 36).length + ceil32(('cd', 36).length) + 484] = 0, Mask(224, 0, ('cd', 36).length + 192)
                        mem[('cd', 36).length + ceil32(('cd', 36).length) + 516 len ceil32(0, Mask(224, 0, ('cd', 36).length + 192))] = mem[ceil32(('cd', 36).length) + 160 len ceil32(0, Mask(224, 0, ('cd', 36).length + 192))]
                        if not ('cd', 36).length + 192 % 32:
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args mem[('cd', 36).length + ceil32(('cd', 36).length) + 356 len 0, Mask(224, 0, ('cd', 36).length + 192) + 160]
                        else:
                            mem[floor32(0, Mask(224, 0, ('cd', 36).length + 192)) + ('cd', 36).length + ceil32(('cd', 36).length) + 516] = mem[floor32(0, Mask(224, 0, ('cd', 36).length + 192)) + ('cd', 36).length + ceil32(('cd', 36).length) + -(('cd', 36).length + 192 % 32) + 548 len ('cd', 36).length + 192 % 32]
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args mem[('cd', 36).length + ceil32(('cd', 36).length) + 356 len floor32(0, Mask(224, 0, ('cd', 36).length + 192)) + 192]
                    else:
                        mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 352] = mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + -(('cd', 36).length % 32) + 384 len ('cd', 36).length % 32]
                        mem[ceil32(('cd', 36).length) + 128] = floor32(('cd', 36).length) + 224
                        mem[64] = floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 384
                        mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 384] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 388] = 0
                        mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 420] = cd[4]
                        mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 452] = this.address
                        mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 484] = 128
                        mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 516] = 0, Mask(224, 0, floor32(('cd', 36).length) + 224)
                        mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 548 len ceil32(0, Mask(224, 0, floor32(('cd', 36).length) + 224))] = mem[ceil32(('cd', 36).length) + 160 len ceil32(0, Mask(224, 0, floor32(('cd', 36).length) + 224))]
                        if not floor32(('cd', 36).length) + 224 % 32:
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 388 len 0, Mask(224, 0, floor32(('cd', 36).length) + 224) + 160]
                        else:
                            mem[floor32(0, Mask(224, 0, floor32(('cd', 36).length) + 224)) + floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 548] = mem[floor32(0, Mask(224, 0, floor32(('cd', 36).length) + 224)) + floor32(('cd', 36).length) + ceil32(('cd', 36).length) + -(floor32(('cd', 36).length) + 224 % 32) + 580 len floor32(('cd', 36).length) + 224 % 32]
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 388 len floor32(0, Mask(224, 0, floor32(('cd', 36).length) + 224)) + 192]
                else:
                    if not ('cd', 36).length % 32:
                        mem[ceil32(('cd', 36).length) + 128] = ('cd', 36).length + 192
                        mem[64] = ('cd', 36).length + ceil32(('cd', 36).length) + 352
                        mem[('cd', 36).length + ceil32(('cd', 36).length) + 352] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[('cd', 36).length + ceil32(('cd', 36).length) + 356] = 0
                        mem[('cd', 36).length + ceil32(('cd', 36).length) + 388] = 0
                        mem[('cd', 36).length + ceil32(('cd', 36).length) + 420] = this.address
                        mem[('cd', 36).length + ceil32(('cd', 36).length) + 452] = 128
                        mem[('cd', 36).length + ceil32(('cd', 36).length) + 484] = 0, Mask(224, 0, ('cd', 36).length + 192)
                        mem[('cd', 36).length + ceil32(('cd', 36).length) + 516 len ceil32(0, Mask(224, 0, ('cd', 36).length + 192))] = mem[ceil32(('cd', 36).length) + 160 len ceil32(0, Mask(224, 0, ('cd', 36).length + 192))]
                        if not ('cd', 36).length + 192 % 32:
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args mem[('cd', 36).length + ceil32(('cd', 36).length) + 356 len 0, Mask(224, 0, ('cd', 36).length + 192) + 160]
                        else:
                            mem[floor32(0, Mask(224, 0, ('cd', 36).length + 192)) + ('cd', 36).length + ceil32(('cd', 36).length) + 516] = mem[floor32(0, Mask(224, 0, ('cd', 36).length + 192)) + ('cd', 36).length + ceil32(('cd', 36).length) + -(('cd', 36).length + 192 % 32) + 548 len ('cd', 36).length + 192 % 32]
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args mem[('cd', 36).length + ceil32(('cd', 36).length) + 356 len floor32(0, Mask(224, 0, ('cd', 36).length + 192)) + 192]
                    else:
                        mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 352] = mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + -(('cd', 36).length % 32) + 384 len ('cd', 36).length % 32]
                        mem[ceil32(('cd', 36).length) + 128] = floor32(('cd', 36).length) + 224
                        mem[64] = floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 384
                        mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 384] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 388] = 0
                        mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 420] = 0
                        mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 452] = this.address
                        mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 484] = 128
                        mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 516] = 0, Mask(224, 0, floor32(('cd', 36).length) + 224)
                        mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 548 len ceil32(0, Mask(224, 0, floor32(('cd', 36).length) + 224))] = mem[ceil32(('cd', 36).length) + 160 len ceil32(0, Mask(224, 0, floor32(('cd', 36).length) + 224))]
                        if not floor32(('cd', 36).length) + 224 % 32:
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 388 len 0, Mask(224, 0, floor32(('cd', 36).length) + 224) + 160]
                        else:
                            mem[floor32(0, Mask(224, 0, floor32(('cd', 36).length) + 224)) + floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 548] = mem[floor32(0, Mask(224, 0, floor32(('cd', 36).length) + 224)) + floor32(('cd', 36).length) + ceil32(('cd', 36).length) + -(floor32(('cd', 36).length) + 224 % 32) + 580 len floor32(('cd', 36).length) + 224 % 32]
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 388 len floor32(0, Mask(224, 0, floor32(('cd', 36).length) + 224)) + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            call stor0 with:
               value eth.balance(this.address) wei
                 gas gas_remaining wei
            if not ext_call.success:
                revert with 0, 'Failed'
        else:
            require ext_code.size(address(('cd', 36)[3]))
            call address(('cd', 36)[3]).underlying() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[96] = ('cd', 36).length
            mem[128 len ('cd', 36).length] = call.data[cd[36] + 36 len ('cd', 36).length]
            mem[('cd', 36).length + 128] = 0
            require ext_code.size(0xbcfccbde45ce874adcb698cc183debcf17952812)
            staticcall 0xbcfccbde45ce874adcb698cc183debcf17952812.getPair(address rg1, address rg2) with:
                    gas gas_remaining wei
                   args address(ext_call.return_data[0]), stor2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if address(ext_call.return_data[0]) != ext_call.return_data[12 len 20]:
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
                mem[ceil32(('cd', 36).length) + 128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[ceil32(('cd', 36).length) + 160] = 0
                mem[ceil32(('cd', 36).length) + 192] = address(ext_call.return_data[0])
                mem[ceil32(('cd', 36).length) + 224] = stor2
                mem[ceil32(('cd', 36).length) + 256] = cd[4]
                mem[ceil32(('cd', 36).length) + 288] = 160
                mem[ceil32(('cd', 36).length) + 320] = ('cd', 36).length
                mem[ceil32(('cd', 36).length) + 352 len ceil32(('cd', 36).length)] = call.data[cd[36] + 36 len ('cd', 36).length], mem[('cd', 36).length + 128 len ceil32(('cd', 36).length) - ('cd', 36).length]
                if address(ext_call.return_data[0]) == address(ext_call.return_data[0]):
                    if address(ext_call.return_data[0]) == ext_call.return_data[12 len 20]:
                        if not ('cd', 36).length % 32:
                            mem[ceil32(('cd', 36).length) + 128] = ('cd', 36).length + 192
                            mem[64] = ('cd', 36).length + ceil32(('cd', 36).length) + 352
                            mem[('cd', 36).length + ceil32(('cd', 36).length) + 352] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[('cd', 36).length + ceil32(('cd', 36).length) + 356] = cd[4]
                            mem[('cd', 36).length + ceil32(('cd', 36).length) + 388] = cd[4]
                            mem[('cd', 36).length + ceil32(('cd', 36).length) + 420] = this.address
                            mem[('cd', 36).length + ceil32(('cd', 36).length) + 452] = 128
                            mem[('cd', 36).length + ceil32(('cd', 36).length) + 484] = 0, Mask(224, 0, ('cd', 36).length + 192)
                            mem[('cd', 36).length + ceil32(('cd', 36).length) + 516 len ceil32(0, Mask(224, 0, ('cd', 36).length + 192))] = mem[ceil32(('cd', 36).length) + 160 len ceil32(0, Mask(224, 0, ('cd', 36).length + 192))]
                            if not ('cd', 36).length + 192 % 32:
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args mem[('cd', 36).length + ceil32(('cd', 36).length) + 356 len 0, Mask(224, 0, ('cd', 36).length + 192) + 160]
                            else:
                                mem[floor32(0, Mask(224, 0, ('cd', 36).length + 192)) + ('cd', 36).length + ceil32(('cd', 36).length) + 516] = mem[floor32(0, Mask(224, 0, ('cd', 36).length + 192)) + ('cd', 36).length + ceil32(('cd', 36).length) + -(('cd', 36).length + 192 % 32) + 548 len ('cd', 36).length + 192 % 32]
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args mem[('cd', 36).length + ceil32(('cd', 36).length) + 356 len floor32(0, Mask(224, 0, ('cd', 36).length + 192)) + 192]
                        else:
                            mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 352] = mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + -(('cd', 36).length % 32) + 384 len ('cd', 36).length % 32]
                            mem[ceil32(('cd', 36).length) + 128] = floor32(('cd', 36).length) + 224
                            mem[64] = floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 384
                            mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 384] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 388] = cd[4]
                            mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 420] = cd[4]
                            mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 452] = this.address
                            mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 484] = 128
                            mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 516] = 0, Mask(224, 0, floor32(('cd', 36).length) + 224)
                            mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 548 len ceil32(0, Mask(224, 0, floor32(('cd', 36).length) + 224))] = mem[ceil32(('cd', 36).length) + 160 len ceil32(0, Mask(224, 0, floor32(('cd', 36).length) + 224))]
                            if not floor32(('cd', 36).length) + 224 % 32:
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 388 len 0, Mask(224, 0, floor32(('cd', 36).length) + 224) + 160]
                            else:
                                mem[floor32(0, Mask(224, 0, floor32(('cd', 36).length) + 224)) + floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 548] = mem[floor32(0, Mask(224, 0, floor32(('cd', 36).length) + 224)) + floor32(('cd', 36).length) + ceil32(('cd', 36).length) + -(floor32(('cd', 36).length) + 224 % 32) + 580 len floor32(('cd', 36).length) + 224 % 32]
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 388 len floor32(0, Mask(224, 0, floor32(('cd', 36).length) + 224)) + 192]
                    else:
                        if not ('cd', 36).length % 32:
                            mem[ceil32(('cd', 36).length) + 128] = ('cd', 36).length + 192
                            mem[64] = ('cd', 36).length + ceil32(('cd', 36).length) + 352
                            mem[('cd', 36).length + ceil32(('cd', 36).length) + 352] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[('cd', 36).length + ceil32(('cd', 36).length) + 356] = cd[4]
                            mem[('cd', 36).length + ceil32(('cd', 36).length) + 388] = 0
                            mem[('cd', 36).length + ceil32(('cd', 36).length) + 420] = this.address
                            mem[('cd', 36).length + ceil32(('cd', 36).length) + 452] = 128
                            mem[('cd', 36).length + ceil32(('cd', 36).length) + 484] = 0, Mask(224, 0, ('cd', 36).length + 192)
                            mem[('cd', 36).length + ceil32(('cd', 36).length) + 516 len ceil32(0, Mask(224, 0, ('cd', 36).length + 192))] = mem[ceil32(('cd', 36).length) + 160 len ceil32(0, Mask(224, 0, ('cd', 36).length + 192))]
                            if not ('cd', 36).length + 192 % 32:
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args mem[('cd', 36).length + ceil32(('cd', 36).length) + 356 len 0, Mask(224, 0, ('cd', 36).length + 192) + 160]
                            else:
                                mem[floor32(0, Mask(224, 0, ('cd', 36).length + 192)) + ('cd', 36).length + ceil32(('cd', 36).length) + 516] = mem[floor32(0, Mask(224, 0, ('cd', 36).length + 192)) + ('cd', 36).length + ceil32(('cd', 36).length) + -(('cd', 36).length + 192 % 32) + 548 len ('cd', 36).length + 192 % 32]
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args mem[('cd', 36).length + ceil32(('cd', 36).length) + 356 len floor32(0, Mask(224, 0, ('cd', 36).length + 192)) + 192]
                        else:
                            mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 352] = mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + -(('cd', 36).length % 32) + 384 len ('cd', 36).length % 32]
                            mem[ceil32(('cd', 36).length) + 128] = floor32(('cd', 36).length) + 224
                            mem[64] = floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 384
                            mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 384] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 388] = cd[4]
                            mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 420] = 0
                            mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 452] = this.address
                            mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 484] = 128
                            mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 516] = 0, Mask(224, 0, floor32(('cd', 36).length) + 224)
                            mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 548 len ceil32(0, Mask(224, 0, floor32(('cd', 36).length) + 224))] = mem[ceil32(('cd', 36).length) + 160 len ceil32(0, Mask(224, 0, floor32(('cd', 36).length) + 224))]
                            if not floor32(('cd', 36).length) + 224 % 32:
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 388 len 0, Mask(224, 0, floor32(('cd', 36).length) + 224) + 160]
                            else:
                                mem[floor32(0, Mask(224, 0, floor32(('cd', 36).length) + 224)) + floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 548] = mem[floor32(0, Mask(224, 0, floor32(('cd', 36).length) + 224)) + floor32(('cd', 36).length) + ceil32(('cd', 36).length) + -(floor32(('cd', 36).length) + 224 % 32) + 580 len floor32(('cd', 36).length) + 224 % 32]
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 388 len floor32(0, Mask(224, 0, floor32(('cd', 36).length) + 224)) + 192]
                else:
                    if address(ext_call.return_data[0]) == ext_call.return_data[12 len 20]:
                        if not ('cd', 36).length % 32:
                            mem[ceil32(('cd', 36).length) + 128] = ('cd', 36).length + 192
                            mem[64] = ('cd', 36).length + ceil32(('cd', 36).length) + 352
                            mem[('cd', 36).length + ceil32(('cd', 36).length) + 352] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[('cd', 36).length + ceil32(('cd', 36).length) + 356] = 0
                            mem[('cd', 36).length + ceil32(('cd', 36).length) + 388] = cd[4]
                            mem[('cd', 36).length + ceil32(('cd', 36).length) + 420] = this.address
                            mem[('cd', 36).length + ceil32(('cd', 36).length) + 452] = 128
                            mem[('cd', 36).length + ceil32(('cd', 36).length) + 484] = 0, Mask(224, 0, ('cd', 36).length + 192)
                            mem[('cd', 36).length + ceil32(('cd', 36).length) + 516 len ceil32(0, Mask(224, 0, ('cd', 36).length + 192))] = mem[ceil32(('cd', 36).length) + 160 len ceil32(0, Mask(224, 0, ('cd', 36).length + 192))]
                            if not ('cd', 36).length + 192 % 32:
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args mem[('cd', 36).length + ceil32(('cd', 36).length) + 356 len 0, Mask(224, 0, ('cd', 36).length + 192) + 160]
                            else:
                                mem[floor32(0, Mask(224, 0, ('cd', 36).length + 192)) + ('cd', 36).length + ceil32(('cd', 36).length) + 516] = mem[floor32(0, Mask(224, 0, ('cd', 36).length + 192)) + ('cd', 36).length + ceil32(('cd', 36).length) + -(('cd', 36).length + 192 % 32) + 548 len ('cd', 36).length + 192 % 32]
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args mem[('cd', 36).length + ceil32(('cd', 36).length) + 356 len floor32(0, Mask(224, 0, ('cd', 36).length + 192)) + 192]
                        else:
                            mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 352] = mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + -(('cd', 36).length % 32) + 384 len ('cd', 36).length % 32]
                            mem[ceil32(('cd', 36).length) + 128] = floor32(('cd', 36).length) + 224
                            mem[64] = floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 384
                            mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 384] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 388] = 0
                            mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 420] = cd[4]
                            mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 452] = this.address
                            mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 484] = 128
                            mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 516] = 0, Mask(224, 0, floor32(('cd', 36).length) + 224)
                            mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 548 len ceil32(0, Mask(224, 0, floor32(('cd', 36).length) + 224))] = mem[ceil32(('cd', 36).length) + 160 len ceil32(0, Mask(224, 0, floor32(('cd', 36).length) + 224))]
                            if not floor32(('cd', 36).length) + 224 % 32:
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 388 len 0, Mask(224, 0, floor32(('cd', 36).length) + 224) + 160]
                            else:
                                mem[floor32(0, Mask(224, 0, floor32(('cd', 36).length) + 224)) + floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 548] = mem[floor32(0, Mask(224, 0, floor32(('cd', 36).length) + 224)) + floor32(('cd', 36).length) + ceil32(('cd', 36).length) + -(floor32(('cd', 36).length) + 224 % 32) + 580 len floor32(('cd', 36).length) + 224 % 32]
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 388 len floor32(0, Mask(224, 0, floor32(('cd', 36).length) + 224)) + 192]
                    else:
                        if not ('cd', 36).length % 32:
                            mem[ceil32(('cd', 36).length) + 128] = ('cd', 36).length + 192
                            mem[64] = ('cd', 36).length + ceil32(('cd', 36).length) + 352
                            mem[('cd', 36).length + ceil32(('cd', 36).length) + 352] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[('cd', 36).length + ceil32(('cd', 36).length) + 356] = 0
                            mem[('cd', 36).length + ceil32(('cd', 36).length) + 388] = 0
                            mem[('cd', 36).length + ceil32(('cd', 36).length) + 420] = this.address
                            mem[('cd', 36).length + ceil32(('cd', 36).length) + 452] = 128
                            mem[('cd', 36).length + ceil32(('cd', 36).length) + 484] = 0, Mask(224, 0, ('cd', 36).length + 192)
                            mem[('cd', 36).length + ceil32(('cd', 36).length) + 516 len ceil32(0, Mask(224, 0, ('cd', 36).length + 192))] = mem[ceil32(('cd', 36).length) + 160 len ceil32(0, Mask(224, 0, ('cd', 36).length + 192))]
                            if not ('cd', 36).length + 192 % 32:
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args mem[('cd', 36).length + ceil32(('cd', 36).length) + 356 len 0, Mask(224, 0, ('cd', 36).length + 192) + 160]
                            else:
                                mem[floor32(0, Mask(224, 0, ('cd', 36).length + 192)) + ('cd', 36).length + ceil32(('cd', 36).length) + 516] = mem[floor32(0, Mask(224, 0, ('cd', 36).length + 192)) + ('cd', 36).length + ceil32(('cd', 36).length) + -(('cd', 36).length + 192 % 32) + 548 len ('cd', 36).length + 192 % 32]
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args mem[('cd', 36).length + ceil32(('cd', 36).length) + 356 len floor32(0, Mask(224, 0, ('cd', 36).length + 192)) + 192]
                        else:
                            mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 352] = mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + -(('cd', 36).length % 32) + 384 len ('cd', 36).length % 32]
                            mem[ceil32(('cd', 36).length) + 128] = floor32(('cd', 36).length) + 224
                            mem[64] = floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 384
                            mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 384] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 388] = 0
                            mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 420] = 0
                            mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 452] = this.address
                            mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 484] = 128
                            mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 516] = 0, Mask(224, 0, floor32(('cd', 36).length) + 224)
                            mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 548 len ceil32(0, Mask(224, 0, floor32(('cd', 36).length) + 224))] = mem[ceil32(('cd', 36).length) + 160 len ceil32(0, Mask(224, 0, floor32(('cd', 36).length) + 224))]
                            if not floor32(('cd', 36).length) + 224 % 32:
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 388 len 0, Mask(224, 0, floor32(('cd', 36).length) + 224) + 160]
                            else:
                                mem[floor32(0, Mask(224, 0, floor32(('cd', 36).length) + 224)) + floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 548] = mem[floor32(0, Mask(224, 0, floor32(('cd', 36).length) + 224)) + floor32(('cd', 36).length) + ceil32(('cd', 36).length) + -(floor32(('cd', 36).length) + 224 % 32) + 580 len floor32(('cd', 36).length) + 224 % 32]
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 388 len floor32(0, Mask(224, 0, floor32(('cd', 36).length) + 224)) + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                call stor0 with:
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
                                mem[ceil32(('cd', 36).length) + 230 len 30]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).token1() with:
                        gas gas_remaining wei
                mem[ceil32(('cd', 36).length) + 128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[ceil32(('cd', 36).length) + 160] = 1
                mem[ceil32(('cd', 36).length) + 192] = address(ext_call.return_data[0])
                mem[ceil32(('cd', 36).length) + 224] = stor2
                mem[ceil32(('cd', 36).length) + 256] = cd[4]
                mem[ceil32(('cd', 36).length) + 288] = 160
                mem[ceil32(('cd', 36).length) + 320] = ('cd', 36).length
                mem[ceil32(('cd', 36).length) + 352 len ceil32(('cd', 36).length)] = call.data[cd[36] + 36 len ('cd', 36).length], mem[('cd', 36).length + 128 len ceil32(('cd', 36).length) - ('cd', 36).length]
                if address(ext_call.return_data[0]) == address(ext_call.return_data[0]):
                    if address(ext_call.return_data[0]) == ext_call.return_data[12 len 20]:
                        if not ('cd', 36).length % 32:
                            mem[ceil32(('cd', 36).length) + 128] = ('cd', 36).length + 192
                            mem[64] = ('cd', 36).length + ceil32(('cd', 36).length) + 352
                            mem[('cd', 36).length + ceil32(('cd', 36).length) + 352] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[('cd', 36).length + ceil32(('cd', 36).length) + 356] = cd[4]
                            mem[('cd', 36).length + ceil32(('cd', 36).length) + 388] = cd[4]
                            mem[('cd', 36).length + ceil32(('cd', 36).length) + 420] = this.address
                            mem[('cd', 36).length + ceil32(('cd', 36).length) + 452] = 128
                            mem[('cd', 36).length + ceil32(('cd', 36).length) + 484] = 0, Mask(224, 0, ('cd', 36).length + 192)
                            mem[('cd', 36).length + ceil32(('cd', 36).length) + 516 len ceil32(0, Mask(224, 0, ('cd', 36).length + 192))] = mem[ceil32(('cd', 36).length) + 160 len ceil32(0, Mask(224, 0, ('cd', 36).length + 192))]
                            if not ('cd', 36).length + 192 % 32:
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args mem[('cd', 36).length + ceil32(('cd', 36).length) + 356 len 0, Mask(224, 0, ('cd', 36).length + 192) + 160]
                            else:
                                mem[floor32(0, Mask(224, 0, ('cd', 36).length + 192)) + ('cd', 36).length + ceil32(('cd', 36).length) + 516] = mem[floor32(0, Mask(224, 0, ('cd', 36).length + 192)) + ('cd', 36).length + ceil32(('cd', 36).length) + -(('cd', 36).length + 192 % 32) + 548 len ('cd', 36).length + 192 % 32]
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args mem[('cd', 36).length + ceil32(('cd', 36).length) + 356 len floor32(0, Mask(224, 0, ('cd', 36).length + 192)) + 192]
                        else:
                            mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 352] = mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + -(('cd', 36).length % 32) + 384 len ('cd', 36).length % 32]
                            mem[ceil32(('cd', 36).length) + 128] = floor32(('cd', 36).length) + 224
                            mem[64] = floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 384
                            mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 384] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 388] = cd[4]
                            mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 420] = cd[4]
                            mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 452] = this.address
                            mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 484] = 128
                            mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 516] = 0, Mask(224, 0, floor32(('cd', 36).length) + 224)
                            mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 548 len ceil32(0, Mask(224, 0, floor32(('cd', 36).length) + 224))] = mem[ceil32(('cd', 36).length) + 160 len ceil32(0, Mask(224, 0, floor32(('cd', 36).length) + 224))]
                            if not floor32(('cd', 36).length) + 224 % 32:
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 388 len 0, Mask(224, 0, floor32(('cd', 36).length) + 224) + 160]
                            else:
                                mem[floor32(0, Mask(224, 0, floor32(('cd', 36).length) + 224)) + floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 548] = mem[floor32(0, Mask(224, 0, floor32(('cd', 36).length) + 224)) + floor32(('cd', 36).length) + ceil32(('cd', 36).length) + -(floor32(('cd', 36).length) + 224 % 32) + 580 len floor32(('cd', 36).length) + 224 % 32]
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 388 len floor32(0, Mask(224, 0, floor32(('cd', 36).length) + 224)) + 192]
                    else:
                        if not ('cd', 36).length % 32:
                            mem[ceil32(('cd', 36).length) + 128] = ('cd', 36).length + 192
                            mem[64] = ('cd', 36).length + ceil32(('cd', 36).length) + 352
                            mem[('cd', 36).length + ceil32(('cd', 36).length) + 352] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[('cd', 36).length + ceil32(('cd', 36).length) + 356] = cd[4]
                            mem[('cd', 36).length + ceil32(('cd', 36).length) + 388] = 0
                            mem[('cd', 36).length + ceil32(('cd', 36).length) + 420] = this.address
                            mem[('cd', 36).length + ceil32(('cd', 36).length) + 452] = 128
                            mem[('cd', 36).length + ceil32(('cd', 36).length) + 484] = 0, Mask(224, 0, ('cd', 36).length + 192)
                            mem[('cd', 36).length + ceil32(('cd', 36).length) + 516 len ceil32(0, Mask(224, 0, ('cd', 36).length + 192))] = mem[ceil32(('cd', 36).length) + 160 len ceil32(0, Mask(224, 0, ('cd', 36).length + 192))]
                            if not ('cd', 36).length + 192 % 32:
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args mem[('cd', 36).length + ceil32(('cd', 36).length) + 356 len 0, Mask(224, 0, ('cd', 36).length + 192) + 160]
                            else:
                                mem[floor32(0, Mask(224, 0, ('cd', 36).length + 192)) + ('cd', 36).length + ceil32(('cd', 36).length) + 516] = mem[floor32(0, Mask(224, 0, ('cd', 36).length + 192)) + ('cd', 36).length + ceil32(('cd', 36).length) + -(('cd', 36).length + 192 % 32) + 548 len ('cd', 36).length + 192 % 32]
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args mem[('cd', 36).length + ceil32(('cd', 36).length) + 356 len floor32(0, Mask(224, 0, ('cd', 36).length + 192)) + 192]
                        else:
                            mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 352] = mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + -(('cd', 36).length % 32) + 384 len ('cd', 36).length % 32]
                            mem[ceil32(('cd', 36).length) + 128] = floor32(('cd', 36).length) + 224
                            mem[64] = floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 384
                            mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 384] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 388] = cd[4]
                            mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 420] = 0
                            mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 452] = this.address
                            mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 484] = 128
                            mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 516] = 0, Mask(224, 0, floor32(('cd', 36).length) + 224)
                            mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 548 len ceil32(0, Mask(224, 0, floor32(('cd', 36).length) + 224))] = mem[ceil32(('cd', 36).length) + 160 len ceil32(0, Mask(224, 0, floor32(('cd', 36).length) + 224))]
                            if not floor32(('cd', 36).length) + 224 % 32:
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 388 len 0, Mask(224, 0, floor32(('cd', 36).length) + 224) + 160]
                            else:
                                mem[floor32(0, Mask(224, 0, floor32(('cd', 36).length) + 224)) + floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 548] = mem[floor32(0, Mask(224, 0, floor32(('cd', 36).length) + 224)) + floor32(('cd', 36).length) + ceil32(('cd', 36).length) + -(floor32(('cd', 36).length) + 224 % 32) + 580 len floor32(('cd', 36).length) + 224 % 32]
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 388 len floor32(0, Mask(224, 0, floor32(('cd', 36).length) + 224)) + 192]
                else:
                    if address(ext_call.return_data[0]) == ext_call.return_data[12 len 20]:
                        if not ('cd', 36).length % 32:
                            mem[ceil32(('cd', 36).length) + 128] = ('cd', 36).length + 192
                            mem[64] = ('cd', 36).length + ceil32(('cd', 36).length) + 352
                            mem[('cd', 36).length + ceil32(('cd', 36).length) + 352] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[('cd', 36).length + ceil32(('cd', 36).length) + 356] = 0
                            mem[('cd', 36).length + ceil32(('cd', 36).length) + 388] = cd[4]
                            mem[('cd', 36).length + ceil32(('cd', 36).length) + 420] = this.address
                            mem[('cd', 36).length + ceil32(('cd', 36).length) + 452] = 128
                            mem[('cd', 36).length + ceil32(('cd', 36).length) + 484] = 0, Mask(224, 0, ('cd', 36).length + 192)
                            mem[('cd', 36).length + ceil32(('cd', 36).length) + 516 len ceil32(0, Mask(224, 0, ('cd', 36).length + 192))] = mem[ceil32(('cd', 36).length) + 160 len ceil32(0, Mask(224, 0, ('cd', 36).length + 192))]
                            if not ('cd', 36).length + 192 % 32:
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args mem[('cd', 36).length + ceil32(('cd', 36).length) + 356 len 0, Mask(224, 0, ('cd', 36).length + 192) + 160]
                            else:
                                mem[floor32(0, Mask(224, 0, ('cd', 36).length + 192)) + ('cd', 36).length + ceil32(('cd', 36).length) + 516] = mem[floor32(0, Mask(224, 0, ('cd', 36).length + 192)) + ('cd', 36).length + ceil32(('cd', 36).length) + -(('cd', 36).length + 192 % 32) + 548 len ('cd', 36).length + 192 % 32]
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args mem[('cd', 36).length + ceil32(('cd', 36).length) + 356 len floor32(0, Mask(224, 0, ('cd', 36).length + 192)) + 192]
                        else:
                            mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 352] = mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + -(('cd', 36).length % 32) + 384 len ('cd', 36).length % 32]
                            mem[ceil32(('cd', 36).length) + 128] = floor32(('cd', 36).length) + 224
                            mem[64] = floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 384
                            mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 384] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 388] = 0
                            mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 420] = cd[4]
                            mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 452] = this.address
                            mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 484] = 128
                            mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 516] = 0, Mask(224, 0, floor32(('cd', 36).length) + 224)
                            mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 548 len ceil32(0, Mask(224, 0, floor32(('cd', 36).length) + 224))] = mem[ceil32(('cd', 36).length) + 160 len ceil32(0, Mask(224, 0, floor32(('cd', 36).length) + 224))]
                            if not floor32(('cd', 36).length) + 224 % 32:
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 388 len 0, Mask(224, 0, floor32(('cd', 36).length) + 224) + 160]
                            else:
                                mem[floor32(0, Mask(224, 0, floor32(('cd', 36).length) + 224)) + floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 548] = mem[floor32(0, Mask(224, 0, floor32(('cd', 36).length) + 224)) + floor32(('cd', 36).length) + ceil32(('cd', 36).length) + -(floor32(('cd', 36).length) + 224 % 32) + 580 len floor32(('cd', 36).length) + 224 % 32]
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 388 len floor32(0, Mask(224, 0, floor32(('cd', 36).length) + 224)) + 192]
                    else:
                        if not ('cd', 36).length % 32:
                            mem[ceil32(('cd', 36).length) + 128] = ('cd', 36).length + 192
                            mem[64] = ('cd', 36).length + ceil32(('cd', 36).length) + 352
                            mem[('cd', 36).length + ceil32(('cd', 36).length) + 352] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[('cd', 36).length + ceil32(('cd', 36).length) + 356] = 0
                            mem[('cd', 36).length + ceil32(('cd', 36).length) + 388] = 0
                            mem[('cd', 36).length + ceil32(('cd', 36).length) + 420] = this.address
                            mem[('cd', 36).length + ceil32(('cd', 36).length) + 452] = 128
                            mem[('cd', 36).length + ceil32(('cd', 36).length) + 484] = 0, Mask(224, 0, ('cd', 36).length + 192)
                            mem[('cd', 36).length + ceil32(('cd', 36).length) + 516 len ceil32(0, Mask(224, 0, ('cd', 36).length + 192))] = mem[ceil32(('cd', 36).length) + 160 len ceil32(0, Mask(224, 0, ('cd', 36).length + 192))]
                            if not ('cd', 36).length + 192 % 32:
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args mem[('cd', 36).length + ceil32(('cd', 36).length) + 356 len 0, Mask(224, 0, ('cd', 36).length + 192) + 160]
                            else:
                                mem[floor32(0, Mask(224, 0, ('cd', 36).length + 192)) + ('cd', 36).length + ceil32(('cd', 36).length) + 516] = mem[floor32(0, Mask(224, 0, ('cd', 36).length + 192)) + ('cd', 36).length + ceil32(('cd', 36).length) + -(('cd', 36).length + 192 % 32) + 548 len ('cd', 36).length + 192 % 32]
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args mem[('cd', 36).length + ceil32(('cd', 36).length) + 356 len floor32(0, Mask(224, 0, ('cd', 36).length + 192)) + 192]
                        else:
                            mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 352] = mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + -(('cd', 36).length % 32) + 384 len ('cd', 36).length % 32]
                            mem[ceil32(('cd', 36).length) + 128] = floor32(('cd', 36).length) + 224
                            mem[64] = floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 384
                            mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 384] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 388] = 0
                            mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 420] = 0
                            mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 452] = this.address
                            mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 484] = 128
                            mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 516] = 0, Mask(224, 0, floor32(('cd', 36).length) + 224)
                            mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 548 len ceil32(0, Mask(224, 0, floor32(('cd', 36).length) + 224))] = mem[ceil32(('cd', 36).length) + 160 len ceil32(0, Mask(224, 0, floor32(('cd', 36).length) + 224))]
                            if not floor32(('cd', 36).length) + 224 % 32:
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 388 len 0, Mask(224, 0, floor32(('cd', 36).length) + 224) + 160]
                            else:
                                mem[floor32(0, Mask(224, 0, floor32(('cd', 36).length) + 224)) + floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 548] = mem[floor32(0, Mask(224, 0, floor32(('cd', 36).length) + 224)) + floor32(('cd', 36).length) + ceil32(('cd', 36).length) + -(floor32(('cd', 36).length) + 224 % 32) + 580 len floor32(('cd', 36).length) + 224 % 32]
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 388 len floor32(0, Mask(224, 0, floor32(('cd', 36).length) + 224)) + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0xa9059cbb with:
                     gas gas_remaining wei
                    args stor0, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
    else:
        if ('cd', 36)[5]:
            mem[96] = ('cd', 36).length
            mem[128 len ('cd', 36).length] = call.data[cd[36] + 36 len ('cd', 36).length]
            mem[('cd', 36).length + 128] = 0
            require ext_code.size(0xbcfccbde45ce874adcb698cc183debcf17952812)
            staticcall 0xbcfccbde45ce874adcb698cc183debcf17952812.getPair(address rg1, address rg2) with:
                    gas gas_remaining wei
                   args stor2, 0xe9e7cea3dedca5984780bafc599bd69add087d56
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[12 len 20]:
                revert with 0, 
                            32,
                            34,
                            0xfe526571756573746564205f746f6b656e206973206e6f7420617661696c61626c65,
                            mem[ceil32(('cd', 36).length) + 230 len 30]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).token1() with:
                    gas gas_remaining wei
            mem[ceil32(('cd', 36).length) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[ceil32(('cd', 36).length) + 160] = 1
            mem[ceil32(('cd', 36).length) + 192] = stor2
            mem[ceil32(('cd', 36).length) + 224] = 0xe9e7cea3dedca5984780bafc599bd69add087d56
            mem[ceil32(('cd', 36).length) + 256] = cd[4]
            mem[ceil32(('cd', 36).length) + 288] = 160
            mem[ceil32(('cd', 36).length) + 320] = ('cd', 36).length
            mem[ceil32(('cd', 36).length) + 352 len ceil32(('cd', 36).length)] = call.data[cd[36] + 36 len ('cd', 36).length], mem[('cd', 36).length + 128 len ceil32(('cd', 36).length) - ('cd', 36).length]
            if stor2 == address(ext_call.return_data[0]):
                if stor2 == ext_call.return_data[12 len 20]:
                    if not ('cd', 36).length % 32:
                        mem[ceil32(('cd', 36).length) + 128] = ('cd', 36).length + 192
                        mem[64] = ('cd', 36).length + ceil32(('cd', 36).length) + 352
                        mem[('cd', 36).length + ceil32(('cd', 36).length) + 352] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[('cd', 36).length + ceil32(('cd', 36).length) + 356] = cd[4]
                        mem[('cd', 36).length + ceil32(('cd', 36).length) + 388] = cd[4]
                        mem[('cd', 36).length + ceil32(('cd', 36).length) + 420] = this.address
                        mem[('cd', 36).length + ceil32(('cd', 36).length) + 452] = 128
                        mem[('cd', 36).length + ceil32(('cd', 36).length) + 484] = 0, Mask(224, 0, ('cd', 36).length + 192)
                        mem[('cd', 36).length + ceil32(('cd', 36).length) + 516 len ceil32(0, Mask(224, 0, ('cd', 36).length + 192))] = mem[ceil32(('cd', 36).length) + 160 len ceil32(0, Mask(224, 0, ('cd', 36).length + 192))]
                        if not ('cd', 36).length + 192 % 32:
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args mem[('cd', 36).length + ceil32(('cd', 36).length) + 356 len 0, Mask(224, 0, ('cd', 36).length + 192) + 160]
                        else:
                            mem[floor32(0, Mask(224, 0, ('cd', 36).length + 192)) + ('cd', 36).length + ceil32(('cd', 36).length) + 516] = mem[floor32(0, Mask(224, 0, ('cd', 36).length + 192)) + ('cd', 36).length + ceil32(('cd', 36).length) + -(('cd', 36).length + 192 % 32) + 548 len ('cd', 36).length + 192 % 32]
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args mem[('cd', 36).length + ceil32(('cd', 36).length) + 356 len floor32(0, Mask(224, 0, ('cd', 36).length + 192)) + 192]
                    else:
                        mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 352] = mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + -(('cd', 36).length % 32) + 384 len ('cd', 36).length % 32]
                        mem[ceil32(('cd', 36).length) + 128] = floor32(('cd', 36).length) + 224
                        mem[64] = floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 384
                        mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 384] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 388] = cd[4]
                        mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 420] = cd[4]
                        mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 452] = this.address
                        mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 484] = 128
                        mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 516] = 0, Mask(224, 0, floor32(('cd', 36).length) + 224)
                        mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 548 len ceil32(0, Mask(224, 0, floor32(('cd', 36).length) + 224))] = mem[ceil32(('cd', 36).length) + 160 len ceil32(0, Mask(224, 0, floor32(('cd', 36).length) + 224))]
                        if not floor32(('cd', 36).length) + 224 % 32:
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 388 len 0, Mask(224, 0, floor32(('cd', 36).length) + 224) + 160]
                        else:
                            mem[floor32(0, Mask(224, 0, floor32(('cd', 36).length) + 224)) + floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 548] = mem[floor32(0, Mask(224, 0, floor32(('cd', 36).length) + 224)) + floor32(('cd', 36).length) + ceil32(('cd', 36).length) + -(floor32(('cd', 36).length) + 224 % 32) + 580 len floor32(('cd', 36).length) + 224 % 32]
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 388 len floor32(0, Mask(224, 0, floor32(('cd', 36).length) + 224)) + 192]
                else:
                    if not ('cd', 36).length % 32:
                        mem[ceil32(('cd', 36).length) + 128] = ('cd', 36).length + 192
                        mem[64] = ('cd', 36).length + ceil32(('cd', 36).length) + 352
                        mem[('cd', 36).length + ceil32(('cd', 36).length) + 352] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[('cd', 36).length + ceil32(('cd', 36).length) + 356] = cd[4]
                        mem[('cd', 36).length + ceil32(('cd', 36).length) + 388] = 0
                        mem[('cd', 36).length + ceil32(('cd', 36).length) + 420] = this.address
                        mem[('cd', 36).length + ceil32(('cd', 36).length) + 452] = 128
                        mem[('cd', 36).length + ceil32(('cd', 36).length) + 484] = 0, Mask(224, 0, ('cd', 36).length + 192)
                        mem[('cd', 36).length + ceil32(('cd', 36).length) + 516 len ceil32(0, Mask(224, 0, ('cd', 36).length + 192))] = mem[ceil32(('cd', 36).length) + 160 len ceil32(0, Mask(224, 0, ('cd', 36).length + 192))]
                        if not ('cd', 36).length + 192 % 32:
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args mem[('cd', 36).length + ceil32(('cd', 36).length) + 356 len 0, Mask(224, 0, ('cd', 36).length + 192) + 160]
                        else:
                            mem[floor32(0, Mask(224, 0, ('cd', 36).length + 192)) + ('cd', 36).length + ceil32(('cd', 36).length) + 516] = mem[floor32(0, Mask(224, 0, ('cd', 36).length + 192)) + ('cd', 36).length + ceil32(('cd', 36).length) + -(('cd', 36).length + 192 % 32) + 548 len ('cd', 36).length + 192 % 32]
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args mem[('cd', 36).length + ceil32(('cd', 36).length) + 356 len floor32(0, Mask(224, 0, ('cd', 36).length + 192)) + 192]
                    else:
                        mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 352] = mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + -(('cd', 36).length % 32) + 384 len ('cd', 36).length % 32]
                        mem[ceil32(('cd', 36).length) + 128] = floor32(('cd', 36).length) + 224
                        mem[64] = floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 384
                        mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 384] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 388] = cd[4]
                        mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 420] = 0
                        mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 452] = this.address
                        mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 484] = 128
                        mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 516] = 0, Mask(224, 0, floor32(('cd', 36).length) + 224)
                        mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 548 len ceil32(0, Mask(224, 0, floor32(('cd', 36).length) + 224))] = mem[ceil32(('cd', 36).length) + 160 len ceil32(0, Mask(224, 0, floor32(('cd', 36).length) + 224))]
                        if not floor32(('cd', 36).length) + 224 % 32:
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 388 len 0, Mask(224, 0, floor32(('cd', 36).length) + 224) + 160]
                        else:
                            mem[floor32(0, Mask(224, 0, floor32(('cd', 36).length) + 224)) + floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 548] = mem[floor32(0, Mask(224, 0, floor32(('cd', 36).length) + 224)) + floor32(('cd', 36).length) + ceil32(('cd', 36).length) + -(floor32(('cd', 36).length) + 224 % 32) + 580 len floor32(('cd', 36).length) + 224 % 32]
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 388 len floor32(0, Mask(224, 0, floor32(('cd', 36).length) + 224)) + 192]
            else:
                if stor2 == ext_call.return_data[12 len 20]:
                    if not ('cd', 36).length % 32:
                        mem[ceil32(('cd', 36).length) + 128] = ('cd', 36).length + 192
                        mem[64] = ('cd', 36).length + ceil32(('cd', 36).length) + 352
                        mem[('cd', 36).length + ceil32(('cd', 36).length) + 352] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[('cd', 36).length + ceil32(('cd', 36).length) + 356] = 0
                        mem[('cd', 36).length + ceil32(('cd', 36).length) + 388] = cd[4]
                        mem[('cd', 36).length + ceil32(('cd', 36).length) + 420] = this.address
                        mem[('cd', 36).length + ceil32(('cd', 36).length) + 452] = 128
                        mem[('cd', 36).length + ceil32(('cd', 36).length) + 484] = 0, Mask(224, 0, ('cd', 36).length + 192)
                        mem[('cd', 36).length + ceil32(('cd', 36).length) + 516 len ceil32(0, Mask(224, 0, ('cd', 36).length + 192))] = mem[ceil32(('cd', 36).length) + 160 len ceil32(0, Mask(224, 0, ('cd', 36).length + 192))]
                        if not ('cd', 36).length + 192 % 32:
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args mem[('cd', 36).length + ceil32(('cd', 36).length) + 356 len 0, Mask(224, 0, ('cd', 36).length + 192) + 160]
                        else:
                            mem[floor32(0, Mask(224, 0, ('cd', 36).length + 192)) + ('cd', 36).length + ceil32(('cd', 36).length) + 516] = mem[floor32(0, Mask(224, 0, ('cd', 36).length + 192)) + ('cd', 36).length + ceil32(('cd', 36).length) + -(('cd', 36).length + 192 % 32) + 548 len ('cd', 36).length + 192 % 32]
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args mem[('cd', 36).length + ceil32(('cd', 36).length) + 356 len floor32(0, Mask(224, 0, ('cd', 36).length + 192)) + 192]
                    else:
                        mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 352] = mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + -(('cd', 36).length % 32) + 384 len ('cd', 36).length % 32]
                        mem[ceil32(('cd', 36).length) + 128] = floor32(('cd', 36).length) + 224
                        mem[64] = floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 384
                        mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 384] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 388] = 0
                        mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 420] = cd[4]
                        mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 452] = this.address
                        mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 484] = 128
                        mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 516] = 0, Mask(224, 0, floor32(('cd', 36).length) + 224)
                        mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 548 len ceil32(0, Mask(224, 0, floor32(('cd', 36).length) + 224))] = mem[ceil32(('cd', 36).length) + 160 len ceil32(0, Mask(224, 0, floor32(('cd', 36).length) + 224))]
                        if not floor32(('cd', 36).length) + 224 % 32:
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 388 len 0, Mask(224, 0, floor32(('cd', 36).length) + 224) + 160]
                        else:
                            mem[floor32(0, Mask(224, 0, floor32(('cd', 36).length) + 224)) + floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 548] = mem[floor32(0, Mask(224, 0, floor32(('cd', 36).length) + 224)) + floor32(('cd', 36).length) + ceil32(('cd', 36).length) + -(floor32(('cd', 36).length) + 224 % 32) + 580 len floor32(('cd', 36).length) + 224 % 32]
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 388 len floor32(0, Mask(224, 0, floor32(('cd', 36).length) + 224)) + 192]
                else:
                    if not ('cd', 36).length % 32:
                        mem[ceil32(('cd', 36).length) + 128] = ('cd', 36).length + 192
                        mem[64] = ('cd', 36).length + ceil32(('cd', 36).length) + 352
                        mem[('cd', 36).length + ceil32(('cd', 36).length) + 352] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[('cd', 36).length + ceil32(('cd', 36).length) + 356] = 0
                        mem[('cd', 36).length + ceil32(('cd', 36).length) + 388] = 0
                        mem[('cd', 36).length + ceil32(('cd', 36).length) + 420] = this.address
                        mem[('cd', 36).length + ceil32(('cd', 36).length) + 452] = 128
                        mem[('cd', 36).length + ceil32(('cd', 36).length) + 484] = 0, Mask(224, 0, ('cd', 36).length + 192)
                        mem[('cd', 36).length + ceil32(('cd', 36).length) + 516 len ceil32(0, Mask(224, 0, ('cd', 36).length + 192))] = mem[ceil32(('cd', 36).length) + 160 len ceil32(0, Mask(224, 0, ('cd', 36).length + 192))]
                        if not ('cd', 36).length + 192 % 32:
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args mem[('cd', 36).length + ceil32(('cd', 36).length) + 356 len 0, Mask(224, 0, ('cd', 36).length + 192) + 160]
                        else:
                            mem[floor32(0, Mask(224, 0, ('cd', 36).length + 192)) + ('cd', 36).length + ceil32(('cd', 36).length) + 516] = mem[floor32(0, Mask(224, 0, ('cd', 36).length + 192)) + ('cd', 36).length + ceil32(('cd', 36).length) + -(('cd', 36).length + 192 % 32) + 548 len ('cd', 36).length + 192 % 32]
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args mem[('cd', 36).length + ceil32(('cd', 36).length) + 356 len floor32(0, Mask(224, 0, ('cd', 36).length + 192)) + 192]
                    else:
                        mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 352] = mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + -(('cd', 36).length % 32) + 384 len ('cd', 36).length % 32]
                        mem[ceil32(('cd', 36).length) + 128] = floor32(('cd', 36).length) + 224
                        mem[64] = floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 384
                        mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 384] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 388] = 0
                        mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 420] = 0
                        mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 452] = this.address
                        mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 484] = 128
                        mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 516] = 0, Mask(224, 0, floor32(('cd', 36).length) + 224)
                        mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 548 len ceil32(0, Mask(224, 0, floor32(('cd', 36).length) + 224))] = mem[ceil32(('cd', 36).length) + 160 len ceil32(0, Mask(224, 0, floor32(('cd', 36).length) + 224))]
                        if not floor32(('cd', 36).length) + 224 % 32:
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 388 len 0, Mask(224, 0, floor32(('cd', 36).length) + 224) + 160]
                        else:
                            mem[floor32(0, Mask(224, 0, floor32(('cd', 36).length) + 224)) + floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 548] = mem[floor32(0, Mask(224, 0, floor32(('cd', 36).length) + 224)) + floor32(('cd', 36).length) + ceil32(('cd', 36).length) + -(floor32(('cd', 36).length) + 224 % 32) + 580 len floor32(('cd', 36).length) + 224 % 32]
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 388 len floor32(0, Mask(224, 0, floor32(('cd', 36).length) + 224)) + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            call stor0 with:
               value eth.balance(this.address) wei
                 gas gas_remaining wei
            if not ext_call.success:
                revert with 0, 'Failed'
        else:
            if ('cd', 36)[4]:
                require ext_code.size(address(('cd', 36)[3]))
                call address(('cd', 36)[3]).underlying() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[96] = ('cd', 36).length
                mem[128 len ('cd', 36).length] = call.data[cd[36] + 36 len ('cd', 36).length]
                mem[('cd', 36).length + 128] = 0
                require ext_code.size(0xbcfccbde45ce874adcb698cc183debcf17952812)
                staticcall 0xbcfccbde45ce874adcb698cc183debcf17952812.getPair(address rg1, address rg2) with:
                        gas gas_remaining wei
                       args stor2, address(ext_call.return_data[0])
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
                mem[ceil32(('cd', 36).length) + 128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[ceil32(('cd', 36).length) + 160] = 0
                mem[ceil32(('cd', 36).length) + 192] = stor2
                mem[ceil32(('cd', 36).length) + 224] = address(ext_call.return_data[0])
                mem[ceil32(('cd', 36).length) + 256] = cd[4]
                mem[ceil32(('cd', 36).length) + 288] = 160
                mem[ceil32(('cd', 36).length) + 320] = ('cd', 36).length
                mem[ceil32(('cd', 36).length) + 352 len ceil32(('cd', 36).length)] = call.data[cd[36] + 36 len ('cd', 36).length], mem[('cd', 36).length + 128 len ceil32(('cd', 36).length) - ('cd', 36).length]
                if stor2 == address(ext_call.return_data[0]):
                    if stor2 == ext_call.return_data[12 len 20]:
                        if not ('cd', 36).length % 32:
                            mem[ceil32(('cd', 36).length) + 128] = ('cd', 36).length + 192
                            mem[64] = ('cd', 36).length + ceil32(('cd', 36).length) + 352
                            mem[('cd', 36).length + ceil32(('cd', 36).length) + 352] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[('cd', 36).length + ceil32(('cd', 36).length) + 356] = cd[4]
                            mem[('cd', 36).length + ceil32(('cd', 36).length) + 388] = cd[4]
                            mem[('cd', 36).length + ceil32(('cd', 36).length) + 420] = this.address
                            mem[('cd', 36).length + ceil32(('cd', 36).length) + 452] = 128
                            mem[('cd', 36).length + ceil32(('cd', 36).length) + 484] = 0, Mask(224, 0, ('cd', 36).length + 192)
                            mem[('cd', 36).length + ceil32(('cd', 36).length) + 516 len ceil32(0, Mask(224, 0, ('cd', 36).length + 192))] = mem[ceil32(('cd', 36).length) + 160 len ceil32(0, Mask(224, 0, ('cd', 36).length + 192))]
                            if not ('cd', 36).length + 192 % 32:
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args mem[('cd', 36).length + ceil32(('cd', 36).length) + 356 len 0, Mask(224, 0, ('cd', 36).length + 192) + 160]
                            else:
                                mem[floor32(0, Mask(224, 0, ('cd', 36).length + 192)) + ('cd', 36).length + ceil32(('cd', 36).length) + 516] = mem[floor32(0, Mask(224, 0, ('cd', 36).length + 192)) + ('cd', 36).length + ceil32(('cd', 36).length) + -(('cd', 36).length + 192 % 32) + 548 len ('cd', 36).length + 192 % 32]
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args mem[('cd', 36).length + ceil32(('cd', 36).length) + 356 len floor32(0, Mask(224, 0, ('cd', 36).length + 192)) + 192]
                        else:
                            mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 352] = mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + -(('cd', 36).length % 32) + 384 len ('cd', 36).length % 32]
                            mem[ceil32(('cd', 36).length) + 128] = floor32(('cd', 36).length) + 224
                            mem[64] = floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 384
                            mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 384] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 388] = cd[4]
                            mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 420] = cd[4]
                            mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 452] = this.address
                            mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 484] = 128
                            mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 516] = 0, Mask(224, 0, floor32(('cd', 36).length) + 224)
                            mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 548 len ceil32(0, Mask(224, 0, floor32(('cd', 36).length) + 224))] = mem[ceil32(('cd', 36).length) + 160 len ceil32(0, Mask(224, 0, floor32(('cd', 36).length) + 224))]
                            if not floor32(('cd', 36).length) + 224 % 32:
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 388 len 0, Mask(224, 0, floor32(('cd', 36).length) + 224) + 160]
                            else:
                                mem[floor32(0, Mask(224, 0, floor32(('cd', 36).length) + 224)) + floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 548] = mem[floor32(0, Mask(224, 0, floor32(('cd', 36).length) + 224)) + floor32(('cd', 36).length) + ceil32(('cd', 36).length) + -(floor32(('cd', 36).length) + 224 % 32) + 580 len floor32(('cd', 36).length) + 224 % 32]
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 388 len floor32(0, Mask(224, 0, floor32(('cd', 36).length) + 224)) + 192]
                    else:
                        if not ('cd', 36).length % 32:
                            mem[ceil32(('cd', 36).length) + 128] = ('cd', 36).length + 192
                            mem[64] = ('cd', 36).length + ceil32(('cd', 36).length) + 352
                            mem[('cd', 36).length + ceil32(('cd', 36).length) + 352] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[('cd', 36).length + ceil32(('cd', 36).length) + 356] = cd[4]
                            mem[('cd', 36).length + ceil32(('cd', 36).length) + 388] = 0
                            mem[('cd', 36).length + ceil32(('cd', 36).length) + 420] = this.address
                            mem[('cd', 36).length + ceil32(('cd', 36).length) + 452] = 128
                            mem[('cd', 36).length + ceil32(('cd', 36).length) + 484] = 0, Mask(224, 0, ('cd', 36).length + 192)
                            mem[('cd', 36).length + ceil32(('cd', 36).length) + 516 len ceil32(0, Mask(224, 0, ('cd', 36).length + 192))] = mem[ceil32(('cd', 36).length) + 160 len ceil32(0, Mask(224, 0, ('cd', 36).length + 192))]
                            if not ('cd', 36).length + 192 % 32:
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args mem[('cd', 36).length + ceil32(('cd', 36).length) + 356 len 0, Mask(224, 0, ('cd', 36).length + 192) + 160]
                            else:
                                mem[floor32(0, Mask(224, 0, ('cd', 36).length + 192)) + ('cd', 36).length + ceil32(('cd', 36).length) + 516] = mem[floor32(0, Mask(224, 0, ('cd', 36).length + 192)) + ('cd', 36).length + ceil32(('cd', 36).length) + -(('cd', 36).length + 192 % 32) + 548 len ('cd', 36).length + 192 % 32]
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args mem[('cd', 36).length + ceil32(('cd', 36).length) + 356 len floor32(0, Mask(224, 0, ('cd', 36).length + 192)) + 192]
                        else:
                            mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 352] = mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + -(('cd', 36).length % 32) + 384 len ('cd', 36).length % 32]
                            mem[ceil32(('cd', 36).length) + 128] = floor32(('cd', 36).length) + 224
                            mem[64] = floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 384
                            mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 384] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 388] = cd[4]
                            mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 420] = 0
                            mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 452] = this.address
                            mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 484] = 128
                            mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 516] = 0, Mask(224, 0, floor32(('cd', 36).length) + 224)
                            mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 548 len ceil32(0, Mask(224, 0, floor32(('cd', 36).length) + 224))] = mem[ceil32(('cd', 36).length) + 160 len ceil32(0, Mask(224, 0, floor32(('cd', 36).length) + 224))]
                            if not floor32(('cd', 36).length) + 224 % 32:
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 388 len 0, Mask(224, 0, floor32(('cd', 36).length) + 224) + 160]
                            else:
                                mem[floor32(0, Mask(224, 0, floor32(('cd', 36).length) + 224)) + floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 548] = mem[floor32(0, Mask(224, 0, floor32(('cd', 36).length) + 224)) + floor32(('cd', 36).length) + ceil32(('cd', 36).length) + -(floor32(('cd', 36).length) + 224 % 32) + 580 len floor32(('cd', 36).length) + 224 % 32]
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 388 len floor32(0, Mask(224, 0, floor32(('cd', 36).length) + 224)) + 192]
                else:
                    if stor2 == ext_call.return_data[12 len 20]:
                        if not ('cd', 36).length % 32:
                            mem[ceil32(('cd', 36).length) + 128] = ('cd', 36).length + 192
                            mem[64] = ('cd', 36).length + ceil32(('cd', 36).length) + 352
                            mem[('cd', 36).length + ceil32(('cd', 36).length) + 352] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[('cd', 36).length + ceil32(('cd', 36).length) + 356] = 0
                            mem[('cd', 36).length + ceil32(('cd', 36).length) + 388] = cd[4]
                            mem[('cd', 36).length + ceil32(('cd', 36).length) + 420] = this.address
                            mem[('cd', 36).length + ceil32(('cd', 36).length) + 452] = 128
                            mem[('cd', 36).length + ceil32(('cd', 36).length) + 484] = 0, Mask(224, 0, ('cd', 36).length + 192)
                            mem[('cd', 36).length + ceil32(('cd', 36).length) + 516 len ceil32(0, Mask(224, 0, ('cd', 36).length + 192))] = mem[ceil32(('cd', 36).length) + 160 len ceil32(0, Mask(224, 0, ('cd', 36).length + 192))]
                            if not ('cd', 36).length + 192 % 32:
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args mem[('cd', 36).length + ceil32(('cd', 36).length) + 356 len 0, Mask(224, 0, ('cd', 36).length + 192) + 160]
                            else:
                                mem[floor32(0, Mask(224, 0, ('cd', 36).length + 192)) + ('cd', 36).length + ceil32(('cd', 36).length) + 516] = mem[floor32(0, Mask(224, 0, ('cd', 36).length + 192)) + ('cd', 36).length + ceil32(('cd', 36).length) + -(('cd', 36).length + 192 % 32) + 548 len ('cd', 36).length + 192 % 32]
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args mem[('cd', 36).length + ceil32(('cd', 36).length) + 356 len floor32(0, Mask(224, 0, ('cd', 36).length + 192)) + 192]
                        else:
                            mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 352] = mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + -(('cd', 36).length % 32) + 384 len ('cd', 36).length % 32]
                            mem[ceil32(('cd', 36).length) + 128] = floor32(('cd', 36).length) + 224
                            mem[64] = floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 384
                            mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 384] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 388] = 0
                            mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 420] = cd[4]
                            mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 452] = this.address
                            mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 484] = 128
                            mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 516] = 0, Mask(224, 0, floor32(('cd', 36).length) + 224)
                            mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 548 len ceil32(0, Mask(224, 0, floor32(('cd', 36).length) + 224))] = mem[ceil32(('cd', 36).length) + 160 len ceil32(0, Mask(224, 0, floor32(('cd', 36).length) + 224))]
                            if not floor32(('cd', 36).length) + 224 % 32:
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 388 len 0, Mask(224, 0, floor32(('cd', 36).length) + 224) + 160]
                            else:
                                mem[floor32(0, Mask(224, 0, floor32(('cd', 36).length) + 224)) + floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 548] = mem[floor32(0, Mask(224, 0, floor32(('cd', 36).length) + 224)) + floor32(('cd', 36).length) + ceil32(('cd', 36).length) + -(floor32(('cd', 36).length) + 224 % 32) + 580 len floor32(('cd', 36).length) + 224 % 32]
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 388 len floor32(0, Mask(224, 0, floor32(('cd', 36).length) + 224)) + 192]
                    else:
                        if not ('cd', 36).length % 32:
                            mem[ceil32(('cd', 36).length) + 128] = ('cd', 36).length + 192
                            mem[64] = ('cd', 36).length + ceil32(('cd', 36).length) + 352
                            mem[('cd', 36).length + ceil32(('cd', 36).length) + 352] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[('cd', 36).length + ceil32(('cd', 36).length) + 356] = 0
                            mem[('cd', 36).length + ceil32(('cd', 36).length) + 388] = 0
                            mem[('cd', 36).length + ceil32(('cd', 36).length) + 420] = this.address
                            mem[('cd', 36).length + ceil32(('cd', 36).length) + 452] = 128
                            mem[('cd', 36).length + ceil32(('cd', 36).length) + 484] = 0, Mask(224, 0, ('cd', 36).length + 192)
                            mem[('cd', 36).length + ceil32(('cd', 36).length) + 516 len ceil32(0, Mask(224, 0, ('cd', 36).length + 192))] = mem[ceil32(('cd', 36).length) + 160 len ceil32(0, Mask(224, 0, ('cd', 36).length + 192))]
                            if not ('cd', 36).length + 192 % 32:
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args mem[('cd', 36).length + ceil32(('cd', 36).length) + 356 len 0, Mask(224, 0, ('cd', 36).length + 192) + 160]
                            else:
                                mem[floor32(0, Mask(224, 0, ('cd', 36).length + 192)) + ('cd', 36).length + ceil32(('cd', 36).length) + 516] = mem[floor32(0, Mask(224, 0, ('cd', 36).length + 192)) + ('cd', 36).length + ceil32(('cd', 36).length) + -(('cd', 36).length + 192 % 32) + 548 len ('cd', 36).length + 192 % 32]
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args mem[('cd', 36).length + ceil32(('cd', 36).length) + 356 len floor32(0, Mask(224, 0, ('cd', 36).length + 192)) + 192]
                        else:
                            mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 352] = mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + -(('cd', 36).length % 32) + 384 len ('cd', 36).length % 32]
                            mem[ceil32(('cd', 36).length) + 128] = floor32(('cd', 36).length) + 224
                            mem[64] = floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 384
                            mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 384] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 388] = 0
                            mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 420] = 0
                            mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 452] = this.address
                            mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 484] = 128
                            mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 516] = 0, Mask(224, 0, floor32(('cd', 36).length) + 224)
                            mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 548 len ceil32(0, Mask(224, 0, floor32(('cd', 36).length) + 224))] = mem[ceil32(('cd', 36).length) + 160 len ceil32(0, Mask(224, 0, floor32(('cd', 36).length) + 224))]
                            if not floor32(('cd', 36).length) + 224 % 32:
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 388 len 0, Mask(224, 0, floor32(('cd', 36).length) + 224) + 160]
                            else:
                                mem[floor32(0, Mask(224, 0, floor32(('cd', 36).length) + 224)) + floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 548] = mem[floor32(0, Mask(224, 0, floor32(('cd', 36).length) + 224)) + floor32(('cd', 36).length) + ceil32(('cd', 36).length) + -(floor32(('cd', 36).length) + 224 % 32) + 580 len floor32(('cd', 36).length) + 224 % 32]
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 388 len floor32(0, Mask(224, 0, floor32(('cd', 36).length) + 224)) + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0xa9059cbb with:
                     gas gas_remaining wei
                    args stor0, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
            else:
                require ext_code.size(address(('cd', 36)[1]))
                call address(('cd', 36)[1]).underlying() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ('cd', 36)[5]:
                    mem[96] = ('cd', 36).length
                    mem[128 len ('cd', 36).length] = call.data[cd[36] + 36 len ('cd', 36).length]
                    mem[('cd', 36).length + 128] = 0
                    require ext_code.size(0xbcfccbde45ce874adcb698cc183debcf17952812)
                    staticcall 0xbcfccbde45ce874adcb698cc183debcf17952812.getPair(address rg1, address rg2) with:
                            gas gas_remaining wei
                           args address(ext_call.return_data[0]), stor2
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
                    mem[ceil32(('cd', 36).length) + 128] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[ceil32(('cd', 36).length) + 160] = 0
                    mem[ceil32(('cd', 36).length) + 192] = address(ext_call.return_data[0])
                    mem[ceil32(('cd', 36).length) + 224] = stor2
                    mem[ceil32(('cd', 36).length) + 256] = cd[4]
                    mem[ceil32(('cd', 36).length) + 288] = 160
                    mem[ceil32(('cd', 36).length) + 320] = ('cd', 36).length
                    mem[ceil32(('cd', 36).length) + 352 len ceil32(('cd', 36).length)] = call.data[cd[36] + 36 len ('cd', 36).length], mem[('cd', 36).length + 128 len ceil32(('cd', 36).length) - ('cd', 36).length]
                    if address(ext_call.return_data[0]) == address(ext_call.return_data[0]):
                        if address(ext_call.return_data[0]) == ext_call.return_data[12 len 20]:
                            if not ('cd', 36).length % 32:
                                mem[ceil32(('cd', 36).length) + 128] = ('cd', 36).length + 192
                                mem[64] = ('cd', 36).length + ceil32(('cd', 36).length) + 352
                                mem[('cd', 36).length + ceil32(('cd', 36).length) + 352] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[('cd', 36).length + ceil32(('cd', 36).length) + 356] = cd[4]
                                mem[('cd', 36).length + ceil32(('cd', 36).length) + 388] = cd[4]
                                mem[('cd', 36).length + ceil32(('cd', 36).length) + 420] = this.address
                                mem[('cd', 36).length + ceil32(('cd', 36).length) + 452] = 128
                                mem[('cd', 36).length + ceil32(('cd', 36).length) + 484] = 0, Mask(224, 0, ('cd', 36).length + 192)
                                mem[('cd', 36).length + ceil32(('cd', 36).length) + 516 len ceil32(0, Mask(224, 0, ('cd', 36).length + 192))] = mem[ceil32(('cd', 36).length) + 160 len ceil32(0, Mask(224, 0, ('cd', 36).length + 192))]
                                if not ('cd', 36).length + 192 % 32:
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args mem[('cd', 36).length + ceil32(('cd', 36).length) + 356 len 0, Mask(224, 0, ('cd', 36).length + 192) + 160]
                                else:
                                    mem[floor32(0, Mask(224, 0, ('cd', 36).length + 192)) + ('cd', 36).length + ceil32(('cd', 36).length) + 516] = mem[floor32(0, Mask(224, 0, ('cd', 36).length + 192)) + ('cd', 36).length + ceil32(('cd', 36).length) + -(('cd', 36).length + 192 % 32) + 548 len ('cd', 36).length + 192 % 32]
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args mem[('cd', 36).length + ceil32(('cd', 36).length) + 356 len floor32(0, Mask(224, 0, ('cd', 36).length + 192)) + 192]
                            else:
                                mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 352] = mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + -(('cd', 36).length % 32) + 384 len ('cd', 36).length % 32]
                                mem[ceil32(('cd', 36).length) + 128] = floor32(('cd', 36).length) + 224
                                mem[64] = floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 384
                                mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 384] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 388] = cd[4]
                                mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 420] = cd[4]
                                mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 452] = this.address
                                mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 484] = 128
                                mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 516] = 0, Mask(224, 0, floor32(('cd', 36).length) + 224)
                                mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 548 len ceil32(0, Mask(224, 0, floor32(('cd', 36).length) + 224))] = mem[ceil32(('cd', 36).length) + 160 len ceil32(0, Mask(224, 0, floor32(('cd', 36).length) + 224))]
                                if not floor32(('cd', 36).length) + 224 % 32:
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 388 len 0, Mask(224, 0, floor32(('cd', 36).length) + 224) + 160]
                                else:
                                    mem[floor32(0, Mask(224, 0, floor32(('cd', 36).length) + 224)) + floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 548] = mem[floor32(0, Mask(224, 0, floor32(('cd', 36).length) + 224)) + floor32(('cd', 36).length) + ceil32(('cd', 36).length) + -(floor32(('cd', 36).length) + 224 % 32) + 580 len floor32(('cd', 36).length) + 224 % 32]
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 388 len floor32(0, Mask(224, 0, floor32(('cd', 36).length) + 224)) + 192]
                        else:
                            if not ('cd', 36).length % 32:
                                mem[ceil32(('cd', 36).length) + 128] = ('cd', 36).length + 192
                                mem[64] = ('cd', 36).length + ceil32(('cd', 36).length) + 352
                                mem[('cd', 36).length + ceil32(('cd', 36).length) + 352] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[('cd', 36).length + ceil32(('cd', 36).length) + 356] = cd[4]
                                mem[('cd', 36).length + ceil32(('cd', 36).length) + 388] = 0
                                mem[('cd', 36).length + ceil32(('cd', 36).length) + 420] = this.address
                                mem[('cd', 36).length + ceil32(('cd', 36).length) + 452] = 128
                                mem[('cd', 36).length + ceil32(('cd', 36).length) + 484] = 0, Mask(224, 0, ('cd', 36).length + 192)
                                mem[('cd', 36).length + ceil32(('cd', 36).length) + 516 len ceil32(0, Mask(224, 0, ('cd', 36).length + 192))] = mem[ceil32(('cd', 36).length) + 160 len ceil32(0, Mask(224, 0, ('cd', 36).length + 192))]
                                if not ('cd', 36).length + 192 % 32:
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args mem[('cd', 36).length + ceil32(('cd', 36).length) + 356 len 0, Mask(224, 0, ('cd', 36).length + 192) + 160]
                                else:
                                    mem[floor32(0, Mask(224, 0, ('cd', 36).length + 192)) + ('cd', 36).length + ceil32(('cd', 36).length) + 516] = mem[floor32(0, Mask(224, 0, ('cd', 36).length + 192)) + ('cd', 36).length + ceil32(('cd', 36).length) + -(('cd', 36).length + 192 % 32) + 548 len ('cd', 36).length + 192 % 32]
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args mem[('cd', 36).length + ceil32(('cd', 36).length) + 356 len floor32(0, Mask(224, 0, ('cd', 36).length + 192)) + 192]
                            else:
                                mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 352] = mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + -(('cd', 36).length % 32) + 384 len ('cd', 36).length % 32]
                                mem[ceil32(('cd', 36).length) + 128] = floor32(('cd', 36).length) + 224
                                mem[64] = floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 384
                                mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 384] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 388] = cd[4]
                                mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 420] = 0
                                mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 452] = this.address
                                mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 484] = 128
                                mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 516] = 0, Mask(224, 0, floor32(('cd', 36).length) + 224)
                                mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 548 len ceil32(0, Mask(224, 0, floor32(('cd', 36).length) + 224))] = mem[ceil32(('cd', 36).length) + 160 len ceil32(0, Mask(224, 0, floor32(('cd', 36).length) + 224))]
                                if not floor32(('cd', 36).length) + 224 % 32:
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 388 len 0, Mask(224, 0, floor32(('cd', 36).length) + 224) + 160]
                                else:
                                    mem[floor32(0, Mask(224, 0, floor32(('cd', 36).length) + 224)) + floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 548] = mem[floor32(0, Mask(224, 0, floor32(('cd', 36).length) + 224)) + floor32(('cd', 36).length) + ceil32(('cd', 36).length) + -(floor32(('cd', 36).length) + 224 % 32) + 580 len floor32(('cd', 36).length) + 224 % 32]
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 388 len floor32(0, Mask(224, 0, floor32(('cd', 36).length) + 224)) + 192]
                    else:
                        if address(ext_call.return_data[0]) == ext_call.return_data[12 len 20]:
                            if not ('cd', 36).length % 32:
                                mem[ceil32(('cd', 36).length) + 128] = ('cd', 36).length + 192
                                mem[64] = ('cd', 36).length + ceil32(('cd', 36).length) + 352
                                mem[('cd', 36).length + ceil32(('cd', 36).length) + 352] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[('cd', 36).length + ceil32(('cd', 36).length) + 356] = 0
                                mem[('cd', 36).length + ceil32(('cd', 36).length) + 388] = cd[4]
                                mem[('cd', 36).length + ceil32(('cd', 36).length) + 420] = this.address
                                mem[('cd', 36).length + ceil32(('cd', 36).length) + 452] = 128
                                mem[('cd', 36).length + ceil32(('cd', 36).length) + 484] = 0, Mask(224, 0, ('cd', 36).length + 192)
                                mem[('cd', 36).length + ceil32(('cd', 36).length) + 516 len ceil32(0, Mask(224, 0, ('cd', 36).length + 192))] = mem[ceil32(('cd', 36).length) + 160 len ceil32(0, Mask(224, 0, ('cd', 36).length + 192))]
                                if not ('cd', 36).length + 192 % 32:
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args mem[('cd', 36).length + ceil32(('cd', 36).length) + 356 len 0, Mask(224, 0, ('cd', 36).length + 192) + 160]
                                else:
                                    mem[floor32(0, Mask(224, 0, ('cd', 36).length + 192)) + ('cd', 36).length + ceil32(('cd', 36).length) + 516] = mem[floor32(0, Mask(224, 0, ('cd', 36).length + 192)) + ('cd', 36).length + ceil32(('cd', 36).length) + -(('cd', 36).length + 192 % 32) + 548 len ('cd', 36).length + 192 % 32]
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args mem[('cd', 36).length + ceil32(('cd', 36).length) + 356 len floor32(0, Mask(224, 0, ('cd', 36).length + 192)) + 192]
                            else:
                                mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 352] = mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + -(('cd', 36).length % 32) + 384 len ('cd', 36).length % 32]
                                mem[ceil32(('cd', 36).length) + 128] = floor32(('cd', 36).length) + 224
                                mem[64] = floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 384
                                mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 384] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 388] = 0
                                mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 420] = cd[4]
                                mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 452] = this.address
                                mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 484] = 128
                                mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 516] = 0, Mask(224, 0, floor32(('cd', 36).length) + 224)
                                mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 548 len ceil32(0, Mask(224, 0, floor32(('cd', 36).length) + 224))] = mem[ceil32(('cd', 36).length) + 160 len ceil32(0, Mask(224, 0, floor32(('cd', 36).length) + 224))]
                                if not floor32(('cd', 36).length) + 224 % 32:
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 388 len 0, Mask(224, 0, floor32(('cd', 36).length) + 224) + 160]
                                else:
                                    mem[floor32(0, Mask(224, 0, floor32(('cd', 36).length) + 224)) + floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 548] = mem[floor32(0, Mask(224, 0, floor32(('cd', 36).length) + 224)) + floor32(('cd', 36).length) + ceil32(('cd', 36).length) + -(floor32(('cd', 36).length) + 224 % 32) + 580 len floor32(('cd', 36).length) + 224 % 32]
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 388 len floor32(0, Mask(224, 0, floor32(('cd', 36).length) + 224)) + 192]
                        else:
                            if not ('cd', 36).length % 32:
                                mem[ceil32(('cd', 36).length) + 128] = ('cd', 36).length + 192
                                mem[64] = ('cd', 36).length + ceil32(('cd', 36).length) + 352
                                mem[('cd', 36).length + ceil32(('cd', 36).length) + 352] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[('cd', 36).length + ceil32(('cd', 36).length) + 356] = 0
                                mem[('cd', 36).length + ceil32(('cd', 36).length) + 388] = 0
                                mem[('cd', 36).length + ceil32(('cd', 36).length) + 420] = this.address
                                mem[('cd', 36).length + ceil32(('cd', 36).length) + 452] = 128
                                mem[('cd', 36).length + ceil32(('cd', 36).length) + 484] = 0, Mask(224, 0, ('cd', 36).length + 192)
                                mem[('cd', 36).length + ceil32(('cd', 36).length) + 516 len ceil32(0, Mask(224, 0, ('cd', 36).length + 192))] = mem[ceil32(('cd', 36).length) + 160 len ceil32(0, Mask(224, 0, ('cd', 36).length + 192))]
                                if not ('cd', 36).length + 192 % 32:
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args mem[('cd', 36).length + ceil32(('cd', 36).length) + 356 len 0, Mask(224, 0, ('cd', 36).length + 192) + 160]
                                else:
                                    mem[floor32(0, Mask(224, 0, ('cd', 36).length + 192)) + ('cd', 36).length + ceil32(('cd', 36).length) + 516] = mem[floor32(0, Mask(224, 0, ('cd', 36).length + 192)) + ('cd', 36).length + ceil32(('cd', 36).length) + -(('cd', 36).length + 192 % 32) + 548 len ('cd', 36).length + 192 % 32]
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args mem[('cd', 36).length + ceil32(('cd', 36).length) + 356 len floor32(0, Mask(224, 0, ('cd', 36).length + 192)) + 192]
                            else:
                                mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 352] = mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + -(('cd', 36).length % 32) + 384 len ('cd', 36).length % 32]
                                mem[ceil32(('cd', 36).length) + 128] = floor32(('cd', 36).length) + 224
                                mem[64] = floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 384
                                mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 384] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 388] = 0
                                mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 420] = 0
                                mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 452] = this.address
                                mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 484] = 128
                                mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 516] = 0, Mask(224, 0, floor32(('cd', 36).length) + 224)
                                mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 548 len ceil32(0, Mask(224, 0, floor32(('cd', 36).length) + 224))] = mem[ceil32(('cd', 36).length) + 160 len ceil32(0, Mask(224, 0, floor32(('cd', 36).length) + 224))]
                                if not floor32(('cd', 36).length) + 224 % 32:
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 388 len 0, Mask(224, 0, floor32(('cd', 36).length) + 224) + 160]
                                else:
                                    mem[floor32(0, Mask(224, 0, floor32(('cd', 36).length) + 224)) + floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 548] = mem[floor32(0, Mask(224, 0, floor32(('cd', 36).length) + 224)) + floor32(('cd', 36).length) + ceil32(('cd', 36).length) + -(floor32(('cd', 36).length) + 224 % 32) + 580 len floor32(('cd', 36).length) + 224 % 32]
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 388 len floor32(0, Mask(224, 0, floor32(('cd', 36).length) + 224)) + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call stor0 with:
                       value eth.balance(this.address) wei
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with 0, 'Failed'
                else:
                    require ext_code.size(address(('cd', 36)[3]))
                    call address(('cd', 36)[3]).underlying() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[96] = ('cd', 36).length
                    mem[128 len ('cd', 36).length] = call.data[cd[36] + 36 len ('cd', 36).length]
                    mem[('cd', 36).length + 128] = 0
                    require ext_code.size(0xbcfccbde45ce874adcb698cc183debcf17952812)
                    staticcall 0xbcfccbde45ce874adcb698cc183debcf17952812.getPair(address rg1, address rg2) with:
                            gas gas_remaining wei
                           args address(ext_call.return_data[0]), stor2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if address(ext_call.return_data[0]) != ext_call.return_data[12 len 20]:
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
                        mem[ceil32(('cd', 36).length) + 128] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[ceil32(('cd', 36).length) + 160] = 0
                        mem[ceil32(('cd', 36).length) + 192] = address(ext_call.return_data[0])
                        mem[ceil32(('cd', 36).length) + 224] = stor2
                        mem[ceil32(('cd', 36).length) + 256] = cd[4]
                        mem[ceil32(('cd', 36).length) + 288] = 160
                        mem[ceil32(('cd', 36).length) + 320] = ('cd', 36).length
                        mem[ceil32(('cd', 36).length) + 352 len ceil32(('cd', 36).length)] = call.data[cd[36] + 36 len ('cd', 36).length], mem[('cd', 36).length + 128 len ceil32(('cd', 36).length) - ('cd', 36).length]
                        if address(ext_call.return_data[0]) == address(ext_call.return_data[0]):
                            if address(ext_call.return_data[0]) == ext_call.return_data[12 len 20]:
                                if not ('cd', 36).length % 32:
                                    mem[ceil32(('cd', 36).length) + 128] = ('cd', 36).length + 192
                                    mem[64] = ('cd', 36).length + ceil32(('cd', 36).length) + 352
                                    mem[('cd', 36).length + ceil32(('cd', 36).length) + 352] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[('cd', 36).length + ceil32(('cd', 36).length) + 356] = cd[4]
                                    mem[('cd', 36).length + ceil32(('cd', 36).length) + 388] = cd[4]
                                    mem[('cd', 36).length + ceil32(('cd', 36).length) + 420] = this.address
                                    mem[('cd', 36).length + ceil32(('cd', 36).length) + 452] = 128
                                    mem[('cd', 36).length + ceil32(('cd', 36).length) + 484] = 0, Mask(224, 0, ('cd', 36).length + 192)
                                    mem[('cd', 36).length + ceil32(('cd', 36).length) + 516 len ceil32(0, Mask(224, 0, ('cd', 36).length + 192))] = mem[ceil32(('cd', 36).length) + 160 len ceil32(0, Mask(224, 0, ('cd', 36).length + 192))]
                                    if not ('cd', 36).length + 192 % 32:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args mem[('cd', 36).length + ceil32(('cd', 36).length) + 356 len 0, Mask(224, 0, ('cd', 36).length + 192) + 160]
                                    else:
                                        mem[floor32(0, Mask(224, 0, ('cd', 36).length + 192)) + ('cd', 36).length + ceil32(('cd', 36).length) + 516] = mem[floor32(0, Mask(224, 0, ('cd', 36).length + 192)) + ('cd', 36).length + ceil32(('cd', 36).length) + -(('cd', 36).length + 192 % 32) + 548 len ('cd', 36).length + 192 % 32]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args mem[('cd', 36).length + ceil32(('cd', 36).length) + 356 len floor32(0, Mask(224, 0, ('cd', 36).length + 192)) + 192]
                                else:
                                    mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 352] = mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + -(('cd', 36).length % 32) + 384 len ('cd', 36).length % 32]
                                    mem[ceil32(('cd', 36).length) + 128] = floor32(('cd', 36).length) + 224
                                    mem[64] = floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 384
                                    mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 384] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 388] = cd[4]
                                    mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 420] = cd[4]
                                    mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 452] = this.address
                                    mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 484] = 128
                                    mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 516] = 0, Mask(224, 0, floor32(('cd', 36).length) + 224)
                                    mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 548 len ceil32(0, Mask(224, 0, floor32(('cd', 36).length) + 224))] = mem[ceil32(('cd', 36).length) + 160 len ceil32(0, Mask(224, 0, floor32(('cd', 36).length) + 224))]
                                    if not floor32(('cd', 36).length) + 224 % 32:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 388 len 0, Mask(224, 0, floor32(('cd', 36).length) + 224) + 160]
                                    else:
                                        mem[floor32(0, Mask(224, 0, floor32(('cd', 36).length) + 224)) + floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 548] = mem[floor32(0, Mask(224, 0, floor32(('cd', 36).length) + 224)) + floor32(('cd', 36).length) + ceil32(('cd', 36).length) + -(floor32(('cd', 36).length) + 224 % 32) + 580 len floor32(('cd', 36).length) + 224 % 32]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 388 len floor32(0, Mask(224, 0, floor32(('cd', 36).length) + 224)) + 192]
                            else:
                                if not ('cd', 36).length % 32:
                                    mem[ceil32(('cd', 36).length) + 128] = ('cd', 36).length + 192
                                    mem[64] = ('cd', 36).length + ceil32(('cd', 36).length) + 352
                                    mem[('cd', 36).length + ceil32(('cd', 36).length) + 352] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[('cd', 36).length + ceil32(('cd', 36).length) + 356] = cd[4]
                                    mem[('cd', 36).length + ceil32(('cd', 36).length) + 388] = 0
                                    mem[('cd', 36).length + ceil32(('cd', 36).length) + 420] = this.address
                                    mem[('cd', 36).length + ceil32(('cd', 36).length) + 452] = 128
                                    mem[('cd', 36).length + ceil32(('cd', 36).length) + 484] = 0, Mask(224, 0, ('cd', 36).length + 192)
                                    mem[('cd', 36).length + ceil32(('cd', 36).length) + 516 len ceil32(0, Mask(224, 0, ('cd', 36).length + 192))] = mem[ceil32(('cd', 36).length) + 160 len ceil32(0, Mask(224, 0, ('cd', 36).length + 192))]
                                    if not ('cd', 36).length + 192 % 32:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args mem[('cd', 36).length + ceil32(('cd', 36).length) + 356 len 0, Mask(224, 0, ('cd', 36).length + 192) + 160]
                                    else:
                                        mem[floor32(0, Mask(224, 0, ('cd', 36).length + 192)) + ('cd', 36).length + ceil32(('cd', 36).length) + 516] = mem[floor32(0, Mask(224, 0, ('cd', 36).length + 192)) + ('cd', 36).length + ceil32(('cd', 36).length) + -(('cd', 36).length + 192 % 32) + 548 len ('cd', 36).length + 192 % 32]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args mem[('cd', 36).length + ceil32(('cd', 36).length) + 356 len floor32(0, Mask(224, 0, ('cd', 36).length + 192)) + 192]
                                else:
                                    mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 352] = mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + -(('cd', 36).length % 32) + 384 len ('cd', 36).length % 32]
                                    mem[ceil32(('cd', 36).length) + 128] = floor32(('cd', 36).length) + 224
                                    mem[64] = floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 384
                                    mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 384] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 388] = cd[4]
                                    mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 420] = 0
                                    mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 452] = this.address
                                    mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 484] = 128
                                    mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 516] = 0, Mask(224, 0, floor32(('cd', 36).length) + 224)
                                    mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 548 len ceil32(0, Mask(224, 0, floor32(('cd', 36).length) + 224))] = mem[ceil32(('cd', 36).length) + 160 len ceil32(0, Mask(224, 0, floor32(('cd', 36).length) + 224))]
                                    if not floor32(('cd', 36).length) + 224 % 32:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 388 len 0, Mask(224, 0, floor32(('cd', 36).length) + 224) + 160]
                                    else:
                                        mem[floor32(0, Mask(224, 0, floor32(('cd', 36).length) + 224)) + floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 548] = mem[floor32(0, Mask(224, 0, floor32(('cd', 36).length) + 224)) + floor32(('cd', 36).length) + ceil32(('cd', 36).length) + -(floor32(('cd', 36).length) + 224 % 32) + 580 len floor32(('cd', 36).length) + 224 % 32]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 388 len floor32(0, Mask(224, 0, floor32(('cd', 36).length) + 224)) + 192]
                        else:
                            if address(ext_call.return_data[0]) == ext_call.return_data[12 len 20]:
                                if not ('cd', 36).length % 32:
                                    mem[ceil32(('cd', 36).length) + 128] = ('cd', 36).length + 192
                                    mem[64] = ('cd', 36).length + ceil32(('cd', 36).length) + 352
                                    mem[('cd', 36).length + ceil32(('cd', 36).length) + 352] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[('cd', 36).length + ceil32(('cd', 36).length) + 356] = 0
                                    mem[('cd', 36).length + ceil32(('cd', 36).length) + 388] = cd[4]
                                    mem[('cd', 36).length + ceil32(('cd', 36).length) + 420] = this.address
                                    mem[('cd', 36).length + ceil32(('cd', 36).length) + 452] = 128
                                    mem[('cd', 36).length + ceil32(('cd', 36).length) + 484] = 0, Mask(224, 0, ('cd', 36).length + 192)
                                    mem[('cd', 36).length + ceil32(('cd', 36).length) + 516 len ceil32(0, Mask(224, 0, ('cd', 36).length + 192))] = mem[ceil32(('cd', 36).length) + 160 len ceil32(0, Mask(224, 0, ('cd', 36).length + 192))]
                                    if not ('cd', 36).length + 192 % 32:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args mem[('cd', 36).length + ceil32(('cd', 36).length) + 356 len 0, Mask(224, 0, ('cd', 36).length + 192) + 160]
                                    else:
                                        mem[floor32(0, Mask(224, 0, ('cd', 36).length + 192)) + ('cd', 36).length + ceil32(('cd', 36).length) + 516] = mem[floor32(0, Mask(224, 0, ('cd', 36).length + 192)) + ('cd', 36).length + ceil32(('cd', 36).length) + -(('cd', 36).length + 192 % 32) + 548 len ('cd', 36).length + 192 % 32]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args mem[('cd', 36).length + ceil32(('cd', 36).length) + 356 len floor32(0, Mask(224, 0, ('cd', 36).length + 192)) + 192]
                                else:
                                    mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 352] = mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + -(('cd', 36).length % 32) + 384 len ('cd', 36).length % 32]
                                    mem[ceil32(('cd', 36).length) + 128] = floor32(('cd', 36).length) + 224
                                    mem[64] = floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 384
                                    mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 384] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 388] = 0
                                    mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 420] = cd[4]
                                    mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 452] = this.address
                                    mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 484] = 128
                                    mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 516] = 0, Mask(224, 0, floor32(('cd', 36).length) + 224)
                                    mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 548 len ceil32(0, Mask(224, 0, floor32(('cd', 36).length) + 224))] = mem[ceil32(('cd', 36).length) + 160 len ceil32(0, Mask(224, 0, floor32(('cd', 36).length) + 224))]
                                    if not floor32(('cd', 36).length) + 224 % 32:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 388 len 0, Mask(224, 0, floor32(('cd', 36).length) + 224) + 160]
                                    else:
                                        mem[floor32(0, Mask(224, 0, floor32(('cd', 36).length) + 224)) + floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 548] = mem[floor32(0, Mask(224, 0, floor32(('cd', 36).length) + 224)) + floor32(('cd', 36).length) + ceil32(('cd', 36).length) + -(floor32(('cd', 36).length) + 224 % 32) + 580 len floor32(('cd', 36).length) + 224 % 32]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 388 len floor32(0, Mask(224, 0, floor32(('cd', 36).length) + 224)) + 192]
                            else:
                                if not ('cd', 36).length % 32:
                                    mem[ceil32(('cd', 36).length) + 128] = ('cd', 36).length + 192
                                    mem[64] = ('cd', 36).length + ceil32(('cd', 36).length) + 352
                                    mem[('cd', 36).length + ceil32(('cd', 36).length) + 352] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[('cd', 36).length + ceil32(('cd', 36).length) + 356] = 0
                                    mem[('cd', 36).length + ceil32(('cd', 36).length) + 388] = 0
                                    mem[('cd', 36).length + ceil32(('cd', 36).length) + 420] = this.address
                                    mem[('cd', 36).length + ceil32(('cd', 36).length) + 452] = 128
                                    mem[('cd', 36).length + ceil32(('cd', 36).length) + 484] = 0, Mask(224, 0, ('cd', 36).length + 192)
                                    mem[('cd', 36).length + ceil32(('cd', 36).length) + 516 len ceil32(0, Mask(224, 0, ('cd', 36).length + 192))] = mem[ceil32(('cd', 36).length) + 160 len ceil32(0, Mask(224, 0, ('cd', 36).length + 192))]
                                    if not ('cd', 36).length + 192 % 32:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args mem[('cd', 36).length + ceil32(('cd', 36).length) + 356 len 0, Mask(224, 0, ('cd', 36).length + 192) + 160]
                                    else:
                                        mem[floor32(0, Mask(224, 0, ('cd', 36).length + 192)) + ('cd', 36).length + ceil32(('cd', 36).length) + 516] = mem[floor32(0, Mask(224, 0, ('cd', 36).length + 192)) + ('cd', 36).length + ceil32(('cd', 36).length) + -(('cd', 36).length + 192 % 32) + 548 len ('cd', 36).length + 192 % 32]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args mem[('cd', 36).length + ceil32(('cd', 36).length) + 356 len floor32(0, Mask(224, 0, ('cd', 36).length + 192)) + 192]
                                else:
                                    mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 352] = mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + -(('cd', 36).length % 32) + 384 len ('cd', 36).length % 32]
                                    mem[ceil32(('cd', 36).length) + 128] = floor32(('cd', 36).length) + 224
                                    mem[64] = floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 384
                                    mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 384] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 388] = 0
                                    mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 420] = 0
                                    mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 452] = this.address
                                    mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 484] = 128
                                    mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 516] = 0, Mask(224, 0, floor32(('cd', 36).length) + 224)
                                    mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 548 len ceil32(0, Mask(224, 0, floor32(('cd', 36).length) + 224))] = mem[ceil32(('cd', 36).length) + 160 len ceil32(0, Mask(224, 0, floor32(('cd', 36).length) + 224))]
                                    if not floor32(('cd', 36).length) + 224 % 32:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 388 len 0, Mask(224, 0, floor32(('cd', 36).length) + 224) + 160]
                                    else:
                                        mem[floor32(0, Mask(224, 0, floor32(('cd', 36).length) + 224)) + floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 548] = mem[floor32(0, Mask(224, 0, floor32(('cd', 36).length) + 224)) + floor32(('cd', 36).length) + ceil32(('cd', 36).length) + -(floor32(('cd', 36).length) + 224 % 32) + 580 len floor32(('cd', 36).length) + 224 % 32]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 388 len floor32(0, Mask(224, 0, floor32(('cd', 36).length) + 224)) + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call stor0 with:
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
                                        mem[ceil32(('cd', 36).length) + 230 len 30]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token1() with:
                                gas gas_remaining wei
                        mem[ceil32(('cd', 36).length) + 128] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[ceil32(('cd', 36).length) + 160] = 1
                        mem[ceil32(('cd', 36).length) + 192] = address(ext_call.return_data[0])
                        mem[ceil32(('cd', 36).length) + 224] = stor2
                        mem[ceil32(('cd', 36).length) + 256] = cd[4]
                        mem[ceil32(('cd', 36).length) + 288] = 160
                        mem[ceil32(('cd', 36).length) + 320] = ('cd', 36).length
                        mem[ceil32(('cd', 36).length) + 352 len ceil32(('cd', 36).length)] = call.data[cd[36] + 36 len ('cd', 36).length], mem[('cd', 36).length + 128 len ceil32(('cd', 36).length) - ('cd', 36).length]
                        if address(ext_call.return_data[0]) == address(ext_call.return_data[0]):
                            if address(ext_call.return_data[0]) == ext_call.return_data[12 len 20]:
                                if not ('cd', 36).length % 32:
                                    mem[ceil32(('cd', 36).length) + 128] = ('cd', 36).length + 192
                                    mem[64] = ('cd', 36).length + ceil32(('cd', 36).length) + 352
                                    mem[('cd', 36).length + ceil32(('cd', 36).length) + 352] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[('cd', 36).length + ceil32(('cd', 36).length) + 356] = cd[4]
                                    mem[('cd', 36).length + ceil32(('cd', 36).length) + 388] = cd[4]
                                    mem[('cd', 36).length + ceil32(('cd', 36).length) + 420] = this.address
                                    mem[('cd', 36).length + ceil32(('cd', 36).length) + 452] = 128
                                    mem[('cd', 36).length + ceil32(('cd', 36).length) + 484] = 0, Mask(224, 0, ('cd', 36).length + 192)
                                    mem[('cd', 36).length + ceil32(('cd', 36).length) + 516 len ceil32(0, Mask(224, 0, ('cd', 36).length + 192))] = mem[ceil32(('cd', 36).length) + 160 len ceil32(0, Mask(224, 0, ('cd', 36).length + 192))]
                                    if not ('cd', 36).length + 192 % 32:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args mem[('cd', 36).length + ceil32(('cd', 36).length) + 356 len 0, Mask(224, 0, ('cd', 36).length + 192) + 160]
                                    else:
                                        mem[floor32(0, Mask(224, 0, ('cd', 36).length + 192)) + ('cd', 36).length + ceil32(('cd', 36).length) + 516] = mem[floor32(0, Mask(224, 0, ('cd', 36).length + 192)) + ('cd', 36).length + ceil32(('cd', 36).length) + -(('cd', 36).length + 192 % 32) + 548 len ('cd', 36).length + 192 % 32]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args mem[('cd', 36).length + ceil32(('cd', 36).length) + 356 len floor32(0, Mask(224, 0, ('cd', 36).length + 192)) + 192]
                                else:
                                    mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 352] = mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + -(('cd', 36).length % 32) + 384 len ('cd', 36).length % 32]
                                    mem[ceil32(('cd', 36).length) + 128] = floor32(('cd', 36).length) + 224
                                    mem[64] = floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 384
                                    mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 384] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 388] = cd[4]
                                    mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 420] = cd[4]
                                    mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 452] = this.address
                                    mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 484] = 128
                                    mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 516] = 0, Mask(224, 0, floor32(('cd', 36).length) + 224)
                                    mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 548 len ceil32(0, Mask(224, 0, floor32(('cd', 36).length) + 224))] = mem[ceil32(('cd', 36).length) + 160 len ceil32(0, Mask(224, 0, floor32(('cd', 36).length) + 224))]
                                    if not floor32(('cd', 36).length) + 224 % 32:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 388 len 0, Mask(224, 0, floor32(('cd', 36).length) + 224) + 160]
                                    else:
                                        mem[floor32(0, Mask(224, 0, floor32(('cd', 36).length) + 224)) + floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 548] = mem[floor32(0, Mask(224, 0, floor32(('cd', 36).length) + 224)) + floor32(('cd', 36).length) + ceil32(('cd', 36).length) + -(floor32(('cd', 36).length) + 224 % 32) + 580 len floor32(('cd', 36).length) + 224 % 32]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 388 len floor32(0, Mask(224, 0, floor32(('cd', 36).length) + 224)) + 192]
                            else:
                                if not ('cd', 36).length % 32:
                                    mem[ceil32(('cd', 36).length) + 128] = ('cd', 36).length + 192
                                    mem[64] = ('cd', 36).length + ceil32(('cd', 36).length) + 352
                                    mem[('cd', 36).length + ceil32(('cd', 36).length) + 352] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[('cd', 36).length + ceil32(('cd', 36).length) + 356] = cd[4]
                                    mem[('cd', 36).length + ceil32(('cd', 36).length) + 388] = 0
                                    mem[('cd', 36).length + ceil32(('cd', 36).length) + 420] = this.address
                                    mem[('cd', 36).length + ceil32(('cd', 36).length) + 452] = 128
                                    mem[('cd', 36).length + ceil32(('cd', 36).length) + 484] = 0, Mask(224, 0, ('cd', 36).length + 192)
                                    mem[('cd', 36).length + ceil32(('cd', 36).length) + 516 len ceil32(0, Mask(224, 0, ('cd', 36).length + 192))] = mem[ceil32(('cd', 36).length) + 160 len ceil32(0, Mask(224, 0, ('cd', 36).length + 192))]
                                    if not ('cd', 36).length + 192 % 32:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args mem[('cd', 36).length + ceil32(('cd', 36).length) + 356 len 0, Mask(224, 0, ('cd', 36).length + 192) + 160]
                                    else:
                                        mem[floor32(0, Mask(224, 0, ('cd', 36).length + 192)) + ('cd', 36).length + ceil32(('cd', 36).length) + 516] = mem[floor32(0, Mask(224, 0, ('cd', 36).length + 192)) + ('cd', 36).length + ceil32(('cd', 36).length) + -(('cd', 36).length + 192 % 32) + 548 len ('cd', 36).length + 192 % 32]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args mem[('cd', 36).length + ceil32(('cd', 36).length) + 356 len floor32(0, Mask(224, 0, ('cd', 36).length + 192)) + 192]
                                else:
                                    mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 352] = mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + -(('cd', 36).length % 32) + 384 len ('cd', 36).length % 32]
                                    mem[ceil32(('cd', 36).length) + 128] = floor32(('cd', 36).length) + 224
                                    mem[64] = floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 384
                                    mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 384] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 388] = cd[4]
                                    mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 420] = 0
                                    mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 452] = this.address
                                    mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 484] = 128
                                    mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 516] = 0, Mask(224, 0, floor32(('cd', 36).length) + 224)
                                    mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 548 len ceil32(0, Mask(224, 0, floor32(('cd', 36).length) + 224))] = mem[ceil32(('cd', 36).length) + 160 len ceil32(0, Mask(224, 0, floor32(('cd', 36).length) + 224))]
                                    if not floor32(('cd', 36).length) + 224 % 32:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 388 len 0, Mask(224, 0, floor32(('cd', 36).length) + 224) + 160]
                                    else:
                                        mem[floor32(0, Mask(224, 0, floor32(('cd', 36).length) + 224)) + floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 548] = mem[floor32(0, Mask(224, 0, floor32(('cd', 36).length) + 224)) + floor32(('cd', 36).length) + ceil32(('cd', 36).length) + -(floor32(('cd', 36).length) + 224 % 32) + 580 len floor32(('cd', 36).length) + 224 % 32]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 388 len floor32(0, Mask(224, 0, floor32(('cd', 36).length) + 224)) + 192]
                        else:
                            if address(ext_call.return_data[0]) == ext_call.return_data[12 len 20]:
                                if not ('cd', 36).length % 32:
                                    mem[ceil32(('cd', 36).length) + 128] = ('cd', 36).length + 192
                                    mem[64] = ('cd', 36).length + ceil32(('cd', 36).length) + 352
                                    mem[('cd', 36).length + ceil32(('cd', 36).length) + 352] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[('cd', 36).length + ceil32(('cd', 36).length) + 356] = 0
                                    mem[('cd', 36).length + ceil32(('cd', 36).length) + 388] = cd[4]
                                    mem[('cd', 36).length + ceil32(('cd', 36).length) + 420] = this.address
                                    mem[('cd', 36).length + ceil32(('cd', 36).length) + 452] = 128
                                    mem[('cd', 36).length + ceil32(('cd', 36).length) + 484] = 0, Mask(224, 0, ('cd', 36).length + 192)
                                    mem[('cd', 36).length + ceil32(('cd', 36).length) + 516 len ceil32(0, Mask(224, 0, ('cd', 36).length + 192))] = mem[ceil32(('cd', 36).length) + 160 len ceil32(0, Mask(224, 0, ('cd', 36).length + 192))]
                                    if not ('cd', 36).length + 192 % 32:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args mem[('cd', 36).length + ceil32(('cd', 36).length) + 356 len 0, Mask(224, 0, ('cd', 36).length + 192) + 160]
                                    else:
                                        mem[floor32(0, Mask(224, 0, ('cd', 36).length + 192)) + ('cd', 36).length + ceil32(('cd', 36).length) + 516] = mem[floor32(0, Mask(224, 0, ('cd', 36).length + 192)) + ('cd', 36).length + ceil32(('cd', 36).length) + -(('cd', 36).length + 192 % 32) + 548 len ('cd', 36).length + 192 % 32]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args mem[('cd', 36).length + ceil32(('cd', 36).length) + 356 len floor32(0, Mask(224, 0, ('cd', 36).length + 192)) + 192]
                                else:
                                    mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 352] = mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + -(('cd', 36).length % 32) + 384 len ('cd', 36).length % 32]
                                    mem[ceil32(('cd', 36).length) + 128] = floor32(('cd', 36).length) + 224
                                    mem[64] = floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 384
                                    mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 384] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 388] = 0
                                    mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 420] = cd[4]
                                    mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 452] = this.address
                                    mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 484] = 128
                                    mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 516] = 0, Mask(224, 0, floor32(('cd', 36).length) + 224)
                                    mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 548 len ceil32(0, Mask(224, 0, floor32(('cd', 36).length) + 224))] = mem[ceil32(('cd', 36).length) + 160 len ceil32(0, Mask(224, 0, floor32(('cd', 36).length) + 224))]
                                    if not floor32(('cd', 36).length) + 224 % 32:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 388 len 0, Mask(224, 0, floor32(('cd', 36).length) + 224) + 160]
                                    else:
                                        mem[floor32(0, Mask(224, 0, floor32(('cd', 36).length) + 224)) + floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 548] = mem[floor32(0, Mask(224, 0, floor32(('cd', 36).length) + 224)) + floor32(('cd', 36).length) + ceil32(('cd', 36).length) + -(floor32(('cd', 36).length) + 224 % 32) + 580 len floor32(('cd', 36).length) + 224 % 32]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 388 len floor32(0, Mask(224, 0, floor32(('cd', 36).length) + 224)) + 192]
                            else:
                                if not ('cd', 36).length % 32:
                                    mem[ceil32(('cd', 36).length) + 128] = ('cd', 36).length + 192
                                    mem[64] = ('cd', 36).length + ceil32(('cd', 36).length) + 352
                                    mem[('cd', 36).length + ceil32(('cd', 36).length) + 352] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[('cd', 36).length + ceil32(('cd', 36).length) + 356] = 0
                                    mem[('cd', 36).length + ceil32(('cd', 36).length) + 388] = 0
                                    mem[('cd', 36).length + ceil32(('cd', 36).length) + 420] = this.address
                                    mem[('cd', 36).length + ceil32(('cd', 36).length) + 452] = 128
                                    mem[('cd', 36).length + ceil32(('cd', 36).length) + 484] = 0, Mask(224, 0, ('cd', 36).length + 192)
                                    mem[('cd', 36).length + ceil32(('cd', 36).length) + 516 len ceil32(0, Mask(224, 0, ('cd', 36).length + 192))] = mem[ceil32(('cd', 36).length) + 160 len ceil32(0, Mask(224, 0, ('cd', 36).length + 192))]
                                    if not ('cd', 36).length + 192 % 32:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args mem[('cd', 36).length + ceil32(('cd', 36).length) + 356 len 0, Mask(224, 0, ('cd', 36).length + 192) + 160]
                                    else:
                                        mem[floor32(0, Mask(224, 0, ('cd', 36).length + 192)) + ('cd', 36).length + ceil32(('cd', 36).length) + 516] = mem[floor32(0, Mask(224, 0, ('cd', 36).length + 192)) + ('cd', 36).length + ceil32(('cd', 36).length) + -(('cd', 36).length + 192 % 32) + 548 len ('cd', 36).length + 192 % 32]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args mem[('cd', 36).length + ceil32(('cd', 36).length) + 356 len floor32(0, Mask(224, 0, ('cd', 36).length + 192)) + 192]
                                else:
                                    mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 352] = mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + -(('cd', 36).length % 32) + 384 len ('cd', 36).length % 32]
                                    mem[ceil32(('cd', 36).length) + 128] = floor32(('cd', 36).length) + 224
                                    mem[64] = floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 384
                                    mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 384] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 388] = 0
                                    mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 420] = 0
                                    mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 452] = this.address
                                    mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 484] = 128
                                    mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 516] = 0, Mask(224, 0, floor32(('cd', 36).length) + 224)
                                    mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 548 len ceil32(0, Mask(224, 0, floor32(('cd', 36).length) + 224))] = mem[ceil32(('cd', 36).length) + 160 len ceil32(0, Mask(224, 0, floor32(('cd', 36).length) + 224))]
                                    if not floor32(('cd', 36).length) + 224 % 32:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 388 len 0, Mask(224, 0, floor32(('cd', 36).length) + 224) + 160]
                                    else:
                                        mem[floor32(0, Mask(224, 0, floor32(('cd', 36).length) + 224)) + floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 548] = mem[floor32(0, Mask(224, 0, floor32(('cd', 36).length) + 224)) + floor32(('cd', 36).length) + ceil32(('cd', 36).length) + -(floor32(('cd', 36).length) + 224 % 32) + 580 len floor32(('cd', 36).length) + 224 % 32]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args mem[floor32(('cd', 36).length) + ceil32(('cd', 36).length) + 388 len floor32(0, Mask(224, 0, floor32(('cd', 36).length) + 224)) + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args stor0, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
}



}
