contract main {




// =====================  Runtime code  =====================


#
#  - sub_286a581d(?)
#  - sub_bc07cf6d(?)
#
address stor0;
mapping of uint256 stor1;

function _fallback() payable {
    revert
}

function sub_cdfca7f2(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    if stor0 != msg.sender:
        revert with 0, 'Error'
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 1
        stor1[mem[(32 * idx) + 140 len 20]] = 1
        idx = idx + 1
        continue 
}

function sub_f2ac532f(?) payable {
    require calldata.size - 4 >= 96
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    if stor0 != msg.sender:
        if stor1[address(msg.sender)] != 1:
            revert with 0, 'Error'
    mem[ceil32(arg2.length) + 128 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32] = mem[floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32]
    call arg1 with:
       funct Mask(32, -(8 * ceil32(arg2.length) + -arg2.length + 4) + 256, 0) >> -(8 * ceil32(arg2.length) + -arg2.length + 4) + 256
       value arg3 wei
         gas gas_remaining wei
        args mem[ceil32(arg2.length) + 132 len arg2.length - 4]
}

function sub_a981a3e4(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    if msg.sender == stor0:
        require 1 < arg1.length
        _4 = mem[160]
        mem[(32 * arg1.length) + 132] = this.address
        require ext_code.size(address(_4))
        staticcall address(_4).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > 0:
            require 2 < arg1.length
            require 0 < arg1.length
            _21 = mem[128]
            require 1 < arg1.length
            _25 = mem[160]
            require ext_code.size(mem[204 len 20])
            staticcall mem[204 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[(32 * arg1.length) + 128 len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_call.return_data[0] > 0
            if mem[140 len 20] < mem[172 len 20]:
                if address(_21) == address(_21):
                    require ext_call.return_data[50 len 14] > 0
                    require ext_call.return_data[18 len 14] > 0
                    require (10000 * ext_call.return_data[50 len 14]) + (9975 * ext_call.return_data[0])
                    require 1 < arg1.length
                    _57 = mem[160]
                    require 2 < arg1.length
                    mem[(32 * arg1.length) + 164] = mem[204 len 20]
                    mem[(32 * arg1.length) + 196] = ext_call.return_data[0]
                    mem[(32 * arg1.length) + 128] = 68
                    mem[(32 * arg1.length) + 160 len 4] = unknown_0xa9059cbb(?????)
                    mem[(32 * arg1.length) + 320 len 4] = ext_call.return_data[20 len 4]
                    call address(_57).mem[(32 * arg1.length) + 192 len 4] with:
                         gas gas_remaining wei
                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * arg1.length) + 292 len 4]
                    if not ext_call.success:
                        revert with 0, 'Error: Revert25'
                    require 1 < arg1.length
                    require 2 < arg1.length
                    require ext_code.size(mem[172 len 20])
                    staticcall mem[172 len 20].0x70a08231 with:
                            gas gas_remaining wei
                           args mem[204 len 20]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]) > 0
                    require Mask(112, 0, ext_call.return_data[32]) > 0
                    require Mask(112, 0, ext_call.return_data[0]) > 0
                    require (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0])
                    require 1 < arg1.length
                    require 0 < arg1.length
                    require 2 < arg1.length
                    if not return_data.size:
                        mem[(32 * arg1.length) + 260] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        if mem[140 len 20] >= mem[172 len 20]:
                            mem[(32 * arg1.length) + 264] = 0
                            mem[(32 * arg1.length) + 296] = (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (9975 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0])
                            mem[(32 * arg1.length) + 328] = this.address
                            mem[(32 * arg1.length) + 360] = 128
                            mem[(32 * arg1.length) + 392] = ext_call.return_data[0]
                            mem[(32 * arg1.length) + 424 len ceil32(ext_call.return_data[0])] = mem[(32 * arg1.length) + 260 len ceil32(ext_call.return_data[0])]
                            if not ext_call.return_data[0] % 32:
                                require ext_code.size(mem[204 len 20])
                                call mem[204 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (9975 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]), address(this.address), 128, ext_call.return_data[0], mem[(32 * arg1.length) + 424 len ext_call.return_data[0]]
                            else:
                                mem[floor32(ext_call.return_data[0]) + (32 * arg1.length) + 424] = mem[floor32(ext_call.return_data[0]) + (32 * arg1.length) + -(ext_call.return_data[0] % 32) + 456 len ext_call.return_data[0] % 32]
                                require ext_code.size(mem[204 len 20])
                                call mem[204 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (9975 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]), address(this.address), 128, ext_call.return_data[0], mem[(32 * arg1.length) + 424 len floor32(ext_call.return_data[0]) + 32]
                        else:
                            mem[(32 * arg1.length) + 264] = (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (9975 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0])
                            mem[(32 * arg1.length) + 296] = 0
                            mem[(32 * arg1.length) + 328] = this.address
                            mem[(32 * arg1.length) + 360] = 128
                            mem[(32 * arg1.length) + 392] = ext_call.return_data[0]
                            mem[(32 * arg1.length) + 424 len ceil32(ext_call.return_data[0])] = mem[(32 * arg1.length) + 260 len ceil32(ext_call.return_data[0])]
                            if not ext_call.return_data[0] % 32:
                                require ext_code.size(mem[204 len 20])
                                call mem[204 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (9975 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]), 0, address(this.address), 128, ext_call.return_data[0], mem[(32 * arg1.length) + 424 len ext_call.return_data[0]]
                            else:
                                mem[floor32(ext_call.return_data[0]) + (32 * arg1.length) + 424] = mem[floor32(ext_call.return_data[0]) + (32 * arg1.length) + -(ext_call.return_data[0] % 32) + 456 len ext_call.return_data[0] % 32]
                                require ext_code.size(mem[204 len 20])
                                call mem[204 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (9975 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]), 0, address(this.address), 128, ext_call.return_data[0], mem[(32 * arg1.length) + 424 len floor32(ext_call.return_data[0]) + 32]
                    else:
                        mem[(32 * arg1.length) + ceil32(return_data.size) + 261] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        if mem[140 len 20] >= mem[172 len 20]:
                            mem[(32 * arg1.length) + ceil32(return_data.size) + 265] = 0
                            mem[(32 * arg1.length) + ceil32(return_data.size) + 297] = (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (9975 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0])
                            mem[(32 * arg1.length) + ceil32(return_data.size) + 329] = this.address
                            mem[(32 * arg1.length) + ceil32(return_data.size) + 361] = 128
                            mem[(32 * arg1.length) + ceil32(return_data.size) + 393] = ext_call.return_data[0]
                            mem[(32 * arg1.length) + ceil32(return_data.size) + 425 len ceil32(ext_call.return_data[0])] = mem[(32 * arg1.length) + ceil32(return_data.size) + 261 len ceil32(ext_call.return_data[0])]
                            if not ext_call.return_data[0] % 32:
                                require ext_code.size(mem[204 len 20])
                                call mem[204 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (9975 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]), address(this.address), 128, ext_call.return_data[0], mem[(32 * arg1.length) + ceil32(return_data.size) + 425 len ext_call.return_data[0]]
                            else:
                                mem[floor32(ext_call.return_data[0]) + (32 * arg1.length) + ceil32(return_data.size) + 425] = mem[floor32(ext_call.return_data[0]) + (32 * arg1.length) + ceil32(return_data.size) + -(ext_call.return_data[0] % 32) + 457 len ext_call.return_data[0] % 32]
                                require ext_code.size(mem[204 len 20])
                                call mem[204 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (9975 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]), address(this.address), 128, ext_call.return_data[0], mem[(32 * arg1.length) + ceil32(return_data.size) + 425 len floor32(ext_call.return_data[0]) + 32]
                        else:
                            mem[(32 * arg1.length) + ceil32(return_data.size) + 265] = (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (9975 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0])
                            mem[(32 * arg1.length) + ceil32(return_data.size) + 297] = 0
                            mem[(32 * arg1.length) + ceil32(return_data.size) + 329] = this.address
                            mem[(32 * arg1.length) + ceil32(return_data.size) + 361] = 128
                            mem[(32 * arg1.length) + ceil32(return_data.size) + 393] = ext_call.return_data[0]
                            mem[(32 * arg1.length) + ceil32(return_data.size) + 425 len ceil32(ext_call.return_data[0])] = mem[(32 * arg1.length) + ceil32(return_data.size) + 261 len ceil32(ext_call.return_data[0])]
                            if not ext_call.return_data[0] % 32:
                                require ext_code.size(mem[204 len 20])
                                call mem[204 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (9975 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]), 0, address(this.address), 128, ext_call.return_data[0], mem[(32 * arg1.length) + ceil32(return_data.size) + 425 len ext_call.return_data[0]]
                            else:
                                mem[floor32(ext_call.return_data[0]) + (32 * arg1.length) + ceil32(return_data.size) + 425] = mem[floor32(ext_call.return_data[0]) + (32 * arg1.length) + ceil32(return_data.size) + -(ext_call.return_data[0] % 32) + 457 len ext_call.return_data[0] % 32]
                                require ext_code.size(mem[204 len 20])
                                call mem[204 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (9975 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]), 0, address(this.address), 128, ext_call.return_data[0], mem[(32 * arg1.length) + ceil32(return_data.size) + 425 len floor32(ext_call.return_data[0]) + 32]
                else:
                    require ext_call.return_data[18 len 14] > 0
                    require ext_call.return_data[50 len 14] > 0
                    require (10000 * ext_call.return_data[18 len 14]) + (9975 * ext_call.return_data[0])
                    require 1 < arg1.length
                    _59 = mem[160]
                    require 2 < arg1.length
                    mem[(32 * arg1.length) + 164] = mem[204 len 20]
                    mem[(32 * arg1.length) + 196] = ext_call.return_data[0]
                    mem[(32 * arg1.length) + 128] = 68
                    mem[(32 * arg1.length) + 160 len 4] = unknown_0xa9059cbb(?????)
                    mem[(32 * arg1.length) + 320 len 4] = ext_call.return_data[20 len 4]
                    call address(_59).mem[(32 * arg1.length) + 192 len 4] with:
                         gas gas_remaining wei
                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * arg1.length) + 292 len 4]
                    if not ext_call.success:
                        revert with 0, 'Error: Revert25'
                    require 1 < arg1.length
                    require 2 < arg1.length
                    require ext_code.size(mem[172 len 20])
                    staticcall mem[172 len 20].0x70a08231 with:
                            gas gas_remaining wei
                           args mem[204 len 20]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require Mask(144, 112, ext_call.return_data[0]) > 0
                    require Mask(112, 0, ext_call.return_data[0]) > 0
                    require Mask(112, 0, ext_call.return_data[32]) > 0
                    require (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0])
                    require 1 < arg1.length
                    require 0 < arg1.length
                    require 2 < arg1.length
                    if not return_data.size:
                        mem[(32 * arg1.length) + 260] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        if mem[140 len 20] >= mem[172 len 20]:
                            mem[(32 * arg1.length) + 264] = 0
                            mem[(32 * arg1.length) + 296] = (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (9975 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0])
                            mem[(32 * arg1.length) + 328] = this.address
                            mem[(32 * arg1.length) + 360] = 128
                            mem[(32 * arg1.length) + 392] = ext_call.return_data[0]
                            mem[(32 * arg1.length) + 424 len ceil32(ext_call.return_data[0])] = mem[(32 * arg1.length) + 260 len ceil32(ext_call.return_data[0])]
                            if not ext_call.return_data[0] % 32:
                                require ext_code.size(mem[204 len 20])
                                call mem[204 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (9975 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), address(this.address), 128, ext_call.return_data[0], mem[(32 * arg1.length) + 424 len ext_call.return_data[0]]
                            else:
                                mem[floor32(ext_call.return_data[0]) + (32 * arg1.length) + 424] = mem[floor32(ext_call.return_data[0]) + (32 * arg1.length) + -(ext_call.return_data[0] % 32) + 456 len ext_call.return_data[0] % 32]
                                require ext_code.size(mem[204 len 20])
                                call mem[204 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (9975 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), address(this.address), 128, ext_call.return_data[0], mem[(32 * arg1.length) + 424 len floor32(ext_call.return_data[0]) + 32]
                        else:
                            mem[(32 * arg1.length) + 264] = (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (9975 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0])
                            mem[(32 * arg1.length) + 296] = 0
                            mem[(32 * arg1.length) + 328] = this.address
                            mem[(32 * arg1.length) + 360] = 128
                            mem[(32 * arg1.length) + 392] = ext_call.return_data[0]
                            mem[(32 * arg1.length) + 424 len ceil32(ext_call.return_data[0])] = mem[(32 * arg1.length) + 260 len ceil32(ext_call.return_data[0])]
                            if not ext_call.return_data[0] % 32:
                                require ext_code.size(mem[204 len 20])
                                call mem[204 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (9975 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), 0, address(this.address), 128, ext_call.return_data[0], mem[(32 * arg1.length) + 424 len ext_call.return_data[0]]
                            else:
                                mem[floor32(ext_call.return_data[0]) + (32 * arg1.length) + 424] = mem[floor32(ext_call.return_data[0]) + (32 * arg1.length) + -(ext_call.return_data[0] % 32) + 456 len ext_call.return_data[0] % 32]
                                require ext_code.size(mem[204 len 20])
                                call mem[204 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (9975 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), 0, address(this.address), 128, ext_call.return_data[0], mem[(32 * arg1.length) + 424 len floor32(ext_call.return_data[0]) + 32]
                    else:
                        mem[(32 * arg1.length) + ceil32(return_data.size) + 261] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        if mem[140 len 20] >= mem[172 len 20]:
                            mem[(32 * arg1.length) + ceil32(return_data.size) + 265] = 0
                            mem[(32 * arg1.length) + ceil32(return_data.size) + 297] = (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (9975 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0])
                            mem[(32 * arg1.length) + ceil32(return_data.size) + 329] = this.address
                            mem[(32 * arg1.length) + ceil32(return_data.size) + 361] = 128
                            mem[(32 * arg1.length) + ceil32(return_data.size) + 393] = ext_call.return_data[0]
                            mem[(32 * arg1.length) + ceil32(return_data.size) + 425 len ceil32(ext_call.return_data[0])] = mem[(32 * arg1.length) + ceil32(return_data.size) + 261 len ceil32(ext_call.return_data[0])]
                            if not ext_call.return_data[0] % 32:
                                require ext_code.size(mem[204 len 20])
                                call mem[204 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (9975 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), address(this.address), 128, ext_call.return_data[0], mem[(32 * arg1.length) + ceil32(return_data.size) + 425 len ext_call.return_data[0]]
                            else:
                                mem[floor32(ext_call.return_data[0]) + (32 * arg1.length) + ceil32(return_data.size) + 425] = mem[floor32(ext_call.return_data[0]) + (32 * arg1.length) + ceil32(return_data.size) + -(ext_call.return_data[0] % 32) + 457 len ext_call.return_data[0] % 32]
                                require ext_code.size(mem[204 len 20])
                                call mem[204 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (9975 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), address(this.address), 128, ext_call.return_data[0], mem[(32 * arg1.length) + ceil32(return_data.size) + 425 len floor32(ext_call.return_data[0]) + 32]
                        else:
                            mem[(32 * arg1.length) + ceil32(return_data.size) + 265] = (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (9975 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0])
                            mem[(32 * arg1.length) + ceil32(return_data.size) + 297] = 0
                            mem[(32 * arg1.length) + ceil32(return_data.size) + 329] = this.address
                            mem[(32 * arg1.length) + ceil32(return_data.size) + 361] = 128
                            mem[(32 * arg1.length) + ceil32(return_data.size) + 393] = ext_call.return_data[0]
                            mem[(32 * arg1.length) + ceil32(return_data.size) + 425 len ceil32(ext_call.return_data[0])] = mem[(32 * arg1.length) + ceil32(return_data.size) + 261 len ceil32(ext_call.return_data[0])]
                            if not ext_call.return_data[0] % 32:
                                require ext_code.size(mem[204 len 20])
                                call mem[204 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (9975 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), 0, address(this.address), 128, ext_call.return_data[0], mem[(32 * arg1.length) + ceil32(return_data.size) + 425 len ext_call.return_data[0]]
                            else:
                                mem[floor32(ext_call.return_data[0]) + (32 * arg1.length) + ceil32(return_data.size) + 425] = mem[floor32(ext_call.return_data[0]) + (32 * arg1.length) + ceil32(return_data.size) + -(ext_call.return_data[0] % 32) + 457 len ext_call.return_data[0] % 32]
                                require ext_code.size(mem[204 len 20])
                                call mem[204 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (9975 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), 0, address(this.address), 128, ext_call.return_data[0], mem[(32 * arg1.length) + ceil32(return_data.size) + 425 len floor32(ext_call.return_data[0]) + 32]
            else:
                if address(_21) == address(_25):
                    require ext_call.return_data[50 len 14] > 0
                    require ext_call.return_data[18 len 14] > 0
                    require (10000 * ext_call.return_data[50 len 14]) + (9975 * ext_call.return_data[0])
                    require 1 < arg1.length
                    _61 = mem[160]
                    require 2 < arg1.length
                    mem[(32 * arg1.length) + 164] = mem[204 len 20]
                    mem[(32 * arg1.length) + 196] = ext_call.return_data[0]
                    mem[(32 * arg1.length) + 128] = 68
                    mem[(32 * arg1.length) + 160 len 4] = unknown_0xa9059cbb(?????)
                    mem[(32 * arg1.length) + 320 len 4] = ext_call.return_data[20 len 4]
                    call address(_61).mem[(32 * arg1.length) + 192 len 4] with:
                         gas gas_remaining wei
                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * arg1.length) + 292 len 4]
                    if not ext_call.success:
                        revert with 0, 'Error: Revert25'
                    require 1 < arg1.length
                    require 2 < arg1.length
                    require ext_code.size(mem[172 len 20])
                    staticcall mem[172 len 20].0x70a08231 with:
                            gas gas_remaining wei
                           args mem[204 len 20]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]) > 0
                    require Mask(112, 0, ext_call.return_data[32]) > 0
                    require Mask(112, 0, ext_call.return_data[0]) > 0
                    require (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0])
                    require 1 < arg1.length
                    require 0 < arg1.length
                    require 2 < arg1.length
                    if not return_data.size:
                        mem[(32 * arg1.length) + 260] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        if mem[140 len 20] >= mem[172 len 20]:
                            mem[(32 * arg1.length) + 264] = 0
                            mem[(32 * arg1.length) + 296] = (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (9975 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0])
                            mem[(32 * arg1.length) + 328] = this.address
                            mem[(32 * arg1.length) + 360] = 128
                            mem[(32 * arg1.length) + 392] = ext_call.return_data[0]
                            mem[(32 * arg1.length) + 424 len ceil32(ext_call.return_data[0])] = mem[(32 * arg1.length) + 260 len ceil32(ext_call.return_data[0])]
                            if not ext_call.return_data[0] % 32:
                                require ext_code.size(mem[204 len 20])
                                call mem[204 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (9975 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]), address(this.address), 128, ext_call.return_data[0], mem[(32 * arg1.length) + 424 len ext_call.return_data[0]]
                            else:
                                mem[floor32(ext_call.return_data[0]) + (32 * arg1.length) + 424] = mem[floor32(ext_call.return_data[0]) + (32 * arg1.length) + -(ext_call.return_data[0] % 32) + 456 len ext_call.return_data[0] % 32]
                                require ext_code.size(mem[204 len 20])
                                call mem[204 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (9975 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]), address(this.address), 128, ext_call.return_data[0], mem[(32 * arg1.length) + 424 len floor32(ext_call.return_data[0]) + 32]
                        else:
                            mem[(32 * arg1.length) + 264] = (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (9975 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0])
                            mem[(32 * arg1.length) + 296] = 0
                            mem[(32 * arg1.length) + 328] = this.address
                            mem[(32 * arg1.length) + 360] = 128
                            mem[(32 * arg1.length) + 392] = ext_call.return_data[0]
                            mem[(32 * arg1.length) + 424 len ceil32(ext_call.return_data[0])] = mem[(32 * arg1.length) + 260 len ceil32(ext_call.return_data[0])]
                            if not ext_call.return_data[0] % 32:
                                require ext_code.size(mem[204 len 20])
                                call mem[204 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (9975 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]), 0, address(this.address), 128, ext_call.return_data[0], mem[(32 * arg1.length) + 424 len ext_call.return_data[0]]
                            else:
                                mem[floor32(ext_call.return_data[0]) + (32 * arg1.length) + 424] = mem[floor32(ext_call.return_data[0]) + (32 * arg1.length) + -(ext_call.return_data[0] % 32) + 456 len ext_call.return_data[0] % 32]
                                require ext_code.size(mem[204 len 20])
                                call mem[204 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (9975 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]), 0, address(this.address), 128, ext_call.return_data[0], mem[(32 * arg1.length) + 424 len floor32(ext_call.return_data[0]) + 32]
                    else:
                        mem[(32 * arg1.length) + ceil32(return_data.size) + 261] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        if mem[140 len 20] >= mem[172 len 20]:
                            mem[(32 * arg1.length) + ceil32(return_data.size) + 265] = 0
                            mem[(32 * arg1.length) + ceil32(return_data.size) + 297] = (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (9975 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0])
                            mem[(32 * arg1.length) + ceil32(return_data.size) + 329] = this.address
                            mem[(32 * arg1.length) + ceil32(return_data.size) + 361] = 128
                            mem[(32 * arg1.length) + ceil32(return_data.size) + 393] = ext_call.return_data[0]
                            mem[(32 * arg1.length) + ceil32(return_data.size) + 425 len ceil32(ext_call.return_data[0])] = mem[(32 * arg1.length) + ceil32(return_data.size) + 261 len ceil32(ext_call.return_data[0])]
                            if not ext_call.return_data[0] % 32:
                                require ext_code.size(mem[204 len 20])
                                call mem[204 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (9975 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]), address(this.address), 128, ext_call.return_data[0], mem[(32 * arg1.length) + ceil32(return_data.size) + 425 len ext_call.return_data[0]]
                            else:
                                mem[floor32(ext_call.return_data[0]) + (32 * arg1.length) + ceil32(return_data.size) + 425] = mem[floor32(ext_call.return_data[0]) + (32 * arg1.length) + ceil32(return_data.size) + -(ext_call.return_data[0] % 32) + 457 len ext_call.return_data[0] % 32]
                                require ext_code.size(mem[204 len 20])
                                call mem[204 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (9975 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]), address(this.address), 128, ext_call.return_data[0], mem[(32 * arg1.length) + ceil32(return_data.size) + 425 len floor32(ext_call.return_data[0]) + 32]
                        else:
                            mem[(32 * arg1.length) + ceil32(return_data.size) + 265] = (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (9975 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0])
                            mem[(32 * arg1.length) + ceil32(return_data.size) + 297] = 0
                            mem[(32 * arg1.length) + ceil32(return_data.size) + 329] = this.address
                            mem[(32 * arg1.length) + ceil32(return_data.size) + 361] = 128
                            mem[(32 * arg1.length) + ceil32(return_data.size) + 393] = ext_call.return_data[0]
                            mem[(32 * arg1.length) + ceil32(return_data.size) + 425 len ceil32(ext_call.return_data[0])] = mem[(32 * arg1.length) + ceil32(return_data.size) + 261 len ceil32(ext_call.return_data[0])]
                            if not ext_call.return_data[0] % 32:
                                require ext_code.size(mem[204 len 20])
                                call mem[204 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (9975 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]), 0, address(this.address), 128, ext_call.return_data[0], mem[(32 * arg1.length) + ceil32(return_data.size) + 425 len ext_call.return_data[0]]
                            else:
                                mem[floor32(ext_call.return_data[0]) + (32 * arg1.length) + ceil32(return_data.size) + 425] = mem[floor32(ext_call.return_data[0]) + (32 * arg1.length) + ceil32(return_data.size) + -(ext_call.return_data[0] % 32) + 457 len ext_call.return_data[0] % 32]
                                require ext_code.size(mem[204 len 20])
                                call mem[204 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (9975 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]), 0, address(this.address), 128, ext_call.return_data[0], mem[(32 * arg1.length) + ceil32(return_data.size) + 425 len floor32(ext_call.return_data[0]) + 32]
                else:
                    require ext_call.return_data[18 len 14] > 0
                    require ext_call.return_data[50 len 14] > 0
                    require (10000 * ext_call.return_data[18 len 14]) + (9975 * ext_call.return_data[0])
                    require 1 < arg1.length
                    _63 = mem[160]
                    require 2 < arg1.length
                    mem[(32 * arg1.length) + 164] = mem[204 len 20]
                    mem[(32 * arg1.length) + 196] = ext_call.return_data[0]
                    mem[(32 * arg1.length) + 128] = 68
                    mem[(32 * arg1.length) + 160 len 4] = unknown_0xa9059cbb(?????)
                    mem[(32 * arg1.length) + 320 len 4] = ext_call.return_data[20 len 4]
                    call address(_63).mem[(32 * arg1.length) + 192 len 4] with:
                         gas gas_remaining wei
                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * arg1.length) + 292 len 4]
                    if not ext_call.success:
                        revert with 0, 'Error: Revert25'
                    require 1 < arg1.length
                    require 2 < arg1.length
                    require ext_code.size(mem[172 len 20])
                    staticcall mem[172 len 20].0x70a08231 with:
                            gas gas_remaining wei
                           args mem[204 len 20]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require Mask(144, 112, ext_call.return_data[0]) > 0
                    require Mask(112, 0, ext_call.return_data[0]) > 0
                    require Mask(112, 0, ext_call.return_data[32]) > 0
                    require (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0])
                    require 1 < arg1.length
                    require 0 < arg1.length
                    require 2 < arg1.length
                    if not return_data.size:
                        mem[(32 * arg1.length) + 260] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        if mem[140 len 20] >= mem[172 len 20]:
                            mem[(32 * arg1.length) + 264] = 0
                            mem[(32 * arg1.length) + 296] = (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (9975 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0])
                            mem[(32 * arg1.length) + 328] = this.address
                            mem[(32 * arg1.length) + 360] = 128
                            mem[(32 * arg1.length) + 392] = ext_call.return_data[0]
                            mem[(32 * arg1.length) + 424 len ceil32(ext_call.return_data[0])] = mem[(32 * arg1.length) + 260 len ceil32(ext_call.return_data[0])]
                            if not ext_call.return_data[0] % 32:
                                require ext_code.size(mem[204 len 20])
                                call mem[204 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (9975 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), address(this.address), 128, ext_call.return_data[0], mem[(32 * arg1.length) + 424 len ext_call.return_data[0]]
                            else:
                                mem[floor32(ext_call.return_data[0]) + (32 * arg1.length) + 424] = mem[floor32(ext_call.return_data[0]) + (32 * arg1.length) + -(ext_call.return_data[0] % 32) + 456 len ext_call.return_data[0] % 32]
                                require ext_code.size(mem[204 len 20])
                                call mem[204 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (9975 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), address(this.address), 128, ext_call.return_data[0], mem[(32 * arg1.length) + 424 len floor32(ext_call.return_data[0]) + 32]
                        else:
                            mem[(32 * arg1.length) + 264] = (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (9975 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0])
                            mem[(32 * arg1.length) + 296] = 0
                            mem[(32 * arg1.length) + 328] = this.address
                            mem[(32 * arg1.length) + 360] = 128
                            mem[(32 * arg1.length) + 392] = ext_call.return_data[0]
                            mem[(32 * arg1.length) + 424 len ceil32(ext_call.return_data[0])] = mem[(32 * arg1.length) + 260 len ceil32(ext_call.return_data[0])]
                            if not ext_call.return_data[0] % 32:
                                require ext_code.size(mem[204 len 20])
                                call mem[204 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (9975 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), 0, address(this.address), 128, ext_call.return_data[0], mem[(32 * arg1.length) + 424 len ext_call.return_data[0]]
                            else:
                                mem[floor32(ext_call.return_data[0]) + (32 * arg1.length) + 424] = mem[floor32(ext_call.return_data[0]) + (32 * arg1.length) + -(ext_call.return_data[0] % 32) + 456 len ext_call.return_data[0] % 32]
                                require ext_code.size(mem[204 len 20])
                                call mem[204 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (9975 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), 0, address(this.address), 128, ext_call.return_data[0], mem[(32 * arg1.length) + 424 len floor32(ext_call.return_data[0]) + 32]
                    else:
                        mem[(32 * arg1.length) + ceil32(return_data.size) + 261] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        if mem[140 len 20] >= mem[172 len 20]:
                            mem[(32 * arg1.length) + ceil32(return_data.size) + 265] = 0
                            mem[(32 * arg1.length) + ceil32(return_data.size) + 297] = (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (9975 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0])
                            mem[(32 * arg1.length) + ceil32(return_data.size) + 329] = this.address
                            mem[(32 * arg1.length) + ceil32(return_data.size) + 361] = 128
                            mem[(32 * arg1.length) + ceil32(return_data.size) + 393] = ext_call.return_data[0]
                            mem[(32 * arg1.length) + ceil32(return_data.size) + 425 len ceil32(ext_call.return_data[0])] = mem[(32 * arg1.length) + ceil32(return_data.size) + 261 len ceil32(ext_call.return_data[0])]
                            if not ext_call.return_data[0] % 32:
                                require ext_code.size(mem[204 len 20])
                                call mem[204 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (9975 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), address(this.address), 128, ext_call.return_data[0], mem[(32 * arg1.length) + ceil32(return_data.size) + 425 len ext_call.return_data[0]]
                            else:
                                mem[floor32(ext_call.return_data[0]) + (32 * arg1.length) + ceil32(return_data.size) + 425] = mem[floor32(ext_call.return_data[0]) + (32 * arg1.length) + ceil32(return_data.size) + -(ext_call.return_data[0] % 32) + 457 len ext_call.return_data[0] % 32]
                                require ext_code.size(mem[204 len 20])
                                call mem[204 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (9975 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), address(this.address), 128, ext_call.return_data[0], mem[(32 * arg1.length) + ceil32(return_data.size) + 425 len floor32(ext_call.return_data[0]) + 32]
                        else:
                            mem[(32 * arg1.length) + ceil32(return_data.size) + 265] = (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (9975 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0])
                            mem[(32 * arg1.length) + ceil32(return_data.size) + 297] = 0
                            mem[(32 * arg1.length) + ceil32(return_data.size) + 329] = this.address
                            mem[(32 * arg1.length) + ceil32(return_data.size) + 361] = 128
                            mem[(32 * arg1.length) + ceil32(return_data.size) + 393] = ext_call.return_data[0]
                            mem[(32 * arg1.length) + ceil32(return_data.size) + 425 len ceil32(ext_call.return_data[0])] = mem[(32 * arg1.length) + ceil32(return_data.size) + 261 len ceil32(ext_call.return_data[0])]
                            if not ext_call.return_data[0] % 32:
                                require ext_code.size(mem[204 len 20])
                                call mem[204 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (9975 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), 0, address(this.address), 128, ext_call.return_data[0], mem[(32 * arg1.length) + ceil32(return_data.size) + 425 len ext_call.return_data[0]]
                            else:
                                mem[floor32(ext_call.return_data[0]) + (32 * arg1.length) + ceil32(return_data.size) + 425] = mem[floor32(ext_call.return_data[0]) + (32 * arg1.length) + ceil32(return_data.size) + -(ext_call.return_data[0] % 32) + 457 len ext_call.return_data[0] % 32]
                                require ext_code.size(mem[204 len 20])
                                call mem[204 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (9975 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), 0, address(this.address), 128, ext_call.return_data[0], mem[(32 * arg1.length) + ceil32(return_data.size) + 425 len floor32(ext_call.return_data[0]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    else:
        if stor1[address(msg.sender)] != 1:
            revert with 0, 'Error 3'
        require 1 < arg1.length
        _10 = mem[160]
        mem[(32 * arg1.length) + 132] = this.address
        require ext_code.size(address(_10))
        staticcall address(_10).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > 0:
            require 2 < arg1.length
            require 0 < arg1.length
            _26 = mem[128]
            require 1 < arg1.length
            _28 = mem[160]
            require ext_code.size(mem[204 len 20])
            staticcall mem[204 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[(32 * arg1.length) + 128 len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_call.return_data[0] > 0
            if mem[140 len 20] < mem[172 len 20]:
                if address(_26) == address(_26):
                    require ext_call.return_data[50 len 14] > 0
                    require ext_call.return_data[18 len 14] > 0
                    require (10000 * ext_call.return_data[50 len 14]) + (9975 * ext_call.return_data[0])
                    require 1 < arg1.length
                    _93 = mem[160]
                    require 2 < arg1.length
                    mem[(32 * arg1.length) + 164] = mem[204 len 20]
                    mem[(32 * arg1.length) + 196] = ext_call.return_data[0]
                    mem[(32 * arg1.length) + 128] = 68
                    mem[(32 * arg1.length) + 160 len 4] = unknown_0xa9059cbb(?????)
                    mem[(32 * arg1.length) + 320 len 4] = ext_call.return_data[20 len 4]
                    call address(_93).mem[(32 * arg1.length) + 192 len 4] with:
                         gas gas_remaining wei
                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * arg1.length) + 292 len 4]
                    if not ext_call.success:
                        revert with 0, 'Error: Revert25'
                    require 1 < arg1.length
                    require 2 < arg1.length
                    require ext_code.size(mem[172 len 20])
                    staticcall mem[172 len 20].0x70a08231 with:
                            gas gas_remaining wei
                           args mem[204 len 20]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]) > 0
                    require Mask(112, 0, ext_call.return_data[32]) > 0
                    require Mask(112, 0, ext_call.return_data[0]) > 0
                    require (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0])
                    require 1 < arg1.length
                    require 0 < arg1.length
                    require 2 < arg1.length
                    if not return_data.size:
                        mem[(32 * arg1.length) + 260] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        if mem[140 len 20] >= mem[172 len 20]:
                            mem[(32 * arg1.length) + 264] = 0
                            mem[(32 * arg1.length) + 296] = (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (9975 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0])
                            mem[(32 * arg1.length) + 328] = this.address
                            mem[(32 * arg1.length) + 360] = 128
                            mem[(32 * arg1.length) + 392] = ext_call.return_data[0]
                            mem[(32 * arg1.length) + 424 len ceil32(ext_call.return_data[0])] = mem[(32 * arg1.length) + 260 len ceil32(ext_call.return_data[0])]
                            if not ext_call.return_data[0] % 32:
                                require ext_code.size(mem[204 len 20])
                                call mem[204 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (9975 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]), address(this.address), 128, ext_call.return_data[0], mem[(32 * arg1.length) + 424 len ext_call.return_data[0]]
                            else:
                                mem[floor32(ext_call.return_data[0]) + (32 * arg1.length) + 424] = mem[floor32(ext_call.return_data[0]) + (32 * arg1.length) + -(ext_call.return_data[0] % 32) + 456 len ext_call.return_data[0] % 32]
                                require ext_code.size(mem[204 len 20])
                                call mem[204 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (9975 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]), address(this.address), 128, ext_call.return_data[0], mem[(32 * arg1.length) + 424 len floor32(ext_call.return_data[0]) + 32]
                        else:
                            mem[(32 * arg1.length) + 264] = (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (9975 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0])
                            mem[(32 * arg1.length) + 296] = 0
                            mem[(32 * arg1.length) + 328] = this.address
                            mem[(32 * arg1.length) + 360] = 128
                            mem[(32 * arg1.length) + 392] = ext_call.return_data[0]
                            mem[(32 * arg1.length) + 424 len ceil32(ext_call.return_data[0])] = mem[(32 * arg1.length) + 260 len ceil32(ext_call.return_data[0])]
                            if not ext_call.return_data[0] % 32:
                                require ext_code.size(mem[204 len 20])
                                call mem[204 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (9975 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]), 0, address(this.address), 128, ext_call.return_data[0], mem[(32 * arg1.length) + 424 len ext_call.return_data[0]]
                            else:
                                mem[floor32(ext_call.return_data[0]) + (32 * arg1.length) + 424] = mem[floor32(ext_call.return_data[0]) + (32 * arg1.length) + -(ext_call.return_data[0] % 32) + 456 len ext_call.return_data[0] % 32]
                                require ext_code.size(mem[204 len 20])
                                call mem[204 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (9975 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]), 0, address(this.address), 128, ext_call.return_data[0], mem[(32 * arg1.length) + 424 len floor32(ext_call.return_data[0]) + 32]
                    else:
                        mem[(32 * arg1.length) + ceil32(return_data.size) + 261] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        if mem[140 len 20] >= mem[172 len 20]:
                            mem[(32 * arg1.length) + ceil32(return_data.size) + 265] = 0
                            mem[(32 * arg1.length) + ceil32(return_data.size) + 297] = (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (9975 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0])
                            mem[(32 * arg1.length) + ceil32(return_data.size) + 329] = this.address
                            mem[(32 * arg1.length) + ceil32(return_data.size) + 361] = 128
                            mem[(32 * arg1.length) + ceil32(return_data.size) + 393] = ext_call.return_data[0]
                            mem[(32 * arg1.length) + ceil32(return_data.size) + 425 len ceil32(ext_call.return_data[0])] = mem[(32 * arg1.length) + ceil32(return_data.size) + 261 len ceil32(ext_call.return_data[0])]
                            if not ext_call.return_data[0] % 32:
                                require ext_code.size(mem[204 len 20])
                                call mem[204 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (9975 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]), address(this.address), 128, ext_call.return_data[0], mem[(32 * arg1.length) + ceil32(return_data.size) + 425 len ext_call.return_data[0]]
                            else:
                                mem[floor32(ext_call.return_data[0]) + (32 * arg1.length) + ceil32(return_data.size) + 425] = mem[floor32(ext_call.return_data[0]) + (32 * arg1.length) + ceil32(return_data.size) + -(ext_call.return_data[0] % 32) + 457 len ext_call.return_data[0] % 32]
                                require ext_code.size(mem[204 len 20])
                                call mem[204 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (9975 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]), address(this.address), 128, ext_call.return_data[0], mem[(32 * arg1.length) + ceil32(return_data.size) + 425 len floor32(ext_call.return_data[0]) + 32]
                        else:
                            mem[(32 * arg1.length) + ceil32(return_data.size) + 265] = (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (9975 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0])
                            mem[(32 * arg1.length) + ceil32(return_data.size) + 297] = 0
                            mem[(32 * arg1.length) + ceil32(return_data.size) + 329] = this.address
                            mem[(32 * arg1.length) + ceil32(return_data.size) + 361] = 128
                            mem[(32 * arg1.length) + ceil32(return_data.size) + 393] = ext_call.return_data[0]
                            mem[(32 * arg1.length) + ceil32(return_data.size) + 425 len ceil32(ext_call.return_data[0])] = mem[(32 * arg1.length) + ceil32(return_data.size) + 261 len ceil32(ext_call.return_data[0])]
                            if not ext_call.return_data[0] % 32:
                                require ext_code.size(mem[204 len 20])
                                call mem[204 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (9975 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]), 0, address(this.address), 128, ext_call.return_data[0], mem[(32 * arg1.length) + ceil32(return_data.size) + 425 len ext_call.return_data[0]]
                            else:
                                mem[floor32(ext_call.return_data[0]) + (32 * arg1.length) + ceil32(return_data.size) + 425] = mem[floor32(ext_call.return_data[0]) + (32 * arg1.length) + ceil32(return_data.size) + -(ext_call.return_data[0] % 32) + 457 len ext_call.return_data[0] % 32]
                                require ext_code.size(mem[204 len 20])
                                call mem[204 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (9975 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]), 0, address(this.address), 128, ext_call.return_data[0], mem[(32 * arg1.length) + ceil32(return_data.size) + 425 len floor32(ext_call.return_data[0]) + 32]
                else:
                    require ext_call.return_data[18 len 14] > 0
                    require ext_call.return_data[50 len 14] > 0
                    require (10000 * ext_call.return_data[18 len 14]) + (9975 * ext_call.return_data[0])
                    require 1 < arg1.length
                    _95 = mem[160]
                    require 2 < arg1.length
                    mem[(32 * arg1.length) + 164] = mem[204 len 20]
                    mem[(32 * arg1.length) + 196] = ext_call.return_data[0]
                    mem[(32 * arg1.length) + 128] = 68
                    mem[(32 * arg1.length) + 160 len 4] = unknown_0xa9059cbb(?????)
                    mem[(32 * arg1.length) + 320 len 4] = ext_call.return_data[20 len 4]
                    call address(_95).mem[(32 * arg1.length) + 192 len 4] with:
                         gas gas_remaining wei
                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * arg1.length) + 292 len 4]
                    if not ext_call.success:
                        revert with 0, 'Error: Revert25'
                    require 1 < arg1.length
                    require 2 < arg1.length
                    require ext_code.size(mem[172 len 20])
                    staticcall mem[172 len 20].0x70a08231 with:
                            gas gas_remaining wei
                           args mem[204 len 20]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require Mask(144, 112, ext_call.return_data[0]) > 0
                    require Mask(112, 0, ext_call.return_data[0]) > 0
                    require Mask(112, 0, ext_call.return_data[32]) > 0
                    require (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0])
                    require 1 < arg1.length
                    require 0 < arg1.length
                    require 2 < arg1.length
                    if not return_data.size:
                        mem[(32 * arg1.length) + 260] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        if mem[140 len 20] >= mem[172 len 20]:
                            mem[(32 * arg1.length) + 264] = 0
                            mem[(32 * arg1.length) + 296] = (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (9975 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0])
                            mem[(32 * arg1.length) + 328] = this.address
                            mem[(32 * arg1.length) + 360] = 128
                            mem[(32 * arg1.length) + 392] = ext_call.return_data[0]
                            mem[(32 * arg1.length) + 424 len ceil32(ext_call.return_data[0])] = mem[(32 * arg1.length) + 260 len ceil32(ext_call.return_data[0])]
                            if not ext_call.return_data[0] % 32:
                                require ext_code.size(mem[204 len 20])
                                call mem[204 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (9975 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), address(this.address), 128, ext_call.return_data[0], mem[(32 * arg1.length) + 424 len ext_call.return_data[0]]
                            else:
                                mem[floor32(ext_call.return_data[0]) + (32 * arg1.length) + 424] = mem[floor32(ext_call.return_data[0]) + (32 * arg1.length) + -(ext_call.return_data[0] % 32) + 456 len ext_call.return_data[0] % 32]
                                require ext_code.size(mem[204 len 20])
                                call mem[204 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (9975 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), address(this.address), 128, ext_call.return_data[0], mem[(32 * arg1.length) + 424 len floor32(ext_call.return_data[0]) + 32]
                        else:
                            mem[(32 * arg1.length) + 264] = (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (9975 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0])
                            mem[(32 * arg1.length) + 296] = 0
                            mem[(32 * arg1.length) + 328] = this.address
                            mem[(32 * arg1.length) + 360] = 128
                            mem[(32 * arg1.length) + 392] = ext_call.return_data[0]
                            mem[(32 * arg1.length) + 424 len ceil32(ext_call.return_data[0])] = mem[(32 * arg1.length) + 260 len ceil32(ext_call.return_data[0])]
                            if not ext_call.return_data[0] % 32:
                                require ext_code.size(mem[204 len 20])
                                call mem[204 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (9975 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), 0, address(this.address), 128, ext_call.return_data[0], mem[(32 * arg1.length) + 424 len ext_call.return_data[0]]
                            else:
                                mem[floor32(ext_call.return_data[0]) + (32 * arg1.length) + 424] = mem[floor32(ext_call.return_data[0]) + (32 * arg1.length) + -(ext_call.return_data[0] % 32) + 456 len ext_call.return_data[0] % 32]
                                require ext_code.size(mem[204 len 20])
                                call mem[204 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (9975 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), 0, address(this.address), 128, ext_call.return_data[0], mem[(32 * arg1.length) + 424 len floor32(ext_call.return_data[0]) + 32]
                    else:
                        mem[(32 * arg1.length) + ceil32(return_data.size) + 261] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        if mem[140 len 20] >= mem[172 len 20]:
                            mem[(32 * arg1.length) + ceil32(return_data.size) + 265] = 0
                            mem[(32 * arg1.length) + ceil32(return_data.size) + 297] = (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (9975 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0])
                            mem[(32 * arg1.length) + ceil32(return_data.size) + 329] = this.address
                            mem[(32 * arg1.length) + ceil32(return_data.size) + 361] = 128
                            mem[(32 * arg1.length) + ceil32(return_data.size) + 393] = ext_call.return_data[0]
                            mem[(32 * arg1.length) + ceil32(return_data.size) + 425 len ceil32(ext_call.return_data[0])] = mem[(32 * arg1.length) + ceil32(return_data.size) + 261 len ceil32(ext_call.return_data[0])]
                            if not ext_call.return_data[0] % 32:
                                require ext_code.size(mem[204 len 20])
                                call mem[204 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (9975 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), address(this.address), 128, ext_call.return_data[0], mem[(32 * arg1.length) + ceil32(return_data.size) + 425 len ext_call.return_data[0]]
                            else:
                                mem[floor32(ext_call.return_data[0]) + (32 * arg1.length) + ceil32(return_data.size) + 425] = mem[floor32(ext_call.return_data[0]) + (32 * arg1.length) + ceil32(return_data.size) + -(ext_call.return_data[0] % 32) + 457 len ext_call.return_data[0] % 32]
                                require ext_code.size(mem[204 len 20])
                                call mem[204 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (9975 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), address(this.address), 128, ext_call.return_data[0], mem[(32 * arg1.length) + ceil32(return_data.size) + 425 len floor32(ext_call.return_data[0]) + 32]
                        else:
                            mem[(32 * arg1.length) + ceil32(return_data.size) + 265] = (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (9975 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0])
                            mem[(32 * arg1.length) + ceil32(return_data.size) + 297] = 0
                            mem[(32 * arg1.length) + ceil32(return_data.size) + 329] = this.address
                            mem[(32 * arg1.length) + ceil32(return_data.size) + 361] = 128
                            mem[(32 * arg1.length) + ceil32(return_data.size) + 393] = ext_call.return_data[0]
                            mem[(32 * arg1.length) + ceil32(return_data.size) + 425 len ceil32(ext_call.return_data[0])] = mem[(32 * arg1.length) + ceil32(return_data.size) + 261 len ceil32(ext_call.return_data[0])]
                            if not ext_call.return_data[0] % 32:
                                require ext_code.size(mem[204 len 20])
                                call mem[204 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (9975 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), 0, address(this.address), 128, ext_call.return_data[0], mem[(32 * arg1.length) + ceil32(return_data.size) + 425 len ext_call.return_data[0]]
                            else:
                                mem[floor32(ext_call.return_data[0]) + (32 * arg1.length) + ceil32(return_data.size) + 425] = mem[floor32(ext_call.return_data[0]) + (32 * arg1.length) + ceil32(return_data.size) + -(ext_call.return_data[0] % 32) + 457 len ext_call.return_data[0] % 32]
                                require ext_code.size(mem[204 len 20])
                                call mem[204 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (9975 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), 0, address(this.address), 128, ext_call.return_data[0], mem[(32 * arg1.length) + ceil32(return_data.size) + 425 len floor32(ext_call.return_data[0]) + 32]
            else:
                if address(_26) == address(_28):
                    require ext_call.return_data[50 len 14] > 0
                    require ext_call.return_data[18 len 14] > 0
                    require (10000 * ext_call.return_data[50 len 14]) + (9975 * ext_call.return_data[0])
                    require 1 < arg1.length
                    _97 = mem[160]
                    require 2 < arg1.length
                    mem[(32 * arg1.length) + 164] = mem[204 len 20]
                    mem[(32 * arg1.length) + 196] = ext_call.return_data[0]
                    mem[(32 * arg1.length) + 128] = 68
                    mem[(32 * arg1.length) + 160 len 4] = unknown_0xa9059cbb(?????)
                    mem[(32 * arg1.length) + 320 len 4] = ext_call.return_data[20 len 4]
                    call address(_97).mem[(32 * arg1.length) + 192 len 4] with:
                         gas gas_remaining wei
                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * arg1.length) + 292 len 4]
                    if not ext_call.success:
                        revert with 0, 'Error: Revert25'
                    require 1 < arg1.length
                    require 2 < arg1.length
                    require ext_code.size(mem[172 len 20])
                    staticcall mem[172 len 20].0x70a08231 with:
                            gas gas_remaining wei
                           args mem[204 len 20]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]) > 0
                    require Mask(112, 0, ext_call.return_data[32]) > 0
                    require Mask(112, 0, ext_call.return_data[0]) > 0
                    require (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0])
                    require 1 < arg1.length
                    require 0 < arg1.length
                    require 2 < arg1.length
                    if not return_data.size:
                        mem[(32 * arg1.length) + 260] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        if mem[140 len 20] >= mem[172 len 20]:
                            mem[(32 * arg1.length) + 264] = 0
                            mem[(32 * arg1.length) + 296] = (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (9975 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0])
                            mem[(32 * arg1.length) + 328] = this.address
                            mem[(32 * arg1.length) + 360] = 128
                            mem[(32 * arg1.length) + 392] = ext_call.return_data[0]
                            mem[(32 * arg1.length) + 424 len ceil32(ext_call.return_data[0])] = mem[(32 * arg1.length) + 260 len ceil32(ext_call.return_data[0])]
                            if not ext_call.return_data[0] % 32:
                                require ext_code.size(mem[204 len 20])
                                call mem[204 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (9975 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]), address(this.address), 128, ext_call.return_data[0], mem[(32 * arg1.length) + 424 len ext_call.return_data[0]]
                            else:
                                mem[floor32(ext_call.return_data[0]) + (32 * arg1.length) + 424] = mem[floor32(ext_call.return_data[0]) + (32 * arg1.length) + -(ext_call.return_data[0] % 32) + 456 len ext_call.return_data[0] % 32]
                                require ext_code.size(mem[204 len 20])
                                call mem[204 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (9975 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]), address(this.address), 128, ext_call.return_data[0], mem[(32 * arg1.length) + 424 len floor32(ext_call.return_data[0]) + 32]
                        else:
                            mem[(32 * arg1.length) + 264] = (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (9975 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0])
                            mem[(32 * arg1.length) + 296] = 0
                            mem[(32 * arg1.length) + 328] = this.address
                            mem[(32 * arg1.length) + 360] = 128
                            mem[(32 * arg1.length) + 392] = ext_call.return_data[0]
                            mem[(32 * arg1.length) + 424 len ceil32(ext_call.return_data[0])] = mem[(32 * arg1.length) + 260 len ceil32(ext_call.return_data[0])]
                            if not ext_call.return_data[0] % 32:
                                require ext_code.size(mem[204 len 20])
                                call mem[204 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (9975 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]), 0, address(this.address), 128, ext_call.return_data[0], mem[(32 * arg1.length) + 424 len ext_call.return_data[0]]
                            else:
                                mem[floor32(ext_call.return_data[0]) + (32 * arg1.length) + 424] = mem[floor32(ext_call.return_data[0]) + (32 * arg1.length) + -(ext_call.return_data[0] % 32) + 456 len ext_call.return_data[0] % 32]
                                require ext_code.size(mem[204 len 20])
                                call mem[204 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (9975 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]), 0, address(this.address), 128, ext_call.return_data[0], mem[(32 * arg1.length) + 424 len floor32(ext_call.return_data[0]) + 32]
                    else:
                        mem[(32 * arg1.length) + ceil32(return_data.size) + 261] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        if mem[140 len 20] >= mem[172 len 20]:
                            mem[(32 * arg1.length) + ceil32(return_data.size) + 265] = 0
                            mem[(32 * arg1.length) + ceil32(return_data.size) + 297] = (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (9975 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0])
                            mem[(32 * arg1.length) + ceil32(return_data.size) + 329] = this.address
                            mem[(32 * arg1.length) + ceil32(return_data.size) + 361] = 128
                            mem[(32 * arg1.length) + ceil32(return_data.size) + 393] = ext_call.return_data[0]
                            mem[(32 * arg1.length) + ceil32(return_data.size) + 425 len ceil32(ext_call.return_data[0])] = mem[(32 * arg1.length) + ceil32(return_data.size) + 261 len ceil32(ext_call.return_data[0])]
                            if not ext_call.return_data[0] % 32:
                                require ext_code.size(mem[204 len 20])
                                call mem[204 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (9975 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]), address(this.address), 128, ext_call.return_data[0], mem[(32 * arg1.length) + ceil32(return_data.size) + 425 len ext_call.return_data[0]]
                            else:
                                mem[floor32(ext_call.return_data[0]) + (32 * arg1.length) + ceil32(return_data.size) + 425] = mem[floor32(ext_call.return_data[0]) + (32 * arg1.length) + ceil32(return_data.size) + -(ext_call.return_data[0] % 32) + 457 len ext_call.return_data[0] % 32]
                                require ext_code.size(mem[204 len 20])
                                call mem[204 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (9975 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]), address(this.address), 128, ext_call.return_data[0], mem[(32 * arg1.length) + ceil32(return_data.size) + 425 len floor32(ext_call.return_data[0]) + 32]
                        else:
                            mem[(32 * arg1.length) + ceil32(return_data.size) + 265] = (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (9975 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0])
                            mem[(32 * arg1.length) + ceil32(return_data.size) + 297] = 0
                            mem[(32 * arg1.length) + ceil32(return_data.size) + 329] = this.address
                            mem[(32 * arg1.length) + ceil32(return_data.size) + 361] = 128
                            mem[(32 * arg1.length) + ceil32(return_data.size) + 393] = ext_call.return_data[0]
                            mem[(32 * arg1.length) + ceil32(return_data.size) + 425 len ceil32(ext_call.return_data[0])] = mem[(32 * arg1.length) + ceil32(return_data.size) + 261 len ceil32(ext_call.return_data[0])]
                            if not ext_call.return_data[0] % 32:
                                require ext_code.size(mem[204 len 20])
                                call mem[204 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (9975 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]), 0, address(this.address), 128, ext_call.return_data[0], mem[(32 * arg1.length) + ceil32(return_data.size) + 425 len ext_call.return_data[0]]
                            else:
                                mem[floor32(ext_call.return_data[0]) + (32 * arg1.length) + ceil32(return_data.size) + 425] = mem[floor32(ext_call.return_data[0]) + (32 * arg1.length) + ceil32(return_data.size) + -(ext_call.return_data[0] % 32) + 457 len ext_call.return_data[0] % 32]
                                require ext_code.size(mem[204 len 20])
                                call mem[204 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (9975 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]), 0, address(this.address), 128, ext_call.return_data[0], mem[(32 * arg1.length) + ceil32(return_data.size) + 425 len floor32(ext_call.return_data[0]) + 32]
                else:
                    require ext_call.return_data[18 len 14] > 0
                    require ext_call.return_data[50 len 14] > 0
                    require (10000 * ext_call.return_data[18 len 14]) + (9975 * ext_call.return_data[0])
                    require 1 < arg1.length
                    _99 = mem[160]
                    require 2 < arg1.length
                    mem[(32 * arg1.length) + 164] = mem[204 len 20]
                    mem[(32 * arg1.length) + 196] = ext_call.return_data[0]
                    mem[(32 * arg1.length) + 128] = 68
                    mem[(32 * arg1.length) + 160 len 4] = unknown_0xa9059cbb(?????)
                    mem[(32 * arg1.length) + 320 len 4] = ext_call.return_data[20 len 4]
                    call address(_99).mem[(32 * arg1.length) + 192 len 4] with:
                         gas gas_remaining wei
                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * arg1.length) + 292 len 4]
                    if not ext_call.success:
                        revert with 0, 'Error: Revert25'
                    require 1 < arg1.length
                    require 2 < arg1.length
                    require ext_code.size(mem[172 len 20])
                    staticcall mem[172 len 20].0x70a08231 with:
                            gas gas_remaining wei
                           args mem[204 len 20]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require Mask(144, 112, ext_call.return_data[0]) > 0
                    require Mask(112, 0, ext_call.return_data[0]) > 0
                    require Mask(112, 0, ext_call.return_data[32]) > 0
                    require (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0])
                    require 1 < arg1.length
                    require 0 < arg1.length
                    require 2 < arg1.length
                    if not return_data.size:
                        mem[(32 * arg1.length) + 260] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        if mem[140 len 20] >= mem[172 len 20]:
                            mem[(32 * arg1.length) + 264] = 0
                            mem[(32 * arg1.length) + 296] = (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (9975 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0])
                            mem[(32 * arg1.length) + 328] = this.address
                            mem[(32 * arg1.length) + 360] = 128
                            mem[(32 * arg1.length) + 392] = ext_call.return_data[0]
                            mem[(32 * arg1.length) + 424 len ceil32(ext_call.return_data[0])] = mem[(32 * arg1.length) + 260 len ceil32(ext_call.return_data[0])]
                            if not ext_call.return_data[0] % 32:
                                require ext_code.size(mem[204 len 20])
                                call mem[204 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (9975 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), address(this.address), 128, ext_call.return_data[0], mem[(32 * arg1.length) + 424 len ext_call.return_data[0]]
                            else:
                                mem[floor32(ext_call.return_data[0]) + (32 * arg1.length) + 424] = mem[floor32(ext_call.return_data[0]) + (32 * arg1.length) + -(ext_call.return_data[0] % 32) + 456 len ext_call.return_data[0] % 32]
                                require ext_code.size(mem[204 len 20])
                                call mem[204 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (9975 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), address(this.address), 128, ext_call.return_data[0], mem[(32 * arg1.length) + 424 len floor32(ext_call.return_data[0]) + 32]
                        else:
                            mem[(32 * arg1.length) + 264] = (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (9975 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0])
                            mem[(32 * arg1.length) + 296] = 0
                            mem[(32 * arg1.length) + 328] = this.address
                            mem[(32 * arg1.length) + 360] = 128
                            mem[(32 * arg1.length) + 392] = ext_call.return_data[0]
                            mem[(32 * arg1.length) + 424 len ceil32(ext_call.return_data[0])] = mem[(32 * arg1.length) + 260 len ceil32(ext_call.return_data[0])]
                            if not ext_call.return_data[0] % 32:
                                require ext_code.size(mem[204 len 20])
                                call mem[204 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (9975 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), 0, address(this.address), 128, ext_call.return_data[0], mem[(32 * arg1.length) + 424 len ext_call.return_data[0]]
                            else:
                                mem[floor32(ext_call.return_data[0]) + (32 * arg1.length) + 424] = mem[floor32(ext_call.return_data[0]) + (32 * arg1.length) + -(ext_call.return_data[0] % 32) + 456 len ext_call.return_data[0] % 32]
                                require ext_code.size(mem[204 len 20])
                                call mem[204 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (9975 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), 0, address(this.address), 128, ext_call.return_data[0], mem[(32 * arg1.length) + 424 len floor32(ext_call.return_data[0]) + 32]
                    else:
                        mem[(32 * arg1.length) + ceil32(return_data.size) + 261] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        if mem[140 len 20] >= mem[172 len 20]:
                            mem[(32 * arg1.length) + ceil32(return_data.size) + 265] = 0
                            mem[(32 * arg1.length) + ceil32(return_data.size) + 297] = (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (9975 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0])
                            mem[(32 * arg1.length) + ceil32(return_data.size) + 329] = this.address
                            mem[(32 * arg1.length) + ceil32(return_data.size) + 361] = 128
                            mem[(32 * arg1.length) + ceil32(return_data.size) + 393] = ext_call.return_data[0]
                            mem[(32 * arg1.length) + ceil32(return_data.size) + 425 len ceil32(ext_call.return_data[0])] = mem[(32 * arg1.length) + ceil32(return_data.size) + 261 len ceil32(ext_call.return_data[0])]
                            if not ext_call.return_data[0] % 32:
                                require ext_code.size(mem[204 len 20])
                                call mem[204 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (9975 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), address(this.address), 128, ext_call.return_data[0], mem[(32 * arg1.length) + ceil32(return_data.size) + 425 len ext_call.return_data[0]]
                            else:
                                mem[floor32(ext_call.return_data[0]) + (32 * arg1.length) + ceil32(return_data.size) + 425] = mem[floor32(ext_call.return_data[0]) + (32 * arg1.length) + ceil32(return_data.size) + -(ext_call.return_data[0] % 32) + 457 len ext_call.return_data[0] % 32]
                                require ext_code.size(mem[204 len 20])
                                call mem[204 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (9975 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), address(this.address), 128, ext_call.return_data[0], mem[(32 * arg1.length) + ceil32(return_data.size) + 425 len floor32(ext_call.return_data[0]) + 32]
                        else:
                            mem[(32 * arg1.length) + ceil32(return_data.size) + 265] = (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (9975 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0])
                            mem[(32 * arg1.length) + ceil32(return_data.size) + 297] = 0
                            mem[(32 * arg1.length) + ceil32(return_data.size) + 329] = this.address
                            mem[(32 * arg1.length) + ceil32(return_data.size) + 361] = 128
                            mem[(32 * arg1.length) + ceil32(return_data.size) + 393] = ext_call.return_data[0]
                            mem[(32 * arg1.length) + ceil32(return_data.size) + 425 len ceil32(ext_call.return_data[0])] = mem[(32 * arg1.length) + ceil32(return_data.size) + 261 len ceil32(ext_call.return_data[0])]
                            if not ext_call.return_data[0] % 32:
                                require ext_code.size(mem[204 len 20])
                                call mem[204 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (9975 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), 0, address(this.address), 128, ext_call.return_data[0], mem[(32 * arg1.length) + ceil32(return_data.size) + 425 len ext_call.return_data[0]]
                            else:
                                mem[floor32(ext_call.return_data[0]) + (32 * arg1.length) + ceil32(return_data.size) + 425] = mem[floor32(ext_call.return_data[0]) + (32 * arg1.length) + ceil32(return_data.size) + -(ext_call.return_data[0] % 32) + 457 len ext_call.return_data[0] % 32]
                                require ext_code.size(mem[204 len 20])
                                call mem[204 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (9975 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), 0, address(this.address), 128, ext_call.return_data[0], mem[(32 * arg1.length) + ceil32(return_data.size) + 425 len floor32(ext_call.return_data[0]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
}



}
