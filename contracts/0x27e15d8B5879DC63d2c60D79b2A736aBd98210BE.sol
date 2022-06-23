contract main {




// =====================  Runtime code  =====================


#
#  - sub_25216cf4(?)
#  - sub_9cb48685(?)
#
address stor1;
uint32 stor27;
address stor27;
uint256 stor27;
address stor28;
address stor29;

function _fallback() payable {
    revert
}

function setVault(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == address(stor27)
    stor29 = arg1
}

function setFarmer(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == address(stor27)
    stor28 = arg1
}

function transferOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == address(stor27)
    address(stor27) = arg1
}

function collectETH() {
    if address(stor27) != msg.sender:
        require msg.sender == stor28
    if eth.balance(this.address):
        call address(stor27) with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function collect(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if msg.sender == address(stor27):
        mem[100] = this.address
        require ext_code.size(arg1)
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            mem[ceil32(return_data.size) + 132] = address(stor27)
            mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
            mem[ceil32(return_data.size) + 96] = 68
            mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor27)
            mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
            mem[ceil32(return_data.size) + 196] = 32
            mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 
                            32,
                            38,
                            0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                            mem[ceil32(return_data.size) + 366 len 26]
            if not ext_code.size(arg1):
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor27), uint32(stor27), ext_call.return_data[0 len 28]
            mem[ceil32(return_data.size) + 352 len 4] = 0
            call arg1 with:
               funct uint32(stor27)
                 gas gas_remaining wei
                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[ceil32(return_data.size) + 324 len 4]
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0]:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    if not 0, mem[132 len 28]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 370 len 22]
            else:
                mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[ceil32(return_data.size) + 292]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 371 len 22]
    else:
        require msg.sender == stor28
        mem[100] = this.address
        require ext_code.size(arg1)
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            mem[ceil32(return_data.size) + 132] = address(stor27)
            mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
            mem[ceil32(return_data.size) + 96] = 68
            mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor27)
            mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
            mem[ceil32(return_data.size) + 196] = 32
            mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 
                            32,
                            38,
                            0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                            mem[ceil32(return_data.size) + 366 len 26]
            if not ext_code.size(arg1):
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor27), uint32(stor27), ext_call.return_data[0 len 28]
            mem[ceil32(return_data.size) + 352 len 4] = 0
            mem[ceil32(return_data.size) + 324 len 0] = 0
            call arg1 with:
               funct uint32(stor27)
                 gas gas_remaining wei
                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[ceil32(return_data.size) + 324 len 4]
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0]:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    if not 0, mem[132 len 28]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 370 len 22]
            else:
                mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[ceil32(return_data.size) + 292]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 371 len 22]
}

