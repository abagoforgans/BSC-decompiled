contract main {




// =====================  Runtime code  =====================


const sub_70de629f(?) = 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee


function _fallback() payable {
    revert
}

function canExecute(address arg1, uint256 arg2, bytes arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    require arg3.length >= 64
    require arg4.length >= 32
    mem[292 len arg4.length] = arg4[all]
    mem[arg4.length + 292] = 0
    require ext_code.size(address(cd[(arg4 + 36)]))
    staticcall address(cd[(arg4 + 36)]).canHandle(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
            gas gas_remaining wei
           args 0, 0, address(cd[(arg3 + 36)]), arg2, cd[(arg3 + 68)], 160, arg4.length, arg4[all], mem[arg4.length + 292 len ceil32(arg4.length) - arg4.length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function execute(address arg1, uint256 arg2, address arg3, bytes arg4, bytes arg5) {
    require calldata.size - 4 >= 160
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + arg5.length + 36 <= calldata.size
    require arg4.length >= 64
    require arg5.length >= 32
    if arg1 == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
        if arg1 != 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
            mem[196 len 64] = unknown_0xa9059cbb(?????), address(cd[(arg5 + 36)]) << 64, 0, Mask(224, 32, eth.balance(this.address)) >> 32
            call arg1 with:
                 gas gas_remaining wei
                args Mask(224, 32, eth.balance(this.address)) << 224, mem[260 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 
                                32,
                                50,
                                0x534c696d69744f7264657273235f7472616e73666572416d6f756e743a20544f4b454e5f5452414e534645525f4641494c45,
                                mem[314 len 14]
                if not unknown_0xa9059cbb(?????), address(cd[(arg5 + 36)]) << 64:
                    revert with 0, 
                                32,
                                50,
                                0x534c696d69744f7264657273235f7472616e73666572416d6f756e743a20544f4b454e5f5452414e534645525f4641494c45,
                                mem[314 len 14]
                mem[296] = cd[(arg4 + 68)]
                mem[328] = 160
                mem[360] = arg5.length
                mem[392 len arg5.length] = arg5[all]
                mem[arg5.length + 392] = 0
                require ext_code.size(address(cd[(arg5 + 36)]))
                call address(cd[(arg5 + 36)]).handle(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                     gas gas_remaining wei
                    args address(arg1), address(cd[(arg4 + 36)]), eth.balance(this.address), cd[(arg4 + 68)], Array(len=arg5.length, data=arg5[all])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if address(cd[(arg4 + 36)]) == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                    if eth.balance(this.address) < cd[(arg4 + 68)]:
                        revert with 0, 
                                    32,
                                    46,
                                    0xfe4c696d69744f726465727323657865637574653a204953535546494349454e545f424f554748545f544f4b454e,
                                    Mask(144, 0, cd[(arg4 + 68)])
                    if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == address(cd[(arg4 + 36)]):
                        call arg3 with:
                           value eth.balance(this.address) wei
                             gas gas_remaining wei
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            48,
                                            0x444c696d69744f7264657273235f7472616e73666572416d6f756e743a204554485f5452414e534645525f4641494c45,
                                            uint128(cd[(arg4 + 68)])
                        else:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            48,
                                            0x444c696d69744f7264657273235f7472616e73666572416d6f756e743a204554485f5452414e534645525f4641494c45,
                                            mem[ceil32(return_data.size) + 313 len 16]
                        ('bool', 'ext_call.success')
                    else:
                        mem[296 len 64] = 0, address(arg3), Mask(224, 32, eth.balance(this.address)) >> 32
                        call address(cd[(arg4 + 36)]) with:
                           funct Mask(32, 224, cd[(arg4 + 68)]) >> 224
                             gas gas_remaining wei
                            args eth.balance(this.address), Mask(224, 32, address(arg3), Mask(224, 32, eth.balance(this.address)) >> 32) >> 32, Mask(32, 224, arg5.length) >> 224
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            50,
                                            0x534c696d69744f7264657273235f7472616e73666572416d6f756e743a20544f4b454e5f5452414e534645525f4641494c45,
                                            mem[414 len 14]
                            if not unknown_0xa9059cbb(?????), address(cd[(arg5 + 36)]) << 64:
                                revert with 0, 
                                            32,
                                            50,
                                            0x534c696d69744f7264657273235f7472616e73666572416d6f756e743a20544f4b454e5f5452414e534645525f4641494c45,
                                            mem[414 len 14]
                        else:
                            mem[328 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            50,
                                            0x534c696d69744f7264657273235f7472616e73666572416d6f756e743a20544f4b454e5f5452414e534645525f4641494c45,
                                            mem[ceil32(return_data.size) + 415 len 14]
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[328]:
                                    revert with 0, 
                                                32,
                                                50,
                                                0x534c696d69744f7264657273235f7472616e73666572416d6f756e743a20544f4b454e5f5452414e534645525f4641494c45,
                                                mem[ceil32(return_data.size) + 415 len 14]
                    return eth.balance(this.address)
                require ext_code.size(address(cd[(arg4 + 36)]))
                staticcall address(cd[(arg4 + 36)]).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < cd[(arg4 + 68)]:
                    revert with 0, 
                                32,
                                46,
                                0xfe4c696d69744f726465727323657865637574653a204953535546494349454e545f424f554748545f544f4b454e,
                                Mask(144, 0, cd[(arg4 + 68)])
                if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == address(cd[(arg4 + 36)]):
                    call arg3 with:
                       value ext_call.return_data[0] wei
                         gas gas_remaining wei
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        48,
                                        0x444c696d69744f7264657273235f7472616e73666572416d6f756e743a204554485f5452414e534645525f4641494c45,
                                        uint128(cd[(arg4 + 68)])
                    else:
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        48,
                                        0x444c696d69744f7264657273235f7472616e73666572416d6f756e743a204554485f5452414e534645525f4641494c45,
                                        mem[ceil32(return_data.size) + 313 len 16]
                    ('bool', 'ext_call.success')
                else:
                    mem[296 len 64] = 0, address(arg3), ext_call.return_data[0 len 28]
                    call address(cd[(arg4 + 36)]) with:
                       funct Mask(32, 224, cd[(arg4 + 68)]) >> 224
                         gas gas_remaining wei
                        args ext_call.return_data[0], Mask(224, 32, address(arg3), ext_call.return_data[0 len 28]) >> 32, Mask(32, 224, arg5.length) >> 224
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        50,
                                        0x534c696d69744f7264657273235f7472616e73666572416d6f756e743a20544f4b454e5f5452414e534645525f4641494c45,
                                        mem[414 len 14]
                        if not unknown_0xa9059cbb(?????), address(cd[(arg5 + 36)]) << 64:
                            revert with 0, 
                                        32,
                                        50,
                                        0x534c696d69744f7264657273235f7472616e73666572416d6f756e743a20544f4b454e5f5452414e534645525f4641494c45,
                                        mem[414 len 14]
                    else:
                        mem[328 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        50,
                                        0x534c696d69744f7264657273235f7472616e73666572416d6f756e743a20544f4b454e5f5452414e534645525f4641494c45,
                                        mem[ceil32(return_data.size) + 415 len 14]
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[328]:
                                revert with 0, 
                                            32,
                                            50,
                                            0x534c696d69744f7264657273235f7472616e73666572416d6f756e743a20544f4b454e5f5452414e534645525f4641494c45,
                                            mem[ceil32(return_data.size) + 415 len 14]
            else:
                mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 
                                32,
                                50,
                                0x534c696d69744f7264657273235f7472616e73666572416d6f756e743a20544f4b454e5f5452414e534645525f4641494c45,
                                mem[ceil32(return_data.size) + 315 len 14]
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[228]:
                        revert with 0, 
                                    32,
                                    50,
                                    0x534c696d69744f7264657273235f7472616e73666572416d6f756e743a20544f4b454e5f5452414e534645525f4641494c45,
                                    mem[ceil32(return_data.size) + 315 len 14]
                mem[ceil32(return_data.size) + 297] = cd[(arg4 + 68)]
                mem[ceil32(return_data.size) + 329] = 160
                mem[ceil32(return_data.size) + 361] = arg5.length
                mem[ceil32(return_data.size) + 393 len arg5.length] = arg5[all]
                mem[ceil32(return_data.size) + arg5.length + 393] = 0
                require ext_code.size(address(cd[(arg5 + 36)]))
                call address(cd[(arg5 + 36)]).handle(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                     gas gas_remaining wei
                    args address(arg1), address(cd[(arg4 + 36)]), eth.balance(this.address), cd[(arg4 + 68)], Array(len=arg5.length, data=arg5[all])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if address(cd[(arg4 + 36)]) == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                    if eth.balance(this.address) < cd[(arg4 + 68)]:
                        revert with 0, 
                                    32,
                                    46,
                                    0xfe4c696d69744f726465727323657865637574653a204953535546494349454e545f424f554748545f544f4b454e,
                                    Mask(144, 0, cd[(arg4 + 68)])
                    if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == address(cd[(arg4 + 36)]):
                        call arg3 with:
                           value eth.balance(this.address) wei
                             gas gas_remaining wei
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            48,
                                            0x444c696d69744f7264657273235f7472616e73666572416d6f756e743a204554485f5452414e534645525f4641494c45,
                                            uint128(cd[(arg4 + 68)])
                        else:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            48,
                                            0x444c696d69744f7264657273235f7472616e73666572416d6f756e743a204554485f5452414e534645525f4641494c45,
                                            mem[(2 * ceil32(return_data.size)) + 314 len 16]
                        ('bool', 'ext_call.success')
                    else:
                        mem[ceil32(return_data.size) + 297 len 64] = 0, address(arg3), Mask(224, 32, eth.balance(this.address)) >> 32
                        call address(cd[(arg4 + 36)]) with:
                           funct Mask(32, 224, cd[(arg4 + 68)]) >> 224
                             gas gas_remaining wei
                            args eth.balance(this.address), Mask(224, 32, address(arg3), Mask(224, 32, eth.balance(this.address)) >> 32) >> 32, Mask(32, 224, arg5.length) >> 224
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            50,
                                            0x534c696d69744f7264657273235f7472616e73666572416d6f756e743a20544f4b454e5f5452414e534645525f4641494c45,
                                            mem[ceil32(return_data.size) + 415 len 14]
                            if not unknown_0xa9059cbb(?????), address(cd[(arg5 + 36)]) << 64:
                                revert with 0, 
                                            32,
                                            50,
                                            0x534c696d69744f7264657273235f7472616e73666572416d6f756e743a20544f4b454e5f5452414e534645525f4641494c45,
                                            mem[ceil32(return_data.size) + 415 len 14]
                        else:
                            mem[ceil32(return_data.size) + 329 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            50,
                                            0x534c696d69744f7264657273235f7472616e73666572416d6f756e743a20544f4b454e5f5452414e534645525f4641494c45,
                                            mem[(2 * ceil32(return_data.size)) + 416 len 14]
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[ceil32(return_data.size) + 329]:
                                    revert with 0, 
                                                32,
                                                50,
                                                0x534c696d69744f7264657273235f7472616e73666572416d6f756e743a20544f4b454e5f5452414e534645525f4641494c45,
                                                mem[(2 * ceil32(return_data.size)) + 416 len 14]
                    return eth.balance(this.address)
                require ext_code.size(address(cd[(arg4 + 36)]))
                staticcall address(cd[(arg4 + 36)]).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < cd[(arg4 + 68)]:
                    revert with 0, 
                                32,
                                46,
                                0xfe4c696d69744f726465727323657865637574653a204953535546494349454e545f424f554748545f544f4b454e,
                                Mask(144, 0, cd[(arg4 + 68)])
                if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == address(cd[(arg4 + 36)]):
                    call arg3 with:
                       value ext_call.return_data[0] wei
                         gas gas_remaining wei
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        48,
                                        0x444c696d69744f7264657273235f7472616e73666572416d6f756e743a204554485f5452414e534645525f4641494c45,
                                        uint128(cd[(arg4 + 68)])
                    else:
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        48,
                                        0x444c696d69744f7264657273235f7472616e73666572416d6f756e743a204554485f5452414e534645525f4641494c45,
                                        mem[(2 * ceil32(return_data.size)) + 314 len 16]
                    ('bool', 'ext_call.success')
                else:
                    mem[ceil32(return_data.size) + 297 len 64] = 0, address(arg3), ext_call.return_data[0 len 28]
                    call address(cd[(arg4 + 36)]) with:
                       funct Mask(32, 224, cd[(arg4 + 68)]) >> 224
                         gas gas_remaining wei
                        args ext_call.return_data[0], Mask(224, 32, address(arg3), ext_call.return_data[0 len 28]) >> 32, Mask(32, 224, arg5.length) >> 224
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        50,
                                        0x534c696d69744f7264657273235f7472616e73666572416d6f756e743a20544f4b454e5f5452414e534645525f4641494c45,
                                        mem[ceil32(return_data.size) + 415 len 14]
                        if not unknown_0xa9059cbb(?????), address(cd[(arg5 + 36)]) << 64:
                            revert with 0, 
                                        32,
                                        50,
                                        0x534c696d69744f7264657273235f7472616e73666572416d6f756e743a20544f4b454e5f5452414e534645525f4641494c45,
                                        mem[ceil32(return_data.size) + 415 len 14]
                    else:
                        mem[ceil32(return_data.size) + 329 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        50,
                                        0x534c696d69744f7264657273235f7472616e73666572416d6f756e743a20544f4b454e5f5452414e534645525f4641494c45,
                                        mem[(2 * ceil32(return_data.size)) + 416 len 14]
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 329]:
                                revert with 0, 
                                            32,
                                            50,
                                            0x534c696d69744f7264657273235f7472616e73666572416d6f756e743a20544f4b454e5f5452414e534645525f4641494c45,
                                            mem[(2 * ceil32(return_data.size)) + 416 len 14]
        else:
            call address(cd[(arg5 + 36)]) with:
               value eth.balance(this.address) wei
                 gas gas_remaining wei
            if not return_data.size:
                if not ext_call.success:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                48,
                                0x444c696d69744f7264657273235f7472616e73666572416d6f756e743a204554485f5452414e534645525f4641494c45,
                                mem[212 len 16]
                mem[196] = cd[(arg4 + 68)]
                mem[228] = 160
                mem[260] = arg5.length
                mem[292 len arg5.length] = arg5[all]
                mem[arg5.length + 292] = 0
                require ext_code.size(address(cd[(arg5 + 36)]))
                call address(cd[(arg5 + 36)]).handle(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                     gas gas_remaining wei
                    args 0, 0, address(cd[(arg4 + 36)]), eth.balance(this.address), cd[(arg4 + 68)], 160, arg5.length, arg5[all], mem[arg5.length + 292 len ceil32(arg5.length) - arg5.length]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if address(cd[(arg4 + 36)]) == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                    if eth.balance(this.address) < cd[(arg4 + 68)]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    46,
                                    0xfe4c696d69744f726465727323657865637574653a204953535546494349454e545f424f554748545f544f4b454e,
                                    Mask(144, 0, cd[(arg4 + 68)])
                    if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == address(cd[(arg4 + 36)]):
                        call arg3 with:
                           value eth.balance(this.address) wei
                             gas gas_remaining wei
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            48,
                                            0x444c696d69744f7264657273235f7472616e73666572416d6f756e743a204554485f5452414e534645525f4641494c45,
                                            uint128(cd[(arg4 + 68)])
                        else:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            48,
                                            0x444c696d69744f7264657273235f7472616e73666572416d6f756e743a204554485f5452414e534645525f4641494c45,
                                            mem[ceil32(return_data.size) + 213 len 16]
                        ('bool', 'ext_call.success')
                    else:
                        mem[196 len 64] = unknown_0xa9059cbb(?????), address(arg3) << 64, 0, Mask(224, 32, eth.balance(this.address)) >> 32
                        call address(cd[(arg4 + 36)]) with:
                             gas gas_remaining wei
                            args Mask(224, 32, eth.balance(this.address)) << 224, Mask(32, 224, arg5.length) >> 224
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            50,
                                            0x534c696d69744f7264657273235f7472616e73666572416d6f756e743a20544f4b454e5f5452414e534645525f4641494c45,
                                            mem[314 len 14]
                            if not unknown_0xa9059cbb(?????), address(arg3) << 64:
                                revert with 0, 
                                            32,
                                            50,
                                            0x534c696d69744f7264657273235f7472616e73666572416d6f756e743a20544f4b454e5f5452414e534645525f4641494c45,
                                            mem[314 len 14]
                        else:
                            mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            50,
                                            0x534c696d69744f7264657273235f7472616e73666572416d6f756e743a20544f4b454e5f5452414e534645525f4641494c45,
                                            mem[ceil32(return_data.size) + 315 len 14]
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[228]:
                                    revert with 0, 
                                                32,
                                                50,
                                                0x534c696d69744f7264657273235f7472616e73666572416d6f756e743a20544f4b454e5f5452414e534645525f4641494c45,
                                                mem[ceil32(return_data.size) + 315 len 14]
                    return eth.balance(this.address)
                require ext_code.size(address(cd[(arg4 + 36)]))
                staticcall address(cd[(arg4 + 36)]).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < cd[(arg4 + 68)]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                46,
                                0xfe4c696d69744f726465727323657865637574653a204953535546494349454e545f424f554748545f544f4b454e,
                                Mask(144, 0, cd[(arg4 + 68)])
                if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == address(cd[(arg4 + 36)]):
                    call arg3 with:
                       value ext_call.return_data[0] wei
                         gas gas_remaining wei
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        48,
                                        0x444c696d69744f7264657273235f7472616e73666572416d6f756e743a204554485f5452414e534645525f4641494c45,
                                        uint128(cd[(arg4 + 68)])
                    else:
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        48,
                                        0x444c696d69744f7264657273235f7472616e73666572416d6f756e743a204554485f5452414e534645525f4641494c45,
                                        mem[ceil32(return_data.size) + 213 len 16]
                    ('bool', 'ext_call.success')
                else:
                    mem[196 len 64] = unknown_0xa9059cbb(?????), address(arg3) << 64, 0, ext_call.return_data[0 len 28]
                    call address(cd[(arg4 + 36)]) with:
                         gas gas_remaining wei
                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, Mask(32, 224, arg5.length) >> 224
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        50,
                                        0x534c696d69744f7264657273235f7472616e73666572416d6f756e743a20544f4b454e5f5452414e534645525f4641494c45,
                                        mem[314 len 14]
                        if not unknown_0xa9059cbb(?????), address(arg3) << 64:
                            revert with 0, 
                                        32,
                                        50,
                                        0x534c696d69744f7264657273235f7472616e73666572416d6f756e743a20544f4b454e5f5452414e534645525f4641494c45,
                                        mem[314 len 14]
                    else:
                        mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        50,
                                        0x534c696d69744f7264657273235f7472616e73666572416d6f756e743a20544f4b454e5f5452414e534645525f4641494c45,
                                        mem[ceil32(return_data.size) + 315 len 14]
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[228]:
                                revert with 0, 
                                            32,
                                            50,
                                            0x534c696d69744f7264657273235f7472616e73666572416d6f756e743a20544f4b454e5f5452414e534645525f4641494c45,
                                            mem[ceil32(return_data.size) + 315 len 14]
            else:
                mem[96] = return_data.size
                mem[128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 
                                32,
                                48,
                                0x444c696d69744f7264657273235f7472616e73666572416d6f756e743a204554485f5452414e534645525f4641494c45,
                                mem[ceil32(return_data.size) + 213 len 16]
                mem[ceil32(return_data.size) + 197] = cd[(arg4 + 68)]
                mem[ceil32(return_data.size) + 229] = 160
                mem[ceil32(return_data.size) + 261] = arg5.length
                mem[ceil32(return_data.size) + 293 len arg5.length] = arg5[all]
                mem[ceil32(return_data.size) + arg5.length + 293] = 0
                require ext_code.size(address(cd[(arg5 + 36)]))
                call address(cd[(arg5 + 36)]).handle(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                     gas gas_remaining wei
                    args address(arg1), address(cd[(arg4 + 36)]), eth.balance(this.address), cd[(arg4 + 68)], Array(len=arg5.length, data=arg5[all])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if address(cd[(arg4 + 36)]) == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                    if eth.balance(this.address) < cd[(arg4 + 68)]:
                        revert with 0, 
                                    32,
                                    46,
                                    0xfe4c696d69744f726465727323657865637574653a204953535546494349454e545f424f554748545f544f4b454e,
                                    Mask(144, 0, cd[(arg4 + 68)])
                    if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == address(cd[(arg4 + 36)]):
                        call arg3 with:
                           value eth.balance(this.address) wei
                             gas gas_remaining wei
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            48,
                                            0x444c696d69744f7264657273235f7472616e73666572416d6f756e743a204554485f5452414e534645525f4641494c45,
                                            uint128(cd[(arg4 + 68)])
                        else:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            48,
                                            0x444c696d69744f7264657273235f7472616e73666572416d6f756e743a204554485f5452414e534645525f4641494c45,
                                            mem[(2 * ceil32(return_data.size)) + 214 len 16]
                        ('bool', 'ext_call.success')
                    else:
                        mem[ceil32(return_data.size) + 97] = 68
                        mem[ceil32(return_data.size) + 133 len 28] = address(arg3) << 64
                        mem[ceil32(return_data.size) + 129 len 4] = unknown_0xa9059cbb(?????)
                        mem[ceil32(return_data.size) + 197 len 64] = unknown_0xa9059cbb(?????), address(arg3) << 64, 0, Mask(224, 32, eth.balance(this.address)) >> 32
                        call address(cd[(arg4 + 36)]) with:
                             gas gas_remaining wei
                            args Mask(224, 32, eth.balance(this.address)) << 224, Mask(32, 224, arg5.length) >> 224
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            50,
                                            0x534c696d69744f7264657273235f7472616e73666572416d6f756e743a20544f4b454e5f5452414e534645525f4641494c45,
                                            mem[ceil32(return_data.size) + 315 len 14]
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                50,
                                                0x534c696d69744f7264657273235f7472616e73666572416d6f756e743a20544f4b454e5f5452414e534645525f4641494c45,
                                                mem[ceil32(return_data.size) + 315 len 14]
                        else:
                            mem[ceil32(return_data.size) + 229 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            50,
                                            0x534c696d69744f7264657273235f7472616e73666572416d6f756e743a20544f4b454e5f5452414e534645525f4641494c45,
                                            mem[(2 * ceil32(return_data.size)) + 316 len 14]
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[ceil32(return_data.size) + 229]:
                                    revert with 0, 
                                                32,
                                                50,
                                                0x534c696d69744f7264657273235f7472616e73666572416d6f756e743a20544f4b454e5f5452414e534645525f4641494c45,
                                                mem[(2 * ceil32(return_data.size)) + 316 len 14]
                    return eth.balance(this.address)
                require ext_code.size(address(cd[(arg4 + 36)]))
                staticcall address(cd[(arg4 + 36)]).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < cd[(arg4 + 68)]:
                    revert with 0, 
                                32,
                                46,
                                0xfe4c696d69744f726465727323657865637574653a204953535546494349454e545f424f554748545f544f4b454e,
                                Mask(144, 0, cd[(arg4 + 68)])
                if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == address(cd[(arg4 + 36)]):
                    call arg3 with:
                       value ext_call.return_data[0] wei
                         gas gas_remaining wei
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        48,
                                        0x444c696d69744f7264657273235f7472616e73666572416d6f756e743a204554485f5452414e534645525f4641494c45,
                                        uint128(cd[(arg4 + 68)])
                    else:
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        48,
                                        0x444c696d69744f7264657273235f7472616e73666572416d6f756e743a204554485f5452414e534645525f4641494c45,
                                        mem[(2 * ceil32(return_data.size)) + 214 len 16]
                    ('bool', 'ext_call.success')
                else:
                    mem[ceil32(return_data.size) + 97] = 68
                    mem[ceil32(return_data.size) + 133 len 28] = address(arg3) << 64
                    mem[ceil32(return_data.size) + 129 len 4] = unknown_0xa9059cbb(?????)
                    mem[ceil32(return_data.size) + 197 len 64] = unknown_0xa9059cbb(?????), address(arg3) << 64, 0, ext_call.return_data[0 len 28]
                    call address(cd[(arg4 + 36)]) with:
                         gas gas_remaining wei
                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, Mask(32, 224, arg5.length) >> 224
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        50,
                                        0x534c696d69744f7264657273235f7472616e73666572416d6f756e743a20544f4b454e5f5452414e534645525f4641494c45,
                                        mem[ceil32(return_data.size) + 315 len 14]
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            50,
                                            0x534c696d69744f7264657273235f7472616e73666572416d6f756e743a20544f4b454e5f5452414e534645525f4641494c45,
                                            mem[ceil32(return_data.size) + 315 len 14]
                    else:
                        mem[ceil32(return_data.size) + 229 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        50,
                                        0x534c696d69744f7264657273235f7472616e73666572416d6f756e743a20544f4b454e5f5452414e534645525f4641494c45,
                                        mem[(2 * ceil32(return_data.size)) + 316 len 14]
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 229]:
                                revert with 0, 
                                            32,
                                            50,
                                            0x534c696d69744f7264657273235f7472616e73666572416d6f756e743a20544f4b454e5f5452414e534645525f4641494c45,
                                            mem[(2 * ceil32(return_data.size)) + 316 len 14]
    else:
        mem[100] = this.address
        require ext_code.size(arg1)
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if arg1 != 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
            mem[196 len 64] = unknown_0xa9059cbb(?????), address(cd[(arg5 + 36)]) << 64, 0, ext_call.return_data[0 len 28]
            call arg1 with:
                 gas gas_remaining wei
                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[260 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 
                                32,
                                50,
                                0x534c696d69744f7264657273235f7472616e73666572416d6f756e743a20544f4b454e5f5452414e534645525f4641494c45,
                                mem[314 len 14]
                if not unknown_0xa9059cbb(?????), address(cd[(arg5 + 36)]) << 64:
                    revert with 0, 
                                32,
                                50,
                                0x534c696d69744f7264657273235f7472616e73666572416d6f756e743a20544f4b454e5f5452414e534645525f4641494c45,
                                mem[314 len 14]
                mem[296] = cd[(arg4 + 68)]
                mem[328] = 160
                mem[360] = arg5.length
                mem[392 len arg5.length] = arg5[all]
                mem[arg5.length + 392] = 0
                require ext_code.size(address(cd[(arg5 + 36)]))
                call address(cd[(arg5 + 36)]).handle(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                     gas gas_remaining wei
                    args address(arg1), address(cd[(arg4 + 36)]), ext_call.return_data[0], cd[(arg4 + 68)], Array(len=arg5.length, data=arg5[all])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if address(cd[(arg4 + 36)]) == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                    if eth.balance(this.address) < cd[(arg4 + 68)]:
                        revert with 0, 
                                    32,
                                    46,
                                    0xfe4c696d69744f726465727323657865637574653a204953535546494349454e545f424f554748545f544f4b454e,
                                    Mask(144, 0, cd[(arg4 + 68)])
                    if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == address(cd[(arg4 + 36)]):
                        call arg3 with:
                           value eth.balance(this.address) wei
                             gas gas_remaining wei
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            48,
                                            0x444c696d69744f7264657273235f7472616e73666572416d6f756e743a204554485f5452414e534645525f4641494c45,
                                            uint128(cd[(arg4 + 68)])
                        else:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            48,
                                            0x444c696d69744f7264657273235f7472616e73666572416d6f756e743a204554485f5452414e534645525f4641494c45,
                                            mem[ceil32(return_data.size) + 313 len 16]
                        ('bool', 'ext_call.success')
                    else:
                        mem[296 len 64] = 0, address(arg3), Mask(224, 32, eth.balance(this.address)) >> 32
                        call address(cd[(arg4 + 36)]) with:
                           funct Mask(32, 224, cd[(arg4 + 68)]) >> 224
                             gas gas_remaining wei
                            args eth.balance(this.address), Mask(224, 32, address(arg3), Mask(224, 32, eth.balance(this.address)) >> 32) >> 32, Mask(32, 224, arg5.length) >> 224
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            50,
                                            0x534c696d69744f7264657273235f7472616e73666572416d6f756e743a20544f4b454e5f5452414e534645525f4641494c45,
                                            mem[414 len 14]
                            if not unknown_0xa9059cbb(?????), address(cd[(arg5 + 36)]) << 64:
                                revert with 0, 
                                            32,
                                            50,
                                            0x534c696d69744f7264657273235f7472616e73666572416d6f756e743a20544f4b454e5f5452414e534645525f4641494c45,
                                            mem[414 len 14]
                        else:
                            mem[328 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            50,
                                            0x534c696d69744f7264657273235f7472616e73666572416d6f756e743a20544f4b454e5f5452414e534645525f4641494c45,
                                            mem[ceil32(return_data.size) + 415 len 14]
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[328]:
                                    revert with 0, 
                                                32,
                                                50,
                                                0x534c696d69744f7264657273235f7472616e73666572416d6f756e743a20544f4b454e5f5452414e534645525f4641494c45,
                                                mem[ceil32(return_data.size) + 415 len 14]
                    return eth.balance(this.address)
                require ext_code.size(address(cd[(arg4 + 36)]))
                staticcall address(cd[(arg4 + 36)]).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < cd[(arg4 + 68)]:
                    revert with 0, 
                                32,
                                46,
                                0xfe4c696d69744f726465727323657865637574653a204953535546494349454e545f424f554748545f544f4b454e,
                                Mask(144, 0, cd[(arg4 + 68)])
                if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == address(cd[(arg4 + 36)]):
                    call arg3 with:
                       value ext_call.return_data[0] wei
                         gas gas_remaining wei
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        48,
                                        0x444c696d69744f7264657273235f7472616e73666572416d6f756e743a204554485f5452414e534645525f4641494c45,
                                        uint128(cd[(arg4 + 68)])
                    else:
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        48,
                                        0x444c696d69744f7264657273235f7472616e73666572416d6f756e743a204554485f5452414e534645525f4641494c45,
                                        mem[ceil32(return_data.size) + 313 len 16]
                    ('bool', 'ext_call.success')
                else:
                    mem[296 len 64] = 0, address(arg3), ext_call.return_data[0 len 28]
                    call address(cd[(arg4 + 36)]) with:
                       funct Mask(32, 224, cd[(arg4 + 68)]) >> 224
                         gas gas_remaining wei
                        args ext_call.return_data[0], Mask(224, 32, address(arg3), ext_call.return_data[0 len 28]) >> 32, Mask(32, 224, arg5.length) >> 224
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        50,
                                        0x534c696d69744f7264657273235f7472616e73666572416d6f756e743a20544f4b454e5f5452414e534645525f4641494c45,
                                        mem[414 len 14]
                        if not unknown_0xa9059cbb(?????), address(cd[(arg5 + 36)]) << 64:
                            revert with 0, 
                                        32,
                                        50,
                                        0x534c696d69744f7264657273235f7472616e73666572416d6f756e743a20544f4b454e5f5452414e534645525f4641494c45,
                                        mem[414 len 14]
                    else:
                        mem[328 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        50,
                                        0x534c696d69744f7264657273235f7472616e73666572416d6f756e743a20544f4b454e5f5452414e534645525f4641494c45,
                                        mem[ceil32(return_data.size) + 415 len 14]
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[328]:
                                revert with 0, 
                                            32,
                                            50,
                                            0x534c696d69744f7264657273235f7472616e73666572416d6f756e743a20544f4b454e5f5452414e534645525f4641494c45,
                                            mem[ceil32(return_data.size) + 415 len 14]
            else:
                mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 
                                32,
                                50,
                                0x534c696d69744f7264657273235f7472616e73666572416d6f756e743a20544f4b454e5f5452414e534645525f4641494c45,
                                mem[ceil32(return_data.size) + 315 len 14]
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[228]:
                        revert with 0, 
                                    32,
                                    50,
                                    0x534c696d69744f7264657273235f7472616e73666572416d6f756e743a20544f4b454e5f5452414e534645525f4641494c45,
                                    mem[ceil32(return_data.size) + 315 len 14]
                mem[ceil32(return_data.size) + 297] = cd[(arg4 + 68)]
                mem[ceil32(return_data.size) + 329] = 160
                mem[ceil32(return_data.size) + 361] = arg5.length
                mem[ceil32(return_data.size) + 393 len arg5.length] = arg5[all]
                mem[ceil32(return_data.size) + arg5.length + 393] = 0
                require ext_code.size(address(cd[(arg5 + 36)]))
                call address(cd[(arg5 + 36)]).handle(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                     gas gas_remaining wei
                    args address(arg1), address(cd[(arg4 + 36)]), ext_call.return_data[0], cd[(arg4 + 68)], Array(len=arg5.length, data=arg5[all])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if address(cd[(arg4 + 36)]) == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                    if eth.balance(this.address) < cd[(arg4 + 68)]:
                        revert with 0, 
                                    32,
                                    46,
                                    0xfe4c696d69744f726465727323657865637574653a204953535546494349454e545f424f554748545f544f4b454e,
                                    Mask(144, 0, cd[(arg4 + 68)])
                    if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == address(cd[(arg4 + 36)]):
                        call arg3 with:
                           value eth.balance(this.address) wei
                             gas gas_remaining wei
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            48,
                                            0x444c696d69744f7264657273235f7472616e73666572416d6f756e743a204554485f5452414e534645525f4641494c45,
                                            uint128(cd[(arg4 + 68)])
                        else:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            48,
                                            0x444c696d69744f7264657273235f7472616e73666572416d6f756e743a204554485f5452414e534645525f4641494c45,
                                            mem[(2 * ceil32(return_data.size)) + 314 len 16]
                        ('bool', 'ext_call.success')
                    else:
                        mem[ceil32(return_data.size) + 297 len 64] = 0, address(arg3), Mask(224, 32, eth.balance(this.address)) >> 32
                        call address(cd[(arg4 + 36)]) with:
                           funct Mask(32, 224, cd[(arg4 + 68)]) >> 224
                             gas gas_remaining wei
                            args eth.balance(this.address), Mask(224, 32, address(arg3), Mask(224, 32, eth.balance(this.address)) >> 32) >> 32, Mask(32, 224, arg5.length) >> 224
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            50,
                                            0x534c696d69744f7264657273235f7472616e73666572416d6f756e743a20544f4b454e5f5452414e534645525f4641494c45,
                                            mem[ceil32(return_data.size) + 415 len 14]
                            if not unknown_0xa9059cbb(?????), address(cd[(arg5 + 36)]) << 64:
                                revert with 0, 
                                            32,
                                            50,
                                            0x534c696d69744f7264657273235f7472616e73666572416d6f756e743a20544f4b454e5f5452414e534645525f4641494c45,
                                            mem[ceil32(return_data.size) + 415 len 14]
                        else:
                            mem[ceil32(return_data.size) + 329 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            50,
                                            0x534c696d69744f7264657273235f7472616e73666572416d6f756e743a20544f4b454e5f5452414e534645525f4641494c45,
                                            mem[(2 * ceil32(return_data.size)) + 416 len 14]
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[ceil32(return_data.size) + 329]:
                                    revert with 0, 
                                                32,
                                                50,
                                                0x534c696d69744f7264657273235f7472616e73666572416d6f756e743a20544f4b454e5f5452414e534645525f4641494c45,
                                                mem[(2 * ceil32(return_data.size)) + 416 len 14]
                    return eth.balance(this.address)
                require ext_code.size(address(cd[(arg4 + 36)]))
                staticcall address(cd[(arg4 + 36)]).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < cd[(arg4 + 68)]:
                    revert with 0, 
                                32,
                                46,
                                0xfe4c696d69744f726465727323657865637574653a204953535546494349454e545f424f554748545f544f4b454e,
                                Mask(144, 0, cd[(arg4 + 68)])
                if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == address(cd[(arg4 + 36)]):
                    call arg3 with:
                       value ext_call.return_data[0] wei
                         gas gas_remaining wei
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        48,
                                        0x444c696d69744f7264657273235f7472616e73666572416d6f756e743a204554485f5452414e534645525f4641494c45,
                                        uint128(cd[(arg4 + 68)])
                    else:
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        48,
                                        0x444c696d69744f7264657273235f7472616e73666572416d6f756e743a204554485f5452414e534645525f4641494c45,
                                        mem[(2 * ceil32(return_data.size)) + 314 len 16]
                    ('bool', 'ext_call.success')
                else:
                    mem[ceil32(return_data.size) + 297 len 64] = 0, address(arg3), ext_call.return_data[0 len 28]
                    call address(cd[(arg4 + 36)]) with:
                       funct Mask(32, 224, cd[(arg4 + 68)]) >> 224
                         gas gas_remaining wei
                        args ext_call.return_data[0], Mask(224, 32, address(arg3), ext_call.return_data[0 len 28]) >> 32, Mask(32, 224, arg5.length) >> 224
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        50,
                                        0x534c696d69744f7264657273235f7472616e73666572416d6f756e743a20544f4b454e5f5452414e534645525f4641494c45,
                                        mem[ceil32(return_data.size) + 415 len 14]
                        if not unknown_0xa9059cbb(?????), address(cd[(arg5 + 36)]) << 64:
                            revert with 0, 
                                        32,
                                        50,
                                        0x534c696d69744f7264657273235f7472616e73666572416d6f756e743a20544f4b454e5f5452414e534645525f4641494c45,
                                        mem[ceil32(return_data.size) + 415 len 14]
                    else:
                        mem[ceil32(return_data.size) + 329 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        50,
                                        0x534c696d69744f7264657273235f7472616e73666572416d6f756e743a20544f4b454e5f5452414e534645525f4641494c45,
                                        mem[(2 * ceil32(return_data.size)) + 416 len 14]
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 329]:
                                revert with 0, 
                                            32,
                                            50,
                                            0x534c696d69744f7264657273235f7472616e73666572416d6f756e743a20544f4b454e5f5452414e534645525f4641494c45,
                                            mem[(2 * ceil32(return_data.size)) + 416 len 14]
        else:
            call address(cd[(arg5 + 36)]) with:
               value ext_call.return_data[0] wei
                 gas gas_remaining wei
            if not return_data.size:
                if not ext_call.success:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                48,
                                0x444c696d69744f7264657273235f7472616e73666572416d6f756e743a204554485f5452414e534645525f4641494c45,
                                mem[212 len 16]
                mem[196] = cd[(arg4 + 68)]
                mem[228] = 160
                mem[260] = arg5.length
                mem[292 len arg5.length] = arg5[all]
                mem[arg5.length + 292] = 0
                require ext_code.size(address(cd[(arg5 + 36)]))
                call address(cd[(arg5 + 36)]).handle(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                     gas gas_remaining wei
                    args 0, 0, address(cd[(arg4 + 36)]), ext_call.return_data[0], cd[(arg4 + 68)], 160, arg5.length, arg5[all], mem[arg5.length + 292 len ceil32(arg5.length) - arg5.length]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if address(cd[(arg4 + 36)]) == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                    if eth.balance(this.address) < cd[(arg4 + 68)]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    46,
                                    0xfe4c696d69744f726465727323657865637574653a204953535546494349454e545f424f554748545f544f4b454e,
                                    Mask(144, 0, cd[(arg4 + 68)])
                    if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == address(cd[(arg4 + 36)]):
                        call arg3 with:
                           value eth.balance(this.address) wei
                             gas gas_remaining wei
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            48,
                                            0x444c696d69744f7264657273235f7472616e73666572416d6f756e743a204554485f5452414e534645525f4641494c45,
                                            uint128(cd[(arg4 + 68)])
                        else:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            48,
                                            0x444c696d69744f7264657273235f7472616e73666572416d6f756e743a204554485f5452414e534645525f4641494c45,
                                            mem[ceil32(return_data.size) + 213 len 16]
                        ('bool', 'ext_call.success')
                    else:
                        mem[196 len 64] = unknown_0xa9059cbb(?????), address(arg3) << 64, 0, Mask(224, 32, eth.balance(this.address)) >> 32
                        call address(cd[(arg4 + 36)]) with:
                             gas gas_remaining wei
                            args Mask(224, 32, eth.balance(this.address)) << 224, Mask(32, 224, arg5.length) >> 224
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            50,
                                            0x534c696d69744f7264657273235f7472616e73666572416d6f756e743a20544f4b454e5f5452414e534645525f4641494c45,
                                            mem[314 len 14]
                            if not unknown_0xa9059cbb(?????), address(arg3) << 64:
                                revert with 0, 
                                            32,
                                            50,
                                            0x534c696d69744f7264657273235f7472616e73666572416d6f756e743a20544f4b454e5f5452414e534645525f4641494c45,
                                            mem[314 len 14]
                        else:
                            mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            50,
                                            0x534c696d69744f7264657273235f7472616e73666572416d6f756e743a20544f4b454e5f5452414e534645525f4641494c45,
                                            mem[ceil32(return_data.size) + 315 len 14]
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[228]:
                                    revert with 0, 
                                                32,
                                                50,
                                                0x534c696d69744f7264657273235f7472616e73666572416d6f756e743a20544f4b454e5f5452414e534645525f4641494c45,
                                                mem[ceil32(return_data.size) + 315 len 14]
                    return eth.balance(this.address)
                require ext_code.size(address(cd[(arg4 + 36)]))
                staticcall address(cd[(arg4 + 36)]).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < cd[(arg4 + 68)]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                46,
                                0xfe4c696d69744f726465727323657865637574653a204953535546494349454e545f424f554748545f544f4b454e,
                                Mask(144, 0, cd[(arg4 + 68)])
                if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == address(cd[(arg4 + 36)]):
                    call arg3 with:
                       value ext_call.return_data[0] wei
                         gas gas_remaining wei
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        48,
                                        0x444c696d69744f7264657273235f7472616e73666572416d6f756e743a204554485f5452414e534645525f4641494c45,
                                        uint128(cd[(arg4 + 68)])
                    else:
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        48,
                                        0x444c696d69744f7264657273235f7472616e73666572416d6f756e743a204554485f5452414e534645525f4641494c45,
                                        mem[ceil32(return_data.size) + 213 len 16]
                    ('bool', 'ext_call.success')
                else:
                    mem[196 len 64] = unknown_0xa9059cbb(?????), address(arg3) << 64, 0, ext_call.return_data[0 len 28]
                    call address(cd[(arg4 + 36)]) with:
                         gas gas_remaining wei
                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, Mask(32, 224, arg5.length) >> 224
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        50,
                                        0x534c696d69744f7264657273235f7472616e73666572416d6f756e743a20544f4b454e5f5452414e534645525f4641494c45,
                                        mem[314 len 14]
                        if not unknown_0xa9059cbb(?????), address(arg3) << 64:
                            revert with 0, 
                                        32,
                                        50,
                                        0x534c696d69744f7264657273235f7472616e73666572416d6f756e743a20544f4b454e5f5452414e534645525f4641494c45,
                                        mem[314 len 14]
                    else:
                        mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        50,
                                        0x534c696d69744f7264657273235f7472616e73666572416d6f756e743a20544f4b454e5f5452414e534645525f4641494c45,
                                        mem[ceil32(return_data.size) + 315 len 14]
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[228]:
                                revert with 0, 
                                            32,
                                            50,
                                            0x534c696d69744f7264657273235f7472616e73666572416d6f756e743a20544f4b454e5f5452414e534645525f4641494c45,
                                            mem[ceil32(return_data.size) + 315 len 14]
            else:
                mem[96] = return_data.size
                mem[128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 
                                32,
                                48,
                                0x444c696d69744f7264657273235f7472616e73666572416d6f756e743a204554485f5452414e534645525f4641494c45,
                                mem[ceil32(return_data.size) + 213 len 16]
                mem[ceil32(return_data.size) + 197] = cd[(arg4 + 68)]
                mem[ceil32(return_data.size) + 229] = 160
                mem[ceil32(return_data.size) + 261] = arg5.length
                mem[ceil32(return_data.size) + 293 len arg5.length] = arg5[all]
                mem[ceil32(return_data.size) + arg5.length + 293] = 0
                require ext_code.size(address(cd[(arg5 + 36)]))
                call address(cd[(arg5 + 36)]).handle(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                     gas gas_remaining wei
                    args address(arg1), address(cd[(arg4 + 36)]), ext_call.return_data[0], cd[(arg4 + 68)], Array(len=arg5.length, data=arg5[all])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if address(cd[(arg4 + 36)]) == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                    if eth.balance(this.address) < cd[(arg4 + 68)]:
                        revert with 0, 
                                    32,
                                    46,
                                    0xfe4c696d69744f726465727323657865637574653a204953535546494349454e545f424f554748545f544f4b454e,
                                    Mask(144, 0, cd[(arg4 + 68)])
                    if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == address(cd[(arg4 + 36)]):
                        call arg3 with:
                           value eth.balance(this.address) wei
                             gas gas_remaining wei
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            48,
                                            0x444c696d69744f7264657273235f7472616e73666572416d6f756e743a204554485f5452414e534645525f4641494c45,
                                            uint128(cd[(arg4 + 68)])
                        else:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            48,
                                            0x444c696d69744f7264657273235f7472616e73666572416d6f756e743a204554485f5452414e534645525f4641494c45,
                                            mem[(2 * ceil32(return_data.size)) + 214 len 16]
                        ('bool', 'ext_call.success')
                    else:
                        mem[ceil32(return_data.size) + 97] = 68
                        mem[ceil32(return_data.size) + 133 len 28] = address(arg3) << 64
                        mem[ceil32(return_data.size) + 129 len 4] = unknown_0xa9059cbb(?????)
                        mem[ceil32(return_data.size) + 197 len 64] = unknown_0xa9059cbb(?????), address(arg3) << 64, 0, Mask(224, 32, eth.balance(this.address)) >> 32
                        call address(cd[(arg4 + 36)]) with:
                             gas gas_remaining wei
                            args Mask(224, 32, eth.balance(this.address)) << 224, Mask(32, 224, arg5.length) >> 224
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            50,
                                            0x534c696d69744f7264657273235f7472616e73666572416d6f756e743a20544f4b454e5f5452414e534645525f4641494c45,
                                            mem[ceil32(return_data.size) + 315 len 14]
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                50,
                                                0x534c696d69744f7264657273235f7472616e73666572416d6f756e743a20544f4b454e5f5452414e534645525f4641494c45,
                                                mem[ceil32(return_data.size) + 315 len 14]
                        else:
                            mem[ceil32(return_data.size) + 229 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            50,
                                            0x534c696d69744f7264657273235f7472616e73666572416d6f756e743a20544f4b454e5f5452414e534645525f4641494c45,
                                            mem[(2 * ceil32(return_data.size)) + 316 len 14]
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[ceil32(return_data.size) + 229]:
                                    revert with 0, 
                                                32,
                                                50,
                                                0x534c696d69744f7264657273235f7472616e73666572416d6f756e743a20544f4b454e5f5452414e534645525f4641494c45,
                                                mem[(2 * ceil32(return_data.size)) + 316 len 14]
                    return eth.balance(this.address)
                require ext_code.size(address(cd[(arg4 + 36)]))
                staticcall address(cd[(arg4 + 36)]).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < cd[(arg4 + 68)]:
                    revert with 0, 
                                32,
                                46,
                                0xfe4c696d69744f726465727323657865637574653a204953535546494349454e545f424f554748545f544f4b454e,
                                Mask(144, 0, cd[(arg4 + 68)])
                if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == address(cd[(arg4 + 36)]):
                    call arg3 with:
                       value ext_call.return_data[0] wei
                         gas gas_remaining wei
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        48,
                                        0x444c696d69744f7264657273235f7472616e73666572416d6f756e743a204554485f5452414e534645525f4641494c45,
                                        uint128(cd[(arg4 + 68)])
                    else:
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        48,
                                        0x444c696d69744f7264657273235f7472616e73666572416d6f756e743a204554485f5452414e534645525f4641494c45,
                                        mem[(2 * ceil32(return_data.size)) + 214 len 16]
                    ('bool', 'ext_call.success')
                else:
                    mem[ceil32(return_data.size) + 97] = 68
                    mem[ceil32(return_data.size) + 133 len 28] = address(arg3) << 64
                    mem[ceil32(return_data.size) + 129 len 4] = unknown_0xa9059cbb(?????)
                    mem[ceil32(return_data.size) + 197 len 64] = unknown_0xa9059cbb(?????), address(arg3) << 64, 0, ext_call.return_data[0 len 28]
                    call address(cd[(arg4 + 36)]) with:
                         gas gas_remaining wei
                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, Mask(32, 224, arg5.length) >> 224
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        50,
                                        0x534c696d69744f7264657273235f7472616e73666572416d6f756e743a20544f4b454e5f5452414e534645525f4641494c45,
                                        mem[ceil32(return_data.size) + 315 len 14]
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            50,
                                            0x534c696d69744f7264657273235f7472616e73666572416d6f756e743a20544f4b454e5f5452414e534645525f4641494c45,
                                            mem[ceil32(return_data.size) + 315 len 14]
                    else:
                        mem[ceil32(return_data.size) + 229 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        50,
                                        0x534c696d69744f7264657273235f7472616e73666572416d6f756e743a20544f4b454e5f5452414e534645525f4641494c45,
                                        mem[(2 * ceil32(return_data.size)) + 316 len 14]
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 229]:
                                revert with 0, 
                                            32,
                                            50,
                                            0x534c696d69744f7264657273235f7472616e73666572416d6f756e743a20544f4b454e5f5452414e534645525f4641494c45,
                                            mem[(2 * ceil32(return_data.size)) + 316 len 14]
    return ext_call.return_data[0]
}



}
