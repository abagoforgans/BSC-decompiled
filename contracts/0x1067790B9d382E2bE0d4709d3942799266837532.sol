contract main {




// =====================  Runtime code  =====================


#
#  - sub_1121c6d5(?)
#  - sub_ba7e415e(?)
#
address stor0;

function _fallback() payable {
    revert
}

function deposit(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if stor0 != msg.sender:
        revert with 0, '!owner'
    require ext_code.size(arg1)
    call arg1.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function withdrawBNB(uint256 arg1) {
    require calldata.size - 4 >= 32
    if stor0 != msg.sender:
        revert with 0, '!owner'
    call msg.sender with:
       value arg1 wei
         gas gas_remaining wei
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 32, 35, 0x775472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45, mem[231 len 29]
    else:
        if not ext_call.success:
            revert with 0, 
                        32,
                        35,
                        0x775472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                        mem[ceil32(return_data.size) + 232 len 29]
    ('bool', 'ext_call.success')
}

function getReserves(address arg1, address arg2, address arg3) {
    require calldata.size - 4 >= 96
    require ext_code.size(arg3)
    staticcall arg3.factory() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
            gas gas_remaining wei
           args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if ext_call.return_data[12 len 20] != arg1:
        return ext_call.return_data[50 len 14], ext_call.return_data[0] << 144
    return ext_call.return_data[18 len 14], ext_call.return_data[32] << 144
}

function withdraw(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if stor0 != msg.sender:
        revert with 0, '!owner'
    mem[196 len 64] = approve(address rg1, uint256 rg2), address(this.address) << 64, 0, Mask(224, 32, arg2) >> 32
    call arg1 with:
         gas gas_remaining wei
        args Mask(224, 32, arg2) << 224, mem[260 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'TransferHelper: APPROVE_FAILED'
        if not approve(address rg1, uint256 rg2), address(this.address) << 64:
            revert with 0, 'TransferHelper: APPROVE_FAILED'
        mem[328 len 96] = unknown_0x23b872dd(?????), address(this.address) << 64, 0, msg.sender, Mask(224, 32, arg2) >> 32
        mem[452 len 4] = uint32(arg2)
        call arg1 with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args Mask(224, 32, arg2) << 480, mem[424 len 4]
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
        mem[ceil32(return_data.size) + 329 len 96] = unknown_0x23b872dd(?????), address(this.address) << 64, 0, msg.sender, Mask(224, 32, arg2) >> 32
        mem[ceil32(return_data.size) + 453 len 4] = uint32(arg2)
        call arg1 with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args Mask(224, 32, arg2) << 480, mem[ceil32(return_data.size) + 425 len 4]
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
                            mem[(2 * ceil32(return_data.size)) + 434 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 28]
            if return_data.size:
                require return_data.size >= 32
                if not mem[ceil32(return_data.size) + 361]:
                    revert with 0, 
                                32,
                                36,
                                0x445472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                                mem[(2 * ceil32(return_data.size)) + 434 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 28]
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
        staticcall address(ext_call.return_data[0]).token0() with:
                gas gas_remaining wei
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
        if address(ext_call.return_data[0]) != arg2:
            _144 = mem[(32 * idx) + 128]
            mem[mem[64] + 4] = 10^18
            mem[mem[64] + 36] = Mask(112, 0, ext_call.return_data[32])
            mem[mem[64] + 68] = Mask(112, 0, ext_call.return_data[0])
            require ext_code.size(address(_144))
            staticcall address(_144).getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                    gas gas_remaining wei
                   args 10^18, ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx < mem[96]
            if ext_call.return_data[0] <= t:
                _158 = mem[(32 * idx) + 128]
                mem[mem[64] + 4] = 10^18
                mem[mem[64] + 36] = Mask(112, 0, ext_call.return_data[0])
                mem[mem[64] + 68] = Mask(112, 0, ext_call.return_data[32])
                require ext_code.size(address(_158))
                staticcall address(_158).getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args 10^18, ext_call.return_data[0] << 144, Mask(112, 0, ext_call.return_data[32])
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
                mem[mem[(32 * arg1.length) + 416]] = Mask(112, 0, ext_call.return_data[32])
                mem[mem[(32 * arg1.length) + 416] + 32] = Mask(112, 0, ext_call.return_data[0])
                idx = idx + 1
                s = ext_call.return_data[0]
                t = t
                continue 
            mem[(32 * arg1.length) + 256] = mem[(32 * idx) + 140 len 20]
            mem[mem[(32 * arg1.length) + 288]] = Mask(112, 0, ext_call.return_data[32])
            mem[mem[(32 * arg1.length) + 288] + 32] = Mask(112, 0, ext_call.return_data[0])
            require idx < mem[96]
            _173 = mem[(32 * idx) + 128]
            mem[mem[64] + 4] = 10^18
            mem[mem[64] + 36] = Mask(112, 0, ext_call.return_data[0])
            mem[mem[64] + 68] = Mask(112, 0, ext_call.return_data[32])
            require ext_code.size(address(_173))
            staticcall address(_173).getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                    gas gas_remaining wei
                   args 10^18, ext_call.return_data[0] << 144, Mask(112, 0, ext_call.return_data[32])
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
            mem[mem[(32 * arg1.length) + 416]] = Mask(112, 0, ext_call.return_data[32])
            mem[mem[(32 * arg1.length) + 416] + 32] = Mask(112, 0, ext_call.return_data[0])
        else:
            _147 = mem[(32 * idx) + 128]
            mem[mem[64] + 4] = 10^18
            mem[mem[64] + 36] = Mask(112, 0, ext_call.return_data[0])
            mem[mem[64] + 68] = Mask(112, 0, ext_call.return_data[32])
            require ext_code.size(address(_147))
            staticcall address(_147).getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                    gas gas_remaining wei
                   args 10^18, ext_call.return_data[0] << 144, Mask(112, 0, ext_call.return_data[32])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx < mem[96]
            if ext_call.return_data[0] <= t:
                _164 = mem[(32 * idx) + 128]
                mem[mem[64] + 4] = 10^18
                mem[mem[64] + 36] = Mask(112, 0, ext_call.return_data[32])
                mem[mem[64] + 68] = Mask(112, 0, ext_call.return_data[0])
                require ext_code.size(address(_164))
                staticcall address(_164).getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
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
            _177 = mem[(32 * idx) + 128]
            mem[mem[64] + 4] = 10^18
            mem[mem[64] + 36] = Mask(112, 0, ext_call.return_data[32])
            mem[mem[64] + 68] = Mask(112, 0, ext_call.return_data[0])
            require ext_code.size(address(_177))
            staticcall address(_177).getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
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
    if mem[(32 * arg1.length) + 268 len 20] == mem[(32 * arg1.length) + 396 len 20]:
        revert with 0, 'markets are the same'
    _115 = mem[mem[(32 * arg1.length) + 416] + 32]
    mem[mem[64]] = mem[mem[(32 * arg1.length) + 416] + 18 len 14]
    return mem[mem[64]], _115 << 144
}

function sub_0a228dc1(?) {
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
    mem[(32 * arg1.length) + 448] = 0
    mem[(32 * arg1.length) + 480] = 0
    mem[(32 * arg1.length) + 416] = (32 * arg1.length) + 448
    mem[(32 * arg1.length) + 512] = 0
    mem[64] = (32 * arg1.length) + 640
    mem[(32 * arg1.length) + 576] = 0
    mem[(32 * arg1.length) + 608] = 0
    mem[(32 * arg1.length) + 544] = (32 * arg1.length) + 576
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
        staticcall address(ext_call.return_data[0]).token0() with:
                gas gas_remaining wei
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
        if address(ext_call.return_data[0]) != arg2:
            _174 = mem[(32 * idx) + 128]
            mem[mem[64] + 4] = 10^18
            mem[mem[64] + 36] = Mask(112, 0, ext_call.return_data[32])
            mem[mem[64] + 68] = Mask(112, 0, ext_call.return_data[0])
            require ext_code.size(address(_174))
            staticcall address(_174).getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                    gas gas_remaining wei
                   args 10^18, ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx < mem[96]
            if ext_call.return_data[0] <= t:
                _188 = mem[(32 * idx) + 128]
                mem[mem[64] + 4] = 10^18
                mem[mem[64] + 36] = Mask(112, 0, ext_call.return_data[0])
                mem[mem[64] + 68] = Mask(112, 0, ext_call.return_data[32])
                require ext_code.size(address(_188))
                staticcall address(_188).getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args 10^18, ext_call.return_data[0] << 144, Mask(112, 0, ext_call.return_data[32])
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
                mem[(32 * arg1.length) + 512] = mem[(32 * idx) + 140 len 20]
                mem[mem[(32 * arg1.length) + 544]] = Mask(112, 0, ext_call.return_data[32])
                mem[mem[(32 * arg1.length) + 544] + 32] = Mask(112, 0, ext_call.return_data[0])
                idx = idx + 1
                s = ext_call.return_data[0]
                t = t
                continue 
            mem[(32 * arg1.length) + 384] = mem[(32 * idx) + 140 len 20]
            mem[mem[(32 * arg1.length) + 416]] = Mask(112, 0, ext_call.return_data[32])
            mem[mem[(32 * arg1.length) + 416] + 32] = Mask(112, 0, ext_call.return_data[0])
            require idx < mem[96]
            _203 = mem[(32 * idx) + 128]
            mem[mem[64] + 4] = 10^18
            mem[mem[64] + 36] = Mask(112, 0, ext_call.return_data[0])
            mem[mem[64] + 68] = Mask(112, 0, ext_call.return_data[32])
            require ext_code.size(address(_203))
            staticcall address(_203).getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                    gas gas_remaining wei
                   args 10^18, ext_call.return_data[0] << 144, Mask(112, 0, ext_call.return_data[32])
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
            mem[(32 * arg1.length) + 512] = mem[(32 * idx) + 140 len 20]
            mem[mem[(32 * arg1.length) + 544]] = Mask(112, 0, ext_call.return_data[32])
            mem[mem[(32 * arg1.length) + 544] + 32] = Mask(112, 0, ext_call.return_data[0])
        else:
            _177 = mem[(32 * idx) + 128]
            mem[mem[64] + 4] = 10^18
            mem[mem[64] + 36] = Mask(112, 0, ext_call.return_data[0])
            mem[mem[64] + 68] = Mask(112, 0, ext_call.return_data[32])
            require ext_code.size(address(_177))
            staticcall address(_177).getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                    gas gas_remaining wei
                   args 10^18, ext_call.return_data[0] << 144, Mask(112, 0, ext_call.return_data[32])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx < mem[96]
            if ext_call.return_data[0] <= t:
                _194 = mem[(32 * idx) + 128]
                mem[mem[64] + 4] = 10^18
                mem[mem[64] + 36] = Mask(112, 0, ext_call.return_data[32])
                mem[mem[64] + 68] = Mask(112, 0, ext_call.return_data[0])
                require ext_code.size(address(_194))
                staticcall address(_194).getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
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
                mem[(32 * arg1.length) + 512] = mem[(32 * idx) + 140 len 20]
                mem[mem[(32 * arg1.length) + 544]] = Mask(112, 0, ext_call.return_data[0])
                mem[mem[(32 * arg1.length) + 544] + 32] = Mask(112, 0, ext_call.return_data[32])
                idx = idx + 1
                s = ext_call.return_data[0]
                t = t
                continue 
            mem[(32 * arg1.length) + 384] = mem[(32 * idx) + 140 len 20]
            mem[mem[(32 * arg1.length) + 416]] = Mask(112, 0, ext_call.return_data[0])
            mem[mem[(32 * arg1.length) + 416] + 32] = Mask(112, 0, ext_call.return_data[32])
            require idx < mem[96]
            _207 = mem[(32 * idx) + 128]
            mem[mem[64] + 4] = 10^18
            mem[mem[64] + 36] = Mask(112, 0, ext_call.return_data[32])
            mem[mem[64] + 68] = Mask(112, 0, ext_call.return_data[0])
            require ext_code.size(address(_207))
            staticcall address(_207).getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
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
            mem[(32 * arg1.length) + 512] = mem[(32 * idx) + 140 len 20]
            mem[mem[(32 * arg1.length) + 544]] = Mask(112, 0, ext_call.return_data[0])
            mem[mem[(32 * arg1.length) + 544] + 32] = Mask(112, 0, ext_call.return_data[32])
        idx = idx + 1
        s = ext_call.return_data[0]
        t = ext_call.return_data[0]
        continue 
    if mem[(32 * arg1.length) + 396 len 20] == mem[(32 * arg1.length) + 524 len 20]:
        revert with 0, 'markets are the same'
    _128 = mem[(32 * arg1.length) + 384]
    _137 = mem[mem[(32 * arg1.length) + 416]]
    _139 = mem[mem[(32 * arg1.length) + 416] + 32]
    mem[mem[64] + 4] = 10^18
    mem[mem[64] + 36] = Mask(112, 0, _137)
    mem[mem[64] + 68] = Mask(112, 0, _139)
    require ext_code.size(address(_128))
    staticcall address(_128).getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
            gas gas_remaining wei
           args 10^18, _137 << 144, Mask(112, 0, _139)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(mem[(32 * arg1.length) + 524 len 20])
    staticcall mem[(32 * arg1.length) + 524 len 20].getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
            gas gas_remaining wei
           args ext_call.return_data[0], mem[mem[(32 * arg1.length) + 544] + 32] << 144, mem[mem[(32 * arg1.length) + 544] + 18 len 14]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0], ext_call.return_data[0]
}

function sub_9f4d3c1f(?) {
    require calldata.size - 4 >= 192
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    mem[(32 * arg1.length) + 160] = 0
    mem[(32 * arg1.length) + 256] = 0
    mem[(32 * arg1.length) + 320] = 0
    mem[(32 * arg1.length) + 352] = 0
    mem[(32 * arg1.length) + 288] = (32 * arg1.length) + 320
    mem[(32 * arg1.length) + 192] = (32 * arg1.length) + 256
    mem[(32 * arg1.length) + 384] = 0
    mem[(32 * arg1.length) + 448] = 0
    mem[(32 * arg1.length) + 480] = 0
    mem[(32 * arg1.length) + 416] = (32 * arg1.length) + 448
    mem[(32 * arg1.length) + 224] = (32 * arg1.length) + 384
    mem[(32 * arg1.length) + 512] = 0
    mem[(32 * arg1.length) + 544] = 0
    mem[(32 * arg1.length) + 640] = 0
    mem[(32 * arg1.length) + 704] = 0
    mem[(32 * arg1.length) + 736] = 0
    mem[(32 * arg1.length) + 672] = (32 * arg1.length) + 704
    mem[(32 * arg1.length) + 576] = (32 * arg1.length) + 640
    mem[(32 * arg1.length) + 768] = 0
    mem[(32 * arg1.length) + 832] = 0
    mem[(32 * arg1.length) + 864] = 0
    mem[(32 * arg1.length) + 800] = (32 * arg1.length) + 832
    mem[(32 * arg1.length) + 608] = (32 * arg1.length) + 768
    mem[(32 * arg1.length) + 896] = 0
    mem[(32 * arg1.length) + 960] = 0
    mem[(32 * arg1.length) + 992] = 0
    mem[(32 * arg1.length) + 928] = (32 * arg1.length) + 960
    mem[(32 * arg1.length) + 1024] = 0
    mem[(32 * arg1.length) + 1088] = 0
    mem[(32 * arg1.length) + 1120] = 0
    mem[(32 * arg1.length) + 1056] = (32 * arg1.length) + 1088
    mem[(32 * arg1.length) + 1152] = 0
    mem[(32 * arg1.length) + 1216] = 0
    mem[(32 * arg1.length) + 1248] = 0
    mem[(32 * arg1.length) + 1184] = (32 * arg1.length) + 1216
    mem[(32 * arg1.length) + 1280] = 0
    mem[64] = (32 * arg1.length) + 1408
    mem[(32 * arg1.length) + 1344] = 0
    mem[(32 * arg1.length) + 1376] = 0
    mem[(32 * arg1.length) + 1312] = (32 * arg1.length) + 1344
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
        staticcall address(ext_call.return_data[0]).token0() with:
                gas gas_remaining wei
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
        if address(ext_call.return_data[0]) != arg2:
            _244 = mem[(32 * idx) + 128]
            mem[mem[64] + 4] = 10^18
            mem[mem[64] + 36] = Mask(112, 0, ext_call.return_data[32])
            mem[mem[64] + 68] = Mask(112, 0, ext_call.return_data[0])
            require ext_code.size(address(_244))
            staticcall address(_244).getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                    gas gas_remaining wei
                   args 10^18, ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx < mem[96]
            if ext_call.return_data[0] <= t:
                _266 = mem[(32 * idx) + 128]
                mem[mem[64] + 4] = 10^18
                mem[mem[64] + 36] = Mask(112, 0, ext_call.return_data[0])
                mem[mem[64] + 68] = Mask(112, 0, ext_call.return_data[32])
                require ext_code.size(address(_266))
                staticcall address(_266).getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args 10^18, ext_call.return_data[0] << 144, Mask(112, 0, ext_call.return_data[32])
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
                mem[(32 * arg1.length) + 1280] = mem[(32 * idx) + 140 len 20]
                mem[mem[(32 * arg1.length) + 1312]] = Mask(112, 0, ext_call.return_data[32])
                mem[mem[(32 * arg1.length) + 1312] + 32] = Mask(112, 0, ext_call.return_data[0])
                idx = idx + 1
                s = ext_call.return_data[0]
                t = t
                continue 
            mem[(32 * arg1.length) + 1152] = mem[(32 * idx) + 140 len 20]
            mem[mem[(32 * arg1.length) + 1184]] = Mask(112, 0, ext_call.return_data[32])
            mem[mem[(32 * arg1.length) + 1184] + 32] = Mask(112, 0, ext_call.return_data[0])
            require idx < mem[96]
            _285 = mem[(32 * idx) + 128]
            mem[mem[64] + 4] = 10^18
            mem[mem[64] + 36] = Mask(112, 0, ext_call.return_data[0])
            mem[mem[64] + 68] = Mask(112, 0, ext_call.return_data[32])
            require ext_code.size(address(_285))
            staticcall address(_285).getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                    gas gas_remaining wei
                   args 10^18, ext_call.return_data[0] << 144, Mask(112, 0, ext_call.return_data[32])
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
            mem[(32 * arg1.length) + 1280] = mem[(32 * idx) + 140 len 20]
            mem[mem[(32 * arg1.length) + 1312]] = Mask(112, 0, ext_call.return_data[32])
            mem[mem[(32 * arg1.length) + 1312] + 32] = Mask(112, 0, ext_call.return_data[0])
        else:
            _247 = mem[(32 * idx) + 128]
            mem[mem[64] + 4] = 10^18
            mem[mem[64] + 36] = Mask(112, 0, ext_call.return_data[0])
            mem[mem[64] + 68] = Mask(112, 0, ext_call.return_data[32])
            require ext_code.size(address(_247))
            staticcall address(_247).getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                    gas gas_remaining wei
                   args 10^18, ext_call.return_data[0] << 144, Mask(112, 0, ext_call.return_data[32])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx < mem[96]
            if ext_call.return_data[0] <= t:
                _272 = mem[(32 * idx) + 128]
                mem[mem[64] + 4] = 10^18
                mem[mem[64] + 36] = Mask(112, 0, ext_call.return_data[32])
                mem[mem[64] + 68] = Mask(112, 0, ext_call.return_data[0])
                require ext_code.size(address(_272))
                staticcall address(_272).getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
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
                mem[(32 * arg1.length) + 1280] = mem[(32 * idx) + 140 len 20]
                mem[mem[(32 * arg1.length) + 1312]] = Mask(112, 0, ext_call.return_data[0])
                mem[mem[(32 * arg1.length) + 1312] + 32] = Mask(112, 0, ext_call.return_data[32])
                idx = idx + 1
                s = ext_call.return_data[0]
                t = t
                continue 
            mem[(32 * arg1.length) + 1152] = mem[(32 * idx) + 140 len 20]
            mem[mem[(32 * arg1.length) + 1184]] = Mask(112, 0, ext_call.return_data[0])
            mem[mem[(32 * arg1.length) + 1184] + 32] = Mask(112, 0, ext_call.return_data[32])
            require idx < mem[96]
            _289 = mem[(32 * idx) + 128]
            mem[mem[64] + 4] = 10^18
            mem[mem[64] + 36] = Mask(112, 0, ext_call.return_data[32])
            mem[mem[64] + 68] = Mask(112, 0, ext_call.return_data[0])
            require ext_code.size(address(_289))
            staticcall address(_289).getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
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
            mem[(32 * arg1.length) + 1280] = mem[(32 * idx) + 140 len 20]
            mem[mem[(32 * arg1.length) + 1312]] = Mask(112, 0, ext_call.return_data[0])
            mem[mem[(32 * arg1.length) + 1312] + 32] = Mask(112, 0, ext_call.return_data[32])
        idx = idx + 1
        s = ext_call.return_data[0]
        t = ext_call.return_data[0]
        continue 
    if mem[(32 * arg1.length) + 1164 len 20] == mem[(32 * arg1.length) + 1292 len 20]:
        revert with 0, 'markets are the same'
    _213 = mem[64]
    mem[64] = mem[64] + 128
    mem[_213] = 0
    mem[_213 + 32] = 0
    _215 = mem[64]
    mem[64] = mem[64] + 64
    mem[_215] = 0
    _219 = mem[64]
    mem[64] = mem[64] + 64
    mem[_219] = 0
    mem[_219 + 32] = 0
    mem[_215 + 32] = _219
    mem[_213 + 64] = _215
    _224 = mem[64]
    mem[64] = mem[64] + 64
    mem[_224] = 0
    _225 = mem[64]
    mem[64] = mem[64] + 64
    mem[_225] = 0
    mem[_225 + 32] = 0
    mem[_224 + 32] = _225
    mem[_213 + 96] = _224
    mem[_213] = 0
    mem[_213 + 32] = 0
    if not arg4:
        s = var97005
        while var105003 < var105001 + 1:
            if var113001 / 10^18 != var113003:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _1526 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1526] = 26
            mem[_1526 + 32] = 'SafeMath: division by zero'
            s = var117001
            t = var117008
            while arg5 > 0:
                require arg5
                _1535 = mem[(32 * arg1.length) + 1152]
                _1537 = mem[mem[(32 * arg1.length) + 1184]]
                _1539 = mem[mem[(32 * arg1.length) + 1184] + 32]
                mem[mem[64] + 4] = s / arg5
                mem[mem[64] + 36] = Mask(112, 0, _1537)
                mem[mem[64] + 68] = Mask(112, 0, _1539)
                require ext_code.size(address(_1535))
                staticcall address(_1535).getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args s / arg5, _1537 << 144, Mask(112, 0, _1539)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                _1558 = mem[(32 * arg1.length) + 1280]
                _1560 = mem[mem[(32 * arg1.length) + 1312] + 32]
                _1562 = mem[mem[(32 * arg1.length) + 1312]]
                mem[mem[64] + 4] = ext_call.return_data[0]
                mem[mem[64] + 36] = Mask(112, 0, _1560)
                mem[mem[64] + 68] = Mask(112, 0, _1562)
                require ext_code.size(address(_1558))
                staticcall address(_1558).getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args ext_call.return_data[0], _1560 << 144, Mask(112, 0, _1562)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if s / arg5 > ext_call.return_data[0]:
                    mem[_213 + 64] = (32 * arg1.length) + 1152
                    mem[_213 + 96] = (32 * arg1.length) + 1280
                    _1581 = mem[_213 + 32]
                    mem[mem[64]] = mem[_213]
                    return mem[mem[64]], _1581
                _1578 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1578] = 30
                mem[_1578 + 32] = 'SafeMath: subtraction overflow'
                if ext_call.return_data[0] - (s / arg5) < mem[_213]:
                    mem[_213 + 64] = (32 * arg1.length) + 1152
                    mem[_213 + 96] = (32 * arg1.length) + 1280
                    _1593 = mem[_213 + 32]
                    mem[mem[64]] = mem[_213]
                    return mem[mem[64]], _1593
                if ext_call.return_data[0] - (s / arg5) <= mem[_213]:
                    if not arg4:
                        _1526 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1526] = 26
                        mem[_1526 + 32] = 'SafeMath: division by zero'
                        s = t + 1
                        continue 
                    require arg4
                    if arg4 * arg5 / arg4 != arg5:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if t >= arg4 * arg5:
                        mem[_213 + 64] = (32 * arg1.length) + 1152
                        mem[_213 + 96] = (32 * arg1.length) + 1280
                        _1611 = mem[_213 + 32]
                        mem[mem[64]] = mem[_213]
                        return mem[mem[64]], _1611
                else:
                    mem[_213] = ext_call.return_data[0] - (s / arg5)
                    mem[_213 + 32] = s / arg5
                    if not arg4:
                        _1526 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1526] = 26
                        mem[_1526 + 32] = 'SafeMath: division by zero'
                        s = t + 1
                        continue 
                    require arg4
                    if arg4 * arg5 / arg4 != arg5:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if t >= arg4 * arg5:
                        return ext_call.return_data[0] - (s / arg5), s / arg5
                ('lt', ('var', 2), ('mul', ('param', 'arg4'), ('param', 'arg5')))
                if (10^18 * t) + 10^18 / 10^18 != t + 1:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1526 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1526] = 26
                mem[_1526 + 32] = 'SafeMath: division by zero'
                s = (10^18 * t) + 10^18
                t = t + 1
                continue 
            _1528 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = mem[_1526]
            _1530 = mem[_1526]
            idx = 0
            while idx < _1530:
                mem[_1528 + idx + 68] = mem[_1526 + idx + 32]
                idx = idx + 32
                continue 
            if not _1530 % 32:
                revert with memory
                  from mem[64]
                   len _1530 + _1528 + -mem[64] + 68
            mem[floor32(_1530) + _1528 + 68] = mem[floor32(_1530) + _1528 + -(_1530 % 32) + 100 len _1530 % 32]
            revert with memory
              from mem[64]
               len floor32(_1530) + _1528 + -mem[64] + 100
        return 0
    require arg4
    if arg4 * arg5 / arg4 != arg5:
        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
    if var107003 >= var107001 + 1:
        return 0
    if var115001 / 10^18 != var115003:
        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
    _1713 = mem[64]
    mem[64] = mem[64] + 64
    mem[_1713] = 26
    mem[_1713 + 32] = 'SafeMath: division by zero'
    s = var119001
    t = var119008
    while arg5 > 0:
        require arg5
        _1718 = mem[(32 * arg1.length) + 1152]
        _1720 = mem[mem[(32 * arg1.length) + 1184]]
        _1722 = mem[mem[(32 * arg1.length) + 1184] + 32]
        mem[mem[64] + 4] = s / arg5
        mem[mem[64] + 36] = Mask(112, 0, _1720)
        mem[mem[64] + 68] = Mask(112, 0, _1722)
        require ext_code.size(address(_1718))
        staticcall address(_1718).getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                gas gas_remaining wei
               args s / arg5, _1720 << 144, Mask(112, 0, _1722)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        _1730 = mem[(32 * arg1.length) + 1280]
        _1732 = mem[mem[(32 * arg1.length) + 1312] + 32]
        _1734 = mem[mem[(32 * arg1.length) + 1312]]
        mem[mem[64] + 4] = ext_call.return_data[0]
        mem[mem[64] + 36] = Mask(112, 0, _1732)
        mem[mem[64] + 68] = Mask(112, 0, _1734)
        require ext_code.size(address(_1730))
        staticcall address(_1730).getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                gas gas_remaining wei
               args ext_call.return_data[0], _1732 << 144, Mask(112, 0, _1734)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if s / arg5 > ext_call.return_data[0]:
            mem[_213 + 64] = (32 * arg1.length) + 1152
            mem[_213 + 96] = (32 * arg1.length) + 1280
            _1741 = mem[_213 + 32]
            mem[mem[64]] = mem[_213]
            return mem[mem[64]], _1741
        _1739 = mem[64]
        mem[64] = mem[64] + 64
        mem[_1739] = 30
        mem[_1739 + 32] = 'SafeMath: subtraction overflow'
        if ext_call.return_data[0] - (s / arg5) < mem[_213]:
            mem[_213 + 64] = (32 * arg1.length) + 1152
            mem[_213 + 96] = (32 * arg1.length) + 1280
            _1747 = mem[_213 + 32]
            mem[mem[64]] = mem[_213]
            return mem[mem[64]], _1747
        if ext_call.return_data[0] - (s / arg5) <= mem[_213]:
            if not arg4:
                if t + 1 >= 1:
                    mem[_213 + 64] = (32 * arg1.length) + 1152
                    mem[_213 + 96] = (32 * arg1.length) + 1280
                    _1755 = mem[_213 + 32]
                    mem[mem[64]] = mem[_213]
                    return mem[mem[64]], _1755
            else:
                require arg4
                if arg4 * arg5 / arg4 != arg5:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if t >= arg4 * arg5:
                    mem[_213 + 64] = (32 * arg1.length) + 1152
                    mem[_213 + 96] = (32 * arg1.length) + 1280
                    _1761 = mem[_213 + 32]
                    mem[mem[64]] = mem[_213]
                    return mem[mem[64]], _1761
        else:
            mem[_213] = ext_call.return_data[0] - (s / arg5)
            mem[_213 + 32] = s / arg5
            if not arg4:
                if t + 1 >= 1:
                    return ext_call.return_data[0] - (s / arg5), s / arg5
            else:
                require arg4
                if arg4 * arg5 / arg4 != arg5:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if t >= arg4 * arg5:
                    return ext_call.return_data[0] - (s / arg5), s / arg5
        if (10^18 * t) + 10^18 / 10^18 != t + 1:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _1713 = mem[64]
        mem[64] = mem[64] + 64
        mem[_1713] = 26
        mem[_1713 + 32] = 'SafeMath: division by zero'
        s = (10^18 * t) + 10^18
        t = t + 1
        continue 
    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = 32
    mem[mem[64] + 36] = mem[_1713]
    _1716 = mem[_1713]
    mem[mem[64] + 68 len ceil32(mem[_1713])] = mem[_1713 + 32 len ceil32(mem[_1713])]
    if not _1716 % 32:
        revert with 0, 32, mem[mem[64] + 36 len _1716 + 32]
    mem[floor32(_1716) + mem[64] + 68] = mem[floor32(_1716) + mem[64] + -(_1716 % 32) + 100 len _1716 % 32]
    revert with 0, 32, mem[mem[64] + 36 len floor32(_1716) + 64]
}



}
