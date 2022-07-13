contract main {




// =====================  Runtime code  =====================


address sub_ead88dbcAddress;
address WETHAddress;
address sub_d5bfbe4cAddress;
address stor3;
mapping of uint8 stor4;

function verifyUser(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor4[address(arg1)])
}

function WETH() {
    return WETHAddress
}

function sub_d5bfbe4c(?) {
    return sub_d5bfbe4cAddress
}

function sub_ead88dbc(?) {
    return sub_ead88dbcAddress
}

function _fallback() payable {
    revert
}

function isOwner() {
    return (msg.sender == stor3)
}

function addUser(address arg1) {
    require calldata.size - 4 >= 32
    if stor3 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0x5446756e6374696f6e2061636365737369626c65206f6e6c7920627920746865206f776e65722021,
                    mem[204 len 24]
    stor4[address(arg1)] = 1
}

function sub_dc539161(?) {
    if stor3 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0x5446756e6374696f6e2061636365737369626c65206f6e6c7920627920746865206f776e65722021,
                    mem[204 len 24]
    require ext_code.size(WETHAddress)
    staticcall WETHAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(WETHAddress)
    call WETHAddress.withdraw(uint256 arg1) with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
}

function sub_f00ef99a(?) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(arg2)
    staticcall arg2.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg2)
    call arg2.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_code.size(arg1)
    staticcall arg1.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if WETHAddress == arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x2150616e63616b654c6962726172793a204944454e544943414c5f4144445245535345,
                    mem[199 len 29]
    if WETHAddress < arg2:
        if not WETHAddress:
            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
    else:
        if not arg2:
            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
    require ext_code.size(arg2)
    staticcall arg2.0x70a08231 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if Mask(144, 112, ext_call.return_data[0]) <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0xfe50616e63616b654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                    mem[205 len 23]
    if Mask(112, 0, ext_call.return_data[0]) <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                    mem[202 len 26]
    if Mask(112, 0, ext_call.return_data[32]) <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                    mem[202 len 26]
    if 9975 * Mask(144, 112, ext_call.return_data[0]) / 9975 != Mask(144, 112, ext_call.return_data[0]):
        revert with 0, 'ds-math-mul-overflow'
    if not Mask(112, 0, ext_call.return_data[32]):
        if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 'ds-math-mul-overflow'
        if (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 'ds-math-add-overflow'
        require (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0])
        call arg1.0x80 with:
             gas gas_remaining wei
            args Mask(1248, -1024, swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4), 0, 0, 0 / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), address(this.address), 128, 0) << 1024, mem[484 len 4]
    else:
        require Mask(112, 0, ext_call.return_data[32])
        if (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (9975 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / Mask(112, 0, ext_call.return_data[32]) != 9975 * Mask(144, 112, ext_call.return_data[0]):
            revert with 0, 'ds-math-mul-overflow'
        if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 'ds-math-mul-overflow'
        if (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 'ds-math-add-overflow'
        require (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0])
        call arg1.0x80 with:
             gas gas_remaining wei
            args Mask(1248, -1024, swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4), 0, 0, (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (9975 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), address(this.address), 128, 0) << 1024, mem[484 len 4]
    if not ext_call.success:
        revert with 0, ',-'
}

function sub_855da01f(?) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(WETHAddress)
    call WETHAddress.deposit() with:
       value msg.value wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(WETHAddress)
    call WETHAddress.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), msg.value
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_code.size(arg1)
    staticcall arg1.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if WETHAddress == arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x2150616e63616b654c6962726172793a204944454e544943414c5f4144445245535345,
                    mem[199 len 29]
    if WETHAddress < arg2:
        if not WETHAddress:
            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
        if msg.value <= 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        41,
                        0xfe50616e63616b654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                        mem[205 len 23]
        if WETHAddress != arg2:
            if ext_call.return_data[50 len 14] <= 0:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            38,
                            0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                            mem[202 len 26]
            if ext_call.return_data[18 len 14] <= 0:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            38,
                            0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                            mem[202 len 26]
            if 9975 * msg.value / 9975 != msg.value:
                revert with 0, 'ds-math-mul-overflow'
            if not ext_call.return_data[18 len 14]:
                if 10000 * ext_call.return_data[50 len 14] / 10000 != ext_call.return_data[50 len 14]:
                    revert with 0, 'ds-math-mul-overflow'
                if (10000 * ext_call.return_data[50 len 14]) + (9975 * msg.value) < 10000 * ext_call.return_data[50 len 14]:
                    revert with 0, 'ds-math-add-overflow'
                require (10000 * ext_call.return_data[50 len 14]) + (9975 * msg.value)
                call arg1.0x80 with:
                     gas gas_remaining wei
                    args Mask(1248, -1024, swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4), 0, 0, 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value), address(this.address), 128, 0) << 1024, mem[484 len 4]
            else:
                require ext_call.return_data[18 len 14]
                if 9975 * msg.value * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 9975 * msg.value:
                    revert with 0, 'ds-math-mul-overflow'
                if 10000 * ext_call.return_data[50 len 14] / 10000 != ext_call.return_data[50 len 14]:
                    revert with 0, 'ds-math-mul-overflow'
                if (10000 * ext_call.return_data[50 len 14]) + (9975 * msg.value) < 10000 * ext_call.return_data[50 len 14]:
                    revert with 0, 'ds-math-add-overflow'
                require (10000 * ext_call.return_data[50 len 14]) + (9975 * msg.value)
                call arg1.0x80 with:
                     gas gas_remaining wei
                    args Mask(1248, -1024, swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4), 0, 0, 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value), address(this.address), 128, 0) << 1024, mem[484 len 4]
        else:
            if ext_call.return_data[18 len 14] <= 0:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            38,
                            0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                            mem[202 len 26]
            if ext_call.return_data[50 len 14] <= 0:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            38,
                            0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                            mem[202 len 26]
            if 9975 * msg.value / 9975 != msg.value:
                revert with 0, 'ds-math-mul-overflow'
            if not ext_call.return_data[50 len 14]:
                if 10000 * ext_call.return_data[18 len 14] / 10000 != ext_call.return_data[18 len 14]:
                    revert with 0, 'ds-math-mul-overflow'
                if (10000 * ext_call.return_data[18 len 14]) + (9975 * msg.value) < 10000 * ext_call.return_data[18 len 14]:
                    revert with 0, 'ds-math-add-overflow'
                require (10000 * ext_call.return_data[18 len 14]) + (9975 * msg.value)
                call arg1.0x80 with:
                     gas gas_remaining wei
                    args 0, 0, 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value), 0, this.address, 128, 0 >> 736, mem[484 len 4]
            else:
                require ext_call.return_data[50 len 14]
                if 9975 * msg.value * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 9975 * msg.value:
                    revert with 0, 'ds-math-mul-overflow'
                if 10000 * ext_call.return_data[18 len 14] / 10000 != ext_call.return_data[18 len 14]:
                    revert with 0, 'ds-math-mul-overflow'
                if (10000 * ext_call.return_data[18 len 14]) + (9975 * msg.value) < 10000 * ext_call.return_data[18 len 14]:
                    revert with 0, 'ds-math-add-overflow'
                require (10000 * ext_call.return_data[18 len 14]) + (9975 * msg.value)
                call arg1.0x80 with:
                     gas gas_remaining wei
                    args 0, 0, 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value), 0, this.address, 128, 0 >> 736, mem[484 len 4]
    else:
        if not arg2:
            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
        if msg.value <= 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        41,
                        0xfe50616e63616b654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                        mem[205 len 23]
        if arg2 != arg2:
            if ext_call.return_data[50 len 14] <= 0:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            38,
                            0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                            mem[202 len 26]
            if ext_call.return_data[18 len 14] <= 0:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            38,
                            0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                            mem[202 len 26]
            if 9975 * msg.value / 9975 != msg.value:
                revert with 0, 'ds-math-mul-overflow'
            if not ext_call.return_data[18 len 14]:
                if 10000 * ext_call.return_data[50 len 14] / 10000 != ext_call.return_data[50 len 14]:
                    revert with 0, 'ds-math-mul-overflow'
                if (10000 * ext_call.return_data[50 len 14]) + (9975 * msg.value) < 10000 * ext_call.return_data[50 len 14]:
                    revert with 0, 'ds-math-add-overflow'
                require (10000 * ext_call.return_data[50 len 14]) + (9975 * msg.value)
                call arg1.0x80 with:
                     gas gas_remaining wei
                    args Mask(1248, -1024, swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4), 0, 0, 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value), address(this.address), 128, 0) << 1024, mem[484 len 4]
            else:
                require ext_call.return_data[18 len 14]
                if 9975 * msg.value * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 9975 * msg.value:
                    revert with 0, 'ds-math-mul-overflow'
                if 10000 * ext_call.return_data[50 len 14] / 10000 != ext_call.return_data[50 len 14]:
                    revert with 0, 'ds-math-mul-overflow'
                if (10000 * ext_call.return_data[50 len 14]) + (9975 * msg.value) < 10000 * ext_call.return_data[50 len 14]:
                    revert with 0, 'ds-math-add-overflow'
                require (10000 * ext_call.return_data[50 len 14]) + (9975 * msg.value)
                call arg1.0x80 with:
                     gas gas_remaining wei
                    args Mask(1248, -1024, swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4), 0, 0, 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value), address(this.address), 128, 0) << 1024, mem[484 len 4]
        else:
            if ext_call.return_data[18 len 14] <= 0:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            38,
                            0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                            mem[202 len 26]
            if ext_call.return_data[50 len 14] <= 0:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            38,
                            0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                            mem[202 len 26]
            if 9975 * msg.value / 9975 != msg.value:
                revert with 0, 'ds-math-mul-overflow'
            if not ext_call.return_data[50 len 14]:
                if 10000 * ext_call.return_data[18 len 14] / 10000 != ext_call.return_data[18 len 14]:
                    revert with 0, 'ds-math-mul-overflow'
                if (10000 * ext_call.return_data[18 len 14]) + (9975 * msg.value) < 10000 * ext_call.return_data[18 len 14]:
                    revert with 0, 'ds-math-add-overflow'
                require (10000 * ext_call.return_data[18 len 14]) + (9975 * msg.value)
                call arg1.0x80 with:
                     gas gas_remaining wei
                    args Mask(1248, -1024, swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4), 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value), 0, this.address, 128, 0) << 1024, mem[484 len 4]
            else:
                require ext_call.return_data[50 len 14]
                if 9975 * msg.value * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 9975 * msg.value:
                    revert with 0, 'ds-math-mul-overflow'
                if 10000 * ext_call.return_data[18 len 14] / 10000 != ext_call.return_data[18 len 14]:
                    revert with 0, 'ds-math-mul-overflow'
                if (10000 * ext_call.return_data[18 len 14]) + (9975 * msg.value) < 10000 * ext_call.return_data[18 len 14]:
                    revert with 0, 'ds-math-add-overflow'
                require (10000 * ext_call.return_data[18 len 14]) + (9975 * msg.value)
                call arg1.0x80 with:
                     gas gas_remaining wei
                    args 0, 0, 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value), 0, this.address, 128, 0 >> 736, mem[484 len 4]
    if not ext_call.success:
        revert with 0, ',-'
}



}