function sub_8c689c35(?) {
    require calldata.size - 4 >= 192
    require arg1 == address(arg1)
    require arg6 == bool(arg6)
    if address(stor27) != msg.sender:
        require msg.sender == stor28
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
        if not ext_code.size(stor1):
            revert with 0, 'Address: call to non-contract'
        mem[292 len 96] = unknown_0x23b872dd(?????), Mask(224, 0, stor27), uint32(stor27), address(this.address), Mask(224, 32, arg2) >> 32
        mem[416 len 4] = 0
        call stor1 with:
             gas gas_remaining wei
            args Mask(224, 32, arg2) << 480, mem[388 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with unknown_0x23b872dd(?????), Mask(224, 0, stor27), uint32(stor27), address(this.address), arg2
            if not unknown_0x23b872dd(?????), Mask(224, 0, stor27):
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[402 len 14],
                            0,
                            mem[420 len 4]
        else:
            mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[324]:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 403 len 22]
        require ext_code.size(stor29)
        call stor29.0x3c3b4b89 with:
             gas gas_remaining wei
            args arg2, 64, 224, msg.sender, arg2, address(arg1), arg4, arg3, arg5, bool(arg6)
    else:
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
        if not ext_code.size(stor1):
            revert with 0, 'Address: call to non-contract'
        mem[292 len 96] = unknown_0x23b872dd(?????), Mask(224, 0, stor27), uint32(stor27), address(this.address), Mask(224, 32, arg2) >> 32
        mem[416 len 4] = 0
        mem[388 len 0] = 0
        call stor1 with:
             gas gas_remaining wei
            args Mask(224, 32, arg2) << 480, mem[388 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with unknown_0x23b872dd(?????), Mask(224, 0, stor27), uint32(stor27), address(this.address), arg2
            if not unknown_0x23b872dd(?????), Mask(224, 0, stor27):
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[402 len 14],
                            0,
                            mem[420 len 4]
            mem[324] = msg.sender
            mem[356] = arg2
            mem[388] = address(arg1)
            mem[420] = arg4
            mem[452] = arg3
            mem[484] = arg5
            mem[516] = bool(arg6)
            mem[548] = 0x3c3b4b8900000000000000000000000000000000000000000000000000000000
            mem[552] = arg2
            mem[584] = 64
            mem[616] = unknown_0x23b872dd(?????), Mask(224, 0, stor27), uint32(stor27), address(this.address), Mask(224, 32, arg2) >> 32
            mem[648 len ceil32(unknown_0x23b872dd(?????), Mask(224, 0, stor27), uint32(stor27), address(this.address), Mask(224, 32, arg2) >> 32)] = mem[324 len ceil32(unknown_0x23b872dd(?????), Mask(224, 0, stor27), uint32(stor27), address(this.address), Mask(224, 32, arg2) >> 32)]
            if ceil32(unknown_0x23b872dd(?????), Mask(224, 0, stor27), uint32(stor27), address(this.address), Mask(224, 32, arg2) >> 32) > unknown_0x23b872dd(?????), Mask(224, 0, stor27), uint32(stor27), address(this.address), Mask(224, 32, arg2) >> 32:
                mem[unknown_0x23b872dd(?????), Mask(224, 0, stor27), uint32(stor27), address(this.address), Mask(224, 32, arg2) >> 32 + 648] = 0
            require ext_code.size(stor29)
            call stor29.0x3c3b4b89 with:
                 gas gas_remaining wei
                args arg2, 64, mem[616 len ceil32(unknown_0x23b872dd(?????), Mask(224, 0, stor27), uint32(stor27), address(this.address), Mask(224, 32, arg2) >> 32) + 32]
        else:
            mem[292] = return_data.size
            mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[324]:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 403 len 22]
            mem[ceil32(return_data.size) + 325] = msg.sender
            mem[ceil32(return_data.size) + 357] = arg2
            mem[ceil32(return_data.size) + 389] = address(arg1)
            mem[ceil32(return_data.size) + 421] = arg4
            mem[ceil32(return_data.size) + 453] = arg3
            mem[ceil32(return_data.size) + 485] = arg5
            mem[ceil32(return_data.size) + 517] = bool(arg6)
            mem[ceil32(return_data.size) + 549] = 0x3c3b4b8900000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 553] = arg2
            mem[ceil32(return_data.size) + 585] = 64
            mem[ceil32(return_data.size) + 617] = mem[ceil32(return_data.size) + 293]
            mem[ceil32(return_data.size) + 649 len ceil32(mem[ceil32(return_data.size) + 293])] = mem[ceil32(return_data.size) + 325 len ceil32(mem[ceil32(return_data.size) + 293])]
            if ceil32(mem[ceil32(return_data.size) + 293]) > mem[ceil32(return_data.size) + 293]:
                mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 293] + 649] = 0
            require ext_code.size(stor29)
            call stor29.0x3c3b4b89 with:
                 gas gas_remaining wei
                args arg2, Array(len=mem[ceil32(return_data.size) + 293], data=mem[ceil32(return_data.size) + 649 len ceil32(mem[ceil32(return_data.size) + 293])])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
