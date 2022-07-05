contract main {




// =====================  Runtime code  =====================


function close(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if 0x7e2098ee0d2471bb50dc0a811e98a66083b4bf2a != msg.sender:
        if 0xe7996076c216669a68397c5b11fd343f7cc26037 != msg.sender:
            if 0x9b7d958e453f196daebd46bc5fc0d54eab7794cc != msg.sender:
                if 0xcb8404fe35ea949ed3cfae011d536ee16216ccc2 != msg.sender:
                    if 0xdadb7e6c0620f8612a79128790b23c688e52ccc3 != msg.sender:
                        if 0x4fa394e213401b933f220f0c6cf09388dc16ccc4 != msg.sender:
                            if 0x407c2d84e0b14b809dcb4af17370c9cebac7ccc5 != msg.sender:
                                if 0x44fb97963f65f9fc4c305c924e251f8b8b78ccc6 != msg.sender:
                                    if 0x21d1ae8d95eced5caffd31fbf42c89e37a9bccc7 != msg.sender:
                                        if 0xb8e905aed8862eca44db31dd850dc984a79dccc8 != msg.sender:
                                            if 0x6fe0ace400b081903a3a1cdf10668e35a258ccc9 != msg.sender:
                                                revert with 0, 'only withdrawer can call this'
        if 0x7e2098ee0d2471bb50dc0a811e98a66083b4bf2a != msg.sender:
            if 0xe7996076c216669a68397c5b11fd343f7cc26037 != msg.sender:
                if 0x9b7d958e453f196daebd46bc5fc0d54eab7794cc != msg.sender:
                    if 0xcb8404fe35ea949ed3cfae011d536ee16216ccc2 != msg.sender:
                        if 0xdadb7e6c0620f8612a79128790b23c688e52ccc3 != msg.sender:
                            if 0x4fa394e213401b933f220f0c6cf09388dc16ccc4 != msg.sender:
                                if 0x407c2d84e0b14b809dcb4af17370c9cebac7ccc5 != msg.sender:
                                    if 0x44fb97963f65f9fc4c305c924e251f8b8b78ccc6 != msg.sender:
                                        if 0x21d1ae8d95eced5caffd31fbf42c89e37a9bccc7 != msg.sender:
                                            if 0xb8e905aed8862eca44db31dd850dc984a79dccc8 != msg.sender:
                                                if 0x6fe0ace400b081903a3a1cdf10668e35a258ccc9 != msg.sender:
    selfdestruct(arg1)
}

function _fallback() payable {
    revert
}

function sortTokens(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg1 == arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'UniswapV2Library: IDENTICAL_ADDRESSES'
    if arg1 < arg2:
        if not arg1:
            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
        return address(arg1), arg2
    if not arg2:
        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
    return address(arg2), arg1
}

function getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
    if arg2 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
    if arg3 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
    if arg1 and 9975 > -1 / arg1:
        revert with 'NH{q', 17
    if 9975 * arg1 and arg3 > -1 / 9975 * arg1:
        revert with 'NH{q', 17
    if arg2 and 10000 > -1 / arg2:
        revert with 'NH{q', 17
    if 10000 * arg2 > (-9975 * arg1) - 1:
        revert with 'NH{q', 17
    if not (10000 * arg2) + (9975 * arg1):
        revert with 'NH{q', 18
    return (9975 * arg1 * arg3 / (10000 * arg2) + (9975 * arg1))
}

