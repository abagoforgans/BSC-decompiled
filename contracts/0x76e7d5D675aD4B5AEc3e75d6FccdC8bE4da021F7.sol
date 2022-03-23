contract main {




// =====================  Runtime code  =====================


uint32 stor0;
address owner;
uint256 stor0;
address WETHAddress;

function owner() {
    return address(owner)
}

function WETH() {
    return WETHAddress
}

function _fallback() payable {
    revert
}

function claim(uint256 arg1) {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 'Balancer: FORBIDDEN'
    if arg1 < eth.balance(this.address):
        if arg1:
            call address(owner) with:
               value arg1 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    else:
        if eth.balance(this.address):
            call address(owner) with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
}

function withdraw(uint256 arg1) {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 'Balancer: FORBIDDEN'
    require ext_code.size(WETHAddress)
    staticcall WETHAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg1 < ext_call.return_data[0]:
        if arg1:
            require ext_code.size(WETHAddress)
            call WETHAddress.0x2e1a7d4d with:
                 gas gas_remaining wei
                args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            call address(owner) with:
               value arg1 wei
                 gas 2300 * is_zero(value) wei
    else:
        if ext_call.return_data[0]:
            require ext_code.size(WETHAddress)
            call WETHAddress.0x2e1a7d4d with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            call address(owner) with:
               value ext_call.return_data[0] wei
                 gas 2300 * is_zero(value) wei
}

function claimToken(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if address(owner) != msg.sender:
        revert with 0, 'Balancer: FORBIDDEN'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg2 < ext_call.return_data[0]:
        if arg2:
            mem[196 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), Mask(224, 32, arg2) >> 32
            call arg1 with:
               funct uint32(stor0)
                 gas gas_remaining wei
                args Mask(224, 32, arg2) << 224, mem[260 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                if not unknown_0xa9059cbb(?????), Mask(224, 0, stor0):
                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
            else:
                mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[228]:
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
    else:
        if ext_call.return_data[0]:
            mem[196 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0 len 28]
            call arg1 with:
               funct uint32(stor0)
                 gas gas_remaining wei
                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[260 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                if not unknown_0xa9059cbb(?????), Mask(224, 0, stor0):
                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
            else:
                mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[228]:
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
}

function sub_ff4b9f10(?) {
    require calldata.size - 4 >= 128
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + (32 * arg4.length) + 36 <= calldata.size
    mem[96] = arg3.length
    mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg3.length) + 128] = arg4.length
    mem[(32 * arg3.length) + 160 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    if arg3.length < 2:
        revert with 0, 'BalancerLibrary: INVALID_PAIRS'
    require arg3.length + 1 <= test266151307()
    mem[(32 * arg4.length) + (32 * arg3.length) + 160] = arg3.length + 1
    if not arg3.length + 1:
        require 0 < arg3.length + 1
        mem[(32 * arg4.length) + (32 * arg3.length) + 192] = arg2
        require arg3.length <= test266151307()
        mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg3.length + 1) + 192] = arg3.length
        mem[64] = (32 * arg4.length) + (64 * arg3.length) + (32 * arg3.length + 1) + 224
        if not arg3.length:
            idx = 0
            s = arg1
            while idx < arg3.length:
                require idx < arg3.length
                _452 = mem[(32 * idx) + 128]
                require ext_code.size(mem[(32 * idx) + 140 len 20])
                staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                        gas gas_remaining wei
                mem[(32 * arg4.length) + (64 * arg3.length) + (32 * arg3.length + 1) + 224 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_code.size(address(_452))
                staticcall address(_452).token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(_452))
                staticcall address(_452).token1() with:
                        gas gas_remaining wei
                mem[(32 * arg4.length) + (64 * arg3.length) + (32 * arg3.length + 1) + 224] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require idx < mem[(32 * arg4.length) + (32 * arg3.length) + 160]
                require idx < mem[(32 * arg3.length) + 128]
                if mem[(32 * idx) + (32 * arg4.length) + (32 * arg3.length) + 192] <= 0:
                    revert with 0, 
                                32,
                                42,
                                0x5942616c616e6365724c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                mem[(32 * arg4.length) + (64 * arg3.length) + (32 * arg3.length + 1) + 334 len 22]
                if address(ext_call.return_data[0]) == address(s):
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 
                                    32,
                                    39,
                                    0xfe42616c616e6365724c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                    mem[(32 * arg4.length) + (64 * arg3.length) + (32 * arg3.length + 1) + 331 len 25]
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 
                                    32,
                                    39,
                                    0xfe42616c616e6365724c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                    mem[(32 * arg4.length) + (64 * arg3.length) + (32 * arg3.length + 1) + 331 len 25]
                    if -mem[(32 * idx) + (32 * arg3.length) + 160] + 1000 > 1000:
                        revert with 0, 'ds-math-sub-underflow'
                    if not -mem[(32 * idx) + (32 * arg3.length) + 160] + 1000:
                        if Mask(112, 0, ext_call.return_data[32]):
                            require Mask(112, 0, ext_call.return_data[32])
                            if 0 / Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                        if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if 1000 * Mask(112, 0, ext_call.return_data[0]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-add-overflow'
                        require 1000 * Mask(112, 0, ext_call.return_data[0])
                        require idx + 1 < mem[(32 * arg4.length) + (32 * arg3.length) + 160]
                        mem[(32 * idx + 1) + (32 * arg4.length) + (32 * arg3.length) + 192] = 0 / 1000 * Mask(112, 0, ext_call.return_data[0])
                    else:
                        require -mem[(32 * idx) + (32 * arg3.length) + 160] + 1000
                        if (1000 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg3.length) + 192]) - (mem[(32 * idx) + (32 * arg3.length) + 160] * mem[(32 * idx) + (32 * arg4.length) + (32 * arg3.length) + 192]) / -mem[(32 * idx) + (32 * arg3.length) + 160] + 1000 != mem[(32 * idx) + (32 * arg4.length) + (32 * arg3.length) + 192]:
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[32]):
                            if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg3.length) + 192]) - (mem[(32 * idx) + (32 * arg3.length) + 160] * mem[(32 * idx) + (32 * arg4.length) + (32 * arg3.length) + 192]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg3.length) + 192]) - (mem[(32 * idx) + (32 * arg3.length) + 160] * mem[(32 * idx) + (32 * arg4.length) + (32 * arg3.length) + 192])
                            require idx + 1 < mem[(32 * arg4.length) + (32 * arg3.length) + 160]
                            mem[(32 * idx + 1) + (32 * arg4.length) + (32 * arg3.length) + 192] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg3.length) + 192]) - (mem[(32 * idx) + (32 * arg3.length) + 160] * mem[(32 * idx) + (32 * arg4.length) + (32 * arg3.length) + 192])
                        else:
                            require Mask(112, 0, ext_call.return_data[32])
                            if (1000 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg3.length) + 192] * Mask(112, 0, ext_call.return_data[32])) - (mem[(32 * idx) + (32 * arg3.length) + 160] * mem[(32 * idx) + (32 * arg4.length) + (32 * arg3.length) + 192] * Mask(112, 0, ext_call.return_data[32])) / Mask(112, 0, ext_call.return_data[32]) != (1000 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg3.length) + 192]) - (mem[(32 * idx) + (32 * arg3.length) + 160] * mem[(32 * idx) + (32 * arg4.length) + (32 * arg3.length) + 192]):
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg3.length) + 192]) - (mem[(32 * idx) + (32 * arg3.length) + 160] * mem[(32 * idx) + (32 * arg4.length) + (32 * arg3.length) + 192]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg3.length) + 192]) - (mem[(32 * idx) + (32 * arg3.length) + 160] * mem[(32 * idx) + (32 * arg4.length) + (32 * arg3.length) + 192])
                            require idx + 1 < mem[(32 * arg4.length) + (32 * arg3.length) + 160]
                            mem[(32 * idx + 1) + (32 * arg4.length) + (32 * arg3.length) + 192] = (1000 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg3.length) + 192] * Mask(112, 0, ext_call.return_data[32])) - (mem[(32 * idx) + (32 * arg3.length) + 160] * mem[(32 * idx) + (32 * arg4.length) + (32 * arg3.length) + 192] * Mask(112, 0, ext_call.return_data[32])) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg3.length) + 192]) - (mem[(32 * idx) + (32 * arg3.length) + 160] * mem[(32 * idx) + (32 * arg4.length) + (32 * arg3.length) + 192])
                    require idx < mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg3.length + 1) + 192]
                    mem[(32 * idx) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg3.length + 1) + 224] = 1
                else:
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 
                                    32,
                                    39,
                                    0xfe42616c616e6365724c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                    mem[(32 * arg4.length) + (64 * arg3.length) + (32 * arg3.length + 1) + 331 len 25]
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 
                                    32,
                                    39,
                                    0xfe42616c616e6365724c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                    mem[(32 * arg4.length) + (64 * arg3.length) + (32 * arg3.length + 1) + 331 len 25]
                    if -mem[(32 * idx) + (32 * arg3.length) + 160] + 1000 > 1000:
                        revert with 0, 'ds-math-sub-underflow'
                    if not -mem[(32 * idx) + (32 * arg3.length) + 160] + 1000:
                        if Mask(112, 0, ext_call.return_data[0]):
                            require Mask(112, 0, ext_call.return_data[0])
                            if 0 / Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                        if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-mul-overflow'
                        if 1000 * Mask(112, 0, ext_call.return_data[32]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-add-overflow'
                        require 1000 * Mask(112, 0, ext_call.return_data[32])
                        require idx + 1 < mem[(32 * arg4.length) + (32 * arg3.length) + 160]
                        mem[(32 * idx + 1) + (32 * arg4.length) + (32 * arg3.length) + 192] = 0 / 1000 * Mask(112, 0, ext_call.return_data[32])
                    else:
                        require -mem[(32 * idx) + (32 * arg3.length) + 160] + 1000
                        if (1000 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg3.length) + 192]) - (mem[(32 * idx) + (32 * arg3.length) + 160] * mem[(32 * idx) + (32 * arg4.length) + (32 * arg3.length) + 192]) / -mem[(32 * idx) + (32 * arg3.length) + 160] + 1000 != mem[(32 * idx) + (32 * arg4.length) + (32 * arg3.length) + 192]:
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[0]):
                            if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg3.length) + 192]) - (mem[(32 * idx) + (32 * arg3.length) + 160] * mem[(32 * idx) + (32 * arg4.length) + (32 * arg3.length) + 192]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg3.length) + 192]) - (mem[(32 * idx) + (32 * arg3.length) + 160] * mem[(32 * idx) + (32 * arg4.length) + (32 * arg3.length) + 192])
                            require idx + 1 < mem[(32 * arg4.length) + (32 * arg3.length) + 160]
                            mem[(32 * idx + 1) + (32 * arg4.length) + (32 * arg3.length) + 192] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg3.length) + 192]) - (mem[(32 * idx) + (32 * arg3.length) + 160] * mem[(32 * idx) + (32 * arg4.length) + (32 * arg3.length) + 192])
                        else:
                            require Mask(112, 0, ext_call.return_data[0])
                            if (1000 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg3.length) + 192] * Mask(112, 0, ext_call.return_data[0])) - (mem[(32 * idx) + (32 * arg3.length) + 160] * mem[(32 * idx) + (32 * arg4.length) + (32 * arg3.length) + 192] * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[0]) != (1000 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg3.length) + 192]) - (mem[(32 * idx) + (32 * arg3.length) + 160] * mem[(32 * idx) + (32 * arg4.length) + (32 * arg3.length) + 192]):
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg3.length) + 192]) - (mem[(32 * idx) + (32 * arg3.length) + 160] * mem[(32 * idx) + (32 * arg4.length) + (32 * arg3.length) + 192]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg3.length) + 192]) - (mem[(32 * idx) + (32 * arg3.length) + 160] * mem[(32 * idx) + (32 * arg4.length) + (32 * arg3.length) + 192])
                            require idx + 1 < mem[(32 * arg4.length) + (32 * arg3.length) + 160]
                            mem[(32 * idx + 1) + (32 * arg4.length) + (32 * arg3.length) + 192] = (1000 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg3.length) + 192] * Mask(112, 0, ext_call.return_data[0])) - (mem[(32 * idx) + (32 * arg3.length) + 160] * mem[(32 * idx) + (32 * arg4.length) + (32 * arg3.length) + 192] * Mask(112, 0, ext_call.return_data[0])) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg3.length) + 192]) - (mem[(32 * idx) + (32 * arg3.length) + 160] * mem[(32 * idx) + (32 * arg4.length) + (32 * arg3.length) + 192])
                    require idx < mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg3.length + 1) + 192]
                    mem[(32 * idx) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg3.length + 1) + 224] = 0
                idx = idx + 1
                s = ext_call.return_data[0]
                continue 
        else:
            mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg3.length + 1) + 224 len 32 * arg3.length] = call.data[calldata.size len 32 * arg3.length]
            idx = 0
            s = arg1
            while idx < arg3.length:
                require idx < arg3.length
                _455 = mem[(32 * idx) + 128]
                require ext_code.size(mem[(32 * idx) + 140 len 20])
                staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                        gas gas_remaining wei
                mem[(32 * arg4.length) + (64 * arg3.length) + (32 * arg3.length + 1) + 224 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_code.size(address(_455))
                staticcall address(_455).token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(_455))
                staticcall address(_455).token1() with:
                        gas gas_remaining wei
                mem[(32 * arg4.length) + (64 * arg3.length) + (32 * arg3.length + 1) + 224] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require idx < mem[(32 * arg4.length) + (32 * arg3.length) + 160]
                require idx < mem[(32 * arg3.length) + 128]
                if mem[(32 * idx) + (32 * arg4.length) + (32 * arg3.length) + 192] <= 0:
                    revert with 0, 
                                32,
                                42,
                                0x5942616c616e6365724c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                mem[(32 * arg4.length) + (64 * arg3.length) + (32 * arg3.length + 1) + 334 len 22]
                if address(ext_call.return_data[0]) == address(s):
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 
                                    32,
                                    39,
                                    0xfe42616c616e6365724c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                    mem[(32 * arg4.length) + (64 * arg3.length) + (32 * arg3.length + 1) + 331 len 25]
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 
                                    32,
                                    39,
                                    0xfe42616c616e6365724c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                    mem[(32 * arg4.length) + (64 * arg3.length) + (32 * arg3.length + 1) + 331 len 25]
                    if -mem[(32 * idx) + (32 * arg3.length) + 160] + 1000 > 1000:
                        revert with 0, 'ds-math-sub-underflow'
                    if not -mem[(32 * idx) + (32 * arg3.length) + 160] + 1000:
                        if Mask(112, 0, ext_call.return_data[32]):
                            require Mask(112, 0, ext_call.return_data[32])
                            if 0 / Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                        if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if 1000 * Mask(112, 0, ext_call.return_data[0]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-add-overflow'
                        require 1000 * Mask(112, 0, ext_call.return_data[0])
                        require idx + 1 < mem[(32 * arg4.length) + (32 * arg3.length) + 160]
                        mem[(32 * idx + 1) + (32 * arg4.length) + (32 * arg3.length) + 192] = 0 / 1000 * Mask(112, 0, ext_call.return_data[0])
                    else:
                        require -mem[(32 * idx) + (32 * arg3.length) + 160] + 1000
                        if (1000 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg3.length) + 192]) - (mem[(32 * idx) + (32 * arg3.length) + 160] * mem[(32 * idx) + (32 * arg4.length) + (32 * arg3.length) + 192]) / -mem[(32 * idx) + (32 * arg3.length) + 160] + 1000 != mem[(32 * idx) + (32 * arg4.length) + (32 * arg3.length) + 192]:
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[32]):
                            if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg3.length) + 192]) - (mem[(32 * idx) + (32 * arg3.length) + 160] * mem[(32 * idx) + (32 * arg4.length) + (32 * arg3.length) + 192]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg3.length) + 192]) - (mem[(32 * idx) + (32 * arg3.length) + 160] * mem[(32 * idx) + (32 * arg4.length) + (32 * arg3.length) + 192])
                            require idx + 1 < mem[(32 * arg4.length) + (32 * arg3.length) + 160]
                            mem[(32 * idx + 1) + (32 * arg4.length) + (32 * arg3.length) + 192] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg3.length) + 192]) - (mem[(32 * idx) + (32 * arg3.length) + 160] * mem[(32 * idx) + (32 * arg4.length) + (32 * arg3.length) + 192])
                        else:
                            require Mask(112, 0, ext_call.return_data[32])
                            if (1000 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg3.length) + 192] * Mask(112, 0, ext_call.return_data[32])) - (mem[(32 * idx) + (32 * arg3.length) + 160] * mem[(32 * idx) + (32 * arg4.length) + (32 * arg3.length) + 192] * Mask(112, 0, ext_call.return_data[32])) / Mask(112, 0, ext_call.return_data[32]) != (1000 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg3.length) + 192]) - (mem[(32 * idx) + (32 * arg3.length) + 160] * mem[(32 * idx) + (32 * arg4.length) + (32 * arg3.length) + 192]):
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg3.length) + 192]) - (mem[(32 * idx) + (32 * arg3.length) + 160] * mem[(32 * idx) + (32 * arg4.length) + (32 * arg3.length) + 192]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg3.length) + 192]) - (mem[(32 * idx) + (32 * arg3.length) + 160] * mem[(32 * idx) + (32 * arg4.length) + (32 * arg3.length) + 192])
                            require idx + 1 < mem[(32 * arg4.length) + (32 * arg3.length) + 160]
                            mem[(32 * idx + 1) + (32 * arg4.length) + (32 * arg3.length) + 192] = (1000 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg3.length) + 192] * Mask(112, 0, ext_call.return_data[32])) - (mem[(32 * idx) + (32 * arg3.length) + 160] * mem[(32 * idx) + (32 * arg4.length) + (32 * arg3.length) + 192] * Mask(112, 0, ext_call.return_data[32])) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg3.length) + 192]) - (mem[(32 * idx) + (32 * arg3.length) + 160] * mem[(32 * idx) + (32 * arg4.length) + (32 * arg3.length) + 192])
                    require idx < mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg3.length + 1) + 192]
                    mem[(32 * idx) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg3.length + 1) + 224] = 1
                else:
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 
                                    32,
                                    39,
                                    0xfe42616c616e6365724c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                    mem[(32 * arg4.length) + (64 * arg3.length) + (32 * arg3.length + 1) + 331 len 25]
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 
                                    32,
                                    39,
                                    0xfe42616c616e6365724c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                    mem[(32 * arg4.length) + (64 * arg3.length) + (32 * arg3.length + 1) + 331 len 25]
                    if -mem[(32 * idx) + (32 * arg3.length) + 160] + 1000 > 1000:
                        revert with 0, 'ds-math-sub-underflow'
                    if not -mem[(32 * idx) + (32 * arg3.length) + 160] + 1000:
                        if Mask(112, 0, ext_call.return_data[0]):
                            require Mask(112, 0, ext_call.return_data[0])
                            if 0 / Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                        if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-mul-overflow'
                        if 1000 * Mask(112, 0, ext_call.return_data[32]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-add-overflow'
                        require 1000 * Mask(112, 0, ext_call.return_data[32])
                        require idx + 1 < mem[(32 * arg4.length) + (32 * arg3.length) + 160]
                        mem[(32 * idx + 1) + (32 * arg4.length) + (32 * arg3.length) + 192] = 0 / 1000 * Mask(112, 0, ext_call.return_data[32])
                    else:
                        require -mem[(32 * idx) + (32 * arg3.length) + 160] + 1000
                        if (1000 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg3.length) + 192]) - (mem[(32 * idx) + (32 * arg3.length) + 160] * mem[(32 * idx) + (32 * arg4.length) + (32 * arg3.length) + 192]) / -mem[(32 * idx) + (32 * arg3.length) + 160] + 1000 != mem[(32 * idx) + (32 * arg4.length) + (32 * arg3.length) + 192]:
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[0]):
                            if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg3.length) + 192]) - (mem[(32 * idx) + (32 * arg3.length) + 160] * mem[(32 * idx) + (32 * arg4.length) + (32 * arg3.length) + 192]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg3.length) + 192]) - (mem[(32 * idx) + (32 * arg3.length) + 160] * mem[(32 * idx) + (32 * arg4.length) + (32 * arg3.length) + 192])
                            require idx + 1 < mem[(32 * arg4.length) + (32 * arg3.length) + 160]
                            mem[(32 * idx + 1) + (32 * arg4.length) + (32 * arg3.length) + 192] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg3.length) + 192]) - (mem[(32 * idx) + (32 * arg3.length) + 160] * mem[(32 * idx) + (32 * arg4.length) + (32 * arg3.length) + 192])
                        else:
                            require Mask(112, 0, ext_call.return_data[0])
                            if (1000 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg3.length) + 192] * Mask(112, 0, ext_call.return_data[0])) - (mem[(32 * idx) + (32 * arg3.length) + 160] * mem[(32 * idx) + (32 * arg4.length) + (32 * arg3.length) + 192] * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[0]) != (1000 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg3.length) + 192]) - (mem[(32 * idx) + (32 * arg3.length) + 160] * mem[(32 * idx) + (32 * arg4.length) + (32 * arg3.length) + 192]):
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg3.length) + 192]) - (mem[(32 * idx) + (32 * arg3.length) + 160] * mem[(32 * idx) + (32 * arg4.length) + (32 * arg3.length) + 192]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg3.length) + 192]) - (mem[(32 * idx) + (32 * arg3.length) + 160] * mem[(32 * idx) + (32 * arg4.length) + (32 * arg3.length) + 192])
                            require idx + 1 < mem[(32 * arg4.length) + (32 * arg3.length) + 160]
                            mem[(32 * idx + 1) + (32 * arg4.length) + (32 * arg3.length) + 192] = (1000 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg3.length) + 192] * Mask(112, 0, ext_call.return_data[0])) - (mem[(32 * idx) + (32 * arg3.length) + 160] * mem[(32 * idx) + (32 * arg4.length) + (32 * arg3.length) + 192] * Mask(112, 0, ext_call.return_data[0])) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg3.length) + 192]) - (mem[(32 * idx) + (32 * arg3.length) + 160] * mem[(32 * idx) + (32 * arg4.length) + (32 * arg3.length) + 192])
                    require idx < mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg3.length + 1) + 192]
                    mem[(32 * idx) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg3.length + 1) + 224] = 0
                idx = idx + 1
                s = ext_call.return_data[0]
                continue 
    else:
        mem[(32 * arg4.length) + (32 * arg3.length) + 192 len 32 * arg3.length + 1] = call.data[calldata.size len 32 * arg3.length + 1]
        require 0 < arg3.length + 1
        mem[(32 * arg4.length) + (32 * arg3.length) + 192] = arg2
        require arg3.length <= test266151307()
        mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg3.length + 1) + 192] = arg3.length
        mem[64] = (32 * arg4.length) + (64 * arg3.length) + (32 * arg3.length + 1) + 224
        if not arg3.length:
            idx = 0
            s = arg1
            while idx < arg3.length:
                require idx < arg3.length
                _458 = mem[(32 * idx) + 128]
                require ext_code.size(mem[(32 * idx) + 140 len 20])
                staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                        gas gas_remaining wei
                mem[(32 * arg4.length) + (64 * arg3.length) + (32 * arg3.length + 1) + 224 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_code.size(address(_458))
                staticcall address(_458).token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(_458))
                staticcall address(_458).token1() with:
                        gas gas_remaining wei
                mem[(32 * arg4.length) + (64 * arg3.length) + (32 * arg3.length + 1) + 224] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require idx < mem[(32 * arg4.length) + (32 * arg3.length) + 160]
                require idx < mem[(32 * arg3.length) + 128]
                if mem[(32 * idx) + (32 * arg4.length) + (32 * arg3.length) + 192] <= 0:
                    revert with 0, 
                                32,
                                42,
                                0x5942616c616e6365724c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                mem[(32 * arg4.length) + (64 * arg3.length) + (32 * arg3.length + 1) + 334 len 22]
                if address(ext_call.return_data[0]) == address(s):
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 
                                    32,
                                    39,
                                    0xfe42616c616e6365724c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                    mem[(32 * arg4.length) + (64 * arg3.length) + (32 * arg3.length + 1) + 331 len 25]
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 
                                    32,
                                    39,
                                    0xfe42616c616e6365724c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                    mem[(32 * arg4.length) + (64 * arg3.length) + (32 * arg3.length + 1) + 331 len 25]
                    if -mem[(32 * idx) + (32 * arg3.length) + 160] + 1000 > 1000:
                        revert with 0, 'ds-math-sub-underflow'
                    if not -mem[(32 * idx) + (32 * arg3.length) + 160] + 1000:
                        if Mask(112, 0, ext_call.return_data[32]):
                            require Mask(112, 0, ext_call.return_data[32])
                            if 0 / Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                        if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if 1000 * Mask(112, 0, ext_call.return_data[0]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-add-overflow'
                        require 1000 * Mask(112, 0, ext_call.return_data[0])
                        require idx + 1 < mem[(32 * arg4.length) + (32 * arg3.length) + 160]
                        mem[(32 * idx + 1) + (32 * arg4.length) + (32 * arg3.length) + 192] = 0 / 1000 * Mask(112, 0, ext_call.return_data[0])
                    else:
                        require -mem[(32 * idx) + (32 * arg3.length) + 160] + 1000
                        if (1000 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg3.length) + 192]) - (mem[(32 * idx) + (32 * arg3.length) + 160] * mem[(32 * idx) + (32 * arg4.length) + (32 * arg3.length) + 192]) / -mem[(32 * idx) + (32 * arg3.length) + 160] + 1000 != mem[(32 * idx) + (32 * arg4.length) + (32 * arg3.length) + 192]:
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[32]):
                            if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg3.length) + 192]) - (mem[(32 * idx) + (32 * arg3.length) + 160] * mem[(32 * idx) + (32 * arg4.length) + (32 * arg3.length) + 192]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg3.length) + 192]) - (mem[(32 * idx) + (32 * arg3.length) + 160] * mem[(32 * idx) + (32 * arg4.length) + (32 * arg3.length) + 192])
                            require idx + 1 < mem[(32 * arg4.length) + (32 * arg3.length) + 160]
                            mem[(32 * idx + 1) + (32 * arg4.length) + (32 * arg3.length) + 192] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg3.length) + 192]) - (mem[(32 * idx) + (32 * arg3.length) + 160] * mem[(32 * idx) + (32 * arg4.length) + (32 * arg3.length) + 192])
                        else:
                            require Mask(112, 0, ext_call.return_data[32])
                            if (1000 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg3.length) + 192] * Mask(112, 0, ext_call.return_data[32])) - (mem[(32 * idx) + (32 * arg3.length) + 160] * mem[(32 * idx) + (32 * arg4.length) + (32 * arg3.length) + 192] * Mask(112, 0, ext_call.return_data[32])) / Mask(112, 0, ext_call.return_data[32]) != (1000 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg3.length) + 192]) - (mem[(32 * idx) + (32 * arg3.length) + 160] * mem[(32 * idx) + (32 * arg4.length) + (32 * arg3.length) + 192]):
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg3.length) + 192]) - (mem[(32 * idx) + (32 * arg3.length) + 160] * mem[(32 * idx) + (32 * arg4.length) + (32 * arg3.length) + 192]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg3.length) + 192]) - (mem[(32 * idx) + (32 * arg3.length) + 160] * mem[(32 * idx) + (32 * arg4.length) + (32 * arg3.length) + 192])
                            require idx + 1 < mem[(32 * arg4.length) + (32 * arg3.length) + 160]
                            mem[(32 * idx + 1) + (32 * arg4.length) + (32 * arg3.length) + 192] = (1000 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg3.length) + 192] * Mask(112, 0, ext_call.return_data[32])) - (mem[(32 * idx) + (32 * arg3.length) + 160] * mem[(32 * idx) + (32 * arg4.length) + (32 * arg3.length) + 192] * Mask(112, 0, ext_call.return_data[32])) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg3.length) + 192]) - (mem[(32 * idx) + (32 * arg3.length) + 160] * mem[(32 * idx) + (32 * arg4.length) + (32 * arg3.length) + 192])
                    require idx < mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg3.length + 1) + 192]
                    mem[(32 * idx) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg3.length + 1) + 224] = 1
                else:
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 
                                    32,
                                    39,
                                    0xfe42616c616e6365724c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                    mem[(32 * arg4.length) + (64 * arg3.length) + (32 * arg3.length + 1) + 331 len 25]
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 
                                    32,
                                    39,
                                    0xfe42616c616e6365724c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                    mem[(32 * arg4.length) + (64 * arg3.length) + (32 * arg3.length + 1) + 331 len 25]
                    if -mem[(32 * idx) + (32 * arg3.length) + 160] + 1000 > 1000:
                        revert with 0, 'ds-math-sub-underflow'
                    if not -mem[(32 * idx) + (32 * arg3.length) + 160] + 1000:
                        if Mask(112, 0, ext_call.return_data[0]):
                            require Mask(112, 0, ext_call.return_data[0])
                            if 0 / Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                        if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-mul-overflow'
                        if 1000 * Mask(112, 0, ext_call.return_data[32]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-add-overflow'
                        require 1000 * Mask(112, 0, ext_call.return_data[32])
                        require idx + 1 < mem[(32 * arg4.length) + (32 * arg3.length) + 160]
                        mem[(32 * idx + 1) + (32 * arg4.length) + (32 * arg3.length) + 192] = 0 / 1000 * Mask(112, 0, ext_call.return_data[32])
                    else:
                        require -mem[(32 * idx) + (32 * arg3.length) + 160] + 1000
                        if (1000 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg3.length) + 192]) - (mem[(32 * idx) + (32 * arg3.length) + 160] * mem[(32 * idx) + (32 * arg4.length) + (32 * arg3.length) + 192]) / -mem[(32 * idx) + (32 * arg3.length) + 160] + 1000 != mem[(32 * idx) + (32 * arg4.length) + (32 * arg3.length) + 192]:
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[0]):
                            if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg3.length) + 192]) - (mem[(32 * idx) + (32 * arg3.length) + 160] * mem[(32 * idx) + (32 * arg4.length) + (32 * arg3.length) + 192]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg3.length) + 192]) - (mem[(32 * idx) + (32 * arg3.length) + 160] * mem[(32 * idx) + (32 * arg4.length) + (32 * arg3.length) + 192])
                            require idx + 1 < mem[(32 * arg4.length) + (32 * arg3.length) + 160]
                            mem[(32 * idx + 1) + (32 * arg4.length) + (32 * arg3.length) + 192] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg3.length) + 192]) - (mem[(32 * idx) + (32 * arg3.length) + 160] * mem[(32 * idx) + (32 * arg4.length) + (32 * arg3.length) + 192])
                        else:
                            require Mask(112, 0, ext_call.return_data[0])
                            if (1000 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg3.length) + 192] * Mask(112, 0, ext_call.return_data[0])) - (mem[(32 * idx) + (32 * arg3.length) + 160] * mem[(32 * idx) + (32 * arg4.length) + (32 * arg3.length) + 192] * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[0]) != (1000 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg3.length) + 192]) - (mem[(32 * idx) + (32 * arg3.length) + 160] * mem[(32 * idx) + (32 * arg4.length) + (32 * arg3.length) + 192]):
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg3.length) + 192]) - (mem[(32 * idx) + (32 * arg3.length) + 160] * mem[(32 * idx) + (32 * arg4.length) + (32 * arg3.length) + 192]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg3.length) + 192]) - (mem[(32 * idx) + (32 * arg3.length) + 160] * mem[(32 * idx) + (32 * arg4.length) + (32 * arg3.length) + 192])
                            require idx + 1 < mem[(32 * arg4.length) + (32 * arg3.length) + 160]
                            mem[(32 * idx + 1) + (32 * arg4.length) + (32 * arg3.length) + 192] = (1000 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg3.length) + 192] * Mask(112, 0, ext_call.return_data[0])) - (mem[(32 * idx) + (32 * arg3.length) + 160] * mem[(32 * idx) + (32 * arg4.length) + (32 * arg3.length) + 192] * Mask(112, 0, ext_call.return_data[0])) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg3.length) + 192]) - (mem[(32 * idx) + (32 * arg3.length) + 160] * mem[(32 * idx) + (32 * arg4.length) + (32 * arg3.length) + 192])
                    require idx < mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg3.length + 1) + 192]
                    mem[(32 * idx) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg3.length + 1) + 224] = 0
                idx = idx + 1
                s = ext_call.return_data[0]
                continue 
        else:
            mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg3.length + 1) + 224 len 32 * arg3.length] = call.data[calldata.size len 32 * arg3.length]
            idx = 0
            s = arg1
            while idx < arg3.length:
                require idx < arg3.length
                _461 = mem[(32 * idx) + 128]
                require ext_code.size(mem[(32 * idx) + 140 len 20])
                staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                        gas gas_remaining wei
                mem[(32 * arg4.length) + (64 * arg3.length) + (32 * arg3.length + 1) + 224 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_code.size(address(_461))
                staticcall address(_461).token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(_461))
                staticcall address(_461).token1() with:
                        gas gas_remaining wei
                mem[(32 * arg4.length) + (64 * arg3.length) + (32 * arg3.length + 1) + 224] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require idx < mem[(32 * arg4.length) + (32 * arg3.length) + 160]
                require idx < mem[(32 * arg3.length) + 128]
                if mem[(32 * idx) + (32 * arg4.length) + (32 * arg3.length) + 192] <= 0:
                    revert with 0, 
                                32,
                                42,
                                0x5942616c616e6365724c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                mem[(32 * arg4.length) + (64 * arg3.length) + (32 * arg3.length + 1) + 334 len 22]
                if address(ext_call.return_data[0]) == address(s):
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 
                                    32,
                                    39,
                                    0xfe42616c616e6365724c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                    mem[(32 * arg4.length) + (64 * arg3.length) + (32 * arg3.length + 1) + 331 len 25]
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 
                                    32,
                                    39,
                                    0xfe42616c616e6365724c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                    mem[(32 * arg4.length) + (64 * arg3.length) + (32 * arg3.length + 1) + 331 len 25]
                    if -mem[(32 * idx) + (32 * arg3.length) + 160] + 1000 > 1000:
                        revert with 0, 'ds-math-sub-underflow'
                    if not -mem[(32 * idx) + (32 * arg3.length) + 160] + 1000:
                        if Mask(112, 0, ext_call.return_data[32]):
                            require Mask(112, 0, ext_call.return_data[32])
                            if 0 / Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                        if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if 1000 * Mask(112, 0, ext_call.return_data[0]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-add-overflow'
                        require 1000 * Mask(112, 0, ext_call.return_data[0])
                        require idx + 1 < mem[(32 * arg4.length) + (32 * arg3.length) + 160]
                        mem[(32 * idx + 1) + (32 * arg4.length) + (32 * arg3.length) + 192] = 0 / 1000 * Mask(112, 0, ext_call.return_data[0])
                    else:
                        require -mem[(32 * idx) + (32 * arg3.length) + 160] + 1000
                        if (1000 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg3.length) + 192]) - (mem[(32 * idx) + (32 * arg3.length) + 160] * mem[(32 * idx) + (32 * arg4.length) + (32 * arg3.length) + 192]) / -mem[(32 * idx) + (32 * arg3.length) + 160] + 1000 != mem[(32 * idx) + (32 * arg4.length) + (32 * arg3.length) + 192]:
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[32]):
                            if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg3.length) + 192]) - (mem[(32 * idx) + (32 * arg3.length) + 160] * mem[(32 * idx) + (32 * arg4.length) + (32 * arg3.length) + 192]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg3.length) + 192]) - (mem[(32 * idx) + (32 * arg3.length) + 160] * mem[(32 * idx) + (32 * arg4.length) + (32 * arg3.length) + 192])
                            require idx + 1 < mem[(32 * arg4.length) + (32 * arg3.length) + 160]
                            mem[(32 * idx + 1) + (32 * arg4.length) + (32 * arg3.length) + 192] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg3.length) + 192]) - (mem[(32 * idx) + (32 * arg3.length) + 160] * mem[(32 * idx) + (32 * arg4.length) + (32 * arg3.length) + 192])
                        else:
                            require Mask(112, 0, ext_call.return_data[32])
                            if (1000 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg3.length) + 192] * Mask(112, 0, ext_call.return_data[32])) - (mem[(32 * idx) + (32 * arg3.length) + 160] * mem[(32 * idx) + (32 * arg4.length) + (32 * arg3.length) + 192] * Mask(112, 0, ext_call.return_data[32])) / Mask(112, 0, ext_call.return_data[32]) != (1000 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg3.length) + 192]) - (mem[(32 * idx) + (32 * arg3.length) + 160] * mem[(32 * idx) + (32 * arg4.length) + (32 * arg3.length) + 192]):
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg3.length) + 192]) - (mem[(32 * idx) + (32 * arg3.length) + 160] * mem[(32 * idx) + (32 * arg4.length) + (32 * arg3.length) + 192]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg3.length) + 192]) - (mem[(32 * idx) + (32 * arg3.length) + 160] * mem[(32 * idx) + (32 * arg4.length) + (32 * arg3.length) + 192])
                            require idx + 1 < mem[(32 * arg4.length) + (32 * arg3.length) + 160]
                            mem[(32 * idx + 1) + (32 * arg4.length) + (32 * arg3.length) + 192] = (1000 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg3.length) + 192] * Mask(112, 0, ext_call.return_data[32])) - (mem[(32 * idx) + (32 * arg3.length) + 160] * mem[(32 * idx) + (32 * arg4.length) + (32 * arg3.length) + 192] * Mask(112, 0, ext_call.return_data[32])) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg3.length) + 192]) - (mem[(32 * idx) + (32 * arg3.length) + 160] * mem[(32 * idx) + (32 * arg4.length) + (32 * arg3.length) + 192])
                    require idx < mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg3.length + 1) + 192]
                    mem[(32 * idx) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg3.length + 1) + 224] = 1
                else:
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 
                                    32,
                                    39,
                                    0xfe42616c616e6365724c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                    mem[(32 * arg4.length) + (64 * arg3.length) + (32 * arg3.length + 1) + 331 len 25]
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 
                                    32,
                                    39,
                                    0xfe42616c616e6365724c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                    mem[(32 * arg4.length) + (64 * arg3.length) + (32 * arg3.length + 1) + 331 len 25]
                    if -mem[(32 * idx) + (32 * arg3.length) + 160] + 1000 > 1000:
                        revert with 0, 'ds-math-sub-underflow'
                    if not -mem[(32 * idx) + (32 * arg3.length) + 160] + 1000:
                        if Mask(112, 0, ext_call.return_data[0]):
                            require Mask(112, 0, ext_call.return_data[0])
                            if 0 / Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                        if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-mul-overflow'
                        if 1000 * Mask(112, 0, ext_call.return_data[32]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-add-overflow'
                        require 1000 * Mask(112, 0, ext_call.return_data[32])
                        require idx + 1 < mem[(32 * arg4.length) + (32 * arg3.length) + 160]
                        mem[(32 * idx + 1) + (32 * arg4.length) + (32 * arg3.length) + 192] = 0 / 1000 * Mask(112, 0, ext_call.return_data[32])
                    else:
                        require -mem[(32 * idx) + (32 * arg3.length) + 160] + 1000
                        if (1000 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg3.length) + 192]) - (mem[(32 * idx) + (32 * arg3.length) + 160] * mem[(32 * idx) + (32 * arg4.length) + (32 * arg3.length) + 192]) / -mem[(32 * idx) + (32 * arg3.length) + 160] + 1000 != mem[(32 * idx) + (32 * arg4.length) + (32 * arg3.length) + 192]:
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[0]):
                            if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg3.length) + 192]) - (mem[(32 * idx) + (32 * arg3.length) + 160] * mem[(32 * idx) + (32 * arg4.length) + (32 * arg3.length) + 192]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg3.length) + 192]) - (mem[(32 * idx) + (32 * arg3.length) + 160] * mem[(32 * idx) + (32 * arg4.length) + (32 * arg3.length) + 192])
                            require idx + 1 < mem[(32 * arg4.length) + (32 * arg3.length) + 160]
                            mem[(32 * idx + 1) + (32 * arg4.length) + (32 * arg3.length) + 192] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg3.length) + 192]) - (mem[(32 * idx) + (32 * arg3.length) + 160] * mem[(32 * idx) + (32 * arg4.length) + (32 * arg3.length) + 192])
                        else:
                            require Mask(112, 0, ext_call.return_data[0])
                            if (1000 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg3.length) + 192] * Mask(112, 0, ext_call.return_data[0])) - (mem[(32 * idx) + (32 * arg3.length) + 160] * mem[(32 * idx) + (32 * arg4.length) + (32 * arg3.length) + 192] * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[0]) != (1000 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg3.length) + 192]) - (mem[(32 * idx) + (32 * arg3.length) + 160] * mem[(32 * idx) + (32 * arg4.length) + (32 * arg3.length) + 192]):
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg3.length) + 192]) - (mem[(32 * idx) + (32 * arg3.length) + 160] * mem[(32 * idx) + (32 * arg4.length) + (32 * arg3.length) + 192]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg3.length) + 192]) - (mem[(32 * idx) + (32 * arg3.length) + 160] * mem[(32 * idx) + (32 * arg4.length) + (32 * arg3.length) + 192])
                            require idx + 1 < mem[(32 * arg4.length) + (32 * arg3.length) + 160]
                            mem[(32 * idx + 1) + (32 * arg4.length) + (32 * arg3.length) + 192] = (1000 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg3.length) + 192] * Mask(112, 0, ext_call.return_data[0])) - (mem[(32 * idx) + (32 * arg3.length) + 160] * mem[(32 * idx) + (32 * arg4.length) + (32 * arg3.length) + 192] * Mask(112, 0, ext_call.return_data[0])) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg3.length) + 192]) - (mem[(32 * idx) + (32 * arg3.length) + 160] * mem[(32 * idx) + (32 * arg4.length) + (32 * arg3.length) + 192])
                    require idx < mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg3.length + 1) + 192]
                    mem[(32 * idx) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg3.length + 1) + 224] = 0
                idx = idx + 1
                s = ext_call.return_data[0]
                continue 
    if arg1 != address(s):
        revert with 0, 'BalancerLibrary: IN_NOT_EQ_OUT'
    require mem[(32 * arg4.length) + (32 * arg3.length) + 160] - 1 < mem[(32 * arg4.length) + (32 * arg3.length) + 160]
    mem[(32 * arg4.length) + (64 * arg3.length) + (32 * arg3.length + 1) + 224] = mem[(32 * mem[(32 * arg4.length) + (32 * arg3.length) + 160] - 1) + (32 * arg4.length) + (32 * arg3.length) + 192]
    return memory
      from (32 * arg4.length) + (64 * arg3.length) + (32 * arg3.length + 1) + 224
       len 32
}

