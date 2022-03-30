contract main {




// =====================  Runtime code  =====================


#
#  - sub_1eeea259(?)
#  - sub_d48605d0(?)
#
uint256 stor0;
address operatorAddress;
address tokenAddress;
address tokenManagerAddress;
address vaultAddress;
address vaultAddress;
address sub_ed311af0Address;
address sub_f544c3a6Address;
mapping of address sub_15d232db;
address sub_4d10b2fbAddress;
address tokenAddress;

function sub_15d232db(?) {
    if not sub_15d232db[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x654f6e6c792072656c617965722063616e2063616c6c20746869732066756e6374696f6e,
                    mem[200 len 28]
    return sub_15d232db[msg.sender]
}

function tokenManager() {
    return tokenManagerAddress
}

function vaultAddress() {
    return vaultAddress
}

function sub_4d10b2fb(?) {
    return sub_4d10b2fbAddress
}

function operator() {
    return operatorAddress
}

function tokenAddress() {
    return tokenAddress
}

function sub_ed311af0(?) {
    return sub_ed311af0Address
}

function sub_f544c3a6(?) {
    return sub_f544c3a6Address
}

function vault() {
    return vaultAddress
}

function token() {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function isSpent(bytes32 arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(vaultAddress)
    staticcall vaultAddress.getAmount(bytes32 rg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return 1
    else:
        return 0
}

function sub_934c62a0(?) {
    require calldata.size - 4 >= 32
    if stor0 == 2:
        revert with 0, 'eReentrancyGuard: reentrant call'
    stor0 = 2
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x2e4f6e6c79206f70657261746f722063616e2063616c6c20746869732066756e6374696f6e,
                    mem[201 len 27]
    tokenManagerAddress = arg1
    stor0 = 1
}

function sub_a4cab45c(?) {
    require calldata.size - 4 >= 32
    if stor0 == 2:
        revert with 0, 'eReentrancyGuard: reentrant call'
    stor0 = 2
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x2e4f6e6c79206f70657261746f722063616e2063616c6c20746869732066756e6374696f6e,
                    mem[201 len 27]
    sub_4d10b2fbAddress = arg1
    stor0 = 1
}

function sub_266c0aa7(?) {
    require calldata.size - 4 >= 64
    if stor0 == 2:
        revert with 0, 'eReentrancyGuard: reentrant call'
    stor0 = 2
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x2e4f6e6c79206f70657261746f722063616e2063616c6c20746869732066756e6374696f6e,
                    mem[201 len 27]
    sub_15d232db[address(arg1)] = arg2
    stor0 = 1
}

function updateOperator(address arg1) {
    require calldata.size - 4 >= 32
    if stor0 == 2:
        revert with 0, 'eReentrancyGuard: reentrant call'
    stor0 = 2
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x2e4f6e6c79206f70657261746f722063616e2063616c6c20746869732066756e6374696f6e,
                    mem[201 len 27]
    operatorAddress = arg1
    stor0 = 1
}

function updateVault(address arg1) {
    require calldata.size - 4 >= 32
    if stor0 == 2:
        revert with 0, 'eReentrancyGuard: reentrant call'
    stor0 = 2
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x2e4f6e6c79206f70657261746f722063616e2063616c6c20746869732066756e6374696f6e,
                    mem[201 len 27]
    vaultAddress = arg1
    vaultAddress = arg1
    stor0 = 1
}

function sub_655eb9fa(?) {
    require calldata.size - 4 >= 32
    if stor0 == 2:
        revert with 0, 'eReentrancyGuard: reentrant call'
    stor0 = 2
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x2e4f6e6c79206f70657261746f722063616e2063616c6c20746869732066756e6374696f6e,
                    mem[201 len 27]
    sub_ed311af0Address = arg1
    sub_f544c3a6Address = arg1
    stor0 = 1
}

function sub_3b1c3bac(?) {
    require calldata.size - 4 >= 64
    if stor0 == 2:
        revert with 0, 'eReentrancyGuard: reentrant call'
    stor0 = 2
    require ext_code.size(vaultAddress)
    staticcall vaultAddress.getSender(bytes32 rg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0xfe4f6e6c792073656e6465722063616e206368616e676520656e646f727361626c,
                    mem[197 len 31]
    require ext_code.size(vaultAddress)
    call vaultAddress.0x3b1c3bac with:
         gas gas_remaining wei
        args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor0 = 1
    return 1
}

function bytes32ToString(bytes32 arg1) {
    require calldata.size - 4 >= 32
    idx = 0
    while idx < 32:
        require 2 * idx < 64
        mem[(2 * idx) + 128 len 8] = Mask(8, -(2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) + 256, 0) << (2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) - 256
        require (2 * idx) + 1 < 64
        mem[(2 * idx) + 129 len 8] = Mask(8, -(2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) + 256, 0) << (2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) - 256
        idx = idx + 1
        continue 
    mem[288 len 66] = code.data[16886 len 66]
    s = 0
    idx = 0
    while idx < 2:
        require idx < 2
        require s < 66
        mem[s + 288 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        s = s + 1
        idx = idx + 1
        continue 
    s = 2
    idx = 0
    while idx < 64:
        require idx < 64
        require s < 66
        mem[s + 288 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        s = s + 1
        idx = idx + 1
        continue 
    return Array(len=66, data=mem[288 len 64], mem[382 len 2])
}

function sub_d193e710(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(vaultAddress)
    staticcall vaultAddress.0xd55e4d0 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(vaultAddress)
    staticcall vaultAddress.getAmount(bytes32 rg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(vaultAddress)
    staticcall vaultAddress.0xe921442c with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(vaultAddress)
    staticcall vaultAddress.0x6ee35a99 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0]
}

function isSpentArray(bytes32[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    if arg1.length:
        mem[128 len 32 * arg1.length] = code.data[16886 len 32 * arg1.length]
    idx = 0
    while idx < arg1.length:
        mem[(32 * arg1.length) + 132] = cd[((32 * idx) + arg1 + 36)]
        require ext_code.size(vaultAddress)
        staticcall vaultAddress.getAmount(bytes32 rg1) with:
                gas gas_remaining wei
               args cd[((32 * idx) + arg1 + 36)]
        mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require idx < arg1.length
        if not ext_call.return_data[0]:
            mem[(32 * idx) + 128] = 1
        else:
            mem[(32 * idx) + 128] = 0
        idx = idx + 1
        continue 
    mem[(32 * arg1.length) + 192 len floor32(arg1.length)] = mem[128 len floor32(arg1.length)]
    return Array(len=arg1.length, data=mem[128 len floor32(arg1.length)], mem[(32 * arg1.length) + floor32(arg1.length) + 192 len (32 * arg1.length) - floor32(arg1.length)]), 
}

function sub_890194c9(?) {
    require calldata.size - 4 >= 32
    if stor0 == 2:
        revert with 0, 'eReentrancyGuard: reentrant call'
    stor0 = 2
    require ext_code.size(vaultAddress)
    staticcall vaultAddress.getSender(bytes32 rg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    46,
                    0x744f6e6c792073656e6465722063616e206368616e676520746869732063686571756520746f2061742073696768,
                    mem[210 len 18]
    require ext_code.size(vaultAddress)
    staticcall vaultAddress.0xd55e4d0 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > block.timestamp:
        require ext_code.size(vaultAddress)
        call vaultAddress.0xe45272f9 with:
             gas gas_remaining wei
            args arg1, block.timestamp
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(vaultAddress)
        call vaultAddress.0xa9b1a9db with:
             gas gas_remaining wei
            args arg1, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(vaultAddress)
        call vaultAddress.0x3b1c3bac with:
             gas gas_remaining wei
            args arg1, 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    stor0 = 1
    return 1
}

function sub_a9b1a9db(?) {
    require calldata.size - 4 >= 64
    if stor0 == 2:
        revert with 0, 'eReentrancyGuard: reentrant call'
    stor0 = 2
    require ext_code.size(vaultAddress)
    staticcall vaultAddress.getSender(bytes32 rg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'Only sender can change lockable'
    require ext_code.size(vaultAddress)
    staticcall vaultAddress.0xe921442c with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    45,
                    0x6543616e206f6e6c79206368616e67652066726f6d206c6f636b61626c6520746f206e6f6e2d6c6f636b61626c,
                    mem[209 len 19]
    if arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    45,
                    0x6543616e206f6e6c79206368616e67652066726f6d206c6f636b61626c6520746f206e6f6e2d6c6f636b61626c,
                    mem[209 len 19]
    require ext_code.size(vaultAddress)
    call vaultAddress.0xa9b1a9db with:
         gas gas_remaining wei
        args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(vaultAddress)
    call vaultAddress.0x3b1c3bac with:
         gas gas_remaining wei
        args arg1, 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor0 = 1
    return 1
}

function sub_89ce61df(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 96
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= 4294967296
    require cd[36] + 36 <= calldata.size
    require ('cd', 36).length <= 4294967296 and cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] <= 4294967296
    require cd[68] + 36 <= calldata.size
    require ('cd', 68).length <= 4294967296 and cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    if stor0 == 2:
        revert with 0, 'eReentrancyGuard: reentrant call'
    stor0 = 2
    idx = 0
    while idx < ('cd', 36).length:
        require idx < ('cd', 4).length
        require idx < ('cd', 36).length
        require idx < ('cd', 68).length
        mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
        require ext_code.size(vaultAddress)
        staticcall vaultAddress.0x5de28ae0 with:
                gas gas_remaining wei
               args cd[((32 * idx) + cd[4] + 36)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, 
                        32,
                        46,
                        0x2e54686520636f6d6d69746d656e7420686173206265656e207375626d6974746564206f722075736564206f7574,
                        mem[mem[64] + 114 len 18]
        require cd[((32 * idx) + cd[36] + 36)] > 0
        if msg.value:
            revert with 0, 
                        32,
                        48,
                        0x744554482076616c756520697320737570706f73656420746f206265203020666f7220455243323020696e7374616e63,
                        mem[mem[64] + 116 len 16]
        _187 = mem[64]
        mem[mem[64] + 36] = msg.sender
        mem[mem[64] + 68] = vaultAddress
        mem[mem[64] + 100] = cd[((32 * idx) + cd[36] + 36)]
        _188 = mem[64]
        mem[mem[64]] = 100
        mem[64] = mem[64] + 132
        mem[_188 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_188 + 36 len 28]
        _191 = mem[_188]
        t = _188 + 32
        u = _187 + 132
        s = mem[_188]
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[_187 + floor32(mem[_188]) + 132] = mem[_188 + -(mem[_188] % 32) + floor32(mem[_188]) + 64 len mem[_188] % 32] or Mask(8 * -(mem[_188] % 32) + 32, -(8 * -(mem[_188] % 32) + 32) + 256, mem[_187 + floor32(mem[_188]) + 132])
        call tokenAddress.mem[_187 + 132 len 4] with:
             gas gas_remaining wei
            args mem[_187 + 136 len _191 - 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'not enough allowed tokens'
            if mem[96]:
                if mem[96] != 32:
                    revert with 0, 
                                32,
                                42,
                                0x64617461206c656e6774682073686f756c64206265206569746865722030206f72203332206279746500,
                                mem[_187 + 242 len 22]
                require mem[96] >= 32
                if not mem[128]:
                    revert with 0, 
                                32,
                                47,
                                0x656e6f7420656e6f75676820616c6c6f77656420746f6b656e732e20546f6b656e2072657475726e732066616c7365,
                                mem[_187 + 247 len 17]
            require ext_code.size(vaultAddress)
            call vaultAddress.0x934c4db2 with:
                 gas gas_remaining wei
                args cd[((32 * idx) + cd[4] + 36)], 1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(vaultAddress)
            call vaultAddress.0xc7bb38e7 with:
                 gas gas_remaining wei
                args cd[((32 * idx) + cd[4] + 36)], cd[((32 * idx) + cd[36] + 36)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(vaultAddress)
            call vaultAddress.0x9d6d04b4 with:
                 gas gas_remaining wei
                args cd[((32 * idx) + cd[4] + 36)], msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(vaultAddress)
            if cd[((32 * idx) + cd[68] + 36)] < block.timestamp:
                call vaultAddress.0xe45272f9 with:
                     gas gas_remaining wei
                    args cd[((32 * idx) + cd[4] + 36)], block.timestamp
            else:
                call vaultAddress.0xe45272f9 with:
                     gas gas_remaining wei
                    args cd[((32 * idx) + cd[4] + 36)], cd[((32 * idx) + cd[68] + 36)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(vaultAddress)
            call vaultAddress.0x30743726 with:
                 gas gas_remaining wei
                args cd[((32 * idx) + cd[4] + 36)], block.timestamp
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(vaultAddress)
            call vaultAddress.0x3b1c3bac with:
                 gas gas_remaining wei
                args cd[((32 * idx) + cd[4] + 36)], 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(vaultAddress)
            call vaultAddress.0xa9b1a9db with:
                 gas gas_remaining wei
                args cd[((32 * idx) + cd[4] + 36)], 1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(vaultAddress)
            call vaultAddress.0xd51be454 with:
                 gas gas_remaining wei
                args cd[((32 * idx) + cd[36] + 36)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(vaultAddress)
            call vaultAddress.0xf659cc05 with:
                 gas gas_remaining wei
                args cd[((32 * idx) + cd[36] + 36)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_187 + 132] = 0x8cffa72a00000000000000000000000000000000000000000000000000000000
            mem[_187 + 136] = msg.sender
            mem[_187 + 168] = cd[((32 * idx) + cd[4] + 36)]
            mem[_187 + 200] = cd[((32 * idx) + cd[36] + 36)]
            mem[_187 + 232] = block.timestamp
        else:
            mem[64] = _187 + ceil32(return_data.size) + 133
            mem[_187 + 132] = return_data.size
            mem[_187 + 164 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'not enough allowed tokens'
            if return_data.size:
                if return_data.size != 32:
                    revert with 0, 
                                32,
                                42,
                                0x64617461206c656e6774682073686f756c64206265206569746865722030206f72203332206279746500,
                                mem[_187 + ceil32(return_data.size) + 243 len 22]
                require return_data.size >= 32
                if not mem[_187 + 164]:
                    revert with 0, 
                                32,
                                47,
                                0x656e6f7420656e6f75676820616c6c6f77656420746f6b656e732e20546f6b656e2072657475726e732066616c7365,
                                mem[_187 + ceil32(return_data.size) + 248 len 17]
            require ext_code.size(vaultAddress)
            call vaultAddress.0x934c4db2 with:
                 gas gas_remaining wei
                args cd[((32 * idx) + cd[4] + 36)], 1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(vaultAddress)
            call vaultAddress.0xc7bb38e7 with:
                 gas gas_remaining wei
                args cd[((32 * idx) + cd[4] + 36)], cd[((32 * idx) + cd[36] + 36)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(vaultAddress)
            call vaultAddress.0x9d6d04b4 with:
                 gas gas_remaining wei
                args cd[((32 * idx) + cd[4] + 36)], msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(vaultAddress)
            if cd[((32 * idx) + cd[68] + 36)] < block.timestamp:
                call vaultAddress.0xe45272f9 with:
                     gas gas_remaining wei
                    args cd[((32 * idx) + cd[4] + 36)], block.timestamp
            else:
                call vaultAddress.0xe45272f9 with:
                     gas gas_remaining wei
                    args cd[((32 * idx) + cd[4] + 36)], cd[((32 * idx) + cd[68] + 36)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(vaultAddress)
            call vaultAddress.0x30743726 with:
                 gas gas_remaining wei
                args cd[((32 * idx) + cd[4] + 36)], block.timestamp
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(vaultAddress)
            call vaultAddress.0x3b1c3bac with:
                 gas gas_remaining wei
                args cd[((32 * idx) + cd[4] + 36)], 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(vaultAddress)
            call vaultAddress.0xa9b1a9db with:
                 gas gas_remaining wei
                args cd[((32 * idx) + cd[4] + 36)], 1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(vaultAddress)
            call vaultAddress.0xd51be454 with:
                 gas gas_remaining wei
                args cd[((32 * idx) + cd[36] + 36)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(vaultAddress)
            call vaultAddress.0xf659cc05 with:
                 gas gas_remaining wei
                args cd[((32 * idx) + cd[36] + 36)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_187 + ceil32(return_data.size) + 133] = 0x8cffa72a00000000000000000000000000000000000000000000000000000000
            mem[_187 + ceil32(return_data.size) + 137] = msg.sender
            mem[_187 + ceil32(return_data.size) + 169] = cd[((32 * idx) + cd[4] + 36)]
            mem[_187 + ceil32(return_data.size) + 201] = cd[((32 * idx) + cd[36] + 36)]
            mem[_187 + ceil32(return_data.size) + 233] = block.timestamp
        require ext_code.size(vaultAddress)
        call vaultAddress.0x8cffa72a with:
             gas gas_remaining wei
            args msg.sender, cd[((32 * idx) + cd[4] + 36)], cd[((32 * idx) + cd[36] + 36)], block.timestamp
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
    stor0 = 1
}



}
