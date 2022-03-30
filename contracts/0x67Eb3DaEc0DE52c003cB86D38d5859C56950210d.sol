contract main {




// =====================  Runtime code  =====================


#
#  - sub_bad707cf(?)
#
uint256 stor0;
address operatorAddress;
address sub_62bc0cd6Address;
address tokenAddress;
address sub_6bc76087Address;
uint32 stor5;
address vaultAddress;
uint256 stor5;
address sub_085c29b3Address;
address vaultAddress;
address disputeAddress;
uint256 sub_8170e90f;
uint256 sub_c41908fe;
uint256 sub_3bb52c91;
uint256 sub_c2264f6b;

function sub_085c29b3(?) {
    return sub_085c29b3Address
}

function sub_3bb52c91(?) {
    return sub_3bb52c91
}

function vaultAddress() {
    return address(vaultAddress)
}

function operator() {
    return operatorAddress
}

function sub_62bc0cd6(?) {
    return sub_62bc0cd6Address
}

function sub_6bc76087(?) {
    return sub_6bc76087Address
}

function sub_8170e90f(?) {
    return sub_8170e90f
}

function tokenAddress() {
    return tokenAddress
}

function sub_c2264f6b(?) {
    return sub_c2264f6b
}

function sub_c41908fe(?) {
    return sub_c41908fe
}

function dispute() {
    return disputeAddress
}

function vault() {
    return vaultAddress
}

function _fallback() payable {
    revert
}

function getStatus(bytes32 arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(disputeAddress)
    staticcall disputeAddress.0x5de28ae0 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_1cf8169a(?) {
    require calldata.size - 4 >= 32
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x2e4f6e6c79206f70657261746f722063616e2063616c6c20746869732066756e6374696f6e,
                    mem[201 len 27]
    if stor0 == 2:
        revert with 0, 32, 31, 0xfe5265656e7472616e637947756172643a207265656e7472616e742063616c6c
    sub_62bc0cd6Address = arg1
    stor0 = 1
}

function sub_f1d95e70(?) {
    require calldata.size - 4 >= 32
    if stor0 == 2:
        revert with 0, 32, 31, 0xfe5265656e7472616e637947756172643a207265656e7472616e742063616c6c
    stor0 = 2
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x2e4f6e6c79206f70657261746f722063616e2063616c6c20746869732066756e6374696f6e,
                    mem[201 len 27]
    sub_c41908fe = arg1
    stor0 = 1
}

function sub_feab9a4f(?) {
    require calldata.size - 4 >= 32
    if stor0 == 2:
        revert with 0, 32, 31, 0xfe5265656e7472616e637947756172643a207265656e7472616e742063616c6c
    stor0 = 2
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x2e4f6e6c79206f70657261746f722063616e2063616c6c20746869732066756e6374696f6e,
                    mem[201 len 27]
    sub_8170e90f = arg1
    stor0 = 1
}

function updateOperator(address arg1) {
    require calldata.size - 4 >= 32
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x2e4f6e6c79206f70657261746f722063616e2063616c6c20746869732066756e6374696f6e,
                    mem[201 len 27]
    if stor0 == 2:
        revert with 0, 32, 31, 0xfe5265656e7472616e637947756172643a207265656e7472616e742063616c6c
    operatorAddress = arg1
    stor0 = 1
}

function sub_54b45fc3(?) {
    require calldata.size - 4 >= 32
    if stor0 == 2:
        revert with 0, 32, 31, 0xfe5265656e7472616e637947756172643a207265656e7472616e742063616c6c
    stor0 = 2
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x2e4f6e6c79206f70657261746f722063616e2063616c6c20746869732066756e6374696f6e,
                    mem[201 len 27]
    sub_62bc0cd6Address = arg1
    stor0 = 1
}

function sub_04d669d9(?) {
    require calldata.size - 4 >= 64
    if stor0 == 2:
        revert with 0, 32, 31, 0xfe5265656e7472616e637947756172643a207265656e7472616e742063616c6c
    stor0 = 2
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x2e4f6e6c79206f70657261746f722063616e2063616c6c20746869732066756e6374696f6e,
                    mem[201 len 27]
    sub_3bb52c91 = arg1
    sub_c2264f6b = arg2
    stor0 = 1
}

function updateVault(address arg1) {
    require calldata.size - 4 >= 32
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x2e4f6e6c79206f70657261746f722063616e2063616c6c20746869732066756e6374696f6e,
                    mem[201 len 27]
    if stor0 == 2:
        revert with 0, 32, 31, 0xfe5265656e7472616e637947756172643a207265656e7472616e742063616c6c
    address(vaultAddress) = arg1
    vaultAddress = arg1
    stor0 = 1
}

function sub_9a26887b(?) {
    require calldata.size - 4 >= 32
    if stor0 == 2:
        revert with 0, 32, 31, 0xfe5265656e7472616e637947756172643a207265656e7472616e742063616c6c
    stor0 = 2
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x2e4f6e6c79206f70657261746f722063616e2063616c6c20746869732066756e6374696f6e,
                    mem[201 len 27]
    sub_6bc76087Address = arg1
    disputeAddress = arg1
    stor0 = 1
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
    mem[288 len 66] = code.data[14751 len 66]
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

function sub_0b863be7(?) payable {
    require calldata.size - 4 >= 160
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    if stor0 == 2:
        revert with 0, 32, 31, 0xfe5265656e7472616e637947756172643a207265656e7472616e742063616c6c
    stor0 = 2
    mem[96] = arg3.length
    mem[128 len arg3.length] = arg3[all]
    mem[arg3.length + 128] = 0
    require ext_code.size(vaultAddress)
    staticcall vaultAddress.getSender(bytes32 rg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'Locker must be sender'
    require ext_code.size(vaultAddress)
    staticcall vaultAddress.0xe921442c with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] != 1:
        revert with 0, 'This commitment must be lockable'
    require ext_code.size(vaultAddress)
    staticcall vaultAddress.getAmount(bytes32 rg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg2:
        revert with 0, 'Balance amount must be enough'
    if arg5 < sub_c41908fe:
        revert with 0, 
                    32,
                    38,
                    0x77546865207265706c792064617973206c657373207468616e206d696e5265706c79486f7572,
                    mem[ceil32(arg3.length) + 234 len 26]
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg2:
        if ext_call.return_data[0] < (arg2 * sub_c2264f6b / 10000) + sub_3bb52c91:
            revert with 0, 
                        32,
                        41,
                        0x2053656e6465722062616c616e636520697320656e6f75676820666f72206172626974726174696f6e,
                        mem[ceil32(arg3.length) + 237 len 23]
        mem[ceil32(arg3.length) + 128] = 100
        mem[64] = ceil32(arg3.length) + 260
        mem[ceil32(arg3.length) + 160 len 4] = unknown_0x23b872dd(?????)
        mem[ceil32(arg3.length) + 260 len floor32(0, 100)] = mem[ceil32(arg3.length) + 160 len floor32(0, 100)]
        mem[ceil32(arg3.length) + floor32(0, 100) + 288 len 4] = mem[ceil32(arg3.length) + floor32(0, 100) + 188 len 4]
        call tokenAddress.mem[ceil32(arg3.length) + 260 len 4] with:
             gas gas_remaining wei
            args mem[ceil32(arg3.length) + 264 len 0, 100 - 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 
                            32,
                            36,
                            0x2e5472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                            mem[ceil32(arg3.length) + 364 len 28]
            if arg3.length:
                require arg3.length >= 32
                if not mem[128]:
                    revert with 0, 
                                32,
                                36,
                                0x2e5472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                                mem[ceil32(arg3.length) + 364 len 28]
        else:
            mem[ceil32(arg3.length) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 
                            32,
                            36,
                            0x2e5472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                            mem[ceil32(arg3.length) + ceil32(return_data.size) + 365 len 28]
            if return_data.size:
                require return_data.size >= 32
                if not mem[ceil32(arg3.length) + 292]:
                    revert with 0, 
                                32,
                                36,
                                0x2e5472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                                mem[ceil32(arg3.length) + ceil32(return_data.size) + 365 len 28]
        require ext_code.size(disputeAddress)
        call disputeAddress.0x8a353842 with:
             gas gas_remaining wei
            args arg1, Array(len=arg3.length, data=arg3[all]), block.timestamp + (3600 * arg5), arg2, msg.sender, address(arg4), (arg2 * sub_c2264f6b / 10000) + sub_3bb52c91
    else:
        require ext_code.size(vaultAddress)
        staticcall vaultAddress.getAmount(bytes32 rg1) with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < (ext_call.return_data[0] * sub_c2264f6b / 10000) + sub_3bb52c91:
            revert with 0, 
                        32,
                        41,
                        0x2053656e6465722062616c616e636520697320656e6f75676820666f72206172626974726174696f6e,
                        mem[ceil32(arg3.length) + 237 len 23]
        mem[ceil32(arg3.length) + 128] = 100
        mem[64] = ceil32(arg3.length) + 260
        mem[ceil32(arg3.length) + 160 len 4] = unknown_0x23b872dd(?????)
        mem[ceil32(arg3.length) + 260 len floor32(0, 100)] = mem[ceil32(arg3.length) + 160 len floor32(0, 100)]
        mem[ceil32(arg3.length) + floor32(0, 100) + 288 len 4] = mem[ceil32(arg3.length) + floor32(0, 100) + 188 len 4]
        call tokenAddress.mem[ceil32(arg3.length) + 260 len 4] with:
             gas gas_remaining wei
            args mem[ceil32(arg3.length) + 264 len 0, 100 - 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 
                            32,
                            36,
                            0x2e5472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                            mem[ceil32(arg3.length) + 364 len 28]
            if arg3.length:
                require arg3.length >= 32
                if not mem[128]:
                    revert with 0, 
                                32,
                                36,
                                0x2e5472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                                mem[ceil32(arg3.length) + 364 len 28]
        else:
            mem[ceil32(arg3.length) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 
                            32,
                            36,
                            0x2e5472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                            mem[ceil32(arg3.length) + ceil32(return_data.size) + 365 len 28]
            if return_data.size:
                require return_data.size >= 32
                if not mem[ceil32(arg3.length) + 292]:
                    revert with 0, 
                                32,
                                36,
                                0x2e5472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                                mem[ceil32(arg3.length) + ceil32(return_data.size) + 365 len 28]
        require ext_code.size(disputeAddress)
        call disputeAddress.0x8a353842 with:
             gas gas_remaining wei
            args arg1, Array(len=arg3.length, data=arg3[all]), block.timestamp + (3600 * arg5), ext_call.return_data[0], msg.sender, address(arg4), (ext_call.return_data[0] * sub_c2264f6b / 10000) + sub_3bb52c91
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    stor0 = 1
}

function sub_36c6c6f5(?) {
    require calldata.size - 4 >= 64
    if stor0 == 2:
        revert with 0, 32, 31, 0xfe5265656e7472616e637947756172643a207265656e7472616e742063616c6c
    stor0 = 2
    if sub_62bc0cd6Address != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x734f6e6c7920636f756e63696c206163636f756e742063616e2063616c6c20746869732066756e6374696f6e,
                    mem[208 len 20]
    if arg2 != 1:
        require 2 == arg2
    require ext_code.size(disputeAddress)
    staticcall disputeAddress.0x5de28ae0 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 1 == ext_call.return_data[0]:
        require ext_code.size(disputeAddress)
        staticcall disputeAddress.0xdd19ac4a with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 1 == ext_call.return_data[0]:
            require ext_code.size(disputeAddress)
            call disputeAddress.0x934c4db2 with:
                 gas gas_remaining wei
                args arg1, 3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(disputeAddress)
            staticcall disputeAddress.0xe5f3d3a5 with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                require ext_code.size(disputeAddress)
                if arg2 != 1:
                    call disputeAddress.0x934c4db2 with:
                         gas gas_remaining wei
                        args arg1, 3
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(disputeAddress)
                    staticcall disputeAddress.0xfbc6da75 with:
                            gas gas_remaining wei
                           args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                else:
                    staticcall disputeAddress.0x7f01ca7d with:
                            gas gas_remaining wei
                           args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(disputeAddress)
                    staticcall disputeAddress.0x851ad654 with:
                            gas gas_remaining wei
                           args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[228 len 96] = unknown_0x23b872dd(?????), Mask(224, 0, stor5), uint32(stor5), address(ext_call.return_data[0]), ext_call.return_data[0 len 28]
                    mem[352 len 4] = ext_call.return_data[20 len 4]
                    call tokenAddress with:
                         gas gas_remaining wei
                        args Mask(736, -512, ext_call.return_data[0 len 28]) << 512, mem[324 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        36,
                                        0x2e5472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                                        mem[332 len 20],
                                        ext_call.return_data[20 len 4],
                                        mem[356 len 4]
                        if not unknown_0x23b872dd(?????), Mask(224, 0, stor5):
                            revert with 0, 
                                        32,
                                        36,
                                        0x2e5472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                                        mem[332 len 20],
                                        ext_call.return_data[20 len 4],
                                        mem[356 len 4]
                    else:
                        mem[260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        36,
                                        0x2e5472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                                        mem[ceil32(return_data.size) + 333 len 28]
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[260]:
                                revert with 0, 
                                            32,
                                            36,
                                            0x2e5472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                                            mem[ceil32(return_data.size) + 333 len 28]
                if ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                require ext_code.size(disputeAddress)
                call disputeAddress.0xa2bf7cdf with:
                     gas gas_remaining wei
                    args tokenAddress, address(ext_call.return_data[0]), ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if 0 > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                require ext_code.size(disputeAddress)
                call disputeAddress.0xa2bf7cdf with:
                     gas gas_remaining wei
                    args tokenAddress, sub_62bc0cd6Address, ext_call.return_data[0]
            else:
                if sub_8170e90f * ext_call.return_data[0] / ext_call.return_data[0] != sub_8170e90f:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                require ext_code.size(disputeAddress)
                if arg2 != 1:
                    call disputeAddress.0x934c4db2 with:
                         gas gas_remaining wei
                        args arg1, 3
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(disputeAddress)
                    staticcall disputeAddress.0xfbc6da75 with:
                            gas gas_remaining wei
                           args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                else:
                    staticcall disputeAddress.0x7f01ca7d with:
                            gas gas_remaining wei
                           args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(disputeAddress)
                    staticcall disputeAddress.0x851ad654 with:
                            gas gas_remaining wei
                           args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[228 len 96] = unknown_0x23b872dd(?????), Mask(224, 0, stor5), uint32(stor5), address(ext_call.return_data[0]), ext_call.return_data[0 len 28]
                    mem[352 len 4] = ext_call.return_data[20 len 4]
                    call tokenAddress with:
                         gas gas_remaining wei
                        args Mask(736, -512, ext_call.return_data[0 len 28]) << 512, mem[324 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        36,
                                        0x2e5472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                                        mem[332 len 20],
                                        ext_call.return_data[20 len 4],
                                        mem[356 len 4]
                        if not unknown_0x23b872dd(?????), Mask(224, 0, stor5):
                            revert with 0, 
                                        32,
                                        36,
                                        0x2e5472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                                        mem[332 len 20],
                                        ext_call.return_data[20 len 4],
                                        mem[356 len 4]
                    else:
                        mem[260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        36,
                                        0x2e5472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                                        mem[ceil32(return_data.size) + 333 len 28]
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[260]:
                                revert with 0, 
                                            32,
                                            36,
                                            0x2e5472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                                            mem[ceil32(return_data.size) + 333 len 28]
                if (sub_8170e90f * ext_call.return_data[0] / 10000) + ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                require ext_code.size(disputeAddress)
                call disputeAddress.0xa2bf7cdf with:
                     gas gas_remaining wei
                    args tokenAddress, address(ext_call.return_data[0]), (sub_8170e90f * ext_call.return_data[0] / 10000) + ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if sub_8170e90f * ext_call.return_data[0] / 10000 > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                require ext_code.size(disputeAddress)
                call disputeAddress.0xa2bf7cdf with:
                     gas gas_remaining wei
                    args tokenAddress, sub_62bc0cd6Address, ext_call.return_data[0] - (sub_8170e90f * ext_call.return_data[0] / 10000)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(vaultAddress)
            call vaultAddress.0x7c4bc6f7 with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(vaultAddress)
            staticcall vaultAddress.getAmount(bytes32 rg1) with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            require ext_code.size(vaultAddress)
            call vaultAddress.0xc7bb38e7 with:
                 gas gas_remaining wei
                args arg1, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(vaultAddress)
            staticcall vaultAddress.getAmount(bytes32 rg1) with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(vaultAddress)
            if not ext_call.return_data[0]:
                call vaultAddress.0x934c4db2 with:
                     gas gas_remaining wei
                    args arg1, 0
            else:
                call vaultAddress.0x934c4db2 with:
                     gas gas_remaining wei
                    args arg1, 1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    stor0 = 1
}



}
