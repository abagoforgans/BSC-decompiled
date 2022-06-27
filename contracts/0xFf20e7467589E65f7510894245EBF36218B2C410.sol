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

function sub_e21f34ee(?) payable {
    require calldata.size - 4 >= 128
    require cd[36] <= 4294967296
    require cd[36] + 36 <= calldata.size
    require ('cd', 36).length <= 4294967296 and cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    mem[0] = msg.sender
    mem[32] = 4
    if not stor4[msg.sender]:
        revert with 0, 'Wey: Mau ngapain lo ?'
    require ('cd', 36).length
    if address(('cd', 36)[0]) != WETHAddress:
        revert with 0, 'PancakeRouter: INVALID_PATH'
    require ('cd', 36).length
    require 1 < ('cd', 36).length
    mem[100] = address(('cd', 36)[0])
    mem[132] = address(('cd', 36)[1])
    require ext_code.size(sub_d5bfbe4cAddress)
    staticcall sub_d5bfbe4cAddress.getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(('cd', 36)[0]), address(('cd', 36)[1])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[96] = ('cd', 36).length
    mem[128 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
    if ('cd', 36).length < 2:
        revert with 0, 'PancakeLibrary: INVALID_PATH'
    require ('cd', 36).length <= test266151307()
    mem[(32 * ('cd', 36).length) + 128] = ('cd', 36).length
    if not ('cd', 36).length:
        require 0 < ('cd', 36).length
        mem[(32 * ('cd', 36).length) + 160] = msg.value
        idx = 0
        s = 0
        t = 0
        while idx < ('cd', 36).length - 1:
            require idx < ('cd', 36).length
            _707 = mem[(32 * idx) + 128]
            require idx + 1 < ('cd', 36).length
            _713 = mem[(32 * idx + 1) + 128]
            if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                revert with 0, 
                            32,
                            35,
                            0x2150616e63616b654c6962726172793a204944454e544943414c5f4144445245535345,
                            mem[(64 * ('cd', 36).length) + 263 len 29]
            if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                if not mem[(32 * idx) + 140 len 20]:
                    revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getReserves() with:
                        gas gas_remaining wei
                mem[(64 * ('cd', 36).length) + 160 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                if address(_707) == address(_707):
                    require idx < mem[(32 * ('cd', 36).length) + 128]
                    if mem[(32 * idx) + (32 * ('cd', 36).length) + 160] <= 0:
                        revert with 0, 
                                    32,
                                    41,
                                    0xfe50616e63616b654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                    mem[(64 * ('cd', 36).length) + 269 len 23]
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                    mem[(64 * ('cd', 36).length) + 266 len 26]
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                    mem[(64 * ('cd', 36).length) + 266 len 26]
                    if 9975 * mem[(32 * idx) + (32 * ('cd', 36).length) + 160] / 9975 != mem[(32 * idx) + (32 * ('cd', 36).length) + 160]:
                        revert with 0, 'ds-math-mul-overflow'
                    if not Mask(112, 0, ext_call.return_data[32]):
                        if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + (32 * ('cd', 36).length) + 160]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-add-overflow'
                        require (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + (32 * ('cd', 36).length) + 160])
                        require idx + 1 < mem[(32 * ('cd', 36).length) + 128]
                        mem[(32 * idx + 1) + (32 * ('cd', 36).length) + 160] = 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + (32 * ('cd', 36).length) + 160])
                    else:
                        require Mask(112, 0, ext_call.return_data[32])
                        if 9975 * mem[(32 * idx) + (32 * ('cd', 36).length) + 160] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 9975 * mem[(32 * idx) + (32 * ('cd', 36).length) + 160]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + (32 * ('cd', 36).length) + 160]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-add-overflow'
                        require (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + (32 * ('cd', 36).length) + 160])
                        require idx + 1 < mem[(32 * ('cd', 36).length) + 128]
                        mem[(32 * idx + 1) + (32 * ('cd', 36).length) + 160] = 9975 * mem[(32 * idx) + (32 * ('cd', 36).length) + 160] * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + (32 * ('cd', 36).length) + 160])
                    idx = idx + 1
                    s = Mask(112, 0, ext_call.return_data[32])
                    t = Mask(112, 0, ext_call.return_data[0])
                    continue 
            else:
                if not mem[(32 * idx + 1) + 140 len 20]:
                    revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getReserves() with:
                        gas gas_remaining wei
                mem[(64 * ('cd', 36).length) + 160 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                if address(_713) == address(_707):
                    require idx < mem[(32 * ('cd', 36).length) + 128]
                    if mem[(32 * idx) + (32 * ('cd', 36).length) + 160] <= 0:
                        revert with 0, 
                                    32,
                                    41,
                                    0xfe50616e63616b654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                    mem[(64 * ('cd', 36).length) + 269 len 23]
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                    mem[(64 * ('cd', 36).length) + 266 len 26]
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                    mem[(64 * ('cd', 36).length) + 266 len 26]
                    if 9975 * mem[(32 * idx) + (32 * ('cd', 36).length) + 160] / 9975 != mem[(32 * idx) + (32 * ('cd', 36).length) + 160]:
                        revert with 0, 'ds-math-mul-overflow'
                    if not Mask(112, 0, ext_call.return_data[32]):
                        if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + (32 * ('cd', 36).length) + 160]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-add-overflow'
                        require (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + (32 * ('cd', 36).length) + 160])
                        require idx + 1 < mem[(32 * ('cd', 36).length) + 128]
                        mem[(32 * idx + 1) + (32 * ('cd', 36).length) + 160] = 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + (32 * ('cd', 36).length) + 160])
                    else:
                        require Mask(112, 0, ext_call.return_data[32])
                        if 9975 * mem[(32 * idx) + (32 * ('cd', 36).length) + 160] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 9975 * mem[(32 * idx) + (32 * ('cd', 36).length) + 160]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + (32 * ('cd', 36).length) + 160]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-add-overflow'
                        require (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + (32 * ('cd', 36).length) + 160])
                        require idx + 1 < mem[(32 * ('cd', 36).length) + 128]
                        mem[(32 * idx + 1) + (32 * ('cd', 36).length) + 160] = 9975 * mem[(32 * idx) + (32 * ('cd', 36).length) + 160] * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + (32 * ('cd', 36).length) + 160])
                    idx = idx + 1
                    s = Mask(112, 0, ext_call.return_data[32])
                    t = Mask(112, 0, ext_call.return_data[0])
                    continue 
            require idx < mem[(32 * ('cd', 36).length) + 128]
            if mem[(32 * idx) + (32 * ('cd', 36).length) + 160] <= 0:
                revert with 0, 
                            32,
                            41,
                            0xfe50616e63616b654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                            mem[(64 * ('cd', 36).length) + 269 len 23]
            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                revert with 0, 
                            32,
                            38,
                            0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                            mem[(64 * ('cd', 36).length) + 266 len 26]
            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                revert with 0, 
                            32,
                            38,
                            0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                            mem[(64 * ('cd', 36).length) + 266 len 26]
            if 9975 * mem[(32 * idx) + (32 * ('cd', 36).length) + 160] / 9975 != mem[(32 * idx) + (32 * ('cd', 36).length) + 160]:
                revert with 0, 'ds-math-mul-overflow'
            if not Mask(112, 0, ext_call.return_data[0]):
                if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'ds-math-mul-overflow'
                if (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + (32 * ('cd', 36).length) + 160]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'ds-math-add-overflow'
                require (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + (32 * ('cd', 36).length) + 160])
                require idx + 1 < mem[(32 * ('cd', 36).length) + 128]
                mem[(32 * idx + 1) + (32 * ('cd', 36).length) + 160] = 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + (32 * ('cd', 36).length) + 160])
            else:
                require Mask(112, 0, ext_call.return_data[0])
                if 9975 * mem[(32 * idx) + (32 * ('cd', 36).length) + 160] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 9975 * mem[(32 * idx) + (32 * ('cd', 36).length) + 160]:
                    revert with 0, 'ds-math-mul-overflow'
                if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'ds-math-mul-overflow'
                if (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + (32 * ('cd', 36).length) + 160]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'ds-math-add-overflow'
                require (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + (32 * ('cd', 36).length) + 160])
                require idx + 1 < mem[(32 * ('cd', 36).length) + 128]
                mem[(32 * idx + 1) + (32 * ('cd', 36).length) + 160] = 9975 * mem[(32 * idx) + (32 * ('cd', 36).length) + 160] * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + (32 * ('cd', 36).length) + 160])
            idx = idx + 1
            s = Mask(112, 0, ext_call.return_data[0])
            t = Mask(112, 0, ext_call.return_data[32])
            continue 
        mem[(64 * ('cd', 36).length) + 160] = 2
        mem[64] = (64 * ('cd', 36).length) + 256
        require 1 < ('cd', 36).length
        mem[(64 * ('cd', 36).length) + 192] = address(('cd', 36)[1])
        require 0 < ('cd', 36).length
        mem[(64 * ('cd', 36).length) + 224] = address(('cd', 36)[0])
        require mem[(32 * ('cd', 36).length) + 128] - 1 < mem[(32 * ('cd', 36).length) + 128]
        _726 = mem[(32 * mem[(32 * ('cd', 36).length) + 128] - 1) + (32 * ('cd', 36).length) + 160]
        mem[(64 * ('cd', 36).length) + 256] = 2
        mem[64] = (64 * ('cd', 36).length) + 352
        mem[(64 * ('cd', 36).length) + 288 len 64] = call.data[calldata.size len 64]
        mem[(64 * ('cd', 36).length) + 288] = _726
        u = 0
        while u < 1:
            require u < 2
            if mem[(32 * u) + (64 * ('cd', 36).length) + 288] <= 0:
                revert with 0, 
                            32,
                            41,
                            0xfe50616e63616b654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                            mem[(64 * ('cd', 36).length) + 461 len 23]
            if s <= 0:
                revert with 0, 
                            32,
                            38,
                            0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                            mem[(64 * ('cd', 36).length) + 458 len 26]
            if t <= 0:
                revert with 0, 
                            32,
                            38,
                            0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                            mem[(64 * ('cd', 36).length) + 458 len 26]
            if 9975 * mem[(32 * u) + (64 * ('cd', 36).length) + 288] / 9975 != mem[(32 * u) + (64 * ('cd', 36).length) + 288]:
                revert with 0, 'ds-math-mul-overflow'
            if not t:
                if 10000 * s / 10000 != s:
                    revert with 0, 'ds-math-mul-overflow'
                if (10000 * s) + (9975 * mem[(32 * u) + (64 * ('cd', 36).length) + 288]) < 10000 * s:
                    revert with 0, 'ds-math-add-overflow'
                require (10000 * s) + (9975 * mem[(32 * u) + (64 * ('cd', 36).length) + 288])
                require u + 1 < 2
                mem[(32 * u + 1) + (64 * ('cd', 36).length) + 288] = 0 / (10000 * s) + (9975 * mem[(32 * u) + (64 * ('cd', 36).length) + 288])
            else:
                require t
                if 9975 * mem[(32 * u) + (64 * ('cd', 36).length) + 288] * t / t != 9975 * mem[(32 * u) + (64 * ('cd', 36).length) + 288]:
                    revert with 0, 'ds-math-mul-overflow'
                if 10000 * s / 10000 != s:
                    revert with 0, 'ds-math-mul-overflow'
                if (10000 * s) + (9975 * mem[(32 * u) + (64 * ('cd', 36).length) + 288]) < 10000 * s:
                    revert with 0, 'ds-math-add-overflow'
                require (10000 * s) + (9975 * mem[(32 * u) + (64 * ('cd', 36).length) + 288])
                require u + 1 < 2
                mem[(32 * u + 1) + (64 * ('cd', 36).length) + 288] = 9975 * mem[(32 * u) + (64 * ('cd', 36).length) + 288] * t / (10000 * s) + (9975 * mem[(32 * u) + (64 * ('cd', 36).length) + 288])
            u = u + 1
            continue 
        require mem[(32 * ('cd', 36).length) + 128] - 1 < mem[(32 * ('cd', 36).length) + 128]
        if mem[(32 * mem[(32 * ('cd', 36).length) + 128] - 1) + (32 * ('cd', 36).length) + 160] < cd[4]:
            revert with 0, '-,'
        if mem[(64 * ('cd', 36).length) + 320] < msg.value * cd[100] / 100:
            revert with 0, '-,'
        require mem[(32 * ('cd', 36).length) + 128]
        mem[(64 * ('cd', 36).length) + 352] = 0xd0e30db000000000000000000000000000000000000000000000000000000000
        require ext_code.size(WETHAddress)
        call WETHAddress.deposit() with:
           value mem[(32 * ('cd', 36).length) + 160] wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require mem[(32 * ('cd', 36).length) + 128]
        mem[(64 * ('cd', 36).length) + 356] = address(ext_call.return_data[0])
        mem[(64 * ('cd', 36).length) + 388] = mem[(32 * ('cd', 36).length) + 160]
        require ext_code.size(WETHAddress)
        call WETHAddress.0xa9059cbb with:
             gas gas_remaining wei
            args address(ext_call.return_data[0]), mem[(32 * ('cd', 36).length) + 160]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        mem[64] = (98 * ('cd', 36).length) + 384
        mem[(64 * ('cd', 36).length) + 352] = ('cd', 36).length
        mem[(64 * ('cd', 36).length) + 384 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
        mem[(98 * ('cd', 36).length) + 384] = 0
        idx = 0
        while idx < ('cd', 36).length - 1:
            require idx < mem[(64 * ('cd', 36).length) + 352]
            require idx + 1 < mem[(64 * ('cd', 36).length) + 352]
            if mem[(32 * idx) + (64 * ('cd', 36).length) + 396 len 20] == mem[(32 * idx + 1) + (64 * ('cd', 36).length) + 396 len 20]:
                revert with 0, 32, 35, 0x2150616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 103 len 29]
            if mem[(32 * idx) + (64 * ('cd', 36).length) + 396 len 20] < mem[(32 * idx + 1) + (64 * ('cd', 36).length) + 396 len 20]:
                if not mem[(32 * idx) + (64 * ('cd', 36).length) + 396 len 20]:
                    revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                require idx + 1 < mem[(32 * ('cd', 36).length) + 128]
                _2008 = mem[(32 * idx + 1) + (32 * ('cd', 36).length) + 160]
                if mem[(32 * idx) + (64 * ('cd', 36).length) + 396 len 20] == mem[(32 * idx) + (64 * ('cd', 36).length) + 396 len 20]:
                    if idx < mem[(64 * ('cd', 36).length) + 352] - 2:
                        _2062 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_2062 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_2062 + 36] = 0
                        mem[_2062 + 68] = _2008
                        mem[_2062 + 100] = address(ext_call.return_data[0])
                        mem[_2062 + 132] = 128
                        mem[_2062 + 164] = mem[_2062]
                        s = 0
                        while s < mem[_2062]:
                            mem[s + _2062 + 196] = mem[s + _2062 + 32]
                            s = s + 32
                            continue 
                        if not mem[_2062] % 32:
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _2008, address(ext_call.return_data[0]), 128, mem[_2062 + 164 len mem[_2062] + 32]
                        else:
                            mem[floor32(mem[_2062]) + _2062 + 196] = mem[floor32(mem[_2062]) + _2062 + -(mem[_2062] % 32) + 228 len mem[_2062] % 32]
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _2008, address(ext_call.return_data[0]), 128, mem[_2062], mem[_2062 + 196 len floor32(mem[_2062]) + 32]
                    else:
                        _2066 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_2066 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_2066 + 36] = 0
                        mem[_2066 + 68] = _2008
                        mem[_2066 + 100] = address(cd[68])
                        mem[_2066 + 132] = 128
                        mem[_2066 + 164] = mem[_2066]
                        s = 0
                        while s < mem[_2066]:
                            mem[s + _2066 + 196] = mem[s + _2066 + 32]
                            s = s + 32
                            continue 
                        if not mem[_2066] % 32:
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _2008, address(cd[68]), 128, mem[_2066 + 164 len mem[_2066] + 32]
                        else:
                            mem[floor32(mem[_2066]) + _2066 + 196] = mem[floor32(mem[_2066]) + _2066 + -(mem[_2066] % 32) + 228 len mem[_2066] % 32]
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _2008, address(cd[68]), 128, mem[_2066], mem[_2066 + 196 len floor32(mem[_2066]) + 32]
                else:
                    if idx < mem[(64 * ('cd', 36).length) + 352] - 2:
                        _2070 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_2070 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_2070 + 36] = _2008
                        mem[_2070 + 68] = 0
                        mem[_2070 + 100] = address(ext_call.return_data[0])
                        mem[_2070 + 132] = 128
                        mem[_2070 + 164] = mem[_2070]
                        s = 0
                        while s < mem[_2070]:
                            mem[s + _2070 + 196] = mem[s + _2070 + 32]
                            s = s + 32
                            continue 
                        if not mem[_2070] % 32:
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _2008, 0, address(ext_call.return_data[0]), 128, mem[_2070 + 164 len mem[_2070] + 32]
                        else:
                            mem[floor32(mem[_2070]) + _2070 + 196] = mem[floor32(mem[_2070]) + _2070 + -(mem[_2070] % 32) + 228 len mem[_2070] % 32]
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _2008, 0, address(ext_call.return_data[0]), 128, mem[_2070], mem[_2070 + 196 len floor32(mem[_2070]) + 32]
                    else:
                        _2074 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_2074 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_2074 + 36] = _2008
                        mem[_2074 + 68] = 0
                        mem[_2074 + 100] = address(cd[68])
                        mem[_2074 + 132] = 128
                        mem[_2074 + 164] = mem[_2074]
                        s = 0
                        while s < mem[_2074]:
                            mem[s + _2074 + 196] = mem[s + _2074 + 32]
                            s = s + 32
                            continue 
                        if not mem[_2074] % 32:
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _2008, 0, address(cd[68]), 128, mem[_2074 + 164 len mem[_2074] + 32]
                        else:
                            mem[floor32(mem[_2074]) + _2074 + 196] = mem[floor32(mem[_2074]) + _2074 + -(mem[_2074] % 32) + 228 len mem[_2074] % 32]
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _2008, 0, address(cd[68]), 128, mem[_2074], mem[_2074 + 196 len floor32(mem[_2074]) + 32]
            else:
                if not mem[(32 * idx + 1) + (64 * ('cd', 36).length) + 396 len 20]:
                    revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                require idx + 1 < mem[(32 * ('cd', 36).length) + 128]
                _2009 = mem[(32 * idx + 1) + (32 * ('cd', 36).length) + 160]
                if mem[(32 * idx) + (64 * ('cd', 36).length) + 396 len 20] == mem[(32 * idx + 1) + (64 * ('cd', 36).length) + 396 len 20]:
                    if idx < mem[(64 * ('cd', 36).length) + 352] - 2:
                        _2078 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_2078 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_2078 + 36] = 0
                        mem[_2078 + 68] = _2009
                        mem[_2078 + 100] = address(ext_call.return_data[0])
                        mem[_2078 + 132] = 128
                        mem[_2078 + 164] = mem[_2078]
                        s = 0
                        while s < mem[_2078]:
                            mem[s + _2078 + 196] = mem[s + _2078 + 32]
                            s = s + 32
                            continue 
                        if not mem[_2078] % 32:
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _2009, address(ext_call.return_data[0]), 128, mem[_2078 + 164 len mem[_2078] + 32]
                        else:
                            mem[floor32(mem[_2078]) + _2078 + 196] = mem[floor32(mem[_2078]) + _2078 + -(mem[_2078] % 32) + 228 len mem[_2078] % 32]
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _2009, address(ext_call.return_data[0]), 128, mem[_2078], mem[_2078 + 196 len floor32(mem[_2078]) + 32]
                    else:
                        _2082 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_2082 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_2082 + 36] = 0
                        mem[_2082 + 68] = _2009
                        mem[_2082 + 100] = address(cd[68])
                        mem[_2082 + 132] = 128
                        mem[_2082 + 164] = mem[_2082]
                        s = 0
                        while s < mem[_2082]:
                            mem[s + _2082 + 196] = mem[s + _2082 + 32]
                            s = s + 32
                            continue 
                        if not mem[_2082] % 32:
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _2009, address(cd[68]), 128, mem[_2082 + 164 len mem[_2082] + 32]
                        else:
                            mem[floor32(mem[_2082]) + _2082 + 196] = mem[floor32(mem[_2082]) + _2082 + -(mem[_2082] % 32) + 228 len mem[_2082] % 32]
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _2009, address(cd[68]), 128, mem[_2082], mem[_2082 + 196 len floor32(mem[_2082]) + 32]
                else:
                    if idx < mem[(64 * ('cd', 36).length) + 352] - 2:
                        _2086 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_2086 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_2086 + 36] = _2009
                        mem[_2086 + 68] = 0
                        mem[_2086 + 100] = address(ext_call.return_data[0])
                        mem[_2086 + 132] = 128
                        mem[_2086 + 164] = mem[_2086]
                        s = 0
                        while s < mem[_2086]:
                            mem[s + _2086 + 196] = mem[s + _2086 + 32]
                            s = s + 32
                            continue 
                        if not mem[_2086] % 32:
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _2009, 0, address(ext_call.return_data[0]), 128, mem[_2086 + 164 len mem[_2086] + 32]
                        else:
                            mem[floor32(mem[_2086]) + _2086 + 196] = mem[floor32(mem[_2086]) + _2086 + -(mem[_2086] % 32) + 228 len mem[_2086] % 32]
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _2009, 0, address(ext_call.return_data[0]), 128, mem[_2086], mem[_2086 + 196 len floor32(mem[_2086]) + 32]
                    else:
                        _2090 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_2090 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_2090 + 36] = _2009
                        mem[_2090 + 68] = 0
                        mem[_2090 + 100] = address(cd[68])
                        mem[_2090 + 132] = 128
                        mem[_2090 + 164] = mem[_2090]
                        s = 0
                        while s < mem[_2090]:
                            mem[s + _2090 + 196] = mem[s + _2090 + 32]
                            s = s + 32
                            continue 
                        if not mem[_2090] % 32:
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _2009, 0, address(cd[68]), 128, mem[_2090 + 164 len mem[_2090] + 32]
                        else:
                            mem[floor32(mem[_2090]) + _2090 + 196] = mem[floor32(mem[_2090]) + _2090 + -(mem[_2090] % 32) + 228 len mem[_2090] % 32]
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _2009, 0, address(cd[68]), 128, mem[_2090], mem[_2090 + 196 len floor32(mem[_2090]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            continue 
    else:
        mem[(32 * ('cd', 36).length) + 160 len 32 * ('cd', 36).length] = call.data[calldata.size len 32 * ('cd', 36).length]
        require 0 < ('cd', 36).length
        mem[(32 * ('cd', 36).length) + 160] = msg.value
        idx = 0
        s = 0
        t = 0
        while idx < ('cd', 36).length - 1:
            require idx < ('cd', 36).length
            _710 = mem[(32 * idx) + 128]
            require idx + 1 < ('cd', 36).length
            _715 = mem[(32 * idx + 1) + 128]
            if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                revert with 0, 
                            32,
                            35,
                            0x2150616e63616b654c6962726172793a204944454e544943414c5f4144445245535345,
                            mem[(64 * ('cd', 36).length) + 263 len 29]
            if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                if not mem[(32 * idx) + 140 len 20]:
                    revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getReserves() with:
                        gas gas_remaining wei
                mem[(64 * ('cd', 36).length) + 160 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                if address(_710) == address(_710):
                    require idx < mem[(32 * ('cd', 36).length) + 128]
                    if mem[(32 * idx) + (32 * ('cd', 36).length) + 160] <= 0:
                        revert with 0, 
                                    32,
                                    41,
                                    0xfe50616e63616b654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                    mem[(64 * ('cd', 36).length) + 269 len 23]
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                    mem[(64 * ('cd', 36).length) + 266 len 26]
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                    mem[(64 * ('cd', 36).length) + 266 len 26]
                    if 9975 * mem[(32 * idx) + (32 * ('cd', 36).length) + 160] / 9975 != mem[(32 * idx) + (32 * ('cd', 36).length) + 160]:
                        revert with 0, 'ds-math-mul-overflow'
                    if not Mask(112, 0, ext_call.return_data[32]):
                        if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + (32 * ('cd', 36).length) + 160]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-add-overflow'
                        require (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + (32 * ('cd', 36).length) + 160])
                        require idx + 1 < mem[(32 * ('cd', 36).length) + 128]
                        mem[(32 * idx + 1) + (32 * ('cd', 36).length) + 160] = 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + (32 * ('cd', 36).length) + 160])
                    else:
                        require Mask(112, 0, ext_call.return_data[32])
                        if 9975 * mem[(32 * idx) + (32 * ('cd', 36).length) + 160] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 9975 * mem[(32 * idx) + (32 * ('cd', 36).length) + 160]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + (32 * ('cd', 36).length) + 160]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-add-overflow'
                        require (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + (32 * ('cd', 36).length) + 160])
                        require idx + 1 < mem[(32 * ('cd', 36).length) + 128]
                        mem[(32 * idx + 1) + (32 * ('cd', 36).length) + 160] = 9975 * mem[(32 * idx) + (32 * ('cd', 36).length) + 160] * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + (32 * ('cd', 36).length) + 160])
                    idx = idx + 1
                    s = Mask(112, 0, ext_call.return_data[32])
                    t = Mask(112, 0, ext_call.return_data[0])
                    continue 
            else:
                if not mem[(32 * idx + 1) + 140 len 20]:
                    revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getReserves() with:
                        gas gas_remaining wei
                mem[(64 * ('cd', 36).length) + 160 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                if address(_715) == address(_710):
                    require idx < mem[(32 * ('cd', 36).length) + 128]
                    if mem[(32 * idx) + (32 * ('cd', 36).length) + 160] <= 0:
                        revert with 0, 
                                    32,
                                    41,
                                    0xfe50616e63616b654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                    mem[(64 * ('cd', 36).length) + 269 len 23]
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                    mem[(64 * ('cd', 36).length) + 266 len 26]
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                    mem[(64 * ('cd', 36).length) + 266 len 26]
                    if 9975 * mem[(32 * idx) + (32 * ('cd', 36).length) + 160] / 9975 != mem[(32 * idx) + (32 * ('cd', 36).length) + 160]:
                        revert with 0, 'ds-math-mul-overflow'
                    if not Mask(112, 0, ext_call.return_data[32]):
                        if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + (32 * ('cd', 36).length) + 160]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-add-overflow'
                        require (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + (32 * ('cd', 36).length) + 160])
                        require idx + 1 < mem[(32 * ('cd', 36).length) + 128]
                        mem[(32 * idx + 1) + (32 * ('cd', 36).length) + 160] = 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + (32 * ('cd', 36).length) + 160])
                    else:
                        require Mask(112, 0, ext_call.return_data[32])
                        if 9975 * mem[(32 * idx) + (32 * ('cd', 36).length) + 160] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 9975 * mem[(32 * idx) + (32 * ('cd', 36).length) + 160]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + (32 * ('cd', 36).length) + 160]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-add-overflow'
                        require (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + (32 * ('cd', 36).length) + 160])
                        require idx + 1 < mem[(32 * ('cd', 36).length) + 128]
                        mem[(32 * idx + 1) + (32 * ('cd', 36).length) + 160] = 9975 * mem[(32 * idx) + (32 * ('cd', 36).length) + 160] * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + (32 * ('cd', 36).length) + 160])
                    idx = idx + 1
                    s = Mask(112, 0, ext_call.return_data[32])
                    t = Mask(112, 0, ext_call.return_data[0])
                    continue 
            require idx < mem[(32 * ('cd', 36).length) + 128]
            if mem[(32 * idx) + (32 * ('cd', 36).length) + 160] <= 0:
                revert with 0, 
                            32,
                            41,
                            0xfe50616e63616b654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                            mem[(64 * ('cd', 36).length) + 269 len 23]
            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                revert with 0, 
                            32,
                            38,
                            0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                            mem[(64 * ('cd', 36).length) + 266 len 26]
            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                revert with 0, 
                            32,
                            38,
                            0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                            mem[(64 * ('cd', 36).length) + 266 len 26]
            if 9975 * mem[(32 * idx) + (32 * ('cd', 36).length) + 160] / 9975 != mem[(32 * idx) + (32 * ('cd', 36).length) + 160]:
                revert with 0, 'ds-math-mul-overflow'
            if not Mask(112, 0, ext_call.return_data[0]):
                if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'ds-math-mul-overflow'
                if (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + (32 * ('cd', 36).length) + 160]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'ds-math-add-overflow'
                require (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + (32 * ('cd', 36).length) + 160])
                require idx + 1 < mem[(32 * ('cd', 36).length) + 128]
                mem[(32 * idx + 1) + (32 * ('cd', 36).length) + 160] = 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + (32 * ('cd', 36).length) + 160])
            else:
                require Mask(112, 0, ext_call.return_data[0])
                if 9975 * mem[(32 * idx) + (32 * ('cd', 36).length) + 160] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 9975 * mem[(32 * idx) + (32 * ('cd', 36).length) + 160]:
                    revert with 0, 'ds-math-mul-overflow'
                if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'ds-math-mul-overflow'
                if (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + (32 * ('cd', 36).length) + 160]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'ds-math-add-overflow'
                require (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + (32 * ('cd', 36).length) + 160])
                require idx + 1 < mem[(32 * ('cd', 36).length) + 128]
                mem[(32 * idx + 1) + (32 * ('cd', 36).length) + 160] = 9975 * mem[(32 * idx) + (32 * ('cd', 36).length) + 160] * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + (32 * ('cd', 36).length) + 160])
            idx = idx + 1
            s = Mask(112, 0, ext_call.return_data[0])
            t = Mask(112, 0, ext_call.return_data[32])
            continue 
        mem[(64 * ('cd', 36).length) + 160] = 2
        mem[64] = (64 * ('cd', 36).length) + 256
        require 1 < ('cd', 36).length
        mem[(64 * ('cd', 36).length) + 192] = address(('cd', 36)[1])
        require 0 < ('cd', 36).length
        mem[(64 * ('cd', 36).length) + 224] = address(('cd', 36)[0])
        require mem[(32 * ('cd', 36).length) + 128] - 1 < mem[(32 * ('cd', 36).length) + 128]
        _727 = mem[(32 * mem[(32 * ('cd', 36).length) + 128] - 1) + (32 * ('cd', 36).length) + 160]
        mem[(64 * ('cd', 36).length) + 256] = 2
        mem[64] = (64 * ('cd', 36).length) + 352
        mem[(64 * ('cd', 36).length) + 288 len 64] = call.data[calldata.size len 64]
        mem[(64 * ('cd', 36).length) + 288] = _727
        u = 0
        while u < 1:
            require u < 2
            if mem[(32 * u) + (64 * ('cd', 36).length) + 288] <= 0:
                revert with 0, 
                            32,
                            41,
                            0xfe50616e63616b654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                            mem[(64 * ('cd', 36).length) + 461 len 23]
            if s <= 0:
                revert with 0, 
                            32,
                            38,
                            0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                            mem[(64 * ('cd', 36).length) + 458 len 26]
            if t <= 0:
                revert with 0, 
                            32,
                            38,
                            0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                            mem[(64 * ('cd', 36).length) + 458 len 26]
            if 9975 * mem[(32 * u) + (64 * ('cd', 36).length) + 288] / 9975 != mem[(32 * u) + (64 * ('cd', 36).length) + 288]:
                revert with 0, 'ds-math-mul-overflow'
            if not t:
                if 10000 * s / 10000 != s:
                    revert with 0, 'ds-math-mul-overflow'
                if (10000 * s) + (9975 * mem[(32 * u) + (64 * ('cd', 36).length) + 288]) < 10000 * s:
                    revert with 0, 'ds-math-add-overflow'
                require (10000 * s) + (9975 * mem[(32 * u) + (64 * ('cd', 36).length) + 288])
                require u + 1 < 2
                mem[(32 * u + 1) + (64 * ('cd', 36).length) + 288] = 0 / (10000 * s) + (9975 * mem[(32 * u) + (64 * ('cd', 36).length) + 288])
            else:
                require t
                if 9975 * mem[(32 * u) + (64 * ('cd', 36).length) + 288] * t / t != 9975 * mem[(32 * u) + (64 * ('cd', 36).length) + 288]:
                    revert with 0, 'ds-math-mul-overflow'
                if 10000 * s / 10000 != s:
                    revert with 0, 'ds-math-mul-overflow'
                if (10000 * s) + (9975 * mem[(32 * u) + (64 * ('cd', 36).length) + 288]) < 10000 * s:
                    revert with 0, 'ds-math-add-overflow'
                require (10000 * s) + (9975 * mem[(32 * u) + (64 * ('cd', 36).length) + 288])
                require u + 1 < 2
                mem[(32 * u + 1) + (64 * ('cd', 36).length) + 288] = 9975 * mem[(32 * u) + (64 * ('cd', 36).length) + 288] * t / (10000 * s) + (9975 * mem[(32 * u) + (64 * ('cd', 36).length) + 288])
            u = u + 1
            continue 
        require mem[(32 * ('cd', 36).length) + 128] - 1 < mem[(32 * ('cd', 36).length) + 128]
        if mem[(32 * mem[(32 * ('cd', 36).length) + 128] - 1) + (32 * ('cd', 36).length) + 160] < cd[4]:
            revert with 0, '-,'
        if mem[(64 * ('cd', 36).length) + 320] < msg.value * cd[100] / 100:
            revert with 0, '-,'
        require mem[(32 * ('cd', 36).length) + 128]
        mem[(64 * ('cd', 36).length) + 352] = 0xd0e30db000000000000000000000000000000000000000000000000000000000
        require ext_code.size(WETHAddress)
        call WETHAddress.deposit() with:
           value mem[(32 * ('cd', 36).length) + 160] wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require mem[(32 * ('cd', 36).length) + 128]
        mem[(64 * ('cd', 36).length) + 356] = address(ext_call.return_data[0])
        mem[(64 * ('cd', 36).length) + 388] = mem[(32 * ('cd', 36).length) + 160]
        require ext_code.size(WETHAddress)
        call WETHAddress.0xa9059cbb with:
             gas gas_remaining wei
            args address(ext_call.return_data[0]), mem[(32 * ('cd', 36).length) + 160]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        mem[64] = (98 * ('cd', 36).length) + 384
        mem[(64 * ('cd', 36).length) + 352] = ('cd', 36).length
        mem[(64 * ('cd', 36).length) + 384 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
        mem[(98 * ('cd', 36).length) + 384] = 0
        idx = 0
        while idx < ('cd', 36).length - 1:
            require idx < mem[(64 * ('cd', 36).length) + 352]
            require idx + 1 < mem[(64 * ('cd', 36).length) + 352]
            if mem[(32 * idx) + (64 * ('cd', 36).length) + 396 len 20] == mem[(32 * idx + 1) + (64 * ('cd', 36).length) + 396 len 20]:
                revert with 0, 32, 35, 0x2150616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 103 len 29]
            if mem[(32 * idx) + (64 * ('cd', 36).length) + 396 len 20] < mem[(32 * idx + 1) + (64 * ('cd', 36).length) + 396 len 20]:
                if not mem[(32 * idx) + (64 * ('cd', 36).length) + 396 len 20]:
                    revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                require idx + 1 < mem[(32 * ('cd', 36).length) + 128]
                _2012 = mem[(32 * idx + 1) + (32 * ('cd', 36).length) + 160]
                if mem[(32 * idx) + (64 * ('cd', 36).length) + 396 len 20] == mem[(32 * idx) + (64 * ('cd', 36).length) + 396 len 20]:
                    if idx < mem[(64 * ('cd', 36).length) + 352] - 2:
                        _2126 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_2126 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_2126 + 36] = 0
                        mem[_2126 + 68] = _2012
                        mem[_2126 + 100] = address(ext_call.return_data[0])
                        mem[_2126 + 132] = 128
                        mem[_2126 + 164] = mem[_2126]
                        s = 0
                        while s < mem[_2126]:
                            mem[s + _2126 + 196] = mem[s + _2126 + 32]
                            s = s + 32
                            continue 
                        if not mem[_2126] % 32:
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _2012, address(ext_call.return_data[0]), 128, mem[_2126 + 164 len mem[_2126] + 32]
                        else:
                            mem[floor32(mem[_2126]) + _2126 + 196] = mem[floor32(mem[_2126]) + _2126 + -(mem[_2126] % 32) + 228 len mem[_2126] % 32]
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _2012, address(ext_call.return_data[0]), 128, mem[_2126], mem[_2126 + 196 len floor32(mem[_2126]) + 32]
                    else:
                        _2130 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_2130 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_2130 + 36] = 0
                        mem[_2130 + 68] = _2012
                        mem[_2130 + 100] = address(cd[68])
                        mem[_2130 + 132] = 128
                        mem[_2130 + 164] = mem[_2130]
                        s = 0
                        while s < mem[_2130]:
                            mem[s + _2130 + 196] = mem[s + _2130 + 32]
                            s = s + 32
                            continue 
                        if not mem[_2130] % 32:
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _2012, address(cd[68]), 128, mem[_2130 + 164 len mem[_2130] + 32]
                        else:
                            mem[floor32(mem[_2130]) + _2130 + 196] = mem[floor32(mem[_2130]) + _2130 + -(mem[_2130] % 32) + 228 len mem[_2130] % 32]
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _2012, address(cd[68]), 128, mem[_2130], mem[_2130 + 196 len floor32(mem[_2130]) + 32]
                else:
                    if idx < mem[(64 * ('cd', 36).length) + 352] - 2:
                        _2134 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_2134 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_2134 + 36] = _2012
                        mem[_2134 + 68] = 0
                        mem[_2134 + 100] = address(ext_call.return_data[0])
                        mem[_2134 + 132] = 128
                        mem[_2134 + 164] = mem[_2134]
                        s = 0
                        while s < mem[_2134]:
                            mem[s + _2134 + 196] = mem[s + _2134 + 32]
                            s = s + 32
                            continue 
                        if not mem[_2134] % 32:
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _2012, 0, address(ext_call.return_data[0]), 128, mem[_2134 + 164 len mem[_2134] + 32]
                        else:
                            mem[floor32(mem[_2134]) + _2134 + 196] = mem[floor32(mem[_2134]) + _2134 + -(mem[_2134] % 32) + 228 len mem[_2134] % 32]
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _2012, 0, address(ext_call.return_data[0]), 128, mem[_2134], mem[_2134 + 196 len floor32(mem[_2134]) + 32]
                    else:
                        _2138 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_2138 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_2138 + 36] = _2012
                        mem[_2138 + 68] = 0
                        mem[_2138 + 100] = address(cd[68])
                        mem[_2138 + 132] = 128
                        mem[_2138 + 164] = mem[_2138]
                        s = 0
                        while s < mem[_2138]:
                            mem[s + _2138 + 196] = mem[s + _2138 + 32]
                            s = s + 32
                            continue 
                        if not mem[_2138] % 32:
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _2012, 0, address(cd[68]), 128, mem[_2138 + 164 len mem[_2138] + 32]
                        else:
                            mem[floor32(mem[_2138]) + _2138 + 196] = mem[floor32(mem[_2138]) + _2138 + -(mem[_2138] % 32) + 228 len mem[_2138] % 32]
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _2012, 0, address(cd[68]), 128, mem[_2138], mem[_2138 + 196 len floor32(mem[_2138]) + 32]
            else:
                if not mem[(32 * idx + 1) + (64 * ('cd', 36).length) + 396 len 20]:
                    revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                require idx + 1 < mem[(32 * ('cd', 36).length) + 128]
                _2013 = mem[(32 * idx + 1) + (32 * ('cd', 36).length) + 160]
                if mem[(32 * idx) + (64 * ('cd', 36).length) + 396 len 20] == mem[(32 * idx + 1) + (64 * ('cd', 36).length) + 396 len 20]:
                    if idx < mem[(64 * ('cd', 36).length) + 352] - 2:
                        _2142 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_2142 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_2142 + 36] = 0
                        mem[_2142 + 68] = _2013
                        mem[_2142 + 100] = address(ext_call.return_data[0])
                        mem[_2142 + 132] = 128
                        mem[_2142 + 164] = mem[_2142]
                        s = 0
                        while s < mem[_2142]:
                            mem[s + _2142 + 196] = mem[s + _2142 + 32]
                            s = s + 32
                            continue 
                        if not mem[_2142] % 32:
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _2013, address(ext_call.return_data[0]), 128, mem[_2142 + 164 len mem[_2142] + 32]
                        else:
                            mem[floor32(mem[_2142]) + _2142 + 196] = mem[floor32(mem[_2142]) + _2142 + -(mem[_2142] % 32) + 228 len mem[_2142] % 32]
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _2013, address(ext_call.return_data[0]), 128, mem[_2142], mem[_2142 + 196 len floor32(mem[_2142]) + 32]
                    else:
                        _2146 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_2146 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_2146 + 36] = 0
                        mem[_2146 + 68] = _2013
                        mem[_2146 + 100] = address(cd[68])
                        mem[_2146 + 132] = 128
                        mem[_2146 + 164] = mem[_2146]
                        s = 0
                        while s < mem[_2146]:
                            mem[s + _2146 + 196] = mem[s + _2146 + 32]
                            s = s + 32
                            continue 
                        if not mem[_2146] % 32:
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _2013, address(cd[68]), 128, mem[_2146 + 164 len mem[_2146] + 32]
                        else:
                            mem[floor32(mem[_2146]) + _2146 + 196] = mem[floor32(mem[_2146]) + _2146 + -(mem[_2146] % 32) + 228 len mem[_2146] % 32]
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _2013, address(cd[68]), 128, mem[_2146], mem[_2146 + 196 len floor32(mem[_2146]) + 32]
                else:
                    if idx < mem[(64 * ('cd', 36).length) + 352] - 2:
                        _2150 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_2150 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_2150 + 36] = _2013
                        mem[_2150 + 68] = 0
                        mem[_2150 + 100] = address(ext_call.return_data[0])
                        mem[_2150 + 132] = 128
                        mem[_2150 + 164] = mem[_2150]
                        s = 0
                        while s < mem[_2150]:
                            mem[s + _2150 + 196] = mem[s + _2150 + 32]
                            s = s + 32
                            continue 
                        if not mem[_2150] % 32:
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _2013, 0, address(ext_call.return_data[0]), 128, mem[_2150 + 164 len mem[_2150] + 32]
                        else:
                            mem[floor32(mem[_2150]) + _2150 + 196] = mem[floor32(mem[_2150]) + _2150 + -(mem[_2150] % 32) + 228 len mem[_2150] % 32]
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _2013, 0, address(ext_call.return_data[0]), 128, mem[_2150], mem[_2150 + 196 len floor32(mem[_2150]) + 32]
                    else:
                        _2154 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_2154 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_2154 + 36] = _2013
                        mem[_2154 + 68] = 0
                        mem[_2154 + 100] = address(cd[68])
                        mem[_2154 + 132] = 128
                        mem[_2154 + 164] = mem[_2154]
                        s = 0
                        while s < mem[_2154]:
                            mem[s + _2154 + 196] = mem[s + _2154 + 32]
                            s = s + 32
                            continue 
                        if not mem[_2154] % 32:
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _2013, 0, address(cd[68]), 128, mem[_2154 + 164 len mem[_2154] + 32]
                        else:
                            mem[floor32(mem[_2154]) + _2154 + 196] = mem[floor32(mem[_2154]) + _2154 + -(mem[_2154] % 32) + 228 len mem[_2154] % 32]
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _2013, 0, address(cd[68]), 128, mem[_2154], mem[_2154 + 196 len floor32(mem[_2154]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            continue 
}

function sub_ad7dfbcb(?) payable {
    require calldata.size - 4 >= 160
    require cd[36] <= 4294967296
    require cd[36] + 36 <= calldata.size
    require ('cd', 36).length <= 4294967296 and cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    mem[0] = msg.sender
    mem[32] = 4
    if not stor4[msg.sender]:
        revert with 0, 'Wey: Mau ngapain lo ?'
    require ('cd', 36).length
    if address(('cd', 36)[0]) != WETHAddress:
        revert with 0, 'PancakeRouter: INVALID_PATH'
    mem[224] = 0
    require ('cd', 36).length
    require 1 < ('cd', 36).length
    mem[260] = address(('cd', 36)[0])
    mem[292] = address(('cd', 36)[1])
    require ext_code.size(sub_d5bfbe4cAddress)
    staticcall sub_d5bfbe4cAddress.getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(('cd', 36)[0]), address(('cd', 36)[1])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[96] = ext_call.return_data[12 len 20]
    mem[256] = ('cd', 36).length
    mem[288 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
    if ('cd', 36).length < 2:
        revert with 0, 'PancakeLibrary: INVALID_PATH'
    require ('cd', 36).length <= test266151307()
    mem[(32 * ('cd', 36).length) + 288] = ('cd', 36).length
    if not ('cd', 36).length:
        require 0 < ('cd', 36).length
        mem[(32 * ('cd', 36).length) + 320] = msg.value
        idx = 0
        s = 0
        t = 0
        while idx < ('cd', 36).length - 1:
            require idx < ('cd', 36).length
            _1156 = mem[(32 * idx) + 288]
            require idx + 1 < ('cd', 36).length
            _1161 = mem[(32 * idx + 1) + 288]
            if mem[(32 * idx) + 300 len 20] == mem[(32 * idx + 1) + 300 len 20]:
                revert with 0, 
                            32,
                            35,
                            0x2150616e63616b654c6962726172793a204944454e544943414c5f4144445245535345,
                            mem[(64 * ('cd', 36).length) + 423 len 29]
            if mem[(32 * idx) + 300 len 20] < mem[(32 * idx + 1) + 300 len 20]:
                if not mem[(32 * idx) + 300 len 20]:
                    revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getReserves() with:
                        gas gas_remaining wei
                mem[(64 * ('cd', 36).length) + 320 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                if address(_1156) == address(_1156):
                    require idx < mem[(32 * ('cd', 36).length) + 288]
                    if mem[(32 * idx) + (32 * ('cd', 36).length) + 320] <= 0:
                        revert with 0, 
                                    32,
                                    41,
                                    0xfe50616e63616b654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                    mem[(64 * ('cd', 36).length) + 429 len 23]
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                    mem[(64 * ('cd', 36).length) + 426 len 26]
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                    mem[(64 * ('cd', 36).length) + 426 len 26]
                    if 9975 * mem[(32 * idx) + (32 * ('cd', 36).length) + 320] / 9975 != mem[(32 * idx) + (32 * ('cd', 36).length) + 320]:
                        revert with 0, 'ds-math-mul-overflow'
                    if not Mask(112, 0, ext_call.return_data[32]):
                        if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + (32 * ('cd', 36).length) + 320]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-add-overflow'
                        require (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + (32 * ('cd', 36).length) + 320])
                        require idx + 1 < mem[(32 * ('cd', 36).length) + 288]
                        mem[(32 * idx + 1) + (32 * ('cd', 36).length) + 320] = 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + (32 * ('cd', 36).length) + 320])
                    else:
                        require Mask(112, 0, ext_call.return_data[32])
                        if 9975 * mem[(32 * idx) + (32 * ('cd', 36).length) + 320] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 9975 * mem[(32 * idx) + (32 * ('cd', 36).length) + 320]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + (32 * ('cd', 36).length) + 320]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-add-overflow'
                        require (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + (32 * ('cd', 36).length) + 320])
                        require idx + 1 < mem[(32 * ('cd', 36).length) + 288]
                        mem[(32 * idx + 1) + (32 * ('cd', 36).length) + 320] = 9975 * mem[(32 * idx) + (32 * ('cd', 36).length) + 320] * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + (32 * ('cd', 36).length) + 320])
                    idx = idx + 1
                    s = Mask(112, 0, ext_call.return_data[32])
                    t = Mask(112, 0, ext_call.return_data[0])
                    continue 
            else:
                if not mem[(32 * idx + 1) + 300 len 20]:
                    revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getReserves() with:
                        gas gas_remaining wei
                mem[(64 * ('cd', 36).length) + 320 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                if address(_1161) == address(_1156):
                    require idx < mem[(32 * ('cd', 36).length) + 288]
                    if mem[(32 * idx) + (32 * ('cd', 36).length) + 320] <= 0:
                        revert with 0, 
                                    32,
                                    41,
                                    0xfe50616e63616b654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                    mem[(64 * ('cd', 36).length) + 429 len 23]
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                    mem[(64 * ('cd', 36).length) + 426 len 26]
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                    mem[(64 * ('cd', 36).length) + 426 len 26]
                    if 9975 * mem[(32 * idx) + (32 * ('cd', 36).length) + 320] / 9975 != mem[(32 * idx) + (32 * ('cd', 36).length) + 320]:
                        revert with 0, 'ds-math-mul-overflow'
                    if not Mask(112, 0, ext_call.return_data[32]):
                        if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + (32 * ('cd', 36).length) + 320]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-add-overflow'
                        require (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + (32 * ('cd', 36).length) + 320])
                        require idx + 1 < mem[(32 * ('cd', 36).length) + 288]
                        mem[(32 * idx + 1) + (32 * ('cd', 36).length) + 320] = 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + (32 * ('cd', 36).length) + 320])
                    else:
                        require Mask(112, 0, ext_call.return_data[32])
                        if 9975 * mem[(32 * idx) + (32 * ('cd', 36).length) + 320] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 9975 * mem[(32 * idx) + (32 * ('cd', 36).length) + 320]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + (32 * ('cd', 36).length) + 320]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-add-overflow'
                        require (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + (32 * ('cd', 36).length) + 320])
                        require idx + 1 < mem[(32 * ('cd', 36).length) + 288]
                        mem[(32 * idx + 1) + (32 * ('cd', 36).length) + 320] = 9975 * mem[(32 * idx) + (32 * ('cd', 36).length) + 320] * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + (32 * ('cd', 36).length) + 320])
                    idx = idx + 1
                    s = Mask(112, 0, ext_call.return_data[32])
                    t = Mask(112, 0, ext_call.return_data[0])
                    continue 
            require idx < mem[(32 * ('cd', 36).length) + 288]
            if mem[(32 * idx) + (32 * ('cd', 36).length) + 320] <= 0:
                revert with 0, 
                            32,
                            41,
                            0xfe50616e63616b654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                            mem[(64 * ('cd', 36).length) + 429 len 23]
            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                revert with 0, 
                            32,
                            38,
                            0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                            mem[(64 * ('cd', 36).length) + 426 len 26]
            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                revert with 0, 
                            32,
                            38,
                            0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                            mem[(64 * ('cd', 36).length) + 426 len 26]
            if 9975 * mem[(32 * idx) + (32 * ('cd', 36).length) + 320] / 9975 != mem[(32 * idx) + (32 * ('cd', 36).length) + 320]:
                revert with 0, 'ds-math-mul-overflow'
            if not Mask(112, 0, ext_call.return_data[0]):
                if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'ds-math-mul-overflow'
                if (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + (32 * ('cd', 36).length) + 320]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'ds-math-add-overflow'
                require (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + (32 * ('cd', 36).length) + 320])
                require idx + 1 < mem[(32 * ('cd', 36).length) + 288]
                mem[(32 * idx + 1) + (32 * ('cd', 36).length) + 320] = 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + (32 * ('cd', 36).length) + 320])
            else:
                require Mask(112, 0, ext_call.return_data[0])
                if 9975 * mem[(32 * idx) + (32 * ('cd', 36).length) + 320] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 9975 * mem[(32 * idx) + (32 * ('cd', 36).length) + 320]:
                    revert with 0, 'ds-math-mul-overflow'
                if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'ds-math-mul-overflow'
                if (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + (32 * ('cd', 36).length) + 320]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'ds-math-add-overflow'
                require (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + (32 * ('cd', 36).length) + 320])
                require idx + 1 < mem[(32 * ('cd', 36).length) + 288]
                mem[(32 * idx + 1) + (32 * ('cd', 36).length) + 320] = 9975 * mem[(32 * idx) + (32 * ('cd', 36).length) + 320] * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + (32 * ('cd', 36).length) + 320])
            idx = idx + 1
            s = Mask(112, 0, ext_call.return_data[0])
            t = Mask(112, 0, ext_call.return_data[32])
            continue 
        mem[160] = s
        mem[128] = t
        mem[192] = msg.value * cd[100] / 100
        mem[(64 * ('cd', 36).length) + 320] = 2
        require 1 < ('cd', 36).length
        mem[(64 * ('cd', 36).length) + 352] = address(('cd', 36)[1])
        require 0 < ('cd', 36).length
        mem[(64 * ('cd', 36).length) + 384] = address(('cd', 36)[0])
        require mem[(32 * ('cd', 36).length) + 288] - 1 < mem[(32 * ('cd', 36).length) + 288]
        _1175 = mem[(32 * mem[(32 * ('cd', 36).length) + 288] - 1) + (32 * ('cd', 36).length) + 320]
        mem[(64 * ('cd', 36).length) + 416] = 2
        mem[(64 * ('cd', 36).length) + 448 len 64] = call.data[calldata.size len 64]
        mem[(64 * ('cd', 36).length) + 448] = _1175
        idx = 0
        while idx < 1:
            require idx < 2
            if mem[(32 * idx) + (64 * ('cd', 36).length) + 448] <= 0:
                revert with 0, 
                            32,
                            41,
                            0xfe50616e63616b654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                            mem[(64 * ('cd', 36).length) + 621 len 23]
            if s <= 0:
                revert with 0, 
                            32,
                            38,
                            0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                            mem[(64 * ('cd', 36).length) + 618 len 26]
            if t <= 0:
                revert with 0, 
                            32,
                            38,
                            0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                            mem[(64 * ('cd', 36).length) + 618 len 26]
            if 9975 * mem[(32 * idx) + (64 * ('cd', 36).length) + 448] / 9975 != mem[(32 * idx) + (64 * ('cd', 36).length) + 448]:
                revert with 0, 'ds-math-mul-overflow'
            if not t:
                if 10000 * s / 10000 != s:
                    revert with 0, 'ds-math-mul-overflow'
                if (10000 * s) + (9975 * mem[(32 * idx) + (64 * ('cd', 36).length) + 448]) < 10000 * s:
                    revert with 0, 'ds-math-add-overflow'
                require (10000 * s) + (9975 * mem[(32 * idx) + (64 * ('cd', 36).length) + 448])
                require idx + 1 < 2
                mem[(32 * idx + 1) + (64 * ('cd', 36).length) + 448] = 0 / (10000 * s) + (9975 * mem[(32 * idx) + (64 * ('cd', 36).length) + 448])
            else:
                require t
                if 9975 * mem[(32 * idx) + (64 * ('cd', 36).length) + 448] * t / t != 9975 * mem[(32 * idx) + (64 * ('cd', 36).length) + 448]:
                    revert with 0, 'ds-math-mul-overflow'
                if 10000 * s / 10000 != s:
                    revert with 0, 'ds-math-mul-overflow'
                if (10000 * s) + (9975 * mem[(32 * idx) + (64 * ('cd', 36).length) + 448]) < 10000 * s:
                    revert with 0, 'ds-math-add-overflow'
                require (10000 * s) + (9975 * mem[(32 * idx) + (64 * ('cd', 36).length) + 448])
                require idx + 1 < 2
                mem[(32 * idx + 1) + (64 * ('cd', 36).length) + 448] = 9975 * mem[(32 * idx) + (64 * ('cd', 36).length) + 448] * t / (10000 * s) + (9975 * mem[(32 * idx) + (64 * ('cd', 36).length) + 448])
            idx = idx + 1
            continue 
        require mem[(32 * ('cd', 36).length) + 288] - 1 < mem[(32 * ('cd', 36).length) + 288]
        if mem[(32 * mem[(32 * ('cd', 36).length) + 288] - 1) + (32 * ('cd', 36).length) + 320] < cd[4]:
            revert with 0, '-,'
        if mem[(64 * ('cd', 36).length) + 480] < msg.value * cd[100] / 100:
            revert with 0, '-,'
        require mem[(32 * ('cd', 36).length) + 288]
        mem[(64 * ('cd', 36).length) + 512] = 0xd0e30db000000000000000000000000000000000000000000000000000000000
        require ext_code.size(WETHAddress)
        call WETHAddress.deposit() with:
           value mem[(32 * ('cd', 36).length) + 320] wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require mem[(32 * ('cd', 36).length) + 288]
        mem[(64 * ('cd', 36).length) + 516] = mem[108 len 20]
        mem[(64 * ('cd', 36).length) + 548] = mem[(32 * ('cd', 36).length) + 320]
        require ext_code.size(WETHAddress)
        call WETHAddress.0xa9059cbb with:
             gas gas_remaining wei
            args mem[108 len 20], mem[(32 * ('cd', 36).length) + 320]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        mem[64] = (98 * ('cd', 36).length) + 544
        mem[(64 * ('cd', 36).length) + 512] = ('cd', 36).length
        mem[(64 * ('cd', 36).length) + 544 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
        mem[(98 * ('cd', 36).length) + 544] = 0
        idx = 0
        while idx < ('cd', 36).length - 1:
            require idx < mem[(64 * ('cd', 36).length) + 512]
            require idx + 1 < mem[(64 * ('cd', 36).length) + 512]
            if mem[(32 * idx) + (64 * ('cd', 36).length) + 556 len 20] == mem[(32 * idx + 1) + (64 * ('cd', 36).length) + 556 len 20]:
                revert with 0, 32, 35, 0x2150616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 103 len 29]
            if mem[(32 * idx) + (64 * ('cd', 36).length) + 556 len 20] < mem[(32 * idx + 1) + (64 * ('cd', 36).length) + 556 len 20]:
                if not mem[(32 * idx) + (64 * ('cd', 36).length) + 556 len 20]:
                    revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                require idx + 1 < mem[(32 * ('cd', 36).length) + 288]
                _3277 = mem[(32 * idx + 1) + (32 * ('cd', 36).length) + 320]
                if mem[(32 * idx) + (64 * ('cd', 36).length) + 556 len 20] == mem[(32 * idx) + (64 * ('cd', 36).length) + 556 len 20]:
                    if idx < mem[(64 * ('cd', 36).length) + 512] - 2:
                        _3347 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_3347 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_3347 + 36] = 0
                        mem[_3347 + 68] = _3277
                        mem[_3347 + 100] = address(ext_call.return_data[12 len 20])
                        mem[_3347 + 132] = 128
                        mem[_3347 + 164] = mem[_3347]
                        s = 0
                        while s < mem[_3347]:
                            mem[s + _3347 + 196] = mem[s + _3347 + 32]
                            s = s + 32
                            continue 
                        if not mem[_3347] % 32:
                            require ext_code.size(address(ext_call.return_data[12 len 20]))
                            call address(ext_call.return_data[12 len 20]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _3277, address(ext_call.return_data[12 len 20]), 128, mem[_3347 + 164 len mem[_3347] + 32]
                        else:
                            mem[floor32(mem[_3347]) + _3347 + 196] = mem[floor32(mem[_3347]) + _3347 + -(mem[_3347] % 32) + 228 len mem[_3347] % 32]
                            require ext_code.size(address(ext_call.return_data[12 len 20]))
                            call address(ext_call.return_data[12 len 20]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _3277, address(ext_call.return_data[12 len 20]), 128, mem[_3347], mem[_3347 + 196 len floor32(mem[_3347]) + 32]
                    else:
                        _3351 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_3351 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_3351 + 36] = 0
                        mem[_3351 + 68] = _3277
                        mem[_3351 + 100] = this.address
                        mem[_3351 + 132] = 128
                        mem[_3351 + 164] = mem[_3351]
                        s = 0
                        while s < mem[_3351]:
                            mem[s + _3351 + 196] = mem[s + _3351 + 32]
                            s = s + 32
                            continue 
                        if not mem[_3351] % 32:
                            require ext_code.size(address(ext_call.return_data[12 len 20]))
                            call address(ext_call.return_data[12 len 20]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _3277, address(this.address), 128, mem[_3351 + 164 len mem[_3351] + 32]
                        else:
                            mem[floor32(mem[_3351]) + _3351 + 196] = mem[floor32(mem[_3351]) + _3351 + -(mem[_3351] % 32) + 228 len mem[_3351] % 32]
                            require ext_code.size(address(ext_call.return_data[12 len 20]))
                            call address(ext_call.return_data[12 len 20]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _3277, address(this.address), 128, mem[_3351], mem[_3351 + 196 len floor32(mem[_3351]) + 32]
                else:
                    if idx < mem[(64 * ('cd', 36).length) + 512] - 2:
                        _3355 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_3355 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_3355 + 36] = _3277
                        mem[_3355 + 68] = 0
                        mem[_3355 + 100] = address(ext_call.return_data[12 len 20])
                        mem[_3355 + 132] = 128
                        mem[_3355 + 164] = mem[_3355]
                        s = 0
                        while s < mem[_3355]:
                            mem[s + _3355 + 196] = mem[s + _3355 + 32]
                            s = s + 32
                            continue 
                        if not mem[_3355] % 32:
                            require ext_code.size(address(ext_call.return_data[12 len 20]))
                            call address(ext_call.return_data[12 len 20]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _3277, 0, address(ext_call.return_data[12 len 20]), 128, mem[_3355 + 164 len mem[_3355] + 32]
                        else:
                            mem[floor32(mem[_3355]) + _3355 + 196] = mem[floor32(mem[_3355]) + _3355 + -(mem[_3355] % 32) + 228 len mem[_3355] % 32]
                            require ext_code.size(address(ext_call.return_data[12 len 20]))
                            call address(ext_call.return_data[12 len 20]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _3277, 0, address(ext_call.return_data[12 len 20]), 128, mem[_3355], mem[_3355 + 196 len floor32(mem[_3355]) + 32]
                    else:
                        _3359 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_3359 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_3359 + 36] = _3277
                        mem[_3359 + 68] = 0
                        mem[_3359 + 100] = this.address
                        mem[_3359 + 132] = 128
                        mem[_3359 + 164] = mem[_3359]
                        s = 0
                        while s < mem[_3359]:
                            mem[s + _3359 + 196] = mem[s + _3359 + 32]
                            s = s + 32
                            continue 
                        if not mem[_3359] % 32:
                            require ext_code.size(address(ext_call.return_data[12 len 20]))
                            call address(ext_call.return_data[12 len 20]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _3277, 0, address(this.address), 128, mem[_3359 + 164 len mem[_3359] + 32]
                        else:
                            mem[floor32(mem[_3359]) + _3359 + 196] = mem[floor32(mem[_3359]) + _3359 + -(mem[_3359] % 32) + 228 len mem[_3359] % 32]
                            require ext_code.size(address(ext_call.return_data[12 len 20]))
                            call address(ext_call.return_data[12 len 20]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _3277, 0, address(this.address), 128, mem[_3359], mem[_3359 + 196 len floor32(mem[_3359]) + 32]
            else:
                if not mem[(32 * idx + 1) + (64 * ('cd', 36).length) + 556 len 20]:
                    revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                require idx + 1 < mem[(32 * ('cd', 36).length) + 288]
                _3278 = mem[(32 * idx + 1) + (32 * ('cd', 36).length) + 320]
                if mem[(32 * idx) + (64 * ('cd', 36).length) + 556 len 20] == mem[(32 * idx + 1) + (64 * ('cd', 36).length) + 556 len 20]:
                    if idx < mem[(64 * ('cd', 36).length) + 512] - 2:
                        _3363 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_3363 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_3363 + 36] = 0
                        mem[_3363 + 68] = _3278
                        mem[_3363 + 100] = address(ext_call.return_data[12 len 20])
                        mem[_3363 + 132] = 128
                        mem[_3363 + 164] = mem[_3363]
                        s = 0
                        while s < mem[_3363]:
                            mem[s + _3363 + 196] = mem[s + _3363 + 32]
                            s = s + 32
                            continue 
                        if not mem[_3363] % 32:
                            require ext_code.size(address(ext_call.return_data[12 len 20]))
                            call address(ext_call.return_data[12 len 20]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _3278, address(ext_call.return_data[12 len 20]), 128, mem[_3363 + 164 len mem[_3363] + 32]
                        else:
                            mem[floor32(mem[_3363]) + _3363 + 196] = mem[floor32(mem[_3363]) + _3363 + -(mem[_3363] % 32) + 228 len mem[_3363] % 32]
                            require ext_code.size(address(ext_call.return_data[12 len 20]))
                            call address(ext_call.return_data[12 len 20]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _3278, address(ext_call.return_data[12 len 20]), 128, mem[_3363], mem[_3363 + 196 len floor32(mem[_3363]) + 32]
                    else:
                        _3367 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_3367 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_3367 + 36] = 0
                        mem[_3367 + 68] = _3278
                        mem[_3367 + 100] = this.address
                        mem[_3367 + 132] = 128
                        mem[_3367 + 164] = mem[_3367]
                        s = 0
                        while s < mem[_3367]:
                            mem[s + _3367 + 196] = mem[s + _3367 + 32]
                            s = s + 32
                            continue 
                        if not mem[_3367] % 32:
                            require ext_code.size(address(ext_call.return_data[12 len 20]))
                            call address(ext_call.return_data[12 len 20]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _3278, address(this.address), 128, mem[_3367 + 164 len mem[_3367] + 32]
                        else:
                            mem[floor32(mem[_3367]) + _3367 + 196] = mem[floor32(mem[_3367]) + _3367 + -(mem[_3367] % 32) + 228 len mem[_3367] % 32]
                            require ext_code.size(address(ext_call.return_data[12 len 20]))
                            call address(ext_call.return_data[12 len 20]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _3278, address(this.address), 128, mem[_3367], mem[_3367 + 196 len floor32(mem[_3367]) + 32]
                else:
                    if idx < mem[(64 * ('cd', 36).length) + 512] - 2:
                        _3371 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_3371 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_3371 + 36] = _3278
                        mem[_3371 + 68] = 0
                        mem[_3371 + 100] = address(ext_call.return_data[12 len 20])
                        mem[_3371 + 132] = 128
                        mem[_3371 + 164] = mem[_3371]
                        s = 0
                        while s < mem[_3371]:
                            mem[s + _3371 + 196] = mem[s + _3371 + 32]
                            s = s + 32
                            continue 
                        if not mem[_3371] % 32:
                            require ext_code.size(address(ext_call.return_data[12 len 20]))
                            call address(ext_call.return_data[12 len 20]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _3278, 0, address(ext_call.return_data[12 len 20]), 128, mem[_3371 + 164 len mem[_3371] + 32]
                        else:
                            mem[floor32(mem[_3371]) + _3371 + 196] = mem[floor32(mem[_3371]) + _3371 + -(mem[_3371] % 32) + 228 len mem[_3371] % 32]
                            require ext_code.size(address(ext_call.return_data[12 len 20]))
                            call address(ext_call.return_data[12 len 20]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _3278, 0, address(ext_call.return_data[12 len 20]), 128, mem[_3371], mem[_3371 + 196 len floor32(mem[_3371]) + 32]
                    else:
                        _3375 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_3375 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_3375 + 36] = _3278
                        mem[_3375 + 68] = 0
                        mem[_3375 + 100] = this.address
                        mem[_3375 + 132] = 128
                        mem[_3375 + 164] = mem[_3375]
                        s = 0
                        while s < mem[_3375]:
                            mem[s + _3375 + 196] = mem[s + _3375 + 32]
                            s = s + 32
                            continue 
                        if not mem[_3375] % 32:
                            require ext_code.size(address(ext_call.return_data[12 len 20]))
                            call address(ext_call.return_data[12 len 20]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _3278, 0, address(this.address), 128, mem[_3375 + 164 len mem[_3375] + 32]
                        else:
                            mem[floor32(mem[_3375]) + _3375 + 196] = mem[floor32(mem[_3375]) + _3375 + -(mem[_3375] % 32) + 228 len mem[_3375] % 32]
                            require ext_code.size(address(ext_call.return_data[12 len 20]))
                            call address(ext_call.return_data[12 len 20]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _3278, 0, address(this.address), 128, mem[_3375], mem[_3375 + 196 len floor32(mem[_3375]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            continue 
        mem[224] = msg.value * cd[132] / 100
        require 1 < mem[(64 * ('cd', 36).length) + 416]
        if mem[(64 * ('cd', 36).length) + 480] < msg.value * cd[132] / 100:
            revert with 0, '-,'
        _3198 = mem[96]
        _3868 = mem[(64 * ('cd', 36).length) + 320]
        idx = 0
        while idx < _3868 - 1:
            require idx < mem[(64 * ('cd', 36).length) + 320]
            require idx + 1 < mem[(64 * ('cd', 36).length) + 320]
            if mem[(32 * idx) + (64 * ('cd', 36).length) + 364 len 20] == mem[(32 * idx + 1) + (64 * ('cd', 36).length) + 364 len 20]:
                revert with 0, 32, 35, 0x2150616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 103 len 29]
            if mem[(32 * idx) + (64 * ('cd', 36).length) + 364 len 20] < mem[(32 * idx + 1) + (64 * ('cd', 36).length) + 364 len 20]:
                if not mem[(32 * idx) + (64 * ('cd', 36).length) + 364 len 20]:
                    revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                require idx + 1 < mem[(64 * ('cd', 36).length) + 416]
                _4065 = mem[(32 * idx + 1) + (64 * ('cd', 36).length) + 448]
                if mem[(32 * idx) + (64 * ('cd', 36).length) + 364 len 20] == mem[(32 * idx) + (64 * ('cd', 36).length) + 364 len 20]:
                    if idx < mem[(64 * ('cd', 36).length) + 320] - 2:
                        _4119 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_4119 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_4119 + 36] = 0
                        mem[_4119 + 68] = _4065
                        mem[_4119 + 100] = address(_3198)
                        mem[_4119 + 132] = 128
                        mem[_4119 + 164] = mem[_4119]
                        s = 0
                        while s < mem[_4119]:
                            mem[s + _4119 + 196] = mem[s + _4119 + 32]
                            s = s + 32
                            continue 
                        if not mem[_4119] % 32:
                            require ext_code.size(address(_3198))
                            call address(_3198).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _4065, address(_3198), 128, mem[_4119 + 164 len mem[_4119] + 32]
                        else:
                            mem[floor32(mem[_4119]) + _4119 + 196] = mem[floor32(mem[_4119]) + _4119 + -(mem[_4119] % 32) + 228 len mem[_4119] % 32]
                            require ext_code.size(address(_3198))
                            call address(_3198).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _4065, address(_3198), 128, mem[_4119], mem[_4119 + 196 len floor32(mem[_4119]) + 32]
                    else:
                        _4123 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_4123 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_4123 + 36] = 0
                        mem[_4123 + 68] = _4065
                        mem[_4123 + 100] = this.address
                        mem[_4123 + 132] = 128
                        mem[_4123 + 164] = mem[_4123]
                        s = 0
                        while s < mem[_4123]:
                            mem[s + _4123 + 196] = mem[s + _4123 + 32]
                            s = s + 32
                            continue 
                        if not mem[_4123] % 32:
                            require ext_code.size(address(_3198))
                            call address(_3198).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _4065, address(this.address), 128, mem[_4123 + 164 len mem[_4123] + 32]
                        else:
                            mem[floor32(mem[_4123]) + _4123 + 196] = mem[floor32(mem[_4123]) + _4123 + -(mem[_4123] % 32) + 228 len mem[_4123] % 32]
                            require ext_code.size(address(_3198))
                            call address(_3198).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _4065, address(this.address), 128, mem[_4123], mem[_4123 + 196 len floor32(mem[_4123]) + 32]
                else:
                    if idx < mem[(64 * ('cd', 36).length) + 320] - 2:
                        _4127 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_4127 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_4127 + 36] = _4065
                        mem[_4127 + 68] = 0
                        mem[_4127 + 100] = address(_3198)
                        mem[_4127 + 132] = 128
                        mem[_4127 + 164] = mem[_4127]
                        s = 0
                        while s < mem[_4127]:
                            mem[s + _4127 + 196] = mem[s + _4127 + 32]
                            s = s + 32
                            continue 
                        if not mem[_4127] % 32:
                            require ext_code.size(address(_3198))
                            call address(_3198).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _4065, 0, address(_3198), 128, mem[_4127 + 164 len mem[_4127] + 32]
                        else:
                            mem[floor32(mem[_4127]) + _4127 + 196] = mem[floor32(mem[_4127]) + _4127 + -(mem[_4127] % 32) + 228 len mem[_4127] % 32]
                            require ext_code.size(address(_3198))
                            call address(_3198).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _4065, 0, address(_3198), 128, mem[_4127], mem[_4127 + 196 len floor32(mem[_4127]) + 32]
                    else:
                        _4131 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_4131 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_4131 + 36] = _4065
                        mem[_4131 + 68] = 0
                        mem[_4131 + 100] = this.address
                        mem[_4131 + 132] = 128
                        mem[_4131 + 164] = mem[_4131]
                        s = 0
                        while s < mem[_4131]:
                            mem[s + _4131 + 196] = mem[s + _4131 + 32]
                            s = s + 32
                            continue 
                        if not mem[_4131] % 32:
                            require ext_code.size(address(_3198))
                            call address(_3198).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _4065, 0, address(this.address), 128, mem[_4131 + 164 len mem[_4131] + 32]
                        else:
                            mem[floor32(mem[_4131]) + _4131 + 196] = mem[floor32(mem[_4131]) + _4131 + -(mem[_4131] % 32) + 228 len mem[_4131] % 32]
                            require ext_code.size(address(_3198))
                            call address(_3198).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _4065, 0, address(this.address), 128, mem[_4131], mem[_4131 + 196 len floor32(mem[_4131]) + 32]
            else:
                if not mem[(32 * idx + 1) + (64 * ('cd', 36).length) + 364 len 20]:
                    revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                require idx + 1 < mem[(64 * ('cd', 36).length) + 416]
                _4066 = mem[(32 * idx + 1) + (64 * ('cd', 36).length) + 448]
                if mem[(32 * idx) + (64 * ('cd', 36).length) + 364 len 20] == mem[(32 * idx + 1) + (64 * ('cd', 36).length) + 364 len 20]:
                    if idx < mem[(64 * ('cd', 36).length) + 320] - 2:
                        _4135 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_4135 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_4135 + 36] = 0
                        mem[_4135 + 68] = _4066
                        mem[_4135 + 100] = address(_3198)
                        mem[_4135 + 132] = 128
                        mem[_4135 + 164] = mem[_4135]
                        s = 0
                        while s < mem[_4135]:
                            mem[s + _4135 + 196] = mem[s + _4135 + 32]
                            s = s + 32
                            continue 
                        if not mem[_4135] % 32:
                            require ext_code.size(address(_3198))
                            call address(_3198).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _4066, address(_3198), 128, mem[_4135 + 164 len mem[_4135] + 32]
                        else:
                            mem[floor32(mem[_4135]) + _4135 + 196] = mem[floor32(mem[_4135]) + _4135 + -(mem[_4135] % 32) + 228 len mem[_4135] % 32]
                            require ext_code.size(address(_3198))
                            call address(_3198).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _4066, address(_3198), 128, mem[_4135], mem[_4135 + 196 len floor32(mem[_4135]) + 32]
                    else:
                        _4139 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_4139 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_4139 + 36] = 0
                        mem[_4139 + 68] = _4066
                        mem[_4139 + 100] = this.address
                        mem[_4139 + 132] = 128
                        mem[_4139 + 164] = mem[_4139]
                        s = 0
                        while s < mem[_4139]:
                            mem[s + _4139 + 196] = mem[s + _4139 + 32]
                            s = s + 32
                            continue 
                        if not mem[_4139] % 32:
                            require ext_code.size(address(_3198))
                            call address(_3198).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _4066, address(this.address), 128, mem[_4139 + 164 len mem[_4139] + 32]
                        else:
                            mem[floor32(mem[_4139]) + _4139 + 196] = mem[floor32(mem[_4139]) + _4139 + -(mem[_4139] % 32) + 228 len mem[_4139] % 32]
                            require ext_code.size(address(_3198))
                            call address(_3198).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _4066, address(this.address), 128, mem[_4139], mem[_4139 + 196 len floor32(mem[_4139]) + 32]
                else:
                    if idx < mem[(64 * ('cd', 36).length) + 320] - 2:
                        _4143 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_4143 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_4143 + 36] = _4066
                        mem[_4143 + 68] = 0
                        mem[_4143 + 100] = address(_3198)
                        mem[_4143 + 132] = 128
                        mem[_4143 + 164] = mem[_4143]
                        s = 0
                        while s < mem[_4143]:
                            mem[s + _4143 + 196] = mem[s + _4143 + 32]
                            s = s + 32
                            continue 
                        if not mem[_4143] % 32:
                            require ext_code.size(address(_3198))
                            call address(_3198).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _4066, 0, address(_3198), 128, mem[_4143 + 164 len mem[_4143] + 32]
                        else:
                            mem[floor32(mem[_4143]) + _4143 + 196] = mem[floor32(mem[_4143]) + _4143 + -(mem[_4143] % 32) + 228 len mem[_4143] % 32]
                            require ext_code.size(address(_3198))
                            call address(_3198).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _4066, 0, address(_3198), 128, mem[_4143], mem[_4143 + 196 len floor32(mem[_4143]) + 32]
                    else:
                        _4147 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_4147 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_4147 + 36] = _4066
                        mem[_4147 + 68] = 0
                        mem[_4147 + 100] = this.address
                        mem[_4147 + 132] = 128
                        mem[_4147 + 164] = mem[_4147]
                        s = 0
                        while s < mem[_4147]:
                            mem[s + _4147 + 196] = mem[s + _4147 + 32]
                            s = s + 32
                            continue 
                        if not mem[_4147] % 32:
                            require ext_code.size(address(_3198))
                            call address(_3198).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _4066, 0, address(this.address), 128, mem[_4147 + 164 len mem[_4147] + 32]
                        else:
                            mem[floor32(mem[_4147]) + _4147 + 196] = mem[floor32(mem[_4147]) + _4147 + -(mem[_4147] % 32) + 228 len mem[_4147] % 32]
                            require ext_code.size(address(_3198))
                            call address(_3198).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _4066, 0, address(this.address), 128, mem[_4147], mem[_4147 + 196 len floor32(mem[_4147]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            continue 
    else:
        mem[(32 * ('cd', 36).length) + 320 len 32 * ('cd', 36).length] = call.data[calldata.size len 32 * ('cd', 36).length]
        require 0 < ('cd', 36).length
        mem[(32 * ('cd', 36).length) + 320] = msg.value
        idx = 0
        s = 0
        t = 0
        while idx < ('cd', 36).length - 1:
            require idx < ('cd', 36).length
            _1159 = mem[(32 * idx) + 288]
            require idx + 1 < ('cd', 36).length
            _1162 = mem[(32 * idx + 1) + 288]
            if mem[(32 * idx) + 300 len 20] == mem[(32 * idx + 1) + 300 len 20]:
                revert with 0, 
                            32,
                            35,
                            0x2150616e63616b654c6962726172793a204944454e544943414c5f4144445245535345,
                            mem[(64 * ('cd', 36).length) + 423 len 29]
            if mem[(32 * idx) + 300 len 20] < mem[(32 * idx + 1) + 300 len 20]:
                if not mem[(32 * idx) + 300 len 20]:
                    revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getReserves() with:
                        gas gas_remaining wei
                mem[(64 * ('cd', 36).length) + 320 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                if address(_1159) == address(_1159):
                    require idx < mem[(32 * ('cd', 36).length) + 288]
                    if mem[(32 * idx) + (32 * ('cd', 36).length) + 320] <= 0:
                        revert with 0, 
                                    32,
                                    41,
                                    0xfe50616e63616b654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                    mem[(64 * ('cd', 36).length) + 429 len 23]
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                    mem[(64 * ('cd', 36).length) + 426 len 26]
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                    mem[(64 * ('cd', 36).length) + 426 len 26]
                    if 9975 * mem[(32 * idx) + (32 * ('cd', 36).length) + 320] / 9975 != mem[(32 * idx) + (32 * ('cd', 36).length) + 320]:
                        revert with 0, 'ds-math-mul-overflow'
                    if not Mask(112, 0, ext_call.return_data[32]):
                        if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + (32 * ('cd', 36).length) + 320]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-add-overflow'
                        require (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + (32 * ('cd', 36).length) + 320])
                        require idx + 1 < mem[(32 * ('cd', 36).length) + 288]
                        mem[(32 * idx + 1) + (32 * ('cd', 36).length) + 320] = 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + (32 * ('cd', 36).length) + 320])
                    else:
                        require Mask(112, 0, ext_call.return_data[32])
                        if 9975 * mem[(32 * idx) + (32 * ('cd', 36).length) + 320] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 9975 * mem[(32 * idx) + (32 * ('cd', 36).length) + 320]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + (32 * ('cd', 36).length) + 320]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-add-overflow'
                        require (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + (32 * ('cd', 36).length) + 320])
                        require idx + 1 < mem[(32 * ('cd', 36).length) + 288]
                        mem[(32 * idx + 1) + (32 * ('cd', 36).length) + 320] = 9975 * mem[(32 * idx) + (32 * ('cd', 36).length) + 320] * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + (32 * ('cd', 36).length) + 320])
                    idx = idx + 1
                    s = Mask(112, 0, ext_call.return_data[32])
                    t = Mask(112, 0, ext_call.return_data[0])
                    continue 
            else:
                if not mem[(32 * idx + 1) + 300 len 20]:
                    revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getReserves() with:
                        gas gas_remaining wei
                mem[(64 * ('cd', 36).length) + 320 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                if address(_1162) == address(_1159):
                    require idx < mem[(32 * ('cd', 36).length) + 288]
                    if mem[(32 * idx) + (32 * ('cd', 36).length) + 320] <= 0:
                        revert with 0, 
                                    32,
                                    41,
                                    0xfe50616e63616b654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                    mem[(64 * ('cd', 36).length) + 429 len 23]
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                    mem[(64 * ('cd', 36).length) + 426 len 26]
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                    mem[(64 * ('cd', 36).length) + 426 len 26]
                    if 9975 * mem[(32 * idx) + (32 * ('cd', 36).length) + 320] / 9975 != mem[(32 * idx) + (32 * ('cd', 36).length) + 320]:
                        revert with 0, 'ds-math-mul-overflow'
                    if not Mask(112, 0, ext_call.return_data[32]):
                        if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + (32 * ('cd', 36).length) + 320]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-add-overflow'
                        require (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + (32 * ('cd', 36).length) + 320])
                        require idx + 1 < mem[(32 * ('cd', 36).length) + 288]
                        mem[(32 * idx + 1) + (32 * ('cd', 36).length) + 320] = 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + (32 * ('cd', 36).length) + 320])
                    else:
                        require Mask(112, 0, ext_call.return_data[32])
                        if 9975 * mem[(32 * idx) + (32 * ('cd', 36).length) + 320] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 9975 * mem[(32 * idx) + (32 * ('cd', 36).length) + 320]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + (32 * ('cd', 36).length) + 320]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-add-overflow'
                        require (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + (32 * ('cd', 36).length) + 320])
                        require idx + 1 < mem[(32 * ('cd', 36).length) + 288]
                        mem[(32 * idx + 1) + (32 * ('cd', 36).length) + 320] = 9975 * mem[(32 * idx) + (32 * ('cd', 36).length) + 320] * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + (32 * ('cd', 36).length) + 320])
                    idx = idx + 1
                    s = Mask(112, 0, ext_call.return_data[32])
                    t = Mask(112, 0, ext_call.return_data[0])
                    continue 
            require idx < mem[(32 * ('cd', 36).length) + 288]
            if mem[(32 * idx) + (32 * ('cd', 36).length) + 320] <= 0:
                revert with 0, 
                            32,
                            41,
                            0xfe50616e63616b654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                            mem[(64 * ('cd', 36).length) + 429 len 23]
            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                revert with 0, 
                            32,
                            38,
                            0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                            mem[(64 * ('cd', 36).length) + 426 len 26]
            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                revert with 0, 
                            32,
                            38,
                            0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                            mem[(64 * ('cd', 36).length) + 426 len 26]
            if 9975 * mem[(32 * idx) + (32 * ('cd', 36).length) + 320] / 9975 != mem[(32 * idx) + (32 * ('cd', 36).length) + 320]:
                revert with 0, 'ds-math-mul-overflow'
            if not Mask(112, 0, ext_call.return_data[0]):
                if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'ds-math-mul-overflow'
                if (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + (32 * ('cd', 36).length) + 320]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'ds-math-add-overflow'
                require (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + (32 * ('cd', 36).length) + 320])
                require idx + 1 < mem[(32 * ('cd', 36).length) + 288]
                mem[(32 * idx + 1) + (32 * ('cd', 36).length) + 320] = 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + (32 * ('cd', 36).length) + 320])
            else:
                require Mask(112, 0, ext_call.return_data[0])
                if 9975 * mem[(32 * idx) + (32 * ('cd', 36).length) + 320] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 9975 * mem[(32 * idx) + (32 * ('cd', 36).length) + 320]:
                    revert with 0, 'ds-math-mul-overflow'
                if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'ds-math-mul-overflow'
                if (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + (32 * ('cd', 36).length) + 320]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'ds-math-add-overflow'
                require (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + (32 * ('cd', 36).length) + 320])
                require idx + 1 < mem[(32 * ('cd', 36).length) + 288]
                mem[(32 * idx + 1) + (32 * ('cd', 36).length) + 320] = 9975 * mem[(32 * idx) + (32 * ('cd', 36).length) + 320] * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + (32 * ('cd', 36).length) + 320])
            idx = idx + 1
            s = Mask(112, 0, ext_call.return_data[0])
            t = Mask(112, 0, ext_call.return_data[32])
            continue 
        mem[160] = s
        mem[128] = t
        mem[192] = msg.value * cd[100] / 100
        mem[(64 * ('cd', 36).length) + 320] = 2
        require 1 < ('cd', 36).length
        mem[(64 * ('cd', 36).length) + 352] = address(('cd', 36)[1])
        require 0 < ('cd', 36).length
        mem[(64 * ('cd', 36).length) + 384] = address(('cd', 36)[0])
        require mem[(32 * ('cd', 36).length) + 288] - 1 < mem[(32 * ('cd', 36).length) + 288]
        _1182 = mem[(32 * mem[(32 * ('cd', 36).length) + 288] - 1) + (32 * ('cd', 36).length) + 320]
        mem[(64 * ('cd', 36).length) + 416] = 2
        mem[(64 * ('cd', 36).length) + 448 len 64] = call.data[calldata.size len 64]
        mem[(64 * ('cd', 36).length) + 448] = _1182
        idx = 0
        while idx < 1:
            require idx < 2
            if mem[(32 * idx) + (64 * ('cd', 36).length) + 448] <= 0:
                revert with 0, 
                            32,
                            41,
                            0xfe50616e63616b654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                            mem[(64 * ('cd', 36).length) + 621 len 23]
            if s <= 0:
                revert with 0, 
                            32,
                            38,
                            0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                            mem[(64 * ('cd', 36).length) + 618 len 26]
            if t <= 0:
                revert with 0, 
                            32,
                            38,
                            0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                            mem[(64 * ('cd', 36).length) + 618 len 26]
            if 9975 * mem[(32 * idx) + (64 * ('cd', 36).length) + 448] / 9975 != mem[(32 * idx) + (64 * ('cd', 36).length) + 448]:
                revert with 0, 'ds-math-mul-overflow'
            if not t:
                if 10000 * s / 10000 != s:
                    revert with 0, 'ds-math-mul-overflow'
                if (10000 * s) + (9975 * mem[(32 * idx) + (64 * ('cd', 36).length) + 448]) < 10000 * s:
                    revert with 0, 'ds-math-add-overflow'
                require (10000 * s) + (9975 * mem[(32 * idx) + (64 * ('cd', 36).length) + 448])
                require idx + 1 < 2
                mem[(32 * idx + 1) + (64 * ('cd', 36).length) + 448] = 0 / (10000 * s) + (9975 * mem[(32 * idx) + (64 * ('cd', 36).length) + 448])
            else:
                require t
                if 9975 * mem[(32 * idx) + (64 * ('cd', 36).length) + 448] * t / t != 9975 * mem[(32 * idx) + (64 * ('cd', 36).length) + 448]:
                    revert with 0, 'ds-math-mul-overflow'
                if 10000 * s / 10000 != s:
                    revert with 0, 'ds-math-mul-overflow'
                if (10000 * s) + (9975 * mem[(32 * idx) + (64 * ('cd', 36).length) + 448]) < 10000 * s:
                    revert with 0, 'ds-math-add-overflow'
                require (10000 * s) + (9975 * mem[(32 * idx) + (64 * ('cd', 36).length) + 448])
                require idx + 1 < 2
                mem[(32 * idx + 1) + (64 * ('cd', 36).length) + 448] = 9975 * mem[(32 * idx) + (64 * ('cd', 36).length) + 448] * t / (10000 * s) + (9975 * mem[(32 * idx) + (64 * ('cd', 36).length) + 448])
            idx = idx + 1
            continue 
        require mem[(32 * ('cd', 36).length) + 288] - 1 < mem[(32 * ('cd', 36).length) + 288]
        if mem[(32 * mem[(32 * ('cd', 36).length) + 288] - 1) + (32 * ('cd', 36).length) + 320] < cd[4]:
            revert with 0, '-,'
        if mem[(64 * ('cd', 36).length) + 480] < msg.value * cd[100] / 100:
            revert with 0, '-,'
        require mem[(32 * ('cd', 36).length) + 288]
        mem[(64 * ('cd', 36).length) + 512] = 0xd0e30db000000000000000000000000000000000000000000000000000000000
        require ext_code.size(WETHAddress)
        call WETHAddress.deposit() with:
           value mem[(32 * ('cd', 36).length) + 320] wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require mem[(32 * ('cd', 36).length) + 288]
        mem[(64 * ('cd', 36).length) + 516] = mem[108 len 20]
        mem[(64 * ('cd', 36).length) + 548] = mem[(32 * ('cd', 36).length) + 320]
        require ext_code.size(WETHAddress)
        call WETHAddress.0xa9059cbb with:
             gas gas_remaining wei
            args mem[108 len 20], mem[(32 * ('cd', 36).length) + 320]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        mem[64] = (98 * ('cd', 36).length) + 544
        mem[(64 * ('cd', 36).length) + 512] = ('cd', 36).length
        mem[(64 * ('cd', 36).length) + 544 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
        mem[(98 * ('cd', 36).length) + 544] = 0
        idx = 0
        while idx < ('cd', 36).length - 1:
            require idx < mem[(64 * ('cd', 36).length) + 512]
            require idx + 1 < mem[(64 * ('cd', 36).length) + 512]
            if mem[(32 * idx) + (64 * ('cd', 36).length) + 556 len 20] == mem[(32 * idx + 1) + (64 * ('cd', 36).length) + 556 len 20]:
                revert with 0, 32, 35, 0x2150616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 103 len 29]
            if mem[(32 * idx) + (64 * ('cd', 36).length) + 556 len 20] < mem[(32 * idx + 1) + (64 * ('cd', 36).length) + 556 len 20]:
                if not mem[(32 * idx) + (64 * ('cd', 36).length) + 556 len 20]:
                    revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                require idx + 1 < mem[(32 * ('cd', 36).length) + 288]
                _3281 = mem[(32 * idx + 1) + (32 * ('cd', 36).length) + 320]
                if mem[(32 * idx) + (64 * ('cd', 36).length) + 556 len 20] == mem[(32 * idx) + (64 * ('cd', 36).length) + 556 len 20]:
                    if idx < mem[(64 * ('cd', 36).length) + 512] - 2:
                        _3419 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_3419 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_3419 + 36] = 0
                        mem[_3419 + 68] = _3281
                        mem[_3419 + 100] = address(ext_call.return_data[12 len 20])
                        mem[_3419 + 132] = 128
                        mem[_3419 + 164] = mem[_3419]
                        s = 0
                        while s < mem[_3419]:
                            mem[s + _3419 + 196] = mem[s + _3419 + 32]
                            s = s + 32
                            continue 
                        if not mem[_3419] % 32:
                            require ext_code.size(address(ext_call.return_data[12 len 20]))
                            call address(ext_call.return_data[12 len 20]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _3281, address(ext_call.return_data[12 len 20]), 128, mem[_3419 + 164 len mem[_3419] + 32]
                        else:
                            mem[floor32(mem[_3419]) + _3419 + 196] = mem[floor32(mem[_3419]) + _3419 + -(mem[_3419] % 32) + 228 len mem[_3419] % 32]
                            require ext_code.size(address(ext_call.return_data[12 len 20]))
                            call address(ext_call.return_data[12 len 20]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _3281, address(ext_call.return_data[12 len 20]), 128, mem[_3419], mem[_3419 + 196 len floor32(mem[_3419]) + 32]
                    else:
                        _3423 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_3423 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_3423 + 36] = 0
                        mem[_3423 + 68] = _3281
                        mem[_3423 + 100] = this.address
                        mem[_3423 + 132] = 128
                        mem[_3423 + 164] = mem[_3423]
                        s = 0
                        while s < mem[_3423]:
                            mem[s + _3423 + 196] = mem[s + _3423 + 32]
                            s = s + 32
                            continue 
                        if not mem[_3423] % 32:
                            require ext_code.size(address(ext_call.return_data[12 len 20]))
                            call address(ext_call.return_data[12 len 20]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _3281, address(this.address), 128, mem[_3423 + 164 len mem[_3423] + 32]
                        else:
                            mem[floor32(mem[_3423]) + _3423 + 196] = mem[floor32(mem[_3423]) + _3423 + -(mem[_3423] % 32) + 228 len mem[_3423] % 32]
                            require ext_code.size(address(ext_call.return_data[12 len 20]))
                            call address(ext_call.return_data[12 len 20]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _3281, address(this.address), 128, mem[_3423], mem[_3423 + 196 len floor32(mem[_3423]) + 32]
                else:
                    if idx < mem[(64 * ('cd', 36).length) + 512] - 2:
                        _3427 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_3427 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_3427 + 36] = _3281
                        mem[_3427 + 68] = 0
                        mem[_3427 + 100] = address(ext_call.return_data[12 len 20])
                        mem[_3427 + 132] = 128
                        mem[_3427 + 164] = mem[_3427]
                        s = 0
                        while s < mem[_3427]:
                            mem[s + _3427 + 196] = mem[s + _3427 + 32]
                            s = s + 32
                            continue 
                        if not mem[_3427] % 32:
                            require ext_code.size(address(ext_call.return_data[12 len 20]))
                            call address(ext_call.return_data[12 len 20]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _3281, 0, address(ext_call.return_data[12 len 20]), 128, mem[_3427 + 164 len mem[_3427] + 32]
                        else:
                            mem[floor32(mem[_3427]) + _3427 + 196] = mem[floor32(mem[_3427]) + _3427 + -(mem[_3427] % 32) + 228 len mem[_3427] % 32]
                            require ext_code.size(address(ext_call.return_data[12 len 20]))
                            call address(ext_call.return_data[12 len 20]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _3281, 0, address(ext_call.return_data[12 len 20]), 128, mem[_3427], mem[_3427 + 196 len floor32(mem[_3427]) + 32]
                    else:
                        _3431 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_3431 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_3431 + 36] = _3281
                        mem[_3431 + 68] = 0
                        mem[_3431 + 100] = this.address
                        mem[_3431 + 132] = 128
                        mem[_3431 + 164] = mem[_3431]
                        s = 0
                        while s < mem[_3431]:
                            mem[s + _3431 + 196] = mem[s + _3431 + 32]
                            s = s + 32
                            continue 
                        if not mem[_3431] % 32:
                            require ext_code.size(address(ext_call.return_data[12 len 20]))
                            call address(ext_call.return_data[12 len 20]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _3281, 0, address(this.address), 128, mem[_3431 + 164 len mem[_3431] + 32]
                        else:
                            mem[floor32(mem[_3431]) + _3431 + 196] = mem[floor32(mem[_3431]) + _3431 + -(mem[_3431] % 32) + 228 len mem[_3431] % 32]
                            require ext_code.size(address(ext_call.return_data[12 len 20]))
                            call address(ext_call.return_data[12 len 20]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _3281, 0, address(this.address), 128, mem[_3431], mem[_3431 + 196 len floor32(mem[_3431]) + 32]
            else:
                if not mem[(32 * idx + 1) + (64 * ('cd', 36).length) + 556 len 20]:
                    revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                require idx + 1 < mem[(32 * ('cd', 36).length) + 288]
                _3282 = mem[(32 * idx + 1) + (32 * ('cd', 36).length) + 320]
                if mem[(32 * idx) + (64 * ('cd', 36).length) + 556 len 20] == mem[(32 * idx + 1) + (64 * ('cd', 36).length) + 556 len 20]:
                    if idx < mem[(64 * ('cd', 36).length) + 512] - 2:
                        _3435 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_3435 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_3435 + 36] = 0
                        mem[_3435 + 68] = _3282
                        mem[_3435 + 100] = address(ext_call.return_data[12 len 20])
                        mem[_3435 + 132] = 128
                        mem[_3435 + 164] = mem[_3435]
                        s = 0
                        while s < mem[_3435]:
                            mem[s + _3435 + 196] = mem[s + _3435 + 32]
                            s = s + 32
                            continue 
                        if not mem[_3435] % 32:
                            require ext_code.size(address(ext_call.return_data[12 len 20]))
                            call address(ext_call.return_data[12 len 20]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _3282, address(ext_call.return_data[12 len 20]), 128, mem[_3435 + 164 len mem[_3435] + 32]
                        else:
                            mem[floor32(mem[_3435]) + _3435 + 196] = mem[floor32(mem[_3435]) + _3435 + -(mem[_3435] % 32) + 228 len mem[_3435] % 32]
                            require ext_code.size(address(ext_call.return_data[12 len 20]))
                            call address(ext_call.return_data[12 len 20]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _3282, address(ext_call.return_data[12 len 20]), 128, mem[_3435], mem[_3435 + 196 len floor32(mem[_3435]) + 32]
                    else:
                        _3439 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_3439 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_3439 + 36] = 0
                        mem[_3439 + 68] = _3282
                        mem[_3439 + 100] = this.address
                        mem[_3439 + 132] = 128
                        mem[_3439 + 164] = mem[_3439]
                        s = 0
                        while s < mem[_3439]:
                            mem[s + _3439 + 196] = mem[s + _3439 + 32]
                            s = s + 32
                            continue 
                        if not mem[_3439] % 32:
                            require ext_code.size(address(ext_call.return_data[12 len 20]))
                            call address(ext_call.return_data[12 len 20]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _3282, address(this.address), 128, mem[_3439 + 164 len mem[_3439] + 32]
                        else:
                            mem[floor32(mem[_3439]) + _3439 + 196] = mem[floor32(mem[_3439]) + _3439 + -(mem[_3439] % 32) + 228 len mem[_3439] % 32]
                            require ext_code.size(address(ext_call.return_data[12 len 20]))
                            call address(ext_call.return_data[12 len 20]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _3282, address(this.address), 128, mem[_3439], mem[_3439 + 196 len floor32(mem[_3439]) + 32]
                else:
                    if idx < mem[(64 * ('cd', 36).length) + 512] - 2:
                        _3443 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_3443 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_3443 + 36] = _3282
                        mem[_3443 + 68] = 0
                        mem[_3443 + 100] = address(ext_call.return_data[12 len 20])
                        mem[_3443 + 132] = 128
                        mem[_3443 + 164] = mem[_3443]
                        s = 0
                        while s < mem[_3443]:
                            mem[s + _3443 + 196] = mem[s + _3443 + 32]
                            s = s + 32
                            continue 
                        if not mem[_3443] % 32:
                            require ext_code.size(address(ext_call.return_data[12 len 20]))
                            call address(ext_call.return_data[12 len 20]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _3282, 0, address(ext_call.return_data[12 len 20]), 128, mem[_3443 + 164 len mem[_3443] + 32]
                        else:
                            mem[floor32(mem[_3443]) + _3443 + 196] = mem[floor32(mem[_3443]) + _3443 + -(mem[_3443] % 32) + 228 len mem[_3443] % 32]
                            require ext_code.size(address(ext_call.return_data[12 len 20]))
                            call address(ext_call.return_data[12 len 20]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _3282, 0, address(ext_call.return_data[12 len 20]), 128, mem[_3443], mem[_3443 + 196 len floor32(mem[_3443]) + 32]
                    else:
                        _3447 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_3447 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_3447 + 36] = _3282
                        mem[_3447 + 68] = 0
                        mem[_3447 + 100] = this.address
                        mem[_3447 + 132] = 128
                        mem[_3447 + 164] = mem[_3447]
                        s = 0
                        while s < mem[_3447]:
                            mem[s + _3447 + 196] = mem[s + _3447 + 32]
                            s = s + 32
                            continue 
                        if not mem[_3447] % 32:
                            require ext_code.size(address(ext_call.return_data[12 len 20]))
                            call address(ext_call.return_data[12 len 20]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _3282, 0, address(this.address), 128, mem[_3447 + 164 len mem[_3447] + 32]
                        else:
                            mem[floor32(mem[_3447]) + _3447 + 196] = mem[floor32(mem[_3447]) + _3447 + -(mem[_3447] % 32) + 228 len mem[_3447] % 32]
                            require ext_code.size(address(ext_call.return_data[12 len 20]))
                            call address(ext_call.return_data[12 len 20]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _3282, 0, address(this.address), 128, mem[_3447], mem[_3447 + 196 len floor32(mem[_3447]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            continue 
        mem[224] = msg.value * cd[132] / 100
        require 1 < mem[(64 * ('cd', 36).length) + 416]
        if mem[(64 * ('cd', 36).length) + 480] < msg.value * cd[132] / 100:
            revert with 0, '-,'
        _3204 = mem[96]
        _3870 = mem[(64 * ('cd', 36).length) + 320]
        idx = 0
        while idx < _3870 - 1:
            require idx < mem[(64 * ('cd', 36).length) + 320]
            require idx + 1 < mem[(64 * ('cd', 36).length) + 320]
            if mem[(32 * idx) + (64 * ('cd', 36).length) + 364 len 20] == mem[(32 * idx + 1) + (64 * ('cd', 36).length) + 364 len 20]:
                revert with 0, 32, 35, 0x2150616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 103 len 29]
            if mem[(32 * idx) + (64 * ('cd', 36).length) + 364 len 20] < mem[(32 * idx + 1) + (64 * ('cd', 36).length) + 364 len 20]:
                if not mem[(32 * idx) + (64 * ('cd', 36).length) + 364 len 20]:
                    revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                require idx + 1 < mem[(64 * ('cd', 36).length) + 416]
                _4069 = mem[(32 * idx + 1) + (64 * ('cd', 36).length) + 448]
                if mem[(32 * idx) + (64 * ('cd', 36).length) + 364 len 20] == mem[(32 * idx) + (64 * ('cd', 36).length) + 364 len 20]:
                    if idx < mem[(64 * ('cd', 36).length) + 320] - 2:
                        _4183 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_4183 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_4183 + 36] = 0
                        mem[_4183 + 68] = _4069
                        mem[_4183 + 100] = address(_3204)
                        mem[_4183 + 132] = 128
                        mem[_4183 + 164] = mem[_4183]
                        s = 0
                        while s < mem[_4183]:
                            mem[s + _4183 + 196] = mem[s + _4183 + 32]
                            s = s + 32
                            continue 
                        if not mem[_4183] % 32:
                            require ext_code.size(address(_3204))
                            call address(_3204).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _4069, address(_3204), 128, mem[_4183 + 164 len mem[_4183] + 32]
                        else:
                            mem[floor32(mem[_4183]) + _4183 + 196] = mem[floor32(mem[_4183]) + _4183 + -(mem[_4183] % 32) + 228 len mem[_4183] % 32]
                            require ext_code.size(address(_3204))
                            call address(_3204).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _4069, address(_3204), 128, mem[_4183], mem[_4183 + 196 len floor32(mem[_4183]) + 32]
                    else:
                        _4187 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_4187 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_4187 + 36] = 0
                        mem[_4187 + 68] = _4069
                        mem[_4187 + 100] = this.address
                        mem[_4187 + 132] = 128
                        mem[_4187 + 164] = mem[_4187]
                        s = 0
                        while s < mem[_4187]:
                            mem[s + _4187 + 196] = mem[s + _4187 + 32]
                            s = s + 32
                            continue 
                        if not mem[_4187] % 32:
                            require ext_code.size(address(_3204))
                            call address(_3204).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _4069, address(this.address), 128, mem[_4187 + 164 len mem[_4187] + 32]
                        else:
                            mem[floor32(mem[_4187]) + _4187 + 196] = mem[floor32(mem[_4187]) + _4187 + -(mem[_4187] % 32) + 228 len mem[_4187] % 32]
                            require ext_code.size(address(_3204))
                            call address(_3204).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _4069, address(this.address), 128, mem[_4187], mem[_4187 + 196 len floor32(mem[_4187]) + 32]
                else:
                    if idx < mem[(64 * ('cd', 36).length) + 320] - 2:
                        _4191 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_4191 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_4191 + 36] = _4069
                        mem[_4191 + 68] = 0
                        mem[_4191 + 100] = address(_3204)
                        mem[_4191 + 132] = 128
                        mem[_4191 + 164] = mem[_4191]
                        s = 0
                        while s < mem[_4191]:
                            mem[s + _4191 + 196] = mem[s + _4191 + 32]
                            s = s + 32
                            continue 
                        if not mem[_4191] % 32:
                            require ext_code.size(address(_3204))
                            call address(_3204).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _4069, 0, address(_3204), 128, mem[_4191 + 164 len mem[_4191] + 32]
                        else:
                            mem[floor32(mem[_4191]) + _4191 + 196] = mem[floor32(mem[_4191]) + _4191 + -(mem[_4191] % 32) + 228 len mem[_4191] % 32]
                            require ext_code.size(address(_3204))
                            call address(_3204).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _4069, 0, address(_3204), 128, mem[_4191], mem[_4191 + 196 len floor32(mem[_4191]) + 32]
                    else:
                        _4195 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_4195 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_4195 + 36] = _4069
                        mem[_4195 + 68] = 0
                        mem[_4195 + 100] = this.address
                        mem[_4195 + 132] = 128
                        mem[_4195 + 164] = mem[_4195]
                        s = 0
                        while s < mem[_4195]:
                            mem[s + _4195 + 196] = mem[s + _4195 + 32]
                            s = s + 32
                            continue 
                        if not mem[_4195] % 32:
                            require ext_code.size(address(_3204))
                            call address(_3204).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _4069, 0, address(this.address), 128, mem[_4195 + 164 len mem[_4195] + 32]
                        else:
                            mem[floor32(mem[_4195]) + _4195 + 196] = mem[floor32(mem[_4195]) + _4195 + -(mem[_4195] % 32) + 228 len mem[_4195] % 32]
                            require ext_code.size(address(_3204))
                            call address(_3204).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _4069, 0, address(this.address), 128, mem[_4195], mem[_4195 + 196 len floor32(mem[_4195]) + 32]
            else:
                if not mem[(32 * idx + 1) + (64 * ('cd', 36).length) + 364 len 20]:
                    revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                require idx + 1 < mem[(64 * ('cd', 36).length) + 416]
                _4070 = mem[(32 * idx + 1) + (64 * ('cd', 36).length) + 448]
                if mem[(32 * idx) + (64 * ('cd', 36).length) + 364 len 20] == mem[(32 * idx + 1) + (64 * ('cd', 36).length) + 364 len 20]:
                    if idx < mem[(64 * ('cd', 36).length) + 320] - 2:
                        _4199 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_4199 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_4199 + 36] = 0
                        mem[_4199 + 68] = _4070
                        mem[_4199 + 100] = address(_3204)
                        mem[_4199 + 132] = 128
                        mem[_4199 + 164] = mem[_4199]
                        s = 0
                        while s < mem[_4199]:
                            mem[s + _4199 + 196] = mem[s + _4199 + 32]
                            s = s + 32
                            continue 
                        if not mem[_4199] % 32:
                            require ext_code.size(address(_3204))
                            call address(_3204).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _4070, address(_3204), 128, mem[_4199 + 164 len mem[_4199] + 32]
                        else:
                            mem[floor32(mem[_4199]) + _4199 + 196] = mem[floor32(mem[_4199]) + _4199 + -(mem[_4199] % 32) + 228 len mem[_4199] % 32]
                            require ext_code.size(address(_3204))
                            call address(_3204).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _4070, address(_3204), 128, mem[_4199], mem[_4199 + 196 len floor32(mem[_4199]) + 32]
                    else:
                        _4203 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_4203 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_4203 + 36] = 0
                        mem[_4203 + 68] = _4070
                        mem[_4203 + 100] = this.address
                        mem[_4203 + 132] = 128
                        mem[_4203 + 164] = mem[_4203]
                        s = 0
                        while s < mem[_4203]:
                            mem[s + _4203 + 196] = mem[s + _4203 + 32]
                            s = s + 32
                            continue 
                        if not mem[_4203] % 32:
                            require ext_code.size(address(_3204))
                            call address(_3204).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _4070, address(this.address), 128, mem[_4203 + 164 len mem[_4203] + 32]
                        else:
                            mem[floor32(mem[_4203]) + _4203 + 196] = mem[floor32(mem[_4203]) + _4203 + -(mem[_4203] % 32) + 228 len mem[_4203] % 32]
                            require ext_code.size(address(_3204))
                            call address(_3204).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _4070, address(this.address), 128, mem[_4203], mem[_4203 + 196 len floor32(mem[_4203]) + 32]
                else:
                    if idx < mem[(64 * ('cd', 36).length) + 320] - 2:
                        _4207 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_4207 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_4207 + 36] = _4070
                        mem[_4207 + 68] = 0
                        mem[_4207 + 100] = address(_3204)
                        mem[_4207 + 132] = 128
                        mem[_4207 + 164] = mem[_4207]
                        s = 0
                        while s < mem[_4207]:
                            mem[s + _4207 + 196] = mem[s + _4207 + 32]
                            s = s + 32
                            continue 
                        if not mem[_4207] % 32:
                            require ext_code.size(address(_3204))
                            call address(_3204).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _4070, 0, address(_3204), 128, mem[_4207 + 164 len mem[_4207] + 32]
                        else:
                            mem[floor32(mem[_4207]) + _4207 + 196] = mem[floor32(mem[_4207]) + _4207 + -(mem[_4207] % 32) + 228 len mem[_4207] % 32]
                            require ext_code.size(address(_3204))
                            call address(_3204).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _4070, 0, address(_3204), 128, mem[_4207], mem[_4207 + 196 len floor32(mem[_4207]) + 32]
                    else:
                        _4211 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_4211 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_4211 + 36] = _4070
                        mem[_4211 + 68] = 0
                        mem[_4211 + 100] = this.address
                        mem[_4211 + 132] = 128
                        mem[_4211 + 164] = mem[_4211]
                        s = 0
                        while s < mem[_4211]:
                            mem[s + _4211 + 196] = mem[s + _4211 + 32]
                            s = s + 32
                            continue 
                        if not mem[_4211] % 32:
                            require ext_code.size(address(_3204))
                            call address(_3204).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _4070, 0, address(this.address), 128, mem[_4211 + 164 len mem[_4211] + 32]
                        else:
                            mem[floor32(mem[_4211]) + _4211 + 196] = mem[floor32(mem[_4211]) + _4211 + -(mem[_4211] % 32) + 228 len mem[_4211] % 32]
                            require ext_code.size(address(_3204))
                            call address(_3204).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _4070, 0, address(this.address), 128, mem[_4211], mem[_4211 + 196 len floor32(mem[_4211]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            continue 
    require mem[(64 * ('cd', 36).length) + 416] - 1 < mem[(64 * ('cd', 36).length) + 416]
    require ext_code.size(WETHAddress)
    call WETHAddress.withdraw(uint256 arg1) with:
         gas gas_remaining wei
        args mem[(32 * mem[(64 * ('cd', 36).length) + 416] - 1) + (64 * ('cd', 36).length) + 448]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
