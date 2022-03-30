contract main {




// =====================  Runtime code  =====================


uint256 stor0;
bool stor1; offset 256
uint8 stor1;
address owner; offset 8
address sub_94960646Address;
uint32 stor3;
address sub_8f584ab9Address;
address gasTokenAddress;

function owner() {
    return owner
}

function sub_8f584ab9(?) {
    return address(sub_8f584ab9Address)
}

function sub_94960646(?) {
    return sub_94960646Address
}

function gasToken() {
    return gasTokenAddress
}

function actived() {
    return bool(uint8(stor1.field_0))
}

function _fallback() payable {
    require msg.sender != tx.origin
}

function sub_d0d2538d(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_94960646Address = arg1
}

function setGasToken(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    gasTokenAddress = arg1
}

function sub_184bbb8b(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    address(sub_8f584ab9Address) = arg1
}

function sub_864c6122(?) {
    require calldata.size - 4 >= 128
    require not uint8(stor1.field_0)
    uint8(stor1.field_0) = 1
    owner = arg1
    stor1.field_256 % 1 = 0
    sub_94960646Address = arg2
    address(sub_8f584ab9Address) = arg3
    gasTokenAddress = arg4
    stor0 = 2251799813685248
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function getExpectedReturn(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5) {
    require calldata.size - 4 >= 160
    mem[96] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
    mem[100] = arg1
    mem[132] = arg2
    mem[164] = arg3
    mem[196] = arg4
    mem[228] = arg5
    require ext_code.size(sub_94960646Address)
    staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
            gas gas_remaining wei
           args 0, 0, address(arg2), arg3, arg4, arg5
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 64
    _4 = mem[96 len 4], address(arg1) << 64
    require 0, address(arg2) << 64 <= 4294967296
    require 0, address(arg2) << 64 + 32 <= return_data.size
    require mem[0, address(arg2) << 64 + 96] <= 4294967296 and 0, address(arg2) << 64 + (32 * mem[0, address(arg2) << 64 + 96]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 96] = mem[0, address(arg2) << 64 + 96]
    _8 = mem[0, address(arg2) << 64 + 96]
    mem[ceil32(return_data.size) + 128 len floor32(mem[0, address(arg2) << 64 + 96])] = mem[0, address(arg2) << 64 + 128 len floor32(mem[0, address(arg2) << 64 + 96])]
    mem[(32 * _8) + ceil32(return_data.size) + 128] = _4
    mem[(32 * _8) + ceil32(return_data.size) + 160] = 64
    mem[(32 * _8) + ceil32(return_data.size) + 192] = mem[ceil32(return_data.size) + 96]
    mem[(32 * _8) + ceil32(return_data.size) + 224 len floor32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len floor32(mem[ceil32(return_data.size) + 96])]
    return _4, 64, mem[(32 * _8) + ceil32(return_data.size) + 192 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
}

function swap(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256[] arg5, uint256 arg6) payable {
    require calldata.size - 4 >= 192
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + (32 * arg5.length) + 36 <= calldata.size
    mem[128 len 32 * arg5.length] = call.data[arg5 + 36 len 32 * arg5.length]
    if not arg3:
        mem[(32 * arg5.length) + 292] = arg6
        mem[(32 * arg5.length) + 324] = msg.sender
        mem[(32 * arg5.length) + 356] = arg5.length
        mem[(32 * arg5.length) + 388 len floor32(arg5.length)] = call.data[arg5 + 36 len floor32(arg5.length)]
        require ext_code.size(address(sub_8f584ab9Address))
        call address(sub_8f584ab9Address).0x83922fa9 with:
             gas gas_remaining wei
            args address(arg1), address(arg2), arg3, arg4, Array(len=arg5.length, data=call.data[arg5 + 36 len floor32(arg5.length)], mem[(32 * arg5.length) + floor32(arg5.length) + 388 len (32 * arg5.length) - floor32(arg5.length)]), arg6, msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(32 * arg5.length) + 320 len floor32(arg5.length)] = call.data[arg5 + 36 len floor32(arg5.length)]
        emit 0xc0ce9ab8: arg3, ext_call.return_data[0], arg4, Array(len=arg5.length, data=call.data[arg5 + 36 len floor32(arg5.length)], mem[(32 * arg5.length) + floor32(arg5.length) + 320 len (32 * arg5.length) - floor32(arg5.length)]), arg6, arg1, arg2
    else:
        if not arg1:
            if msg.sender != msg.sender:
                revert with 0, 
                            32,
                            43,
                            0x7357726f6e6720757365616765206f66204554482e756e6976657273616c5472616e7366657246726f6d28,
                            mem[(32 * arg5.length) + 239 len 21]
            if msg.value < arg3:
                revert with 0, 
                            32,
                            43,
                            0x7357726f6e6720757365616765206f66204554482e756e6976657273616c5472616e7366657246726f6d28,
                            mem[(32 * arg5.length) + 239 len 21]
            if address(sub_8f584ab9Address) != this.address:
                call address(sub_8f584ab9Address) with:
                   value arg3 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            if msg.value <= arg3:
                mem[(32 * arg5.length) + 292] = arg6
                mem[(32 * arg5.length) + 324] = msg.sender
                mem[(32 * arg5.length) + 356] = arg5.length
                mem[(32 * arg5.length) + 388 len floor32(arg5.length)] = call.data[arg5 + 36 len floor32(arg5.length)]
                require ext_code.size(address(sub_8f584ab9Address))
                call address(sub_8f584ab9Address).0x83922fa9 with:
                     gas gas_remaining wei
                    args address(arg1), address(arg2), arg3, arg4, Array(len=arg5.length, data=call.data[arg5 + 36 len floor32(arg5.length)], mem[(32 * arg5.length) + floor32(arg5.length) + 388 len (32 * arg5.length) - floor32(arg5.length)]), arg6, msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[(32 * arg5.length) + 320 len floor32(arg5.length)] = call.data[arg5 + 36 len floor32(arg5.length)]
                emit 0xc0ce9ab8: arg3, ext_call.return_data[0], arg4, Array(len=arg5.length, data=call.data[arg5 + 36 len floor32(arg5.length)], mem[(32 * arg5.length) + floor32(arg5.length) + 320 len (32 * arg5.length) - floor32(arg5.length)]), arg6, arg1, arg2
            else:
                if arg3 > msg.value:
                    revert with 0, 'SafeMath: subtraction overflow'
                call msg.sender with:
                   value msg.value - arg3 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * arg5.length) + 356] = arg6
                mem[(32 * arg5.length) + 388] = msg.sender
                mem[(32 * arg5.length) + 420] = arg5.length
                mem[(32 * arg5.length) + 452 len floor32(arg5.length)] = call.data[arg5 + 36 len floor32(arg5.length)]
                require ext_code.size(address(sub_8f584ab9Address))
                call address(sub_8f584ab9Address).0x83922fa9 with:
                     gas gas_remaining wei
                    args address(arg1), address(arg2), arg3, arg4, Array(len=arg5.length, data=call.data[arg5 + 36 len floor32(arg5.length)], mem[(32 * arg5.length) + floor32(arg5.length) + 452 len (32 * arg5.length) - floor32(arg5.length)]), arg6, msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[(32 * arg5.length) + 384 len floor32(arg5.length)] = call.data[arg5 + 36 len floor32(arg5.length)]
                emit 0xc0ce9ab8: arg3, ext_call.return_data[0], arg4, Array(len=arg5.length, data=call.data[arg5 + 36 len floor32(arg5.length)], mem[(32 * arg5.length) + floor32(arg5.length) + 384 len (32 * arg5.length) - floor32(arg5.length)]), arg6, arg1, arg2
        else:
            if arg1 == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                if msg.sender != msg.sender:
                    revert with 0, 
                                32,
                                43,
                                0x7357726f6e6720757365616765206f66204554482e756e6976657273616c5472616e7366657246726f6d28,
                                mem[(32 * arg5.length) + 239 len 21]
                if msg.value < arg3:
                    revert with 0, 
                                32,
                                43,
                                0x7357726f6e6720757365616765206f66204554482e756e6976657273616c5472616e7366657246726f6d28,
                                mem[(32 * arg5.length) + 239 len 21]
                if address(sub_8f584ab9Address) != this.address:
                    call address(sub_8f584ab9Address) with:
                       value arg3 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                if msg.value <= arg3:
                    mem[(32 * arg5.length) + 292] = arg6
                    mem[(32 * arg5.length) + 324] = msg.sender
                    mem[(32 * arg5.length) + 356] = arg5.length
                    mem[(32 * arg5.length) + 388 len floor32(arg5.length)] = call.data[arg5 + 36 len floor32(arg5.length)]
                    require ext_code.size(address(sub_8f584ab9Address))
                    call address(sub_8f584ab9Address).0x83922fa9 with:
                         gas gas_remaining wei
                        args address(arg1), address(arg2), arg3, arg4, Array(len=arg5.length, data=call.data[arg5 + 36 len floor32(arg5.length)], mem[(32 * arg5.length) + floor32(arg5.length) + 388 len (32 * arg5.length) - floor32(arg5.length)]), arg6, msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(32 * arg5.length) + 320 len floor32(arg5.length)] = call.data[arg5 + 36 len floor32(arg5.length)]
                    emit 0xc0ce9ab8: arg3, ext_call.return_data[0], arg4, Array(len=arg5.length, data=call.data[arg5 + 36 len floor32(arg5.length)], mem[(32 * arg5.length) + floor32(arg5.length) + 320 len (32 * arg5.length) - floor32(arg5.length)]), arg6, arg1, arg2
                else:
                    if arg3 > msg.value:
                        revert with 0, 'SafeMath: subtraction overflow'
                    call msg.sender with:
                       value msg.value - arg3 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * arg5.length) + 356] = arg6
                    mem[(32 * arg5.length) + 388] = msg.sender
                    mem[(32 * arg5.length) + 420] = arg5.length
                    mem[(32 * arg5.length) + 452 len floor32(arg5.length)] = call.data[arg5 + 36 len floor32(arg5.length)]
                    require ext_code.size(address(sub_8f584ab9Address))
                    call address(sub_8f584ab9Address).0x83922fa9 with:
                         gas gas_remaining wei
                        args address(arg1), address(arg2), arg3, arg4, Array(len=arg5.length, data=call.data[arg5 + 36 len floor32(arg5.length)], mem[(32 * arg5.length) + floor32(arg5.length) + 452 len (32 * arg5.length) - floor32(arg5.length)]), arg6, msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(32 * arg5.length) + 384 len floor32(arg5.length)] = call.data[arg5 + 36 len floor32(arg5.length)]
                    emit 0xc0ce9ab8: arg3, ext_call.return_data[0], arg4, Array(len=arg5.length, data=call.data[arg5 + 36 len floor32(arg5.length)], mem[(32 * arg5.length) + floor32(arg5.length) + 384 len (32 * arg5.length) - floor32(arg5.length)]), arg6, arg1, arg2
            else:
                mem[(32 * arg5.length) + 128] = 100
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg1):
                    revert with 0, 'SafeERC20: call to non-contract'
                if not ext_code.hash(arg1):
                    revert with 0, 'SafeERC20: call to non-contract'
                mem[(32 * arg5.length) + 260 len 96] = unknown_0x23b872dd(?????), msg.sender, address(sub_8f584ab9Address), Mask(224, 32, arg3) >> 32
                mem[(32 * arg5.length) + 384 len 4] = uint32(arg3)
                call arg1 with:
                   funct uint32(stor3)
                     gas gas_remaining wei
                    args Mask(224, 32, arg3) << 480, mem[(32 * arg5.length) + 356 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if arg5.length:
                        require arg5.length >= 32
                        if not mem[128]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x295361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * arg5.length) + 370 len 14],
                                        uint32(arg3),
                                        mem[(32 * arg5.length) + 388 len 4]
                    mem[(32 * arg5.length) + 424] = arg6
                    mem[(32 * arg5.length) + 456] = msg.sender
                    mem[(32 * arg5.length) + 488] = arg5.length
                    mem[(32 * arg5.length) + 520 len floor32(arg5.length)] = call.data[arg5 + 36 len floor32(arg5.length)]
                    require ext_code.size(address(sub_8f584ab9Address))
                    call address(sub_8f584ab9Address).0x83922fa9 with:
                         gas gas_remaining wei
                        args address(arg1), address(arg2), arg3, arg4, Array(len=arg5.length, data=call.data[arg5 + 36 len floor32(arg5.length)], mem[(32 * arg5.length) + floor32(arg5.length) + 520 len (32 * arg5.length) - floor32(arg5.length)]), arg6, msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(32 * arg5.length) + 452 len floor32(arg5.length)] = call.data[arg5 + 36 len floor32(arg5.length)]
                    emit 0xc0ce9ab8: arg3, ext_call.return_data[0], arg4, Array(len=arg5.length, data=call.data[arg5 + 36 len floor32(arg5.length)], mem[(32 * arg5.length) + floor32(arg5.length) + 452 len (32 * arg5.length) - floor32(arg5.length)]), arg6, arg1, arg2
                else:
                    mem[(32 * arg5.length) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[(32 * arg5.length) + 292]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x295361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * arg5.length) + ceil32(return_data.size) + 371 len 22]
                    mem[(32 * arg5.length) + ceil32(return_data.size) + 425] = arg6
                    mem[(32 * arg5.length) + ceil32(return_data.size) + 457] = msg.sender
                    mem[(32 * arg5.length) + ceil32(return_data.size) + 489] = arg5.length
                    mem[(32 * arg5.length) + ceil32(return_data.size) + 521 len floor32(arg5.length)] = call.data[arg5 + 36 len floor32(arg5.length)]
                    require ext_code.size(address(sub_8f584ab9Address))
                    call address(sub_8f584ab9Address).0x83922fa9 with:
                         gas gas_remaining wei
                        args address(arg1), address(arg2), arg3, arg4, Array(len=arg5.length, data=call.data[arg5 + 36 len floor32(arg5.length)], mem[(32 * arg5.length) + ceil32(return_data.size) + floor32(arg5.length) + 521 len (32 * arg5.length) - floor32(arg5.length)]), arg6, msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(32 * arg5.length) + ceil32(return_data.size) + 453 len floor32(arg5.length)] = call.data[arg5 + 36 len floor32(arg5.length)]
                    emit 0xc0ce9ab8: arg3, ext_call.return_data[0], arg4, Array(len=arg5.length, data=call.data[arg5 + 36 len floor32(arg5.length)], mem[(32 * arg5.length) + ceil32(return_data.size) + floor32(arg5.length) + 453 len (32 * arg5.length) - floor32(arg5.length)]), arg6, arg1, arg2
    if stor0 and arg6:
        if gas_remaining > gas_remaining:
            revert with 0, 'SafeMath: subtraction overflow'
        require ext_code.size(gasTokenAddress)
        call gasTokenAddress.freeFromUpTo(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args msg.sender, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
}



}
