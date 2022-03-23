contract main {




// =====================  Runtime code  =====================


#
#  - sub_fd0b1102(?)
#
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



}