function sub_fd0b1102(?) {
    require calldata.size - 4 >= 128
    require cd[68] <= 4294967296
    require cd[68] + 36 <= calldata.size
    require ('cd', 68).length <= 4294967296 and cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    require cd[100] <= 4294967296
    require cd[100] + 36 <= calldata.size
    require ('cd', 100).length <= 4294967296 and cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    if address(owner) != msg.sender:
        revert with 0, 'Balancer: FORBIDDEN'
    mem[100] = this.address
    require ext_code.size(address(cd[4]))
    staticcall address(cd[4]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[96] = ('cd', 68).length
    mem[128 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
    mem[(32 * ('cd', 68).length) + 128] = ('cd', 100).length
    mem[(32 * ('cd', 68).length) + 160 len 32 * ('cd', 100).length] = call.data[cd[100] + 36 len 32 * ('cd', 100).length]
    if ('cd', 68).length < 2:
        revert with 0, 'BalancerLibrary: INVALID_PAIRS'
    require ('cd', 68).length + 1 <= test266151307()
    mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 160] = ('cd', 68).length + 1
    if cd[36] < ext_call.return_data[0]:
        if not ('cd', 68).length + 1:
            require 0 < ('cd', 68).length + 1
            mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] = cd[36]
            require ('cd', 68).length <= test266151307()
            mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 192] = ('cd', 68).length
            mem[64] = (32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 224
            if not ('cd', 68).length:
                idx = 0
                s = address(cd[4])
                while idx < ('cd', 68).length:
                    require idx < ('cd', 68).length
                    _2859 = mem[(32 * idx) + 128]
                    require ext_code.size(mem[(32 * idx) + 140 len 20])
                    staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 224 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_code.size(address(_2859))
                    staticcall address(_2859).token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(_2859))
                    staticcall address(_2859).token1() with:
                            gas gas_remaining wei
                    mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 224] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require idx < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 160]
                    require idx < mem[(32 * ('cd', 68).length) + 128]
                    if mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] <= 0:
                        revert with 0, 
                                    32,
                                    42,
                                    0x5942616c616e6365724c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                    mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 334 len 22]
                    if address(ext_call.return_data[0]) == address(s):
                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                            revert with 0, 
                                        32,
                                        39,
                                        0xfe42616c616e6365724c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                        mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 331 len 25]
                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                            revert with 0, 
                                        32,
                                        39,
                                        0xfe42616c616e6365724c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                        mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 331 len 25]
                        if -mem[(32 * idx) + (32 * ('cd', 68).length) + 160] + 1000 > 1000:
                            revert with 0, 'ds-math-sub-underflow'
                        if not -mem[(32 * idx) + (32 * ('cd', 68).length) + 160] + 1000:
                            if Mask(112, 0, ext_call.return_data[32]):
                                require Mask(112, 0, ext_call.return_data[32])
                                if 0 / Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-mul-overflow'
                            if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * Mask(112, 0, ext_call.return_data[0]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require 1000 * Mask(112, 0, ext_call.return_data[0])
                            require idx + 1 < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 160]
                            mem[(32 * idx + 1) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] = 0 / 1000 * Mask(112, 0, ext_call.return_data[0])
                        else:
                            require -mem[(32 * idx) + (32 * ('cd', 68).length) + 160] + 1000
                            if (1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]) - (mem[(32 * idx) + (32 * ('cd', 68).length) + 160] * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]) / -mem[(32 * idx) + (32 * ('cd', 68).length) + 160] + 1000 != mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]:
                                revert with 0, 'ds-math-mul-overflow'
                            if not Mask(112, 0, ext_call.return_data[32]):
                                if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]) - (mem[(32 * idx) + (32 * ('cd', 68).length) + 160] * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-add-overflow'
                                require (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]) - (mem[(32 * idx) + (32 * ('cd', 68).length) + 160] * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192])
                                require idx + 1 < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 160]
                                mem[(32 * idx + 1) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]) - (mem[(32 * idx) + (32 * ('cd', 68).length) + 160] * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192])
                            else:
                                require Mask(112, 0, ext_call.return_data[32])
                                if (1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * Mask(112, 0, ext_call.return_data[32])) - (mem[(32 * idx) + (32 * ('cd', 68).length) + 160] * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * Mask(112, 0, ext_call.return_data[32])) / Mask(112, 0, ext_call.return_data[32]) != (1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]) - (mem[(32 * idx) + (32 * ('cd', 68).length) + 160] * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]) - (mem[(32 * idx) + (32 * ('cd', 68).length) + 160] * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-add-overflow'
                                require (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]) - (mem[(32 * idx) + (32 * ('cd', 68).length) + 160] * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192])
                                require idx + 1 < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 160]
                                mem[(32 * idx + 1) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] = (1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * Mask(112, 0, ext_call.return_data[32])) - (mem[(32 * idx) + (32 * ('cd', 68).length) + 160] * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * Mask(112, 0, ext_call.return_data[32])) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]) - (mem[(32 * idx) + (32 * ('cd', 68).length) + 160] * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192])
                        require idx < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 192]
                        mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 224] = 1
                    else:
                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                            revert with 0, 
                                        32,
                                        39,
                                        0xfe42616c616e6365724c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                        mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 331 len 25]
                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                            revert with 0, 
                                        32,
                                        39,
                                        0xfe42616c616e6365724c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                        mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 331 len 25]
                        if -mem[(32 * idx) + (32 * ('cd', 68).length) + 160] + 1000 > 1000:
                            revert with 0, 'ds-math-sub-underflow'
                        if not -mem[(32 * idx) + (32 * ('cd', 68).length) + 160] + 1000:
                            if Mask(112, 0, ext_call.return_data[0]):
                                require Mask(112, 0, ext_call.return_data[0])
                                if 0 / Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-mul-overflow'
                            if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * Mask(112, 0, ext_call.return_data[32]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require 1000 * Mask(112, 0, ext_call.return_data[32])
                            require idx + 1 < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 160]
                            mem[(32 * idx + 1) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] = 0 / 1000 * Mask(112, 0, ext_call.return_data[32])
                        else:
                            require -mem[(32 * idx) + (32 * ('cd', 68).length) + 160] + 1000
                            if (1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]) - (mem[(32 * idx) + (32 * ('cd', 68).length) + 160] * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]) / -mem[(32 * idx) + (32 * ('cd', 68).length) + 160] + 1000 != mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]:
                                revert with 0, 'ds-math-mul-overflow'
                            if not Mask(112, 0, ext_call.return_data[0]):
                                if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]) - (mem[(32 * idx) + (32 * ('cd', 68).length) + 160] * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-add-overflow'
                                require (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]) - (mem[(32 * idx) + (32 * ('cd', 68).length) + 160] * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192])
                                require idx + 1 < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 160]
                                mem[(32 * idx + 1) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]) - (mem[(32 * idx) + (32 * ('cd', 68).length) + 160] * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192])
                            else:
                                require Mask(112, 0, ext_call.return_data[0])
                                if (1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * Mask(112, 0, ext_call.return_data[0])) - (mem[(32 * idx) + (32 * ('cd', 68).length) + 160] * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[0]) != (1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]) - (mem[(32 * idx) + (32 * ('cd', 68).length) + 160] * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]) - (mem[(32 * idx) + (32 * ('cd', 68).length) + 160] * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-add-overflow'
                                require (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]) - (mem[(32 * idx) + (32 * ('cd', 68).length) + 160] * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192])
                                require idx + 1 < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 160]
                                mem[(32 * idx + 1) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] = (1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * Mask(112, 0, ext_call.return_data[0])) - (mem[(32 * idx) + (32 * ('cd', 68).length) + 160] * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * Mask(112, 0, ext_call.return_data[0])) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]) - (mem[(32 * idx) + (32 * ('cd', 68).length) + 160] * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192])
                        require idx < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 192]
                        mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 224] = 0
                    idx = idx + 1
                    s = ext_call.return_data[0]
                    continue 
                if address(cd[4]) != address(s):
                    revert with 0, 'BalancerLibrary: IN_NOT_EQ_OUT'
                require mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 160] - 1 < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 160]
                if mem[(32 * mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 160] - 1) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] < cd[36]:
                    revert with 0, 'Balancer: NO_PROFIT'
                require 0 < ('cd', 68).length
                mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 260] = address(('cd', 68)[0])
                mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 292] = cd[36]
                mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 224] = 68
                mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 256 len 4] = unknown_0xa9059cbb(?????)
                mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 324 len 64] = 0, address(('cd', 68)[0]), Mask(224, 32, cd[36]) >> 32
                mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 416 len 4] = uint32(cd[36])
                call address(cd[4]) with:
                     gas gas_remaining wei
                    args cd[36], Mask(224, 32, address(('cd', 68)[0]), Mask(224, 32, cd[36]) >> 32) >> 32, mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 388 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                    if not ('cd', 68).length:
                        mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 324] = ('cd', 68).length
                        mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                        mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356] = 0
                        mem[64] = (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 388
                        idx = 0
                        while idx < ('cd', 68).length:
                            require idx + 1 < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 160]
                            _7627 = mem[(32 * idx + 1) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                            require idx < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 192]
                            if 0 == mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 224]:
                                if idx >= mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 324] - 1:
                                    require idx < mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 324]
                                    _8170 = mem[(32 * idx) + (32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]
                                    _8171 = mem[64]
                                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _7627
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = this.address
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]
                                    _8173 = mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]
                                    s = 0
                                    while s < _8173:
                                        mem[s + mem[64] + 164] = mem[s + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 388]
                                        s = s + 32
                                        continue 
                                    if not _8173 % 32:
                                        require ext_code.size(address(_8170))
                                        call address(_8170).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _8173 + _8171 + -mem[64] + 160]
                                    else:
                                        mem[floor32(_8173) + _8171 + 164] = mem[floor32(_8173) + _8171 + -(_8173 % 32) + 196 len _8173 % 32]
                                        require ext_code.size(address(_8170))
                                        call address(_8170).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len floor32(_8173) + _8171 + -mem[64] + 192]
                                else:
                                    require idx + 1 < mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 324]
                                    _8041 = mem[(32 * idx + 1) + (32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]
                                    require idx < mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 324]
                                    _8489 = mem[(32 * idx) + (32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]
                                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _7627
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = address(_8041)
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]
                                    _8492 = mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]
                                    s = 0
                                    while s < _8492:
                                        mem[s + mem[64] + 164] = mem[s + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 388]
                                        s = s + 32
                                        continue 
                                    if not _8492 % 32:
                                        require ext_code.size(address(_8489))
                                        call address(_8489).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _7627, 0, address(_8041), 128, mem[mem[64] + 132 len _8492 + 32]
                                    else:
                                        mem[floor32(_8492) + mem[64] + 164] = mem[floor32(_8492) + mem[64] + -(_8492 % 32) + 196 len _8492 % 32]
                                        require ext_code.size(address(_8489))
                                        call address(_8489).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _7627, 0, address(_8041), 128, mem[mem[64] + 132 len floor32(_8492) + 64]
                            else:
                                if idx >= mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 324] - 1:
                                    require idx < mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 324]
                                    _8175 = mem[(32 * idx) + (32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]
                                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = _7627
                                    mem[mem[64] + 68] = this.address
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]
                                    _8178 = mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]
                                    s = 0
                                    while s < _8178:
                                        mem[s + mem[64] + 164] = mem[s + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 388]
                                        s = s + 32
                                        continue 
                                    if not _8178 % 32:
                                        require ext_code.size(address(_8175))
                                        call address(_8175).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _7627, address(this.address), 128, mem[mem[64] + 132 len _8178 + 32]
                                    else:
                                        mem[floor32(_8178) + mem[64] + 164] = mem[floor32(_8178) + mem[64] + -(_8178 % 32) + 196 len _8178 % 32]
                                        require ext_code.size(address(_8175))
                                        call address(_8175).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _7627, address(this.address), 128, mem[mem[64] + 132 len floor32(_8178) + 64]
                                else:
                                    require idx + 1 < mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 324]
                                    _8043 = mem[(32 * idx + 1) + (32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]
                                    require idx < mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 324]
                                    _8493 = mem[(32 * idx) + (32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]
                                    _8494 = mem[64]
                                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = _7627
                                    mem[mem[64] + 68] = address(_8043)
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]
                                    _8496 = mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]
                                    s = 0
                                    while s < _8496:
                                        mem[s + mem[64] + 164] = mem[s + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 388]
                                        s = s + 32
                                        continue 
                                    if not _8496 % 32:
                                        require ext_code.size(address(_8493))
                                        call address(_8493).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _8496 + _8494 + -mem[64] + 160]
                                    else:
                                        mem[floor32(_8496) + _8494 + 164] = mem[floor32(_8496) + _8494 + -(_8496 % 32) + 196 len _8496 % 32]
                                        require ext_code.size(address(_8493))
                                        call address(_8493).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len floor32(_8496) + _8494 + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            continue 
                    else:
                        require ('cd', 68).length >= 32
                        if not mem[128]:
                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                        mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 324] = ('cd', 68).length
                        mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                        mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356] = 0
                        mem[64] = (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 388
                        idx = 0
                        while idx < ('cd', 68).length:
                            require idx + 1 < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 160]
                            _7631 = mem[(32 * idx + 1) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                            require idx < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 192]
                            if 0 == mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 224]:
                                if idx >= mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 324] - 1:
                                    require idx < mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 324]
                                    _8180 = mem[(32 * idx) + (32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 388] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 392] = _7631
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 424] = 0
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 456] = this.address
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 488] = 128
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 520] = mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]
                                    s = 0
                                    while s < mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]:
                                        mem[s + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 552] = mem[s + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 388]
                                        s = s + 32
                                        continue 
                                    if not mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356] % 32:
                                        require ext_code.size(address(_8180))
                                        call address(_8180).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _7631, 0, address(this.address), 128, mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356], mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 552 len mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]]
                                    else:
                                        mem[floor32(mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]) + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 552] = mem[floor32(mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]) + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + -(mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356] % 32) + 584 len mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356] % 32]
                                        require ext_code.size(address(_8180))
                                        call address(_8180).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _7631, 0, address(this.address), 128, mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356], mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 552 len floor32(mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]) + 32]
                                else:
                                    require idx + 1 < mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 324]
                                    _8045 = mem[(32 * idx + 1) + (32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]
                                    require idx < mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 324]
                                    _8497 = mem[(32 * idx) + (32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 388] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 392] = _7631
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 424] = 0
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 456] = address(_8045)
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 488] = 128
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 520] = mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]
                                    s = 0
                                    while s < mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]:
                                        mem[s + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 552] = mem[s + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 388]
                                        s = s + 32
                                        continue 
                                    if not mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356] % 32:
                                        require ext_code.size(address(_8497))
                                        call address(_8497).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _7631, 0, address(_8045), 128, mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356], mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 552 len mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]]
                                    else:
                                        mem[floor32(mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]) + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 552] = mem[floor32(mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]) + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + -(mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356] % 32) + 584 len mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356] % 32]
                                        require ext_code.size(address(_8497))
                                        call address(_8497).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _7631, 0, address(_8045), 128, mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356], mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 552 len floor32(mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]) + 32]
                            else:
                                if idx >= mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 324] - 1:
                                    require idx < mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 324]
                                    _8185 = mem[(32 * idx) + (32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 388] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 392] = 0
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 424] = _7631
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 456] = this.address
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 488] = 128
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 520] = mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]
                                    _8188 = mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]
                                    s = 0
                                    while s < _8188:
                                        mem[s + mem[64] + 164] = mem[s + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 388]
                                        s = s + 32
                                        continue 
                                    if not _8188 % 32:
                                        require ext_code.size(address(_8185))
                                        call address(_8185).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _8188 + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + -mem[64] + 548]
                                    else:
                                        mem[floor32(_8188) + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 552] = mem[floor32(_8188) + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + -(_8188 % 32) + 584 len _8188 % 32]
                                        require ext_code.size(address(_8185))
                                        call address(_8185).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len floor32(_8188) + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + -mem[64] + 580]
                                else:
                                    require idx + 1 < mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 324]
                                    _8047 = mem[(32 * idx + 1) + (32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]
                                    require idx < mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 324]
                                    _8501 = mem[(32 * idx) + (32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 388] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 392] = 0
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 424] = _7631
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 456] = address(_8047)
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 488] = 128
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 520] = mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]
                                    _8504 = mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]
                                    s = 0
                                    while s < _8504:
                                        mem[s + mem[64] + 164] = mem[s + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 388]
                                        s = s + 32
                                        continue 
                                    if not _8504 % 32:
                                        require ext_code.size(address(_8501))
                                        call address(_8501).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _8504 + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + -mem[64] + 548]
                                    else:
                                        mem[floor32(_8504) + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 552] = mem[floor32(_8504) + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + -(_8504 % 32) + 584 len _8504 % 32]
                                        require ext_code.size(address(_8501))
                                        call address(_8501).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len floor32(_8504) + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + -mem[64] + 580]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            continue 
                else:
                    mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 324] = return_data.size
                    mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                    if not return_data.size:
                        mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 325] = ('cd', 68).length
                        mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                        mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357] = 0
                        mem[64] = (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 389
                        idx = 0
                        while idx < ('cd', 68).length:
                            require idx + 1 < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 160]
                            _7635 = mem[(32 * idx + 1) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                            require idx < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 192]
                            if 0 == mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 224]:
                                if idx >= mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 325] - 1:
                                    require idx < mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 325]
                                    _8190 = mem[(32 * idx) + (32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]
                                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _7635
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = this.address
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]
                                    _8193 = mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]
                                    s = 0
                                    while s < _8193:
                                        mem[s + mem[64] + 164] = mem[s + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 389]
                                        s = s + 32
                                        continue 
                                    if not _8193 % 32:
                                        require ext_code.size(address(_8190))
                                        call address(_8190).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _7635, 0, address(this.address), 128, mem[mem[64] + 132 len _8193 + 32]
                                    else:
                                        mem[floor32(_8193) + mem[64] + 164] = mem[floor32(_8193) + mem[64] + -(_8193 % 32) + 196 len _8193 % 32]
                                        require ext_code.size(address(_8190))
                                        call address(_8190).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _7635, 0, address(this.address), 128, mem[mem[64] + 132 len floor32(_8193) + 64]
                                else:
                                    require idx + 1 < mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 325]
                                    _8049 = mem[(32 * idx + 1) + (32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]
                                    require idx < mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 325]
                                    _8505 = mem[(32 * idx) + (32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]
                                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _7635
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = address(_8049)
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]
                                    _8508 = mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]
                                    s = 0
                                    while s < _8508:
                                        mem[s + mem[64] + 164] = mem[s + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 389]
                                        s = s + 32
                                        continue 
                                    if not _8508 % 32:
                                        require ext_code.size(address(_8505))
                                        call address(_8505).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _7635, 0, address(_8049), 128, mem[mem[64] + 132 len _8508 + 32]
                                    else:
                                        mem[floor32(_8508) + mem[64] + 164] = mem[floor32(_8508) + mem[64] + -(_8508 % 32) + 196 len _8508 % 32]
                                        require ext_code.size(address(_8505))
                                        call address(_8505).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _7635, 0, address(_8049), 128, mem[mem[64] + 132 len floor32(_8508) + 64]
                            else:
                                if idx >= mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 325] - 1:
                                    require idx < mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 325]
                                    _8195 = mem[(32 * idx) + (32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]
                                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = _7635
                                    mem[mem[64] + 68] = this.address
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]
                                    _8198 = mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]
                                    s = 0
                                    while s < _8198:
                                        mem[s + mem[64] + 164] = mem[s + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 389]
                                        s = s + 32
                                        continue 
                                    if not _8198 % 32:
                                        require ext_code.size(address(_8195))
                                        call address(_8195).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _7635, address(this.address), 128, mem[mem[64] + 132 len _8198 + 32]
                                    else:
                                        mem[floor32(_8198) + mem[64] + 164] = mem[floor32(_8198) + mem[64] + -(_8198 % 32) + 196 len _8198 % 32]
                                        require ext_code.size(address(_8195))
                                        call address(_8195).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _7635, address(this.address), 128, mem[mem[64] + 132 len floor32(_8198) + 64]
                                else:
                                    require idx + 1 < mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 325]
                                    _8051 = mem[(32 * idx + 1) + (32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]
                                    require idx < mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 325]
                                    _8509 = mem[(32 * idx) + (32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]
                                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = _7635
                                    mem[mem[64] + 68] = address(_8051)
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]
                                    _8512 = mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]
                                    s = 0
                                    while s < _8512:
                                        mem[s + mem[64] + 164] = mem[s + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 389]
                                        s = s + 32
                                        continue 
                                    if not _8512 % 32:
                                        require ext_code.size(address(_8509))
                                        call address(_8509).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _7635, address(_8051), 128, mem[mem[64] + 132 len _8512 + 32]
                                    else:
                                        mem[floor32(_8512) + mem[64] + 164] = mem[floor32(_8512) + mem[64] + -(_8512 % 32) + 196 len _8512 % 32]
                                        require ext_code.size(address(_8509))
                                        call address(_8509).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _7635, address(_8051), 128, mem[mem[64] + 132 len floor32(_8512) + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            continue 
                    else:
                        require return_data.size >= 32
                        if not mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]:
                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                        mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 325] = ('cd', 68).length
                        mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                        mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357] = 0
                        mem[64] = (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 389
                        idx = 0
                        while idx < ('cd', 68).length:
                            require idx + 1 < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 160]
                            _7639 = mem[(32 * idx + 1) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                            require idx < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 192]
                            if 0 == mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 224]:
                                if idx >= mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 325] - 1:
                                    require idx < mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 325]
                                    _8200 = mem[(32 * idx) + (32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 389] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 393] = _7639
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 425] = 0
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 457] = this.address
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 489] = 128
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 521] = mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]
                                    s = 0
                                    while s < mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]:
                                        mem[s + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 553] = mem[s + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 389]
                                        s = s + 32
                                        continue 
                                    if not mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357] % 32:
                                        require ext_code.size(address(_8200))
                                        call address(_8200).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _7639, 0, address(this.address), 128, mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357], mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 553 len mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]]
                                    else:
                                        mem[floor32(mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]) + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 553] = mem[floor32(mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]) + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + -(mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357] % 32) + 585 len mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357] % 32]
                                        require ext_code.size(address(_8200))
                                        call address(_8200).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _7639, 0, address(this.address), 128, mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357], mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 553 len floor32(mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]) + 32]
                                else:
                                    require idx + 1 < mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 325]
                                    _8053 = mem[(32 * idx + 1) + (32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]
                                    require idx < mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 325]
                                    _8513 = mem[(32 * idx) + (32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 389] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 393] = _7639
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 425] = 0
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 457] = address(_8053)
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 489] = 128
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 521] = mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]
                                    s = 0
                                    while s < mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]:
                                        mem[s + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 553] = mem[s + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 389]
                                        s = s + 32
                                        continue 
                                    if not mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357] % 32:
                                        require ext_code.size(address(_8513))
                                        call address(_8513).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _7639, 0, address(_8053), 128, mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357], mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 553 len mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]]
                                    else:
                                        mem[floor32(mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]) + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 553] = mem[floor32(mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]) + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + -(mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357] % 32) + 585 len mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357] % 32]
                                        require ext_code.size(address(_8513))
                                        call address(_8513).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _7639, 0, address(_8053), 128, mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357], mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 553 len floor32(mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]) + 32]
                            else:
                                if idx >= mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 325] - 1:
                                    require idx < mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 325]
                                    _8205 = mem[(32 * idx) + (32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 389] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 393] = 0
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 425] = _7639
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 457] = this.address
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 489] = 128
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 521] = mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]
                                    _8208 = mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]
                                    s = 0
                                    while s < _8208:
                                        mem[s + mem[64] + 164] = mem[s + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 389]
                                        s = s + 32
                                        continue 
                                    if not _8208 % 32:
                                        require ext_code.size(address(_8205))
                                        call address(_8205).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _8208 + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + -mem[64] + 549]
                                    else:
                                        mem[floor32(_8208) + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 553] = mem[floor32(_8208) + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + -(_8208 % 32) + 585 len _8208 % 32]
                                        require ext_code.size(address(_8205))
                                        call address(_8205).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len floor32(_8208) + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + -mem[64] + 581]
                                else:
                                    require idx + 1 < mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 325]
                                    _8055 = mem[(32 * idx + 1) + (32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]
                                    require idx < mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 325]
                                    _8517 = mem[(32 * idx) + (32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 389] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 393] = 0
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 425] = _7639
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 457] = address(_8055)
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 489] = 128
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 521] = mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]
                                    s = 0
                                    while s < mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]:
                                        mem[s + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 553] = mem[s + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 389]
                                        s = s + 32
                                        continue 
                                    if not mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357] % 32:
                                        require ext_code.size(address(_8517))
                                        call address(_8517).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _7639, address(_8055), 128, mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357], mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 553 len mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]]
                                    else:
                                        mem[floor32(mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]) + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 553] = mem[floor32(mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]) + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + -(mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357] % 32) + 585 len mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357] % 32]
                                        require ext_code.size(address(_8517))
                                        call address(_8517).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _7639, address(_8055), 128, mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357], mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 553 len floor32(mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            continue 
            else:
                mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 224 len 32 * ('cd', 68).length] = call.data[calldata.size len 32 * ('cd', 68).length]
                idx = 0
                s = address(cd[4])
                while idx < ('cd', 68).length:
                    require idx < ('cd', 68).length
                    _2862 = mem[(32 * idx) + 128]
                    require ext_code.size(mem[(32 * idx) + 140 len 20])
                    staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 224 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_code.size(address(_2862))
                    staticcall address(_2862).token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(_2862))
                    staticcall address(_2862).token1() with:
                            gas gas_remaining wei
                    mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 224] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require idx < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 160]
                    require idx < mem[(32 * ('cd', 68).length) + 128]
                    if mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] <= 0:
                        revert with 0, 
                                    32,
                                    42,
                                    0x5942616c616e6365724c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                    mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 334 len 22]
                    if address(ext_call.return_data[0]) == address(s):
                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                            revert with 0, 
                                        32,
                                        39,
                                        0xfe42616c616e6365724c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                        mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 331 len 25]
                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                            revert with 0, 
                                        32,
                                        39,
                                        0xfe42616c616e6365724c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                        mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 331 len 25]
                        if -mem[(32 * idx) + (32 * ('cd', 68).length) + 160] + 1000 > 1000:
                            revert with 0, 'ds-math-sub-underflow'
                        if not -mem[(32 * idx) + (32 * ('cd', 68).length) + 160] + 1000:
                            if Mask(112, 0, ext_call.return_data[32]):
                                require Mask(112, 0, ext_call.return_data[32])
                                if 0 / Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-mul-overflow'
                            if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * Mask(112, 0, ext_call.return_data[0]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require 1000 * Mask(112, 0, ext_call.return_data[0])
                            require idx + 1 < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 160]
                            mem[(32 * idx + 1) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] = 0 / 1000 * Mask(112, 0, ext_call.return_data[0])
                        else:
                            require -mem[(32 * idx) + (32 * ('cd', 68).length) + 160] + 1000
                            if (1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]) - (mem[(32 * idx) + (32 * ('cd', 68).length) + 160] * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]) / -mem[(32 * idx) + (32 * ('cd', 68).length) + 160] + 1000 != mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]:
                                revert with 0, 'ds-math-mul-overflow'
                            if not Mask(112, 0, ext_call.return_data[32]):
                                if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]) - (mem[(32 * idx) + (32 * ('cd', 68).length) + 160] * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-add-overflow'
                                require (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]) - (mem[(32 * idx) + (32 * ('cd', 68).length) + 160] * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192])
                                require idx + 1 < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 160]
                                mem[(32 * idx + 1) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]) - (mem[(32 * idx) + (32 * ('cd', 68).length) + 160] * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192])
                            else:
                                require Mask(112, 0, ext_call.return_data[32])
                                if (1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * Mask(112, 0, ext_call.return_data[32])) - (mem[(32 * idx) + (32 * ('cd', 68).length) + 160] * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * Mask(112, 0, ext_call.return_data[32])) / Mask(112, 0, ext_call.return_data[32]) != (1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]) - (mem[(32 * idx) + (32 * ('cd', 68).length) + 160] * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]) - (mem[(32 * idx) + (32 * ('cd', 68).length) + 160] * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-add-overflow'
                                require (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]) - (mem[(32 * idx) + (32 * ('cd', 68).length) + 160] * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192])
                                require idx + 1 < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 160]
                                mem[(32 * idx + 1) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] = (1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * Mask(112, 0, ext_call.return_data[32])) - (mem[(32 * idx) + (32 * ('cd', 68).length) + 160] * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * Mask(112, 0, ext_call.return_data[32])) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]) - (mem[(32 * idx) + (32 * ('cd', 68).length) + 160] * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192])
                        require idx < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 192]
                        mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 224] = 1
                    else:
                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                            revert with 0, 
                                        32,
                                        39,
                                        0xfe42616c616e6365724c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                        mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 331 len 25]
                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                            revert with 0, 
                                        32,
                                        39,
                                        0xfe42616c616e6365724c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                        mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 331 len 25]
                        if -mem[(32 * idx) + (32 * ('cd', 68).length) + 160] + 1000 > 1000:
                            revert with 0, 'ds-math-sub-underflow'
                        if not -mem[(32 * idx) + (32 * ('cd', 68).length) + 160] + 1000:
                            if Mask(112, 0, ext_call.return_data[0]):
                                require Mask(112, 0, ext_call.return_data[0])
                                if 0 / Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-mul-overflow'
                            if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * Mask(112, 0, ext_call.return_data[32]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require 1000 * Mask(112, 0, ext_call.return_data[32])
                            require idx + 1 < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 160]
                            mem[(32 * idx + 1) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] = 0 / 1000 * Mask(112, 0, ext_call.return_data[32])
                        else:
                            require -mem[(32 * idx) + (32 * ('cd', 68).length) + 160] + 1000
                            if (1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]) - (mem[(32 * idx) + (32 * ('cd', 68).length) + 160] * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]) / -mem[(32 * idx) + (32 * ('cd', 68).length) + 160] + 1000 != mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]:
                                revert with 0, 'ds-math-mul-overflow'
                            if not Mask(112, 0, ext_call.return_data[0]):
                                if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]) - (mem[(32 * idx) + (32 * ('cd', 68).length) + 160] * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-add-overflow'
                                require (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]) - (mem[(32 * idx) + (32 * ('cd', 68).length) + 160] * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192])
                                require idx + 1 < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 160]
                                mem[(32 * idx + 1) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]) - (mem[(32 * idx) + (32 * ('cd', 68).length) + 160] * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192])
                            else:
                                require Mask(112, 0, ext_call.return_data[0])
                                if (1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * Mask(112, 0, ext_call.return_data[0])) - (mem[(32 * idx) + (32 * ('cd', 68).length) + 160] * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[0]) != (1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]) - (mem[(32 * idx) + (32 * ('cd', 68).length) + 160] * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]) - (mem[(32 * idx) + (32 * ('cd', 68).length) + 160] * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-add-overflow'
                                require (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]) - (mem[(32 * idx) + (32 * ('cd', 68).length) + 160] * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192])
                                require idx + 1 < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 160]
                                mem[(32 * idx + 1) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] = (1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * Mask(112, 0, ext_call.return_data[0])) - (mem[(32 * idx) + (32 * ('cd', 68).length) + 160] * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * Mask(112, 0, ext_call.return_data[0])) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]) - (mem[(32 * idx) + (32 * ('cd', 68).length) + 160] * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192])
                        require idx < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 192]
                        mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 224] = 0
                    idx = idx + 1
                    s = ext_call.return_data[0]
                    continue 
                if address(cd[4]) != address(s):
                    revert with 0, 'BalancerLibrary: IN_NOT_EQ_OUT'
                require mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 160] - 1 < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 160]
                if mem[(32 * mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 160] - 1) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] < cd[36]:
                    revert with 0, 'Balancer: NO_PROFIT'
                require 0 < ('cd', 68).length
                mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 260] = address(('cd', 68)[0])
                mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 292] = cd[36]
                mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 224] = 68
                mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 256 len 4] = unknown_0xa9059cbb(?????)
                mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 324 len 64] = 0, address(('cd', 68)[0]), Mask(224, 32, cd[36]) >> 32
                mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 416 len 4] = uint32(cd[36])
                call address(cd[4]) with:
                     gas gas_remaining wei
                    args cd[36], Mask(224, 32, address(('cd', 68)[0]), Mask(224, 32, cd[36]) >> 32) >> 32, mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 388 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                    if not ('cd', 68).length:
                        mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 324] = ('cd', 68).length
                        mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                        mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356] = 0
                        mem[64] = (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 388
                        idx = 0
                        while idx < ('cd', 68).length:
                            require idx + 1 < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 160]
                            _7643 = mem[(32 * idx + 1) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                            require idx < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 192]
                            if mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 224] != 0:
                                if idx >= mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 324] - 1:
                                    require idx < mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 324]
                                    _8215 = mem[(32 * idx) + (32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 388] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 392] = 0
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 424] = _7643
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 456] = this.address
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 488] = 128
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 520] = mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]
                                    s = 0
                                    while s < mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]:
                                        mem[s + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 552] = mem[s + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 388]
                                        s = s + 32
                                        continue 
                                    if not mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356] % 32:
                                        require ext_code.size(address(_8215))
                                        call address(_8215).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _7643, address(this.address), 128, mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356], mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 552 len mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]]
                                    else:
                                        mem[floor32(mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]) + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 552] = mem[floor32(mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]) + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + -(mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356] % 32) + 584 len mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356] % 32]
                                        require ext_code.size(address(_8215))
                                        call address(_8215).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _7643, address(this.address), 128, mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356], mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 552 len floor32(mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]) + 32]
                                else:
                                    require idx + 1 < mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 324]
                                    _8059 = mem[(32 * idx + 1) + (32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]
                                    require idx < mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 324]
                                    _8525 = mem[(32 * idx) + (32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 388] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 392] = 0
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 424] = _7643
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 456] = address(_8059)
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 488] = 128
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 520] = mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]
                                    s = 0
                                    while s < mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]:
                                        mem[s + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 552] = mem[s + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 388]
                                        s = s + 32
                                        continue 
                                    if not mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356] % 32:
                                        require ext_code.size(address(_8525))
                                        call address(_8525).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _7643, address(_8059), 128, mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356], mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 552 len mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]]
                                    else:
                                        mem[floor32(mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]) + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 552] = mem[floor32(mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]) + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + -(mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356] % 32) + 584 len mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356] % 32]
                                        require ext_code.size(address(_8525))
                                        call address(_8525).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _7643, address(_8059), 128, mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356], mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 552 len floor32(mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]) + 32]
                            else:
                                if idx >= mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 324] - 1:
                                    require idx < mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 324]
                                    _8210 = mem[(32 * idx) + (32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 388] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 392] = _7643
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 424] = 0
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 456] = this.address
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 488] = 128
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 520] = mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]
                                    s = 0
                                    while s < mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]:
                                        mem[s + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 552] = mem[s + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 388]
                                        s = s + 32
                                        continue 
                                    if not mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356] % 32:
                                        require ext_code.size(address(_8210))
                                        call address(_8210).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _7643, 0, address(this.address), 128, mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356], mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 552 len mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]]
                                    else:
                                        mem[floor32(mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]) + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 552] = mem[floor32(mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]) + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + -(mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356] % 32) + 584 len mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356] % 32]
                                        require ext_code.size(address(_8210))
                                        call address(_8210).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _7643, 0, address(this.address), 128, mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356], mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 552 len floor32(mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]) + 32]
                                else:
                                    require idx + 1 < mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 324]
                                    _8057 = mem[(32 * idx + 1) + (32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]
                                    require idx < mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 324]
                                    _8521 = mem[(32 * idx) + (32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 388] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 392] = _7643
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 424] = 0
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 456] = address(_8057)
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 488] = 128
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 520] = mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]
                                    _8524 = mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]
                                    s = 0
                                    while s < _8524:
                                        mem[s + mem[64] + 164] = mem[s + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 388]
                                        s = s + 32
                                        continue 
                                    if not _8524 % 32:
                                        require ext_code.size(address(_8521))
                                        call address(_8521).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _8524 + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + -mem[64] + 548]
                                    else:
                                        mem[floor32(_8524) + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 552] = mem[floor32(_8524) + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + -(_8524 % 32) + 584 len _8524 % 32]
                                        require ext_code.size(address(_8521))
                                        call address(_8521).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len floor32(_8524) + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + -mem[64] + 580]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            continue 
                    else:
                        require ('cd', 68).length >= 32
                        if not mem[128]:
                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                        mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 324] = ('cd', 68).length
                        mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                        mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356] = 0
                        mem[64] = (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 388
                        idx = 0
                        while idx < ('cd', 68).length:
                            require idx + 1 < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 160]
                            _7647 = mem[(32 * idx + 1) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                            require idx < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 192]
                            if 0 == mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 224]:
                                if idx >= mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 324] - 1:
                                    require idx < mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 324]
                                    _8220 = mem[(32 * idx) + (32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]
                                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _7647
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = this.address
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]
                                    _8223 = mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]
                                    s = 0
                                    while s < _8223:
                                        mem[s + mem[64] + 164] = mem[s + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 388]
                                        s = s + 32
                                        continue 
                                    if not _8223 % 32:
                                        require ext_code.size(address(_8220))
                                        call address(_8220).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _7647, 0, address(this.address), 128, mem[mem[64] + 132 len _8223 + 32]
                                    else:
                                        mem[floor32(_8223) + mem[64] + 164] = mem[floor32(_8223) + mem[64] + -(_8223 % 32) + 196 len _8223 % 32]
                                        require ext_code.size(address(_8220))
                                        call address(_8220).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _7647, 0, address(this.address), 128, mem[mem[64] + 132 len floor32(_8223) + 64]
                                else:
                                    require idx + 1 < mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 324]
                                    _8061 = mem[(32 * idx + 1) + (32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]
                                    require idx < mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 324]
                                    _8529 = mem[(32 * idx) + (32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]
                                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _7647
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = address(_8061)
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]
                                    _8532 = mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]
                                    s = 0
                                    while s < _8532:
                                        mem[s + mem[64] + 164] = mem[s + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 388]
                                        s = s + 32
                                        continue 
                                    if not _8532 % 32:
                                        require ext_code.size(address(_8529))
                                        call address(_8529).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _7647, 0, address(_8061), 128, mem[mem[64] + 132 len _8532 + 32]
                                    else:
                                        mem[floor32(_8532) + mem[64] + 164] = mem[floor32(_8532) + mem[64] + -(_8532 % 32) + 196 len _8532 % 32]
                                        require ext_code.size(address(_8529))
                                        call address(_8529).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _7647, 0, address(_8061), 128, mem[mem[64] + 132 len floor32(_8532) + 64]
                            else:
                                if idx >= mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 324] - 1:
                                    require idx < mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 324]
                                    _8225 = mem[(32 * idx) + (32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]
                                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = _7647
                                    mem[mem[64] + 68] = this.address
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]
                                    _8228 = mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]
                                    s = 0
                                    while s < _8228:
                                        mem[s + mem[64] + 164] = mem[s + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 388]
                                        s = s + 32
                                        continue 
                                    if not _8228 % 32:
                                        require ext_code.size(address(_8225))
                                        call address(_8225).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _7647, address(this.address), 128, mem[mem[64] + 132 len _8228 + 32]
                                    else:
                                        mem[floor32(_8228) + mem[64] + 164] = mem[floor32(_8228) + mem[64] + -(_8228 % 32) + 196 len _8228 % 32]
                                        require ext_code.size(address(_8225))
                                        call address(_8225).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _7647, address(this.address), 128, mem[mem[64] + 132 len floor32(_8228) + 64]
                                else:
                                    require idx + 1 < mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 324]
                                    _8063 = mem[(32 * idx + 1) + (32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]
                                    require idx < mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 324]
                                    _8533 = mem[(32 * idx) + (32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]
                                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = _7647
                                    mem[mem[64] + 68] = address(_8063)
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]
                                    _8536 = mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]
                                    s = 0
                                    while s < _8536:
                                        mem[s + mem[64] + 164] = mem[s + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 388]
                                        s = s + 32
                                        continue 
                                    if not _8536 % 32:
                                        require ext_code.size(address(_8533))
                                        call address(_8533).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _7647, address(_8063), 128, mem[mem[64] + 132 len _8536 + 32]
                                    else:
                                        mem[floor32(_8536) + mem[64] + 164] = mem[floor32(_8536) + mem[64] + -(_8536 % 32) + 196 len _8536 % 32]
                                        require ext_code.size(address(_8533))
                                        call address(_8533).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _7647, address(_8063), 128, mem[mem[64] + 132 len floor32(_8536) + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            continue 
                else:
                    mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 324] = return_data.size
                    mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                    if not return_data.size:
                        mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 325] = ('cd', 68).length
                        mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                        mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357] = 0
                        mem[64] = (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 389
                        idx = 0
                        while idx < ('cd', 68).length:
                            require idx + 1 < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 160]
                            _7651 = mem[(32 * idx + 1) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                            require idx < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 192]
                            if mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 224] != 0:
                                if idx >= mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 325] - 1:
                                    require idx < mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 325]
                                    _8235 = mem[(32 * idx) + (32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 389] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 393] = 0
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 425] = _7651
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 457] = this.address
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 489] = 128
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 521] = mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]
                                    s = 0
                                    while s < mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]:
                                        mem[s + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 553] = mem[s + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 389]
                                        s = s + 32
                                        continue 
                                    if not mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357] % 32:
                                        require ext_code.size(address(_8235))
                                        call address(_8235).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _7651, address(this.address), 128, mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357], mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 553 len mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]]
                                    else:
                                        mem[floor32(mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]) + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 553] = mem[floor32(mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]) + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + -(mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357] % 32) + 585 len mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357] % 32]
                                        require ext_code.size(address(_8235))
                                        call address(_8235).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _7651, address(this.address), 128, mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357], mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 553 len floor32(mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]) + 32]
                                else:
                                    require idx + 1 < mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 325]
                                    _8067 = mem[(32 * idx + 1) + (32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]
                                    require idx < mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 325]
                                    _8541 = mem[(32 * idx) + (32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 389] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 393] = 0
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 425] = _7651
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 457] = address(_8067)
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 489] = 128
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 521] = mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]
                                    s = 0
                                    while s < mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]:
                                        mem[s + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 553] = mem[s + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 389]
                                        s = s + 32
                                        continue 
                                    if not mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357] % 32:
                                        require ext_code.size(address(_8541))
                                        call address(_8541).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _7651, address(_8067), 128, mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357], mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 553 len mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]]
                                    else:
                                        mem[floor32(mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]) + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 553] = mem[floor32(mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]) + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + -(mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357] % 32) + 585 len mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357] % 32]
                                        require ext_code.size(address(_8541))
                                        call address(_8541).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _7651, address(_8067), 128, mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357], mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 553 len floor32(mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]) + 32]
                            else:
                                if idx >= mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 325] - 1:
                                    require idx < mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 325]
                                    _8230 = mem[(32 * idx) + (32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 389] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 393] = _7651
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 425] = 0
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 457] = this.address
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 489] = 128
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 521] = mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]
                                    s = 0
                                    while s < mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]:
                                        mem[s + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 553] = mem[s + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 389]
                                        s = s + 32
                                        continue 
                                    if not mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357] % 32:
                                        require ext_code.size(address(_8230))
                                        call address(_8230).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _7651, 0, address(this.address), 128, mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357], mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 553 len mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]]
                                    else:
                                        mem[floor32(mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]) + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 553] = mem[floor32(mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]) + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + -(mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357] % 32) + 585 len mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357] % 32]
                                        require ext_code.size(address(_8230))
                                        call address(_8230).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _7651, 0, address(this.address), 128, mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357], mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 553 len floor32(mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]) + 32]
                                else:
                                    require idx + 1 < mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 325]
                                    _8065 = mem[(32 * idx + 1) + (32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]
                                    require idx < mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 325]
                                    _8537 = mem[(32 * idx) + (32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 389] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 393] = _7651
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 425] = 0
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 457] = address(_8065)
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 489] = 128
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 521] = mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]
                                    _8540 = mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]
                                    s = 0
                                    while s < _8540:
                                        mem[s + mem[64] + 164] = mem[s + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 389]
                                        s = s + 32
                                        continue 
                                    if not _8540 % 32:
                                        require ext_code.size(address(_8537))
                                        call address(_8537).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _8540 + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + -mem[64] + 549]
                                    else:
                                        mem[floor32(_8540) + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 553] = mem[floor32(_8540) + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + -(_8540 % 32) + 585 len _8540 % 32]
                                        require ext_code.size(address(_8537))
                                        call address(_8537).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len floor32(_8540) + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + -mem[64] + 581]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            continue 
                    else:
                        require return_data.size >= 32
                        if not mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]:
                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                        mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 325] = ('cd', 68).length
                        mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                        mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357] = 0
                        mem[64] = (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 389
                        idx = 0
                        while idx < ('cd', 68).length:
                            require idx + 1 < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 160]
                            _7655 = mem[(32 * idx + 1) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                            require idx < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 192]
                            if 0 == mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 224]:
                                if idx >= mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 325] - 1:
                                    require idx < mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 325]
                                    _8240 = mem[(32 * idx) + (32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]
                                    _8241 = mem[64]
                                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _7655
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = this.address
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]
                                    _8243 = mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]
                                    s = 0
                                    while s < _8243:
                                        mem[s + mem[64] + 164] = mem[s + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 389]
                                        s = s + 32
                                        continue 
                                    if not _8243 % 32:
                                        require ext_code.size(address(_8240))
                                        call address(_8240).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _8243 + _8241 + -mem[64] + 160]
                                    else:
                                        mem[floor32(_8243) + _8241 + 164] = mem[floor32(_8243) + _8241 + -(_8243 % 32) + 196 len _8243 % 32]
                                        require ext_code.size(address(_8240))
                                        call address(_8240).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len floor32(_8243) + _8241 + -mem[64] + 192]
                                else:
                                    require idx + 1 < mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 325]
                                    _8069 = mem[(32 * idx + 1) + (32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]
                                    require idx < mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 325]
                                    _8545 = mem[(32 * idx) + (32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]
                                    _8546 = mem[64]
                                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _7655
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = address(_8069)
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]
                                    _8548 = mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]
                                    s = 0
                                    while s < _8548:
                                        mem[s + mem[64] + 164] = mem[s + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 389]
                                        s = s + 32
                                        continue 
                                    if not _8548 % 32:
                                        require ext_code.size(address(_8545))
                                        call address(_8545).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _8548 + _8546 + -mem[64] + 160]
                                    else:
                                        mem[floor32(_8548) + _8546 + 164] = mem[floor32(_8548) + _8546 + -(_8548 % 32) + 196 len _8548 % 32]
                                        require ext_code.size(address(_8545))
                                        call address(_8545).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len floor32(_8548) + _8546 + -mem[64] + 192]
                            else:
                                if idx >= mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 325] - 1:
                                    require idx < mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 325]
                                    _8245 = mem[(32 * idx) + (32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]
                                    _8246 = mem[64]
                                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = _7655
                                    mem[mem[64] + 68] = this.address
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]
                                    _8248 = mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]
                                    s = 0
                                    while s < _8248:
                                        mem[s + mem[64] + 164] = mem[s + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 389]
                                        s = s + 32
                                        continue 
                                    if not _8248 % 32:
                                        require ext_code.size(address(_8245))
                                        call address(_8245).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _8248 + _8246 + -mem[64] + 160]
                                    else:
                                        mem[floor32(_8248) + _8246 + 164] = mem[floor32(_8248) + _8246 + -(_8248 % 32) + 196 len _8248 % 32]
                                        require ext_code.size(address(_8245))
                                        call address(_8245).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len floor32(_8248) + _8246 + -mem[64] + 192]
                                else:
                                    require idx + 1 < mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 325]
                                    _8071 = mem[(32 * idx + 1) + (32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]
                                    require idx < mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 325]
                                    _8549 = mem[(32 * idx) + (32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]
                                    _8550 = mem[64]
                                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = _7655
                                    mem[mem[64] + 68] = address(_8071)
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]
                                    _8552 = mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]
                                    s = 0
                                    while s < _8552:
                                        mem[s + mem[64] + 164] = mem[s + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 389]
                                        s = s + 32
                                        continue 
                                    if not _8552 % 32:
                                        require ext_code.size(address(_8549))
                                        call address(_8549).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _8552 + _8550 + -mem[64] + 160]
                                    else:
                                        mem[floor32(_8552) + _8550 + 164] = mem[floor32(_8552) + _8550 + -(_8552 % 32) + 196 len _8552 % 32]
                                        require ext_code.size(address(_8549))
                                        call address(_8549).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len floor32(_8552) + _8550 + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            continue 
        else:
            mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192 len 32 * ('cd', 68).length + 1] = call.data[calldata.size len 32 * ('cd', 68).length + 1]
            require 0 < ('cd', 68).length + 1
            mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] = cd[36]
            require ('cd', 68).length <= test266151307()
            mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 192] = ('cd', 68).length
            mem[64] = (32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 224
            if not ('cd', 68).length:
                idx = 0
                s = address(cd[4])
                while idx < ('cd', 68).length:
                    require idx < ('cd', 68).length
                    _2865 = mem[(32 * idx) + 128]
                    require ext_code.size(mem[(32 * idx) + 140 len 20])
                    staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 224 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_code.size(address(_2865))
                    staticcall address(_2865).token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(_2865))
                    staticcall address(_2865).token1() with:
                            gas gas_remaining wei
                    mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 224] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require idx < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 160]
                    require idx < mem[(32 * ('cd', 68).length) + 128]
                    if mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] <= 0:
                        revert with 0, 
                                    32,
                                    42,
                                    0x5942616c616e6365724c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                    mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 334 len 22]
                    if address(ext_call.return_data[0]) == address(s):
                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                            revert with 0, 
                                        32,
                                        39,
                                        0xfe42616c616e6365724c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                        mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 331 len 25]
                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                            revert with 0, 
                                        32,
                                        39,
                                        0xfe42616c616e6365724c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                        mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 331 len 25]
                        if -mem[(32 * idx) + (32 * ('cd', 68).length) + 160] + 1000 > 1000:
                            revert with 0, 'ds-math-sub-underflow'
                        if not -mem[(32 * idx) + (32 * ('cd', 68).length) + 160] + 1000:
                            if Mask(112, 0, ext_call.return_data[32]):
                                require Mask(112, 0, ext_call.return_data[32])
                                if 0 / Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-mul-overflow'
                            if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * Mask(112, 0, ext_call.return_data[0]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require 1000 * Mask(112, 0, ext_call.return_data[0])
                            require idx + 1 < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 160]
                            mem[(32 * idx + 1) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] = 0 / 1000 * Mask(112, 0, ext_call.return_data[0])
                        else:
                            require -mem[(32 * idx) + (32 * ('cd', 68).length) + 160] + 1000
                            if (1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]) - (mem[(32 * idx) + (32 * ('cd', 68).length) + 160] * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]) / -mem[(32 * idx) + (32 * ('cd', 68).length) + 160] + 1000 != mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]:
                                revert with 0, 'ds-math-mul-overflow'
                            if not Mask(112, 0, ext_call.return_data[32]):
                                if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]) - (mem[(32 * idx) + (32 * ('cd', 68).length) + 160] * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-add-overflow'
                                require (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]) - (mem[(32 * idx) + (32 * ('cd', 68).length) + 160] * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192])
                                require idx + 1 < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 160]
                                mem[(32 * idx + 1) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]) - (mem[(32 * idx) + (32 * ('cd', 68).length) + 160] * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192])
                            else:
                                require Mask(112, 0, ext_call.return_data[32])
                                if (1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * Mask(112, 0, ext_call.return_data[32])) - (mem[(32 * idx) + (32 * ('cd', 68).length) + 160] * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * Mask(112, 0, ext_call.return_data[32])) / Mask(112, 0, ext_call.return_data[32]) != (1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]) - (mem[(32 * idx) + (32 * ('cd', 68).length) + 160] * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]) - (mem[(32 * idx) + (32 * ('cd', 68).length) + 160] * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-add-overflow'
                                require (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]) - (mem[(32 * idx) + (32 * ('cd', 68).length) + 160] * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192])
                                require idx + 1 < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 160]
                                mem[(32 * idx + 1) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] = (1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * Mask(112, 0, ext_call.return_data[32])) - (mem[(32 * idx) + (32 * ('cd', 68).length) + 160] * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * Mask(112, 0, ext_call.return_data[32])) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]) - (mem[(32 * idx) + (32 * ('cd', 68).length) + 160] * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192])
                        require idx < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 192]
                        mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 224] = 1
                    else:
                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                            revert with 0, 
                                        32,
                                        39,
                                        0xfe42616c616e6365724c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                        mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 331 len 25]
                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                            revert with 0, 
                                        32,
                                        39,
                                        0xfe42616c616e6365724c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                        mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 331 len 25]
                        if -mem[(32 * idx) + (32 * ('cd', 68).length) + 160] + 1000 > 1000:
                            revert with 0, 'ds-math-sub-underflow'
                        if not -mem[(32 * idx) + (32 * ('cd', 68).length) + 160] + 1000:
                            if Mask(112, 0, ext_call.return_data[0]):
                                require Mask(112, 0, ext_call.return_data[0])
                                if 0 / Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-mul-overflow'
                            if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * Mask(112, 0, ext_call.return_data[32]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require 1000 * Mask(112, 0, ext_call.return_data[32])
                            require idx + 1 < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 160]
                            mem[(32 * idx + 1) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] = 0 / 1000 * Mask(112, 0, ext_call.return_data[32])
                        else:
                            require -mem[(32 * idx) + (32 * ('cd', 68).length) + 160] + 1000
                            if (1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]) - (mem[(32 * idx) + (32 * ('cd', 68).length) + 160] * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]) / -mem[(32 * idx) + (32 * ('cd', 68).length) + 160] + 1000 != mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]:
                                revert with 0, 'ds-math-mul-overflow'
                            if not Mask(112, 0, ext_call.return_data[0]):
                                if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]) - (mem[(32 * idx) + (32 * ('cd', 68).length) + 160] * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-add-overflow'
                                require (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]) - (mem[(32 * idx) + (32 * ('cd', 68).length) + 160] * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192])
                                require idx + 1 < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 160]
                                mem[(32 * idx + 1) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]) - (mem[(32 * idx) + (32 * ('cd', 68).length) + 160] * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192])
                            else:
                                require Mask(112, 0, ext_call.return_data[0])
                                if (1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * Mask(112, 0, ext_call.return_data[0])) - (mem[(32 * idx) + (32 * ('cd', 68).length) + 160] * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[0]) != (1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]) - (mem[(32 * idx) + (32 * ('cd', 68).length) + 160] * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]) - (mem[(32 * idx) + (32 * ('cd', 68).length) + 160] * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-add-overflow'
                                require (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]) - (mem[(32 * idx) + (32 * ('cd', 68).length) + 160] * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192])
                                require idx + 1 < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 160]
                                mem[(32 * idx + 1) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] = (1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * Mask(112, 0, ext_call.return_data[0])) - (mem[(32 * idx) + (32 * ('cd', 68).length) + 160] * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * Mask(112, 0, ext_call.return_data[0])) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]) - (mem[(32 * idx) + (32 * ('cd', 68).length) + 160] * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192])
                        require idx < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 192]
                        mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 224] = 0
                    idx = idx + 1
                    s = ext_call.return_data[0]
                    continue 
                if address(cd[4]) != address(s):
                    revert with 0, 'BalancerLibrary: IN_NOT_EQ_OUT'
                require mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 160] - 1 < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 160]
                if mem[(32 * mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 160] - 1) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] < cd[36]:
                    revert with 0, 'Balancer: NO_PROFIT'
                require 0 < ('cd', 68).length
                mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 260] = address(('cd', 68)[0])
                mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 292] = cd[36]
                mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 224] = 68
                mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 256 len 4] = unknown_0xa9059cbb(?????)
                mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 324 len 64] = 0, address(('cd', 68)[0]), Mask(224, 32, cd[36]) >> 32
                mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 416 len 4] = uint32(cd[36])
                call address(cd[4]) with:
                     gas gas_remaining wei
                    args cd[36], Mask(224, 32, address(('cd', 68)[0]), Mask(224, 32, cd[36]) >> 32) >> 32, mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 388 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                    if not ('cd', 68).length:
                        mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 324] = ('cd', 68).length
                        mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                        mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356] = 0
                        idx = 0
                        while idx < ('cd', 68).length:
                            require idx + 1 < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 160]
                            _7659 = mem[(32 * idx + 1) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                            require idx < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 192]
                            if 0 == mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 224]:
                                if idx >= ('cd', 68).length - 1:
                                    require idx < ('cd', 68).length
                                    _8250 = mem[(32 * idx) + (32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 388] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 392] = _7659
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 424] = 0
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 456] = this.address
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 488] = 128
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 520] = 0
                                    s = 0
                                    while s < 0:
                                        mem[s + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 552] = mem[s + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 388]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(address(_8250))
                                    call address(_8250).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _7659, 0, address(this.address), 128, 0, None
                                else:
                                    require idx + 1 < ('cd', 68).length
                                    _8073 = mem[(32 * idx + 1) + (32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]
                                    require idx < ('cd', 68).length
                                    _8553 = mem[(32 * idx) + (32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 388] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 392] = _7659
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 424] = 0
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 456] = address(_8073)
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 488] = 128
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 520] = 0
                                    s = 0
                                    while s < 0:
                                        mem[s + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 552] = mem[s + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 388]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(address(_8553))
                                    call address(_8553).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _7659, 0, address(_8073), 128, 0, None
                            else:
                                if idx >= ('cd', 68).length - 1:
                                    require idx < ('cd', 68).length
                                    _8255 = mem[(32 * idx) + (32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 388] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 392] = 0
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 424] = _7659
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 456] = this.address
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 488] = 128
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 520] = 0
                                    s = 0
                                    while s < 0:
                                        mem[s + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 552] = mem[s + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 388]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(address(_8255))
                                    call address(_8255).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _7659, address(this.address), 128, 0, None
                                else:
                                    require idx + 1 < ('cd', 68).length
                                    _8075 = mem[(32 * idx + 1) + (32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]
                                    require idx < ('cd', 68).length
                                    _8557 = mem[(32 * idx) + (32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 388] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 392] = 0
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 424] = _7659
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 456] = address(_8075)
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 488] = 128
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 520] = 0
                                    s = 0
                                    while s < 0:
                                        mem[s + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 552] = mem[s + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 388]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(address(_8557))
                                    call address(_8557).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _7659, address(_8075), 128, 0, None
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            continue 
                    else:
                        require ('cd', 68).length >= 32
                        if not mem[128]:
                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                        mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 324] = ('cd', 68).length
                        mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                        mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356] = 0
                        mem[64] = (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 388
                        idx = 0
                        while idx < ('cd', 68).length:
                            require idx + 1 < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 160]
                            _7663 = mem[(32 * idx + 1) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                            require idx < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 192]
                            if 0 == mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 224]:
                                if idx >= mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 324] - 1:
                                    require idx < mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 324]
                                    _8260 = mem[(32 * idx) + (32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]
                                    _8261 = mem[64]
                                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _7663
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = this.address
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]
                                    _8263 = mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]
                                    s = 0
                                    while s < _8263:
                                        mem[s + mem[64] + 164] = mem[s + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 388]
                                        s = s + 32
                                        continue 
                                    if not _8263 % 32:
                                        require ext_code.size(address(_8260))
                                        call address(_8260).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _8263 + _8261 + -mem[64] + 160]
                                    else:
                                        mem[floor32(_8263) + _8261 + 164] = mem[floor32(_8263) + _8261 + -(_8263 % 32) + 196 len _8263 % 32]
                                        require ext_code.size(address(_8260))
                                        call address(_8260).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len floor32(_8263) + _8261 + -mem[64] + 192]
                                else:
                                    require idx + 1 < mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 324]
                                    _8077 = mem[(32 * idx + 1) + (32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]
                                    require idx < mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 324]
                                    _8561 = mem[(32 * idx) + (32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]
                                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _7663
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = address(_8077)
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]
                                    _8564 = mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]
                                    s = 0
                                    while s < _8564:
                                        mem[s + mem[64] + 164] = mem[s + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 388]
                                        s = s + 32
                                        continue 
                                    if not _8564 % 32:
                                        require ext_code.size(address(_8561))
                                        call address(_8561).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _7663, 0, address(_8077), 128, mem[mem[64] + 132 len _8564 + 32]
                                    else:
                                        mem[floor32(_8564) + mem[64] + 164] = mem[floor32(_8564) + mem[64] + -(_8564 % 32) + 196 len _8564 % 32]
                                        require ext_code.size(address(_8561))
                                        call address(_8561).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _7663, 0, address(_8077), 128, mem[mem[64] + 132 len floor32(_8564) + 64]
                            else:
                                if idx >= mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 324] - 1:
                                    require idx < mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 324]
                                    _8265 = mem[(32 * idx) + (32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]
                                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = _7663
                                    mem[mem[64] + 68] = this.address
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]
                                    _8268 = mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]
                                    s = 0
                                    while s < _8268:
                                        mem[s + mem[64] + 164] = mem[s + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 388]
                                        s = s + 32
                                        continue 
                                    if not _8268 % 32:
                                        require ext_code.size(address(_8265))
                                        call address(_8265).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _7663, address(this.address), 128, mem[mem[64] + 132 len _8268 + 32]
                                    else:
                                        mem[floor32(_8268) + mem[64] + 164] = mem[floor32(_8268) + mem[64] + -(_8268 % 32) + 196 len _8268 % 32]
                                        require ext_code.size(address(_8265))
                                        call address(_8265).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _7663, address(this.address), 128, mem[mem[64] + 132 len floor32(_8268) + 64]
                                else:
                                    require idx + 1 < mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 324]
                                    _8079 = mem[(32 * idx + 1) + (32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]
                                    require idx < mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 324]
                                    _8565 = mem[(32 * idx) + (32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]
                                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = _7663
                                    mem[mem[64] + 68] = address(_8079)
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]
                                    _8568 = mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]
                                    s = 0
                                    while s < _8568:
                                        mem[s + mem[64] + 164] = mem[s + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 388]
                                        s = s + 32
                                        continue 
                                    if not _8568 % 32:
                                        require ext_code.size(address(_8565))
                                        call address(_8565).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _7663, address(_8079), 128, mem[mem[64] + 132 len _8568 + 32]
                                    else:
                                        mem[floor32(_8568) + mem[64] + 164] = mem[floor32(_8568) + mem[64] + -(_8568 % 32) + 196 len _8568 % 32]
                                        require ext_code.size(address(_8565))
                                        call address(_8565).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _7663, address(_8079), 128, mem[mem[64] + 132 len floor32(_8568) + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            continue 
                else:
                    mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 324] = return_data.size
                    mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                    if not return_data.size:
                        mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 325] = ('cd', 68).length
                        mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                        mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357] = 0
                        mem[64] = (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 389
                        idx = 0
                        while idx < ('cd', 68).length:
                            require idx + 1 < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 160]
                            _7667 = mem[(32 * idx + 1) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                            require idx < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 192]
                            if 0 == mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 224]:
                                if idx >= mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 325] - 1:
                                    require idx < mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 325]
                                    _8270 = mem[(32 * idx) + (32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 389] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 393] = _7667
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 425] = 0
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 457] = this.address
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 489] = 128
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 521] = mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]
                                    _8273 = mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]
                                    s = 0
                                    while s < _8273:
                                        mem[s + mem[64] + 164] = mem[s + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 389]
                                        s = s + 32
                                        continue 
                                    if not _8273 % 32:
                                        require ext_code.size(address(_8270))
                                        call address(_8270).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _8273 + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + -mem[64] + 549]
                                    else:
                                        mem[floor32(_8273) + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 553] = mem[floor32(_8273) + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + -(_8273 % 32) + 585 len _8273 % 32]
                                        require ext_code.size(address(_8270))
                                        call address(_8270).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len floor32(_8273) + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + -mem[64] + 581]
                                else:
                                    require idx + 1 < mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 325]
                                    _8081 = mem[(32 * idx + 1) + (32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]
                                    require idx < mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 325]
                                    _8569 = mem[(32 * idx) + (32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 389] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 393] = _7667
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 425] = 0
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 457] = address(_8081)
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 489] = 128
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 521] = mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]
                                    s = 0
                                    while s < mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]:
                                        mem[s + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 553] = mem[s + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 389]
                                        s = s + 32
                                        continue 
                                    if not mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357] % 32:
                                        require ext_code.size(address(_8569))
                                        call address(_8569).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _7667, 0, address(_8081), 128, mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357], mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 553 len mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]]
                                    else:
                                        mem[floor32(mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]) + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 553] = mem[floor32(mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]) + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + -(mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357] % 32) + 585 len mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357] % 32]
                                        require ext_code.size(address(_8569))
                                        call address(_8569).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _7667, 0, address(_8081), 128, mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357], mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 553 len floor32(mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]) + 32]
                            else:
                                if idx >= mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 325] - 1:
                                    require idx < mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 325]
                                    _8275 = mem[(32 * idx) + (32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 389] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 393] = 0
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 425] = _7667
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 457] = this.address
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 489] = 128
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 521] = mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]
                                    s = 0
                                    while s < mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]:
                                        mem[s + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 553] = mem[s + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 389]
                                        s = s + 32
                                        continue 
                                    if not mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357] % 32:
                                        require ext_code.size(address(_8275))
                                        call address(_8275).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _7667, address(this.address), 128, mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357], mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 553 len mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]]
                                    else:
                                        mem[floor32(mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]) + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 553] = mem[floor32(mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]) + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + -(mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357] % 32) + 585 len mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357] % 32]
                                        require ext_code.size(address(_8275))
                                        call address(_8275).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _7667, address(this.address), 128, mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357], mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 553 len floor32(mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]) + 32]
                                else:
                                    require idx + 1 < mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 325]
                                    _8083 = mem[(32 * idx + 1) + (32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]
                                    require idx < mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 325]
                                    _8573 = mem[(32 * idx) + (32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 389] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 393] = 0
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 425] = _7667
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 457] = address(_8083)
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 489] = 128
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 521] = mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]
                                    s = 0
                                    while s < mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]:
                                        mem[s + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 553] = mem[s + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 389]
                                        s = s + 32
                                        continue 
                                    if not mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357] % 32:
                                        require ext_code.size(address(_8573))
                                        call address(_8573).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _7667, address(_8083), 128, mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357], mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 553 len mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]]
                                    else:
                                        mem[floor32(mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]) + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 553] = mem[floor32(mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]) + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + -(mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357] % 32) + 585 len mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357] % 32]
                                        require ext_code.size(address(_8573))
                                        call address(_8573).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _7667, address(_8083), 128, mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357], mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 553 len floor32(mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            continue 
                    else:
                        require return_data.size >= 32
                        if not mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]:
                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                        mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 325] = ('cd', 68).length
                        mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                        mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357] = 0
                        mem[64] = (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 389
                        idx = 0
                        while idx < ('cd', 68).length:
                            require idx + 1 < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 160]
                            _7671 = mem[(32 * idx + 1) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                            require idx < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 192]
                            if 0 == mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 224]:
                                if idx >= mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 325] - 1:
                                    require idx < mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 325]
                                    _8280 = mem[(32 * idx) + (32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]
                                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _7671
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = this.address
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]
                                    _8283 = mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]
                                    s = 0
                                    while s < _8283:
                                        mem[s + mem[64] + 164] = mem[s + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 389]
                                        s = s + 32
                                        continue 
                                    if not _8283 % 32:
                                        require ext_code.size(address(_8280))
                                        call address(_8280).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _7671, 0, address(this.address), 128, mem[mem[64] + 132 len _8283 + 32]
                                    else:
                                        mem[floor32(_8283) + mem[64] + 164] = mem[floor32(_8283) + mem[64] + -(_8283 % 32) + 196 len _8283 % 32]
                                        require ext_code.size(address(_8280))
                                        call address(_8280).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _7671, 0, address(this.address), 128, mem[mem[64] + 132 len floor32(_8283) + 64]
                                else:
                                    require idx + 1 < mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 325]
                                    _8085 = mem[(32 * idx + 1) + (32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]
                                    require idx < mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 325]
                                    _8577 = mem[(32 * idx) + (32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]
                                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _7671
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = address(_8085)
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]
                                    _8580 = mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]
                                    s = 0
                                    while s < _8580:
                                        mem[s + mem[64] + 164] = mem[s + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 389]
                                        s = s + 32
                                        continue 
                                    if not _8580 % 32:
                                        require ext_code.size(address(_8577))
                                        call address(_8577).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _7671, 0, address(_8085), 128, mem[mem[64] + 132 len _8580 + 32]
                                    else:
                                        mem[floor32(_8580) + mem[64] + 164] = mem[floor32(_8580) + mem[64] + -(_8580 % 32) + 196 len _8580 % 32]
                                        require ext_code.size(address(_8577))
                                        call address(_8577).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _7671, 0, address(_8085), 128, mem[mem[64] + 132 len floor32(_8580) + 64]
                            else:
                                if idx >= mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 325] - 1:
                                    require idx < mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 325]
                                    _8285 = mem[(32 * idx) + (32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]
                                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = _7671
                                    mem[mem[64] + 68] = this.address
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]
                                    _8288 = mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]
                                    s = 0
                                    while s < _8288:
                                        mem[s + mem[64] + 164] = mem[s + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 389]
                                        s = s + 32
                                        continue 
                                    if not _8288 % 32:
                                        require ext_code.size(address(_8285))
                                        call address(_8285).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _7671, address(this.address), 128, mem[mem[64] + 132 len _8288 + 32]
                                    else:
                                        mem[floor32(_8288) + mem[64] + 164] = mem[floor32(_8288) + mem[64] + -(_8288 % 32) + 196 len _8288 % 32]
                                        require ext_code.size(address(_8285))
                                        call address(_8285).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _7671, address(this.address), 128, mem[mem[64] + 132 len floor32(_8288) + 64]
                                else:
                                    require idx + 1 < mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 325]
                                    _8087 = mem[(32 * idx + 1) + (32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]
                                    require idx < mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 325]
                                    _8581 = mem[(32 * idx) + (32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]
                                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = _7671
                                    mem[mem[64] + 68] = address(_8087)
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]
                                    _8584 = mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]
                                    s = 0
                                    while s < _8584:
                                        mem[s + mem[64] + 164] = mem[s + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 389]
                                        s = s + 32
                                        continue 
                                    if not _8584 % 32:
                                        require ext_code.size(address(_8581))
                                        call address(_8581).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _7671, address(_8087), 128, mem[mem[64] + 132 len _8584 + 32]
                                    else:
                                        mem[floor32(_8584) + mem[64] + 164] = mem[floor32(_8584) + mem[64] + -(_8584 % 32) + 196 len _8584 % 32]
                                        require ext_code.size(address(_8581))
                                        call address(_8581).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _7671, address(_8087), 128, mem[mem[64] + 132 len floor32(_8584) + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            continue 
            else:
                mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 224 len 32 * ('cd', 68).length] = call.data[calldata.size len 32 * ('cd', 68).length]
                idx = 0
                s = address(cd[4])
                while idx < ('cd', 68).length:
                    require idx < ('cd', 68).length
                    _2868 = mem[(32 * idx) + 128]
                    require ext_code.size(mem[(32 * idx) + 140 len 20])
                    staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 224 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require return_data.size >= 96
                        require ext_code.size(address(_2868))
                        staticcall address(_2868).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require return_data.size >= 32
                            require ext_code.size(address(_2868))
                            staticcall address(_2868).token1() with:
                                    gas gas_remaining wei
                            mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 224] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require return_data.size >= 32
                                if address(ext_call.return_data[0]) == address(s):
                                    require idx < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 160]
                                    require idx < mem[(32 * ('cd', 68).length) + 128]
                                    if mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] <= 0:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x5942616c616e6365724c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                                    mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 334 len 22]
                                    else:
                                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                            revert with 0, 
                                                        32,
                                                        39,
                                                        0xfe42616c616e6365724c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                                        mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 331 len 25]
                                        else:
                                            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                revert with 0, 
                                                            32,
                                                            39,
                                                            0xfe42616c616e6365724c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                                            mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 331 len 25]
                                            else:
                                                if -mem[(32 * idx) + (32 * ('cd', 68).length) + 160] + 1000 > 1000:
                                                    revert with 0, 'ds-math-sub-underflow'
                                                else:
                                                    if not -mem[(32 * idx) + (32 * ('cd', 68).length) + 160] + 1000:
                                                        if not Mask(112, 0, ext_call.return_data[32]):
                                                            if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                                                                revert with 0, 'ds-math-mul-overflow'
                                                            else:
                                                                if 1000 * Mask(112, 0, ext_call.return_data[0]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                                                    revert with 0, 'ds-math-add-overflow'
                                                                else:
                                                                    require 1000 * Mask(112, 0, ext_call.return_data[0])
                                                                    require idx + 1 < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 160]
                                                                    mem[(32 * idx + 1) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] = 0 / 1000 * Mask(112, 0, ext_call.return_data[0])
                                                                    require idx < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 192]
                                                                    mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 224] = 1
                                                                    idx = idx + 1
                                                                    s = ext_call.return_data[0]
                                                                    continue 
                                                        else:
                                                            require Mask(112, 0, ext_call.return_data[32])
                                                            if 0 / Mask(112, 0, ext_call.return_data[32]):
                                                                revert with 0, 'ds-math-mul-overflow'
                                                            else:
                                                                if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                                                                    revert with 0, 'ds-math-mul-overflow'
                                                                else:
                                                                    if 1000 * Mask(112, 0, ext_call.return_data[0]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                                                        revert with 0, 'ds-math-add-overflow'
                                                                    else:
                                                                        require 1000 * Mask(112, 0, ext_call.return_data[0])
                                                                        require idx + 1 < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 160]
                                                                        mem[(32 * idx + 1) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] = 0 / 1000 * Mask(112, 0, ext_call.return_data[0])
                                                                        require idx < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 192]
                                                                        mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 224] = 1
                                                                        idx = idx + 1
                                                                        s = ext_call.return_data[0]
                                                                        continue 
                                                    else:
                                                        require -mem[(32 * idx) + (32 * ('cd', 68).length) + 160] + 1000
                                                        if (1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]) - (mem[(32 * idx) + (32 * ('cd', 68).length) + 160] * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]) / -mem[(32 * idx) + (32 * ('cd', 68).length) + 160] + 1000 != mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]:
                                                            revert with 0, 'ds-math-mul-overflow'
                                                        else:
                                                            if not Mask(112, 0, ext_call.return_data[32]):
                                                                if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                                                                    revert with 0, 'ds-math-mul-overflow'
                                                                else:
                                                                    if (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]) - (mem[(32 * idx) + (32 * ('cd', 68).length) + 160] * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                                                        revert with 0, 'ds-math-add-overflow'
                                                                    else:
                                                                        require (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]) - (mem[(32 * idx) + (32 * ('cd', 68).length) + 160] * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192])
                                                                        require idx + 1 < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 160]
                                                                        mem[(32 * idx + 1) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]) - (mem[(32 * idx) + (32 * ('cd', 68).length) + 160] * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192])
                                                                        require idx < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 192]
                                                                        mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 224] = 1
                                                                        idx = idx + 1
                                                                        s = ext_call.return_data[0]
                                                                        continue 
                                                            else:
                                                                require Mask(112, 0, ext_call.return_data[32])
                                                                if (1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * Mask(112, 0, ext_call.return_data[32])) - (mem[(32 * idx) + (32 * ('cd', 68).length) + 160] * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * Mask(112, 0, ext_call.return_data[32])) / Mask(112, 0, ext_call.return_data[32]) != (1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]) - (mem[(32 * idx) + (32 * ('cd', 68).length) + 160] * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]):
                                                                    revert with 0, 'ds-math-mul-overflow'
                                                                else:
                                                                    if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                                                                        revert with 0, 'ds-math-mul-overflow'
                                                                    else:
                                                                        if (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]) - (mem[(32 * idx) + (32 * ('cd', 68).length) + 160] * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                                                            revert with 0, 'ds-math-add-overflow'
                                                                        else:
                                                                            require (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]) - (mem[(32 * idx) + (32 * ('cd', 68).length) + 160] * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192])
                                                                            require idx + 1 < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 160]
                                                                            mem[(32 * idx + 1) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] = (1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * Mask(112, 0, ext_call.return_data[32])) - (mem[(32 * idx) + (32 * ('cd', 68).length) + 160] * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * Mask(112, 0, ext_call.return_data[32])) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]) - (mem[(32 * idx) + (32 * ('cd', 68).length) + 160] * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192])
                                                                            require idx < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 192]
                                                                            mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 224] = 1
                                                                            idx = idx + 1
                                                                            s = ext_call.return_data[0]
                                                                            continue 
                                else:
                                    require idx < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 160]
                                    require idx < mem[(32 * ('cd', 68).length) + 128]
                                    if mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] <= 0:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x5942616c616e6365724c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                                    mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 334 len 22]
                                    else:
                                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                            revert with 0, 
                                                        32,
                                                        39,
                                                        0xfe42616c616e6365724c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                                        mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 331 len 25]
                                        else:
                                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                revert with 0, 
                                                            32,
                                                            39,
                                                            0xfe42616c616e6365724c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                                            mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 331 len 25]
                                            else:
                                                if -mem[(32 * idx) + (32 * ('cd', 68).length) + 160] + 1000 > 1000:
                                                    revert with 0, 'ds-math-sub-underflow'
                                                else:
                                                    if not -mem[(32 * idx) + (32 * ('cd', 68).length) + 160] + 1000:
                                                        if not Mask(112, 0, ext_call.return_data[0]):
                                                            if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                                                                revert with 0, 'ds-math-mul-overflow'
                                                            else:
                                                                if 1000 * Mask(112, 0, ext_call.return_data[32]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                                                    revert with 0, 'ds-math-add-overflow'
                                                                else:
                                                                    require 1000 * Mask(112, 0, ext_call.return_data[32])
                                                                    require idx + 1 < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 160]
                                                                    mem[(32 * idx + 1) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] = 0 / 1000 * Mask(112, 0, ext_call.return_data[32])
                                                                    require idx < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 192]
                                                                    mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 224] = 0
                                                                    idx = idx + 1
                                                                    s = ext_call.return_data[0]
                                                                    continue 
                                                        else:
                                                            require Mask(112, 0, ext_call.return_data[0])
                                                            if 0 / Mask(112, 0, ext_call.return_data[0]):
                                                                revert with 0, 'ds-math-mul-overflow'
                                                            else:
                                                                if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                                                                    revert with 0, 'ds-math-mul-overflow'
                                                                else:
                                                                    if 1000 * Mask(112, 0, ext_call.return_data[32]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                                                        revert with 0, 'ds-math-add-overflow'
                                                                    else:
                                                                        require 1000 * Mask(112, 0, ext_call.return_data[32])
                                                                        require idx + 1 < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 160]
                                                                        mem[(32 * idx + 1) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] = 0 / 1000 * Mask(112, 0, ext_call.return_data[32])
                                                                        require idx < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 192]
                                                                        mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 224] = 0
                                                                        idx = idx + 1
                                                                        s = ext_call.return_data[0]
                                                                        continue 
                                                    else:
                                                        require -mem[(32 * idx) + (32 * ('cd', 68).length) + 160] + 1000
                                                        if (1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]) - (mem[(32 * idx) + (32 * ('cd', 68).length) + 160] * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]) / -mem[(32 * idx) + (32 * ('cd', 68).length) + 160] + 1000 != mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]:
                                                            revert with 0, 'ds-math-mul-overflow'
                                                        else:
                                                            if not Mask(112, 0, ext_call.return_data[0]):
                                                                if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                                                                    revert with 0, 'ds-math-mul-overflow'
                                                                else:
                                                                    if (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]) - (mem[(32 * idx) + (32 * ('cd', 68).length) + 160] * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                                                        revert with 0, 'ds-math-add-overflow'
                                                                    else:
                                                                        require (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]) - (mem[(32 * idx) + (32 * ('cd', 68).length) + 160] * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192])
                                                                        require idx + 1 < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 160]
                                                                        mem[(32 * idx + 1) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]) - (mem[(32 * idx) + (32 * ('cd', 68).length) + 160] * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192])
                                                                        require idx < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 192]
                                                                        mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 224] = 0
                                                                        idx = idx + 1
                                                                        s = ext_call.return_data[0]
                                                                        continue 
                                                            else:
                                                                require Mask(112, 0, ext_call.return_data[0])
                                                                if (1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * Mask(112, 0, ext_call.return_data[0])) - (mem[(32 * idx) + (32 * ('cd', 68).length) + 160] * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[0]) != (1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]) - (mem[(32 * idx) + (32 * ('cd', 68).length) + 160] * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]):
                                                                    revert with 0, 'ds-math-mul-overflow'
                                                                else:
                                                                    if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                                                                        revert with 0, 'ds-math-mul-overflow'
                                                                    else:
                                                                        if (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]) - (mem[(32 * idx) + (32 * ('cd', 68).length) + 160] * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                                                            revert with 0, 'ds-math-add-overflow'
                                                                        else:
                                                                            require (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]) - (mem[(32 * idx) + (32 * ('cd', 68).length) + 160] * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192])
                                                                            require idx + 1 < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 160]
                                                                            mem[(32 * idx + 1) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] = (1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * Mask(112, 0, ext_call.return_data[0])) - (mem[(32 * idx) + (32 * ('cd', 68).length) + 160] * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * Mask(112, 0, ext_call.return_data[0])) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]) - (mem[(32 * idx) + (32 * ('cd', 68).length) + 160] * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192])
                                                                            require idx < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 192]
                                                                            mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 224] = 0
                                                                            idx = idx + 1
                                                                            s = ext_call.return_data[0]
                                                                            continue 
                if address(cd[4]) != address(s):
                    revert with 0, 'BalancerLibrary: IN_NOT_EQ_OUT'
                require mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 160] - 1 < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 160]
                if mem[(32 * mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 160] - 1) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] < cd[36]:
                    revert with 0, 'Balancer: NO_PROFIT'
                require 0 < ('cd', 68).length
                mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 260] = address(('cd', 68)[0])
                mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 292] = cd[36]
                mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 224] = 68
                mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 256 len 4] = unknown_0xa9059cbb(?????)
                mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 324 len 64] = 0, address(('cd', 68)[0]), Mask(224, 32, cd[36]) >> 32
                mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 416 len 4] = uint32(cd[36])
                call address(cd[4]) with:
                     gas gas_remaining wei
                    args cd[36], Mask(224, 32, address(('cd', 68)[0]), Mask(224, 32, cd[36]) >> 32) >> 32, mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 388 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                    if not ('cd', 68).length:
                        mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 324] = ('cd', 68).length
                        mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                        mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356] = 0
                        mem[64] = (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 388
                        idx = 0
                        while idx < ('cd', 68).length:
                            require idx + 1 < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 160]
                            _7675 = mem[(32 * idx + 1) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                            require idx < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 192]
                            if 0 == mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 224]:
                                if idx >= mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 324] - 1:
                                    require idx < mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 324]
                                    _8290 = mem[(32 * idx) + (32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 388] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 392] = _7675
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 424] = 0
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 456] = this.address
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 488] = 128
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 520] = mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]
                                    s = 0
                                    while s < mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]:
                                        mem[s + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 552] = mem[s + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 388]
                                        s = s + 32
                                        continue 
                                    if not mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356] % 32:
                                        require ext_code.size(address(_8290))
                                        call address(_8290).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _7675, 0, address(this.address), 128, mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356], mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 552 len mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]]
                                    else:
                                        mem[floor32(mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]) + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 552] = mem[floor32(mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]) + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + -(mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356] % 32) + 584 len mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356] % 32]
                                        require ext_code.size(address(_8290))
                                        call address(_8290).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _7675, 0, address(this.address), 128, mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356], mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 552 len floor32(mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]) + 32]
                                else:
                                    require idx + 1 < mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 324]
                                    _8089 = mem[(32 * idx + 1) + (32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]
                                    require idx < mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 324]
                                    _8585 = mem[(32 * idx) + (32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 388] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 392] = _7675
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 424] = 0
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 456] = address(_8089)
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 488] = 128
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 520] = mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]
                                    s = 0
                                    while s < mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]:
                                        mem[s + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 552] = mem[s + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 388]
                                        s = s + 32
                                        continue 
                                    if not mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356] % 32:
                                        require ext_code.size(address(_8585))
                                        call address(_8585).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _7675, 0, address(_8089), 128, mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356], mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 552 len mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]]
                                    else:
                                        mem[floor32(mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]) + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 552] = mem[floor32(mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]) + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + -(mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356] % 32) + 584 len mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356] % 32]
                                        require ext_code.size(address(_8585))
                                        call address(_8585).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _7675, 0, address(_8089), 128, mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356], mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 552 len floor32(mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]) + 32]
                            else:
                                if idx >= mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 324] - 1:
                                    require idx < mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 324]
                                    _8295 = mem[(32 * idx) + (32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 388] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 392] = 0
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 424] = _7675
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 456] = this.address
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 488] = 128
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 520] = mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]
                                    s = 0
                                    while s < mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]:
                                        mem[s + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 552] = mem[s + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 388]
                                        s = s + 32
                                        continue 
                                    if not mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356] % 32:
                                        require ext_code.size(address(_8295))
                                        call address(_8295).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _7675, address(this.address), 128, mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356], mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 552 len mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]]
                                    else:
                                        mem[floor32(mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]) + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 552] = mem[floor32(mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]) + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + -(mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356] % 32) + 584 len mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356] % 32]
                                        require ext_code.size(address(_8295))
                                        call address(_8295).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _7675, address(this.address), 128, mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356], mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 552 len floor32(mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]) + 32]
                                else:
                                    require idx + 1 < mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 324]
                                    _8091 = mem[(32 * idx + 1) + (32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]
                                    require idx < mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 324]
                                    _8589 = mem[(32 * idx) + (32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 388] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 392] = 0
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 424] = _7675
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 456] = address(_8091)
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 488] = 128
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 520] = mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]
                                    _8592 = mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]
                                    s = 0
                                    while s < _8592:
                                        mem[s + mem[64] + 164] = mem[s + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 388]
                                        s = s + 32
                                        continue 
                                    if not _8592 % 32:
                                        require ext_code.size(address(_8589))
                                        call address(_8589).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _8592 + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + -mem[64] + 548]
                                    else:
                                        mem[floor32(_8592) + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 552] = mem[floor32(_8592) + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + -(_8592 % 32) + 584 len _8592 % 32]
                                        require ext_code.size(address(_8589))
                                        call address(_8589).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len floor32(_8592) + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + -mem[64] + 580]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            continue 
                    else:
                        require ('cd', 68).length >= 32
                        if not mem[128]:
                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                        mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 324] = ('cd', 68).length
                        mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                        mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356] = 0
                        mem[64] = (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 388
                        idx = 0
                        while idx < ('cd', 68).length:
                            require idx + 1 < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 160]
                            _7679 = mem[(32 * idx + 1) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                            require idx < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 192]
                            if mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 224] != 0:
                                if idx >= mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 324] - 1:
                                    require idx < mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 324]
                                    _8305 = mem[(32 * idx) + (32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]
                                    _8306 = mem[64]
                                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = _7679
                                    mem[mem[64] + 68] = this.address
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]
                                    _8308 = mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]
                                    s = 0
                                    while s < _8308:
                                        mem[s + mem[64] + 164] = mem[s + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 388]
                                        s = s + 32
                                        continue 
                                    if not _8308 % 32:
                                        require ext_code.size(address(_8305))
                                        call address(_8305).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _8308 + _8306 + -mem[64] + 160]
                                    else:
                                        mem[floor32(_8308) + _8306 + 164] = mem[floor32(_8308) + _8306 + -(_8308 % 32) + 196 len _8308 % 32]
                                        require ext_code.size(address(_8305))
                                        call address(_8305).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len floor32(_8308) + _8306 + -mem[64] + 192]
                                else:
                                    require idx + 1 < mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 324]
                                    _8095 = mem[(32 * idx + 1) + (32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]
                                    require idx < mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 324]
                                    _8597 = mem[(32 * idx) + (32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]
                                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = _7679
                                    mem[mem[64] + 68] = address(_8095)
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]
                                    _8600 = mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]
                                    s = 0
                                    while s < _8600:
                                        mem[s + mem[64] + 164] = mem[s + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 388]
                                        s = s + 32
                                        continue 
                                    if not _8600 % 32:
                                        require ext_code.size(address(_8597))
                                        call address(_8597).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _7679, address(_8095), 128, mem[mem[64] + 132 len _8600 + 32]
                                    else:
                                        mem[floor32(_8600) + mem[64] + 164] = mem[floor32(_8600) + mem[64] + -(_8600 % 32) + 196 len _8600 % 32]
                                        require ext_code.size(address(_8597))
                                        call address(_8597).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _7679, address(_8095), 128, mem[mem[64] + 132 len floor32(_8600) + 64]
                            else:
                                if idx >= mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 324] - 1:
                                    require idx < mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 324]
                                    _8300 = mem[(32 * idx) + (32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]
                                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _7679
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = this.address
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]
                                    _8303 = mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]
                                    s = 0
                                    while s < _8303:
                                        mem[s + mem[64] + 164] = mem[s + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 388]
                                        s = s + 32
                                        continue 
                                    if not _8303 % 32:
                                        require ext_code.size(address(_8300))
                                        call address(_8300).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _7679, 0, address(this.address), 128, mem[mem[64] + 132 len _8303 + 32]
                                    else:
                                        mem[floor32(_8303) + mem[64] + 164] = mem[floor32(_8303) + mem[64] + -(_8303 % 32) + 196 len _8303 % 32]
                                        require ext_code.size(address(_8300))
                                        call address(_8300).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _7679, 0, address(this.address), 128, mem[mem[64] + 132 len floor32(_8303) + 64]
                                else:
                                    require idx + 1 < mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 324]
                                    _8093 = mem[(32 * idx + 1) + (32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]
                                    require idx < mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 324]
                                    _8593 = mem[(32 * idx) + (32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]
                                    _8594 = mem[64]
                                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _7679
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = address(_8093)
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]
                                    _8596 = mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]
                                    s = 0
                                    while s < _8596:
                                        mem[s + mem[64] + 164] = mem[s + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 388]
                                        s = s + 32
                                        continue 
                                    if not _8596 % 32:
                                        require ext_code.size(address(_8593))
                                        call address(_8593).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _8596 + _8594 + -mem[64] + 160]
                                    else:
                                        mem[floor32(_8596) + _8594 + 164] = mem[floor32(_8596) + _8594 + -(_8596 % 32) + 196 len _8596 % 32]
                                        require ext_code.size(address(_8593))
                                        call address(_8593).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len floor32(_8596) + _8594 + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            continue 
                else:
                    mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 324] = return_data.size
                    mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                    if not return_data.size:
                        mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 325] = ('cd', 68).length
                        mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                        mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357] = 0
                        mem[64] = (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 389
                        idx = 0
                        while idx < ('cd', 68).length:
                            require idx + 1 < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 160]
                            _7683 = mem[(32 * idx + 1) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                            require idx < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 192]
                            if mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 224] != 0:
                                if idx >= mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 325] - 1:
                                    require idx < mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 325]
                                    _8315 = mem[(32 * idx) + (32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 389] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 393] = 0
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 425] = _7683
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 457] = this.address
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 489] = 128
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 521] = mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]
                                    _8318 = mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]
                                    s = 0
                                    while s < _8318:
                                        mem[s + mem[64] + 164] = mem[s + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 389]
                                        s = s + 32
                                        continue 
                                    if not _8318 % 32:
                                        require ext_code.size(address(_8315))
                                        call address(_8315).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _8318 + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + -mem[64] + 549]
                                    else:
                                        mem[floor32(_8318) + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 553] = mem[floor32(_8318) + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + -(_8318 % 32) + 585 len _8318 % 32]
                                        require ext_code.size(address(_8315))
                                        call address(_8315).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len floor32(_8318) + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + -mem[64] + 581]
                                else:
                                    require idx + 1 < mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 325]
                                    _8099 = mem[(32 * idx + 1) + (32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]
                                    require idx < mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 325]
                                    _8605 = mem[(32 * idx) + (32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 389] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 393] = 0
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 425] = _7683
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 457] = address(_8099)
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 489] = 128
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 521] = mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]
                                    s = 0
                                    while s < mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]:
                                        mem[s + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 553] = mem[s + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 389]
                                        s = s + 32
                                        continue 
                                    if not mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357] % 32:
                                        require ext_code.size(address(_8605))
                                        call address(_8605).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _7683, address(_8099), 128, mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357], mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 553 len mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]]
                                    else:
                                        mem[floor32(mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]) + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 553] = mem[floor32(mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]) + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + -(mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357] % 32) + 585 len mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357] % 32]
                                        require ext_code.size(address(_8605))
                                        call address(_8605).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _7683, address(_8099), 128, mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357], mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 553 len floor32(mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]) + 32]
                            else:
                                if idx >= mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 325] - 1:
                                    require idx < mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 325]
                                    _8310 = mem[(32 * idx) + (32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 389] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 393] = _7683
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 425] = 0
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 457] = this.address
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 489] = 128
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 521] = mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]
                                    _8313 = mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]
                                    s = 0
                                    while s < _8313:
                                        mem[s + mem[64] + 164] = mem[s + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 389]
                                        s = s + 32
                                        continue 
                                    if not _8313 % 32:
                                        require ext_code.size(address(_8310))
                                        call address(_8310).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _8313 + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + -mem[64] + 549]
                                    else:
                                        mem[floor32(_8313) + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 553] = mem[floor32(_8313) + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + -(_8313 % 32) + 585 len _8313 % 32]
                                        require ext_code.size(address(_8310))
                                        call address(_8310).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len floor32(_8313) + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + -mem[64] + 581]
                                else:
                                    require idx + 1 < mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 325]
                                    _8097 = mem[(32 * idx + 1) + (32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]
                                    require idx < mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 325]
                                    _8601 = mem[(32 * idx) + (32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 389] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 393] = _7683
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 425] = 0
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 457] = address(_8097)
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 489] = 128
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 521] = mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]
                                    _8604 = mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]
                                    s = 0
                                    while s < _8604:
                                        mem[s + mem[64] + 164] = mem[s + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 389]
                                        s = s + 32
                                        continue 
                                    if not _8604 % 32:
                                        require ext_code.size(address(_8601))
                                        call address(_8601).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _8604 + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + -mem[64] + 549]
                                    else:
                                        mem[floor32(_8604) + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 553] = mem[floor32(_8604) + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + -(_8604 % 32) + 585 len _8604 % 32]
                                        require ext_code.size(address(_8601))
                                        call address(_8601).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len floor32(_8604) + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + -mem[64] + 581]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            continue 
                    else:
                        require return_data.size >= 32
                        if not mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]:
                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                        mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 325] = ('cd', 68).length
                        mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                        mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357] = 0
                        mem[64] = (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 389
                        idx = 0
                        while idx < ('cd', 68).length:
                            require idx + 1 < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 160]
                            _7687 = mem[(32 * idx + 1) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                            require idx < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 192]
                            if 0 == mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 224]:
                                if idx >= mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 325] - 1:
                                    require idx < mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 325]
                                    _8320 = mem[(32 * idx) + (32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]
                                    _8321 = mem[64]
                                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _7687
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = this.address
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]
                                    _8323 = mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]
                                    s = 0
                                    while s < _8323:
                                        mem[s + mem[64] + 164] = mem[s + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 389]
                                        s = s + 32
                                        continue 
                                    if not _8323 % 32:
                                        require ext_code.size(address(_8320))
                                        call address(_8320).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _8323 + _8321 + -mem[64] + 160]
                                    else:
                                        mem[floor32(_8323) + _8321 + 164] = mem[floor32(_8323) + _8321 + -(_8323 % 32) + 196 len _8323 % 32]
                                        require ext_code.size(address(_8320))
                                        call address(_8320).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len floor32(_8323) + _8321 + -mem[64] + 192]
                                else:
                                    require idx + 1 < mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 325]
                                    _8101 = mem[(32 * idx + 1) + (32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]
                                    require idx < mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 325]
                                    _8609 = mem[(32 * idx) + (32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]
                                    _8610 = mem[64]
                                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _7687
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = address(_8101)
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]
                                    _8612 = mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]
                                    s = 0
                                    while s < _8612:
                                        mem[s + mem[64] + 164] = mem[s + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 389]
                                        s = s + 32
                                        continue 
                                    if not _8612 % 32:
                                        require ext_code.size(address(_8609))
                                        call address(_8609).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _8612 + _8610 + -mem[64] + 160]
                                    else:
                                        mem[floor32(_8612) + _8610 + 164] = mem[floor32(_8612) + _8610 + -(_8612 % 32) + 196 len _8612 % 32]
                                        require ext_code.size(address(_8609))
                                        call address(_8609).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len floor32(_8612) + _8610 + -mem[64] + 192]
                            else:
                                if idx >= mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 325] - 1:
                                    require idx < mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 325]
                                    _8325 = mem[(32 * idx) + (32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]
                                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = _7687
                                    mem[mem[64] + 68] = this.address
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]
                                    _8328 = mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]
                                    s = 0
                                    while s < _8328:
                                        mem[s + mem[64] + 164] = mem[s + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 389]
                                        s = s + 32
                                        continue 
                                    if not _8328 % 32:
                                        require ext_code.size(address(_8325))
                                        call address(_8325).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _7687, address(this.address), 128, mem[mem[64] + 132 len _8328 + 32]
                                    else:
                                        mem[floor32(_8328) + mem[64] + 164] = mem[floor32(_8328) + mem[64] + -(_8328 % 32) + 196 len _8328 % 32]
                                        require ext_code.size(address(_8325))
                                        call address(_8325).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _7687, address(this.address), 128, mem[mem[64] + 132 len floor32(_8328) + 64]
                                else:
                                    require idx + 1 < mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 325]
                                    _8103 = mem[(32 * idx + 1) + (32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]
                                    require idx < mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 325]
                                    _8613 = mem[(32 * idx) + (32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]
                                    _8614 = mem[64]
                                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = _7687
                                    mem[mem[64] + 68] = address(_8103)
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]
                                    _8616 = mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]
                                    s = 0
                                    while s < _8616:
                                        mem[s + mem[64] + 164] = mem[s + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 389]
                                        s = s + 32
                                        continue 
                                    if not _8616 % 32:
                                        require ext_code.size(address(_8613))
                                        call address(_8613).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _8616 + _8614 + -mem[64] + 160]
                                    else:
                                        mem[floor32(_8616) + _8614 + 164] = mem[floor32(_8616) + _8614 + -(_8616 % 32) + 196 len _8616 % 32]
                                        require ext_code.size(address(_8613))
                                        call address(_8613).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len floor32(_8616) + _8614 + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            continue 
    else:
        if not ('cd', 68).length + 1:
            require 0 < ('cd', 68).length + 1
            mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] = ext_call.return_data[0]
            require ('cd', 68).length <= test266151307()
            mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 192] = ('cd', 68).length
            mem[64] = (32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 224
            if not ('cd', 68).length:
                idx = 0
                s = address(cd[4])
                while idx < ('cd', 68).length:
                    require idx < ('cd', 68).length
                    _2871 = mem[(32 * idx) + 128]
                    require ext_code.size(mem[(32 * idx) + 140 len 20])
                    staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 224 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_code.size(address(_2871))
                    staticcall address(_2871).token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(_2871))
                    staticcall address(_2871).token1() with:
                            gas gas_remaining wei
                    mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 224] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require idx < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 160]
                    require idx < mem[(32 * ('cd', 68).length) + 128]
                    if mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] <= 0:
                        revert with 0, 
                                    32,
                                    42,
                                    0x5942616c616e6365724c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                    mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 334 len 22]
                    if address(ext_call.return_data[0]) == address(s):
                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                            revert with 0, 
                                        32,
                                        39,
                                        0xfe42616c616e6365724c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                        mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 331 len 25]
                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                            revert with 0, 
                                        32,
                                        39,
                                        0xfe42616c616e6365724c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                        mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 331 len 25]
                        if -mem[(32 * idx) + (32 * ('cd', 68).length) + 160] + 1000 > 1000:
                            revert with 0, 'ds-math-sub-underflow'
                        if not -mem[(32 * idx) + (32 * ('cd', 68).length) + 160] + 1000:
                            if Mask(112, 0, ext_call.return_data[32]):
                                require Mask(112, 0, ext_call.return_data[32])
                                if 0 / Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-mul-overflow'
                            if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * Mask(112, 0, ext_call.return_data[0]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require 1000 * Mask(112, 0, ext_call.return_data[0])
                            require idx + 1 < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 160]
                            mem[(32 * idx + 1) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] = 0 / 1000 * Mask(112, 0, ext_call.return_data[0])
                        else:
                            require -mem[(32 * idx) + (32 * ('cd', 68).length) + 160] + 1000
                            if (1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]) - (mem[(32 * idx) + (32 * ('cd', 68).length) + 160] * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]) / -mem[(32 * idx) + (32 * ('cd', 68).length) + 160] + 1000 != mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]:
                                revert with 0, 'ds-math-mul-overflow'
                            if not Mask(112, 0, ext_call.return_data[32]):
                                if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]) - (mem[(32 * idx) + (32 * ('cd', 68).length) + 160] * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-add-overflow'
                                require (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]) - (mem[(32 * idx) + (32 * ('cd', 68).length) + 160] * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192])
                                require idx + 1 < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 160]
                                mem[(32 * idx + 1) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]) - (mem[(32 * idx) + (32 * ('cd', 68).length) + 160] * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192])
                            else:
                                require Mask(112, 0, ext_call.return_data[32])
                                if (1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * Mask(112, 0, ext_call.return_data[32])) - (mem[(32 * idx) + (32 * ('cd', 68).length) + 160] * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * Mask(112, 0, ext_call.return_data[32])) / Mask(112, 0, ext_call.return_data[32]) != (1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]) - (mem[(32 * idx) + (32 * ('cd', 68).length) + 160] * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]) - (mem[(32 * idx) + (32 * ('cd', 68).length) + 160] * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-add-overflow'
                                require (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]) - (mem[(32 * idx) + (32 * ('cd', 68).length) + 160] * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192])
                                require idx + 1 < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 160]
                                mem[(32 * idx + 1) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] = (1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * Mask(112, 0, ext_call.return_data[32])) - (mem[(32 * idx) + (32 * ('cd', 68).length) + 160] * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * Mask(112, 0, ext_call.return_data[32])) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]) - (mem[(32 * idx) + (32 * ('cd', 68).length) + 160] * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192])
                        require idx < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 192]
                        mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 224] = 1
                    else:
                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                            revert with 0, 
                                        32,
                                        39,
                                        0xfe42616c616e6365724c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                        mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 331 len 25]
                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                            revert with 0, 
                                        32,
                                        39,
                                        0xfe42616c616e6365724c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                        mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 331 len 25]
                        if -mem[(32 * idx) + (32 * ('cd', 68).length) + 160] + 1000 > 1000:
                            revert with 0, 'ds-math-sub-underflow'
                        if not -mem[(32 * idx) + (32 * ('cd', 68).length) + 160] + 1000:
                            if Mask(112, 0, ext_call.return_data[0]):
                                require Mask(112, 0, ext_call.return_data[0])
                                if 0 / Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-mul-overflow'
                            if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * Mask(112, 0, ext_call.return_data[32]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require 1000 * Mask(112, 0, ext_call.return_data[32])
                            require idx + 1 < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 160]
                            mem[(32 * idx + 1) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] = 0 / 1000 * Mask(112, 0, ext_call.return_data[32])
                        else:
                            require -mem[(32 * idx) + (32 * ('cd', 68).length) + 160] + 1000
                            if (1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]) - (mem[(32 * idx) + (32 * ('cd', 68).length) + 160] * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]) / -mem[(32 * idx) + (32 * ('cd', 68).length) + 160] + 1000 != mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]:
                                revert with 0, 'ds-math-mul-overflow'
                            if not Mask(112, 0, ext_call.return_data[0]):
                                if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]) - (mem[(32 * idx) + (32 * ('cd', 68).length) + 160] * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-add-overflow'
                                require (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]) - (mem[(32 * idx) + (32 * ('cd', 68).length) + 160] * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192])
                                require idx + 1 < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 160]
                                mem[(32 * idx + 1) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]) - (mem[(32 * idx) + (32 * ('cd', 68).length) + 160] * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192])
                            else:
                                require Mask(112, 0, ext_call.return_data[0])
                                if (1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * Mask(112, 0, ext_call.return_data[0])) - (mem[(32 * idx) + (32 * ('cd', 68).length) + 160] * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[0]) != (1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]) - (mem[(32 * idx) + (32 * ('cd', 68).length) + 160] * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]) - (mem[(32 * idx) + (32 * ('cd', 68).length) + 160] * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-add-overflow'
                                require (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]) - (mem[(32 * idx) + (32 * ('cd', 68).length) + 160] * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192])
                                require idx + 1 < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 160]
                                mem[(32 * idx + 1) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] = (1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * Mask(112, 0, ext_call.return_data[0])) - (mem[(32 * idx) + (32 * ('cd', 68).length) + 160] * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * Mask(112, 0, ext_call.return_data[0])) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]) - (mem[(32 * idx) + (32 * ('cd', 68).length) + 160] * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192])
                        require idx < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 192]
                        mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 224] = 0
                    idx = idx + 1
                    s = ext_call.return_data[0]
                    continue 
                if address(cd[4]) != address(s):
                    revert with 0, 'BalancerLibrary: IN_NOT_EQ_OUT'
                require mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 160] - 1 < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 160]
                if mem[(32 * mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 160] - 1) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] < ext_call.return_data[0]:
                    revert with 0, 'Balancer: NO_PROFIT'
                require 0 < ('cd', 68).length
                mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 260] = address(('cd', 68)[0])
                mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 292] = ext_call.return_data[0]
                mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 224] = 68
                mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 256 len 4] = unknown_0xa9059cbb(?????)
                mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 324 len 64] = 0, address(('cd', 68)[0]), ext_call.return_data[0 len 28]
                mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 416 len 4] = ext_call.return_data[20 len 4]
                call address(cd[4]) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0], Mask(224, 32, address(('cd', 68)[0]), ext_call.return_data[0 len 28]) >> 32, mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 388 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                    if not ('cd', 68).length:
                        mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 324] = ('cd', 68).length
                        mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                        mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356] = 0
                        mem[64] = (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 388
                        idx = 0
                        while idx < ('cd', 68).length:
                            require idx + 1 < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 160]
                            _7691 = mem[(32 * idx + 1) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                            require idx < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 192]
                            if 0 == mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 224]:
                                if idx >= mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 324] - 1:
                                    require idx < mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 324]
                                    _8330 = mem[(32 * idx) + (32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]
                                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _7691
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = this.address
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]
                                    _8333 = mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]
                                    s = 0
                                    while s < _8333:
                                        mem[s + mem[64] + 164] = mem[s + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 388]
                                        s = s + 32
                                        continue 
                                    if not _8333 % 32:
                                        require ext_code.size(address(_8330))
                                        call address(_8330).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _7691, 0, address(this.address), 128, mem[mem[64] + 132 len _8333 + 32]
                                    else:
                                        mem[floor32(_8333) + mem[64] + 164] = mem[floor32(_8333) + mem[64] + -(_8333 % 32) + 196 len _8333 % 32]
                                        require ext_code.size(address(_8330))
                                        call address(_8330).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _7691, 0, address(this.address), 128, mem[mem[64] + 132 len floor32(_8333) + 64]
                                else:
                                    require idx + 1 < mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 324]
                                    _8105 = mem[(32 * idx + 1) + (32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]
                                    require idx < mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 324]
                                    _8617 = mem[(32 * idx) + (32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]
                                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _7691
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = address(_8105)
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]
                                    _8620 = mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]
                                    s = 0
                                    while s < _8620:
                                        mem[s + mem[64] + 164] = mem[s + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 388]
                                        s = s + 32
                                        continue 
                                    if not _8620 % 32:
                                        require ext_code.size(address(_8617))
                                        call address(_8617).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _7691, 0, address(_8105), 128, mem[mem[64] + 132 len _8620 + 32]
                                    else:
                                        mem[floor32(_8620) + mem[64] + 164] = mem[floor32(_8620) + mem[64] + -(_8620 % 32) + 196 len _8620 % 32]
                                        require ext_code.size(address(_8617))
                                        call address(_8617).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _7691, 0, address(_8105), 128, mem[mem[64] + 132 len floor32(_8620) + 64]
                            else:
                                if idx >= mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 324] - 1:
                                    require idx < mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 324]
                                    _8335 = mem[(32 * idx) + (32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]
                                    _8336 = mem[64]
                                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = _7691
                                    mem[mem[64] + 68] = this.address
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]
                                    _8338 = mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]
                                    s = 0
                                    while s < _8338:
                                        mem[s + mem[64] + 164] = mem[s + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 388]
                                        s = s + 32
                                        continue 
                                    if not _8338 % 32:
                                        require ext_code.size(address(_8335))
                                        call address(_8335).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _8338 + _8336 + -mem[64] + 160]
                                    else:
                                        mem[floor32(_8338) + _8336 + 164] = mem[floor32(_8338) + _8336 + -(_8338 % 32) + 196 len _8338 % 32]
                                        require ext_code.size(address(_8335))
                                        call address(_8335).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len floor32(_8338) + _8336 + -mem[64] + 192]
                                else:
                                    require idx + 1 < mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 324]
                                    _8107 = mem[(32 * idx + 1) + (32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]
                                    require idx < mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 324]
                                    _8621 = mem[(32 * idx) + (32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]
                                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = _7691
                                    mem[mem[64] + 68] = address(_8107)
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]
                                    _8624 = mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]
                                    s = 0
                                    while s < _8624:
                                        mem[s + mem[64] + 164] = mem[s + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 388]
                                        s = s + 32
                                        continue 
                                    if not _8624 % 32:
                                        require ext_code.size(address(_8621))
                                        call address(_8621).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _7691, address(_8107), 128, mem[mem[64] + 132 len _8624 + 32]
                                    else:
                                        mem[floor32(_8624) + mem[64] + 164] = mem[floor32(_8624) + mem[64] + -(_8624 % 32) + 196 len _8624 % 32]
                                        require ext_code.size(address(_8621))
                                        call address(_8621).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _7691, address(_8107), 128, mem[mem[64] + 132 len floor32(_8624) + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            continue 
                    else:
                        require ('cd', 68).length >= 32
                        if not mem[128]:
                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                        mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 324] = ('cd', 68).length
                        mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                        mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356] = 0
                        mem[64] = (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 388
                        idx = 0
                        while idx < ('cd', 68).length:
                            require idx + 1 < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 160]
                            _7695 = mem[(32 * idx + 1) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                            require idx < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 192]
                            if mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 224] != 0:
                                if idx >= mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 324] - 1:
                                    require idx < mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 324]
                                    _8345 = mem[(32 * idx) + (32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 388] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 392] = 0
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 424] = _7695
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 456] = this.address
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 488] = 128
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 520] = mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]
                                    _8348 = mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]
                                    s = 0
                                    while s < _8348:
                                        mem[s + mem[64] + 164] = mem[s + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 388]
                                        s = s + 32
                                        continue 
                                    if not _8348 % 32:
                                        require ext_code.size(address(_8345))
                                        call address(_8345).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _8348 + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + -mem[64] + 548]
                                    else:
                                        mem[floor32(_8348) + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 552] = mem[floor32(_8348) + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + -(_8348 % 32) + 584 len _8348 % 32]
                                        require ext_code.size(address(_8345))
                                        call address(_8345).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len floor32(_8348) + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + -mem[64] + 580]
                                else:
                                    require idx + 1 < mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 324]
                                    _8111 = mem[(32 * idx + 1) + (32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]
                                    require idx < mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 324]
                                    _8629 = mem[(32 * idx) + (32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 388] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 392] = 0
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 424] = _7695
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 456] = address(_8111)
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 488] = 128
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 520] = mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]
                                    s = 0
                                    while s < mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]:
                                        mem[s + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 552] = mem[s + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 388]
                                        s = s + 32
                                        continue 
                                    if not mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356] % 32:
                                        require ext_code.size(address(_8629))
                                        call address(_8629).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _7695, address(_8111), 128, mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356], mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 552 len mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]]
                                    else:
                                        mem[floor32(mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]) + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 552] = mem[floor32(mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]) + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + -(mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356] % 32) + 584 len mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356] % 32]
                                        require ext_code.size(address(_8629))
                                        call address(_8629).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _7695, address(_8111), 128, mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356], mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 552 len floor32(mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]) + 32]
                            else:
                                if idx >= mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 324] - 1:
                                    require idx < mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 324]
                                    _8340 = mem[(32 * idx) + (32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 388] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 392] = _7695
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 424] = 0
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 456] = this.address
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 488] = 128
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 520] = mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]
                                    _8343 = mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]
                                    s = 0
                                    while s < _8343:
                                        mem[s + mem[64] + 164] = mem[s + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 388]
                                        s = s + 32
                                        continue 
                                    if not _8343 % 32:
                                        require ext_code.size(address(_8340))
                                        call address(_8340).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _8343 + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + -mem[64] + 548]
                                    else:
                                        mem[floor32(_8343) + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 552] = mem[floor32(_8343) + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + -(_8343 % 32) + 584 len _8343 % 32]
                                        require ext_code.size(address(_8340))
                                        call address(_8340).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len floor32(_8343) + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + -mem[64] + 580]
                                else:
                                    require idx + 1 < mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 324]
                                    _8109 = mem[(32 * idx + 1) + (32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]
                                    require idx < mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 324]
                                    _8625 = mem[(32 * idx) + (32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 388] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 392] = _7695
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 424] = 0
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 456] = address(_8109)
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 488] = 128
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 520] = mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]
                                    _8628 = mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]
                                    s = 0
                                    while s < _8628:
                                        mem[s + mem[64] + 164] = mem[s + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 388]
                                        s = s + 32
                                        continue 
                                    if not _8628 % 32:
                                        require ext_code.size(address(_8625))
                                        call address(_8625).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _8628 + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + -mem[64] + 548]
                                    else:
                                        mem[floor32(_8628) + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 552] = mem[floor32(_8628) + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + -(_8628 % 32) + 584 len _8628 % 32]
                                        require ext_code.size(address(_8625))
                                        call address(_8625).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len floor32(_8628) + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + -mem[64] + 580]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            continue 
                else:
                    mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 324] = return_data.size
                    mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                    if not return_data.size:
                        mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 325] = ('cd', 68).length
                        mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                        mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357] = 0
                        mem[64] = (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 389
                        idx = 0
                        while idx < ('cd', 68).length:
                            require idx + 1 < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 160]
                            _7699 = mem[(32 * idx + 1) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                            require idx < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 192]
                            if 0 == mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 224]:
                                if idx >= mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 325] - 1:
                                    require idx < mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 325]
                                    _8350 = mem[(32 * idx) + (32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]
                                    _8351 = mem[64]
                                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _7699
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = this.address
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]
                                    _8353 = mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]
                                    s = 0
                                    while s < _8353:
                                        mem[s + mem[64] + 164] = mem[s + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 389]
                                        s = s + 32
                                        continue 
                                    if not _8353 % 32:
                                        require ext_code.size(address(_8350))
                                        call address(_8350).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _8353 + _8351 + -mem[64] + 160]
                                    else:
                                        mem[floor32(_8353) + _8351 + 164] = mem[floor32(_8353) + _8351 + -(_8353 % 32) + 196 len _8353 % 32]
                                        require ext_code.size(address(_8350))
                                        call address(_8350).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len floor32(_8353) + _8351 + -mem[64] + 192]
                                else:
                                    require idx + 1 < mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 325]
                                    _8113 = mem[(32 * idx + 1) + (32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]
                                    require idx < mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 325]
                                    _8633 = mem[(32 * idx) + (32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]
                                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _7699
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = address(_8113)
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]
                                    _8636 = mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]
                                    s = 0
                                    while s < _8636:
                                        mem[s + mem[64] + 164] = mem[s + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 389]
                                        s = s + 32
                                        continue 
                                    if not _8636 % 32:
                                        require ext_code.size(address(_8633))
                                        call address(_8633).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _7699, 0, address(_8113), 128, mem[mem[64] + 132 len _8636 + 32]
                                    else:
                                        mem[floor32(_8636) + mem[64] + 164] = mem[floor32(_8636) + mem[64] + -(_8636 % 32) + 196 len _8636 % 32]
                                        require ext_code.size(address(_8633))
                                        call address(_8633).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _7699, 0, address(_8113), 128, mem[mem[64] + 132 len floor32(_8636) + 64]
                            else:
                                if idx >= mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 325] - 1:
                                    require idx < mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 325]
                                    _8355 = mem[(32 * idx) + (32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]
                                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = _7699
                                    mem[mem[64] + 68] = this.address
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]
                                    _8358 = mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]
                                    s = 0
                                    while s < _8358:
                                        mem[s + mem[64] + 164] = mem[s + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 389]
                                        s = s + 32
                                        continue 
                                    if not _8358 % 32:
                                        require ext_code.size(address(_8355))
                                        call address(_8355).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _7699, address(this.address), 128, mem[mem[64] + 132 len _8358 + 32]
                                    else:
                                        mem[floor32(_8358) + mem[64] + 164] = mem[floor32(_8358) + mem[64] + -(_8358 % 32) + 196 len _8358 % 32]
                                        require ext_code.size(address(_8355))
                                        call address(_8355).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _7699, address(this.address), 128, mem[mem[64] + 132 len floor32(_8358) + 64]
                                else:
                                    require idx + 1 < mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 325]
                                    _8115 = mem[(32 * idx + 1) + (32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]
                                    require idx < mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 325]
                                    _8637 = mem[(32 * idx) + (32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]
                                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = _7699
                                    mem[mem[64] + 68] = address(_8115)
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]
                                    _8640 = mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]
                                    s = 0
                                    while s < _8640:
                                        mem[s + mem[64] + 164] = mem[s + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 389]
                                        s = s + 32
                                        continue 
                                    if not _8640 % 32:
                                        require ext_code.size(address(_8637))
                                        call address(_8637).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _7699, address(_8115), 128, mem[mem[64] + 132 len _8640 + 32]
                                    else:
                                        mem[floor32(_8640) + mem[64] + 164] = mem[floor32(_8640) + mem[64] + -(_8640 % 32) + 196 len _8640 % 32]
                                        require ext_code.size(address(_8637))
                                        call address(_8637).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _7699, address(_8115), 128, mem[mem[64] + 132 len floor32(_8640) + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            continue 
                    else:
                        require return_data.size >= 32
                        if not mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]:
                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                        mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 325] = ('cd', 68).length
                        mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                        mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357] = 0
                        mem[64] = (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 389
                        idx = 0
                        while idx < ('cd', 68).length:
                            require idx + 1 < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 160]
                            _7703 = mem[(32 * idx + 1) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                            require idx < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 192]
                            if mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 224] != 0:
                                if idx >= mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 325] - 1:
                                    require idx < mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 325]
                                    _8365 = mem[(32 * idx) + (32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 389] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 393] = 0
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 425] = _7703
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 457] = this.address
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 489] = 128
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 521] = mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]
                                    s = 0
                                    while s < mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]:
                                        mem[s + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 553] = mem[s + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 389]
                                        s = s + 32
                                        continue 
                                    if not mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357] % 32:
                                        require ext_code.size(address(_8365))
                                        call address(_8365).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _7703, address(this.address), 128, mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357], mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 553 len mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]]
                                    else:
                                        mem[floor32(mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]) + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 553] = mem[floor32(mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]) + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + -(mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357] % 32) + 585 len mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357] % 32]
                                        require ext_code.size(address(_8365))
                                        call address(_8365).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _7703, address(this.address), 128, mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357], mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 553 len floor32(mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]) + 32]
                                else:
                                    require idx + 1 < mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 325]
                                    _8119 = mem[(32 * idx + 1) + (32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]
                                    require idx < mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 325]
                                    _8645 = mem[(32 * idx) + (32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 389] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 393] = 0
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 425] = _7703
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 457] = address(_8119)
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 489] = 128
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 521] = mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]
                                    s = 0
                                    while s < mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]:
                                        mem[s + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 553] = mem[s + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 389]
                                        s = s + 32
                                        continue 
                                    if not mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357] % 32:
                                        require ext_code.size(address(_8645))
                                        call address(_8645).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _7703, address(_8119), 128, mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357], mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 553 len mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]]
                                    else:
                                        mem[floor32(mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]) + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 553] = mem[floor32(mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]) + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + -(mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357] % 32) + 585 len mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357] % 32]
                                        require ext_code.size(address(_8645))
                                        call address(_8645).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _7703, address(_8119), 128, mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357], mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 553 len floor32(mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]) + 32]
                            else:
                                if idx >= mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 325] - 1:
                                    require idx < mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 325]
                                    _8360 = mem[(32 * idx) + (32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 389] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 393] = _7703
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 425] = 0
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 457] = this.address
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 489] = 128
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 521] = mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]
                                    s = 0
                                    while s < mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]:
                                        mem[s + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 553] = mem[s + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 389]
                                        s = s + 32
                                        continue 
                                    if not mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357] % 32:
                                        require ext_code.size(address(_8360))
                                        call address(_8360).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _7703, 0, address(this.address), 128, mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357], mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 553 len mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]]
                                    else:
                                        mem[floor32(mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]) + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 553] = mem[floor32(mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]) + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + -(mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357] % 32) + 585 len mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357] % 32]
                                        require ext_code.size(address(_8360))
                                        call address(_8360).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _7703, 0, address(this.address), 128, mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357], mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 553 len floor32(mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]) + 32]
                                else:
                                    require idx + 1 < mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 325]
                                    _8117 = mem[(32 * idx + 1) + (32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]
                                    require idx < mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 325]
                                    _8641 = mem[(32 * idx) + (32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 389] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 393] = _7703
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 425] = 0
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 457] = address(_8117)
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 489] = 128
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 521] = mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]
                                    _8644 = mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]
                                    s = 0
                                    while s < _8644:
                                        mem[s + mem[64] + 164] = mem[s + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 389]
                                        s = s + 32
                                        continue 
                                    if not _8644 % 32:
                                        require ext_code.size(address(_8641))
                                        call address(_8641).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _8644 + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + -mem[64] + 549]
                                    else:
                                        mem[floor32(_8644) + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 553] = mem[floor32(_8644) + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + -(_8644 % 32) + 585 len _8644 % 32]
                                        require ext_code.size(address(_8641))
                                        call address(_8641).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len floor32(_8644) + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + -mem[64] + 581]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            continue 
            else:
                mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 224 len 32 * ('cd', 68).length] = call.data[calldata.size len 32 * ('cd', 68).length]
                idx = 0
                s = address(cd[4])
                while idx < ('cd', 68).length:
                    require idx < ('cd', 68).length
                    _2874 = mem[(32 * idx) + 128]
                    require ext_code.size(mem[(32 * idx) + 140 len 20])
                    staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 224 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_code.size(address(_2874))
                    staticcall address(_2874).token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(_2874))
                    staticcall address(_2874).token1() with:
                            gas gas_remaining wei
                    mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 224] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require idx < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 160]
                    require idx < mem[(32 * ('cd', 68).length) + 128]
                    if mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] <= 0:
                        revert with 0, 
                                    32,
                                    42,
                                    0x5942616c616e6365724c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                    mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 334 len 22]
                    if address(ext_call.return_data[0]) == address(s):
                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                            revert with 0, 
                                        32,
                                        39,
                                        0xfe42616c616e6365724c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                        mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 331 len 25]
                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                            revert with 0, 
                                        32,
                                        39,
                                        0xfe42616c616e6365724c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                        mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 331 len 25]
                        if -mem[(32 * idx) + (32 * ('cd', 68).length) + 160] + 1000 > 1000:
                            revert with 0, 'ds-math-sub-underflow'
                        if not -mem[(32 * idx) + (32 * ('cd', 68).length) + 160] + 1000:
                            if Mask(112, 0, ext_call.return_data[32]):
                                require Mask(112, 0, ext_call.return_data[32])
                                if 0 / Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-mul-overflow'
                            if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * Mask(112, 0, ext_call.return_data[0]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require 1000 * Mask(112, 0, ext_call.return_data[0])
                            require idx + 1 < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 160]
                            mem[(32 * idx + 1) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] = 0 / 1000 * Mask(112, 0, ext_call.return_data[0])
                        else:
                            require -mem[(32 * idx) + (32 * ('cd', 68).length) + 160] + 1000
                            if (1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]) - (mem[(32 * idx) + (32 * ('cd', 68).length) + 160] * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]) / -mem[(32 * idx) + (32 * ('cd', 68).length) + 160] + 1000 != mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]:
                                revert with 0, 'ds-math-mul-overflow'
                            if not Mask(112, 0, ext_call.return_data[32]):
                                if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]) - (mem[(32 * idx) + (32 * ('cd', 68).length) + 160] * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-add-overflow'
                                require (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]) - (mem[(32 * idx) + (32 * ('cd', 68).length) + 160] * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192])
                                require idx + 1 < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 160]
                                mem[(32 * idx + 1) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]) - (mem[(32 * idx) + (32 * ('cd', 68).length) + 160] * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192])
                            else:
                                require Mask(112, 0, ext_call.return_data[32])
                                if (1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * Mask(112, 0, ext_call.return_data[32])) - (mem[(32 * idx) + (32 * ('cd', 68).length) + 160] * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * Mask(112, 0, ext_call.return_data[32])) / Mask(112, 0, ext_call.return_data[32]) != (1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]) - (mem[(32 * idx) + (32 * ('cd', 68).length) + 160] * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]) - (mem[(32 * idx) + (32 * ('cd', 68).length) + 160] * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-add-overflow'
                                require (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]) - (mem[(32 * idx) + (32 * ('cd', 68).length) + 160] * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192])
                                require idx + 1 < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 160]
                                mem[(32 * idx + 1) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] = (1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * Mask(112, 0, ext_call.return_data[32])) - (mem[(32 * idx) + (32 * ('cd', 68).length) + 160] * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * Mask(112, 0, ext_call.return_data[32])) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]) - (mem[(32 * idx) + (32 * ('cd', 68).length) + 160] * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192])
                        require idx < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 192]
                        mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 224] = 1
                    else:
                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                            revert with 0, 
                                        32,
                                        39,
                                        0xfe42616c616e6365724c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                        mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 331 len 25]
                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                            revert with 0, 
                                        32,
                                        39,
                                        0xfe42616c616e6365724c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                        mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 331 len 25]
                        if -mem[(32 * idx) + (32 * ('cd', 68).length) + 160] + 1000 > 1000:
                            revert with 0, 'ds-math-sub-underflow'
                        if not -mem[(32 * idx) + (32 * ('cd', 68).length) + 160] + 1000:
                            if Mask(112, 0, ext_call.return_data[0]):
                                require Mask(112, 0, ext_call.return_data[0])
                                if 0 / Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-mul-overflow'
                            if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * Mask(112, 0, ext_call.return_data[32]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require 1000 * Mask(112, 0, ext_call.return_data[32])
                            require idx + 1 < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 160]
                            mem[(32 * idx + 1) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] = 0 / 1000 * Mask(112, 0, ext_call.return_data[32])
                        else:
                            require -mem[(32 * idx) + (32 * ('cd', 68).length) + 160] + 1000
                            if (1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]) - (mem[(32 * idx) + (32 * ('cd', 68).length) + 160] * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]) / -mem[(32 * idx) + (32 * ('cd', 68).length) + 160] + 1000 != mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]:
                                revert with 0, 'ds-math-mul-overflow'
                            if not Mask(112, 0, ext_call.return_data[0]):
                                if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]) - (mem[(32 * idx) + (32 * ('cd', 68).length) + 160] * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-add-overflow'
                                require (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]) - (mem[(32 * idx) + (32 * ('cd', 68).length) + 160] * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192])
                                require idx + 1 < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 160]
                                mem[(32 * idx + 1) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]) - (mem[(32 * idx) + (32 * ('cd', 68).length) + 160] * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192])
                            else:
                                require Mask(112, 0, ext_call.return_data[0])
                                if (1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * Mask(112, 0, ext_call.return_data[0])) - (mem[(32 * idx) + (32 * ('cd', 68).length) + 160] * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[0]) != (1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]) - (mem[(32 * idx) + (32 * ('cd', 68).length) + 160] * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]) - (mem[(32 * idx) + (32 * ('cd', 68).length) + 160] * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-add-overflow'
                                require (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]) - (mem[(32 * idx) + (32 * ('cd', 68).length) + 160] * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192])
                                require idx + 1 < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 160]
                                mem[(32 * idx + 1) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] = (1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * Mask(112, 0, ext_call.return_data[0])) - (mem[(32 * idx) + (32 * ('cd', 68).length) + 160] * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * Mask(112, 0, ext_call.return_data[0])) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]) - (mem[(32 * idx) + (32 * ('cd', 68).length) + 160] * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192])
                        require idx < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 192]
                        mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 224] = 0
                    idx = idx + 1
                    s = ext_call.return_data[0]
                    continue 
                if address(cd[4]) != address(s):
                    revert with 0, 'BalancerLibrary: IN_NOT_EQ_OUT'
                require mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 160] - 1 < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 160]
                if mem[(32 * mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 160] - 1) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] < ext_call.return_data[0]:
                    revert with 0, 'Balancer: NO_PROFIT'
                require 0 < ('cd', 68).length
                mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 260] = address(('cd', 68)[0])
                mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 292] = ext_call.return_data[0]
                mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 224] = 68
                mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 256 len 4] = unknown_0xa9059cbb(?????)
                mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 324 len 64] = 0, address(('cd', 68)[0]), ext_call.return_data[0 len 28]
                mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 416 len 4] = ext_call.return_data[20 len 4]
                call address(cd[4]) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0], Mask(224, 32, address(('cd', 68)[0]), ext_call.return_data[0 len 28]) >> 32, mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 388 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                    if not ('cd', 68).length:
                        mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 324] = ('cd', 68).length
                        mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                        mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356] = 0
                        mem[64] = (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 388
                        idx = 0
                        while idx < ('cd', 68).length:
                            require idx + 1 < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 160]
                            _7707 = mem[(32 * idx + 1) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                            require idx < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 192]
                            if mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 224] != 0:
                                if idx >= mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 324] - 1:
                                    require idx < mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 324]
                                    _8375 = mem[(32 * idx) + (32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 388] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 392] = 0
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 424] = _7707
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 456] = this.address
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 488] = 128
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 520] = mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]
                                    s = 0
                                    while s < mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]:
                                        mem[s + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 552] = mem[s + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 388]
                                        s = s + 32
                                        continue 
                                    if not mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356] % 32:
                                        require ext_code.size(address(_8375))
                                        call address(_8375).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _7707, address(this.address), 128, mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356], mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 552 len mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]]
                                    else:
                                        mem[floor32(mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]) + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 552] = mem[floor32(mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]) + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + -(mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356] % 32) + 584 len mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356] % 32]
                                        require ext_code.size(address(_8375))
                                        call address(_8375).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _7707, address(this.address), 128, mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356], mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 552 len floor32(mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]) + 32]
                                else:
                                    require idx + 1 < mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 324]
                                    _8123 = mem[(32 * idx + 1) + (32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]
                                    require idx < mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 324]
                                    _8653 = mem[(32 * idx) + (32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 388] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 392] = 0
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 424] = _7707
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 456] = address(_8123)
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 488] = 128
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 520] = mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]
                                    s = 0
                                    while s < mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]:
                                        mem[s + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 552] = mem[s + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 388]
                                        s = s + 32
                                        continue 
                                    if not mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356] % 32:
                                        require ext_code.size(address(_8653))
                                        call address(_8653).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _7707, address(_8123), 128, mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356], mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 552 len mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]]
                                    else:
                                        mem[floor32(mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]) + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 552] = mem[floor32(mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]) + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + -(mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356] % 32) + 584 len mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356] % 32]
                                        require ext_code.size(address(_8653))
                                        call address(_8653).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _7707, address(_8123), 128, mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356], mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 552 len floor32(mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]) + 32]
                            else:
                                if idx >= mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 324] - 1:
                                    require idx < mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 324]
                                    _8370 = mem[(32 * idx) + (32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 388] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 392] = _7707
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 424] = 0
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 456] = this.address
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 488] = 128
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 520] = mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]
                                    s = 0
                                    while s < mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]:
                                        mem[s + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 552] = mem[s + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 388]
                                        s = s + 32
                                        continue 
                                    if not mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356] % 32:
                                        require ext_code.size(address(_8370))
                                        call address(_8370).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _7707, 0, address(this.address), 128, mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356], mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 552 len mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]]
                                    else:
                                        mem[floor32(mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]) + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 552] = mem[floor32(mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]) + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + -(mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356] % 32) + 584 len mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356] % 32]
                                        require ext_code.size(address(_8370))
                                        call address(_8370).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _7707, 0, address(this.address), 128, mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356], mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 552 len floor32(mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]) + 32]
                                else:
                                    require idx + 1 < mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 324]
                                    _8121 = mem[(32 * idx + 1) + (32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]
                                    require idx < mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 324]
                                    _8649 = mem[(32 * idx) + (32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 388] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 392] = _7707
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 424] = 0
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 456] = address(_8121)
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 488] = 128
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 520] = mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]
                                    _8652 = mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]
                                    s = 0
                                    while s < _8652:
                                        mem[s + mem[64] + 164] = mem[s + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 388]
                                        s = s + 32
                                        continue 
                                    if not _8652 % 32:
                                        require ext_code.size(address(_8649))
                                        call address(_8649).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _8652 + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + -mem[64] + 548]
                                    else:
                                        mem[floor32(_8652) + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 552] = mem[floor32(_8652) + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + -(_8652 % 32) + 584 len _8652 % 32]
                                        require ext_code.size(address(_8649))
                                        call address(_8649).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len floor32(_8652) + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + -mem[64] + 580]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            continue 
                    else:
                        require ('cd', 68).length >= 32
                        if not mem[128]:
                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                        mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 324] = ('cd', 68).length
                        mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                        mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356] = 0
                        mem[64] = (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 388
                        idx = 0
                        while idx < ('cd', 68).length:
                            require idx + 1 < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 160]
                            _7711 = mem[(32 * idx + 1) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                            require idx < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 192]
                            if mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 224] != 0:
                                if idx >= mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 324] - 1:
                                    require idx < mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 324]
                                    _8385 = mem[(32 * idx) + (32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]
                                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = _7711
                                    mem[mem[64] + 68] = this.address
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]
                                    _8388 = mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]
                                    s = 0
                                    while s < _8388:
                                        mem[s + mem[64] + 164] = mem[s + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 388]
                                        s = s + 32
                                        continue 
                                    if not _8388 % 32:
                                        require ext_code.size(address(_8385))
                                        call address(_8385).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _7711, address(this.address), 128, mem[mem[64] + 132 len _8388 + 32]
                                    else:
                                        mem[floor32(_8388) + mem[64] + 164] = mem[floor32(_8388) + mem[64] + -(_8388 % 32) + 196 len _8388 % 32]
                                        require ext_code.size(address(_8385))
                                        call address(_8385).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _7711, address(this.address), 128, mem[mem[64] + 132 len floor32(_8388) + 64]
                                else:
                                    require idx + 1 < mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 324]
                                    _8127 = mem[(32 * idx + 1) + (32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]
                                    require idx < mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 324]
                                    _8661 = mem[(32 * idx) + (32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]
                                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = _7711
                                    mem[mem[64] + 68] = address(_8127)
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]
                                    _8664 = mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]
                                    s = 0
                                    while s < _8664:
                                        mem[s + mem[64] + 164] = mem[s + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 388]
                                        s = s + 32
                                        continue 
                                    if not _8664 % 32:
                                        require ext_code.size(address(_8661))
                                        call address(_8661).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _7711, address(_8127), 128, mem[mem[64] + 132 len _8664 + 32]
                                    else:
                                        mem[floor32(_8664) + mem[64] + 164] = mem[floor32(_8664) + mem[64] + -(_8664 % 32) + 196 len _8664 % 32]
                                        require ext_code.size(address(_8661))
                                        call address(_8661).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _7711, address(_8127), 128, mem[mem[64] + 132 len floor32(_8664) + 64]
                            else:
                                if idx >= mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 324] - 1:
                                    require idx < mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 324]
                                    _8380 = mem[(32 * idx) + (32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]
                                    _8381 = mem[64]
                                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _7711
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = this.address
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]
                                    _8383 = mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]
                                    s = 0
                                    while s < _8383:
                                        mem[s + mem[64] + 164] = mem[s + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 388]
                                        s = s + 32
                                        continue 
                                    if not _8383 % 32:
                                        require ext_code.size(address(_8380))
                                        call address(_8380).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _8383 + _8381 + -mem[64] + 160]
                                    else:
                                        mem[floor32(_8383) + _8381 + 164] = mem[floor32(_8383) + _8381 + -(_8383 % 32) + 196 len _8383 % 32]
                                        require ext_code.size(address(_8380))
                                        call address(_8380).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len floor32(_8383) + _8381 + -mem[64] + 192]
                                else:
                                    require idx + 1 < mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 324]
                                    _8125 = mem[(32 * idx + 1) + (32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]
                                    require idx < mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 324]
                                    _8657 = mem[(32 * idx) + (32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]
                                    _8658 = mem[64]
                                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _7711
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = address(_8125)
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]
                                    _8660 = mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]
                                    s = 0
                                    while s < _8660:
                                        mem[s + mem[64] + 164] = mem[s + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 388]
                                        s = s + 32
                                        continue 
                                    if not _8660 % 32:
                                        require ext_code.size(address(_8657))
                                        call address(_8657).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _8660 + _8658 + -mem[64] + 160]
                                    else:
                                        mem[floor32(_8660) + _8658 + 164] = mem[floor32(_8660) + _8658 + -(_8660 % 32) + 196 len _8660 % 32]
                                        require ext_code.size(address(_8657))
                                        call address(_8657).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len floor32(_8660) + _8658 + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            continue 
                else:
                    mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 324] = return_data.size
                    mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                    if not return_data.size:
                        mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 325] = ('cd', 68).length
                        mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                        mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357] = 0
                        idx = 0
                        while idx < ('cd', 68).length:
                            require idx + 1 < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 160]
                            _7715 = mem[(32 * idx + 1) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                            require idx < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 192]
                            if 0 == mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 224]:
                                if idx >= ('cd', 68).length - 1:
                                    require idx < ('cd', 68).length
                                    _8390 = mem[(32 * idx) + (32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 389] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 393] = _7715
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 425] = 0
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 457] = this.address
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 489] = 128
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 521] = 0
                                    s = 0
                                    while s < 0:
                                        mem[s + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 553] = mem[s + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 389]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(address(_8390))
                                    call address(_8390).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _7715, 0, address(this.address), 128, 0, None
                                else:
                                    require idx + 1 < ('cd', 68).length
                                    _8129 = mem[(32 * idx + 1) + (32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]
                                    require idx < ('cd', 68).length
                                    _8665 = mem[(32 * idx) + (32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 389] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 393] = _7715
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 425] = 0
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 457] = address(_8129)
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 489] = 128
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 521] = 0
                                    s = 0
                                    while s < 0:
                                        mem[s + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 553] = mem[s + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 389]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(address(_8665))
                                    call address(_8665).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _7715, 0, address(_8129), 128, 0, None
                            else:
                                if idx >= ('cd', 68).length - 1:
                                    require idx < ('cd', 68).length
                                    _8395 = mem[(32 * idx) + (32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 389] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 393] = 0
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 425] = _7715
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 457] = this.address
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 489] = 128
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 521] = 0
                                    s = 0
                                    while s < 0:
                                        mem[s + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 553] = mem[s + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 389]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(address(_8395))
                                    call address(_8395).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _7715, address(this.address), 128, 0, None
                                else:
                                    require idx + 1 < ('cd', 68).length
                                    _8131 = mem[(32 * idx + 1) + (32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]
                                    require idx < ('cd', 68).length
                                    _8669 = mem[(32 * idx) + (32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 389] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 393] = 0
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 425] = _7715
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 457] = address(_8131)
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 489] = 128
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 521] = 0
                                    s = 0
                                    while s < 0:
                                        mem[s + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 553] = mem[s + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 389]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(address(_8669))
                                    call address(_8669).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _7715, address(_8131), 128, 0, None
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            continue 
                    else:
                        require return_data.size >= 32
                        if not mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]:
                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                        mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 325] = ('cd', 68).length
                        mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                        mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357] = 0
                        mem[64] = (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 389
                        idx = 0
                        while idx < ('cd', 68).length:
                            require idx + 1 < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 160]
                            _7719 = mem[(32 * idx + 1) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                            require idx < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 192]
                            if 0 == mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 224]:
                                if idx >= mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 325] - 1:
                                    require idx < mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 325]
                                    _8400 = mem[(32 * idx) + (32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]
                                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _7719
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = this.address
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]
                                    _8403 = mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]
                                    s = 0
                                    while s < _8403:
                                        mem[s + mem[64] + 164] = mem[s + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 389]
                                        s = s + 32
                                        continue 
                                    if not _8403 % 32:
                                        require ext_code.size(address(_8400))
                                        call address(_8400).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _7719, 0, address(this.address), 128, mem[mem[64] + 132 len _8403 + 32]
                                    else:
                                        mem[floor32(_8403) + mem[64] + 164] = mem[floor32(_8403) + mem[64] + -(_8403 % 32) + 196 len _8403 % 32]
                                        require ext_code.size(address(_8400))
                                        call address(_8400).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _7719, 0, address(this.address), 128, mem[mem[64] + 132 len floor32(_8403) + 64]
                                else:
                                    require idx + 1 < mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 325]
                                    _8133 = mem[(32 * idx + 1) + (32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]
                                    require idx < mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 325]
                                    _8673 = mem[(32 * idx) + (32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]
                                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _7719
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = address(_8133)
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]
                                    _8676 = mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]
                                    s = 0
                                    while s < _8676:
                                        mem[s + mem[64] + 164] = mem[s + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 389]
                                        s = s + 32
                                        continue 
                                    if not _8676 % 32:
                                        require ext_code.size(address(_8673))
                                        call address(_8673).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _7719, 0, address(_8133), 128, mem[mem[64] + 132 len _8676 + 32]
                                    else:
                                        mem[floor32(_8676) + mem[64] + 164] = mem[floor32(_8676) + mem[64] + -(_8676 % 32) + 196 len _8676 % 32]
                                        require ext_code.size(address(_8673))
                                        call address(_8673).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _7719, 0, address(_8133), 128, mem[mem[64] + 132 len floor32(_8676) + 64]
                            else:
                                if idx >= mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 325] - 1:
                                    require idx < mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 325]
                                    _8405 = mem[(32 * idx) + (32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]
                                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = _7719
                                    mem[mem[64] + 68] = this.address
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]
                                    _8408 = mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]
                                    s = 0
                                    while s < _8408:
                                        mem[s + mem[64] + 164] = mem[s + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 389]
                                        s = s + 32
                                        continue 
                                    if not _8408 % 32:
                                        require ext_code.size(address(_8405))
                                        call address(_8405).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _7719, address(this.address), 128, mem[mem[64] + 132 len _8408 + 32]
                                    else:
                                        mem[floor32(_8408) + mem[64] + 164] = mem[floor32(_8408) + mem[64] + -(_8408 % 32) + 196 len _8408 % 32]
                                        require ext_code.size(address(_8405))
                                        call address(_8405).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _7719, address(this.address), 128, mem[mem[64] + 132 len floor32(_8408) + 64]
                                else:
                                    require idx + 1 < mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 325]
                                    _8135 = mem[(32 * idx + 1) + (32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]
                                    require idx < mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 325]
                                    _8677 = mem[(32 * idx) + (32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]
                                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = _7719
                                    mem[mem[64] + 68] = address(_8135)
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]
                                    _8680 = mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]
                                    s = 0
                                    while s < _8680:
                                        mem[s + mem[64] + 164] = mem[s + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 389]
                                        s = s + 32
                                        continue 
                                    if not _8680 % 32:
                                        require ext_code.size(address(_8677))
                                        call address(_8677).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _7719, address(_8135), 128, mem[mem[64] + 132 len _8680 + 32]
                                    else:
                                        mem[floor32(_8680) + mem[64] + 164] = mem[floor32(_8680) + mem[64] + -(_8680 % 32) + 196 len _8680 % 32]
                                        require ext_code.size(address(_8677))
                                        call address(_8677).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _7719, address(_8135), 128, mem[mem[64] + 132 len floor32(_8680) + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            continue 
        else:
            mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192 len 32 * ('cd', 68).length + 1] = call.data[calldata.size len 32 * ('cd', 68).length + 1]
            require 0 < ('cd', 68).length + 1
            mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] = ext_call.return_data[0]
            require ('cd', 68).length <= test266151307()
            mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 192] = ('cd', 68).length
            mem[64] = (32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 224
            if not ('cd', 68).length:
                idx = 0
                s = address(cd[4])
                while idx < ('cd', 68).length:
                    require idx < ('cd', 68).length
                    _2877 = mem[(32 * idx) + 128]
                    require ext_code.size(mem[(32 * idx) + 140 len 20])
                    staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 224 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_code.size(address(_2877))
                    staticcall address(_2877).token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(_2877))
                    staticcall address(_2877).token1() with:
                            gas gas_remaining wei
                    mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 224] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require idx < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 160]
                    require idx < mem[(32 * ('cd', 68).length) + 128]
                    if mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] <= 0:
                        revert with 0, 
                                    32,
                                    42,
                                    0x5942616c616e6365724c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                    mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 334 len 22]
                    if address(ext_call.return_data[0]) == address(s):
                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                            revert with 0, 
                                        32,
                                        39,
                                        0xfe42616c616e6365724c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                        mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 331 len 25]
                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                            revert with 0, 
                                        32,
                                        39,
                                        0xfe42616c616e6365724c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                        mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 331 len 25]
                        if -mem[(32 * idx) + (32 * ('cd', 68).length) + 160] + 1000 > 1000:
                            revert with 0, 'ds-math-sub-underflow'
                        if not -mem[(32 * idx) + (32 * ('cd', 68).length) + 160] + 1000:
                            if Mask(112, 0, ext_call.return_data[32]):
                                require Mask(112, 0, ext_call.return_data[32])
                                if 0 / Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-mul-overflow'
                            if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * Mask(112, 0, ext_call.return_data[0]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require 1000 * Mask(112, 0, ext_call.return_data[0])
                            require idx + 1 < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 160]
                            mem[(32 * idx + 1) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] = 0 / 1000 * Mask(112, 0, ext_call.return_data[0])
                        else:
                            require -mem[(32 * idx) + (32 * ('cd', 68).length) + 160] + 1000
                            if (1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]) - (mem[(32 * idx) + (32 * ('cd', 68).length) + 160] * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]) / -mem[(32 * idx) + (32 * ('cd', 68).length) + 160] + 1000 != mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]:
                                revert with 0, 'ds-math-mul-overflow'
                            if not Mask(112, 0, ext_call.return_data[32]):
                                if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]) - (mem[(32 * idx) + (32 * ('cd', 68).length) + 160] * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-add-overflow'
                                require (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]) - (mem[(32 * idx) + (32 * ('cd', 68).length) + 160] * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192])
                                require idx + 1 < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 160]
                                mem[(32 * idx + 1) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]) - (mem[(32 * idx) + (32 * ('cd', 68).length) + 160] * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192])
                            else:
                                require Mask(112, 0, ext_call.return_data[32])
                                if (1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * Mask(112, 0, ext_call.return_data[32])) - (mem[(32 * idx) + (32 * ('cd', 68).length) + 160] * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * Mask(112, 0, ext_call.return_data[32])) / Mask(112, 0, ext_call.return_data[32]) != (1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]) - (mem[(32 * idx) + (32 * ('cd', 68).length) + 160] * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]) - (mem[(32 * idx) + (32 * ('cd', 68).length) + 160] * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-add-overflow'
                                require (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]) - (mem[(32 * idx) + (32 * ('cd', 68).length) + 160] * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192])
                                require idx + 1 < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 160]
                                mem[(32 * idx + 1) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] = (1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * Mask(112, 0, ext_call.return_data[32])) - (mem[(32 * idx) + (32 * ('cd', 68).length) + 160] * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * Mask(112, 0, ext_call.return_data[32])) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]) - (mem[(32 * idx) + (32 * ('cd', 68).length) + 160] * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192])
                        require idx < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 192]
                        mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 224] = 1
                    else:
                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                            revert with 0, 
                                        32,
                                        39,
                                        0xfe42616c616e6365724c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                        mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 331 len 25]
                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                            revert with 0, 
                                        32,
                                        39,
                                        0xfe42616c616e6365724c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                        mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 331 len 25]
                        if -mem[(32 * idx) + (32 * ('cd', 68).length) + 160] + 1000 > 1000:
                            revert with 0, 'ds-math-sub-underflow'
                        if not -mem[(32 * idx) + (32 * ('cd', 68).length) + 160] + 1000:
                            if Mask(112, 0, ext_call.return_data[0]):
                                require Mask(112, 0, ext_call.return_data[0])
                                if 0 / Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-mul-overflow'
                            if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * Mask(112, 0, ext_call.return_data[32]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require 1000 * Mask(112, 0, ext_call.return_data[32])
                            require idx + 1 < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 160]
                            mem[(32 * idx + 1) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] = 0 / 1000 * Mask(112, 0, ext_call.return_data[32])
                        else:
                            require -mem[(32 * idx) + (32 * ('cd', 68).length) + 160] + 1000
                            if (1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]) - (mem[(32 * idx) + (32 * ('cd', 68).length) + 160] * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]) / -mem[(32 * idx) + (32 * ('cd', 68).length) + 160] + 1000 != mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]:
                                revert with 0, 'ds-math-mul-overflow'
                            if not Mask(112, 0, ext_call.return_data[0]):
                                if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]) - (mem[(32 * idx) + (32 * ('cd', 68).length) + 160] * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-add-overflow'
                                require (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]) - (mem[(32 * idx) + (32 * ('cd', 68).length) + 160] * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192])
                                require idx + 1 < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 160]
                                mem[(32 * idx + 1) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]) - (mem[(32 * idx) + (32 * ('cd', 68).length) + 160] * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192])
                            else:
                                require Mask(112, 0, ext_call.return_data[0])
                                if (1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * Mask(112, 0, ext_call.return_data[0])) - (mem[(32 * idx) + (32 * ('cd', 68).length) + 160] * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[0]) != (1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]) - (mem[(32 * idx) + (32 * ('cd', 68).length) + 160] * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]) - (mem[(32 * idx) + (32 * ('cd', 68).length) + 160] * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-add-overflow'
                                require (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]) - (mem[(32 * idx) + (32 * ('cd', 68).length) + 160] * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192])
                                require idx + 1 < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 160]
                                mem[(32 * idx + 1) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] = (1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * Mask(112, 0, ext_call.return_data[0])) - (mem[(32 * idx) + (32 * ('cd', 68).length) + 160] * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * Mask(112, 0, ext_call.return_data[0])) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]) - (mem[(32 * idx) + (32 * ('cd', 68).length) + 160] * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192])
                        require idx < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 192]
                        mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 224] = 0
                    idx = idx + 1
                    s = ext_call.return_data[0]
                    continue 
                if address(cd[4]) != address(s):
                    revert with 0, 'BalancerLibrary: IN_NOT_EQ_OUT'
                require mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 160] - 1 < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 160]
                if mem[(32 * mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 160] - 1) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] < ext_call.return_data[0]:
                    revert with 0, 'Balancer: NO_PROFIT'
                require 0 < ('cd', 68).length
                mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 260] = address(('cd', 68)[0])
                mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 292] = ext_call.return_data[0]
                mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 224] = 68
                mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 256 len 4] = unknown_0xa9059cbb(?????)
                mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 324 len 64] = 0, address(('cd', 68)[0]), ext_call.return_data[0 len 28]
                mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 416 len 4] = ext_call.return_data[20 len 4]
                call address(cd[4]) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0], Mask(224, 32, address(('cd', 68)[0]), ext_call.return_data[0 len 28]) >> 32, mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 388 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                    if not ('cd', 68).length:
                        mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 324] = ('cd', 68).length
                        mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                        mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356] = 0
                        mem[64] = (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 388
                        idx = 0
                        while idx < ('cd', 68).length:
                            require idx + 1 < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 160]
                            _7723 = mem[(32 * idx + 1) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                            require idx < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 192]
                            if 0 == mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 224]:
                                if idx >= mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 324] - 1:
                                    require idx < mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 324]
                                    _8410 = mem[(32 * idx) + (32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 388] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 392] = _7723
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 424] = 0
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 456] = this.address
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 488] = 128
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 520] = mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]
                                    s = 0
                                    while s < mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]:
                                        mem[s + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 552] = mem[s + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 388]
                                        s = s + 32
                                        continue 
                                    if not mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356] % 32:
                                        require ext_code.size(address(_8410))
                                        call address(_8410).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _7723, 0, address(this.address), 128, mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356], mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 552 len mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]]
                                    else:
                                        mem[floor32(mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]) + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 552] = mem[floor32(mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]) + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + -(mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356] % 32) + 584 len mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356] % 32]
                                        require ext_code.size(address(_8410))
                                        call address(_8410).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _7723, 0, address(this.address), 128, mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356], mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 552 len floor32(mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]) + 32]
                                else:
                                    require idx + 1 < mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 324]
                                    _8137 = mem[(32 * idx + 1) + (32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]
                                    require idx < mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 324]
                                    _8681 = mem[(32 * idx) + (32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 388] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 392] = _7723
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 424] = 0
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 456] = address(_8137)
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 488] = 128
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 520] = mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]
                                    s = 0
                                    while s < mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]:
                                        mem[s + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 552] = mem[s + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 388]
                                        s = s + 32
                                        continue 
                                    if not mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356] % 32:
                                        require ext_code.size(address(_8681))
                                        call address(_8681).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _7723, 0, address(_8137), 128, mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356], mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 552 len mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]]
                                    else:
                                        mem[floor32(mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]) + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 552] = mem[floor32(mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]) + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + -(mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356] % 32) + 584 len mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356] % 32]
                                        require ext_code.size(address(_8681))
                                        call address(_8681).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _7723, 0, address(_8137), 128, mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356], mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 552 len floor32(mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]) + 32]
                            else:
                                if idx >= mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 324] - 1:
                                    require idx < mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 324]
                                    _8415 = mem[(32 * idx) + (32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 388] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 392] = 0
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 424] = _7723
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 456] = this.address
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 488] = 128
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 520] = mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]
                                    s = 0
                                    while s < mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]:
                                        mem[s + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 552] = mem[s + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 388]
                                        s = s + 32
                                        continue 
                                    if not mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356] % 32:
                                        require ext_code.size(address(_8415))
                                        call address(_8415).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _7723, address(this.address), 128, mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356], mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 552 len mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]]
                                    else:
                                        mem[floor32(mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]) + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 552] = mem[floor32(mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]) + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + -(mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356] % 32) + 584 len mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356] % 32]
                                        require ext_code.size(address(_8415))
                                        call address(_8415).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _7723, address(this.address), 128, mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356], mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 552 len floor32(mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]) + 32]
                                else:
                                    require idx + 1 < mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 324]
                                    _8139 = mem[(32 * idx + 1) + (32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]
                                    require idx < mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 324]
                                    _8685 = mem[(32 * idx) + (32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 388] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 392] = 0
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 424] = _7723
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 456] = address(_8139)
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 488] = 128
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 520] = mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]
                                    _8688 = mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]
                                    s = 0
                                    while s < _8688:
                                        mem[s + mem[64] + 164] = mem[s + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 388]
                                        s = s + 32
                                        continue 
                                    if not _8688 % 32:
                                        require ext_code.size(address(_8685))
                                        call address(_8685).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _8688 + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + -mem[64] + 548]
                                    else:
                                        mem[floor32(_8688) + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 552] = mem[floor32(_8688) + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + -(_8688 % 32) + 584 len _8688 % 32]
                                        require ext_code.size(address(_8685))
                                        call address(_8685).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len floor32(_8688) + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + -mem[64] + 580]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            continue 
                    else:
                        require ('cd', 68).length >= 32
                        if not mem[128]:
                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                        mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 324] = ('cd', 68).length
                        mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                        mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356] = 0
                        mem[64] = (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 388
                        idx = 0
                        while idx < ('cd', 68).length:
                            require idx + 1 < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 160]
                            _7727 = mem[(32 * idx + 1) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                            require idx < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 192]
                            if 0 == mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 224]:
                                if idx >= mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 324] - 1:
                                    require idx < mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 324]
                                    _8420 = mem[(32 * idx) + (32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]
                                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _7727
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = this.address
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]
                                    _8423 = mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]
                                    s = 0
                                    while s < _8423:
                                        mem[s + mem[64] + 164] = mem[s + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 388]
                                        s = s + 32
                                        continue 
                                    if not _8423 % 32:
                                        require ext_code.size(address(_8420))
                                        call address(_8420).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _7727, 0, address(this.address), 128, mem[mem[64] + 132 len _8423 + 32]
                                    else:
                                        mem[floor32(_8423) + mem[64] + 164] = mem[floor32(_8423) + mem[64] + -(_8423 % 32) + 196 len _8423 % 32]
                                        require ext_code.size(address(_8420))
                                        call address(_8420).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _7727, 0, address(this.address), 128, mem[mem[64] + 132 len floor32(_8423) + 64]
                                else:
                                    require idx + 1 < mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 324]
                                    _8141 = mem[(32 * idx + 1) + (32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]
                                    require idx < mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 324]
                                    _8689 = mem[(32 * idx) + (32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]
                                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _7727
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = address(_8141)
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]
                                    _8692 = mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]
                                    s = 0
                                    while s < _8692:
                                        mem[s + mem[64] + 164] = mem[s + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 388]
                                        s = s + 32
                                        continue 
                                    if not _8692 % 32:
                                        require ext_code.size(address(_8689))
                                        call address(_8689).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _7727, 0, address(_8141), 128, mem[mem[64] + 132 len _8692 + 32]
                                    else:
                                        mem[floor32(_8692) + mem[64] + 164] = mem[floor32(_8692) + mem[64] + -(_8692 % 32) + 196 len _8692 % 32]
                                        require ext_code.size(address(_8689))
                                        call address(_8689).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _7727, 0, address(_8141), 128, mem[mem[64] + 132 len floor32(_8692) + 64]
                            else:
                                if idx >= mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 324] - 1:
                                    require idx < mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 324]
                                    _8425 = mem[(32 * idx) + (32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]
                                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = _7727
                                    mem[mem[64] + 68] = this.address
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]
                                    _8428 = mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]
                                    s = 0
                                    while s < _8428:
                                        mem[s + mem[64] + 164] = mem[s + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 388]
                                        s = s + 32
                                        continue 
                                    if not _8428 % 32:
                                        require ext_code.size(address(_8425))
                                        call address(_8425).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _7727, address(this.address), 128, mem[mem[64] + 132 len _8428 + 32]
                                    else:
                                        mem[floor32(_8428) + mem[64] + 164] = mem[floor32(_8428) + mem[64] + -(_8428 % 32) + 196 len _8428 % 32]
                                        require ext_code.size(address(_8425))
                                        call address(_8425).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _7727, address(this.address), 128, mem[mem[64] + 132 len floor32(_8428) + 64]
                                else:
                                    require idx + 1 < mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 324]
                                    _8143 = mem[(32 * idx + 1) + (32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]
                                    require idx < mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 324]
                                    _8693 = mem[(32 * idx) + (32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]
                                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = _7727
                                    mem[mem[64] + 68] = address(_8143)
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]
                                    _8696 = mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]
                                    s = 0
                                    while s < _8696:
                                        mem[s + mem[64] + 164] = mem[s + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 388]
                                        s = s + 32
                                        continue 
                                    if not _8696 % 32:
                                        require ext_code.size(address(_8693))
                                        call address(_8693).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _7727, address(_8143), 128, mem[mem[64] + 132 len _8696 + 32]
                                    else:
                                        mem[floor32(_8696) + mem[64] + 164] = mem[floor32(_8696) + mem[64] + -(_8696 % 32) + 196 len _8696 % 32]
                                        require ext_code.size(address(_8693))
                                        call address(_8693).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _7727, address(_8143), 128, mem[mem[64] + 132 len floor32(_8696) + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            continue 
                else:
                    mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 324] = return_data.size
                    mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                    if not return_data.size:
                        mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 325] = ('cd', 68).length
                        mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                        mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357] = 0
                        mem[64] = (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 389
                        idx = 0
                        while idx < ('cd', 68).length:
                            require idx + 1 < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 160]
                            _7731 = mem[(32 * idx + 1) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                            require idx < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 192]
                            if 0 == mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 224]:
                                if idx >= mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 325] - 1:
                                    require idx < mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 325]
                                    _8430 = mem[(32 * idx) + (32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 389] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 393] = _7731
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 425] = 0
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 457] = this.address
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 489] = 128
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 521] = mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]
                                    _8433 = mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]
                                    s = 0
                                    while s < _8433:
                                        mem[s + mem[64] + 164] = mem[s + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 389]
                                        s = s + 32
                                        continue 
                                    if not _8433 % 32:
                                        require ext_code.size(address(_8430))
                                        call address(_8430).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _8433 + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + -mem[64] + 549]
                                    else:
                                        mem[floor32(_8433) + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 553] = mem[floor32(_8433) + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + -(_8433 % 32) + 585 len _8433 % 32]
                                        require ext_code.size(address(_8430))
                                        call address(_8430).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len floor32(_8433) + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + -mem[64] + 581]
                                else:
                                    require idx + 1 < mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 325]
                                    _8145 = mem[(32 * idx + 1) + (32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]
                                    require idx < mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 325]
                                    _8697 = mem[(32 * idx) + (32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 389] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 393] = _7731
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 425] = 0
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 457] = address(_8145)
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 489] = 128
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 521] = mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]
                                    s = 0
                                    while s < mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]:
                                        mem[s + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 553] = mem[s + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 389]
                                        s = s + 32
                                        continue 
                                    if not mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357] % 32:
                                        require ext_code.size(address(_8697))
                                        call address(_8697).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _7731, 0, address(_8145), 128, mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357], mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 553 len mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]]
                                    else:
                                        mem[floor32(mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]) + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 553] = mem[floor32(mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]) + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + -(mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357] % 32) + 585 len mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357] % 32]
                                        require ext_code.size(address(_8697))
                                        call address(_8697).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _7731, 0, address(_8145), 128, mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357], mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 553 len floor32(mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]) + 32]
                            else:
                                if idx >= mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 325] - 1:
                                    require idx < mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 325]
                                    _8435 = mem[(32 * idx) + (32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 389] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 393] = 0
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 425] = _7731
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 457] = this.address
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 489] = 128
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 521] = mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]
                                    _8438 = mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]
                                    s = 0
                                    while s < _8438:
                                        mem[s + mem[64] + 164] = mem[s + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 389]
                                        s = s + 32
                                        continue 
                                    if not _8438 % 32:
                                        require ext_code.size(address(_8435))
                                        call address(_8435).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _8438 + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + -mem[64] + 549]
                                    else:
                                        mem[floor32(_8438) + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 553] = mem[floor32(_8438) + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + -(_8438 % 32) + 585 len _8438 % 32]
                                        require ext_code.size(address(_8435))
                                        call address(_8435).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len floor32(_8438) + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + -mem[64] + 581]
                                else:
                                    require idx + 1 < mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 325]
                                    _8147 = mem[(32 * idx + 1) + (32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]
                                    require idx < mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 325]
                                    _8701 = mem[(32 * idx) + (32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 389] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 393] = 0
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 425] = _7731
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 457] = address(_8147)
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 489] = 128
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 521] = mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]
                                    _8704 = mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]
                                    s = 0
                                    while s < _8704:
                                        mem[s + mem[64] + 164] = mem[s + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 389]
                                        s = s + 32
                                        continue 
                                    if not _8704 % 32:
                                        require ext_code.size(address(_8701))
                                        call address(_8701).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _8704 + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + -mem[64] + 549]
                                    else:
                                        mem[floor32(_8704) + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 553] = mem[floor32(_8704) + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + -(_8704 % 32) + 585 len _8704 % 32]
                                        require ext_code.size(address(_8701))
                                        call address(_8701).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len floor32(_8704) + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + -mem[64] + 581]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            continue 
                    else:
                        require return_data.size >= 32
                        if not mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]:
                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                        mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 325] = ('cd', 68).length
                        mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                        mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357] = 0
                        mem[64] = (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 389
                        idx = 0
                        while idx < ('cd', 68).length:
                            require idx + 1 < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 160]
                            _7735 = mem[(32 * idx + 1) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                            require idx < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 192]
                            if mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 224] != 0:
                                if idx >= mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 325] - 1:
                                    require idx < mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 325]
                                    _8445 = mem[(32 * idx) + (32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]
                                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = _7735
                                    mem[mem[64] + 68] = this.address
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]
                                    _8448 = mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]
                                    s = 0
                                    while s < _8448:
                                        mem[s + mem[64] + 164] = mem[s + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 389]
                                        s = s + 32
                                        continue 
                                    if not _8448 % 32:
                                        require ext_code.size(address(_8445))
                                        call address(_8445).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _7735, address(this.address), 128, mem[mem[64] + 132 len _8448 + 32]
                                    else:
                                        mem[floor32(_8448) + mem[64] + 164] = mem[floor32(_8448) + mem[64] + -(_8448 % 32) + 196 len _8448 % 32]
                                        require ext_code.size(address(_8445))
                                        call address(_8445).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _7735, address(this.address), 128, mem[mem[64] + 132 len floor32(_8448) + 64]
                                else:
                                    require idx + 1 < mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 325]
                                    _8151 = mem[(32 * idx + 1) + (32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]
                                    require idx < mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 325]
                                    _8709 = mem[(32 * idx) + (32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]
                                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = _7735
                                    mem[mem[64] + 68] = address(_8151)
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]
                                    _8712 = mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]
                                    s = 0
                                    while s < _8712:
                                        mem[s + mem[64] + 164] = mem[s + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 389]
                                        s = s + 32
                                        continue 
                                    if not _8712 % 32:
                                        require ext_code.size(address(_8709))
                                        call address(_8709).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _7735, address(_8151), 128, mem[mem[64] + 132 len _8712 + 32]
                                    else:
                                        mem[floor32(_8712) + mem[64] + 164] = mem[floor32(_8712) + mem[64] + -(_8712 % 32) + 196 len _8712 % 32]
                                        require ext_code.size(address(_8709))
                                        call address(_8709).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _7735, address(_8151), 128, mem[mem[64] + 132 len floor32(_8712) + 64]
                            else:
                                if idx >= mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 325] - 1:
                                    require idx < mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 325]
                                    _8440 = mem[(32 * idx) + (32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]
                                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _7735
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = this.address
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]
                                    _8443 = mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]
                                    s = 0
                                    while s < _8443:
                                        mem[s + mem[64] + 164] = mem[s + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 389]
                                        s = s + 32
                                        continue 
                                    if not _8443 % 32:
                                        require ext_code.size(address(_8440))
                                        call address(_8440).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _7735, 0, address(this.address), 128, mem[mem[64] + 132 len _8443 + 32]
                                    else:
                                        mem[floor32(_8443) + mem[64] + 164] = mem[floor32(_8443) + mem[64] + -(_8443 % 32) + 196 len _8443 % 32]
                                        require ext_code.size(address(_8440))
                                        call address(_8440).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _7735, 0, address(this.address), 128, mem[mem[64] + 132 len floor32(_8443) + 64]
                                else:
                                    require idx + 1 < mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 325]
                                    _8149 = mem[(32 * idx + 1) + (32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]
                                    require idx < mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 325]
                                    _8705 = mem[(32 * idx) + (32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]
                                    _8706 = mem[64]
                                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _7735
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = address(_8149)
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]
                                    _8708 = mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]
                                    s = 0
                                    while s < _8708:
                                        mem[s + mem[64] + 164] = mem[s + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 389]
                                        s = s + 32
                                        continue 
                                    if not _8708 % 32:
                                        require ext_code.size(address(_8705))
                                        call address(_8705).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _8708 + _8706 + -mem[64] + 160]
                                    else:
                                        mem[floor32(_8708) + _8706 + 164] = mem[floor32(_8708) + _8706 + -(_8708 % 32) + 196 len _8708 % 32]
                                        require ext_code.size(address(_8705))
                                        call address(_8705).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len floor32(_8708) + _8706 + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            continue 
            else:
                mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 224 len 32 * ('cd', 68).length] = call.data[calldata.size len 32 * ('cd', 68).length]
                idx = 0
                s = address(cd[4])
                while idx < ('cd', 68).length:
                    require idx < ('cd', 68).length
                    _2880 = mem[(32 * idx) + 128]
                    require ext_code.size(mem[(32 * idx) + 140 len 20])
                    staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 224 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_code.size(address(_2880))
                    staticcall address(_2880).token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(_2880))
                    staticcall address(_2880).token1() with:
                            gas gas_remaining wei
                    mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 224] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require idx < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 160]
                    require idx < mem[(32 * ('cd', 68).length) + 128]
                    if mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] <= 0:
                        revert with 0, 
                                    32,
                                    42,
                                    0x5942616c616e6365724c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                    mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 334 len 22]
                    if address(ext_call.return_data[0]) == address(s):
                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                            revert with 0, 
                                        32,
                                        39,
                                        0xfe42616c616e6365724c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                        mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 331 len 25]
                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                            revert with 0, 
                                        32,
                                        39,
                                        0xfe42616c616e6365724c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                        mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 331 len 25]
                        if -mem[(32 * idx) + (32 * ('cd', 68).length) + 160] + 1000 > 1000:
                            revert with 0, 'ds-math-sub-underflow'
                        if not -mem[(32 * idx) + (32 * ('cd', 68).length) + 160] + 1000:
                            if Mask(112, 0, ext_call.return_data[32]):
                                require Mask(112, 0, ext_call.return_data[32])
                                if 0 / Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-mul-overflow'
                            if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * Mask(112, 0, ext_call.return_data[0]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require 1000 * Mask(112, 0, ext_call.return_data[0])
                            require idx + 1 < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 160]
                            mem[(32 * idx + 1) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] = 0 / 1000 * Mask(112, 0, ext_call.return_data[0])
                        else:
                            require -mem[(32 * idx) + (32 * ('cd', 68).length) + 160] + 1000
                            if (1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]) - (mem[(32 * idx) + (32 * ('cd', 68).length) + 160] * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]) / -mem[(32 * idx) + (32 * ('cd', 68).length) + 160] + 1000 != mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]:
                                revert with 0, 'ds-math-mul-overflow'
                            if not Mask(112, 0, ext_call.return_data[32]):
                                if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]) - (mem[(32 * idx) + (32 * ('cd', 68).length) + 160] * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-add-overflow'
                                require (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]) - (mem[(32 * idx) + (32 * ('cd', 68).length) + 160] * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192])
                                require idx + 1 < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 160]
                                mem[(32 * idx + 1) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]) - (mem[(32 * idx) + (32 * ('cd', 68).length) + 160] * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192])
                            else:
                                require Mask(112, 0, ext_call.return_data[32])
                                if (1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * Mask(112, 0, ext_call.return_data[32])) - (mem[(32 * idx) + (32 * ('cd', 68).length) + 160] * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * Mask(112, 0, ext_call.return_data[32])) / Mask(112, 0, ext_call.return_data[32]) != (1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]) - (mem[(32 * idx) + (32 * ('cd', 68).length) + 160] * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]) - (mem[(32 * idx) + (32 * ('cd', 68).length) + 160] * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-add-overflow'
                                require (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]) - (mem[(32 * idx) + (32 * ('cd', 68).length) + 160] * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192])
                                require idx + 1 < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 160]
                                mem[(32 * idx + 1) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] = (1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * Mask(112, 0, ext_call.return_data[32])) - (mem[(32 * idx) + (32 * ('cd', 68).length) + 160] * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * Mask(112, 0, ext_call.return_data[32])) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]) - (mem[(32 * idx) + (32 * ('cd', 68).length) + 160] * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192])
                        require idx < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 192]
                        mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 224] = 1
                    else:
                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                            revert with 0, 
                                        32,
                                        39,
                                        0xfe42616c616e6365724c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                        mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 331 len 25]
                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                            revert with 0, 
                                        32,
                                        39,
                                        0xfe42616c616e6365724c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                        mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 331 len 25]
                        if -mem[(32 * idx) + (32 * ('cd', 68).length) + 160] + 1000 > 1000:
                            revert with 0, 'ds-math-sub-underflow'
                        if not -mem[(32 * idx) + (32 * ('cd', 68).length) + 160] + 1000:
                            if Mask(112, 0, ext_call.return_data[0]):
                                require Mask(112, 0, ext_call.return_data[0])
                                if 0 / Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-mul-overflow'
                            if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * Mask(112, 0, ext_call.return_data[32]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require 1000 * Mask(112, 0, ext_call.return_data[32])
                            require idx + 1 < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 160]
                            mem[(32 * idx + 1) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] = 0 / 1000 * Mask(112, 0, ext_call.return_data[32])
                        else:
                            require -mem[(32 * idx) + (32 * ('cd', 68).length) + 160] + 1000
                            if (1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]) - (mem[(32 * idx) + (32 * ('cd', 68).length) + 160] * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]) / -mem[(32 * idx) + (32 * ('cd', 68).length) + 160] + 1000 != mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]:
                                revert with 0, 'ds-math-mul-overflow'
                            if not Mask(112, 0, ext_call.return_data[0]):
                                if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]) - (mem[(32 * idx) + (32 * ('cd', 68).length) + 160] * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-add-overflow'
                                require (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]) - (mem[(32 * idx) + (32 * ('cd', 68).length) + 160] * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192])
                                require idx + 1 < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 160]
                                mem[(32 * idx + 1) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]) - (mem[(32 * idx) + (32 * ('cd', 68).length) + 160] * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192])
                            else:
                                require Mask(112, 0, ext_call.return_data[0])
                                if (1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * Mask(112, 0, ext_call.return_data[0])) - (mem[(32 * idx) + (32 * ('cd', 68).length) + 160] * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[0]) != (1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]) - (mem[(32 * idx) + (32 * ('cd', 68).length) + 160] * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]) - (mem[(32 * idx) + (32 * ('cd', 68).length) + 160] * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-add-overflow'
                                require (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]) - (mem[(32 * idx) + (32 * ('cd', 68).length) + 160] * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192])
                                require idx + 1 < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 160]
                                mem[(32 * idx + 1) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] = (1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * Mask(112, 0, ext_call.return_data[0])) - (mem[(32 * idx) + (32 * ('cd', 68).length) + 160] * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * Mask(112, 0, ext_call.return_data[0])) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]) - (mem[(32 * idx) + (32 * ('cd', 68).length) + 160] * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192])
                        require idx < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 192]
                        mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 224] = 0
                    idx = idx + 1
                    s = ext_call.return_data[0]
                    continue 
                if address(cd[4]) != address(s):
                    revert with 0, 'BalancerLibrary: IN_NOT_EQ_OUT'
                require mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 160] - 1 < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 160]
                if mem[(32 * mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 160] - 1) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] < ext_call.return_data[0]:
                    revert with 0, 'Balancer: NO_PROFIT'
                require 0 < ('cd', 68).length
                mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 260] = address(('cd', 68)[0])
                mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 292] = ext_call.return_data[0]
                mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 224] = 68
                mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 256 len 4] = unknown_0xa9059cbb(?????)
                mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 324 len 64] = 0, address(('cd', 68)[0]), ext_call.return_data[0 len 28]
                mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 416 len 4] = ext_call.return_data[20 len 4]
                call address(cd[4]) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0], Mask(224, 32, address(('cd', 68)[0]), ext_call.return_data[0 len 28]) >> 32, mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 388 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                    if not ('cd', 68).length:
                        mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 324] = ('cd', 68).length
                        mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                        mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356] = 0
                        mem[64] = (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 388
                        idx = 0
                        while idx < ('cd', 68).length:
                            require idx + 1 < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 160]
                            _7739 = mem[(32 * idx + 1) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                            require idx < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 192]
                            if 0 == mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 224]:
                                if idx >= mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 324] - 1:
                                    require idx < mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 324]
                                    _8450 = mem[(32 * idx) + (32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 388] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 392] = _7739
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 424] = 0
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 456] = this.address
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 488] = 128
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 520] = mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]
                                    _8453 = mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]
                                    s = 0
                                    while s < _8453:
                                        mem[s + mem[64] + 164] = mem[s + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 388]
                                        s = s + 32
                                        continue 
                                    if not _8453 % 32:
                                        require ext_code.size(address(_8450))
                                        call address(_8450).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _8453 + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + -mem[64] + 548]
                                    else:
                                        mem[floor32(_8453) + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 552] = mem[floor32(_8453) + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + -(_8453 % 32) + 584 len _8453 % 32]
                                        require ext_code.size(address(_8450))
                                        call address(_8450).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len floor32(_8453) + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + -mem[64] + 580]
                                else:
                                    require idx + 1 < mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 324]
                                    _8153 = mem[(32 * idx + 1) + (32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]
                                    require idx < mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 324]
                                    _8713 = mem[(32 * idx) + (32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 388] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 392] = _7739
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 424] = 0
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 456] = address(_8153)
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 488] = 128
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 520] = mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]
                                    s = 0
                                    while s < mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]:
                                        mem[s + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 552] = mem[s + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 388]
                                        s = s + 32
                                        continue 
                                    if not mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356] % 32:
                                        require ext_code.size(address(_8713))
                                        call address(_8713).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _7739, 0, address(_8153), 128, mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356], mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 552 len mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]]
                                    else:
                                        mem[floor32(mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]) + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 552] = mem[floor32(mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]) + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + -(mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356] % 32) + 584 len mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356] % 32]
                                        require ext_code.size(address(_8713))
                                        call address(_8713).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _7739, 0, address(_8153), 128, mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356], mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 552 len floor32(mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]) + 32]
                            else:
                                if idx >= mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 324] - 1:
                                    require idx < mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 324]
                                    _8455 = mem[(32 * idx) + (32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 388] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 392] = 0
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 424] = _7739
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 456] = this.address
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 488] = 128
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 520] = mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]
                                    s = 0
                                    while s < mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]:
                                        mem[s + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 552] = mem[s + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 388]
                                        s = s + 32
                                        continue 
                                    if not mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356] % 32:
                                        require ext_code.size(address(_8455))
                                        call address(_8455).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _7739, address(this.address), 128, mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356], mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 552 len mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]]
                                    else:
                                        mem[floor32(mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]) + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 552] = mem[floor32(mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]) + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + -(mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356] % 32) + 584 len mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356] % 32]
                                        require ext_code.size(address(_8455))
                                        call address(_8455).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _7739, address(this.address), 128, mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356], mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 552 len floor32(mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]) + 32]
                                else:
                                    require idx + 1 < mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 324]
                                    _8155 = mem[(32 * idx + 1) + (32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]
                                    require idx < mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 324]
                                    _8717 = mem[(32 * idx) + (32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 388] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 392] = 0
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 424] = _7739
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 456] = address(_8155)
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 488] = 128
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 520] = mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]
                                    s = 0
                                    while s < mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]:
                                        mem[s + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 552] = mem[s + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 388]
                                        s = s + 32
                                        continue 
                                    if not mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356] % 32:
                                        require ext_code.size(address(_8717))
                                        call address(_8717).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _7739, address(_8155), 128, mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356], mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 552 len mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]]
                                    else:
                                        mem[floor32(mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]) + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 552] = mem[floor32(mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]) + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + -(mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356] % 32) + 584 len mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356] % 32]
                                        require ext_code.size(address(_8717))
                                        call address(_8717).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _7739, address(_8155), 128, mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356], mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 552 len floor32(mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            continue 
                    else:
                        require ('cd', 68).length >= 32
                        if not mem[128]:
                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                        mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 324] = ('cd', 68).length
                        mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                        mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356] = 0
                        mem[64] = (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 388
                        idx = 0
                        while idx < ('cd', 68).length:
                            require idx + 1 < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 160]
                            _7743 = mem[(32 * idx + 1) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                            require idx < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 192]
                            if 0 == mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 224]:
                                if idx >= mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 324] - 1:
                                    require idx < mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 324]
                                    _8460 = mem[(32 * idx) + (32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]
                                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _7743
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = this.address
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]
                                    _8463 = mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]
                                    s = 0
                                    while s < _8463:
                                        mem[s + mem[64] + 164] = mem[s + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 388]
                                        s = s + 32
                                        continue 
                                    if not _8463 % 32:
                                        require ext_code.size(address(_8460))
                                        call address(_8460).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _7743, 0, address(this.address), 128, mem[mem[64] + 132 len _8463 + 32]
                                    else:
                                        mem[floor32(_8463) + mem[64] + 164] = mem[floor32(_8463) + mem[64] + -(_8463 % 32) + 196 len _8463 % 32]
                                        require ext_code.size(address(_8460))
                                        call address(_8460).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _7743, 0, address(this.address), 128, mem[mem[64] + 132 len floor32(_8463) + 64]
                                else:
                                    require idx + 1 < mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 324]
                                    _8157 = mem[(32 * idx + 1) + (32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]
                                    require idx < mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 324]
                                    _8721 = mem[(32 * idx) + (32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]
                                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _7743
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = address(_8157)
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]
                                    _8724 = mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]
                                    s = 0
                                    while s < _8724:
                                        mem[s + mem[64] + 164] = mem[s + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 388]
                                        s = s + 32
                                        continue 
                                    if not _8724 % 32:
                                        require ext_code.size(address(_8721))
                                        call address(_8721).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _7743, 0, address(_8157), 128, mem[mem[64] + 132 len _8724 + 32]
                                    else:
                                        mem[floor32(_8724) + mem[64] + 164] = mem[floor32(_8724) + mem[64] + -(_8724 % 32) + 196 len _8724 % 32]
                                        require ext_code.size(address(_8721))
                                        call address(_8721).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _7743, 0, address(_8157), 128, mem[mem[64] + 132 len floor32(_8724) + 64]
                            else:
                                if idx >= mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 324] - 1:
                                    require idx < mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 324]
                                    _8465 = mem[(32 * idx) + (32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]
                                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = _7743
                                    mem[mem[64] + 68] = this.address
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]
                                    _8468 = mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]
                                    s = 0
                                    while s < _8468:
                                        mem[s + mem[64] + 164] = mem[s + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 388]
                                        s = s + 32
                                        continue 
                                    if not _8468 % 32:
                                        require ext_code.size(address(_8465))
                                        call address(_8465).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _7743, address(this.address), 128, mem[mem[64] + 132 len _8468 + 32]
                                    else:
                                        mem[floor32(_8468) + mem[64] + 164] = mem[floor32(_8468) + mem[64] + -(_8468 % 32) + 196 len _8468 % 32]
                                        require ext_code.size(address(_8465))
                                        call address(_8465).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _7743, address(this.address), 128, mem[mem[64] + 132 len floor32(_8468) + 64]
                                else:
                                    require idx + 1 < mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 324]
                                    _8159 = mem[(32 * idx + 1) + (32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]
                                    require idx < mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 324]
                                    _8725 = mem[(32 * idx) + (32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]
                                    _8726 = mem[64]
                                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = _7743
                                    mem[mem[64] + 68] = address(_8159)
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]
                                    _8728 = mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]
                                    s = 0
                                    while s < _8728:
                                        mem[s + mem[64] + 164] = mem[s + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 388]
                                        s = s + 32
                                        continue 
                                    if not _8728 % 32:
                                        require ext_code.size(address(_8725))
                                        call address(_8725).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _8728 + _8726 + -mem[64] + 160]
                                    else:
                                        mem[floor32(_8728) + _8726 + 164] = mem[floor32(_8728) + _8726 + -(_8728 % 32) + 196 len _8728 % 32]
                                        require ext_code.size(address(_8725))
                                        call address(_8725).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len floor32(_8728) + _8726 + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            continue 
                else:
                    mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 324] = return_data.size
                    mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                    if not return_data.size:
                        mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 325] = ('cd', 68).length
                        mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                        mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357] = 0
                        mem[64] = (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 389
                        idx = 0
                        while idx < ('cd', 68).length:
                            require idx + 1 < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 160]
                            _7747 = mem[(32 * idx + 1) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                            require idx < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 192]
                            if 0 == mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 224]:
                                if idx >= mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 325] - 1:
                                    require idx < mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 325]
                                    _8470 = mem[(32 * idx) + (32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 389] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 393] = _7747
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 425] = 0
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 457] = this.address
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 489] = 128
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 521] = mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]
                                    _8473 = mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]
                                    s = 0
                                    while s < _8473:
                                        mem[s + mem[64] + 164] = mem[s + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 389]
                                        s = s + 32
                                        continue 
                                    if not _8473 % 32:
                                        require ext_code.size(address(_8470))
                                        call address(_8470).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _8473 + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + -mem[64] + 549]
                                    else:
                                        mem[floor32(_8473) + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 553] = mem[floor32(_8473) + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + -(_8473 % 32) + 585 len _8473 % 32]
                                        require ext_code.size(address(_8470))
                                        call address(_8470).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len floor32(_8473) + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + -mem[64] + 581]
                                else:
                                    require idx + 1 < mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 325]
                                    _8161 = mem[(32 * idx + 1) + (32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]
                                    require idx < mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 325]
                                    _8729 = mem[(32 * idx) + (32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 389] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 393] = _7747
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 425] = 0
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 457] = address(_8161)
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 489] = 128
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 521] = mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]
                                    s = 0
                                    while s < mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]:
                                        mem[s + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 553] = mem[s + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 389]
                                        s = s + 32
                                        continue 
                                    if not mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357] % 32:
                                        require ext_code.size(address(_8729))
                                        call address(_8729).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _7747, 0, address(_8161), 128, mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357], mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 553 len mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]]
                                    else:
                                        mem[floor32(mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]) + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 553] = mem[floor32(mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]) + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + -(mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357] % 32) + 585 len mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357] % 32]
                                        require ext_code.size(address(_8729))
                                        call address(_8729).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _7747, 0, address(_8161), 128, mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357], mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 553 len floor32(mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]) + 32]
                            else:
                                if idx >= mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 325] - 1:
                                    require idx < mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 325]
                                    _8475 = mem[(32 * idx) + (32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 389] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 393] = 0
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 425] = _7747
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 457] = this.address
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 489] = 128
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 521] = mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]
                                    _8478 = mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]
                                    s = 0
                                    while s < _8478:
                                        mem[s + mem[64] + 164] = mem[s + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 389]
                                        s = s + 32
                                        continue 
                                    if not _8478 % 32:
                                        require ext_code.size(address(_8475))
                                        call address(_8475).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _8478 + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + -mem[64] + 549]
                                    else:
                                        mem[floor32(_8478) + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 553] = mem[floor32(_8478) + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + -(_8478 % 32) + 585 len _8478 % 32]
                                        require ext_code.size(address(_8475))
                                        call address(_8475).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len floor32(_8478) + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + -mem[64] + 581]
                                else:
                                    require idx + 1 < mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 325]
                                    _8163 = mem[(32 * idx + 1) + (32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]
                                    require idx < mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 325]
                                    _8733 = mem[(32 * idx) + (32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 389] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 393] = 0
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 425] = _7747
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 457] = address(_8163)
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 489] = 128
                                    mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 521] = mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]
                                    s = 0
                                    while s < mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]:
                                        mem[s + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 553] = mem[s + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 389]
                                        s = s + 32
                                        continue 
                                    if not mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357] % 32:
                                        require ext_code.size(address(_8733))
                                        call address(_8733).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _7747, address(_8163), 128, mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357], mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 553 len mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]]
                                    else:
                                        mem[floor32(mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]) + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 553] = mem[floor32(mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]) + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + -(mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357] % 32) + 585 len mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357] % 32]
                                        require ext_code.size(address(_8733))
                                        call address(_8733).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _7747, address(_8163), 128, mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357], mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 553 len floor32(mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            continue 
                    else:
                        require return_data.size >= 32
                        if not mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 356]:
                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                        mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 325] = ('cd', 68).length
                        mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                        mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357] = 0
                        mem[64] = (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 389
                        idx = 0
                        while idx < ('cd', 68).length:
                            require idx + 1 < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 160]
                            _7751 = mem[(32 * idx + 1) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                            require idx < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 192]
                            if mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + 224] != 0:
                                if idx >= mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 325] - 1:
                                    require idx < mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 325]
                                    _8485 = mem[(32 * idx) + (32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]
                                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = _7751
                                    mem[mem[64] + 68] = this.address
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]
                                    _8488 = mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]
                                    s = 0
                                    while s < _8488:
                                        mem[s + mem[64] + 164] = mem[s + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 389]
                                        s = s + 32
                                        continue 
                                    if not _8488 % 32:
                                        require ext_code.size(address(_8485))
                                        call address(_8485).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _7751, address(this.address), 128, mem[mem[64] + 132 len _8488 + 32]
                                    else:
                                        mem[floor32(_8488) + mem[64] + 164] = mem[floor32(_8488) + mem[64] + -(_8488 % 32) + 196 len _8488 % 32]
                                        require ext_code.size(address(_8485))
                                        call address(_8485).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _7751, address(this.address), 128, mem[mem[64] + 132 len floor32(_8488) + 64]
                                else:
                                    require idx + 1 < mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 325]
                                    _8167 = mem[(32 * idx + 1) + (32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]
                                    require idx < mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 325]
                                    _8741 = mem[(32 * idx) + (32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]
                                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = _7751
                                    mem[mem[64] + 68] = address(_8167)
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]
                                    _8744 = mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]
                                    s = 0
                                    while s < _8744:
                                        mem[s + mem[64] + 164] = mem[s + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 389]
                                        s = s + 32
                                        continue 
                                    if not _8744 % 32:
                                        require ext_code.size(address(_8741))
                                        call address(_8741).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _7751, address(_8167), 128, mem[mem[64] + 132 len _8744 + 32]
                                    else:
                                        mem[floor32(_8744) + mem[64] + 164] = mem[floor32(_8744) + mem[64] + -(_8744 % 32) + 196 len _8744 % 32]
                                        require ext_code.size(address(_8741))
                                        call address(_8741).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _7751, address(_8167), 128, mem[mem[64] + 132 len floor32(_8744) + 64]
                            else:
                                if idx >= mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 325] - 1:
                                    require idx < mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 325]
                                    _8480 = mem[(32 * idx) + (32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]
                                    _8481 = mem[64]
                                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _7751
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = this.address
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]
                                    _8483 = mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]
                                    s = 0
                                    while s < _8483:
                                        mem[s + mem[64] + 164] = mem[s + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 389]
                                        s = s + 32
                                        continue 
                                    if not _8483 % 32:
                                        require ext_code.size(address(_8480))
                                        call address(_8480).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _8483 + _8481 + -mem[64] + 160]
                                    else:
                                        mem[floor32(_8483) + _8481 + 164] = mem[floor32(_8483) + _8481 + -(_8483 % 32) + 196 len _8483 % 32]
                                        require ext_code.size(address(_8480))
                                        call address(_8480).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len floor32(_8483) + _8481 + -mem[64] + 192]
                                else:
                                    require idx + 1 < mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 325]
                                    _8165 = mem[(32 * idx + 1) + (32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]
                                    require idx < mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 325]
                                    _8737 = mem[(32 * idx) + (32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]
                                    _8738 = mem[64]
                                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _7751
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = address(_8165)
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]
                                    _8740 = mem[(32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 357]
                                    s = 0
                                    while s < _8740:
                                        mem[s + mem[64] + 164] = mem[s + (32 * ('cd', 100).length) + (98 * ('cd', 68).length) + (32 * ('cd', 68).length + 1) + ceil32(return_data.size) + 389]
                                        s = s + 32
                                        continue 
                                    if not _8740 % 32:
                                        require ext_code.size(address(_8737))
                                        call address(_8737).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _8740 + _8738 + -mem[64] + 160]
                                    else:
                                        mem[floor32(_8740) + _8738 + 164] = mem[floor32(_8740) + _8738 + -(_8740 % 32) + 196 len _8740 % 32]
                                        require ext_code.size(address(_8737))
                                        call address(_8737).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len floor32(_8740) + _8738 + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            continue 
    require ext_code.size(address(cd[4]))
    staticcall address(cd[4]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > ext_call.return_data[0]:
        revert with 0, 'Balancer: ERROR_WTF?'
}



}
