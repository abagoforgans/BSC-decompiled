contract main {




// =====================  Runtime code  =====================


const sub_099199c3(?) = 130


mapping of uint8 stor0;
uint256 stor1;

function ownerStatus(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor0[address(arg1)])
}

function selfDestruct(address arg1) payable {
    require calldata.size - 4 >= 32
    if not stor0[msg.sender]:
        revert with 0, '0x700'
    selfdestruct(arg1)
}

function _fallback() payable {
    revert
}

function transferNative(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not stor0[msg.sender]:
        revert with 0, '0x700'
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_4d456aba(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(arg1)
    staticcall arg1.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if ext_call.return_data[50 len 14] + ext_call.return_data[18 len 14] != stor1:
        revert with 0, '0x705'
}

function transferToken(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if not stor0[msg.sender]:
        revert with 0, '0x700'
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_82fd4ed2(?) {
    require calldata.size - 4 >= 32
    if not stor0[msg.sender]:
        revert with 0, '0x700'
    require ext_code.size(arg1)
    staticcall arg1.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    stor1 = ext_call.return_data[50 len 14] + ext_call.return_data[18 len 14]
}

function sub_6cdabe91(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if not stor0[msg.sender]:
        revert with 0, '0x700'
    idx = 0
    while idx < ('cd', 4).length:
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 0
        stor0[address(cd[((32 * idx) + cd[4] + 36)])] = uint8(bool(cd[36]))
        idx = idx + 1
        continue 
}

function sub_2154bf28(?) {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    if not stor0[msg.sender]:
        revert with 0, '0x700'
    mem[96 len arg2.length] = arg2[all]
    call arg1 with:
         gas gas_remaining wei
        args arg2[all]
    if not ext_call.success:
        revert with 0, '0x704'
    if not ext_call.success:
        revert with 0, '0x704'
    if not return_data.size:
        if not mem[96]:
            return ''
        return ' '
    if not return_data.size:
        return ''
    return Array(len=return_data.size, data=ext_call.return_data[0 len return_data.size])
}

function sub_000000fe(?) {
    require calldata.size - 4 >= 160
    if msg.sender != 0xafcc7a8b47c7ec2915d1415672a547fa94d64087:
        revert with 0, '0x700'
    require ext_code.size(address(arg4 xor 0x1593748593479873562049735986576348736498))
    staticcall address(arg4 xor 0x1593748593479873562049735986576348736498).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c < address(0x1593748593479873562049735986576348736498 xor arg3):
        if not arg5:
            if 10000 * ext_call.return_data[18 len 14] / 10000 != ext_call.return_data[18 len 14]:
                revert with 0, '0x902'
            if 10000 * ext_call.return_data[18 len 14] < 10000 * ext_call.return_data[18 len 14]:
                revert with 0, '0x900'
            if ext_call.return_data[50 len 14]:
                require ext_call.return_data[50 len 14]
                if 0 / ext_call.return_data[50 len 14]:
                    revert with 0, '0x902'
            require 10000 * ext_call.return_data[18 len 14]
            if 0 / 10000 * ext_call.return_data[18 len 14] < arg2:
                revert with 0, '0x703'
            require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
            call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.0xa9059cbb with:
                 gas gas_remaining wei
                args address(arg4 xor 0x1593748593479873562049735986576348736498), arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(arg4 xor 0x1593748593479873562049735986576348736498))
            call address(arg4 xor 0x1593748593479873562049735986576348736498).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0, 0 / 10000 * Mask(112, 0, ext_call.return_data[0]), address(this.address), 128, 0
        else:
            require arg5
            if arg1 * arg5 / arg5 != arg1:
                revert with 0, '0x902'
            if 10000 * ext_call.return_data[18 len 14] / 10000 != ext_call.return_data[18 len 14]:
                revert with 0, '0x902'
            if (10000 * ext_call.return_data[18 len 14]) + (arg1 * arg5) < 10000 * ext_call.return_data[18 len 14]:
                revert with 0, '0x900'
            if not ext_call.return_data[50 len 14]:
                require (10000 * ext_call.return_data[18 len 14]) + (arg1 * arg5)
                if 0 / (10000 * ext_call.return_data[18 len 14]) + (arg1 * arg5) < arg2:
                    revert with 0, '0x703'
                require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
                call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.0xa9059cbb with:
                     gas gas_remaining wei
                    args address(arg4 xor 0x1593748593479873562049735986576348736498), arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(arg4 xor 0x1593748593479873562049735986576348736498))
                call address(arg4 xor 0x1593748593479873562049735986576348736498).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0, 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (arg1 * arg5), address(this.address), 128, 0
            else:
                require ext_call.return_data[50 len 14]
                if arg1 * arg5 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != arg1 * arg5:
                    revert with 0, '0x902'
                require (10000 * ext_call.return_data[18 len 14]) + (arg1 * arg5)
                if arg1 * arg5 * ext_call.return_data[50 len 14] / (10000 * ext_call.return_data[18 len 14]) + (arg1 * arg5) < arg2:
                    revert with 0, '0x703'
                require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
                call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.0xa9059cbb with:
                     gas gas_remaining wei
                    args address(arg4 xor 0x1593748593479873562049735986576348736498), arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(arg4 xor 0x1593748593479873562049735986576348736498))
                call address(arg4 xor 0x1593748593479873562049735986576348736498).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0, arg1 * arg5 * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (arg1 * arg5), address(this.address), 128, 0
    else:
        if 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c == address(0x1593748593479873562049735986576348736498 xor arg3):
            if not arg5:
                if 10000 * ext_call.return_data[18 len 14] / 10000 != ext_call.return_data[18 len 14]:
                    revert with 0, '0x902'
                if 10000 * ext_call.return_data[18 len 14] < 10000 * ext_call.return_data[18 len 14]:
                    revert with 0, '0x900'
                if ext_call.return_data[50 len 14]:
                    require ext_call.return_data[50 len 14]
                    if 0 / ext_call.return_data[50 len 14]:
                        revert with 0, '0x902'
                require 10000 * ext_call.return_data[18 len 14]
                if 0 / 10000 * ext_call.return_data[18 len 14] < arg2:
                    revert with 0, '0x703'
                require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
                call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.0xa9059cbb with:
                     gas gas_remaining wei
                    args address(arg4 xor 0x1593748593479873562049735986576348736498), arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(arg4 xor 0x1593748593479873562049735986576348736498))
                if 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c == address(0x1593748593479873562049735986576348736498 xor arg3):
                    call address(arg4 xor 0x1593748593479873562049735986576348736498).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, 0 / 10000 * Mask(112, 0, ext_call.return_data[0]), address(this.address), 128, 0
                else:
                    call address(arg4 xor 0x1593748593479873562049735986576348736498).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0 / 10000 * Mask(112, 0, ext_call.return_data[0]), 0, address(this.address), 128, 0
            else:
                require arg5
                if arg1 * arg5 / arg5 != arg1:
                    revert with 0, '0x902'
                if 10000 * ext_call.return_data[18 len 14] / 10000 != ext_call.return_data[18 len 14]:
                    revert with 0, '0x902'
                if (10000 * ext_call.return_data[18 len 14]) + (arg1 * arg5) < 10000 * ext_call.return_data[18 len 14]:
                    revert with 0, '0x900'
                if not ext_call.return_data[50 len 14]:
                    require (10000 * ext_call.return_data[18 len 14]) + (arg1 * arg5)
                    if 0 / (10000 * ext_call.return_data[18 len 14]) + (arg1 * arg5) < arg2:
                        revert with 0, '0x703'
                    require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
                    call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(arg4 xor 0x1593748593479873562049735986576348736498), arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(arg4 xor 0x1593748593479873562049735986576348736498))
                    if 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c == address(0x1593748593479873562049735986576348736498 xor arg3):
                        call address(arg4 xor 0x1593748593479873562049735986576348736498).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (arg1 * arg5), address(this.address), 128, 0
                    else:
                        call address(arg4 xor 0x1593748593479873562049735986576348736498).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (arg1 * arg5), 0, address(this.address), 128, 0
                else:
                    require ext_call.return_data[50 len 14]
                    if arg1 * arg5 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != arg1 * arg5:
                        revert with 0, '0x902'
                    require (10000 * ext_call.return_data[18 len 14]) + (arg1 * arg5)
                    if arg1 * arg5 * ext_call.return_data[50 len 14] / (10000 * ext_call.return_data[18 len 14]) + (arg1 * arg5) < arg2:
                        revert with 0, '0x703'
                    require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
                    call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(arg4 xor 0x1593748593479873562049735986576348736498), arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(arg4 xor 0x1593748593479873562049735986576348736498))
                    if 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c == address(0x1593748593479873562049735986576348736498 xor arg3):
                        call address(arg4 xor 0x1593748593479873562049735986576348736498).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, arg1 * arg5 * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (arg1 * arg5), address(this.address), 128, 0
                    else:
                        call address(arg4 xor 0x1593748593479873562049735986576348736498).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args arg1 * arg5 * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (arg1 * arg5), 0, address(this.address), 128, 0
        else:
            if not arg5:
                if 10000 * ext_call.return_data[50 len 14] / 10000 != ext_call.return_data[50 len 14]:
                    revert with 0, '0x902'
                if 10000 * ext_call.return_data[50 len 14] < 10000 * ext_call.return_data[50 len 14]:
                    revert with 0, '0x900'
                if ext_call.return_data[18 len 14]:
                    require ext_call.return_data[18 len 14]
                    if 0 / ext_call.return_data[18 len 14]:
                        revert with 0, '0x902'
                require 10000 * ext_call.return_data[50 len 14]
                if 0 / 10000 * ext_call.return_data[50 len 14] < arg2:
                    revert with 0, '0x703'
                require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
                call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.0xa9059cbb with:
                     gas gas_remaining wei
                    args address(arg4 xor 0x1593748593479873562049735986576348736498), arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(arg4 xor 0x1593748593479873562049735986576348736498))
                if 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c == address(0x1593748593479873562049735986576348736498 xor arg3):
                    call address(arg4 xor 0x1593748593479873562049735986576348736498).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, 0 / 10000 * Mask(112, 0, ext_call.return_data[32]), address(this.address), 128, 0
                else:
                    call address(arg4 xor 0x1593748593479873562049735986576348736498).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0 / 10000 * Mask(112, 0, ext_call.return_data[32]), 0, address(this.address), 128, 0
            else:
                require arg5
                if arg1 * arg5 / arg5 != arg1:
                    revert with 0, '0x902'
                if 10000 * ext_call.return_data[50 len 14] / 10000 != ext_call.return_data[50 len 14]:
                    revert with 0, '0x902'
                if (10000 * ext_call.return_data[50 len 14]) + (arg1 * arg5) < 10000 * ext_call.return_data[50 len 14]:
                    revert with 0, '0x900'
                if not ext_call.return_data[18 len 14]:
                    require (10000 * ext_call.return_data[50 len 14]) + (arg1 * arg5)
                    if 0 / (10000 * ext_call.return_data[50 len 14]) + (arg1 * arg5) < arg2:
                        revert with 0, '0x703'
                    require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
                    call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(arg4 xor 0x1593748593479873562049735986576348736498), arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(arg4 xor 0x1593748593479873562049735986576348736498))
                    if 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c == address(0x1593748593479873562049735986576348736498 xor arg3):
                        call address(arg4 xor 0x1593748593479873562049735986576348736498).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (arg1 * arg5), address(this.address), 128, 0
                    else:
                        call address(arg4 xor 0x1593748593479873562049735986576348736498).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (arg1 * arg5), 0, address(this.address), 128, 0
                else:
                    require ext_call.return_data[18 len 14]
                    if arg1 * arg5 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != arg1 * arg5:
                        revert with 0, '0x902'
                    require (10000 * ext_call.return_data[50 len 14]) + (arg1 * arg5)
                    if arg1 * arg5 * ext_call.return_data[18 len 14] / (10000 * ext_call.return_data[50 len 14]) + (arg1 * arg5) < arg2:
                        revert with 0, '0x703'
                    require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
                    call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(arg4 xor 0x1593748593479873562049735986576348736498), arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(arg4 xor 0x1593748593479873562049735986576348736498))
                    if 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c == address(0x1593748593479873562049735986576348736498 xor arg3):
                        call address(arg4 xor 0x1593748593479873562049735986576348736498).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, arg1 * arg5 * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (arg1 * arg5), address(this.address), 128, 0
                    else:
                        call address(arg4 xor 0x1593748593479873562049735986576348736498).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args arg1 * arg5 * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (arg1 * arg5), 0, address(this.address), 128, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(0x1593748593479873562049735986576348736498 xor arg3))
    staticcall address(0x1593748593479873562049735986576348736498 xor arg3).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg2:
        revert with 0, '0x701'
    require ext_code.size(0x4946c0e9f43f4dee607b0ef1fa1c)
    call 0x0000000000004946c0e9f43f4dee607b0ef1fa1c.freeUpTo(uint256 arg1) with:
         gas gas_remaining wei
        args ((16 * calldata.size) + 35154 / 41947)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_00000011(?) {
    require calldata.size - 4 >= 192
    if not stor0[msg.sender]:
        revert with 0, '0x700'
    if 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c == arg2:
        revert with 0, '0x708'
    require ext_code.size(arg2)
    staticcall arg2.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] - 1 > ext_call.return_data[0]:
        revert with 0, '0x901'
    if ext_call.return_data[0] - 1 <= 1:
        revert with 0, '0x707'
    require ext_code.size(arg3)
    staticcall arg3.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_code.size(arg2)
    call arg2.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg3), ext_call.return_data[0] - 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg2)
    staticcall arg2.0x70a08231 with:
            gas gas_remaining wei
           args arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg2 < 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
        if arg2 == arg2:
            if Mask(144, 112, ext_call.return_data[0]) > ext_call.return_data[0]:
                revert with 0, '0x901'
            if not arg6:
                if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, '0x902'
                if 10000 * Mask(112, 0, ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, '0x900'
                if Mask(112, 0, ext_call.return_data[32]):
                    require Mask(112, 0, ext_call.return_data[32])
                    if 0 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, '0x902'
                require 10000 * Mask(112, 0, ext_call.return_data[0])
                if not arg4:
                    if not arg5:
                        if 0 / 10000 * Mask(112, 0, ext_call.return_data[0]) <= arg1:
                            revert with 0, '0x706'
                require ext_code.size(arg3)
                if arg2 == arg2:
                    call arg3.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, 0 / 10000 * Mask(112, 0, ext_call.return_data[0]), address(this.address), 128, 0
                else:
                    call arg3.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0 / 10000 * Mask(112, 0, ext_call.return_data[0]), 0, address(this.address), 128, 0
            else:
                require arg6
                if (ext_call.return_data[0] * arg6) - (Mask(112, 0, ext_call.return_data[0]) * arg6) / arg6 != Mask(144, 112, ext_call.return_data[0]):
                    revert with 0, '0x902'
                if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, '0x902'
                if (10000 * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * arg6) - (Mask(112, 0, ext_call.return_data[0]) * arg6) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, '0x900'
                if not Mask(112, 0, ext_call.return_data[32]):
                    require (10000 * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * arg6) - (Mask(112, 0, ext_call.return_data[0]) * arg6)
                    if not arg4:
                        if not arg5:
                            if 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * arg6) - (Mask(112, 0, ext_call.return_data[0]) * arg6) <= arg1:
                                revert with 0, '0x706'
                    require ext_code.size(arg3)
                    if arg2 == arg2:
                        call arg3.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * arg6) - (Mask(112, 0, ext_call.return_data[0]) * arg6), address(this.address), 128, 0
                    else:
                        call arg3.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * arg6) - (Mask(112, 0, ext_call.return_data[0]) * arg6), 0, address(this.address), 128, 0
                else:
                    require Mask(112, 0, ext_call.return_data[32])
                    if (ext_call.return_data[0] * arg6 * Mask(112, 0, ext_call.return_data[32])) - (Mask(112, 0, ext_call.return_data[0]) * arg6 * Mask(112, 0, ext_call.return_data[32])) / Mask(112, 0, ext_call.return_data[32]) != (ext_call.return_data[0] * arg6) - (Mask(112, 0, ext_call.return_data[0]) * arg6):
                        revert with 0, '0x902'
                    require (10000 * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * arg6) - (Mask(112, 0, ext_call.return_data[0]) * arg6)
                    if not arg4:
                        if not arg5:
                            if (ext_call.return_data[0] * arg6 * Mask(112, 0, ext_call.return_data[32])) - (Mask(112, 0, ext_call.return_data[0]) * arg6 * Mask(112, 0, ext_call.return_data[32])) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * arg6) - (Mask(112, 0, ext_call.return_data[0]) * arg6) <= arg1:
                                revert with 0, '0x706'
                    require ext_code.size(arg3)
                    if arg2 == arg2:
                        call arg3.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, (ext_call.return_data[0] * arg6 * Mask(112, 0, ext_call.return_data[32])) - (Mask(112, 0, ext_call.return_data[0]) * arg6 * Mask(112, 0, ext_call.return_data[32])) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * arg6) - (Mask(112, 0, ext_call.return_data[0]) * arg6), address(this.address), 128, 0
                    else:
                        call arg3.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args (ext_call.return_data[0] * arg6 * Mask(112, 0, ext_call.return_data[32])) - (Mask(112, 0, ext_call.return_data[0]) * arg6 * Mask(112, 0, ext_call.return_data[32])) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * arg6) - (Mask(112, 0, ext_call.return_data[0]) * arg6), 0, address(this.address), 128, 0
        else:
            if ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]) > ext_call.return_data[0]:
                revert with 0, '0x901'
            if not arg6:
                if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, '0x902'
                if 10000 * Mask(112, 0, ext_call.return_data[32]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, '0x900'
                if Mask(112, 0, ext_call.return_data[0]):
                    require Mask(112, 0, ext_call.return_data[0])
                    if 0 / Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, '0x902'
                require 10000 * Mask(112, 0, ext_call.return_data[32])
                if not arg4:
                    if not arg5:
                        if 0 / 10000 * Mask(112, 0, ext_call.return_data[32]) <= arg1:
                            revert with 0, '0x706'
                require ext_code.size(arg3)
                if arg2 == arg2:
                    call arg3.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, 0 / 10000 * Mask(112, 0, ext_call.return_data[32]), address(this.address), 128, 0
                else:
                    call arg3.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0 / 10000 * Mask(112, 0, ext_call.return_data[32]), 0, address(this.address), 128, 0
            else:
                require arg6
                if (ext_call.return_data[0] * arg6) - (Mask(112, 0, ext_call.return_data[32]) * arg6) / arg6 != ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, '0x902'
                if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, '0x902'
                if (10000 * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * arg6) - (Mask(112, 0, ext_call.return_data[32]) * arg6) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, '0x900'
                if not Mask(112, 0, ext_call.return_data[0]):
                    require (10000 * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * arg6) - (Mask(112, 0, ext_call.return_data[32]) * arg6)
                    if not arg4:
                        if not arg5:
                            if 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * arg6) - (Mask(112, 0, ext_call.return_data[32]) * arg6) <= arg1:
                                revert with 0, '0x706'
                    require ext_code.size(arg3)
                    if arg2 == arg2:
                        call arg3.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * arg6) - (Mask(112, 0, ext_call.return_data[32]) * arg6), address(this.address), 128, 0
                    else:
                        call arg3.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * arg6) - (Mask(112, 0, ext_call.return_data[32]) * arg6), 0, address(this.address), 128, 0
                else:
                    require Mask(112, 0, ext_call.return_data[0])
                    if (ext_call.return_data[0] * arg6 * Mask(112, 0, ext_call.return_data[0])) - (Mask(112, 0, ext_call.return_data[32]) * arg6 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[0]) != (ext_call.return_data[0] * arg6) - (Mask(112, 0, ext_call.return_data[32]) * arg6):
                        revert with 0, '0x902'
                    require (10000 * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * arg6) - (Mask(112, 0, ext_call.return_data[32]) * arg6)
                    if not arg4:
                        if not arg5:
                            if (ext_call.return_data[0] * arg6 * Mask(112, 0, ext_call.return_data[0])) - (Mask(112, 0, ext_call.return_data[32]) * arg6 * Mask(112, 0, ext_call.return_data[0])) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * arg6) - (Mask(112, 0, ext_call.return_data[32]) * arg6) <= arg1:
                                revert with 0, '0x706'
                    require ext_code.size(arg3)
                    if arg2 == arg2:
                        call arg3.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, (ext_call.return_data[0] * arg6 * Mask(112, 0, ext_call.return_data[0])) - (Mask(112, 0, ext_call.return_data[32]) * arg6 * Mask(112, 0, ext_call.return_data[0])) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * arg6) - (Mask(112, 0, ext_call.return_data[32]) * arg6), address(this.address), 128, 0
                    else:
                        call arg3.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args (ext_call.return_data[0] * arg6 * Mask(112, 0, ext_call.return_data[0])) - (Mask(112, 0, ext_call.return_data[32]) * arg6 * Mask(112, 0, ext_call.return_data[0])) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * arg6) - (Mask(112, 0, ext_call.return_data[32]) * arg6), 0, address(this.address), 128, 0
    else:
        if arg2 == 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
            if Mask(144, 112, ext_call.return_data[0]) > ext_call.return_data[0]:
                revert with 0, '0x901'
            if not arg6:
                if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, '0x902'
                if 10000 * Mask(112, 0, ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, '0x900'
                if Mask(112, 0, ext_call.return_data[32]):
                    require Mask(112, 0, ext_call.return_data[32])
                    if 0 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, '0x902'
                require 10000 * Mask(112, 0, ext_call.return_data[0])
                if not arg4:
                    if not arg5:
                        if 0 / 10000 * Mask(112, 0, ext_call.return_data[0]) <= arg1:
                            revert with 0, '0x706'
                require ext_code.size(arg3)
                if 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c == arg2:
                    call arg3.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, 0 / 10000 * Mask(112, 0, ext_call.return_data[0]), address(this.address), 128, 0
                else:
                    call arg3.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0 / 10000 * Mask(112, 0, ext_call.return_data[0]), 0, address(this.address), 128, 0
            else:
                require arg6
                if (ext_call.return_data[0] * arg6) - (Mask(112, 0, ext_call.return_data[0]) * arg6) / arg6 != Mask(144, 112, ext_call.return_data[0]):
                    revert with 0, '0x902'
                if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, '0x902'
                if (10000 * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * arg6) - (Mask(112, 0, ext_call.return_data[0]) * arg6) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, '0x900'
                if not Mask(112, 0, ext_call.return_data[32]):
                    require (10000 * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * arg6) - (Mask(112, 0, ext_call.return_data[0]) * arg6)
                    if not arg4:
                        if not arg5:
                            if 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * arg6) - (Mask(112, 0, ext_call.return_data[0]) * arg6) <= arg1:
                                revert with 0, '0x706'
                    require ext_code.size(arg3)
                    if 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c == arg2:
                        call arg3.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * arg6) - (Mask(112, 0, ext_call.return_data[0]) * arg6), address(this.address), 128, 0
                    else:
                        call arg3.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * arg6) - (Mask(112, 0, ext_call.return_data[0]) * arg6), 0, address(this.address), 128, 0
                else:
                    require Mask(112, 0, ext_call.return_data[32])
                    if (ext_call.return_data[0] * arg6 * Mask(112, 0, ext_call.return_data[32])) - (Mask(112, 0, ext_call.return_data[0]) * arg6 * Mask(112, 0, ext_call.return_data[32])) / Mask(112, 0, ext_call.return_data[32]) != (ext_call.return_data[0] * arg6) - (Mask(112, 0, ext_call.return_data[0]) * arg6):
                        revert with 0, '0x902'
                    require (10000 * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * arg6) - (Mask(112, 0, ext_call.return_data[0]) * arg6)
                    if not arg4:
                        if not arg5:
                            if (ext_call.return_data[0] * arg6 * Mask(112, 0, ext_call.return_data[32])) - (Mask(112, 0, ext_call.return_data[0]) * arg6 * Mask(112, 0, ext_call.return_data[32])) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * arg6) - (Mask(112, 0, ext_call.return_data[0]) * arg6) <= arg1:
                                revert with 0, '0x706'
                    require ext_code.size(arg3)
                    if 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c == arg2:
                        call arg3.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, (ext_call.return_data[0] * arg6 * Mask(112, 0, ext_call.return_data[32])) - (Mask(112, 0, ext_call.return_data[0]) * arg6 * Mask(112, 0, ext_call.return_data[32])) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * arg6) - (Mask(112, 0, ext_call.return_data[0]) * arg6), address(this.address), 128, 0
                    else:
                        call arg3.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args (ext_call.return_data[0] * arg6 * Mask(112, 0, ext_call.return_data[32])) - (Mask(112, 0, ext_call.return_data[0]) * arg6 * Mask(112, 0, ext_call.return_data[32])) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * arg6) - (Mask(112, 0, ext_call.return_data[0]) * arg6), 0, address(this.address), 128, 0
        else:
            if ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]) > ext_call.return_data[0]:
                revert with 0, '0x901'
            if not arg6:
                if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, '0x902'
                if 10000 * Mask(112, 0, ext_call.return_data[32]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, '0x900'
                if Mask(112, 0, ext_call.return_data[0]):
                    require Mask(112, 0, ext_call.return_data[0])
                    if 0 / Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, '0x902'
                require 10000 * Mask(112, 0, ext_call.return_data[32])
                if not arg4:
                    if not arg5:
                        if 0 / 10000 * Mask(112, 0, ext_call.return_data[32]) <= arg1:
                            revert with 0, '0x706'
                require ext_code.size(arg3)
                if 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c == arg2:
                    call arg3.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, 0 / 10000 * Mask(112, 0, ext_call.return_data[32]), address(this.address), 128, 0
                else:
                    call arg3.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0 / 10000 * Mask(112, 0, ext_call.return_data[32]), 0, address(this.address), 128, 0
            else:
                require arg6
                if (ext_call.return_data[0] * arg6) - (Mask(112, 0, ext_call.return_data[32]) * arg6) / arg6 != ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, '0x902'
                if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, '0x902'
                if (10000 * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * arg6) - (Mask(112, 0, ext_call.return_data[32]) * arg6) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, '0x900'
                if not Mask(112, 0, ext_call.return_data[0]):
                    require (10000 * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * arg6) - (Mask(112, 0, ext_call.return_data[32]) * arg6)
                    if not arg4:
                        if not arg5:
                            if 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * arg6) - (Mask(112, 0, ext_call.return_data[32]) * arg6) <= arg1:
                                revert with 0, '0x706'
                    require ext_code.size(arg3)
                    if 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c == arg2:
                        call arg3.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * arg6) - (Mask(112, 0, ext_call.return_data[32]) * arg6), address(this.address), 128, 0
                    else:
                        call arg3.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * arg6) - (Mask(112, 0, ext_call.return_data[32]) * arg6), 0, address(this.address), 128, 0
                else:
                    require Mask(112, 0, ext_call.return_data[0])
                    if (ext_call.return_data[0] * arg6 * Mask(112, 0, ext_call.return_data[0])) - (Mask(112, 0, ext_call.return_data[32]) * arg6 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[0]) != (ext_call.return_data[0] * arg6) - (Mask(112, 0, ext_call.return_data[32]) * arg6):
                        revert with 0, '0x902'
                    require (10000 * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * arg6) - (Mask(112, 0, ext_call.return_data[32]) * arg6)
                    if not arg4:
                        if not arg5:
                            if (ext_call.return_data[0] * arg6 * Mask(112, 0, ext_call.return_data[0])) - (Mask(112, 0, ext_call.return_data[32]) * arg6 * Mask(112, 0, ext_call.return_data[0])) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * arg6) - (Mask(112, 0, ext_call.return_data[32]) * arg6) <= arg1:
                                revert with 0, '0x706'
                    require ext_code.size(arg3)
                    if 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c == arg2:
                        call arg3.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, (ext_call.return_data[0] * arg6 * Mask(112, 0, ext_call.return_data[0])) - (Mask(112, 0, ext_call.return_data[32]) * arg6 * Mask(112, 0, ext_call.return_data[0])) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * arg6) - (Mask(112, 0, ext_call.return_data[32]) * arg6), address(this.address), 128, 0
                    else:
                        call arg3.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args (ext_call.return_data[0] * arg6 * Mask(112, 0, ext_call.return_data[0])) - (Mask(112, 0, ext_call.return_data[32]) * arg6 * Mask(112, 0, ext_call.return_data[0])) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * arg6) - (Mask(112, 0, ext_call.return_data[32]) * arg6), 0, address(this.address), 128, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if arg4 > 0:
        require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
        staticcall 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < arg1:
            revert with 0, '0x702'
}



}