function sub_60f63110(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    if 0x7e2098ee0d2471bb50dc0a811e98a66083b4bf2a != msg.sender:
        if 0xe7996076c216669a68397c5b11fd343f7cc26037 != msg.sender:
            if 0x9b7d958e453f196daebd46bc5fc0d54eab7794cc != msg.sender:
                if 0xcb8404fe35ea949ed3cfae011d536ee16216ccc2 != msg.sender:
                    if 0xdadb7e6c0620f8612a79128790b23c688e52ccc3 != msg.sender:
                        if 0x4fa394e213401b933f220f0c6cf09388dc16ccc4 != msg.sender:
                            if 0x407c2d84e0b14b809dcb4af17370c9cebac7ccc5 != msg.sender:
                                if 0x44fb97963f65f9fc4c305c924e251f8b8b78ccc6 != msg.sender:
                                    if 0x21d1ae8d95eced5caffd31fbf42c89e37a9bccc7 != msg.sender:
                                        if 0xb8e905aed8862eca44db31dd850dc984a79dccc8 != msg.sender:
                                            if 0x6fe0ace400b081903a3a1cdf10668e35a258ccc9 != msg.sender:
                                                revert with 0, 'only withdrawer can call this'
    require ext_code.size(address(arg1))
    call address(arg1).0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_cfd8e6f9(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == arg3
    require arg4 == arg4
    if 0x7e2098ee0d2471bb50dc0a811e98a66083b4bf2a != msg.sender:
        if 0xe7996076c216669a68397c5b11fd343f7cc26037 != msg.sender:
            if 0x9b7d958e453f196daebd46bc5fc0d54eab7794cc != msg.sender:
                if 0xcb8404fe35ea949ed3cfae011d536ee16216ccc2 != msg.sender:
                    if 0xdadb7e6c0620f8612a79128790b23c688e52ccc3 != msg.sender:
                        if 0x4fa394e213401b933f220f0c6cf09388dc16ccc4 != msg.sender:
                            if 0x407c2d84e0b14b809dcb4af17370c9cebac7ccc5 != msg.sender:
                                if 0x44fb97963f65f9fc4c305c924e251f8b8b78ccc6 != msg.sender:
                                    if 0x21d1ae8d95eced5caffd31fbf42c89e37a9bccc7 != msg.sender:
                                        if 0xb8e905aed8862eca44db31dd850dc984a79dccc8 != msg.sender:
                                            if 0x6fe0ace400b081903a3a1cdf10668e35a258ccc9 != msg.sender:
                                                revert with 0, 'only withdrawer can call this'
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args arg2, arg3
    if not return_data.size:
        require ext_call.success and not return_data.size
    else:
        require ext_call.success and return_data.size == 32 and ext_call.return_data[0] == 1
    call arg2.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
         gas gas_remaining wei
        args 0, arg4, this.address, 4
    require ext_call.success
}

function sub_a1b2096c(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == arg3
    require arg4 == arg4
    if 0x7e2098ee0d2471bb50dc0a811e98a66083b4bf2a != msg.sender:
        if 0xe7996076c216669a68397c5b11fd343f7cc26037 != msg.sender:
            if 0x9b7d958e453f196daebd46bc5fc0d54eab7794cc != msg.sender:
                if 0xcb8404fe35ea949ed3cfae011d536ee16216ccc2 != msg.sender:
                    if 0xdadb7e6c0620f8612a79128790b23c688e52ccc3 != msg.sender:
                        if 0x4fa394e213401b933f220f0c6cf09388dc16ccc4 != msg.sender:
                            if 0x407c2d84e0b14b809dcb4af17370c9cebac7ccc5 != msg.sender:
                                if 0x44fb97963f65f9fc4c305c924e251f8b8b78ccc6 != msg.sender:
                                    if 0x21d1ae8d95eced5caffd31fbf42c89e37a9bccc7 != msg.sender:
                                        if 0xb8e905aed8862eca44db31dd850dc984a79dccc8 != msg.sender:
                                            if 0x6fe0ace400b081903a3a1cdf10668e35a258ccc9 != msg.sender:
                                                revert with 0, 'only withdrawer can call this'
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args arg2, arg3
    if not return_data.size:
        require ext_call.success and not return_data.size
    else:
        require ext_call.success and return_data.size == 32 and ext_call.return_data[0] == 1
    call arg2.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
         gas gas_remaining wei
        args arg4, 0, this.address, 36
    require ext_call.success
}

function getReserves(address arg1, address arg2, address arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if arg2 == arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'UniswapV2Library: IDENTICAL_ADDRESSES'
    if arg2 < arg3:
        if not arg2:
            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
        require ext_code.size(arg1)
        staticcall arg1.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        if arg2 == arg2:
            return ext_call.return_data[18 len 14], ext_call.return_data[32] << 144
    else:
        if not arg3:
            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
        require ext_code.size(arg1)
        staticcall arg1.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        if arg2 == arg3:
            return ext_call.return_data[18 len 14], ext_call.return_data[32] << 144
    return ext_call.return_data[50 len 14], ext_call.return_data[0] << 144
}

function withdrawErc20(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if 0x7e2098ee0d2471bb50dc0a811e98a66083b4bf2a != msg.sender:
        if 0xe7996076c216669a68397c5b11fd343f7cc26037 != msg.sender:
            if 0x9b7d958e453f196daebd46bc5fc0d54eab7794cc != msg.sender:
                if 0xcb8404fe35ea949ed3cfae011d536ee16216ccc2 != msg.sender:
                    if 0xdadb7e6c0620f8612a79128790b23c688e52ccc3 != msg.sender:
                        if 0x4fa394e213401b933f220f0c6cf09388dc16ccc4 != msg.sender:
                            if 0x407c2d84e0b14b809dcb4af17370c9cebac7ccc5 != msg.sender:
                                if 0x44fb97963f65f9fc4c305c924e251f8b8b78ccc6 != msg.sender:
                                    if 0x21d1ae8d95eced5caffd31fbf42c89e37a9bccc7 != msg.sender:
                                        if 0xb8e905aed8862eca44db31dd850dc984a79dccc8 != msg.sender:
                                            if 0x6fe0ace400b081903a3a1cdf10668e35a258ccc9 != msg.sender:
                                                revert with 0, 'only withdrawer can call this'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function getAmountsOut(uint256 arg1, address arg2, address arg3, address arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    if arg3 == arg4:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'UniswapV2Library: IDENTICAL_ADDRESSES'
    if arg3 < arg4:
        if not arg3:
            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
        require ext_code.size(arg2)
        staticcall arg2.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        if arg3 == arg3:
            if arg1 <= 0:
                revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
            if ext_call.return_data[18 len 14] <= 0:
                revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
            if ext_call.return_data[50 len 14] <= 0:
                revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
            if arg1 and 9975 > -1 / arg1:
                revert with 'NH{q', 17
            if 9975 * arg1 and ext_call.return_data[50 len 14] > -1 / 9975 * arg1:
                revert with 'NH{q', 17
            if ext_call.return_data[18 len 14] and 10000 > -1 / ext_call.return_data[18 len 14]:
                revert with 'NH{q', 17
            if 10000 * ext_call.return_data[18 len 14] > (-9975 * arg1) - 1:
                revert with 'NH{q', 17
            if not (10000 * ext_call.return_data[18 len 14]) + (9975 * arg1):
                revert with 'NH{q', 18
            return (9975 * arg1 * ext_call.return_data[50 len 14] / (10000 * ext_call.return_data[18 len 14]) + (9975 * arg1))
    else:
        if not arg4:
            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
        require ext_code.size(arg2)
        staticcall arg2.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        if arg3 == arg4:
            if arg1 <= 0:
                revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
            if ext_call.return_data[18 len 14] <= 0:
                revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
            if ext_call.return_data[50 len 14] <= 0:
                revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
            if arg1 and 9975 > -1 / arg1:
                revert with 'NH{q', 17
            if 9975 * arg1 and ext_call.return_data[50 len 14] > -1 / 9975 * arg1:
                revert with 'NH{q', 17
            if ext_call.return_data[18 len 14] and 10000 > -1 / ext_call.return_data[18 len 14]:
                revert with 'NH{q', 17
            if 10000 * ext_call.return_data[18 len 14] > (-9975 * arg1) - 1:
                revert with 'NH{q', 17
            if not (10000 * ext_call.return_data[18 len 14]) + (9975 * arg1):
                revert with 'NH{q', 18
            return (9975 * arg1 * ext_call.return_data[50 len 14] / (10000 * ext_call.return_data[18 len 14]) + (9975 * arg1))
    if arg1 <= 0:
        revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
    if ext_call.return_data[50 len 14] <= 0:
        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
    if ext_call.return_data[18 len 14] <= 0:
        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
    if arg1 and 9975 > -1 / arg1:
        revert with 'NH{q', 17
    if 9975 * arg1 and ext_call.return_data[18 len 14] > -1 / 9975 * arg1:
        revert with 'NH{q', 17
    if ext_call.return_data[50 len 14] and 10000 > -1 / ext_call.return_data[50 len 14]:
        revert with 'NH{q', 17
    if 10000 * ext_call.return_data[50 len 14] > (-9975 * arg1) - 1:
        revert with 'NH{q', 17
    if not (10000 * ext_call.return_data[50 len 14]) + (9975 * arg1):
        revert with 'NH{q', 18
    return (9975 * arg1 * ext_call.return_data[18 len 14] / (10000 * ext_call.return_data[50 len 14]) + (9975 * arg1))
}

function sub_a63d195e(?) payable {
    require calldata.size - 4 >= 224
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == arg4
    require arg5 == arg5
    require arg6 == uint32(arg6)
    require arg7 == uint32(arg7)
    if 0x7e2098ee0d2471bb50dc0a811e98a66083b4bf2a != msg.sender:
        if 0xe7996076c216669a68397c5b11fd343f7cc26037 != msg.sender:
            if 0x9b7d958e453f196daebd46bc5fc0d54eab7794cc != msg.sender:
                if 0xcb8404fe35ea949ed3cfae011d536ee16216ccc2 != msg.sender:
                    if 0xdadb7e6c0620f8612a79128790b23c688e52ccc3 != msg.sender:
                        if 0x4fa394e213401b933f220f0c6cf09388dc16ccc4 != msg.sender:
                            if 0x407c2d84e0b14b809dcb4af17370c9cebac7ccc5 != msg.sender:
                                if 0x44fb97963f65f9fc4c305c924e251f8b8b78ccc6 != msg.sender:
                                    if 0x21d1ae8d95eced5caffd31fbf42c89e37a9bccc7 != msg.sender:
                                        if 0xb8e905aed8862eca44db31dd850dc984a79dccc8 != msg.sender:
                                            if 0x6fe0ace400b081903a3a1cdf10668e35a258ccc9 != msg.sender:
                                                revert with 0, 'only withdrawer can call this'
    if arg5 and uint32(arg6) > -1 / arg5:
        revert with 'NH{q', 17
    if not uint32(arg7):
        revert with 'NH{q', 18
    if address(arg1) == address(arg2):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'UniswapV2Library: IDENTICAL_ADDRESSES'
    if address(arg1) < address(arg2):
        if not address(arg1):
            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
        require ext_code.size(address(arg3))
        staticcall address(arg3).getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        if arg4 <= 0:
            revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
        if address(arg1) == address(arg1):
            if ext_call.return_data[18 len 14] <= 0:
                revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
            if ext_call.return_data[50 len 14] <= 0:
                revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
            if arg4 and 9975 > -1 / arg4:
                revert with 'NH{q', 17
            if 9975 * arg4 and ext_call.return_data[50 len 14] > -1 / 9975 * arg4:
                revert with 'NH{q', 17
            if ext_call.return_data[18 len 14] and 10000 > -1 / ext_call.return_data[18 len 14]:
                revert with 'NH{q', 17
            if 10000 * ext_call.return_data[18 len 14] > (-9975 * arg4) - 1:
                revert with 'NH{q', 17
            if not (10000 * ext_call.return_data[18 len 14]) + (9975 * arg4):
                revert with 'NH{q', 18
            if 9975 * arg4 * ext_call.return_data[50 len 14] / (10000 * ext_call.return_data[18 len 14]) + (9975 * arg4) < arg5 * uint32(arg6) / uint32(arg7):
                revert with 0, 'UniswapV2Router: INSUFFICIENT_OUTPUT_AMOUNT'
            call arg1.0xa9059cbb with:
                 gas gas_remaining wei
                args arg3, arg4
            if not return_data.size:
                require ext_call.success and not return_data.size
            else:
                require ext_call.success and return_data.size == 32 and ext_call.return_data[0] == 1
            call arg3.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0, 9975 * arg4 * ext_call.return_data[50 len 14] / (10000 * ext_call.return_data[18 len 14]) + (9975 * arg4), this.address, 4
        else:
            if ext_call.return_data[50 len 14] <= 0:
                revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
            if ext_call.return_data[18 len 14] <= 0:
                revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
            if arg4 and 9975 > -1 / arg4:
                revert with 'NH{q', 17
            if 9975 * arg4 and ext_call.return_data[18 len 14] > -1 / 9975 * arg4:
                revert with 'NH{q', 17
            if ext_call.return_data[50 len 14] and 10000 > -1 / ext_call.return_data[50 len 14]:
                revert with 'NH{q', 17
            if 10000 * ext_call.return_data[50 len 14] > (-9975 * arg4) - 1:
                revert with 'NH{q', 17
            if not (10000 * ext_call.return_data[50 len 14]) + (9975 * arg4):
                revert with 'NH{q', 18
            if 9975 * arg4 * ext_call.return_data[18 len 14] / (10000 * ext_call.return_data[50 len 14]) + (9975 * arg4) < arg5 * uint32(arg6) / uint32(arg7):
                revert with 0, 'UniswapV2Router: INSUFFICIENT_OUTPUT_AMOUNT'
            call arg1.0xa9059cbb with:
                 gas gas_remaining wei
                args arg3, arg4
            if not return_data.size:
                require ext_call.success and not return_data.size
            else:
                require ext_call.success and return_data.size == 32 and ext_call.return_data[0] == 1
            call arg3.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0, 9975 * arg4 * ext_call.return_data[18 len 14] / (10000 * ext_call.return_data[50 len 14]) + (9975 * arg4), this.address, 4
    else:
        if not address(arg2):
            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
        require ext_code.size(address(arg3))
        staticcall address(arg3).getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        if arg4 <= 0:
            revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
        if address(arg1) == address(arg2):
            if ext_call.return_data[18 len 14] <= 0:
                revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
            if ext_call.return_data[50 len 14] <= 0:
                revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
            if arg4 and 9975 > -1 / arg4:
                revert with 'NH{q', 17
            if 9975 * arg4 and ext_call.return_data[50 len 14] > -1 / 9975 * arg4:
                revert with 'NH{q', 17
            if ext_call.return_data[18 len 14] and 10000 > -1 / ext_call.return_data[18 len 14]:
                revert with 'NH{q', 17
            if 10000 * ext_call.return_data[18 len 14] > (-9975 * arg4) - 1:
                revert with 'NH{q', 17
            if not (10000 * ext_call.return_data[18 len 14]) + (9975 * arg4):
                revert with 'NH{q', 18
            if 9975 * arg4 * ext_call.return_data[50 len 14] / (10000 * ext_call.return_data[18 len 14]) + (9975 * arg4) < arg5 * uint32(arg6) / uint32(arg7):
                revert with 0, 'UniswapV2Router: INSUFFICIENT_OUTPUT_AMOUNT'
            call arg1.0xa9059cbb with:
                 gas gas_remaining wei
                args arg3, arg4
            if not return_data.size:
                require ext_call.success and not return_data.size
            else:
                require ext_call.success and return_data.size == 32 and ext_call.return_data[0] == 1
            call arg3.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0, 9975 * arg4 * ext_call.return_data[50 len 14] / (10000 * ext_call.return_data[18 len 14]) + (9975 * arg4), this.address, 4
        else:
            if ext_call.return_data[50 len 14] <= 0:
                revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
            if ext_call.return_data[18 len 14] <= 0:
                revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
            if arg4 and 9975 > -1 / arg4:
                revert with 'NH{q', 17
            if 9975 * arg4 and ext_call.return_data[18 len 14] > -1 / 9975 * arg4:
                revert with 'NH{q', 17
            if ext_call.return_data[50 len 14] and 10000 > -1 / ext_call.return_data[50 len 14]:
                revert with 'NH{q', 17
            if 10000 * ext_call.return_data[50 len 14] > (-9975 * arg4) - 1:
                revert with 'NH{q', 17
            if not (10000 * ext_call.return_data[50 len 14]) + (9975 * arg4):
                revert with 'NH{q', 18
            if 9975 * arg4 * ext_call.return_data[18 len 14] / (10000 * ext_call.return_data[50 len 14]) + (9975 * arg4) < arg5 * uint32(arg6) / uint32(arg7):
                revert with 0, 'UniswapV2Router: INSUFFICIENT_OUTPUT_AMOUNT'
            call arg1.0xa9059cbb with:
                 gas gas_remaining wei
                args arg3, arg4
            if not return_data.size:
                require ext_call.success and not return_data.size
            else:
                require ext_call.success and return_data.size == 32 and ext_call.return_data[0] == 1
            call arg3.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0, 9975 * arg4 * ext_call.return_data[18 len 14] / (10000 * ext_call.return_data[50 len 14]) + (9975 * arg4), this.address, 4
    require ext_call.success
}

function sub_c5c5c535(?) payable {
    require calldata.size - 4 >= 224
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == arg4
    require arg5 == arg5
    require arg6 == uint32(arg6)
    require arg7 == uint32(arg7)
    if 0x7e2098ee0d2471bb50dc0a811e98a66083b4bf2a != msg.sender:
        if 0xe7996076c216669a68397c5b11fd343f7cc26037 != msg.sender:
            if 0x9b7d958e453f196daebd46bc5fc0d54eab7794cc != msg.sender:
                if 0xcb8404fe35ea949ed3cfae011d536ee16216ccc2 != msg.sender:
                    if 0xdadb7e6c0620f8612a79128790b23c688e52ccc3 != msg.sender:
                        if 0x4fa394e213401b933f220f0c6cf09388dc16ccc4 != msg.sender:
                            if 0x407c2d84e0b14b809dcb4af17370c9cebac7ccc5 != msg.sender:
                                if 0x44fb97963f65f9fc4c305c924e251f8b8b78ccc6 != msg.sender:
                                    if 0x21d1ae8d95eced5caffd31fbf42c89e37a9bccc7 != msg.sender:
                                        if 0xb8e905aed8862eca44db31dd850dc984a79dccc8 != msg.sender:
                                            if 0x6fe0ace400b081903a3a1cdf10668e35a258ccc9 != msg.sender:
                                                revert with 0, 'only withdrawer can call this'
    if arg5 and uint32(arg6) > -1 / arg5:
        revert with 'NH{q', 17
    if not uint32(arg7):
        revert with 'NH{q', 18
    if address(arg1) == address(arg2):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'UniswapV2Library: IDENTICAL_ADDRESSES'
    if address(arg1) < address(arg2):
        if not address(arg1):
            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
        require ext_code.size(address(arg3))
        staticcall address(arg3).getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        if arg4 <= 0:
            revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
        if address(arg1) == address(arg1):
            if ext_call.return_data[18 len 14] <= 0:
                revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
            if ext_call.return_data[50 len 14] <= 0:
                revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
            if arg4 and 9975 > -1 / arg4:
                revert with 'NH{q', 17
            if 9975 * arg4 and ext_call.return_data[50 len 14] > -1 / 9975 * arg4:
                revert with 'NH{q', 17
            if ext_call.return_data[18 len 14] and 10000 > -1 / ext_call.return_data[18 len 14]:
                revert with 'NH{q', 17
            if 10000 * ext_call.return_data[18 len 14] > (-9975 * arg4) - 1:
                revert with 'NH{q', 17
            if not (10000 * ext_call.return_data[18 len 14]) + (9975 * arg4):
                revert with 'NH{q', 18
            if 9975 * arg4 * ext_call.return_data[50 len 14] / (10000 * ext_call.return_data[18 len 14]) + (9975 * arg4) < arg5 * uint32(arg6) / uint32(arg7):
                revert with 0, 'UniswapV2Router: INSUFFICIENT_OUTPUT_AMOUNT'
            call arg1.0xa9059cbb with:
                 gas gas_remaining wei
                args arg3, arg4
            if not return_data.size:
                require ext_call.success and not return_data.size
            else:
                require ext_call.success and return_data.size == 32 and ext_call.return_data[0] == 1
            call arg3.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 9975 * arg4 * ext_call.return_data[50 len 14] / (10000 * ext_call.return_data[18 len 14]) + (9975 * arg4), 0, this.address, 36
        else:
            if ext_call.return_data[50 len 14] <= 0:
                revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
            if ext_call.return_data[18 len 14] <= 0:
                revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
            if arg4 and 9975 > -1 / arg4:
                revert with 'NH{q', 17
            if 9975 * arg4 and ext_call.return_data[18 len 14] > -1 / 9975 * arg4:
                revert with 'NH{q', 17
            if ext_call.return_data[50 len 14] and 10000 > -1 / ext_call.return_data[50 len 14]:
                revert with 'NH{q', 17
            if 10000 * ext_call.return_data[50 len 14] > (-9975 * arg4) - 1:
                revert with 'NH{q', 17
            if not (10000 * ext_call.return_data[50 len 14]) + (9975 * arg4):
                revert with 'NH{q', 18
            if 9975 * arg4 * ext_call.return_data[18 len 14] / (10000 * ext_call.return_data[50 len 14]) + (9975 * arg4) < arg5 * uint32(arg6) / uint32(arg7):
                revert with 0, 'UniswapV2Router: INSUFFICIENT_OUTPUT_AMOUNT'
            call arg1.0xa9059cbb with:
                 gas gas_remaining wei
                args arg3, arg4
            if not return_data.size:
                require ext_call.success and not return_data.size
            else:
                require ext_call.success and return_data.size == 32 and ext_call.return_data[0] == 1
            call arg3.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 9975 * arg4 * ext_call.return_data[18 len 14] / (10000 * ext_call.return_data[50 len 14]) + (9975 * arg4), 0, this.address, 36
    else:
        if not address(arg2):
            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
        require ext_code.size(address(arg3))
        staticcall address(arg3).getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        if arg4 <= 0:
            revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
        if address(arg1) == address(arg2):
            if ext_call.return_data[18 len 14] <= 0:
                revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
            if ext_call.return_data[50 len 14] <= 0:
                revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
            if arg4 and 9975 > -1 / arg4:
                revert with 'NH{q', 17
            if 9975 * arg4 and ext_call.return_data[50 len 14] > -1 / 9975 * arg4:
                revert with 'NH{q', 17
            if ext_call.return_data[18 len 14] and 10000 > -1 / ext_call.return_data[18 len 14]:
                revert with 'NH{q', 17
            if 10000 * ext_call.return_data[18 len 14] > (-9975 * arg4) - 1:
                revert with 'NH{q', 17
            if not (10000 * ext_call.return_data[18 len 14]) + (9975 * arg4):
                revert with 'NH{q', 18
            if 9975 * arg4 * ext_call.return_data[50 len 14] / (10000 * ext_call.return_data[18 len 14]) + (9975 * arg4) < arg5 * uint32(arg6) / uint32(arg7):
                revert with 0, 'UniswapV2Router: INSUFFICIENT_OUTPUT_AMOUNT'
            call arg1.0xa9059cbb with:
                 gas gas_remaining wei
                args arg3, arg4
            if not return_data.size:
                require ext_call.success and not return_data.size
            else:
                require ext_call.success and return_data.size == 32 and ext_call.return_data[0] == 1
            call arg3.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 9975 * arg4 * ext_call.return_data[50 len 14] / (10000 * ext_call.return_data[18 len 14]) + (9975 * arg4), 0, this.address, 36
        else:
            if ext_call.return_data[50 len 14] <= 0:
                revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
            if ext_call.return_data[18 len 14] <= 0:
                revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
            if arg4 and 9975 > -1 / arg4:
                revert with 'NH{q', 17
            if 9975 * arg4 and ext_call.return_data[18 len 14] > -1 / 9975 * arg4:
                revert with 'NH{q', 17
            if ext_call.return_data[50 len 14] and 10000 > -1 / ext_call.return_data[50 len 14]:
                revert with 'NH{q', 17
            if 10000 * ext_call.return_data[50 len 14] > (-9975 * arg4) - 1:
                revert with 'NH{q', 17
            if not (10000 * ext_call.return_data[50 len 14]) + (9975 * arg4):
                revert with 'NH{q', 18
            if 9975 * arg4 * ext_call.return_data[18 len 14] / (10000 * ext_call.return_data[50 len 14]) + (9975 * arg4) < arg5 * uint32(arg6) / uint32(arg7):
                revert with 0, 'UniswapV2Router: INSUFFICIENT_OUTPUT_AMOUNT'
            call arg1.0xa9059cbb with:
                 gas gas_remaining wei
                args arg3, arg4
            if not return_data.size:
                require ext_call.success and not return_data.size
            else:
                require ext_call.success and return_data.size == 32 and ext_call.return_data[0] == 1
            call arg3.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 9975 * arg4 * ext_call.return_data[18 len 14] / (10000 * ext_call.return_data[50 len 14]) + (9975 * arg4), 0, this.address, 36
    require ext_call.success
}

function sub_e624f706(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    if 0x7e2098ee0d2471bb50dc0a811e98a66083b4bf2a != msg.sender:
        if 0xe7996076c216669a68397c5b11fd343f7cc26037 != msg.sender:
            if 0x9b7d958e453f196daebd46bc5fc0d54eab7794cc != msg.sender:
                if 0xcb8404fe35ea949ed3cfae011d536ee16216ccc2 != msg.sender:
                    if 0xdadb7e6c0620f8612a79128790b23c688e52ccc3 != msg.sender:
                        if 0x4fa394e213401b933f220f0c6cf09388dc16ccc4 != msg.sender:
                            if 0x407c2d84e0b14b809dcb4af17370c9cebac7ccc5 != msg.sender:
                                if 0x44fb97963f65f9fc4c305c924e251f8b8b78ccc6 != msg.sender:
                                    if 0x21d1ae8d95eced5caffd31fbf42c89e37a9bccc7 != msg.sender:
                                        if 0xb8e905aed8862eca44db31dd850dc984a79dccc8 != msg.sender:
                                            if 0x6fe0ace400b081903a3a1cdf10668e35a258ccc9 != msg.sender:
                                                revert with 0, 'only withdrawer can call this'
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < 9:
        revert with 'NH{q', 17
    if address(arg1) == address(arg2):
        revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES'
    if address(arg1) < address(arg2):
        if not address(arg1):
            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
        require ext_code.size(address(arg3))
        staticcall address(arg3).getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        if ext_call.return_data[0] - 9 <= 0:
            revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
        if address(arg1) == address(arg1):
            if ext_call.return_data[18 len 14] <= 0:
                revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
            if ext_call.return_data[50 len 14] <= 0:
                revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
            if ext_call.return_data[0] - 9 and 9975 > -1 / ext_call.return_data[0] - 9:
                revert with 'NH{q', 17
            if (9975 * ext_call.return_data[0]) - 89775 and ext_call.return_data[50 len 14] > -1 / (9975 * ext_call.return_data[0]) - 89775:
                revert with 'NH{q', 17
            if ext_call.return_data[18 len 14] and 10000 > -1 / ext_call.return_data[18 len 14]:
                revert with 'NH{q', 17
            if 10000 * ext_call.return_data[18 len 14] > (-9975 * ext_call.return_data[0]) + 89774:
                revert with 'NH{q', 17
            if not (10000 * ext_call.return_data[18 len 14]) + (9975 * ext_call.return_data[0]) - 89775:
                revert with 'NH{q', 18
            call arg1.0xa9059cbb with:
                 gas gas_remaining wei
                args arg3, ext_call.return_data[0] - 9
            if not return_data.size:
                require ext_call.success and not return_data.size
            else:
                require ext_call.success and return_data.size == 32 and ext_call.return_data[0] == 1
            call arg3.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0, (-89775 * ext_call.return_data[50 len 14]) + (9975 * ext_call.return_data[0] * ext_call.return_data[50 len 14]) / (10000 * ext_call.return_data[18 len 14]) + (9975 * ext_call.return_data[0]) - 89775, this.address, 4
        else:
            if ext_call.return_data[50 len 14] <= 0:
                revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
            if ext_call.return_data[18 len 14] <= 0:
                revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
            if ext_call.return_data[0] - 9 and 9975 > -1 / ext_call.return_data[0] - 9:
                revert with 'NH{q', 17
            if (9975 * ext_call.return_data[0]) - 89775 and ext_call.return_data[18 len 14] > -1 / (9975 * ext_call.return_data[0]) - 89775:
                revert with 'NH{q', 17
            if ext_call.return_data[50 len 14] and 10000 > -1 / ext_call.return_data[50 len 14]:
                revert with 'NH{q', 17
            if 10000 * ext_call.return_data[50 len 14] > (-9975 * ext_call.return_data[0]) + 89774:
                revert with 'NH{q', 17
            if not (10000 * ext_call.return_data[50 len 14]) + (9975 * ext_call.return_data[0]) - 89775:
                revert with 'NH{q', 18
            call arg1.0xa9059cbb with:
                 gas gas_remaining wei
                args arg3, ext_call.return_data[0] - 9
            if not return_data.size:
                require ext_call.success and not return_data.size
            else:
                require ext_call.success and return_data.size == 32 and ext_call.return_data[0] == 1
            call arg3.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0, (-89775 * ext_call.return_data[18 len 14]) + (9975 * ext_call.return_data[0] * ext_call.return_data[18 len 14]) / (10000 * ext_call.return_data[50 len 14]) + (9975 * ext_call.return_data[0]) - 89775, this.address, 4
    else:
        if not address(arg2):
            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
        require ext_code.size(address(arg3))
        staticcall address(arg3).getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        if ext_call.return_data[0] - 9 <= 0:
            revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
        if address(arg1) == address(arg2):
            if ext_call.return_data[18 len 14] <= 0:
                revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
            if ext_call.return_data[50 len 14] <= 0:
                revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
            if ext_call.return_data[0] - 9 and 9975 > -1 / ext_call.return_data[0] - 9:
                revert with 'NH{q', 17
            if (9975 * ext_call.return_data[0]) - 89775 and ext_call.return_data[50 len 14] > -1 / (9975 * ext_call.return_data[0]) - 89775:
                revert with 'NH{q', 17
            if ext_call.return_data[18 len 14] and 10000 > -1 / ext_call.return_data[18 len 14]:
                revert with 'NH{q', 17
            if 10000 * ext_call.return_data[18 len 14] > (-9975 * ext_call.return_data[0]) + 89774:
                revert with 'NH{q', 17
            if not (10000 * ext_call.return_data[18 len 14]) + (9975 * ext_call.return_data[0]) - 89775:
                revert with 'NH{q', 18
            call arg1.0xa9059cbb with:
                 gas gas_remaining wei
                args arg3, ext_call.return_data[0] - 9
            if not return_data.size:
                require ext_call.success and not return_data.size
            else:
                require ext_call.success and return_data.size == 32 and ext_call.return_data[0] == 1
            call arg3.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0, (-89775 * ext_call.return_data[50 len 14]) + (9975 * ext_call.return_data[0] * ext_call.return_data[50 len 14]) / (10000 * ext_call.return_data[18 len 14]) + (9975 * ext_call.return_data[0]) - 89775, this.address, 4
        else:
            if ext_call.return_data[50 len 14] <= 0:
                revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
            if ext_call.return_data[18 len 14] <= 0:
                revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
            if ext_call.return_data[0] - 9 and 9975 > -1 / ext_call.return_data[0] - 9:
                revert with 'NH{q', 17
            if (9975 * ext_call.return_data[0]) - 89775 and ext_call.return_data[18 len 14] > -1 / (9975 * ext_call.return_data[0]) - 89775:
                revert with 'NH{q', 17
            if ext_call.return_data[50 len 14] and 10000 > -1 / ext_call.return_data[50 len 14]:
                revert with 'NH{q', 17
            if 10000 * ext_call.return_data[50 len 14] > (-9975 * ext_call.return_data[0]) + 89774:
                revert with 'NH{q', 17
            if not (10000 * ext_call.return_data[50 len 14]) + (9975 * ext_call.return_data[0]) - 89775:
                revert with 'NH{q', 18
            call arg1.0xa9059cbb with:
                 gas gas_remaining wei
                args arg3, ext_call.return_data[0] - 9
            if not return_data.size:
                require ext_call.success and not return_data.size
            else:
                require ext_call.success and return_data.size == 32 and ext_call.return_data[0] == 1
            call arg3.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0, (-89775 * ext_call.return_data[18 len 14]) + (9975 * ext_call.return_data[0] * ext_call.return_data[18 len 14]) / (10000 * ext_call.return_data[50 len 14]) + (9975 * ext_call.return_data[0]) - 89775, this.address, 4
    require ext_call.success
}

function sub_f2f7ed83(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    if 0x7e2098ee0d2471bb50dc0a811e98a66083b4bf2a != msg.sender:
        if 0xe7996076c216669a68397c5b11fd343f7cc26037 != msg.sender:
            if 0x9b7d958e453f196daebd46bc5fc0d54eab7794cc != msg.sender:
                if 0xcb8404fe35ea949ed3cfae011d536ee16216ccc2 != msg.sender:
                    if 0xdadb7e6c0620f8612a79128790b23c688e52ccc3 != msg.sender:
                        if 0x4fa394e213401b933f220f0c6cf09388dc16ccc4 != msg.sender:
                            if 0x407c2d84e0b14b809dcb4af17370c9cebac7ccc5 != msg.sender:
                                if 0x44fb97963f65f9fc4c305c924e251f8b8b78ccc6 != msg.sender:
                                    if 0x21d1ae8d95eced5caffd31fbf42c89e37a9bccc7 != msg.sender:
                                        if 0xb8e905aed8862eca44db31dd850dc984a79dccc8 != msg.sender:
                                            if 0x6fe0ace400b081903a3a1cdf10668e35a258ccc9 != msg.sender:
                                                revert with 0, 'only withdrawer can call this'
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < 9:
        revert with 'NH{q', 17
    if address(arg1) == address(arg2):
        revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES'
    if address(arg1) < address(arg2):
        if not address(arg1):
            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
        require ext_code.size(address(arg3))
        staticcall address(arg3).getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        if ext_call.return_data[0] - 9 <= 0:
            revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
        if address(arg1) == address(arg1):
            if ext_call.return_data[18 len 14] <= 0:
                revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
            if ext_call.return_data[50 len 14] <= 0:
                revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
            if ext_call.return_data[0] - 9 and 9975 > -1 / ext_call.return_data[0] - 9:
                revert with 'NH{q', 17
            if (9975 * ext_call.return_data[0]) - 89775 and ext_call.return_data[50 len 14] > -1 / (9975 * ext_call.return_data[0]) - 89775:
                revert with 'NH{q', 17
            if ext_call.return_data[18 len 14] and 10000 > -1 / ext_call.return_data[18 len 14]:
                revert with 'NH{q', 17
            if 10000 * ext_call.return_data[18 len 14] > (-9975 * ext_call.return_data[0]) + 89774:
                revert with 'NH{q', 17
            if not (10000 * ext_call.return_data[18 len 14]) + (9975 * ext_call.return_data[0]) - 89775:
                revert with 'NH{q', 18
            call arg1.0xa9059cbb with:
                 gas gas_remaining wei
                args arg3, ext_call.return_data[0] - 9
            if not return_data.size:
                require ext_call.success and not return_data.size
            else:
                require ext_call.success and return_data.size == 32 and ext_call.return_data[0] == 1
            call arg3.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args (-89775 * ext_call.return_data[50 len 14]) + (9975 * ext_call.return_data[0] * ext_call.return_data[50 len 14]) / (10000 * ext_call.return_data[18 len 14]) + (9975 * ext_call.return_data[0]) - 89775, 0, this.address, 36
        else:
            if ext_call.return_data[50 len 14] <= 0:
                revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
            if ext_call.return_data[18 len 14] <= 0:
                revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
            if ext_call.return_data[0] - 9 and 9975 > -1 / ext_call.return_data[0] - 9:
                revert with 'NH{q', 17
            if (9975 * ext_call.return_data[0]) - 89775 and ext_call.return_data[18 len 14] > -1 / (9975 * ext_call.return_data[0]) - 89775:
                revert with 'NH{q', 17
            if ext_call.return_data[50 len 14] and 10000 > -1 / ext_call.return_data[50 len 14]:
                revert with 'NH{q', 17
            if 10000 * ext_call.return_data[50 len 14] > (-9975 * ext_call.return_data[0]) + 89774:
                revert with 'NH{q', 17
            if not (10000 * ext_call.return_data[50 len 14]) + (9975 * ext_call.return_data[0]) - 89775:
                revert with 'NH{q', 18
            call arg1.0xa9059cbb with:
                 gas gas_remaining wei
                args arg3, ext_call.return_data[0] - 9
            if not return_data.size:
                require ext_call.success and not return_data.size
            else:
                require ext_call.success and return_data.size == 32 and ext_call.return_data[0] == 1
            call arg3.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args (-89775 * ext_call.return_data[18 len 14]) + (9975 * ext_call.return_data[0] * ext_call.return_data[18 len 14]) / (10000 * ext_call.return_data[50 len 14]) + (9975 * ext_call.return_data[0]) - 89775, 0, this.address, 36
    else:
        if not address(arg2):
            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
        require ext_code.size(address(arg3))
        staticcall address(arg3).getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        if ext_call.return_data[0] - 9 <= 0:
            revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
        if address(arg1) == address(arg2):
            if ext_call.return_data[18 len 14] <= 0:
                revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
            if ext_call.return_data[50 len 14] <= 0:
                revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
            if ext_call.return_data[0] - 9 and 9975 > -1 / ext_call.return_data[0] - 9:
                revert with 'NH{q', 17
            if (9975 * ext_call.return_data[0]) - 89775 and ext_call.return_data[50 len 14] > -1 / (9975 * ext_call.return_data[0]) - 89775:
                revert with 'NH{q', 17
            if ext_call.return_data[18 len 14] and 10000 > -1 / ext_call.return_data[18 len 14]:
                revert with 'NH{q', 17
            if 10000 * ext_call.return_data[18 len 14] > (-9975 * ext_call.return_data[0]) + 89774:
                revert with 'NH{q', 17
            if not (10000 * ext_call.return_data[18 len 14]) + (9975 * ext_call.return_data[0]) - 89775:
                revert with 'NH{q', 18
            call arg1.0xa9059cbb with:
                 gas gas_remaining wei
                args arg3, ext_call.return_data[0] - 9
            if not return_data.size:
                require ext_call.success and not return_data.size
            else:
                require ext_call.success and return_data.size == 32 and ext_call.return_data[0] == 1
            call arg3.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args (-89775 * ext_call.return_data[50 len 14]) + (9975 * ext_call.return_data[0] * ext_call.return_data[50 len 14]) / (10000 * ext_call.return_data[18 len 14]) + (9975 * ext_call.return_data[0]) - 89775, 0, this.address, 36
        else:
            if ext_call.return_data[50 len 14] <= 0:
                revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
            if ext_call.return_data[18 len 14] <= 0:
                revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
            if ext_call.return_data[0] - 9 and 9975 > -1 / ext_call.return_data[0] - 9:
                revert with 'NH{q', 17
            if (9975 * ext_call.return_data[0]) - 89775 and ext_call.return_data[18 len 14] > -1 / (9975 * ext_call.return_data[0]) - 89775:
                revert with 'NH{q', 17
            if ext_call.return_data[50 len 14] and 10000 > -1 / ext_call.return_data[50 len 14]:
                revert with 'NH{q', 17
            if 10000 * ext_call.return_data[50 len 14] > (-9975 * ext_call.return_data[0]) + 89774:
                revert with 'NH{q', 17
            if not (10000 * ext_call.return_data[50 len 14]) + (9975 * ext_call.return_data[0]) - 89775:
                revert with 'NH{q', 18
            call arg1.0xa9059cbb with:
                 gas gas_remaining wei
                args arg3, ext_call.return_data[0] - 9
            if not return_data.size:
                require ext_call.success and not return_data.size
            else:
                require ext_call.success and return_data.size == 32 and ext_call.return_data[0] == 1
            call arg3.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args (-89775 * ext_call.return_data[18 len 14]) + (9975 * ext_call.return_data[0] * ext_call.return_data[18 len 14]) / (10000 * ext_call.return_data[50 len 14]) + (9975 * ext_call.return_data[0]) - 89775, 0, this.address, 36
    require ext_call.success
}



}
