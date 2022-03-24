contract main {




// =====================  Runtime code  =====================


#
#  - sub_9c13077f(?)
#  - sub_c137285f(?)
#
const sub_22587953(?) = ext_call.return_data[0]


array of uint256 stor0;
array of struct stor1;
uint256 sub_451ae8ea;
uint256 sub_691b5245;
address stor4;

function sub_39ac6029(?) {
    return stor1.length
}

function sub_451ae8ea(?) {
    return sub_451ae8ea
}

function sub_691b5245(?) {
    return sub_691b5245
}

function _fallback() payable {
    revert
}

function deposit(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == stor4
    require ext_code.size(arg1)
    call arg1.transferFrom(address rg1, address rg2, uint256 rg3) with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function getTokenBalance(address[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    require arg1.length - 1 < arg1.length
    require ext_code.size(mem[(32 * arg1.length - 1) + 140 len 20])
    staticcall mem[(32 * arg1.length - 1) + 140 len 20].balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function withdraw(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == stor4
    mem[196 len 64] = approve(address rg1, uint256 rg2), address(this.address) << 64, 0, Mask(224, 32, arg2) >> 32
    call arg1 with:
         gas gas_remaining wei
        args Mask(224, 32, arg2) << 224, mem[260 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'TransferHelper: APPROVE_FAILED'
        if not approve(address rg1, uint256 rg2), address(this.address) << 64:
            revert with 0, 'TransferHelper: APPROVE_FAILED'
        mem[328 len 96] = 0, address(this.address), msg.sender, Mask(224, 32, arg2) >> 32
        mem[452 len 4] = uint32(arg2)
        call arg1 with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args arg2, 0, address(this.address), msg.sender, Mask(224, 32, arg2) >> 32 >> 224, mem[424 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 
                            32,
                            36,
                            0x445472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                            mem[432 len 20],
                            uint32(arg2),
                            mem[456 len 4]
            if not approve(address rg1, uint256 rg2), address(this.address) << 64:
                revert with 0, 
                            32,
                            36,
                            0x445472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                            mem[432 len 20],
                            uint32(arg2),
                            mem[456 len 4]
        else:
            mem[360 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 
                            32,
                            36,
                            0x445472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                            mem[ceil32(return_data.size) + 433 len 28]
            if return_data.size:
                require return_data.size >= 32
                if not mem[360]:
                    revert with 0, 
                                32,
                                36,
                                0x445472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                                mem[ceil32(return_data.size) + 433 len 28]
    else:
        mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'TransferHelper: APPROVE_FAILED'
        if return_data.size:
            require return_data.size >= 32
            if not mem[228]:
                revert with 0, 'TransferHelper: APPROVE_FAILED'
        mem[ceil32(return_data.size) + 329 len 96] = 0, address(this.address), msg.sender, Mask(224, 32, arg2) >> 32
        mem[ceil32(return_data.size) + 453 len 4] = uint32(arg2)
        call arg1 with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args arg2, 0, address(this.address), msg.sender, Mask(224, 32, arg2) >> 32 >> 224, mem[ceil32(return_data.size) + 425 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 
                            32,
                            36,
                            0x445472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                            mem[ceil32(return_data.size) + 433 len 20],
                            uint32(arg2),
                            mem[ceil32(return_data.size) + 457 len 4]
            if not approve(address rg1, uint256 rg2), address(this.address) << 64:
                revert with 0, 
                            32,
                            36,
                            0x445472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                            mem[ceil32(return_data.size) + 433 len 20],
                            uint32(arg2),
                            mem[ceil32(return_data.size) + 457 len 4]
        else:
            mem[ceil32(return_data.size) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 
                            32,
                            36,
                            0x445472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                            mem[(2 * ceil32(return_data.size)) + 434 len 28]
            if return_data.size:
                require return_data.size >= 32
                if not mem[ceil32(return_data.size) + 361]:
                    revert with 0, 
                                32,
                                36,
                                0x445472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                                mem[(2 * ceil32(return_data.size)) + 434 len 28]
}

function sub_8946f650(?) {
    require calldata.size - 4 >= 96
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    mem[(32 * arg1.length) + 192] = 0
    mem[(32 * arg1.length) + 224] = 0
    mem[(32 * arg1.length) + 160] = (32 * arg1.length) + 192
    mem[(32 * arg1.length) + 256] = 0
    mem[(32 * arg1.length) + 320] = 0
    mem[(32 * arg1.length) + 352] = 0
    mem[(32 * arg1.length) + 288] = (32 * arg1.length) + 320
    mem[(32 * arg1.length) + 384] = 0
    mem[64] = (32 * arg1.length) + 512
    mem[(32 * arg1.length) + 448] = 0
    mem[(32 * arg1.length) + 480] = 0
    mem[(32 * arg1.length) + 416] = (32 * arg1.length) + 448
    idx = 0
    s = 0
    t = 0
    while idx < arg1.length:
        require idx < mem[96]
        require ext_code.size(mem[(32 * idx) + 140 len 20])
        staticcall mem[(32 * idx) + 140 len 20].factory() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                gas gas_remaining wei
               args address(arg2), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).getReserves() with:
                gas gas_remaining wei
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require idx < mem[96]
        _85 = mem[(32 * idx) + 128]
        mem[mem[64] + 4] = 10^18
        mem[mem[64] + 36] = Mask(112, 0, ext_call.return_data[0])
        mem[mem[64] + 68] = Mask(112, 0, ext_call.return_data[32])
        require ext_code.size(address(_85))
        staticcall address(_85).getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                gas gas_remaining wei
               args 10^18, ext_call.return_data[0] << 144, Mask(112, 0, ext_call.return_data[32])
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require idx < mem[96]
        if ext_call.return_data[0] <= t:
            _92 = mem[(32 * idx) + 128]
            mem[mem[64] + 4] = 10^18
            mem[mem[64] + 36] = Mask(112, 0, ext_call.return_data[32])
            mem[mem[64] + 68] = Mask(112, 0, ext_call.return_data[0])
            require ext_code.size(address(_92))
            staticcall address(_92).getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                    gas gas_remaining wei
                   args 10^18, ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] <= s:
                idx = idx + 1
                s = s
                t = t
                continue 
            require idx < mem[96]
            mem[(32 * arg1.length) + 384] = mem[(32 * idx) + 140 len 20]
            mem[mem[(32 * arg1.length) + 416]] = Mask(112, 0, ext_call.return_data[0])
            mem[mem[(32 * arg1.length) + 416] + 32] = Mask(112, 0, ext_call.return_data[32])
            idx = idx + 1
            s = ext_call.return_data[0]
            t = t
            continue 
        mem[(32 * arg1.length) + 256] = mem[(32 * idx) + 140 len 20]
        mem[mem[(32 * arg1.length) + 288]] = Mask(112, 0, ext_call.return_data[0])
        mem[mem[(32 * arg1.length) + 288] + 32] = Mask(112, 0, ext_call.return_data[32])
        require idx < mem[96]
        _100 = mem[(32 * idx) + 128]
        mem[mem[64] + 4] = 10^18
        mem[mem[64] + 36] = Mask(112, 0, ext_call.return_data[32])
        mem[mem[64] + 68] = Mask(112, 0, ext_call.return_data[0])
        require ext_code.size(address(_100))
        staticcall address(_100).getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                gas gas_remaining wei
               args 10^18, ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= s:
            idx = idx + 1
            s = s
            t = ext_call.return_data[0]
            continue 
        require idx < mem[96]
        mem[(32 * arg1.length) + 384] = mem[(32 * idx) + 140 len 20]
        mem[mem[(32 * arg1.length) + 416]] = Mask(112, 0, ext_call.return_data[0])
        mem[mem[(32 * arg1.length) + 416] + 32] = Mask(112, 0, ext_call.return_data[32])
        idx = idx + 1
        s = ext_call.return_data[0]
        t = ext_call.return_data[0]
        continue 
    _66 = mem[mem[(32 * arg1.length) + 416] + 32]
    mem[mem[64]] = mem[mem[(32 * arg1.length) + 416] + 18 len 14]
    return mem[mem[64]], _66 << 144
}

function sub_ba7e415e(?) {
    require calldata.size - 4 >= 96
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    mem[(32 * arg1.length) + 192] = 0
    mem[(32 * arg1.length) + 224] = 0
    mem[(32 * arg1.length) + 160] = (32 * arg1.length) + 192
    mem[(32 * arg1.length) + 256] = 0
    mem[(32 * arg1.length) + 320] = 0
    mem[(32 * arg1.length) + 352] = 0
    mem[(32 * arg1.length) + 288] = (32 * arg1.length) + 320
    mem[(32 * arg1.length) + 384] = 0
    mem[64] = (32 * arg1.length) + 512
    mem[(32 * arg1.length) + 448] = 0
    mem[(32 * arg1.length) + 480] = 0
    mem[(32 * arg1.length) + 416] = (32 * arg1.length) + 448
    idx = 0
    s = 0
    t = 0
    while idx < arg1.length:
        require idx < mem[96]
        require ext_code.size(mem[(32 * idx) + 140 len 20])
        staticcall mem[(32 * idx) + 140 len 20].factory() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                gas gas_remaining wei
               args address(arg2), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).getReserves() with:
                gas gas_remaining wei
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require idx < mem[96]
        _85 = mem[(32 * idx) + 128]
        mem[mem[64] + 4] = 10^18
        mem[mem[64] + 36] = Mask(112, 0, ext_call.return_data[0])
        mem[mem[64] + 68] = Mask(112, 0, ext_call.return_data[32])
        require ext_code.size(address(_85))
        staticcall address(_85).getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                gas gas_remaining wei
               args 10^18, ext_call.return_data[0] << 144, Mask(112, 0, ext_call.return_data[32])
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require idx < mem[96]
        if ext_call.return_data[0] <= t:
            _92 = mem[(32 * idx) + 128]
            mem[mem[64] + 4] = 10^18
            mem[mem[64] + 36] = Mask(112, 0, ext_call.return_data[32])
            mem[mem[64] + 68] = Mask(112, 0, ext_call.return_data[0])
            require ext_code.size(address(_92))
            staticcall address(_92).getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                    gas gas_remaining wei
                   args 10^18, ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] <= s:
                idx = idx + 1
                s = s
                t = t
                continue 
            require idx < mem[96]
            mem[(32 * arg1.length) + 384] = mem[(32 * idx) + 140 len 20]
            mem[mem[(32 * arg1.length) + 416]] = Mask(112, 0, ext_call.return_data[0])
            mem[mem[(32 * arg1.length) + 416] + 32] = Mask(112, 0, ext_call.return_data[32])
            idx = idx + 1
            s = ext_call.return_data[0]
            t = t
            continue 
        mem[(32 * arg1.length) + 256] = mem[(32 * idx) + 140 len 20]
        mem[mem[(32 * arg1.length) + 288]] = Mask(112, 0, ext_call.return_data[0])
        mem[mem[(32 * arg1.length) + 288] + 32] = Mask(112, 0, ext_call.return_data[32])
        require idx < mem[96]
        _100 = mem[(32 * idx) + 128]
        mem[mem[64] + 4] = 10^18
        mem[mem[64] + 36] = Mask(112, 0, ext_call.return_data[32])
        mem[mem[64] + 68] = Mask(112, 0, ext_call.return_data[0])
        require ext_code.size(address(_100))
        staticcall address(_100).getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                gas gas_remaining wei
               args 10^18, ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= s:
            idx = idx + 1
            s = s
            t = ext_call.return_data[0]
            continue 
        require idx < mem[96]
        mem[(32 * arg1.length) + 384] = mem[(32 * idx) + 140 len 20]
        mem[mem[(32 * arg1.length) + 416]] = Mask(112, 0, ext_call.return_data[0])
        mem[mem[(32 * arg1.length) + 416] + 32] = Mask(112, 0, ext_call.return_data[32])
        idx = idx + 1
        s = ext_call.return_data[0]
        t = ext_call.return_data[0]
        continue 
    _66 = mem[mem[(32 * arg1.length) + 288] + 32]
    mem[mem[64]] = mem[mem[(32 * arg1.length) + 288] + 18 len 14]
    return mem[mem[64]], _66 << 144
}

function sub_06755799(?) {
    require calldata.size - 4 >= 96
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    mem[(32 * arg1.length) + 160] = 0
    mem[(32 * arg1.length) + 256] = 96
    mem[(32 * arg1.length) + 288] = 0
    mem[(32 * arg1.length) + 320] = 0
    mem[(32 * arg1.length) + 192] = (32 * arg1.length) + 256
    mem[(32 * arg1.length) + 352] = 96
    mem[(32 * arg1.length) + 384] = 0
    mem[(32 * arg1.length) + 416] = 0
    mem[(32 * arg1.length) + 224] = (32 * arg1.length) + 352
    mem[(32 * arg1.length) + 448] = 0
    mem[(32 * arg1.length) + 480] = 0
    mem[(32 * arg1.length) + 576] = 96
    mem[(32 * arg1.length) + 608] = 0
    mem[(32 * arg1.length) + 640] = 0
    mem[(32 * arg1.length) + 512] = (32 * arg1.length) + 576
    mem[(32 * arg1.length) + 672] = 96
    mem[(32 * arg1.length) + 704] = 0
    mem[(32 * arg1.length) + 736] = 0
    mem[(32 * arg1.length) + 544] = (32 * arg1.length) + 672
    mem[(32 * arg1.length) + 768] = 0
    mem[(32 * arg1.length) + 832] = 0
    mem[(32 * arg1.length) + 864] = 0
    mem[(32 * arg1.length) + 800] = (32 * arg1.length) + 832
    mem[(32 * arg1.length) + 896] = 0
    mem[(32 * arg1.length) + 960] = 0
    mem[(32 * arg1.length) + 992] = 0
    mem[(32 * arg1.length) + 928] = (32 * arg1.length) + 960
    mem[(32 * arg1.length) + 1024] = 0
    mem[(32 * arg1.length) + 1088] = 0
    mem[(32 * arg1.length) + 1120] = 0
    mem[(32 * arg1.length) + 1056] = (32 * arg1.length) + 1088
    mem[(32 * arg1.length) + 1152] = 0
    mem[64] = (32 * arg1.length) + 1280
    mem[(32 * arg1.length) + 1216] = 0
    mem[(32 * arg1.length) + 1248] = 0
    mem[(32 * arg1.length) + 1184] = (32 * arg1.length) + 1216
    idx = 0
    s = 0
    t = 0
    while idx < arg1.length:
        require idx < mem[96]
        require ext_code.size(mem[(32 * idx) + 140 len 20])
        staticcall mem[(32 * idx) + 140 len 20].factory() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                gas gas_remaining wei
               args address(arg2), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).getReserves() with:
                gas gas_remaining wei
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require idx < mem[96]
        _391 = mem[(32 * idx) + 128]
        mem[mem[64] + 4] = 10^18
        mem[mem[64] + 36] = Mask(112, 0, ext_call.return_data[0])
        mem[mem[64] + 68] = Mask(112, 0, ext_call.return_data[32])
        require ext_code.size(address(_391))
        staticcall address(_391).getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                gas gas_remaining wei
               args 10^18, ext_call.return_data[0] << 144, Mask(112, 0, ext_call.return_data[32])
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require idx < mem[96]
        if ext_call.return_data[0] <= t:
            _424 = mem[(32 * idx) + 128]
            mem[mem[64] + 4] = 10^18
            mem[mem[64] + 36] = Mask(112, 0, ext_call.return_data[32])
            mem[mem[64] + 68] = Mask(112, 0, ext_call.return_data[0])
            require ext_code.size(address(_424))
            staticcall address(_424).getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                    gas gas_remaining wei
                   args 10^18, ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] <= s:
                idx = idx + 1
                s = s
                t = t
                continue 
            require idx < mem[96]
            mem[(32 * arg1.length) + 1152] = mem[(32 * idx) + 140 len 20]
            mem[mem[(32 * arg1.length) + 1184]] = Mask(112, 0, ext_call.return_data[0])
            mem[mem[(32 * arg1.length) + 1184] + 32] = Mask(112, 0, ext_call.return_data[32])
            idx = idx + 1
            s = ext_call.return_data[0]
            t = t
            continue 
        mem[(32 * arg1.length) + 1024] = mem[(32 * idx) + 140 len 20]
        mem[mem[(32 * arg1.length) + 1056]] = Mask(112, 0, ext_call.return_data[0])
        mem[mem[(32 * arg1.length) + 1056] + 32] = Mask(112, 0, ext_call.return_data[32])
        require idx < mem[96]
        _453 = mem[(32 * idx) + 128]
        mem[mem[64] + 4] = 10^18
        mem[mem[64] + 36] = Mask(112, 0, ext_call.return_data[32])
        mem[mem[64] + 68] = Mask(112, 0, ext_call.return_data[0])
        require ext_code.size(address(_453))
        staticcall address(_453).getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                gas gas_remaining wei
               args 10^18, ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= s:
            idx = idx + 1
            s = s
            t = ext_call.return_data[0]
            continue 
        require idx < mem[96]
        mem[(32 * arg1.length) + 1152] = mem[(32 * idx) + 140 len 20]
        mem[mem[(32 * arg1.length) + 1184]] = Mask(112, 0, ext_call.return_data[0])
        mem[mem[(32 * arg1.length) + 1184] + 32] = Mask(112, 0, ext_call.return_data[32])
        idx = idx + 1
        s = ext_call.return_data[0]
        t = ext_call.return_data[0]
        continue 
    _373 = mem[64]
    mem[64] = mem[64] + 128
    mem[_373] = 0
    mem[_373 + 32] = 0
    _374 = mem[64]
    mem[64] = mem[64] + 96
    mem[_374] = 96
    mem[_374 + 32] = 0
    mem[_374 + 64] = 0
    mem[_373 + 64] = _374
    _379 = mem[64]
    mem[64] = mem[64] + 96
    mem[_379] = 96
    mem[_379 + 32] = 0
    mem[_379 + 64] = 0
    mem[_373 + 96] = _379
    mem[_373] = 0
    if not sub_451ae8ea:
        s = var83005
        while var91003 < var91001 + 1:
            if var99001 / 10^18 != var99003:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _5518 = mem[64]
            mem[64] = mem[64] + 64
            mem[_5518] = 26
            mem[_5518 + 32] = 'SafeMath: division by zero'
            s = var103001
            t = var103008
            while sub_691b5245 > 0:
                require sub_691b5245
                _5527 = mem[(32 * arg1.length) + 1024]
                _5529 = mem[mem[(32 * arg1.length) + 1056]]
                _5531 = mem[mem[(32 * arg1.length) + 1056] + 32]
                mem[mem[64] + 4] = s / sub_691b5245
                mem[mem[64] + 36] = Mask(112, 0, _5529)
                mem[mem[64] + 68] = Mask(112, 0, _5531)
                require ext_code.size(address(_5527))
                staticcall address(_5527).getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args s / sub_691b5245, _5529 << 144, Mask(112, 0, _5531)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                _5550 = mem[(32 * arg1.length) + 1152]
                _5552 = mem[mem[(32 * arg1.length) + 1184] + 32]
                _5554 = mem[mem[(32 * arg1.length) + 1184]]
                mem[mem[64] + 4] = ext_call.return_data[0]
                mem[mem[64] + 36] = Mask(112, 0, _5552)
                mem[mem[64] + 68] = Mask(112, 0, _5554)
                require ext_code.size(address(_5550))
                staticcall address(_5550).getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args ext_call.return_data[0], _5552 << 144, Mask(112, 0, _5554)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                _5569 = mem[64]
                mem[64] = mem[64] + 64
                mem[_5569] = 30
                mem[_5569 + 32] = 'SafeMath: subtraction overflow'
                if s / sub_691b5245 > ext_call.return_data[0]:
                    _5572 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_5572 + idx + 68] = mem[_5569 + idx + 32]
                        _5518 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5518] = 26
                        mem[_5518 + 32] = 'SafeMath: division by zero'
                        idx = idx + 32
                        continue 
                    mem[_5572 + 68] = mem[_5572 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _5572 + -mem[64] + 100
                if ext_call.return_data[0] - (s / sub_691b5245) < mem[_373]:
                    mem[0] = mem[(32 * arg1.length) + 1036 len 20]
                    mem[32] = 0
                    _5590 = sha3(mem[(32 * arg1.length) + 1036 len 20], 0)
                    _5591 = mem[64]
                    mem[64] = mem[64] + 96
                    _5592 = mem[64]
                    mem[64] = mem[64] + ceil32(stor0[mem[(32 * arg1.length) + 1036 len 20]].length) + 32
                    mem[_5592] = stor0[mem[(32 * arg1.length) + 1036 len 20]].length
                    mem[0] = _5590
                    mem[_5592 + 32] = stor[sha3(_5590)]
                    idx = _5592 + 32
                    s = sha3(mem[0])
                    while _5592 + stor[_5590].length > idx:
                        _5518 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5518] = 26
                        mem[_5518 + 32] = 'SafeMath: division by zero'
                        mem[idx + 32] = stor1[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                    mem[_5591] = _5592
                    mem[_5591 + 32] = address(stor1[_5590].field_0)
                    mem[_5591 + 64] = bool(uint8(stor1[_5590].field_160))
                    mem[_373 + 64] = _5591
                    mem[0] = mem[(32 * arg1.length) + 1164 len 20]
                    mem[32] = 0
                    _6070 = sha3(mem[(32 * arg1.length) + 1164 len 20], 0)
                    _6071 = mem[64]
                    mem[64] = mem[64] + 96
                    _6072 = mem[64]
                    mem[64] = mem[64] + ceil32(stor0[mem[(32 * arg1.length) + 1164 len 20]].length) + 32
                    mem[_6072] = stor0[mem[(32 * arg1.length) + 1164 len 20]].length
                    mem[0] = _6070
                    mem[_6072 + 32] = stor[sha3(_6070)]
                    idx = _6072 + 32
                    s = sha3(mem[0])
                    while _6072 + stor[_6070].length > idx:
                        _5518 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5518] = 26
                        mem[_5518 + 32] = 'SafeMath: division by zero'
                        mem[idx + 32] = stor1[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                    mem[_6071] = _6072
                    mem[_6071 + 32] = address(stor1[_6070].field_0)
                    mem[_6071 + 64] = bool(uint8(stor1[_6070].field_160))
                    mem[_373 + 96] = _6071
                    _6478 = mem[_373 + 32]
                    mem[mem[64]] = mem[_373]
                    return mem[mem[64]], _6478
                if ext_call.return_data[0] - (s / sub_691b5245) <= mem[_373]:
                    if not sub_451ae8ea:
                        _5518 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5518] = 26
                        mem[_5518 + 32] = 'SafeMath: division by zero'
                        s = t + 1
                        continue 
                    require sub_451ae8ea
                    if sub_451ae8ea * sub_691b5245 / sub_451ae8ea != sub_691b5245:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if t < sub_451ae8ea * sub_691b5245:
                        if (10^18 * t) + 10^18 / 10^18 != t + 1:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _5518 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5518] = 26
                        mem[_5518 + 32] = 'SafeMath: division by zero'
                        s = (10^18 * t) + 10^18
                        t = t + 1
                        continue 
                    mem[0] = mem[(32 * arg1.length) + 1036 len 20]
                    mem[32] = 0
                    _5672 = sha3(mem[(32 * arg1.length) + 1036 len 20], 0)
                    _5673 = mem[64]
                    mem[64] = mem[64] + 96
                    _5674 = mem[64]
                    mem[64] = mem[64] + ceil32(stor0[mem[(32 * arg1.length) + 1036 len 20]].length) + 32
                    mem[_5674] = stor0[mem[(32 * arg1.length) + 1036 len 20]].length
                    mem[0] = _5672
                    mem[_5674 + 32] = stor[sha3(_5672)]
                    idx = _5674 + 32
                    s = sha3(mem[0])
                    while _5674 + stor[_5672].length > idx:
                        _5518 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5518] = 26
                        mem[_5518 + 32] = 'SafeMath: division by zero'
                        mem[idx + 32] = stor1[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                    mem[_5673] = _5674
                    mem[_5673 + 32] = address(stor1[_5672].field_0)
                    mem[_5673 + 64] = bool(uint8(stor1[_5672].field_160))
                    mem[_373 + 64] = _5673
                    mem[0] = mem[(32 * arg1.length) + 1164 len 20]
                    mem[32] = 0
                    _6062 = sha3(mem[(32 * arg1.length) + 1164 len 20], 0)
                    _6063 = mem[64]
                    mem[64] = mem[64] + 96
                    _6064 = mem[64]
                    mem[64] = mem[64] + ceil32(stor0[mem[(32 * arg1.length) + 1164 len 20]].length) + 32
                    mem[_6064] = stor0[mem[(32 * arg1.length) + 1164 len 20]].length
                    mem[0] = _6062
                    mem[_6064 + 32] = stor[sha3(_6062)]
                    idx = _6064 + 32
                    s = sha3(mem[0])
                    while _6064 + stor[_6062].length > idx:
                        _5518 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5518] = 26
                        mem[_5518 + 32] = 'SafeMath: division by zero'
                        mem[idx + 32] = stor1[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                    mem[_6063] = _6064
                    mem[_6063 + 32] = address(stor1[_6062].field_0)
                    mem[_6063 + 64] = bool(uint8(stor1[_6062].field_160))
                    mem[_373 + 96] = _6063
                    _6474 = mem[_373 + 32]
                    mem[mem[64]] = mem[_373]
                    return mem[mem[64]], _6474
                mem[_373] = ext_call.return_data[0] - (s / sub_691b5245)
                mem[_373 + 32] = s / sub_691b5245
                if not sub_451ae8ea:
                    _5518 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5518] = 26
                    mem[_5518 + 32] = 'SafeMath: division by zero'
                    s = t + 1
                    continue 
                require sub_451ae8ea
                if sub_451ae8ea * sub_691b5245 / sub_451ae8ea != sub_691b5245:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if t < sub_451ae8ea * sub_691b5245:
                    if (10^18 * t) + 10^18 / 10^18 != t + 1:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _5518 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5518] = 26
                    mem[_5518 + 32] = 'SafeMath: division by zero'
                    s = (10^18 * t) + 10^18
                    t = t + 1
                    continue 
                mem[0] = mem[(32 * arg1.length) + 1036 len 20]
                mem[32] = 0
                _5701 = sha3(mem[(32 * arg1.length) + 1036 len 20], 0)
                _5702 = mem[64]
                mem[64] = mem[64] + 96
                _5703 = mem[64]
                mem[64] = mem[64] + ceil32(stor0[mem[(32 * arg1.length) + 1036 len 20]].length) + 32
                mem[_5703] = stor0[mem[(32 * arg1.length) + 1036 len 20]].length
                mem[0] = _5701
                mem[_5703 + 32] = stor[sha3(_5701)]
                idx = _5703 + 32
                s = sha3(mem[0])
                while _5703 + stor[_5701].length > idx:
                    _5518 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5518] = 26
                    mem[_5518 + 32] = 'SafeMath: division by zero'
                    mem[idx + 32] = stor1[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                mem[_5702] = _5703
                mem[_5702 + 32] = address(stor1[_5701].field_0)
                mem[_5702 + 64] = bool(uint8(stor1[_5701].field_160))
                mem[_373 + 64] = _5702
                mem[0] = mem[(32 * arg1.length) + 1164 len 20]
                mem[32] = 0
                _6066 = sha3(mem[(32 * arg1.length) + 1164 len 20], 0)
                _6067 = mem[64]
                mem[64] = mem[64] + 96
                _6068 = mem[64]
                mem[64] = mem[64] + ceil32(stor0[mem[(32 * arg1.length) + 1164 len 20]].length) + 32
                mem[_6068] = stor0[mem[(32 * arg1.length) + 1164 len 20]].length
                mem[0] = _6066
                mem[_6068 + 32] = stor[sha3(_6066)]
                idx = _6068 + 32
                s = sha3(mem[0])
                while _6068 + stor[_6066].length > idx:
                    _5518 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5518] = 26
                    mem[_5518 + 32] = 'SafeMath: division by zero'
                    mem[idx + 32] = stor1[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                mem[_6067] = _6068
                mem[_6067 + 32] = address(stor1[_6066].field_0)
                mem[_6067 + 64] = bool(uint8(stor1[_6066].field_160))
                mem[_373 + 96] = _6067
                _6476 = mem[_373 + 32]
                mem[mem[64]] = mem[_373]
                return mem[mem[64]], _6476
            _5520 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = mem[_5518]
            _5522 = mem[_5518]
            idx = 0
            while idx < _5522:
                mem[_5520 + idx + 68] = mem[_5518 + idx + 32]
                idx = idx + 32
                continue 
            if not _5522 % 32:
                revert with memory
                  from mem[64]
                   len _5522 + _5520 + -mem[64] + 68
            mem[floor32(_5522) + _5520 + 68] = mem[floor32(_5522) + _5520 + -(_5522 % 32) + 100 len _5522 % 32]
            revert with memory
              from mem[64]
               len floor32(_5522) + _5520 + -mem[64] + 100
        mem[0] = mem[(32 * arg1.length) + 1036 len 20]
        mem[32] = 0
        _1945 = sha3(mem[(32 * arg1.length) + 1036 len 20], 0)
        _1946 = mem[64]
        mem[64] = mem[64] + 96
        _1947 = mem[64]
        mem[64] = mem[64] + ceil32(stor0[mem[(32 * arg1.length) + 1036 len 20]].length) + 32
        mem[_1947] = stor0[mem[(32 * arg1.length) + 1036 len 20]].length
        mem[0] = _1945
        mem[_1947 + 32] = stor[sha3(_1945)]
        idx = _1947 + 32
        s = 0
        while _1947 + stor[_1945].length > idx:
            mem[idx + 32] = stor[s + sha3(_1945) + 1]
            idx = idx + 32
            s = s + 1
            continue 
        mem[_1946] = _1947
        mem[_1946 + 32] = address(stor1[_1945].field_0)
        mem[_1946 + 64] = bool(uint8(stor1[_1945].field_160))
        mem[_373 + 64] = _1946
        mem[0] = mem[(32 * arg1.length) + 1164 len 20]
        mem[32] = 0
        _2365 = sha3(mem[(32 * arg1.length) + 1164 len 20], 0)
        _2366 = mem[64]
        mem[64] = mem[64] + 96
        _2367 = mem[64]
        mem[64] = mem[64] + ceil32(stor0[mem[(32 * arg1.length) + 1164 len 20]].length) + 32
        mem[_2367] = stor0[mem[(32 * arg1.length) + 1164 len 20]].length
        mem[0] = _2365
        mem[_2367 + 32] = stor[sha3(_2365)]
        idx = _2367 + 32
        s = 0
        while _2367 + stor[_2365].length > idx:
            mem[idx + 32] = stor[s + sha3(_2365) + 1]
            idx = idx + 32
            s = s + 1
            continue 
        mem[_2366] = _2367
        mem[_2366 + 32] = address(stor1[_2365].field_0)
        mem[_2366 + 64] = bool(uint8(stor1[_2365].field_160))
        mem[_373 + 96] = _2366
        _2762 = mem[_373 + 32]
        mem[mem[64]] = mem[_373]
        return mem[mem[64]], _2762
    require sub_451ae8ea
    if sub_451ae8ea * sub_691b5245 / sub_451ae8ea != sub_691b5245:
        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
    if var93003 < var93001 + 1:
        if var101001 / 10^18 != var101003:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _6469 = mem[64]
        mem[64] = mem[64] + 64
        mem[_6469] = 26
        mem[_6469 + 32] = 'SafeMath: division by zero'
        s = var105001
        t = var105008
        while sub_691b5245 > 0:
            require sub_691b5245
            _6486 = mem[(32 * arg1.length) + 1024]
            _6488 = mem[mem[(32 * arg1.length) + 1056]]
            _6490 = mem[mem[(32 * arg1.length) + 1056] + 32]
            mem[mem[64] + 4] = s / sub_691b5245
            mem[mem[64] + 36] = Mask(112, 0, _6488)
            mem[mem[64] + 68] = Mask(112, 0, _6490)
            require ext_code.size(address(_6486))
            staticcall address(_6486).getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                    gas gas_remaining wei
                   args s / sub_691b5245, _6488 << 144, Mask(112, 0, _6490)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            _6498 = mem[(32 * arg1.length) + 1152]
            _6500 = mem[mem[(32 * arg1.length) + 1184] + 32]
            _6502 = mem[mem[(32 * arg1.length) + 1184]]
            mem[mem[64] + 4] = ext_call.return_data[0]
            mem[mem[64] + 36] = Mask(112, 0, _6500)
            mem[mem[64] + 68] = Mask(112, 0, _6502)
            require ext_code.size(address(_6498))
            staticcall address(_6498).getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                    gas gas_remaining wei
                   args ext_call.return_data[0], _6500 << 144, Mask(112, 0, _6502)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            _6507 = mem[64]
            mem[64] = mem[64] + 64
            mem[_6507] = 30
            mem[_6507 + 32] = 'SafeMath: subtraction overflow'
            if s / sub_691b5245 > ext_call.return_data[0]:
                _6508 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_6508 + idx + 68] = mem[_6507 + idx + 32]
                    _6469 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6469] = 26
                    mem[_6469 + 32] = 'SafeMath: division by zero'
                    idx = idx + 32
                    continue 
                mem[_6508 + 68] = mem[_6508 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _6508 + -mem[64] + 100
            if ext_call.return_data[0] - (s / sub_691b5245) < mem[_373]:
                mem[0] = mem[(32 * arg1.length) + 1036 len 20]
                mem[32] = 0
                _6518 = sha3(mem[(32 * arg1.length) + 1036 len 20], 0)
                _6519 = mem[64]
                mem[64] = mem[64] + 96
                _6520 = mem[64]
                mem[64] = mem[64] + ceil32(stor0[mem[(32 * arg1.length) + 1036 len 20]].length) + 32
                mem[_6520] = stor0[mem[(32 * arg1.length) + 1036 len 20]].length
                mem[0] = _6518
                mem[_6520 + 32] = stor[sha3(_6518)]
                idx = _6520 + 32
                s = sha3(mem[0])
                while _6520 + stor[_6518].length > idx:
                    _6469 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6469] = 26
                    mem[_6469 + 32] = 'SafeMath: division by zero'
                    mem[idx + 32] = stor1[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                mem[_6519] = _6520
                mem[_6519 + 32] = address(stor1[_6518].field_0)
                mem[_6519 + 64] = bool(uint8(stor1[_6518].field_160))
                mem[_373 + 64] = _6519
                mem[0] = mem[(32 * arg1.length) + 1164 len 20]
                mem[32] = 0
                _6828 = sha3(mem[(32 * arg1.length) + 1164 len 20], 0)
                _6829 = mem[64]
                mem[64] = mem[64] + 96
                _6830 = mem[64]
                mem[64] = mem[64] + ceil32(stor0[mem[(32 * arg1.length) + 1164 len 20]].length) + 32
                mem[_6830] = stor0[mem[(32 * arg1.length) + 1164 len 20]].length
                mem[0] = _6828
                mem[_6830 + 32] = stor[sha3(_6828)]
                idx = _6830 + 32
                s = sha3(mem[0])
                while _6830 + stor[_6828].length > idx:
                    _6469 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6469] = 26
                    mem[_6469 + 32] = 'SafeMath: division by zero'
                    mem[idx + 32] = stor1[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                mem[_6829] = _6830
                mem[_6829 + 32] = address(stor1[_6828].field_0)
                mem[_6829 + 64] = bool(uint8(stor1[_6828].field_160))
                mem[_373 + 96] = _6829
                _6951 = mem[_373 + 32]
                mem[mem[64]] = mem[_373]
                return mem[mem[64]], _6951
            if ext_call.return_data[0] - (s / sub_691b5245) <= mem[_373]:
                if not sub_451ae8ea:
                    if t + 1 < 1:
                        if (10^18 * t) + 10^18 / 10^18 != t + 1:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _6469 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6469] = 26
                        mem[_6469 + 32] = 'SafeMath: division by zero'
                        s = (10^18 * t) + 10^18
                        t = t + 1
                        continue 
                    mem[0] = mem[(32 * arg1.length) + 1036 len 20]
                    mem[32] = 0
                    _6549 = sha3(mem[(32 * arg1.length) + 1036 len 20], 0)
                    _6550 = mem[64]
                    mem[64] = mem[64] + 96
                    _6551 = mem[64]
                    mem[64] = mem[64] + ceil32(stor0[mem[(32 * arg1.length) + 1036 len 20]].length) + 32
                    mem[_6551] = stor0[mem[(32 * arg1.length) + 1036 len 20]].length
                    mem[0] = _6549
                    mem[_6551 + 32] = stor[sha3(_6549)]
                    idx = _6551 + 32
                    s = sha3(mem[0])
                    while _6551 + stor[_6549].length > idx:
                        _6469 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6469] = 26
                        mem[_6469 + 32] = 'SafeMath: division by zero'
                        mem[idx + 32] = stor1[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                    mem[_6550] = _6551
                    mem[_6550 + 32] = address(stor1[_6549].field_0)
                    mem[_6550 + 64] = bool(uint8(stor1[_6549].field_160))
                    mem[_373 + 64] = _6550
                    mem[0] = mem[(32 * arg1.length) + 1164 len 20]
                    mem[32] = 0
                    _6816 = sha3(mem[(32 * arg1.length) + 1164 len 20], 0)
                    _6817 = mem[64]
                    mem[64] = mem[64] + 96
                    _6818 = mem[64]
                    mem[64] = mem[64] + ceil32(stor0[mem[(32 * arg1.length) + 1164 len 20]].length) + 32
                    mem[_6818] = stor0[mem[(32 * arg1.length) + 1164 len 20]].length
                    mem[0] = _6816
                    mem[_6818 + 32] = stor[sha3(_6816)]
                    idx = _6818 + 32
                    s = sha3(mem[0])
                    while _6818 + stor[_6816].length > idx:
                        _6469 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6469] = 26
                        mem[_6469 + 32] = 'SafeMath: division by zero'
                        mem[idx + 32] = stor1[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                    mem[_6817] = _6818
                    mem[_6817 + 32] = address(stor1[_6816].field_0)
                    mem[_6817 + 64] = bool(uint8(stor1[_6816].field_160))
                    mem[_373 + 96] = _6817
                    _6945 = mem[_373 + 32]
                    mem[mem[64]] = mem[_373]
                    return mem[mem[64]], _6945
                require sub_451ae8ea
                if sub_451ae8ea * sub_691b5245 / sub_451ae8ea != sub_691b5245:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if t < sub_451ae8ea * sub_691b5245:
                    if (10^18 * t) + 10^18 / 10^18 != t + 1:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _6469 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6469] = 26
                    mem[_6469 + 32] = 'SafeMath: division by zero'
                    s = (10^18 * t) + 10^18
                    t = t + 1
                    continue 
                mem[0] = mem[(32 * arg1.length) + 1036 len 20]
                mem[32] = 0
                _6572 = sha3(mem[(32 * arg1.length) + 1036 len 20], 0)
                _6573 = mem[64]
                mem[64] = mem[64] + 96
                _6574 = mem[64]
                mem[64] = mem[64] + ceil32(stor0[mem[(32 * arg1.length) + 1036 len 20]].length) + 32
                mem[_6574] = stor0[mem[(32 * arg1.length) + 1036 len 20]].length
                mem[0] = _6572
                mem[_6574 + 32] = stor[sha3(_6572)]
                idx = _6574 + 32
                s = sha3(mem[0])
                while _6574 + stor[_6572].length > idx:
                    _6469 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6469] = 26
                    mem[_6469 + 32] = 'SafeMath: division by zero'
                    mem[idx + 32] = stor1[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                mem[_6573] = _6574
                mem[_6573 + 32] = address(stor1[_6572].field_0)
                mem[_6573 + 64] = bool(uint8(stor1[_6572].field_160))
                mem[_373 + 64] = _6573
                mem[0] = mem[(32 * arg1.length) + 1164 len 20]
                mem[32] = 0
                _6812 = sha3(mem[(32 * arg1.length) + 1164 len 20], 0)
                _6813 = mem[64]
                mem[64] = mem[64] + 96
                _6814 = mem[64]
                mem[64] = mem[64] + ceil32(stor0[mem[(32 * arg1.length) + 1164 len 20]].length) + 32
                mem[_6814] = stor0[mem[(32 * arg1.length) + 1164 len 20]].length
                mem[0] = _6812
                mem[_6814 + 32] = stor[sha3(_6812)]
                idx = _6814 + 32
                s = sha3(mem[0])
                while _6814 + stor[_6812].length > idx:
                    _6469 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6469] = 26
                    mem[_6469 + 32] = 'SafeMath: division by zero'
                    mem[idx + 32] = stor1[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                mem[_6813] = _6814
                mem[_6813 + 32] = address(stor1[_6812].field_0)
                mem[_6813 + 64] = bool(uint8(stor1[_6812].field_160))
                mem[_373 + 96] = _6813
                _6943 = mem[_373 + 32]
                mem[mem[64]] = mem[_373]
                return mem[mem[64]], _6943
            mem[_373] = ext_call.return_data[0] - (s / sub_691b5245)
            mem[_373 + 32] = s / sub_691b5245
            if not sub_451ae8ea:
                if t + 1 < 1:
                    if (10^18 * t) + 10^18 / 10^18 != t + 1:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _6469 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6469] = 26
                    mem[_6469 + 32] = 'SafeMath: division by zero'
                    s = (10^18 * t) + 10^18
                    t = t + 1
                    continue 
                mem[0] = mem[(32 * arg1.length) + 1036 len 20]
                mem[32] = 0
                _6561 = sha3(mem[(32 * arg1.length) + 1036 len 20], 0)
                _6562 = mem[64]
                mem[64] = mem[64] + 96
                _6563 = mem[64]
                mem[64] = mem[64] + ceil32(stor0[mem[(32 * arg1.length) + 1036 len 20]].length) + 32
                mem[_6563] = stor0[mem[(32 * arg1.length) + 1036 len 20]].length
                mem[0] = _6561
                mem[_6563 + 32] = stor[sha3(_6561)]
                idx = _6563 + 32
                s = sha3(mem[0])
                while _6563 + stor[_6561].length > idx:
                    _6469 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6469] = 26
                    mem[_6469 + 32] = 'SafeMath: division by zero'
                    mem[idx + 32] = stor1[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                mem[_6562] = _6563
                mem[_6562 + 32] = address(stor1[_6561].field_0)
                mem[_6562 + 64] = bool(uint8(stor1[_6561].field_160))
                mem[_373 + 64] = _6562
                mem[0] = mem[(32 * arg1.length) + 1164 len 20]
                mem[32] = 0
                _6824 = sha3(mem[(32 * arg1.length) + 1164 len 20], 0)
                _6825 = mem[64]
                mem[64] = mem[64] + 96
                _6826 = mem[64]
                mem[64] = mem[64] + ceil32(stor0[mem[(32 * arg1.length) + 1164 len 20]].length) + 32
                mem[_6826] = stor0[mem[(32 * arg1.length) + 1164 len 20]].length
                mem[0] = _6824
                mem[_6826 + 32] = stor[sha3(_6824)]
                idx = _6826 + 32
                s = sha3(mem[0])
                while _6826 + stor[_6824].length > idx:
                    _6469 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6469] = 26
                    mem[_6469 + 32] = 'SafeMath: division by zero'
                    mem[idx + 32] = stor1[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                mem[_6825] = _6826
                mem[_6825 + 32] = address(stor1[_6824].field_0)
                mem[_6825 + 64] = bool(uint8(stor1[_6824].field_160))
                mem[_373 + 96] = _6825
                _6949 = mem[_373 + 32]
                mem[mem[64]] = mem[_373]
                return mem[mem[64]], _6949
            require sub_451ae8ea
            if sub_451ae8ea * sub_691b5245 / sub_451ae8ea != sub_691b5245:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if t < sub_451ae8ea * sub_691b5245:
                if (10^18 * t) + 10^18 / 10^18 != t + 1:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _6469 = mem[64]
                mem[64] = mem[64] + 64
                mem[_6469] = 26
                mem[_6469 + 32] = 'SafeMath: division by zero'
                s = (10^18 * t) + 10^18
                t = t + 1
                continue 
            mem[0] = mem[(32 * arg1.length) + 1036 len 20]
            mem[32] = 0
            _6600 = sha3(mem[(32 * arg1.length) + 1036 len 20], 0)
            _6601 = mem[64]
            mem[64] = mem[64] + 96
            _6602 = mem[64]
            mem[64] = mem[64] + ceil32(stor0[mem[(32 * arg1.length) + 1036 len 20]].length) + 32
            mem[_6602] = stor0[mem[(32 * arg1.length) + 1036 len 20]].length
            mem[0] = _6600
            mem[_6602 + 32] = stor[sha3(_6600)]
            idx = _6602 + 32
            s = sha3(mem[0])
            while _6602 + stor[_6600].length > idx:
                _6469 = mem[64]
                mem[64] = mem[64] + 64
                mem[_6469] = 26
                mem[_6469 + 32] = 'SafeMath: division by zero'
                mem[idx + 32] = stor1[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
            mem[_6601] = _6602
            mem[_6601 + 32] = address(stor1[_6600].field_0)
            mem[_6601 + 64] = bool(uint8(stor1[_6600].field_160))
            mem[_373 + 64] = _6601
            mem[0] = mem[(32 * arg1.length) + 1164 len 20]
            mem[32] = 0
            _6820 = sha3(mem[(32 * arg1.length) + 1164 len 20], 0)
            _6821 = mem[64]
            mem[64] = mem[64] + 96
            _6822 = mem[64]
            mem[64] = mem[64] + ceil32(stor0[mem[(32 * arg1.length) + 1164 len 20]].length) + 32
            mem[_6822] = stor0[mem[(32 * arg1.length) + 1164 len 20]].length
            mem[0] = _6820
            mem[_6822 + 32] = stor[sha3(_6820)]
            idx = _6822 + 32
            s = sha3(mem[0])
            while _6822 + stor[_6820].length > idx:
                _6469 = mem[64]
                mem[64] = mem[64] + 64
                mem[_6469] = 26
                mem[_6469 + 32] = 'SafeMath: division by zero'
                mem[idx + 32] = stor1[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
            mem[_6821] = _6822
            mem[_6821 + 32] = address(stor1[_6820].field_0)
            mem[_6821 + 64] = bool(uint8(stor1[_6820].field_160))
            mem[_373 + 96] = _6821
            _6947 = mem[_373 + 32]
            mem[mem[64]] = mem[_373]
            return mem[mem[64]], _6947
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = mem[_6469]
        _6472 = mem[_6469]
        mem[mem[64] + 68 len ceil32(mem[_6469])] = mem[_6469 + 32 len ceil32(mem[_6469])]
        if not _6472 % 32:
            revert with 0, 32, mem[mem[64] + 36 len _6472 + 32]
        mem[floor32(_6472) + mem[64] + 68] = mem[floor32(_6472) + mem[64] + -(_6472 % 32) + 100 len _6472 % 32]
        revert with 0, 32, mem[mem[64] + 36 len floor32(_6472) + 64]
    mem[0] = mem[(32 * arg1.length) + 1036 len 20]
    mem[32] = 0
    _2754 = sha3(mem[(32 * arg1.length) + 1036 len 20], 0)
    _2755 = mem[64]
    mem[64] = mem[64] + 96
    _2756 = mem[64]
    mem[64] = mem[64] + ceil32(stor0[mem[(32 * arg1.length) + 1036 len 20]].length) + 32
    mem[_2756] = stor0[mem[(32 * arg1.length) + 1036 len 20]].length
    mem[0] = _2754
    mem[_2756 + 32] = stor[sha3(_2754)]
    idx = _2756 + 32
    s = 0
    while _2756 + stor[_2754].length > idx:
        mem[idx + 32] = stor[s + sha3(_2754) + 1]
        idx = idx + 32
        s = s + 1
        continue 
    mem[_2755] = _2756
    mem[_2755 + 32] = address(stor1[_2754].field_0)
    mem[_2755 + 64] = bool(uint8(stor1[_2754].field_160))
    mem[_373 + 64] = _2755
    mem[0] = mem[(32 * arg1.length) + 1164 len 20]
    mem[32] = 0
    _3346 = sha3(mem[(32 * arg1.length) + 1164 len 20], 0)
    _3347 = mem[64]
    mem[64] = mem[64] + 96
    _3348 = mem[64]
    mem[64] = mem[64] + ceil32(stor0[mem[(32 * arg1.length) + 1164 len 20]].length) + 32
    mem[_3348] = stor0[mem[(32 * arg1.length) + 1164 len 20]].length
    mem[0] = _3346
    mem[_3348 + 32] = stor[sha3(_3346)]
    idx = _3348 + 32
    s = 0
    while _3348 + stor[_3346].length > idx:
        mem[idx + 32] = stor[s + sha3(_3346) + 1]
        idx = idx + 32
        s = s + 1
        continue 
    mem[_3347] = _3348
    mem[_3347 + 32] = address(stor1[_3346].field_0)
    mem[_3347 + 64] = bool(uint8(stor1[_3346].field_160))
    mem[_373 + 96] = _3347
    _3905 = mem[_373 + 32]
    mem[mem[64]] = mem[_373]
    return mem[mem[64]], _3905
}



}
