contract main {




// =====================  Runtime code  =====================


mapping of uint8 stor0;
address owner;

function approvals(address arg1) {
    return bool(stor0[arg1])
}

function owner() {
    return owner
}

function _fallback() payable {
  stop
}

function changeOwner(address arg1) {
    require msg.sender == owner
    owner = arg1
}

function withdraw() {
    require msg.sender == owner
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getBalance(address arg1, address arg2) {
    require ext_code.size(arg1)
    call arg1.balanceOf(address rg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_e1aff7e8(?) payable {
    mem[128 len arg2.length] = arg2[all]
    require msg.sender == owner
    mem[ceil32(arg2.length) + 128 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    if not arg2.length % 32:
        call arg1.mem[ceil32(arg2.length) + 128 len 4] with:
           value msg.value wei
             gas gas_remaining wei
            args mem[ceil32(arg2.length) + 132 len arg2.length - 4]
    else:
        mem[floor32(arg2.length) + ceil32(arg2.length) + 128] = mem[floor32(arg2.length) + ceil32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32]
        call arg1.mem[ceil32(arg2.length) + 128 len 4] with:
           value msg.value wei
             gas gas_remaining wei
            args mem[ceil32(arg2.length) + 132 len floor32(arg2.length) + 28]
}

function getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) {
    if 997 * arg1 / 997 != arg1:
        revert with 0, 'ds-math-mul-overflow'
    if not arg3:
        if 1000 * arg2 / 1000 != arg2:
            revert with 0, 'ds-math-mul-overflow'
        if (1000 * arg2) + (997 * arg1) < 1000 * arg2:
            revert with 0, 'ds-math-add-overflow'
        if (1000 * arg2) + (997 * arg1):
            return (0 / (1000 * arg2) + (997 * arg1))
    else:
        if arg3:
            if 997 * arg1 * arg3 / arg3 != 997 * arg1:
                revert with 0, 'ds-math-mul-overflow'
            if 1000 * arg2 / 1000 != arg2:
                revert with 0, 'ds-math-mul-overflow'
            if (1000 * arg2) + (997 * arg1) < 1000 * arg2:
                revert with 0, 'ds-math-add-overflow'
            if (1000 * arg2) + (997 * arg1):
                return (997 * arg1 * arg3 / (1000 * arg2) + (997 * arg1))
    revert
}

function getTokenDetails(address arg1, address arg2) {
    require ext_code.size(0xce8fd65646f2a2a897755a1188c04ace94d2b8d0)
    call 0xce8fd65646f2a2a897755a1188c04ace94d2b8d0.getPair(address rg1, address rg2) with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).getReserves() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_code.size(arg2)
    call arg2.balanceOf(address rg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg1 >= arg2:
        return address(ext_call.return_data[0]), 
               ext_call.return_data[32] << 144,
               ext_call.return_data[0] << 144,
               ext_call.return_data[0]
    return address(ext_call.return_data[0]), 
           ext_call.return_data[0] << 144,
           ext_call.return_data[32] << 144,
           ext_call.return_data[0]
}

function transfer(address arg1, address arg2, uint256 arg3) {
    require msg.sender == owner
    if not arg3:
        require ext_code.size(arg1)
        call arg1.balanceOf(address rg1) with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    else:
        if arg3 == 3:
            require ext_code.size(arg1)
            call arg1.balanceOf(address rg1) with:
                 gas gas_remaining wei
                args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
        else:
            if arg3 == 2:
                require ext_code.size(arg1)
                call arg1.balanceOf(address rg1) with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
            else:
                if arg3 == 1:
                    require ext_code.size(arg1)
                    call arg1.balanceOf(address rg1) with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
    call arg1 with:
       funct Mask(32, 224, sha3('transfer(address,uint256)')) >> 224
         gas gas_remaining wei
        args address(arg2), arg3
    require ext_call.success
    return 0
}

function sub_85d07c9d(?) payable {
    mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    require 1 < arg3.length
    _3 = mem[160]
    mem[(32 * arg3.length) + 132] = this.address
    require ext_code.size(address(_3))
    call address(_3).balanceOf(address rg1) with:
         gas gas_remaining wei
        args this.address
    mem[(32 * arg3.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] < 1
    if arg2 != this.address:
        require ext_code.size(arg2)
        call arg2.getReserves() with:
             gas gas_remaining wei
        mem[(32 * arg3.length) + 128 len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if ext_call.return_data[18 len 14] > 1:
            if ext_call.return_data[50 len 14] > 1:
                require 1 < arg3.length
                require 0 < arg3.length
                if 997 * msg.value / 997 != msg.value:
                    revert with 0, 'ds-math-mul-overflow'
                if mem[140 len 20] >= mem[172 len 20]:
                    if not ext_call.return_data[18 len 14]:
                        if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                            revert with 0, 'ds-math-mul-overflow'
                        if (1000 * ext_call.return_data[50 len 14]) + (997 * msg.value) < 1000 * ext_call.return_data[50 len 14]:
                            revert with 0, 'ds-math-add-overflow'
                        require (1000 * ext_call.return_data[50 len 14]) + (997 * msg.value)
                        require 0 / (1000 * ext_call.return_data[50 len 14]) + (997 * msg.value) >= arg1
                        require 0 < arg3.length
                        _78 = mem[128]
                        mem[(32 * arg3.length) + 128] = 0xd0e30db000000000000000000000000000000000000000000000000000000000
                        require ext_code.size(address(_78))
                        call address(_78).deposit() with:
                           value msg.value wei
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require 0 < arg3.length
                        _102 = mem[128]
                        mem[(32 * arg3.length) + 132] = arg2
                        mem[(32 * arg3.length) + 164] = msg.value
                        require ext_code.size(address(_102))
                        call address(_102).transfer(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args address(arg2), msg.value
                        mem[(32 * arg3.length) + 128] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require 1 < arg3.length
                        require 0 < arg3.length
                        mem[(32 * arg3.length) + 128] = 0
                        mem[(32 * arg3.length) + 160] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        if mem[140 len 20] >= mem[172 len 20]:
                            mem[(32 * arg3.length) + 164] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * msg.value)
                            require ext_code.size(arg2)
                            call arg2.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * msg.value), 0, address(this.address), 128, 0
                        else:
                            mem[(32 * arg3.length) + 164] = 0
                            require ext_code.size(arg2)
                            call arg2.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * msg.value), address(this.address), 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require 1 < arg3.length
                        require ext_code.size(mem[172 len 20])
                        call mem[172 len 20].balanceOf(address rg1) with:
                             gas gas_remaining wei
                            args this.address
                        mem[(32 * arg3.length) + 160] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] >= 8 * 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * msg.value) / 10
                    else:
                        require ext_call.return_data[18 len 14]
                        if 997 * msg.value * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 997 * msg.value:
                            revert with 0, 'ds-math-mul-overflow'
                        if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                            revert with 0, 'ds-math-mul-overflow'
                        if (1000 * ext_call.return_data[50 len 14]) + (997 * msg.value) < 1000 * ext_call.return_data[50 len 14]:
                            revert with 0, 'ds-math-add-overflow'
                        require (1000 * ext_call.return_data[50 len 14]) + (997 * msg.value)
                        require 997 * msg.value * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * msg.value) >= arg1
                        require 0 < arg3.length
                        _91 = mem[128]
                        mem[(32 * arg3.length) + 128] = 0xd0e30db000000000000000000000000000000000000000000000000000000000
                        require ext_code.size(address(_91))
                        call address(_91).deposit() with:
                           value msg.value wei
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require 0 < arg3.length
                        _111 = mem[128]
                        mem[(32 * arg3.length) + 132] = arg2
                        mem[(32 * arg3.length) + 164] = msg.value
                        require ext_code.size(address(_111))
                        call address(_111).transfer(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args address(arg2), msg.value
                        mem[(32 * arg3.length) + 128] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require 1 < arg3.length
                        require 0 < arg3.length
                        mem[(32 * arg3.length) + 128] = 0
                        mem[(32 * arg3.length) + 160] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        if mem[140 len 20] >= mem[172 len 20]:
                            mem[(32 * arg3.length) + 164] = 997 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * msg.value)
                            require ext_code.size(arg2)
                            call arg2.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 997 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * msg.value), 0, address(this.address), 128, 0
                        else:
                            mem[(32 * arg3.length) + 164] = 0
                            require ext_code.size(arg2)
                            call arg2.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, 997 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * msg.value), address(this.address), 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require 1 < arg3.length
                        require ext_code.size(mem[172 len 20])
                        call mem[172 len 20].balanceOf(address rg1) with:
                             gas gas_remaining wei
                            args this.address
                        mem[(32 * arg3.length) + 160] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] >= 8 * 997 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * msg.value) / 10
                else:
                    if not ext_call.return_data[50 len 14]:
                        if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                            revert with 0, 'ds-math-mul-overflow'
                        if (1000 * ext_call.return_data[18 len 14]) + (997 * msg.value) < 1000 * ext_call.return_data[18 len 14]:
                            revert with 0, 'ds-math-add-overflow'
                        require (1000 * ext_call.return_data[18 len 14]) + (997 * msg.value)
                        require 0 / (1000 * ext_call.return_data[18 len 14]) + (997 * msg.value) >= arg1
                        require 0 < arg3.length
                        _81 = mem[128]
                        mem[(32 * arg3.length) + 128] = 0xd0e30db000000000000000000000000000000000000000000000000000000000
                        require ext_code.size(address(_81))
                        call address(_81).deposit() with:
                           value msg.value wei
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require 0 < arg3.length
                        _105 = mem[128]
                        mem[(32 * arg3.length) + 132] = arg2
                        mem[(32 * arg3.length) + 164] = msg.value
                        require ext_code.size(address(_105))
                        call address(_105).transfer(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args address(arg2), msg.value
                        mem[(32 * arg3.length) + 128] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require 1 < arg3.length
                        require 0 < arg3.length
                        mem[(32 * arg3.length) + 128] = 0
                        mem[(32 * arg3.length) + 160] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        if mem[140 len 20] >= mem[172 len 20]:
                            mem[(32 * arg3.length) + 164] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * msg.value)
                            require ext_code.size(arg2)
                            call arg2.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * msg.value), 0, address(this.address), 128, 0
                        else:
                            mem[(32 * arg3.length) + 164] = 0
                            require ext_code.size(arg2)
                            call arg2.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * msg.value), address(this.address), 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require 1 < arg3.length
                        require ext_code.size(mem[172 len 20])
                        call mem[172 len 20].balanceOf(address rg1) with:
                             gas gas_remaining wei
                            args this.address
                        mem[(32 * arg3.length) + 160] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] >= 8 * 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * msg.value) / 10
                    else:
                        require ext_call.return_data[50 len 14]
                        if 997 * msg.value * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 997 * msg.value:
                            revert with 0, 'ds-math-mul-overflow'
                        if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                            revert with 0, 'ds-math-mul-overflow'
                        if (1000 * ext_call.return_data[18 len 14]) + (997 * msg.value) < 1000 * ext_call.return_data[18 len 14]:
                            revert with 0, 'ds-math-add-overflow'
                        require (1000 * ext_call.return_data[18 len 14]) + (997 * msg.value)
                        require 997 * msg.value * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * msg.value) >= arg1
                        require 0 < arg3.length
                        _95 = mem[128]
                        mem[(32 * arg3.length) + 128] = 0xd0e30db000000000000000000000000000000000000000000000000000000000
                        require ext_code.size(address(_95))
                        call address(_95).deposit() with:
                           value msg.value wei
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require 0 < arg3.length
                        _115 = mem[128]
                        mem[(32 * arg3.length) + 132] = arg2
                        mem[(32 * arg3.length) + 164] = msg.value
                        require ext_code.size(address(_115))
                        call address(_115).transfer(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args address(arg2), msg.value
                        mem[(32 * arg3.length) + 128] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require 1 < arg3.length
                        require 0 < arg3.length
                        mem[(32 * arg3.length) + 128] = 0
                        mem[(32 * arg3.length) + 160] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        if mem[140 len 20] >= mem[172 len 20]:
                            mem[(32 * arg3.length) + 164] = 997 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * msg.value)
                            require ext_code.size(arg2)
                            call arg2.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 997 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * msg.value), 0, address(this.address), 128, 0
                        else:
                            mem[(32 * arg3.length) + 164] = 0
                            require ext_code.size(arg2)
                            call arg2.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, 997 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * msg.value), address(this.address), 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require 1 < arg3.length
                        require ext_code.size(mem[172 len 20])
                        call mem[172 len 20].balanceOf(address rg1) with:
                             gas gas_remaining wei
                            args this.address
                        mem[(32 * arg3.length) + 160] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] >= 8 * 997 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * msg.value) / 10
                if arg4 > 0:
                    require 1 < arg3.length
                    call mem[172 len 20] with:
                       funct Mask(32, 224, sha3('transfer(address,uint256)')) >> 224
                         gas gas_remaining wei
                        args address(arg2), ext_call.return_data[0] * arg4 / 100
                    require ext_call.success
                    require ext_code.size(arg2)
                    call arg2.skim(address rg1) with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
    else:
        require 0 < arg3.length
        require 1 < arg3.length
        require ext_code.size(0xce8fd65646f2a2a897755a1188c04ace94d2b8d0)
        call 0xce8fd65646f2a2a897755a1188c04ace94d2b8d0.getPair(address rg1, address rg2) with:
             gas gas_remaining wei
            args address(mem[128]), mem[172 len 20]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).getReserves() with:
             gas gas_remaining wei
        mem[(32 * arg3.length) + 128 len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if ext_call.return_data[18 len 14] > 1:
            if ext_call.return_data[50 len 14] > 1:
                require 1 < arg3.length
                require 0 < arg3.length
                if 997 * msg.value / 997 != msg.value:
                    revert with 0, 'ds-math-mul-overflow'
                if mem[140 len 20] >= mem[172 len 20]:
                    if not ext_call.return_data[18 len 14]:
                        if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                            revert with 0, 'ds-math-mul-overflow'
                        if (1000 * ext_call.return_data[50 len 14]) + (997 * msg.value) < 1000 * ext_call.return_data[50 len 14]:
                            revert with 0, 'ds-math-add-overflow'
                        require (1000 * ext_call.return_data[50 len 14]) + (997 * msg.value)
                        require 0 / (1000 * ext_call.return_data[50 len 14]) + (997 * msg.value) >= arg1
                        require 0 < arg3.length
                        _124 = mem[128]
                        mem[(32 * arg3.length) + 128] = 0xd0e30db000000000000000000000000000000000000000000000000000000000
                        require ext_code.size(address(_124))
                        call address(_124).deposit() with:
                           value msg.value wei
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require 0 < arg3.length
                        _160 = mem[128]
                        mem[(32 * arg3.length) + 132] = address(ext_call.return_data[0])
                        mem[(32 * arg3.length) + 164] = msg.value
                        require ext_code.size(address(_160))
                        call address(_160).transfer(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), msg.value
                        mem[(32 * arg3.length) + 128] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require 1 < arg3.length
                        require 0 < arg3.length
                        mem[(32 * arg3.length) + 128] = 0
                        mem[(32 * arg3.length) + 160] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        if mem[140 len 20] >= mem[172 len 20]:
                            mem[(32 * arg3.length) + 164] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * msg.value)
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * msg.value), 0, address(this.address), 128, 0
                        else:
                            mem[(32 * arg3.length) + 164] = 0
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * msg.value), address(this.address), 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require 1 < arg3.length
                        require ext_code.size(mem[172 len 20])
                        call mem[172 len 20].balanceOf(address rg1) with:
                             gas gas_remaining wei
                            args this.address
                        mem[(32 * arg3.length) + 160] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] >= 8 * 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * msg.value) / 10
                    else:
                        require ext_call.return_data[18 len 14]
                        if 997 * msg.value * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 997 * msg.value:
                            revert with 0, 'ds-math-mul-overflow'
                        if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                            revert with 0, 'ds-math-mul-overflow'
                        if (1000 * ext_call.return_data[50 len 14]) + (997 * msg.value) < 1000 * ext_call.return_data[50 len 14]:
                            revert with 0, 'ds-math-add-overflow'
                        require (1000 * ext_call.return_data[50 len 14]) + (997 * msg.value)
                        require 997 * msg.value * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * msg.value) >= arg1
                        require 0 < arg3.length
                        _145 = mem[128]
                        mem[(32 * arg3.length) + 128] = 0xd0e30db000000000000000000000000000000000000000000000000000000000
                        require ext_code.size(address(_145))
                        call address(_145).deposit() with:
                           value msg.value wei
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require 0 < arg3.length
                        _187 = mem[128]
                        mem[(32 * arg3.length) + 132] = address(ext_call.return_data[0])
                        mem[(32 * arg3.length) + 164] = msg.value
                        require ext_code.size(address(_187))
                        call address(_187).transfer(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), msg.value
                        mem[(32 * arg3.length) + 128] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require 1 < arg3.length
                        require 0 < arg3.length
                        mem[(32 * arg3.length) + 128] = 0
                        mem[(32 * arg3.length) + 160] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        if mem[140 len 20] >= mem[172 len 20]:
                            mem[(32 * arg3.length) + 164] = 997 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * msg.value)
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 997 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * msg.value), 0, address(this.address), 128, 0
                        else:
                            mem[(32 * arg3.length) + 164] = 0
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, 997 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * msg.value), address(this.address), 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require 1 < arg3.length
                        require ext_code.size(mem[172 len 20])
                        call mem[172 len 20].balanceOf(address rg1) with:
                             gas gas_remaining wei
                            args this.address
                        mem[(32 * arg3.length) + 160] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] >= 8 * 997 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * msg.value) / 10
                else:
                    if not ext_call.return_data[50 len 14]:
                        if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                            revert with 0, 'ds-math-mul-overflow'
                        if (1000 * ext_call.return_data[18 len 14]) + (997 * msg.value) < 1000 * ext_call.return_data[18 len 14]:
                            revert with 0, 'ds-math-add-overflow'
                        require (1000 * ext_call.return_data[18 len 14]) + (997 * msg.value)
                        require 0 / (1000 * ext_call.return_data[18 len 14]) + (997 * msg.value) >= arg1
                        require 0 < arg3.length
                        _127 = mem[128]
                        mem[(32 * arg3.length) + 128] = 0xd0e30db000000000000000000000000000000000000000000000000000000000
                        require ext_code.size(address(_127))
                        call address(_127).deposit() with:
                           value msg.value wei
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require 0 < arg3.length
                        _163 = mem[128]
                        mem[(32 * arg3.length) + 132] = address(ext_call.return_data[0])
                        mem[(32 * arg3.length) + 164] = msg.value
                        require ext_code.size(address(_163))
                        call address(_163).transfer(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), msg.value
                        mem[(32 * arg3.length) + 128] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require 1 < arg3.length
                        require 0 < arg3.length
                        mem[(32 * arg3.length) + 128] = 0
                        mem[(32 * arg3.length) + 160] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        if mem[140 len 20] >= mem[172 len 20]:
                            mem[(32 * arg3.length) + 164] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * msg.value)
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * msg.value), 0, address(this.address), 128, 0
                        else:
                            mem[(32 * arg3.length) + 164] = 0
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * msg.value), address(this.address), 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require 1 < arg3.length
                        require ext_code.size(mem[172 len 20])
                        call mem[172 len 20].balanceOf(address rg1) with:
                             gas gas_remaining wei
                            args this.address
                        mem[(32 * arg3.length) + 160] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] >= 8 * 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * msg.value) / 10
                    else:
                        require ext_call.return_data[50 len 14]
                        if 997 * msg.value * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 997 * msg.value:
                            revert with 0, 'ds-math-mul-overflow'
                        if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                            revert with 0, 'ds-math-mul-overflow'
                        if (1000 * ext_call.return_data[18 len 14]) + (997 * msg.value) < 1000 * ext_call.return_data[18 len 14]:
                            revert with 0, 'ds-math-add-overflow'
                        require (1000 * ext_call.return_data[18 len 14]) + (997 * msg.value)
                        require 997 * msg.value * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * msg.value) >= arg1
                        require 0 < arg3.length
                        _149 = mem[128]
                        mem[(32 * arg3.length) + 128] = 0xd0e30db000000000000000000000000000000000000000000000000000000000
                        require ext_code.size(address(_149))
                        call address(_149).deposit() with:
                           value msg.value wei
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require 0 < arg3.length
                        _191 = mem[128]
                        mem[(32 * arg3.length) + 132] = address(ext_call.return_data[0])
                        mem[(32 * arg3.length) + 164] = msg.value
                        require ext_code.size(address(_191))
                        call address(_191).transfer(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), msg.value
                        mem[(32 * arg3.length) + 128] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require 1 < arg3.length
                        require 0 < arg3.length
                        mem[(32 * arg3.length) + 128] = 0
                        mem[(32 * arg3.length) + 160] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        if mem[140 len 20] >= mem[172 len 20]:
                            mem[(32 * arg3.length) + 164] = 997 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * msg.value)
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 997 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * msg.value), 0, address(this.address), 128, 0
                        else:
                            mem[(32 * arg3.length) + 164] = 0
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, 997 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * msg.value), address(this.address), 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require 1 < arg3.length
                        require ext_code.size(mem[172 len 20])
                        call mem[172 len 20].balanceOf(address rg1) with:
                             gas gas_remaining wei
                            args this.address
                        mem[(32 * arg3.length) + 160] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] >= 8 * 997 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * msg.value) / 10
                if arg4 > 0:
                    require 1 < arg3.length
                    call mem[172 len 20] with:
                       funct Mask(32, 224, sha3('transfer(address,uint256)')) >> 224
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), ext_call.return_data[0] * arg4 / 100
                    require ext_call.success
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).skim(address rg1) with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
}

