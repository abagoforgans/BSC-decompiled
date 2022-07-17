contract main {




// =====================  Runtime code  =====================


uint256 stor0;
uint256 stor1;

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if 873 > -(Mask(159, 1, msg.sender) >> 1) + 0xffffffffffffffffffffffffffffffffffffffff:
        revert with 0, 17
    if stor0 != sha3(address((Mask(159, 1, msg.sender) >> 1) + 873)):
        if 873 > -(Mask(159, 1, tx.origin) >> 1) + 0xffffffffffffffffffffffffffffffffffffffff:
            revert with 0, 17
        if stor0 != sha3(address((Mask(159, 1, tx.origin) >> 1) + 873)):
            if 0x6af40a0a297fc14fe217d3c6d783cc5b9f01bff8 != msg.sender:
                revert with 0, 'yh'
    if not arg1:
        revert with 0, 'qs'
    if 873 > -(Mask(159, 1, arg1) >> 1) + 0xffffffffffffffffffffffffffffffffffffffff:
        revert with 0, 17
    stor0 = sha3(address((Mask(159, 1, arg1) >> 1) + 873))
}

function sub_e40002d5(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg3 == address(arg3)
    if 873 > -(Mask(159, 1, msg.sender) >> 1) + 0xffffffffffffffffffffffffffffffffffffffff:
        revert with 0, 17
    if stor0 != sha3(address((Mask(159, 1, msg.sender) >> 1) + 873)):
        if 873 > -(Mask(159, 1, tx.origin) >> 1) + 0xffffffffffffffffffffffffffffffffffffffff:
            revert with 0, 17
        if stor0 != sha3(address((Mask(159, 1, tx.origin) >> 1) + 873)):
            if 0x6af40a0a297fc14fe217d3c6d783cc5b9f01bff8 != msg.sender:
                revert with 0, 'yh'
    call address(arg1).0xa9059cbb with:
         gas gas_remaining wei
        args address(arg3), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_0dc5bbad(?) payable {
    require calldata.size - 4 >= 64
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    stor1 = cd[4]
    idx = 0
    while idx < ('cd', 36).length:
        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
        if uint32(ext_code.size(cd[((32 * idx) + cd[36] + 36)])):
            if idx >= ('cd', 36).length:
                revert with 0, 50
            require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
            mem[96] = 0xdbe671f00000000000000000000000000000000000000000000000000000000
            require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
            call address(cd[((32 * idx) + cd[36] + 36)]).a() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_8966f42d(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require calldata.size - 36 >= 96
    if 873 > -(Mask(159, 1, msg.sender) >> 1) + 0xffffffffffffffffffffffffffffffffffffffff:
        revert with 0, 17
    if stor0 != sha3(address((Mask(159, 1, msg.sender) >> 1) + 873)):
        if 873 > -(Mask(159, 1, tx.origin) >> 1) + 0xffffffffffffffffffffffffffffffffffffffff:
            revert with 0, 17
        if stor0 != sha3(address((Mask(159, 1, tx.origin) >> 1) + 873)):
            if 0x6af40a0a297fc14fe217d3c6d783cc5b9f01bff8 != msg.sender:
                revert with 0, 'yh'
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'hz'
    require arg2 == address(arg2)
    call address(arg1).0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require arg2 == address(arg2)
    staticcall address(arg2).token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require arg2 == address(arg2)
    staticcall address(arg2).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require arg2 == address(arg2)
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args address(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if address(ext_call.return_data[0]) == address(arg1):
        if ext_call.return_data[0] < Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 17
        if Mask(144, 112, ext_call.return_data[0]) <= 0:
            revert with 0, 'nj'
        if Mask(112, 0, ext_call.return_data[0]) <= 0:
            revert with 0, 'wn'
        if Mask(112, 0, ext_call.return_data[32]) <= 0:
            revert with 0, 'wn'
        if arg4 < arg3:
            revert with 0, 17
        if Mask(144, 112, ext_call.return_data[0]) and arg4 - arg3 > -1 / Mask(144, 112, ext_call.return_data[0]):
            revert with 0, 17
        if (arg4 * ext_call.return_data[0]) - (arg3 * ext_call.return_data[0]) - (arg4 * Mask(112, 0, ext_call.return_data[0])) + (arg3 * Mask(112, 0, ext_call.return_data[0])) and Mask(112, 0, ext_call.return_data[32]) > -1 / (arg4 * ext_call.return_data[0]) - (arg3 * ext_call.return_data[0]) - (arg4 * Mask(112, 0, ext_call.return_data[0])) + (arg3 * Mask(112, 0, ext_call.return_data[0])):
            revert with 0, 17
        if Mask(112, 0, ext_call.return_data[0]) and arg4 > -1 / Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 17
        if Mask(112, 0, ext_call.return_data[0]) * arg4 > !((arg4 * ext_call.return_data[0]) - (arg3 * ext_call.return_data[0]) - (arg4 * Mask(112, 0, ext_call.return_data[0])) + (arg3 * Mask(112, 0, ext_call.return_data[0]))):
            revert with 0, 17
        if not (Mask(112, 0, ext_call.return_data[0]) * arg4) + (arg4 * ext_call.return_data[0]) - (arg3 * ext_call.return_data[0]) - (arg4 * Mask(112, 0, ext_call.return_data[0])) + (arg3 * Mask(112, 0, ext_call.return_data[0])):
            revert with 0, 18
        require arg2 == address(arg2)
        require ext_code.size(address(arg2))
        if address(ext_call.return_data[0]) == address(arg1):
            call address(arg2).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0, (arg4 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (arg3 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (arg4 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) + (arg3 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (Mask(112, 0, ext_call.return_data[0]) * arg4) + (arg4 * ext_call.return_data[0]) - (arg3 * ext_call.return_data[0]) - (arg4 * Mask(112, 0, ext_call.return_data[0])) + (arg3 * Mask(112, 0, ext_call.return_data[0])), address(this.address), 128, 0
        else:
            call address(arg2).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args (arg4 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (arg3 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (arg4 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) + (arg3 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (Mask(112, 0, ext_call.return_data[0]) * arg4) + (arg4 * ext_call.return_data[0]) - (arg3 * ext_call.return_data[0]) - (arg4 * Mask(112, 0, ext_call.return_data[0])) + (arg3 * Mask(112, 0, ext_call.return_data[0])), 0, address(this.address), 128, 0
    else:
        if ext_call.return_data[0] < Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 17
        if ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]) <= 0:
            revert with 0, 'nj'
        if Mask(112, 0, ext_call.return_data[32]) <= 0:
            revert with 0, 'wn'
        if Mask(112, 0, ext_call.return_data[0]) <= 0:
            revert with 0, 'wn'
        if arg4 < arg3:
            revert with 0, 17
        if ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]) and arg4 - arg3 > -1 / ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 17
        if (arg4 * ext_call.return_data[0]) - (arg3 * ext_call.return_data[0]) - (arg4 * Mask(112, 0, ext_call.return_data[32])) + (arg3 * Mask(112, 0, ext_call.return_data[32])) and Mask(112, 0, ext_call.return_data[0]) > -1 / (arg4 * ext_call.return_data[0]) - (arg3 * ext_call.return_data[0]) - (arg4 * Mask(112, 0, ext_call.return_data[32])) + (arg3 * Mask(112, 0, ext_call.return_data[32])):
            revert with 0, 17
        if Mask(112, 0, ext_call.return_data[32]) and arg4 > -1 / Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 17
        if Mask(112, 0, ext_call.return_data[32]) * arg4 > !((arg4 * ext_call.return_data[0]) - (arg3 * ext_call.return_data[0]) - (arg4 * Mask(112, 0, ext_call.return_data[32])) + (arg3 * Mask(112, 0, ext_call.return_data[32]))):
            revert with 0, 17
        if not (Mask(112, 0, ext_call.return_data[32]) * arg4) + (arg4 * ext_call.return_data[0]) - (arg3 * ext_call.return_data[0]) - (arg4 * Mask(112, 0, ext_call.return_data[32])) + (arg3 * Mask(112, 0, ext_call.return_data[32])):
            revert with 0, 18
        require arg2 == address(arg2)
        require ext_code.size(address(arg2))
        if address(ext_call.return_data[0]) == address(arg1):
            call address(arg2).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0, (arg4 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (arg3 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (arg4 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) + (arg3 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (Mask(112, 0, ext_call.return_data[32]) * arg4) + (arg4 * ext_call.return_data[0]) - (arg3 * ext_call.return_data[0]) - (arg4 * Mask(112, 0, ext_call.return_data[32])) + (arg3 * Mask(112, 0, ext_call.return_data[32])), address(this.address), 128, 0
        else:
            call address(arg2).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args (arg4 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (arg3 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (arg4 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) + (arg3 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (Mask(112, 0, ext_call.return_data[32]) * arg4) + (arg4 * ext_call.return_data[0]) - (arg3 * ext_call.return_data[0]) - (arg4 * Mask(112, 0, ext_call.return_data[32])) + (arg3 * Mask(112, 0, ext_call.return_data[32])), 0, address(this.address), 128, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_8a3ebc73(?) payable {
    require calldata.size - 4 >= 256
    require cd[4] == address(cd[4])
    require calldata.size - 100 >= 96
    require cd[228] <= test266151307()
    require cd[228] + 35 < calldata.size
    require ('cd', 228).length <= test266151307()
    require cd[228] + (32 * ('cd', 228).length) + 36 <= calldata.size
    if 873 > -(Mask(159, 1, msg.sender) >> 1) + 0xffffffffffffffffffffffffffffffffffffffff:
        revert with 0, 17
    if stor0 == sha3(address((Mask(159, 1, msg.sender) >> 1) + 873)):
        if 789 > !(cd[196] / 3):
            revert with 0, 17
        if block.number > (cd[196] / 3) + 789:
            revert with 0, 'tx'
        require cd[100] == address(cd[100])
        staticcall address(cd[100]).token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require cd[100] == address(cd[100])
        staticcall address(cd[100]).getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        if address(ext_call.return_data[0]) == address(cd[4]):
            if ext_call.return_data[18 len 14] > cd[68]:
                revert with 0, 'pw'
            require cd[100] == address(cd[100])
            call address(cd[4]).0xa9059cbb with:
                 gas gas_remaining wei
                args address(cd[100]), cd[36]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if cd[36] <= 0:
                revert with 0, 'nj'
            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                revert with 0, 'wn'
            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                revert with 0, 'wn'
            if cd[164] < cd[132]:
                revert with 0, 17
            if cd[36] and cd[164] - cd[132] > -1 / cd[36]:
                revert with 0, 17
            if (cd[164] * cd[36]) - (cd[132] * cd[36]) and Mask(112, 0, ext_call.return_data[32]) > -1 / (cd[164] * cd[36]) - (cd[132] * cd[36]):
                revert with 0, 17
            if Mask(112, 0, ext_call.return_data[0]) and cd[164] > -1 / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 17
            if Mask(112, 0, ext_call.return_data[0]) * cd[164] > !((cd[164] * cd[36]) - (cd[132] * cd[36])):
                revert with 0, 17
            if not (Mask(112, 0, ext_call.return_data[0]) * cd[164]) + (cd[164] * cd[36]) - (cd[132] * cd[36]):
                revert with 0, 18
            require cd[100] == address(cd[100])
            require ext_code.size(address(cd[100]))
            if address(ext_call.return_data[0]) == address(cd[4]):
                call address(cd[100]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0, (cd[164] * cd[36] * Mask(112, 0, ext_call.return_data[32])) - (cd[132] * cd[36] * Mask(112, 0, ext_call.return_data[32])) / (Mask(112, 0, ext_call.return_data[0]) * cd[164]) + (cd[164] * cd[36]) - (cd[132] * cd[36]), address(this.address), 128, 0
            else:
                call address(cd[100]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args (cd[164] * cd[36] * Mask(112, 0, ext_call.return_data[32])) - (cd[132] * cd[36] * Mask(112, 0, ext_call.return_data[32])) / (Mask(112, 0, ext_call.return_data[0]) * cd[164]) + (cd[164] * cd[36]) - (cd[132] * cd[36]), 0, address(this.address), 128, 0
        else:
            if ext_call.return_data[50 len 14] > cd[68]:
                revert with 0, 'pw'
            require cd[100] == address(cd[100])
            call address(cd[4]).0xa9059cbb with:
                 gas gas_remaining wei
                args address(cd[100]), cd[36]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if cd[36] <= 0:
                revert with 0, 'nj'
            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                revert with 0, 'wn'
            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                revert with 0, 'wn'
            if cd[164] < cd[132]:
                revert with 0, 17
            if cd[36] and cd[164] - cd[132] > -1 / cd[36]:
                revert with 0, 17
            if (cd[164] * cd[36]) - (cd[132] * cd[36]) and Mask(112, 0, ext_call.return_data[0]) > -1 / (cd[164] * cd[36]) - (cd[132] * cd[36]):
                revert with 0, 17
            if Mask(112, 0, ext_call.return_data[32]) and cd[164] > -1 / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 17
            if Mask(112, 0, ext_call.return_data[32]) * cd[164] > !((cd[164] * cd[36]) - (cd[132] * cd[36])):
                revert with 0, 17
            if not (Mask(112, 0, ext_call.return_data[32]) * cd[164]) + (cd[164] * cd[36]) - (cd[132] * cd[36]):
                revert with 0, 18
            require cd[100] == address(cd[100])
            require ext_code.size(address(cd[100]))
            if address(ext_call.return_data[0]) == address(cd[4]):
                call address(cd[100]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0, (cd[164] * cd[36] * Mask(112, 0, ext_call.return_data[0])) - (cd[132] * cd[36] * Mask(112, 0, ext_call.return_data[0])) / (Mask(112, 0, ext_call.return_data[32]) * cd[164]) + (cd[164] * cd[36]) - (cd[132] * cd[36]), address(this.address), 128, 0
            else:
                call address(cd[100]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args (cd[164] * cd[36] * Mask(112, 0, ext_call.return_data[0])) - (cd[132] * cd[36] * Mask(112, 0, ext_call.return_data[0])) / (Mask(112, 0, ext_call.return_data[32]) * cd[164]) + (cd[164] * cd[36]) - (cd[132] * cd[36]), 0, address(this.address), 128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = 0
        while idx < ('cd', 228).length:
            require cd[((32 * idx) + cd[228] + 36)] == address(cd[((32 * idx) + cd[228] + 36)])
            if uint32(ext_code.size(cd[((32 * idx) + cd[228] + 36)])):
                if idx >= ('cd', 228).length:
                    revert with 0, 50
                require cd[((32 * idx) + cd[228] + 36)] == address(cd[((32 * idx) + cd[228] + 36)])
                mem[(4 * ceil32(return_data.size)) + 180] = 0xdbe671f00000000000000000000000000000000000000000000000000000000
                require ext_code.size(address(cd[((32 * idx) + cd[228] + 36)]))
                call address(cd[((32 * idx) + cd[228] + 36)]).a() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    else:
        if 873 > -(Mask(159, 1, tx.origin) >> 1) + 0xffffffffffffffffffffffffffffffffffffffff:
            revert with 0, 17
        if stor0 != sha3(address((Mask(159, 1, tx.origin) >> 1) + 873)):
            if 0x6af40a0a297fc14fe217d3c6d783cc5b9f01bff8 != msg.sender:
                revert with 0, 'yh'
        if 789 > !(cd[196] / 3):
            revert with 0, 17
        if block.number > (cd[196] / 3) + 789:
            revert with 0, 'tx'
        require cd[100] == address(cd[100])
        staticcall address(cd[100]).token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require cd[100] == address(cd[100])
        staticcall address(cd[100]).getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        if address(ext_call.return_data[0]) == address(cd[4]):
            if ext_call.return_data[18 len 14] > cd[68]:
                revert with 0, 'pw'
            require cd[100] == address(cd[100])
            call address(cd[4]).0xa9059cbb with:
                 gas gas_remaining wei
                args address(cd[100]), cd[36]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if cd[36] <= 0:
                revert with 0, 'nj'
            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                revert with 0, 'wn'
            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                revert with 0, 'wn'
            if cd[164] < cd[132]:
                revert with 0, 17
            if cd[36] and cd[164] - cd[132] > -1 / cd[36]:
                revert with 0, 17
            if (cd[164] * cd[36]) - (cd[132] * cd[36]) and Mask(112, 0, ext_call.return_data[32]) > -1 / (cd[164] * cd[36]) - (cd[132] * cd[36]):
                revert with 0, 17
            if Mask(112, 0, ext_call.return_data[0]) and cd[164] > -1 / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 17
            if Mask(112, 0, ext_call.return_data[0]) * cd[164] > !((cd[164] * cd[36]) - (cd[132] * cd[36])):
                revert with 0, 17
            if not (Mask(112, 0, ext_call.return_data[0]) * cd[164]) + (cd[164] * cd[36]) - (cd[132] * cd[36]):
                revert with 0, 18
            require cd[100] == address(cd[100])
            require ext_code.size(address(cd[100]))
            if address(ext_call.return_data[0]) == address(cd[4]):
                call address(cd[100]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0, (cd[164] * cd[36] * Mask(112, 0, ext_call.return_data[32])) - (cd[132] * cd[36] * Mask(112, 0, ext_call.return_data[32])) / (Mask(112, 0, ext_call.return_data[0]) * cd[164]) + (cd[164] * cd[36]) - (cd[132] * cd[36]), address(this.address), 128, 0
            else:
                call address(cd[100]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args (cd[164] * cd[36] * Mask(112, 0, ext_call.return_data[32])) - (cd[132] * cd[36] * Mask(112, 0, ext_call.return_data[32])) / (Mask(112, 0, ext_call.return_data[0]) * cd[164]) + (cd[164] * cd[36]) - (cd[132] * cd[36]), 0, address(this.address), 128, 0
        else:
            if ext_call.return_data[50 len 14] > cd[68]:
                revert with 0, 'pw'
            require cd[100] == address(cd[100])
            call address(cd[4]).0xa9059cbb with:
                 gas gas_remaining wei
                args address(cd[100]), cd[36]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if cd[36] <= 0:
                revert with 0, 'nj'
            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                revert with 0, 'wn'
            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                revert with 0, 'wn'
            if cd[164] < cd[132]:
                revert with 0, 17
            if cd[36] and cd[164] - cd[132] > -1 / cd[36]:
                revert with 0, 17
            if (cd[164] * cd[36]) - (cd[132] * cd[36]) and Mask(112, 0, ext_call.return_data[0]) > -1 / (cd[164] * cd[36]) - (cd[132] * cd[36]):
                revert with 0, 17
            if Mask(112, 0, ext_call.return_data[32]) and cd[164] > -1 / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 17
            if Mask(112, 0, ext_call.return_data[32]) * cd[164] > !((cd[164] * cd[36]) - (cd[132] * cd[36])):
                revert with 0, 17
            if not (Mask(112, 0, ext_call.return_data[32]) * cd[164]) + (cd[164] * cd[36]) - (cd[132] * cd[36]):
                revert with 0, 18
            require cd[100] == address(cd[100])
            require ext_code.size(address(cd[100]))
            if address(ext_call.return_data[0]) == address(cd[4]):
                call address(cd[100]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0, (cd[164] * cd[36] * Mask(112, 0, ext_call.return_data[0])) - (cd[132] * cd[36] * Mask(112, 0, ext_call.return_data[0])) / (Mask(112, 0, ext_call.return_data[32]) * cd[164]) + (cd[164] * cd[36]) - (cd[132] * cd[36]), address(this.address), 128, 0
            else:
                call address(cd[100]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args (cd[164] * cd[36] * Mask(112, 0, ext_call.return_data[0])) - (cd[132] * cd[36] * Mask(112, 0, ext_call.return_data[0])) / (Mask(112, 0, ext_call.return_data[32]) * cd[164]) + (cd[164] * cd[36]) - (cd[132] * cd[36]), 0, address(this.address), 128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = 0
        while idx < ('cd', 228).length:
            require cd[((32 * idx) + cd[228] + 36)] == address(cd[((32 * idx) + cd[228] + 36)])
            if uint32(ext_code.size(cd[((32 * idx) + cd[228] + 36)])):
                if idx >= ('cd', 228).length:
                    revert with 0, 50
                require cd[((32 * idx) + cd[228] + 36)] == address(cd[((32 * idx) + cd[228] + 36)])
                mem[(4 * ceil32(return_data.size)) + 232] = 0xdbe671f00000000000000000000000000000000000000000000000000000000
                require ext_code.size(address(cd[((32 * idx) + cd[228] + 36)]))
                call address(cd[((32 * idx) + cd[228] + 36)]).a() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
}

function sub_05afccef(?) payable {
    require calldata.size - 4 >= 288
    require cd[4] == address(cd[4])
    require calldata.size - 100 >= 96
    require cd[260] <= test266151307()
    require cd[260] + 35 < calldata.size
    require ('cd', 260).length <= test266151307()
    require cd[260] + (32 * ('cd', 260).length) + 36 <= calldata.size
    if 873 > -(Mask(159, 1, msg.sender) >> 1) + 0xffffffffffffffffffffffffffffffffffffffff:
        revert with 0, 17
    if stor0 == sha3(address((Mask(159, 1, msg.sender) >> 1) + 873)):
        if stor1 != cd[228]:
            revert with 0, 'rc'
        if 873 > -(Mask(159, 1, msg.sender) >> 1) + 0xffffffffffffffffffffffffffffffffffffffff:
            revert with 0, 17
        if stor0 == sha3(address((Mask(159, 1, msg.sender) >> 1) + 873)):
            if 789 > !(cd[196] / 3):
                revert with 0, 17
            if block.number > (cd[196] / 3) + 789:
                revert with 0, 'tx'
            require cd[100] == address(cd[100])
            staticcall address(cd[100]).token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require cd[100] == address(cd[100])
            staticcall address(cd[100]).getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
            if address(ext_call.return_data[0]) == address(cd[4]):
                if ext_call.return_data[18 len 14] > cd[68]:
                    revert with 0, 'pw'
                require cd[100] == address(cd[100])
                call address(cd[4]).0xa9059cbb with:
                     gas gas_remaining wei
                    args address(cd[100]), cd[36]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if cd[36] <= 0:
                    revert with 0, 'nj'
                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                    revert with 0, 'wn'
                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                    revert with 0, 'wn'
                if cd[164] < cd[132]:
                    revert with 0, 17
                if cd[36] and cd[164] - cd[132] > -1 / cd[36]:
                    revert with 0, 17
                if (cd[164] * cd[36]) - (cd[132] * cd[36]) and Mask(112, 0, ext_call.return_data[32]) > -1 / (cd[164] * cd[36]) - (cd[132] * cd[36]):
                    revert with 0, 17
                if Mask(112, 0, ext_call.return_data[0]) and cd[164] > -1 / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 17
                if Mask(112, 0, ext_call.return_data[0]) * cd[164] > !((cd[164] * cd[36]) - (cd[132] * cd[36])):
                    revert with 0, 17
                if not (Mask(112, 0, ext_call.return_data[0]) * cd[164]) + (cd[164] * cd[36]) - (cd[132] * cd[36]):
                    revert with 0, 18
                require cd[100] == address(cd[100])
                require ext_code.size(address(cd[100]))
                if address(ext_call.return_data[0]) == address(cd[4]):
                    call address(cd[100]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, (cd[164] * cd[36] * Mask(112, 0, ext_call.return_data[32])) - (cd[132] * cd[36] * Mask(112, 0, ext_call.return_data[32])) / (Mask(112, 0, ext_call.return_data[0]) * cd[164]) + (cd[164] * cd[36]) - (cd[132] * cd[36]), address(this.address), 128, 0
                else:
                    call address(cd[100]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args (cd[164] * cd[36] * Mask(112, 0, ext_call.return_data[32])) - (cd[132] * cd[36] * Mask(112, 0, ext_call.return_data[32])) / (Mask(112, 0, ext_call.return_data[0]) * cd[164]) + (cd[164] * cd[36]) - (cd[132] * cd[36]), 0, address(this.address), 128, 0
            else:
                if ext_call.return_data[50 len 14] > cd[68]:
                    revert with 0, 'pw'
                require cd[100] == address(cd[100])
                call address(cd[4]).0xa9059cbb with:
                     gas gas_remaining wei
                    args address(cd[100]), cd[36]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if cd[36] <= 0:
                    revert with 0, 'nj'
                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                    revert with 0, 'wn'
                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                    revert with 0, 'wn'
                if cd[164] < cd[132]:
                    revert with 0, 17
                if cd[36] and cd[164] - cd[132] > -1 / cd[36]:
                    revert with 0, 17
                if (cd[164] * cd[36]) - (cd[132] * cd[36]) and Mask(112, 0, ext_call.return_data[0]) > -1 / (cd[164] * cd[36]) - (cd[132] * cd[36]):
                    revert with 0, 17
                if Mask(112, 0, ext_call.return_data[32]) and cd[164] > -1 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 17
                if Mask(112, 0, ext_call.return_data[32]) * cd[164] > !((cd[164] * cd[36]) - (cd[132] * cd[36])):
                    revert with 0, 17
                if not (Mask(112, 0, ext_call.return_data[32]) * cd[164]) + (cd[164] * cd[36]) - (cd[132] * cd[36]):
                    revert with 0, 18
                require cd[100] == address(cd[100])
                require ext_code.size(address(cd[100]))
                if address(ext_call.return_data[0]) == address(cd[4]):
                    call address(cd[100]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, (cd[164] * cd[36] * Mask(112, 0, ext_call.return_data[0])) - (cd[132] * cd[36] * Mask(112, 0, ext_call.return_data[0])) / (Mask(112, 0, ext_call.return_data[32]) * cd[164]) + (cd[164] * cd[36]) - (cd[132] * cd[36]), address(this.address), 128, 0
                else:
                    call address(cd[100]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args (cd[164] * cd[36] * Mask(112, 0, ext_call.return_data[0])) - (cd[132] * cd[36] * Mask(112, 0, ext_call.return_data[0])) / (Mask(112, 0, ext_call.return_data[32]) * cd[164]) + (cd[164] * cd[36]) - (cd[132] * cd[36]), 0, address(this.address), 128, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = 0
            while idx < ('cd', 260).length:
                require cd[((32 * idx) + cd[260] + 36)] == address(cd[((32 * idx) + cd[260] + 36)])
                if uint32(ext_code.size(cd[((32 * idx) + cd[260] + 36)])):
                    if idx >= ('cd', 260).length:
                        revert with 0, 50
                    require cd[((32 * idx) + cd[260] + 36)] == address(cd[((32 * idx) + cd[260] + 36)])
                    mem[(4 * ceil32(return_data.size)) + 232] = 0xdbe671f00000000000000000000000000000000000000000000000000000000
                    require ext_code.size(address(cd[((32 * idx) + cd[260] + 36)]))
                    call address(cd[((32 * idx) + cd[260] + 36)]).a() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
        else:
            if 873 > -(Mask(159, 1, tx.origin) >> 1) + 0xffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            if stor0 != sha3(address((Mask(159, 1, tx.origin) >> 1) + 873)):
                if 0x6af40a0a297fc14fe217d3c6d783cc5b9f01bff8 != msg.sender:
                    revert with 0, 'yh'
            if 789 > !(cd[196] / 3):
                revert with 0, 17
            if block.number > (cd[196] / 3) + 789:
                revert with 0, 'tx'
            require cd[100] == address(cd[100])
            staticcall address(cd[100]).token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require cd[100] == address(cd[100])
            staticcall address(cd[100]).getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
            if address(ext_call.return_data[0]) == address(cd[4]):
                if ext_call.return_data[18 len 14] > cd[68]:
                    revert with 0, 'pw'
                require cd[100] == address(cd[100])
                call address(cd[4]).0xa9059cbb with:
                     gas gas_remaining wei
                    args address(cd[100]), cd[36]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if cd[36] <= 0:
                    revert with 0, 'nj'
                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                    revert with 0, 'wn'
                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                    revert with 0, 'wn'
                if cd[164] < cd[132]:
                    revert with 0, 17
                if cd[36] and cd[164] - cd[132] > -1 / cd[36]:
                    revert with 0, 17
                if (cd[164] * cd[36]) - (cd[132] * cd[36]) and Mask(112, 0, ext_call.return_data[32]) > -1 / (cd[164] * cd[36]) - (cd[132] * cd[36]):
                    revert with 0, 17
                if Mask(112, 0, ext_call.return_data[0]) and cd[164] > -1 / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 17
                if Mask(112, 0, ext_call.return_data[0]) * cd[164] > !((cd[164] * cd[36]) - (cd[132] * cd[36])):
                    revert with 0, 17
                if not (Mask(112, 0, ext_call.return_data[0]) * cd[164]) + (cd[164] * cd[36]) - (cd[132] * cd[36]):
                    revert with 0, 18
                require cd[100] == address(cd[100])
                require ext_code.size(address(cd[100]))
                if address(ext_call.return_data[0]) == address(cd[4]):
                    call address(cd[100]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, (cd[164] * cd[36] * Mask(112, 0, ext_call.return_data[32])) - (cd[132] * cd[36] * Mask(112, 0, ext_call.return_data[32])) / (Mask(112, 0, ext_call.return_data[0]) * cd[164]) + (cd[164] * cd[36]) - (cd[132] * cd[36]), address(this.address), 128, 0
                else:
                    call address(cd[100]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args (cd[164] * cd[36] * Mask(112, 0, ext_call.return_data[32])) - (cd[132] * cd[36] * Mask(112, 0, ext_call.return_data[32])) / (Mask(112, 0, ext_call.return_data[0]) * cd[164]) + (cd[164] * cd[36]) - (cd[132] * cd[36]), 0, address(this.address), 128, 0
            else:
                if ext_call.return_data[50 len 14] > cd[68]:
                    revert with 0, 'pw'
                require cd[100] == address(cd[100])
                call address(cd[4]).0xa9059cbb with:
                     gas gas_remaining wei
                    args address(cd[100]), cd[36]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if cd[36] <= 0:
                    revert with 0, 'nj'
                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                    revert with 0, 'wn'
                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                    revert with 0, 'wn'
                if cd[164] < cd[132]:
                    revert with 0, 17
                if cd[36] and cd[164] - cd[132] > -1 / cd[36]:
                    revert with 0, 17
                if (cd[164] * cd[36]) - (cd[132] * cd[36]) and Mask(112, 0, ext_call.return_data[0]) > -1 / (cd[164] * cd[36]) - (cd[132] * cd[36]):
                    revert with 0, 17
                if Mask(112, 0, ext_call.return_data[32]) and cd[164] > -1 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 17
                if Mask(112, 0, ext_call.return_data[32]) * cd[164] > !((cd[164] * cd[36]) - (cd[132] * cd[36])):
                    revert with 0, 17
                if not (Mask(112, 0, ext_call.return_data[32]) * cd[164]) + (cd[164] * cd[36]) - (cd[132] * cd[36]):
                    revert with 0, 18
                require cd[100] == address(cd[100])
                require ext_code.size(address(cd[100]))
                if address(ext_call.return_data[0]) == address(cd[4]):
                    call address(cd[100]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, (cd[164] * cd[36] * Mask(112, 0, ext_call.return_data[0])) - (cd[132] * cd[36] * Mask(112, 0, ext_call.return_data[0])) / (Mask(112, 0, ext_call.return_data[32]) * cd[164]) + (cd[164] * cd[36]) - (cd[132] * cd[36]), address(this.address), 128, 0
                else:
                    call address(cd[100]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args (cd[164] * cd[36] * Mask(112, 0, ext_call.return_data[0])) - (cd[132] * cd[36] * Mask(112, 0, ext_call.return_data[0])) / (Mask(112, 0, ext_call.return_data[32]) * cd[164]) + (cd[164] * cd[36]) - (cd[132] * cd[36]), 0, address(this.address), 128, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = 0
            while idx < ('cd', 260).length:
                require cd[((32 * idx) + cd[260] + 36)] == address(cd[((32 * idx) + cd[260] + 36)])
                if uint32(ext_code.size(cd[((32 * idx) + cd[260] + 36)])):
                    if idx >= ('cd', 260).length:
                        revert with 0, 50
                    require cd[((32 * idx) + cd[260] + 36)] == address(cd[((32 * idx) + cd[260] + 36)])
                    mem[(4 * ceil32(return_data.size)) + 284] = 0xdbe671f00000000000000000000000000000000000000000000000000000000
                    require ext_code.size(address(cd[((32 * idx) + cd[260] + 36)]))
                    call address(cd[((32 * idx) + cd[260] + 36)]).a() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
    else:
        if 873 > -(Mask(159, 1, tx.origin) >> 1) + 0xffffffffffffffffffffffffffffffffffffffff:
            revert with 0, 17
        if stor0 != sha3(address((Mask(159, 1, tx.origin) >> 1) + 873)):
            if 0x6af40a0a297fc14fe217d3c6d783cc5b9f01bff8 != msg.sender:
                revert with 0, 'yh'
        if stor1 != cd[228]:
            revert with 0, 'rc'
        if 873 > -(Mask(159, 1, msg.sender) >> 1) + 0xffffffffffffffffffffffffffffffffffffffff:
            revert with 0, 17
        if stor0 == sha3(address((Mask(159, 1, msg.sender) >> 1) + 873)):
            if 789 > !(cd[196] / 3):
                revert with 0, 17
            if block.number > (cd[196] / 3) + 789:
                revert with 0, 'tx'
            require cd[100] == address(cd[100])
            staticcall address(cd[100]).token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require cd[100] == address(cd[100])
            staticcall address(cd[100]).getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
            if address(ext_call.return_data[0]) == address(cd[4]):
                if ext_call.return_data[18 len 14] > cd[68]:
                    revert with 0, 'pw'
                require cd[100] == address(cd[100])
                call address(cd[4]).0xa9059cbb with:
                     gas gas_remaining wei
                    args address(cd[100]), cd[36]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if cd[36] <= 0:
                    revert with 0, 'nj'
                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                    revert with 0, 'wn'
                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                    revert with 0, 'wn'
                if cd[164] < cd[132]:
                    revert with 0, 17
                if cd[36] and cd[164] - cd[132] > -1 / cd[36]:
                    revert with 0, 17
                if (cd[164] * cd[36]) - (cd[132] * cd[36]) and Mask(112, 0, ext_call.return_data[32]) > -1 / (cd[164] * cd[36]) - (cd[132] * cd[36]):
                    revert with 0, 17
                if Mask(112, 0, ext_call.return_data[0]) and cd[164] > -1 / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 17
                if Mask(112, 0, ext_call.return_data[0]) * cd[164] > !((cd[164] * cd[36]) - (cd[132] * cd[36])):
                    revert with 0, 17
                if not (Mask(112, 0, ext_call.return_data[0]) * cd[164]) + (cd[164] * cd[36]) - (cd[132] * cd[36]):
                    revert with 0, 18
                require cd[100] == address(cd[100])
                require ext_code.size(address(cd[100]))
                if address(ext_call.return_data[0]) == address(cd[4]):
                    call address(cd[100]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, (cd[164] * cd[36] * Mask(112, 0, ext_call.return_data[32])) - (cd[132] * cd[36] * Mask(112, 0, ext_call.return_data[32])) / (Mask(112, 0, ext_call.return_data[0]) * cd[164]) + (cd[164] * cd[36]) - (cd[132] * cd[36]), address(this.address), 128, 0
                else:
                    call address(cd[100]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args (cd[164] * cd[36] * Mask(112, 0, ext_call.return_data[32])) - (cd[132] * cd[36] * Mask(112, 0, ext_call.return_data[32])) / (Mask(112, 0, ext_call.return_data[0]) * cd[164]) + (cd[164] * cd[36]) - (cd[132] * cd[36]), 0, address(this.address), 128, 0
            else:
                if ext_call.return_data[50 len 14] > cd[68]:
                    revert with 0, 'pw'
                require cd[100] == address(cd[100])
                call address(cd[4]).0xa9059cbb with:
                     gas gas_remaining wei
                    args address(cd[100]), cd[36]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if cd[36] <= 0:
                    revert with 0, 'nj'
                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                    revert with 0, 'wn'
                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                    revert with 0, 'wn'
                if cd[164] < cd[132]:
                    revert with 0, 17
                if cd[36] and cd[164] - cd[132] > -1 / cd[36]:
                    revert with 0, 17
                if (cd[164] * cd[36]) - (cd[132] * cd[36]) and Mask(112, 0, ext_call.return_data[0]) > -1 / (cd[164] * cd[36]) - (cd[132] * cd[36]):
                    revert with 0, 17
                if Mask(112, 0, ext_call.return_data[32]) and cd[164] > -1 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 17
                if Mask(112, 0, ext_call.return_data[32]) * cd[164] > !((cd[164] * cd[36]) - (cd[132] * cd[36])):
                    revert with 0, 17
                if not (Mask(112, 0, ext_call.return_data[32]) * cd[164]) + (cd[164] * cd[36]) - (cd[132] * cd[36]):
                    revert with 0, 18
                require cd[100] == address(cd[100])
                require ext_code.size(address(cd[100]))
                if address(ext_call.return_data[0]) == address(cd[4]):
                    call address(cd[100]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, (cd[164] * cd[36] * Mask(112, 0, ext_call.return_data[0])) - (cd[132] * cd[36] * Mask(112, 0, ext_call.return_data[0])) / (Mask(112, 0, ext_call.return_data[32]) * cd[164]) + (cd[164] * cd[36]) - (cd[132] * cd[36]), address(this.address), 128, 0
                else:
                    call address(cd[100]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args (cd[164] * cd[36] * Mask(112, 0, ext_call.return_data[0])) - (cd[132] * cd[36] * Mask(112, 0, ext_call.return_data[0])) / (Mask(112, 0, ext_call.return_data[32]) * cd[164]) + (cd[164] * cd[36]) - (cd[132] * cd[36]), 0, address(this.address), 128, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = 0
            while idx < ('cd', 260).length:
                require cd[((32 * idx) + cd[260] + 36)] == address(cd[((32 * idx) + cd[260] + 36)])
                if uint32(ext_code.size(cd[((32 * idx) + cd[260] + 36)])):
                    if idx >= ('cd', 260).length:
                        revert with 0, 50
                    require cd[((32 * idx) + cd[260] + 36)] == address(cd[((32 * idx) + cd[260] + 36)])
                    mem[(4 * ceil32(return_data.size)) + 284] = 0xdbe671f00000000000000000000000000000000000000000000000000000000
                    require ext_code.size(address(cd[((32 * idx) + cd[260] + 36)]))
                    call address(cd[((32 * idx) + cd[260] + 36)]).a() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
        else:
            if 873 > -(Mask(159, 1, tx.origin) >> 1) + 0xffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            if stor0 != sha3(address((Mask(159, 1, tx.origin) >> 1) + 873)):
                if 0x6af40a0a297fc14fe217d3c6d783cc5b9f01bff8 != msg.sender:
                    revert with 0, 'yh'
            if 789 > !(cd[196] / 3):
                revert with 0, 17
            if block.number > (cd[196] / 3) + 789:
                revert with 0, 'tx'
            require cd[100] == address(cd[100])
            staticcall address(cd[100]).token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require cd[100] == address(cd[100])
            staticcall address(cd[100]).getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
            if address(ext_call.return_data[0]) == address(cd[4]):
                if ext_call.return_data[18 len 14] > cd[68]:
                    revert with 0, 'pw'
                require cd[100] == address(cd[100])
                call address(cd[4]).0xa9059cbb with:
                     gas gas_remaining wei
                    args address(cd[100]), cd[36]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if cd[36] <= 0:
                    revert with 0, 'nj'
                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                    revert with 0, 'wn'
                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                    revert with 0, 'wn'
                if cd[164] < cd[132]:
                    revert with 0, 17
                if cd[36] and cd[164] - cd[132] > -1 / cd[36]:
                    revert with 0, 17
                if (cd[164] * cd[36]) - (cd[132] * cd[36]) and Mask(112, 0, ext_call.return_data[32]) > -1 / (cd[164] * cd[36]) - (cd[132] * cd[36]):
                    revert with 0, 17
                if Mask(112, 0, ext_call.return_data[0]) and cd[164] > -1 / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 17
                if Mask(112, 0, ext_call.return_data[0]) * cd[164] > !((cd[164] * cd[36]) - (cd[132] * cd[36])):
                    revert with 0, 17
                if not (Mask(112, 0, ext_call.return_data[0]) * cd[164]) + (cd[164] * cd[36]) - (cd[132] * cd[36]):
                    revert with 0, 18
                require cd[100] == address(cd[100])
                require ext_code.size(address(cd[100]))
                if address(ext_call.return_data[0]) == address(cd[4]):
                    call address(cd[100]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, (cd[164] * cd[36] * Mask(112, 0, ext_call.return_data[32])) - (cd[132] * cd[36] * Mask(112, 0, ext_call.return_data[32])) / (Mask(112, 0, ext_call.return_data[0]) * cd[164]) + (cd[164] * cd[36]) - (cd[132] * cd[36]), address(this.address), 128, 0
                else:
                    call address(cd[100]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args (cd[164] * cd[36] * Mask(112, 0, ext_call.return_data[32])) - (cd[132] * cd[36] * Mask(112, 0, ext_call.return_data[32])) / (Mask(112, 0, ext_call.return_data[0]) * cd[164]) + (cd[164] * cd[36]) - (cd[132] * cd[36]), 0, address(this.address), 128, 0
            else:
                if ext_call.return_data[50 len 14] > cd[68]:
                    revert with 0, 'pw'
                require cd[100] == address(cd[100])
                call address(cd[4]).0xa9059cbb with:
                     gas gas_remaining wei
                    args address(cd[100]), cd[36]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if cd[36] <= 0:
                    revert with 0, 'nj'
                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                    revert with 0, 'wn'
                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                    revert with 0, 'wn'
                if cd[164] < cd[132]:
                    revert with 0, 17
                if cd[36] and cd[164] - cd[132] > -1 / cd[36]:
                    revert with 0, 17
                if (cd[164] * cd[36]) - (cd[132] * cd[36]) and Mask(112, 0, ext_call.return_data[0]) > -1 / (cd[164] * cd[36]) - (cd[132] * cd[36]):
                    revert with 0, 17
                if Mask(112, 0, ext_call.return_data[32]) and cd[164] > -1 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 17
                if Mask(112, 0, ext_call.return_data[32]) * cd[164] > !((cd[164] * cd[36]) - (cd[132] * cd[36])):
                    revert with 0, 17
                if not (Mask(112, 0, ext_call.return_data[32]) * cd[164]) + (cd[164] * cd[36]) - (cd[132] * cd[36]):
                    revert with 0, 18
                require cd[100] == address(cd[100])
                require ext_code.size(address(cd[100]))
                if address(ext_call.return_data[0]) == address(cd[4]):
                    call address(cd[100]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, (cd[164] * cd[36] * Mask(112, 0, ext_call.return_data[0])) - (cd[132] * cd[36] * Mask(112, 0, ext_call.return_data[0])) / (Mask(112, 0, ext_call.return_data[32]) * cd[164]) + (cd[164] * cd[36]) - (cd[132] * cd[36]), address(this.address), 128, 0
                else:
                    call address(cd[100]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args (cd[164] * cd[36] * Mask(112, 0, ext_call.return_data[0])) - (cd[132] * cd[36] * Mask(112, 0, ext_call.return_data[0])) / (Mask(112, 0, ext_call.return_data[32]) * cd[164]) + (cd[164] * cd[36]) - (cd[132] * cd[36]), 0, address(this.address), 128, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = 0
            while idx < ('cd', 260).length:
                require cd[((32 * idx) + cd[260] + 36)] == address(cd[((32 * idx) + cd[260] + 36)])
                if uint32(ext_code.size(cd[((32 * idx) + cd[260] + 36)])):
                    if idx >= ('cd', 260).length:
                        revert with 0, 50
                    require cd[((32 * idx) + cd[260] + 36)] == address(cd[((32 * idx) + cd[260] + 36)])
                    mem[(4 * ceil32(return_data.size)) + 336] = 0xdbe671f00000000000000000000000000000000000000000000000000000000
                    require ext_code.size(address(cd[((32 * idx) + cd[260] + 36)]))
                    call address(cd[((32 * idx) + cd[260] + 36)]).a() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
}



}