function sub_7623db7a(?) {
    mem[128 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    if arg1 != this.address:
        if not arg2:
            require 0 < arg4.length
            require ext_code.size(mem[140 len 20])
            call mem[140 len 20].balanceOf(address rg1) with:
                 gas gas_remaining wei
                args this.address
            mem[(32 * arg4.length) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] >= 1:
                require 0 < arg4.length
                _37 = mem[128]
                mem[(32 * arg4.length) + 128] = Mask(32, 224, sha3('transfer(address,uint256)'))
                mem[(32 * arg4.length) + 132] = arg1
                call address(_37) with:
                   funct Mask(32, 224, sha3('transfer(address,uint256)')) >> 224
                     gas gas_remaining wei
                    args address(arg1), ext_call.return_data[0]
                require ext_call.success
                require 0 < arg4.length
                require ext_code.size(mem[140 len 20])
                call mem[140 len 20].balanceOf(address rg1) with:
                     gas gas_remaining wei
                    args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(arg1)
                call arg1.getReserves() with:
                     gas gas_remaining wei
                mem[(32 * arg4.length) + 128 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require 1 < arg4.length
                require 0 < arg4.length
                if mem[140 len 20] >= mem[172 len 20]:
                    if (997 * ext_call.return_data[0]) - (997 * ext_call.return_data[50 len 14]) / 997 != ext_call.return_data[0] - ext_call.return_data[50 len 14]:
                        revert with 0, 'ds-math-mul-overflow'
                    if not ext_call.return_data[18 len 14]:
                        if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                            revert with 0, 'ds-math-mul-overflow'
                        if (3 * ext_call.return_data[50 len 14]) + (997 * ext_call.return_data[0]) < 1000 * ext_call.return_data[50 len 14]:
                            revert with 0, 'ds-math-add-overflow'
                        require (3 * ext_call.return_data[50 len 14]) + (997 * ext_call.return_data[0])
                        require 0 / (3 * ext_call.return_data[50 len 14]) + (997 * ext_call.return_data[0]) >= arg3
                        require 1 < arg4.length
                        require 0 < arg4.length
                        mem[(32 * arg4.length) + 128] = 0
                        mem[(32 * arg4.length) + 160] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        if mem[140 len 20] >= mem[172 len 20]:
                            mem[(32 * arg4.length) + 164] = 0 / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                            require ext_code.size(arg1)
                            call arg1.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0 / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                        else:
                            mem[(32 * arg4.length) + 164] = 0
                            require ext_code.size(arg1)
                            call arg1.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, 0 / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require 1 < arg4.length
                        require ext_code.size(mem[172 len 20])
                        call mem[172 len 20].0x2e1a7d4d with:
                             gas gas_remaining wei
                            args (0 / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]))
                    else:
                        require ext_call.return_data[18 len 14]
                        if (997 * ext_call.return_data[0] * ext_call.return_data[18 len 14]) - (997 * ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14]) / ext_call.return_data[18 len 14] != (997 * ext_call.return_data[0]) - (997 * ext_call.return_data[50 len 14]):
                            revert with 0, 'ds-math-mul-overflow'
                        if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                            revert with 0, 'ds-math-mul-overflow'
                        if (3 * ext_call.return_data[50 len 14]) + (997 * ext_call.return_data[0]) < 1000 * ext_call.return_data[50 len 14]:
                            revert with 0, 'ds-math-add-overflow'
                        require (3 * ext_call.return_data[50 len 14]) + (997 * ext_call.return_data[0])
                        require (997 * ext_call.return_data[0] * ext_call.return_data[18 len 14]) - (997 * ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14]) / (3 * ext_call.return_data[50 len 14]) + (997 * ext_call.return_data[0]) >= arg3
                        require 1 < arg4.length
                        require 0 < arg4.length
                        mem[(32 * arg4.length) + 128] = 0
                        mem[(32 * arg4.length) + 160] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        if mem[140 len 20] >= mem[172 len 20]:
                            mem[(32 * arg4.length) + 164] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                            require ext_code.size(arg1)
                            call arg1.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                        else:
                            mem[(32 * arg4.length) + 164] = 0
                            require ext_code.size(arg1)
                            call arg1.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require 1 < arg4.length
                        require ext_code.size(mem[172 len 20])
                        call mem[172 len 20].0x2e1a7d4d with:
                             gas gas_remaining wei
                            args ((997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]))
                else:
                    if (997 * ext_call.return_data[0]) - (997 * ext_call.return_data[18 len 14]) / 997 != ext_call.return_data[0] - ext_call.return_data[18 len 14]:
                        revert with 0, 'ds-math-mul-overflow'
                    if not ext_call.return_data[50 len 14]:
                        if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                            revert with 0, 'ds-math-mul-overflow'
                        if (3 * ext_call.return_data[18 len 14]) + (997 * ext_call.return_data[0]) < 1000 * ext_call.return_data[18 len 14]:
                            revert with 0, 'ds-math-add-overflow'
                        require (3 * ext_call.return_data[18 len 14]) + (997 * ext_call.return_data[0])
                        require 0 / (3 * ext_call.return_data[18 len 14]) + (997 * ext_call.return_data[0]) >= arg3
                        require 1 < arg4.length
                        require 0 < arg4.length
                        mem[(32 * arg4.length) + 128] = 0
                        mem[(32 * arg4.length) + 160] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        if mem[140 len 20] >= mem[172 len 20]:
                            mem[(32 * arg4.length) + 164] = 0 / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                            require ext_code.size(arg1)
                            call arg1.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0 / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                        else:
                            mem[(32 * arg4.length) + 164] = 0
                            require ext_code.size(arg1)
                            call arg1.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, 0 / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require 1 < arg4.length
                        require ext_code.size(mem[172 len 20])
                        call mem[172 len 20].0x2e1a7d4d with:
                             gas gas_remaining wei
                            args (0 / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]))
                    else:
                        require ext_call.return_data[50 len 14]
                        if (997 * ext_call.return_data[0] * ext_call.return_data[50 len 14]) - (997 * ext_call.return_data[18 len 14] * ext_call.return_data[50 len 14]) / ext_call.return_data[50 len 14] != (997 * ext_call.return_data[0]) - (997 * ext_call.return_data[18 len 14]):
                            revert with 0, 'ds-math-mul-overflow'
                        if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                            revert with 0, 'ds-math-mul-overflow'
                        if (3 * ext_call.return_data[18 len 14]) + (997 * ext_call.return_data[0]) < 1000 * ext_call.return_data[18 len 14]:
                            revert with 0, 'ds-math-add-overflow'
                        require (3 * ext_call.return_data[18 len 14]) + (997 * ext_call.return_data[0])
                        require (997 * ext_call.return_data[0] * ext_call.return_data[50 len 14]) - (997 * ext_call.return_data[18 len 14] * ext_call.return_data[50 len 14]) / (3 * ext_call.return_data[18 len 14]) + (997 * ext_call.return_data[0]) >= arg3
                        require 1 < arg4.length
                        require 0 < arg4.length
                        mem[(32 * arg4.length) + 128] = 0
                        mem[(32 * arg4.length) + 160] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        if mem[140 len 20] >= mem[172 len 20]:
                            mem[(32 * arg4.length) + 164] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                            require ext_code.size(arg1)
                            call arg1.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                        else:
                            mem[(32 * arg4.length) + 164] = 0
                            require ext_code.size(arg1)
                            call arg1.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require 1 < arg4.length
                        require ext_code.size(mem[172 len 20])
                        call mem[172 len 20].0x2e1a7d4d with:
                             gas gas_remaining wei
                            args ((997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]))
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                call owner with:
                   value eth.balance(this.address) wei
                     gas 2300 * is_zero(value) wei
        else:
            if arg2 == 3:
                require 0 < arg4.length
                require ext_code.size(mem[140 len 20])
                call mem[140 len 20].balanceOf(address rg1) with:
                     gas gas_remaining wei
                    args this.address
                mem[(32 * arg4.length) + 128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 3 * ext_call.return_data[0] / 4 >= 1:
                    require 0 < arg4.length
                    _63 = mem[128]
                    mem[(32 * arg4.length) + 128] = Mask(32, 224, sha3('transfer(address,uint256)'))
                    mem[(32 * arg4.length) + 132] = arg1
                    call address(_63) with:
                       funct Mask(32, 224, sha3('transfer(address,uint256)')) >> 224
                         gas gas_remaining wei
                        args address(arg1), 3 * ext_call.return_data[0] / 4
                    require ext_call.success
                    require 0 < arg4.length
                    require ext_code.size(mem[140 len 20])
                    call mem[140 len 20].balanceOf(address rg1) with:
                         gas gas_remaining wei
                        args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(arg1)
                    call arg1.getReserves() with:
                         gas gas_remaining wei
                    mem[(32 * arg4.length) + 128 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require 1 < arg4.length
                    require 0 < arg4.length
                    if mem[140 len 20] >= mem[172 len 20]:
                        if (997 * ext_call.return_data[0]) - (997 * ext_call.return_data[50 len 14]) / 997 != ext_call.return_data[0] - ext_call.return_data[50 len 14]:
                            revert with 0, 'ds-math-mul-overflow'
                        if not ext_call.return_data[18 len 14]:
                            if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if (3 * ext_call.return_data[50 len 14]) + (997 * ext_call.return_data[0]) < 1000 * ext_call.return_data[50 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            require (3 * ext_call.return_data[50 len 14]) + (997 * ext_call.return_data[0])
                            require 0 / (3 * ext_call.return_data[50 len 14]) + (997 * ext_call.return_data[0]) >= arg3
                            require 1 < arg4.length
                            require 0 < arg4.length
                            mem[(32 * arg4.length) + 128] = 0
                            mem[(32 * arg4.length) + 160] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            if mem[140 len 20] >= mem[172 len 20]:
                                mem[(32 * arg4.length) + 164] = 0 / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                                require ext_code.size(arg1)
                                call arg1.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0 / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                            else:
                                mem[(32 * arg4.length) + 164] = 0
                                require ext_code.size(arg1)
                                call arg1.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require 1 < arg4.length
                            require ext_code.size(mem[172 len 20])
                            call mem[172 len 20].0x2e1a7d4d with:
                                 gas gas_remaining wei
                                args (0 / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]))
                        else:
                            require ext_call.return_data[18 len 14]
                            if (997 * ext_call.return_data[0] * ext_call.return_data[18 len 14]) - (997 * ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14]) / ext_call.return_data[18 len 14] != (997 * ext_call.return_data[0]) - (997 * ext_call.return_data[50 len 14]):
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if (3 * ext_call.return_data[50 len 14]) + (997 * ext_call.return_data[0]) < 1000 * ext_call.return_data[50 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            require (3 * ext_call.return_data[50 len 14]) + (997 * ext_call.return_data[0])
                            require (997 * ext_call.return_data[0] * ext_call.return_data[18 len 14]) - (997 * ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14]) / (3 * ext_call.return_data[50 len 14]) + (997 * ext_call.return_data[0]) >= arg3
                            require 1 < arg4.length
                            require 0 < arg4.length
                            mem[(32 * arg4.length) + 128] = 0
                            mem[(32 * arg4.length) + 160] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            if mem[140 len 20] >= mem[172 len 20]:
                                mem[(32 * arg4.length) + 164] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                                require ext_code.size(arg1)
                                call arg1.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                            else:
                                mem[(32 * arg4.length) + 164] = 0
                                require ext_code.size(arg1)
                                call arg1.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require 1 < arg4.length
                            require ext_code.size(mem[172 len 20])
                            call mem[172 len 20].0x2e1a7d4d with:
                                 gas gas_remaining wei
                                args ((997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]))
                    else:
                        if (997 * ext_call.return_data[0]) - (997 * ext_call.return_data[18 len 14]) / 997 != ext_call.return_data[0] - ext_call.return_data[18 len 14]:
                            revert with 0, 'ds-math-mul-overflow'
                        if not ext_call.return_data[50 len 14]:
                            if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if (3 * ext_call.return_data[18 len 14]) + (997 * ext_call.return_data[0]) < 1000 * ext_call.return_data[18 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            require (3 * ext_call.return_data[18 len 14]) + (997 * ext_call.return_data[0])
                            require 0 / (3 * ext_call.return_data[18 len 14]) + (997 * ext_call.return_data[0]) >= arg3
                            require 1 < arg4.length
                            require 0 < arg4.length
                            mem[(32 * arg4.length) + 128] = 0
                            mem[(32 * arg4.length) + 160] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            if mem[140 len 20] >= mem[172 len 20]:
                                mem[(32 * arg4.length) + 164] = 0 / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                                require ext_code.size(arg1)
                                call arg1.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0 / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                            else:
                                mem[(32 * arg4.length) + 164] = 0
                                require ext_code.size(arg1)
                                call arg1.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require 1 < arg4.length
                            require ext_code.size(mem[172 len 20])
                            call mem[172 len 20].0x2e1a7d4d with:
                                 gas gas_remaining wei
                                args (0 / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]))
                        else:
                            require ext_call.return_data[50 len 14]
                            if (997 * ext_call.return_data[0] * ext_call.return_data[50 len 14]) - (997 * ext_call.return_data[18 len 14] * ext_call.return_data[50 len 14]) / ext_call.return_data[50 len 14] != (997 * ext_call.return_data[0]) - (997 * ext_call.return_data[18 len 14]):
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if (3 * ext_call.return_data[18 len 14]) + (997 * ext_call.return_data[0]) < 1000 * ext_call.return_data[18 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            require (3 * ext_call.return_data[18 len 14]) + (997 * ext_call.return_data[0])
                            require (997 * ext_call.return_data[0] * ext_call.return_data[50 len 14]) - (997 * ext_call.return_data[18 len 14] * ext_call.return_data[50 len 14]) / (3 * ext_call.return_data[18 len 14]) + (997 * ext_call.return_data[0]) >= arg3
                            require 1 < arg4.length
                            require 0 < arg4.length
                            mem[(32 * arg4.length) + 128] = 0
                            mem[(32 * arg4.length) + 160] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            if mem[140 len 20] >= mem[172 len 20]:
                                mem[(32 * arg4.length) + 164] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                                require ext_code.size(arg1)
                                call arg1.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                            else:
                                mem[(32 * arg4.length) + 164] = 0
                                require ext_code.size(arg1)
                                call arg1.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require 1 < arg4.length
                            require ext_code.size(mem[172 len 20])
                            call mem[172 len 20].0x2e1a7d4d with:
                                 gas gas_remaining wei
                                args ((997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]))
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call owner with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
            else:
                if arg2 == 2:
                    require 0 < arg4.length
                    require ext_code.size(mem[140 len 20])
                    call mem[140 len 20].balanceOf(address rg1) with:
                         gas gas_remaining wei
                        args this.address
                    mem[(32 * arg4.length) + 128] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if Mask(254, 1, ext_call.return_data[0]) >> 1 >= 1:
                        require 0 < arg4.length
                        _85 = mem[128]
                        mem[(32 * arg4.length) + 128] = Mask(32, 224, sha3('transfer(address,uint256)'))
                        mem[(32 * arg4.length) + 132] = arg1
                        call address(_85) with:
                           funct Mask(32, 224, sha3('transfer(address,uint256)')) >> 224
                             gas gas_remaining wei
                            args address(arg1), Mask(254, 1, ext_call.return_data[0]) >> 1
                        require ext_call.success
                        require 0 < arg4.length
                        require ext_code.size(mem[140 len 20])
                        call mem[140 len 20].balanceOf(address rg1) with:
                             gas gas_remaining wei
                            args arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(arg1)
                        call arg1.getReserves() with:
                             gas gas_remaining wei
                        mem[(32 * arg4.length) + 128 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require 1 < arg4.length
                        require 0 < arg4.length
                        if mem[140 len 20] >= mem[172 len 20]:
                            if (997 * ext_call.return_data[0]) - (997 * ext_call.return_data[50 len 14]) / 997 != ext_call.return_data[0] - ext_call.return_data[50 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if not ext_call.return_data[18 len 14]:
                                if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if (3 * ext_call.return_data[50 len 14]) + (997 * ext_call.return_data[0]) < 1000 * ext_call.return_data[50 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                require (3 * ext_call.return_data[50 len 14]) + (997 * ext_call.return_data[0])
                                require 0 / (3 * ext_call.return_data[50 len 14]) + (997 * ext_call.return_data[0]) >= arg3
                                require 1 < arg4.length
                                require 0 < arg4.length
                                mem[(32 * arg4.length) + 128] = 0
                                mem[(32 * arg4.length) + 160] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                if mem[140 len 20] >= mem[172 len 20]:
                                    mem[(32 * arg4.length) + 164] = 0 / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                                    require ext_code.size(arg1)
                                    call arg1.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0 / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                                else:
                                    mem[(32 * arg4.length) + 164] = 0
                                    require ext_code.size(arg1)
                                    call arg1.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, 0 / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require 1 < arg4.length
                                require ext_code.size(mem[172 len 20])
                                call mem[172 len 20].0x2e1a7d4d with:
                                     gas gas_remaining wei
                                    args (0 / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]))
                            else:
                                require ext_call.return_data[18 len 14]
                                if (997 * ext_call.return_data[0] * ext_call.return_data[18 len 14]) - (997 * ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14]) / ext_call.return_data[18 len 14] != (997 * ext_call.return_data[0]) - (997 * ext_call.return_data[50 len 14]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if (3 * ext_call.return_data[50 len 14]) + (997 * ext_call.return_data[0]) < 1000 * ext_call.return_data[50 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                require (3 * ext_call.return_data[50 len 14]) + (997 * ext_call.return_data[0])
                                require (997 * ext_call.return_data[0] * ext_call.return_data[18 len 14]) - (997 * ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14]) / (3 * ext_call.return_data[50 len 14]) + (997 * ext_call.return_data[0]) >= arg3
                                require 1 < arg4.length
                                require 0 < arg4.length
                                mem[(32 * arg4.length) + 128] = 0
                                mem[(32 * arg4.length) + 160] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                if mem[140 len 20] >= mem[172 len 20]:
                                    mem[(32 * arg4.length) + 164] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                                    require ext_code.size(arg1)
                                    call arg1.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                                else:
                                    mem[(32 * arg4.length) + 164] = 0
                                    require ext_code.size(arg1)
                                    call arg1.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require 1 < arg4.length
                                require ext_code.size(mem[172 len 20])
                                call mem[172 len 20].0x2e1a7d4d with:
                                     gas gas_remaining wei
                                    args ((997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]))
                        else:
                            if (997 * ext_call.return_data[0]) - (997 * ext_call.return_data[18 len 14]) / 997 != ext_call.return_data[0] - ext_call.return_data[18 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if not ext_call.return_data[50 len 14]:
                                if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if (3 * ext_call.return_data[18 len 14]) + (997 * ext_call.return_data[0]) < 1000 * ext_call.return_data[18 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                require (3 * ext_call.return_data[18 len 14]) + (997 * ext_call.return_data[0])
                                require 0 / (3 * ext_call.return_data[18 len 14]) + (997 * ext_call.return_data[0]) >= arg3
                                require 1 < arg4.length
                                require 0 < arg4.length
                                mem[(32 * arg4.length) + 128] = 0
                                mem[(32 * arg4.length) + 160] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                if mem[140 len 20] >= mem[172 len 20]:
                                    mem[(32 * arg4.length) + 164] = 0 / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                                    require ext_code.size(arg1)
                                    call arg1.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0 / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                                else:
                                    mem[(32 * arg4.length) + 164] = 0
                                    require ext_code.size(arg1)
                                    call arg1.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, 0 / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require 1 < arg4.length
                                require ext_code.size(mem[172 len 20])
                                call mem[172 len 20].0x2e1a7d4d with:
                                     gas gas_remaining wei
                                    args (0 / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]))
                            else:
                                require ext_call.return_data[50 len 14]
                                if (997 * ext_call.return_data[0] * ext_call.return_data[50 len 14]) - (997 * ext_call.return_data[18 len 14] * ext_call.return_data[50 len 14]) / ext_call.return_data[50 len 14] != (997 * ext_call.return_data[0]) - (997 * ext_call.return_data[18 len 14]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if (3 * ext_call.return_data[18 len 14]) + (997 * ext_call.return_data[0]) < 1000 * ext_call.return_data[18 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                require (3 * ext_call.return_data[18 len 14]) + (997 * ext_call.return_data[0])
                                require (997 * ext_call.return_data[0] * ext_call.return_data[50 len 14]) - (997 * ext_call.return_data[18 len 14] * ext_call.return_data[50 len 14]) / (3 * ext_call.return_data[18 len 14]) + (997 * ext_call.return_data[0]) >= arg3
                                require 1 < arg4.length
                                require 0 < arg4.length
                                mem[(32 * arg4.length) + 128] = 0
                                mem[(32 * arg4.length) + 160] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                if mem[140 len 20] >= mem[172 len 20]:
                                    mem[(32 * arg4.length) + 164] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                                    require ext_code.size(arg1)
                                    call arg1.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                                else:
                                    mem[(32 * arg4.length) + 164] = 0
                                    require ext_code.size(arg1)
                                    call arg1.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require 1 < arg4.length
                                require ext_code.size(mem[172 len 20])
                                call mem[172 len 20].0x2e1a7d4d with:
                                     gas gas_remaining wei
                                    args ((997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]))
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call owner with:
                           value eth.balance(this.address) wei
                             gas 2300 * is_zero(value) wei
                else:
                    if arg2 != 1:
                        if arg2 >= 1:
                            require 0 < arg4.length
                            _42 = mem[128]
                            mem[(32 * arg4.length) + 128] = Mask(32, 224, sha3('transfer(address,uint256)'))
                            mem[(32 * arg4.length) + 132] = arg1
                            call address(_42) with:
                               funct Mask(32, 224, sha3('transfer(address,uint256)')) >> 224
                                 gas gas_remaining wei
                                args address(arg1), arg2
                            require ext_call.success
                            require 0 < arg4.length
                            require ext_code.size(mem[140 len 20])
                            call mem[140 len 20].balanceOf(address rg1) with:
                                 gas gas_remaining wei
                                args arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(arg1)
                            call arg1.getReserves() with:
                                 gas gas_remaining wei
                            mem[(32 * arg4.length) + 128 len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            require 1 < arg4.length
                            require 0 < arg4.length
                            if mem[140 len 20] >= mem[172 len 20]:
                                if (997 * ext_call.return_data[0]) - (997 * ext_call.return_data[50 len 14]) / 997 != ext_call.return_data[0] - ext_call.return_data[50 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if not ext_call.return_data[18 len 14]:
                                    if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if (3 * ext_call.return_data[50 len 14]) + (997 * ext_call.return_data[0]) < 1000 * ext_call.return_data[50 len 14]:
                                        revert with 0, 'ds-math-add-overflow'
                                    require (3 * ext_call.return_data[50 len 14]) + (997 * ext_call.return_data[0])
                                    require 0 / (3 * ext_call.return_data[50 len 14]) + (997 * ext_call.return_data[0]) >= arg3
                                    require 1 < arg4.length
                                    require 0 < arg4.length
                                    mem[(32 * arg4.length) + 128] = 0
                                    mem[(32 * arg4.length) + 160] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    if mem[140 len 20] >= mem[172 len 20]:
                                        mem[(32 * arg4.length) + 164] = 0 / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                                        require ext_code.size(arg1)
                                        call arg1.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0 / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                                    else:
                                        mem[(32 * arg4.length) + 164] = 0
                                        require ext_code.size(arg1)
                                        call arg1.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, 0 / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require 1 < arg4.length
                                    require ext_code.size(mem[172 len 20])
                                    call mem[172 len 20].0x2e1a7d4d with:
                                         gas gas_remaining wei
                                        args (0 / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]))
                                else:
                                    require ext_call.return_data[18 len 14]
                                    if (997 * ext_call.return_data[0] * ext_call.return_data[18 len 14]) - (997 * ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14]) / ext_call.return_data[18 len 14] != (997 * ext_call.return_data[0]) - (997 * ext_call.return_data[50 len 14]):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if (3 * ext_call.return_data[50 len 14]) + (997 * ext_call.return_data[0]) < 1000 * ext_call.return_data[50 len 14]:
                                        revert with 0, 'ds-math-add-overflow'
                                    require (3 * ext_call.return_data[50 len 14]) + (997 * ext_call.return_data[0])
                                    require (997 * ext_call.return_data[0] * ext_call.return_data[18 len 14]) - (997 * ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14]) / (3 * ext_call.return_data[50 len 14]) + (997 * ext_call.return_data[0]) >= arg3
                                    require 1 < arg4.length
                                    require 0 < arg4.length
                                    mem[(32 * arg4.length) + 128] = 0
                                    mem[(32 * arg4.length) + 160] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    if mem[140 len 20] >= mem[172 len 20]:
                                        mem[(32 * arg4.length) + 164] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                                        require ext_code.size(arg1)
                                        call arg1.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                                    else:
                                        mem[(32 * arg4.length) + 164] = 0
                                        require ext_code.size(arg1)
                                        call arg1.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require 1 < arg4.length
                                    require ext_code.size(mem[172 len 20])
                                    call mem[172 len 20].0x2e1a7d4d with:
                                         gas gas_remaining wei
                                        args ((997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]))
                            else:
                                if (997 * ext_call.return_data[0]) - (997 * ext_call.return_data[18 len 14]) / 997 != ext_call.return_data[0] - ext_call.return_data[18 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if not ext_call.return_data[50 len 14]:
                                    if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if (3 * ext_call.return_data[18 len 14]) + (997 * ext_call.return_data[0]) < 1000 * ext_call.return_data[18 len 14]:
                                        revert with 0, 'ds-math-add-overflow'
                                    require (3 * ext_call.return_data[18 len 14]) + (997 * ext_call.return_data[0])
                                    require 0 / (3 * ext_call.return_data[18 len 14]) + (997 * ext_call.return_data[0]) >= arg3
                                    require 1 < arg4.length
                                    require 0 < arg4.length
                                    mem[(32 * arg4.length) + 128] = 0
                                    mem[(32 * arg4.length) + 160] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    if mem[140 len 20] >= mem[172 len 20]:
                                        mem[(32 * arg4.length) + 164] = 0 / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                                        require ext_code.size(arg1)
                                        call arg1.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0 / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                                    else:
                                        mem[(32 * arg4.length) + 164] = 0
                                        require ext_code.size(arg1)
                                        call arg1.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, 0 / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require 1 < arg4.length
                                    require ext_code.size(mem[172 len 20])
                                    call mem[172 len 20].0x2e1a7d4d with:
                                         gas gas_remaining wei
                                        args (0 / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]))
                                else:
                                    require ext_call.return_data[50 len 14]
                                    if (997 * ext_call.return_data[0] * ext_call.return_data[50 len 14]) - (997 * ext_call.return_data[18 len 14] * ext_call.return_data[50 len 14]) / ext_call.return_data[50 len 14] != (997 * ext_call.return_data[0]) - (997 * ext_call.return_data[18 len 14]):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if (3 * ext_call.return_data[18 len 14]) + (997 * ext_call.return_data[0]) < 1000 * ext_call.return_data[18 len 14]:
                                        revert with 0, 'ds-math-add-overflow'
                                    require (3 * ext_call.return_data[18 len 14]) + (997 * ext_call.return_data[0])
                                    require (997 * ext_call.return_data[0] * ext_call.return_data[50 len 14]) - (997 * ext_call.return_data[18 len 14] * ext_call.return_data[50 len 14]) / (3 * ext_call.return_data[18 len 14]) + (997 * ext_call.return_data[0]) >= arg3
                                    require 1 < arg4.length
                                    require 0 < arg4.length
                                    mem[(32 * arg4.length) + 128] = 0
                                    mem[(32 * arg4.length) + 160] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    if mem[140 len 20] >= mem[172 len 20]:
                                        mem[(32 * arg4.length) + 164] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                                        require ext_code.size(arg1)
                                        call arg1.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                                    else:
                                        mem[(32 * arg4.length) + 164] = 0
                                        require ext_code.size(arg1)
                                        call arg1.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require 1 < arg4.length
                                    require ext_code.size(mem[172 len 20])
                                    call mem[172 len 20].0x2e1a7d4d with:
                                         gas gas_remaining wei
                                        args ((997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]))
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call owner with:
                               value eth.balance(this.address) wei
                                 gas 2300 * is_zero(value) wei
                    else:
                        require 0 < arg4.length
                        require ext_code.size(mem[140 len 20])
                        call mem[140 len 20].balanceOf(address rg1) with:
                             gas gas_remaining wei
                            args this.address
                        mem[(32 * arg4.length) + 128] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] / 4 >= 1:
                            require 0 < arg4.length
                            _101 = mem[128]
                            mem[(32 * arg4.length) + 128] = Mask(32, 224, sha3('transfer(address,uint256)'))
                            mem[(32 * arg4.length) + 132] = arg1
                            call address(_101) with:
                               funct Mask(32, 224, sha3('transfer(address,uint256)')) >> 224
                                 gas gas_remaining wei
                                args address(arg1), ext_call.return_data[0] / 4
                            require ext_call.success
                            require 0 < arg4.length
                            require ext_code.size(mem[140 len 20])
                            call mem[140 len 20].balanceOf(address rg1) with:
                                 gas gas_remaining wei
                                args arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(arg1)
                            call arg1.getReserves() with:
                                 gas gas_remaining wei
                            mem[(32 * arg4.length) + 128 len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            require 1 < arg4.length
                            require 0 < arg4.length
                            if mem[140 len 20] >= mem[172 len 20]:
                                if (997 * ext_call.return_data[0]) - (997 * ext_call.return_data[50 len 14]) / 997 != ext_call.return_data[0] - ext_call.return_data[50 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if not ext_call.return_data[18 len 14]:
                                    if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if (3 * ext_call.return_data[50 len 14]) + (997 * ext_call.return_data[0]) < 1000 * ext_call.return_data[50 len 14]:
                                        revert with 0, 'ds-math-add-overflow'
                                    require (3 * ext_call.return_data[50 len 14]) + (997 * ext_call.return_data[0])
                                    require 0 / (3 * ext_call.return_data[50 len 14]) + (997 * ext_call.return_data[0]) >= arg3
                                    require 1 < arg4.length
                                    require 0 < arg4.length
                                    mem[(32 * arg4.length) + 128] = 0
                                    mem[(32 * arg4.length) + 160] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    if mem[140 len 20] >= mem[172 len 20]:
                                        mem[(32 * arg4.length) + 164] = 0 / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                                        require ext_code.size(arg1)
                                        call arg1.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0 / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                                    else:
                                        mem[(32 * arg4.length) + 164] = 0
                                        require ext_code.size(arg1)
                                        call arg1.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, 0 / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require 1 < arg4.length
                                    require ext_code.size(mem[172 len 20])
                                    call mem[172 len 20].0x2e1a7d4d with:
                                         gas gas_remaining wei
                                        args (0 / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]))
                                else:
                                    require ext_call.return_data[18 len 14]
                                    if (997 * ext_call.return_data[0] * ext_call.return_data[18 len 14]) - (997 * ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14]) / ext_call.return_data[18 len 14] != (997 * ext_call.return_data[0]) - (997 * ext_call.return_data[50 len 14]):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if (3 * ext_call.return_data[50 len 14]) + (997 * ext_call.return_data[0]) < 1000 * ext_call.return_data[50 len 14]:
                                        revert with 0, 'ds-math-add-overflow'
                                    require (3 * ext_call.return_data[50 len 14]) + (997 * ext_call.return_data[0])
                                    require (997 * ext_call.return_data[0] * ext_call.return_data[18 len 14]) - (997 * ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14]) / (3 * ext_call.return_data[50 len 14]) + (997 * ext_call.return_data[0]) >= arg3
                                    require 1 < arg4.length
                                    require 0 < arg4.length
                                    mem[(32 * arg4.length) + 128] = 0
                                    mem[(32 * arg4.length) + 160] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    if mem[140 len 20] >= mem[172 len 20]:
                                        mem[(32 * arg4.length) + 164] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                                        require ext_code.size(arg1)
                                        call arg1.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                                    else:
                                        mem[(32 * arg4.length) + 164] = 0
                                        require ext_code.size(arg1)
                                        call arg1.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require 1 < arg4.length
                                    require ext_code.size(mem[172 len 20])
                                    call mem[172 len 20].0x2e1a7d4d with:
                                         gas gas_remaining wei
                                        args ((997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]))
                            else:
                                if (997 * ext_call.return_data[0]) - (997 * ext_call.return_data[18 len 14]) / 997 != ext_call.return_data[0] - ext_call.return_data[18 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if not ext_call.return_data[50 len 14]:
                                    if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if (3 * ext_call.return_data[18 len 14]) + (997 * ext_call.return_data[0]) < 1000 * ext_call.return_data[18 len 14]:
                                        revert with 0, 'ds-math-add-overflow'
                                    require (3 * ext_call.return_data[18 len 14]) + (997 * ext_call.return_data[0])
                                    require 0 / (3 * ext_call.return_data[18 len 14]) + (997 * ext_call.return_data[0]) >= arg3
                                    require 1 < arg4.length
                                    require 0 < arg4.length
                                    mem[(32 * arg4.length) + 128] = 0
                                    mem[(32 * arg4.length) + 160] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    if mem[140 len 20] >= mem[172 len 20]:
                                        mem[(32 * arg4.length) + 164] = 0 / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                                        require ext_code.size(arg1)
                                        call arg1.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0 / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                                    else:
                                        mem[(32 * arg4.length) + 164] = 0
                                        require ext_code.size(arg1)
                                        call arg1.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, 0 / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require 1 < arg4.length
                                    require ext_code.size(mem[172 len 20])
                                    call mem[172 len 20].0x2e1a7d4d with:
                                         gas gas_remaining wei
                                        args (0 / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]))
                                else:
                                    require ext_call.return_data[50 len 14]
                                    if (997 * ext_call.return_data[0] * ext_call.return_data[50 len 14]) - (997 * ext_call.return_data[18 len 14] * ext_call.return_data[50 len 14]) / ext_call.return_data[50 len 14] != (997 * ext_call.return_data[0]) - (997 * ext_call.return_data[18 len 14]):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if (3 * ext_call.return_data[18 len 14]) + (997 * ext_call.return_data[0]) < 1000 * ext_call.return_data[18 len 14]:
                                        revert with 0, 'ds-math-add-overflow'
                                    require (3 * ext_call.return_data[18 len 14]) + (997 * ext_call.return_data[0])
                                    require (997 * ext_call.return_data[0] * ext_call.return_data[50 len 14]) - (997 * ext_call.return_data[18 len 14] * ext_call.return_data[50 len 14]) / (3 * ext_call.return_data[18 len 14]) + (997 * ext_call.return_data[0]) >= arg3
                                    require 1 < arg4.length
                                    require 0 < arg4.length
                                    mem[(32 * arg4.length) + 128] = 0
                                    mem[(32 * arg4.length) + 160] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    if mem[140 len 20] >= mem[172 len 20]:
                                        mem[(32 * arg4.length) + 164] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                                        require ext_code.size(arg1)
                                        call arg1.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                                    else:
                                        mem[(32 * arg4.length) + 164] = 0
                                        require ext_code.size(arg1)
                                        call arg1.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require 1 < arg4.length
                                    require ext_code.size(mem[172 len 20])
                                    call mem[172 len 20].0x2e1a7d4d with:
                                         gas gas_remaining wei
                                        args ((997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]))
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call owner with:
                               value eth.balance(this.address) wei
                                 gas 2300 * is_zero(value) wei
    else:
        require 1 < arg4.length
        require 0 < arg4.length
        require ext_code.size(0xce8fd65646f2a2a897755a1188c04ace94d2b8d0)
        call 0xce8fd65646f2a2a897755a1188c04ace94d2b8d0.getPair(address rg1, address rg2) with:
             gas gas_remaining wei
            args address(mem[160]), mem[140 len 20]
        mem[(32 * arg4.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not arg2:
            require 0 < arg4.length
            require ext_code.size(mem[140 len 20])
            call mem[140 len 20].balanceOf(address rg1) with:
                 gas gas_remaining wei
                args this.address
            mem[(32 * arg4.length) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] >= 1:
                require 0 < arg4.length
                _99 = mem[128]
                mem[(32 * arg4.length) + 128] = Mask(32, 224, sha3('transfer(address,uint256)'))
                mem[(32 * arg4.length) + 132] = address(ext_call.return_data[0])
                call address(_99) with:
                   funct Mask(32, 224, sha3('transfer(address,uint256)')) >> 224
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), ext_call.return_data[0]
                require ext_call.success
                require 0 < arg4.length
                require ext_code.size(mem[140 len 20])
                call mem[140 len 20].balanceOf(address rg1) with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).getReserves() with:
                     gas gas_remaining wei
                mem[(32 * arg4.length) + 128 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require 1 < arg4.length
                require 0 < arg4.length
                if mem[140 len 20] >= mem[172 len 20]:
                    if (997 * ext_call.return_data[0]) - (997 * ext_call.return_data[50 len 14]) / 997 != ext_call.return_data[0] - ext_call.return_data[50 len 14]:
                        revert with 0, 'ds-math-mul-overflow'
                    if not ext_call.return_data[18 len 14]:
                        if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                            revert with 0, 'ds-math-mul-overflow'
                        if (3 * ext_call.return_data[50 len 14]) + (997 * ext_call.return_data[0]) < 1000 * ext_call.return_data[50 len 14]:
                            revert with 0, 'ds-math-add-overflow'
                        require (3 * ext_call.return_data[50 len 14]) + (997 * ext_call.return_data[0])
                        require 0 / (3 * ext_call.return_data[50 len 14]) + (997 * ext_call.return_data[0]) >= arg3
                        require 1 < arg4.length
                        require 0 < arg4.length
                        mem[(32 * arg4.length) + 128] = 0
                        mem[(32 * arg4.length) + 160] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        if mem[140 len 20] >= mem[172 len 20]:
                            mem[(32 * arg4.length) + 164] = 0 / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0 / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                        else:
                            mem[(32 * arg4.length) + 164] = 0
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, 0 / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require 1 < arg4.length
                        require ext_code.size(mem[172 len 20])
                        call mem[172 len 20].0x2e1a7d4d with:
                             gas gas_remaining wei
                            args (0 / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]))
                    else:
                        require ext_call.return_data[18 len 14]
                        if (997 * ext_call.return_data[0] * ext_call.return_data[18 len 14]) - (997 * ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14]) / ext_call.return_data[18 len 14] != (997 * ext_call.return_data[0]) - (997 * ext_call.return_data[50 len 14]):
                            revert with 0, 'ds-math-mul-overflow'
                        if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                            revert with 0, 'ds-math-mul-overflow'
                        if (3 * ext_call.return_data[50 len 14]) + (997 * ext_call.return_data[0]) < 1000 * ext_call.return_data[50 len 14]:
                            revert with 0, 'ds-math-add-overflow'
                        require (3 * ext_call.return_data[50 len 14]) + (997 * ext_call.return_data[0])
                        require (997 * ext_call.return_data[0] * ext_call.return_data[18 len 14]) - (997 * ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14]) / (3 * ext_call.return_data[50 len 14]) + (997 * ext_call.return_data[0]) >= arg3
                        require 1 < arg4.length
                        require 0 < arg4.length
                        mem[(32 * arg4.length) + 128] = 0
                        mem[(32 * arg4.length) + 160] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        if mem[140 len 20] >= mem[172 len 20]:
                            mem[(32 * arg4.length) + 164] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                        else:
                            mem[(32 * arg4.length) + 164] = 0
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require 1 < arg4.length
                        require ext_code.size(mem[172 len 20])
                        call mem[172 len 20].0x2e1a7d4d with:
                             gas gas_remaining wei
                            args ((997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]))
                else:
                    if (997 * ext_call.return_data[0]) - (997 * ext_call.return_data[18 len 14]) / 997 != ext_call.return_data[0] - ext_call.return_data[18 len 14]:
                        revert with 0, 'ds-math-mul-overflow'
                    if not ext_call.return_data[50 len 14]:
                        if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                            revert with 0, 'ds-math-mul-overflow'
                        if (3 * ext_call.return_data[18 len 14]) + (997 * ext_call.return_data[0]) < 1000 * ext_call.return_data[18 len 14]:
                            revert with 0, 'ds-math-add-overflow'
                        require (3 * ext_call.return_data[18 len 14]) + (997 * ext_call.return_data[0])
                        require 0 / (3 * ext_call.return_data[18 len 14]) + (997 * ext_call.return_data[0]) >= arg3
                        require 1 < arg4.length
                        require 0 < arg4.length
                        mem[(32 * arg4.length) + 128] = 0
                        mem[(32 * arg4.length) + 160] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        if mem[140 len 20] >= mem[172 len 20]:
                            mem[(32 * arg4.length) + 164] = 0 / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0 / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                        else:
                            mem[(32 * arg4.length) + 164] = 0
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, 0 / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require 1 < arg4.length
                        require ext_code.size(mem[172 len 20])
                        call mem[172 len 20].0x2e1a7d4d with:
                             gas gas_remaining wei
                            args (0 / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]))
                    else:
                        require ext_call.return_data[50 len 14]
                        if (997 * ext_call.return_data[0] * ext_call.return_data[50 len 14]) - (997 * ext_call.return_data[18 len 14] * ext_call.return_data[50 len 14]) / ext_call.return_data[50 len 14] != (997 * ext_call.return_data[0]) - (997 * ext_call.return_data[18 len 14]):
                            revert with 0, 'ds-math-mul-overflow'
                        if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                            revert with 0, 'ds-math-mul-overflow'
                        if (3 * ext_call.return_data[18 len 14]) + (997 * ext_call.return_data[0]) < 1000 * ext_call.return_data[18 len 14]:
                            revert with 0, 'ds-math-add-overflow'
                        require (3 * ext_call.return_data[18 len 14]) + (997 * ext_call.return_data[0])
                        require (997 * ext_call.return_data[0] * ext_call.return_data[50 len 14]) - (997 * ext_call.return_data[18 len 14] * ext_call.return_data[50 len 14]) / (3 * ext_call.return_data[18 len 14]) + (997 * ext_call.return_data[0]) >= arg3
                        require 1 < arg4.length
                        require 0 < arg4.length
                        mem[(32 * arg4.length) + 128] = 0
                        mem[(32 * arg4.length) + 160] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        if mem[140 len 20] >= mem[172 len 20]:
                            mem[(32 * arg4.length) + 164] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                        else:
                            mem[(32 * arg4.length) + 164] = 0
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require 1 < arg4.length
                        require ext_code.size(mem[172 len 20])
                        call mem[172 len 20].0x2e1a7d4d with:
                             gas gas_remaining wei
                            args ((997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]))
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                call owner with:
                   value eth.balance(this.address) wei
                     gas 2300 * is_zero(value) wei
        else:
            if arg2 == 3:
                require 0 < arg4.length
                require ext_code.size(mem[140 len 20])
                call mem[140 len 20].balanceOf(address rg1) with:
                     gas gas_remaining wei
                    args this.address
                mem[(32 * arg4.length) + 128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 3 * ext_call.return_data[0] / 4 >= 1:
                    require 0 < arg4.length
                    _134 = mem[128]
                    mem[(32 * arg4.length) + 128] = Mask(32, 224, sha3('transfer(address,uint256)'))
                    mem[(32 * arg4.length) + 132] = address(ext_call.return_data[0])
                    call address(_134) with:
                       funct Mask(32, 224, sha3('transfer(address,uint256)')) >> 224
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), 3 * ext_call.return_data[0] / 4
                    require ext_call.success
                    require 0 < arg4.length
                    require ext_code.size(mem[140 len 20])
                    call mem[140 len 20].balanceOf(address rg1) with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).getReserves() with:
                         gas gas_remaining wei
                    mem[(32 * arg4.length) + 128 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require 1 < arg4.length
                    require 0 < arg4.length
                    if mem[140 len 20] >= mem[172 len 20]:
                        if (997 * ext_call.return_data[0]) - (997 * ext_call.return_data[50 len 14]) / 997 != ext_call.return_data[0] - ext_call.return_data[50 len 14]:
                            revert with 0, 'ds-math-mul-overflow'
                        if not ext_call.return_data[18 len 14]:
                            if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if (3 * ext_call.return_data[50 len 14]) + (997 * ext_call.return_data[0]) < 1000 * ext_call.return_data[50 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            require (3 * ext_call.return_data[50 len 14]) + (997 * ext_call.return_data[0])
                            require 0 / (3 * ext_call.return_data[50 len 14]) + (997 * ext_call.return_data[0]) >= arg3
                            require 1 < arg4.length
                            require 0 < arg4.length
                            mem[(32 * arg4.length) + 128] = 0
                            mem[(32 * arg4.length) + 160] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            if mem[140 len 20] >= mem[172 len 20]:
                                mem[(32 * arg4.length) + 164] = 0 / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0 / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                            else:
                                mem[(32 * arg4.length) + 164] = 0
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require 1 < arg4.length
                            require ext_code.size(mem[172 len 20])
                            call mem[172 len 20].0x2e1a7d4d with:
                                 gas gas_remaining wei
                                args (0 / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]))
                        else:
                            require ext_call.return_data[18 len 14]
                            if (997 * ext_call.return_data[0] * ext_call.return_data[18 len 14]) - (997 * ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14]) / ext_call.return_data[18 len 14] != (997 * ext_call.return_data[0]) - (997 * ext_call.return_data[50 len 14]):
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if (3 * ext_call.return_data[50 len 14]) + (997 * ext_call.return_data[0]) < 1000 * ext_call.return_data[50 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            require (3 * ext_call.return_data[50 len 14]) + (997 * ext_call.return_data[0])
                            require (997 * ext_call.return_data[0] * ext_call.return_data[18 len 14]) - (997 * ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14]) / (3 * ext_call.return_data[50 len 14]) + (997 * ext_call.return_data[0]) >= arg3
                            require 1 < arg4.length
                            require 0 < arg4.length
                            mem[(32 * arg4.length) + 128] = 0
                            mem[(32 * arg4.length) + 160] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            if mem[140 len 20] >= mem[172 len 20]:
                                mem[(32 * arg4.length) + 164] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                            else:
                                mem[(32 * arg4.length) + 164] = 0
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require 1 < arg4.length
                            require ext_code.size(mem[172 len 20])
                            call mem[172 len 20].0x2e1a7d4d with:
                                 gas gas_remaining wei
                                args ((997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]))
                    else:
                        if (997 * ext_call.return_data[0]) - (997 * ext_call.return_data[18 len 14]) / 997 != ext_call.return_data[0] - ext_call.return_data[18 len 14]:
                            revert with 0, 'ds-math-mul-overflow'
                        if not ext_call.return_data[50 len 14]:
                            if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if (3 * ext_call.return_data[18 len 14]) + (997 * ext_call.return_data[0]) < 1000 * ext_call.return_data[18 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            require (3 * ext_call.return_data[18 len 14]) + (997 * ext_call.return_data[0])
                            require 0 / (3 * ext_call.return_data[18 len 14]) + (997 * ext_call.return_data[0]) >= arg3
                            require 1 < arg4.length
                            require 0 < arg4.length
                            mem[(32 * arg4.length) + 128] = 0
                            mem[(32 * arg4.length) + 160] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            if mem[140 len 20] >= mem[172 len 20]:
                                mem[(32 * arg4.length) + 164] = 0 / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0 / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                            else:
                                mem[(32 * arg4.length) + 164] = 0
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require 1 < arg4.length
                            require ext_code.size(mem[172 len 20])
                            call mem[172 len 20].0x2e1a7d4d with:
                                 gas gas_remaining wei
                                args (0 / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]))
                        else:
                            require ext_call.return_data[50 len 14]
                            if (997 * ext_call.return_data[0] * ext_call.return_data[50 len 14]) - (997 * ext_call.return_data[18 len 14] * ext_call.return_data[50 len 14]) / ext_call.return_data[50 len 14] != (997 * ext_call.return_data[0]) - (997 * ext_call.return_data[18 len 14]):
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if (3 * ext_call.return_data[18 len 14]) + (997 * ext_call.return_data[0]) < 1000 * ext_call.return_data[18 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            require (3 * ext_call.return_data[18 len 14]) + (997 * ext_call.return_data[0])
                            require (997 * ext_call.return_data[0] * ext_call.return_data[50 len 14]) - (997 * ext_call.return_data[18 len 14] * ext_call.return_data[50 len 14]) / (3 * ext_call.return_data[18 len 14]) + (997 * ext_call.return_data[0]) >= arg3
                            require 1 < arg4.length
                            require 0 < arg4.length
                            mem[(32 * arg4.length) + 128] = 0
                            mem[(32 * arg4.length) + 160] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            if mem[140 len 20] >= mem[172 len 20]:
                                mem[(32 * arg4.length) + 164] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                            else:
                                mem[(32 * arg4.length) + 164] = 0
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require 1 < arg4.length
                            require ext_code.size(mem[172 len 20])
                            call mem[172 len 20].0x2e1a7d4d with:
                                 gas gas_remaining wei
                                args ((997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]))
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call owner with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
            else:
                if arg2 == 2:
                    require 0 < arg4.length
                    require ext_code.size(mem[140 len 20])
                    call mem[140 len 20].balanceOf(address rg1) with:
                         gas gas_remaining wei
                        args this.address
                    mem[(32 * arg4.length) + 128] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if Mask(254, 1, ext_call.return_data[0]) >> 1 >= 1:
                        require 0 < arg4.length
                        _168 = mem[128]
                        mem[(32 * arg4.length) + 128] = Mask(32, 224, sha3('transfer(address,uint256)'))
                        mem[(32 * arg4.length) + 132] = address(ext_call.return_data[0])
                        call address(_168) with:
                           funct Mask(32, 224, sha3('transfer(address,uint256)')) >> 224
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), Mask(254, 1, ext_call.return_data[0]) >> 1
                        require ext_call.success
                        require 0 < arg4.length
                        require ext_code.size(mem[140 len 20])
                        call mem[140 len 20].balanceOf(address rg1) with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).getReserves() with:
                             gas gas_remaining wei
                        mem[(32 * arg4.length) + 128 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require 1 < arg4.length
                        require 0 < arg4.length
                        if mem[140 len 20] >= mem[172 len 20]:
                            if (997 * ext_call.return_data[0]) - (997 * ext_call.return_data[50 len 14]) / 997 != ext_call.return_data[0] - ext_call.return_data[50 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if not ext_call.return_data[18 len 14]:
                                if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if (3 * ext_call.return_data[50 len 14]) + (997 * ext_call.return_data[0]) < 1000 * ext_call.return_data[50 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                require (3 * ext_call.return_data[50 len 14]) + (997 * ext_call.return_data[0])
                                require 0 / (3 * ext_call.return_data[50 len 14]) + (997 * ext_call.return_data[0]) >= arg3
                                require 1 < arg4.length
                                require 0 < arg4.length
                                mem[(32 * arg4.length) + 128] = 0
                                mem[(32 * arg4.length) + 160] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                if mem[140 len 20] >= mem[172 len 20]:
                                    mem[(32 * arg4.length) + 164] = 0 / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0 / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                                else:
                                    mem[(32 * arg4.length) + 164] = 0
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, 0 / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require 1 < arg4.length
                                require ext_code.size(mem[172 len 20])
                                call mem[172 len 20].0x2e1a7d4d with:
                                     gas gas_remaining wei
                                    args (0 / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]))
                            else:
                                require ext_call.return_data[18 len 14]
                                if (997 * ext_call.return_data[0] * ext_call.return_data[18 len 14]) - (997 * ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14]) / ext_call.return_data[18 len 14] != (997 * ext_call.return_data[0]) - (997 * ext_call.return_data[50 len 14]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if (3 * ext_call.return_data[50 len 14]) + (997 * ext_call.return_data[0]) < 1000 * ext_call.return_data[50 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                require (3 * ext_call.return_data[50 len 14]) + (997 * ext_call.return_data[0])
                                require (997 * ext_call.return_data[0] * ext_call.return_data[18 len 14]) - (997 * ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14]) / (3 * ext_call.return_data[50 len 14]) + (997 * ext_call.return_data[0]) >= arg3
                                require 1 < arg4.length
                                require 0 < arg4.length
                                mem[(32 * arg4.length) + 128] = 0
                                mem[(32 * arg4.length) + 160] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                if mem[140 len 20] >= mem[172 len 20]:
                                    mem[(32 * arg4.length) + 164] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                                else:
                                    mem[(32 * arg4.length) + 164] = 0
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require 1 < arg4.length
                                require ext_code.size(mem[172 len 20])
                                call mem[172 len 20].0x2e1a7d4d with:
                                     gas gas_remaining wei
                                    args ((997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]))
                        else:
                            if (997 * ext_call.return_data[0]) - (997 * ext_call.return_data[18 len 14]) / 997 != ext_call.return_data[0] - ext_call.return_data[18 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if not ext_call.return_data[50 len 14]:
                                if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if (3 * ext_call.return_data[18 len 14]) + (997 * ext_call.return_data[0]) < 1000 * ext_call.return_data[18 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                require (3 * ext_call.return_data[18 len 14]) + (997 * ext_call.return_data[0])
                                require 0 / (3 * ext_call.return_data[18 len 14]) + (997 * ext_call.return_data[0]) >= arg3
                                require 1 < arg4.length
                                require 0 < arg4.length
                                mem[(32 * arg4.length) + 128] = 0
                                mem[(32 * arg4.length) + 160] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                if mem[140 len 20] >= mem[172 len 20]:
                                    mem[(32 * arg4.length) + 164] = 0 / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0 / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                                else:
                                    mem[(32 * arg4.length) + 164] = 0
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, 0 / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require 1 < arg4.length
                                require ext_code.size(mem[172 len 20])
                                call mem[172 len 20].0x2e1a7d4d with:
                                     gas gas_remaining wei
                                    args (0 / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]))
                            else:
                                require ext_call.return_data[50 len 14]
                                if (997 * ext_call.return_data[0] * ext_call.return_data[50 len 14]) - (997 * ext_call.return_data[18 len 14] * ext_call.return_data[50 len 14]) / ext_call.return_data[50 len 14] != (997 * ext_call.return_data[0]) - (997 * ext_call.return_data[18 len 14]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if (3 * ext_call.return_data[18 len 14]) + (997 * ext_call.return_data[0]) < 1000 * ext_call.return_data[18 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                require (3 * ext_call.return_data[18 len 14]) + (997 * ext_call.return_data[0])
                                require (997 * ext_call.return_data[0] * ext_call.return_data[50 len 14]) - (997 * ext_call.return_data[18 len 14] * ext_call.return_data[50 len 14]) / (3 * ext_call.return_data[18 len 14]) + (997 * ext_call.return_data[0]) >= arg3
                                require 1 < arg4.length
                                require 0 < arg4.length
                                mem[(32 * arg4.length) + 128] = 0
                                mem[(32 * arg4.length) + 160] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                if mem[140 len 20] >= mem[172 len 20]:
                                    mem[(32 * arg4.length) + 164] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                                else:
                                    mem[(32 * arg4.length) + 164] = 0
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require 1 < arg4.length
                                require ext_code.size(mem[172 len 20])
                                call mem[172 len 20].0x2e1a7d4d with:
                                     gas gas_remaining wei
                                    args ((997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]))
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call owner with:
                           value eth.balance(this.address) wei
                             gas 2300 * is_zero(value) wei
                else:
                    if arg2 != 1:
                        if arg2 >= 1:
                            require 0 < arg4.length
                            _108 = mem[128]
                            mem[(32 * arg4.length) + 128] = Mask(32, 224, sha3('transfer(address,uint256)'))
                            mem[(32 * arg4.length) + 132] = address(ext_call.return_data[0])
                            call address(_108) with:
                               funct Mask(32, 224, sha3('transfer(address,uint256)')) >> 224
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0]), arg2
                            require ext_call.success
                            require 0 < arg4.length
                            require ext_code.size(mem[140 len 20])
                            call mem[140 len 20].balanceOf(address rg1) with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).getReserves() with:
                                 gas gas_remaining wei
                            mem[(32 * arg4.length) + 128 len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            require 1 < arg4.length
                            require 0 < arg4.length
                            if mem[140 len 20] >= mem[172 len 20]:
                                if (997 * ext_call.return_data[0]) - (997 * ext_call.return_data[50 len 14]) / 997 != ext_call.return_data[0] - ext_call.return_data[50 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if not ext_call.return_data[18 len 14]:
                                    if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if (3 * ext_call.return_data[50 len 14]) + (997 * ext_call.return_data[0]) < 1000 * ext_call.return_data[50 len 14]:
                                        revert with 0, 'ds-math-add-overflow'
                                    require (3 * ext_call.return_data[50 len 14]) + (997 * ext_call.return_data[0])
                                    require 0 / (3 * ext_call.return_data[50 len 14]) + (997 * ext_call.return_data[0]) >= arg3
                                    require 1 < arg4.length
                                    require 0 < arg4.length
                                    mem[(32 * arg4.length) + 128] = 0
                                    mem[(32 * arg4.length) + 160] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    if mem[140 len 20] >= mem[172 len 20]:
                                        mem[(32 * arg4.length) + 164] = 0 / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0 / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                                    else:
                                        mem[(32 * arg4.length) + 164] = 0
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, 0 / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require 1 < arg4.length
                                    require ext_code.size(mem[172 len 20])
                                    call mem[172 len 20].0x2e1a7d4d with:
                                         gas gas_remaining wei
                                        args (0 / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]))
                                else:
                                    require ext_call.return_data[18 len 14]
                                    if (997 * ext_call.return_data[0] * ext_call.return_data[18 len 14]) - (997 * ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14]) / ext_call.return_data[18 len 14] != (997 * ext_call.return_data[0]) - (997 * ext_call.return_data[50 len 14]):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if (3 * ext_call.return_data[50 len 14]) + (997 * ext_call.return_data[0]) < 1000 * ext_call.return_data[50 len 14]:
                                        revert with 0, 'ds-math-add-overflow'
                                    require (3 * ext_call.return_data[50 len 14]) + (997 * ext_call.return_data[0])
                                    require (997 * ext_call.return_data[0] * ext_call.return_data[18 len 14]) - (997 * ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14]) / (3 * ext_call.return_data[50 len 14]) + (997 * ext_call.return_data[0]) >= arg3
                                    require 1 < arg4.length
                                    require 0 < arg4.length
                                    mem[(32 * arg4.length) + 128] = 0
                                    mem[(32 * arg4.length) + 160] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    if mem[140 len 20] >= mem[172 len 20]:
                                        mem[(32 * arg4.length) + 164] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                                    else:
                                        mem[(32 * arg4.length) + 164] = 0
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require 1 < arg4.length
                                    require ext_code.size(mem[172 len 20])
                                    call mem[172 len 20].0x2e1a7d4d with:
                                         gas gas_remaining wei
                                        args ((997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]))
                            else:
                                if (997 * ext_call.return_data[0]) - (997 * ext_call.return_data[18 len 14]) / 997 != ext_call.return_data[0] - ext_call.return_data[18 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if not ext_call.return_data[50 len 14]:
                                    if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if (3 * ext_call.return_data[18 len 14]) + (997 * ext_call.return_data[0]) < 1000 * ext_call.return_data[18 len 14]:
                                        revert with 0, 'ds-math-add-overflow'
                                    require (3 * ext_call.return_data[18 len 14]) + (997 * ext_call.return_data[0])
                                    require 0 / (3 * ext_call.return_data[18 len 14]) + (997 * ext_call.return_data[0]) >= arg3
                                    require 1 < arg4.length
                                    require 0 < arg4.length
                                    mem[(32 * arg4.length) + 128] = 0
                                    mem[(32 * arg4.length) + 160] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    if mem[140 len 20] >= mem[172 len 20]:
                                        mem[(32 * arg4.length) + 164] = 0 / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0 / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                                    else:
                                        mem[(32 * arg4.length) + 164] = 0
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, 0 / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require 1 < arg4.length
                                    require ext_code.size(mem[172 len 20])
                                    call mem[172 len 20].0x2e1a7d4d with:
                                         gas gas_remaining wei
                                        args (0 / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]))
                                else:
                                    require ext_call.return_data[50 len 14]
                                    if (997 * ext_call.return_data[0] * ext_call.return_data[50 len 14]) - (997 * ext_call.return_data[18 len 14] * ext_call.return_data[50 len 14]) / ext_call.return_data[50 len 14] != (997 * ext_call.return_data[0]) - (997 * ext_call.return_data[18 len 14]):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if (3 * ext_call.return_data[18 len 14]) + (997 * ext_call.return_data[0]) < 1000 * ext_call.return_data[18 len 14]:
                                        revert with 0, 'ds-math-add-overflow'
                                    require (3 * ext_call.return_data[18 len 14]) + (997 * ext_call.return_data[0])
                                    require (997 * ext_call.return_data[0] * ext_call.return_data[50 len 14]) - (997 * ext_call.return_data[18 len 14] * ext_call.return_data[50 len 14]) / (3 * ext_call.return_data[18 len 14]) + (997 * ext_call.return_data[0]) >= arg3
                                    require 1 < arg4.length
                                    require 0 < arg4.length
                                    mem[(32 * arg4.length) + 128] = 0
                                    mem[(32 * arg4.length) + 160] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    if mem[140 len 20] >= mem[172 len 20]:
                                        mem[(32 * arg4.length) + 164] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                                    else:
                                        mem[(32 * arg4.length) + 164] = 0
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require 1 < arg4.length
                                    require ext_code.size(mem[172 len 20])
                                    call mem[172 len 20].0x2e1a7d4d with:
                                         gas gas_remaining wei
                                        args ((997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]))
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call owner with:
                               value eth.balance(this.address) wei
                                 gas 2300 * is_zero(value) wei
                    else:
                        require 0 < arg4.length
                        require ext_code.size(mem[140 len 20])
                        call mem[140 len 20].balanceOf(address rg1) with:
                             gas gas_remaining wei
                            args this.address
                        mem[(32 * arg4.length) + 128] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] / 4 >= 1:
                            require 0 < arg4.length
                            _191 = mem[128]
                            mem[(32 * arg4.length) + 128] = Mask(32, 224, sha3('transfer(address,uint256)'))
                            mem[(32 * arg4.length) + 132] = address(ext_call.return_data[0])
                            call address(_191) with:
                               funct Mask(32, 224, sha3('transfer(address,uint256)')) >> 224
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0]), ext_call.return_data[0] / 4
                            require ext_call.success
                            require 0 < arg4.length
                            require ext_code.size(mem[140 len 20])
                            call mem[140 len 20].balanceOf(address rg1) with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).getReserves() with:
                                 gas gas_remaining wei
                            mem[(32 * arg4.length) + 128 len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            require 1 < arg4.length
                            require 0 < arg4.length
                            if mem[140 len 20] >= mem[172 len 20]:
                                if (997 * ext_call.return_data[0]) - (997 * ext_call.return_data[50 len 14]) / 997 != ext_call.return_data[0] - ext_call.return_data[50 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if not ext_call.return_data[18 len 14]:
                                    if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if (3 * ext_call.return_data[50 len 14]) + (997 * ext_call.return_data[0]) < 1000 * ext_call.return_data[50 len 14]:
                                        revert with 0, 'ds-math-add-overflow'
                                    require (3 * ext_call.return_data[50 len 14]) + (997 * ext_call.return_data[0])
                                    require 0 / (3 * ext_call.return_data[50 len 14]) + (997 * ext_call.return_data[0]) >= arg3
                                    require 1 < arg4.length
                                    require 0 < arg4.length
                                    mem[(32 * arg4.length) + 128] = 0
                                    mem[(32 * arg4.length) + 160] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    if mem[140 len 20] >= mem[172 len 20]:
                                        mem[(32 * arg4.length) + 164] = 0 / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0 / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                                    else:
                                        mem[(32 * arg4.length) + 164] = 0
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, 0 / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require 1 < arg4.length
                                    require ext_code.size(mem[172 len 20])
                                    call mem[172 len 20].0x2e1a7d4d with:
                                         gas gas_remaining wei
                                        args (0 / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]))
                                else:
                                    require ext_call.return_data[18 len 14]
                                    if (997 * ext_call.return_data[0] * ext_call.return_data[18 len 14]) - (997 * ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14]) / ext_call.return_data[18 len 14] != (997 * ext_call.return_data[0]) - (997 * ext_call.return_data[50 len 14]):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if (3 * ext_call.return_data[50 len 14]) + (997 * ext_call.return_data[0]) < 1000 * ext_call.return_data[50 len 14]:
                                        revert with 0, 'ds-math-add-overflow'
                                    require (3 * ext_call.return_data[50 len 14]) + (997 * ext_call.return_data[0])
                                    require (997 * ext_call.return_data[0] * ext_call.return_data[18 len 14]) - (997 * ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14]) / (3 * ext_call.return_data[50 len 14]) + (997 * ext_call.return_data[0]) >= arg3
                                    require 1 < arg4.length
                                    require 0 < arg4.length
                                    mem[(32 * arg4.length) + 128] = 0
                                    mem[(32 * arg4.length) + 160] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    if mem[140 len 20] >= mem[172 len 20]:
                                        mem[(32 * arg4.length) + 164] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                                    else:
                                        mem[(32 * arg4.length) + 164] = 0
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require 1 < arg4.length
                                    require ext_code.size(mem[172 len 20])
                                    call mem[172 len 20].0x2e1a7d4d with:
                                         gas gas_remaining wei
                                        args ((997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]))
                            else:
                                if (997 * ext_call.return_data[0]) - (997 * ext_call.return_data[18 len 14]) / 997 != ext_call.return_data[0] - ext_call.return_data[18 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if not ext_call.return_data[50 len 14]:
                                    if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if (3 * ext_call.return_data[18 len 14]) + (997 * ext_call.return_data[0]) < 1000 * ext_call.return_data[18 len 14]:
                                        revert with 0, 'ds-math-add-overflow'
                                    require (3 * ext_call.return_data[18 len 14]) + (997 * ext_call.return_data[0])
                                    require 0 / (3 * ext_call.return_data[18 len 14]) + (997 * ext_call.return_data[0]) >= arg3
                                    require 1 < arg4.length
                                    require 0 < arg4.length
                                    mem[(32 * arg4.length) + 128] = 0
                                    mem[(32 * arg4.length) + 160] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    if mem[140 len 20] >= mem[172 len 20]:
                                        mem[(32 * arg4.length) + 164] = 0 / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0 / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                                    else:
                                        mem[(32 * arg4.length) + 164] = 0
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, 0 / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require 1 < arg4.length
                                    require ext_code.size(mem[172 len 20])
                                    call mem[172 len 20].0x2e1a7d4d with:
                                         gas gas_remaining wei
                                        args (0 / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]))
                                else:
                                    require ext_call.return_data[50 len 14]
                                    if (997 * ext_call.return_data[0] * ext_call.return_data[50 len 14]) - (997 * ext_call.return_data[18 len 14] * ext_call.return_data[50 len 14]) / ext_call.return_data[50 len 14] != (997 * ext_call.return_data[0]) - (997 * ext_call.return_data[18 len 14]):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if (3 * ext_call.return_data[18 len 14]) + (997 * ext_call.return_data[0]) < 1000 * ext_call.return_data[18 len 14]:
                                        revert with 0, 'ds-math-add-overflow'
                                    require (3 * ext_call.return_data[18 len 14]) + (997 * ext_call.return_data[0])
                                    require (997 * ext_call.return_data[0] * ext_call.return_data[50 len 14]) - (997 * ext_call.return_data[18 len 14] * ext_call.return_data[50 len 14]) / (3 * ext_call.return_data[18 len 14]) + (997 * ext_call.return_data[0]) >= arg3
                                    require 1 < arg4.length
                                    require 0 < arg4.length
                                    mem[(32 * arg4.length) + 128] = 0
                                    mem[(32 * arg4.length) + 160] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    if mem[140 len 20] >= mem[172 len 20]:
                                        mem[(32 * arg4.length) + 164] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                                    else:
                                        mem[(32 * arg4.length) + 164] = 0
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require 1 < arg4.length
                                    require ext_code.size(mem[172 len 20])
                                    call mem[172 len 20].0x2e1a7d4d with:
                                         gas gas_remaining wei
                                        args ((997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]))
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call owner with:
                               value eth.balance(this.address) wei
                                 gas 2300 * is_zero(value) wei
}



}
