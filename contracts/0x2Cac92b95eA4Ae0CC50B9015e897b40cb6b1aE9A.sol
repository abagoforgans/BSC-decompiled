contract main {




// =====================  Runtime code  =====================


#
#  - sub_ad7dfbcb(?)
#
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
                            0x5450616e63616b654c6962726172793a204944454e544943414c5f4144445245535345,
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
                                    0x4450616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                    mem[(64 * ('cd', 36).length) + 266 len 26]
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x4450616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
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
                                    0x4450616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                    mem[(64 * ('cd', 36).length) + 266 len 26]
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x4450616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
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
                            0x4450616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                            mem[(64 * ('cd', 36).length) + 266 len 26]
            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                revert with 0, 
                            32,
                            38,
                            0x4450616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
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
        require 1 < ('cd', 36).length
        mem[(64 * ('cd', 36).length) + 192] = address(('cd', 36)[1])
        require 0 < ('cd', 36).length
        mem[(64 * ('cd', 36).length) + 224] = address(('cd', 36)[0])
        require mem[(32 * ('cd', 36).length) + 128] - 1 < mem[(32 * ('cd', 36).length) + 128]
        _726 = mem[(32 * mem[(32 * ('cd', 36).length) + 128] - 1) + (32 * ('cd', 36).length) + 160]
        mem[(64 * ('cd', 36).length) + 256] = 2
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
                            0x4450616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                            mem[(64 * ('cd', 36).length) + 458 len 26]
            if t <= 0:
                revert with 0, 
                            32,
                            38,
                            0x4450616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
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
                revert with 0, 32, 35, 0x5450616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 103 len 29]
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
                            0x5450616e63616b654c6962726172793a204944454e544943414c5f4144445245535345,
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
                                    0x4450616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                    mem[(64 * ('cd', 36).length) + 266 len 26]
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x4450616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
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
                                    0x4450616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                    mem[(64 * ('cd', 36).length) + 266 len 26]
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x4450616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
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
                            0x4450616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                            mem[(64 * ('cd', 36).length) + 266 len 26]
            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                revert with 0, 
                            32,
                            38,
                            0x4450616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
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
        require 1 < ('cd', 36).length
        mem[(64 * ('cd', 36).length) + 192] = address(('cd', 36)[1])
        require 0 < ('cd', 36).length
        mem[(64 * ('cd', 36).length) + 224] = address(('cd', 36)[0])
        require mem[(32 * ('cd', 36).length) + 128] - 1 < mem[(32 * ('cd', 36).length) + 128]
        _727 = mem[(32 * mem[(32 * ('cd', 36).length) + 128] - 1) + (32 * ('cd', 36).length) + 160]
        mem[(64 * ('cd', 36).length) + 256] = 2
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
                            0x4450616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                            mem[(64 * ('cd', 36).length) + 458 len 26]
            if t <= 0:
                revert with 0, 
                            32,
                            38,
                            0x4450616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
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
                revert with 0, 32, 35, 0x5450616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 103 len 29]
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

function sub_3f4e48bb(?) {
    require calldata.size - 4 >= 160
    require cd[100] <= 4294967296
    require cd[100] + 36 <= calldata.size
    require ('cd', 100).length <= 4294967296 and cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    require ('cd', 100).length - 1 < ('cd', 100).length
    if address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]) != WETHAddress:
        revert with 0, 'PancakeRouter: INVALID_PATH'
    mem[96] = ('cd', 100).length
    mem[128 len 32 * ('cd', 100).length] = call.data[cd[100] + 36 len 32 * ('cd', 100).length]
    if ('cd', 100).length < 2:
        revert with 0, 'PancakeLibrary: INVALID_PATH'
    require ('cd', 100).length <= test266151307()
    mem[(32 * ('cd', 100).length) + 128] = ('cd', 100).length
    if not ('cd', 100).length:
        require 0 < ('cd', 100).length
        mem[(32 * ('cd', 100).length) + 160] = cd[36]
        idx = 0
        while idx < ('cd', 100).length - 1:
            require idx < ('cd', 100).length
            _1201 = mem[(32 * idx) + 128]
            require idx + 1 < ('cd', 100).length
            _1208 = mem[(32 * idx + 1) + 128]
            if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                revert with 0, 
                            32,
                            35,
                            0x5450616e63616b654c6962726172793a204944454e544943414c5f4144445245535345,
                            mem[(64 * ('cd', 100).length) + 263 len 29]
            if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                if not mem[(32 * idx) + 140 len 20]:
                    revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                require ext_code.size(address(cd[4]))
                staticcall address(cd[4]).getReserves() with:
                        gas gas_remaining wei
                mem[(64 * ('cd', 100).length) + 160 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require idx < mem[(32 * ('cd', 100).length) + 128]
                if mem[(32 * idx) + (32 * ('cd', 100).length) + 160] <= 0:
                    revert with 0, 
                                32,
                                41,
                                0xfe50616e63616b654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                mem[(64 * ('cd', 100).length) + 269 len 23]
                if address(_1201) == address(_1201):
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x4450616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                    mem[(64 * ('cd', 100).length) + 266 len 26]
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x4450616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                    mem[(64 * ('cd', 100).length) + 266 len 26]
                    if 9975 * mem[(32 * idx) + (32 * ('cd', 100).length) + 160] / 9975 != mem[(32 * idx) + (32 * ('cd', 100).length) + 160]:
                        revert with 0, 'ds-math-mul-overflow'
                    if not Mask(112, 0, ext_call.return_data[32]):
                        if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + (32 * ('cd', 100).length) + 160]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-add-overflow'
                        require (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + (32 * ('cd', 100).length) + 160])
                        require idx + 1 < mem[(32 * ('cd', 100).length) + 128]
                        mem[(32 * idx + 1) + (32 * ('cd', 100).length) + 160] = 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + (32 * ('cd', 100).length) + 160])
                    else:
                        require Mask(112, 0, ext_call.return_data[32])
                        if 9975 * mem[(32 * idx) + (32 * ('cd', 100).length) + 160] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 9975 * mem[(32 * idx) + (32 * ('cd', 100).length) + 160]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + (32 * ('cd', 100).length) + 160]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-add-overflow'
                        require (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + (32 * ('cd', 100).length) + 160])
                        require idx + 1 < mem[(32 * ('cd', 100).length) + 128]
                        mem[(32 * idx + 1) + (32 * ('cd', 100).length) + 160] = 9975 * mem[(32 * idx) + (32 * ('cd', 100).length) + 160] * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + (32 * ('cd', 100).length) + 160])
                else:
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x4450616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                    mem[(64 * ('cd', 100).length) + 266 len 26]
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x4450616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                    mem[(64 * ('cd', 100).length) + 266 len 26]
                    if 9975 * mem[(32 * idx) + (32 * ('cd', 100).length) + 160] / 9975 != mem[(32 * idx) + (32 * ('cd', 100).length) + 160]:
                        revert with 0, 'ds-math-mul-overflow'
                    if not Mask(112, 0, ext_call.return_data[0]):
                        if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + (32 * ('cd', 100).length) + 160]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-add-overflow'
                        require (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + (32 * ('cd', 100).length) + 160])
                        require idx + 1 < mem[(32 * ('cd', 100).length) + 128]
                        mem[(32 * idx + 1) + (32 * ('cd', 100).length) + 160] = 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + (32 * ('cd', 100).length) + 160])
                    else:
                        require Mask(112, 0, ext_call.return_data[0])
                        if 9975 * mem[(32 * idx) + (32 * ('cd', 100).length) + 160] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 9975 * mem[(32 * idx) + (32 * ('cd', 100).length) + 160]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + (32 * ('cd', 100).length) + 160]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-add-overflow'
                        require (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + (32 * ('cd', 100).length) + 160])
                        require idx + 1 < mem[(32 * ('cd', 100).length) + 128]
                        mem[(32 * idx + 1) + (32 * ('cd', 100).length) + 160] = 9975 * mem[(32 * idx) + (32 * ('cd', 100).length) + 160] * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + (32 * ('cd', 100).length) + 160])
            else:
                if not mem[(32 * idx + 1) + 140 len 20]:
                    revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                require ext_code.size(address(cd[4]))
                staticcall address(cd[4]).getReserves() with:
                        gas gas_remaining wei
                mem[(64 * ('cd', 100).length) + 160 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require idx < mem[(32 * ('cd', 100).length) + 128]
                if mem[(32 * idx) + (32 * ('cd', 100).length) + 160] <= 0:
                    revert with 0, 
                                32,
                                41,
                                0xfe50616e63616b654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                mem[(64 * ('cd', 100).length) + 269 len 23]
                if address(_1208) == address(_1201):
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x4450616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                    mem[(64 * ('cd', 100).length) + 266 len 26]
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x4450616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                    mem[(64 * ('cd', 100).length) + 266 len 26]
                    if 9975 * mem[(32 * idx) + (32 * ('cd', 100).length) + 160] / 9975 != mem[(32 * idx) + (32 * ('cd', 100).length) + 160]:
                        revert with 0, 'ds-math-mul-overflow'
                    if not Mask(112, 0, ext_call.return_data[32]):
                        if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + (32 * ('cd', 100).length) + 160]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-add-overflow'
                        require (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + (32 * ('cd', 100).length) + 160])
                        require idx + 1 < mem[(32 * ('cd', 100).length) + 128]
                        mem[(32 * idx + 1) + (32 * ('cd', 100).length) + 160] = 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + (32 * ('cd', 100).length) + 160])
                    else:
                        require Mask(112, 0, ext_call.return_data[32])
                        if 9975 * mem[(32 * idx) + (32 * ('cd', 100).length) + 160] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 9975 * mem[(32 * idx) + (32 * ('cd', 100).length) + 160]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + (32 * ('cd', 100).length) + 160]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-add-overflow'
                        require (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + (32 * ('cd', 100).length) + 160])
                        require idx + 1 < mem[(32 * ('cd', 100).length) + 128]
                        mem[(32 * idx + 1) + (32 * ('cd', 100).length) + 160] = 9975 * mem[(32 * idx) + (32 * ('cd', 100).length) + 160] * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + (32 * ('cd', 100).length) + 160])
                else:
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x4450616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                    mem[(64 * ('cd', 100).length) + 266 len 26]
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x4450616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                    mem[(64 * ('cd', 100).length) + 266 len 26]
                    if 9975 * mem[(32 * idx) + (32 * ('cd', 100).length) + 160] / 9975 != mem[(32 * idx) + (32 * ('cd', 100).length) + 160]:
                        revert with 0, 'ds-math-mul-overflow'
                    if not Mask(112, 0, ext_call.return_data[0]):
                        if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + (32 * ('cd', 100).length) + 160]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-add-overflow'
                        require (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + (32 * ('cd', 100).length) + 160])
                        require idx + 1 < mem[(32 * ('cd', 100).length) + 128]
                        mem[(32 * idx + 1) + (32 * ('cd', 100).length) + 160] = 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + (32 * ('cd', 100).length) + 160])
                    else:
                        require Mask(112, 0, ext_call.return_data[0])
                        if 9975 * mem[(32 * idx) + (32 * ('cd', 100).length) + 160] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 9975 * mem[(32 * idx) + (32 * ('cd', 100).length) + 160]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + (32 * ('cd', 100).length) + 160]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-add-overflow'
                        require (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + (32 * ('cd', 100).length) + 160])
                        require idx + 1 < mem[(32 * ('cd', 100).length) + 128]
                        mem[(32 * idx + 1) + (32 * ('cd', 100).length) + 160] = 9975 * mem[(32 * idx) + (32 * ('cd', 100).length) + 160] * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + (32 * ('cd', 100).length) + 160])
            idx = idx + 1
            continue 
        require mem[(32 * ('cd', 100).length) + 128] - 1 < mem[(32 * ('cd', 100).length) + 128]
        if mem[(32 * mem[(32 * ('cd', 100).length) + 128] - 1) + (32 * ('cd', 100).length) + 160] < cd[68]:
            revert with 0, 
                        32,
                        41,
                        0x2150616e63616b65526f757465723a20494e53554646494349454e545f4f55545055545f414d4f554e,
                        mem[(64 * ('cd', 100).length) + 269 len 23]
        require 0 < ('cd', 100).length
        require 0 < mem[(32 * ('cd', 100).length) + 128]
        mem[(64 * ('cd', 100).length) + 196] = this.address
        mem[(64 * ('cd', 100).length) + 228] = address(cd[4])
        mem[(64 * ('cd', 100).length) + 260] = mem[(32 * ('cd', 100).length) + 160]
        mem[(64 * ('cd', 100).length) + 160] = 100
        mem[(64 * ('cd', 100).length) + 192 len 4] = unknown_0x23b872dd(?????)
        mem[(64 * ('cd', 100).length) + 292 len 96] = 0, address(this.address), address(cd[4]), mem[(64 * ('cd', 100).length) + 260 len 28]
        mem[(64 * ('cd', 100).length) + 416 len 4] = mem[(64 * ('cd', 100).length) + 280 len 4]
        call address(('cd', 100)[0]) with:
             gas gas_remaining wei
            args mem[(64 * ('cd', 100).length) + 260], address(cd[4]), mem[(64 * ('cd', 100).length) + 260 len 28] >> 224, mem[(64 * ('cd', 100).length) + 388 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 
                            32,
                            36,
                            0x595472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                            mem[(64 * ('cd', 100).length) + 396 len 20],
                            mem[(64 * ('cd', 100).length) + 280 len 4],
                            mem[(64 * ('cd', 100).length) + 420 len 4]
            if not ('cd', 100).length:
                mem[64] = (98 * ('cd', 100).length) + 324
                mem[(64 * ('cd', 100).length) + 292] = ('cd', 100).length
                mem[(64 * ('cd', 100).length) + 324 len 32 * ('cd', 100).length] = call.data[cd[100] + 36 len 32 * ('cd', 100).length]
                mem[(98 * ('cd', 100).length) + 324] = 0
                idx = 0
                while idx < ('cd', 100).length - 1:
                    require idx < mem[(64 * ('cd', 100).length) + 292]
                    require idx + 1 < mem[(64 * ('cd', 100).length) + 292]
                    if mem[(32 * idx) + (64 * ('cd', 100).length) + 336 len 20] == mem[(32 * idx + 1) + (64 * ('cd', 100).length) + 336 len 20]:
                        revert with 0, 32, 35, 0x5450616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 103 len 29]
                    if mem[(32 * idx) + (64 * ('cd', 100).length) + 336 len 20] < mem[(32 * idx + 1) + (64 * ('cd', 100).length) + 336 len 20]:
                        if not mem[(32 * idx) + (64 * ('cd', 100).length) + 336 len 20]:
                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                        require idx + 1 < mem[(32 * ('cd', 100).length) + 128]
                        _3538 = mem[(32 * idx + 1) + (32 * ('cd', 100).length) + 160]
                        if mem[(32 * idx) + (64 * ('cd', 100).length) + 336 len 20] == mem[(32 * idx) + (64 * ('cd', 100).length) + 336 len 20]:
                            if idx < mem[(64 * ('cd', 100).length) + 292] - 2:
                                _3631 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3631 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3631 + 36] = 0
                                mem[_3631 + 68] = _3538
                                mem[_3631 + 100] = address(cd[4])
                                mem[_3631 + 132] = 128
                                mem[_3631 + 164] = mem[_3631]
                                s = 0
                                while s < mem[_3631]:
                                    mem[s + _3631 + 196] = mem[s + _3631 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_3631] % 32:
                                    require ext_code.size(address(cd[4]))
                                    call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _3538, address(cd[4]), 128, mem[_3631 + 164 len mem[_3631] + 32]
                                else:
                                    mem[floor32(mem[_3631]) + _3631 + 196] = mem[floor32(mem[_3631]) + _3631 + -(mem[_3631] % 32) + 228 len mem[_3631] % 32]
                                    require ext_code.size(address(cd[4]))
                                    call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _3538, address(cd[4]), 128, mem[_3631], mem[_3631 + 196 len floor32(mem[_3631]) + 32]
                            else:
                                _3635 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3635 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3635 + 36] = 0
                                mem[_3635 + 68] = _3538
                                mem[_3635 + 100] = address(cd[132])
                                mem[_3635 + 132] = 128
                                mem[_3635 + 164] = mem[_3635]
                                s = 0
                                while s < mem[_3635]:
                                    mem[s + _3635 + 196] = mem[s + _3635 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_3635] % 32:
                                    require ext_code.size(address(cd[4]))
                                    call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _3538, address(cd[132]), 128, mem[_3635 + 164 len mem[_3635] + 32]
                                else:
                                    mem[floor32(mem[_3635]) + _3635 + 196] = mem[floor32(mem[_3635]) + _3635 + -(mem[_3635] % 32) + 228 len mem[_3635] % 32]
                                    require ext_code.size(address(cd[4]))
                                    call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _3538, address(cd[132]), 128, mem[_3635], mem[_3635 + 196 len floor32(mem[_3635]) + 32]
                        else:
                            if idx < mem[(64 * ('cd', 100).length) + 292] - 2:
                                _3639 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3639 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3639 + 36] = _3538
                                mem[_3639 + 68] = 0
                                mem[_3639 + 100] = address(cd[4])
                                mem[_3639 + 132] = 128
                                mem[_3639 + 164] = mem[_3639]
                                s = 0
                                while s < mem[_3639]:
                                    mem[s + _3639 + 196] = mem[s + _3639 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_3639] % 32:
                                    require ext_code.size(address(cd[4]))
                                    call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _3538, 0, address(cd[4]), 128, mem[_3639 + 164 len mem[_3639] + 32]
                                else:
                                    mem[floor32(mem[_3639]) + _3639 + 196] = mem[floor32(mem[_3639]) + _3639 + -(mem[_3639] % 32) + 228 len mem[_3639] % 32]
                                    require ext_code.size(address(cd[4]))
                                    call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _3538, 0, address(cd[4]), 128, mem[_3639], mem[_3639 + 196 len floor32(mem[_3639]) + 32]
                            else:
                                _3643 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3643 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3643 + 36] = _3538
                                mem[_3643 + 68] = 0
                                mem[_3643 + 100] = address(cd[132])
                                mem[_3643 + 132] = 128
                                mem[_3643 + 164] = mem[_3643]
                                s = 0
                                while s < mem[_3643]:
                                    mem[s + _3643 + 196] = mem[s + _3643 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_3643] % 32:
                                    require ext_code.size(address(cd[4]))
                                    call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _3538, 0, address(cd[132]), 128, mem[_3643 + 164 len mem[_3643] + 32]
                                else:
                                    mem[floor32(mem[_3643]) + _3643 + 196] = mem[floor32(mem[_3643]) + _3643 + -(mem[_3643] % 32) + 228 len mem[_3643] % 32]
                                    require ext_code.size(address(cd[4]))
                                    call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _3538, 0, address(cd[132]), 128, mem[_3643], mem[_3643 + 196 len floor32(mem[_3643]) + 32]
                    else:
                        if not mem[(32 * idx + 1) + (64 * ('cd', 100).length) + 336 len 20]:
                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                        require idx + 1 < mem[(32 * ('cd', 100).length) + 128]
                        _3539 = mem[(32 * idx + 1) + (32 * ('cd', 100).length) + 160]
                        if mem[(32 * idx) + (64 * ('cd', 100).length) + 336 len 20] == mem[(32 * idx + 1) + (64 * ('cd', 100).length) + 336 len 20]:
                            if idx < mem[(64 * ('cd', 100).length) + 292] - 2:
                                _3647 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3647 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3647 + 36] = 0
                                mem[_3647 + 68] = _3539
                                mem[_3647 + 100] = address(cd[4])
                                mem[_3647 + 132] = 128
                                mem[_3647 + 164] = mem[_3647]
                                s = 0
                                while s < mem[_3647]:
                                    mem[s + _3647 + 196] = mem[s + _3647 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_3647] % 32:
                                    require ext_code.size(address(cd[4]))
                                    call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _3539, address(cd[4]), 128, mem[_3647 + 164 len mem[_3647] + 32]
                                else:
                                    mem[floor32(mem[_3647]) + _3647 + 196] = mem[floor32(mem[_3647]) + _3647 + -(mem[_3647] % 32) + 228 len mem[_3647] % 32]
                                    require ext_code.size(address(cd[4]))
                                    call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _3539, address(cd[4]), 128, mem[_3647], mem[_3647 + 196 len floor32(mem[_3647]) + 32]
                            else:
                                _3651 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3651 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3651 + 36] = 0
                                mem[_3651 + 68] = _3539
                                mem[_3651 + 100] = address(cd[132])
                                mem[_3651 + 132] = 128
                                mem[_3651 + 164] = mem[_3651]
                                s = 0
                                while s < mem[_3651]:
                                    mem[s + _3651 + 196] = mem[s + _3651 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_3651] % 32:
                                    require ext_code.size(address(cd[4]))
                                    call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _3539, address(cd[132]), 128, mem[_3651 + 164 len mem[_3651] + 32]
                                else:
                                    mem[floor32(mem[_3651]) + _3651 + 196] = mem[floor32(mem[_3651]) + _3651 + -(mem[_3651] % 32) + 228 len mem[_3651] % 32]
                                    require ext_code.size(address(cd[4]))
                                    call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _3539, address(cd[132]), 128, mem[_3651], mem[_3651 + 196 len floor32(mem[_3651]) + 32]
                        else:
                            if idx < mem[(64 * ('cd', 100).length) + 292] - 2:
                                _3655 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3655 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3655 + 36] = _3539
                                mem[_3655 + 68] = 0
                                mem[_3655 + 100] = address(cd[4])
                                mem[_3655 + 132] = 128
                                mem[_3655 + 164] = mem[_3655]
                                s = 0
                                while s < mem[_3655]:
                                    mem[s + _3655 + 196] = mem[s + _3655 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_3655] % 32:
                                    require ext_code.size(address(cd[4]))
                                    call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _3539, 0, address(cd[4]), 128, mem[_3655 + 164 len mem[_3655] + 32]
                                else:
                                    mem[floor32(mem[_3655]) + _3655 + 196] = mem[floor32(mem[_3655]) + _3655 + -(mem[_3655] % 32) + 228 len mem[_3655] % 32]
                                    require ext_code.size(address(cd[4]))
                                    call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _3539, 0, address(cd[4]), 128, mem[_3655], mem[_3655 + 196 len floor32(mem[_3655]) + 32]
                            else:
                                _3659 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3659 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3659 + 36] = _3539
                                mem[_3659 + 68] = 0
                                mem[_3659 + 100] = address(cd[132])
                                mem[_3659 + 132] = 128
                                mem[_3659 + 164] = mem[_3659]
                                s = 0
                                while s < mem[_3659]:
                                    mem[s + _3659 + 196] = mem[s + _3659 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_3659] % 32:
                                    require ext_code.size(address(cd[4]))
                                    call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _3539, 0, address(cd[132]), 128, mem[_3659 + 164 len mem[_3659] + 32]
                                else:
                                    mem[floor32(mem[_3659]) + _3659 + 196] = mem[floor32(mem[_3659]) + _3659 + -(mem[_3659] % 32) + 228 len mem[_3659] % 32]
                                    require ext_code.size(address(cd[4]))
                                    call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _3539, 0, address(cd[132]), 128, mem[_3659], mem[_3659 + 196 len floor32(mem[_3659]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
                require mem[(32 * ('cd', 100).length) + 128] - 1 < mem[(32 * ('cd', 100).length) + 128]
                _3361 = mem[(32 * mem[(32 * ('cd', 100).length) + 128] - 1) + (32 * ('cd', 100).length) + 160]
                mem[mem[64]] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _3361
                require ext_code.size(WETHAddress)
                call WETHAddress.withdraw(uint256 arg1) with:
                     gas gas_remaining wei
                    args _3361
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require mem[(32 * ('cd', 100).length) + 128] - 1 < mem[(32 * ('cd', 100).length) + 128]
                _3425 = mem[(32 * mem[(32 * ('cd', 100).length) + 128] - 1) + (32 * ('cd', 100).length) + 160]
                _3433 = mem[64]
                mem[mem[64]] = 0
                mem[64] = mem[64] + 32
                _3435 = mem[_3433]
                mem[mem[64] len floor32(mem[_3433])] = mem[_3433 + 32 len floor32(mem[_3433])]
                mem[mem[64] + floor32(mem[_3433]) + -(mem[_3433] % 32) + 32 len mem[_3433] % 32] = mem[_3433 + floor32(mem[_3433]) + -(mem[_3433] % 32) + 64 len mem[_3433] % 32]
                call address(cd[132]) with:
                   value _3425 wei
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _3435 + _3433 + -mem[64] + 28]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 32, 35, 0x535472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45, mem[mem[64] + 103 len 29]
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = mem[(32 * ('cd', 100).length) + 128]
                    _4547 = mem[(32 * ('cd', 100).length) + 128]
                    mem[mem[64] + 64 len floor32(mem[(32 * ('cd', 100).length) + 128])] = mem[(32 * ('cd', 100).length) + 160 len floor32(mem[(32 * ('cd', 100).length) + 128])]
                    return 32, mem[mem[64] + 32 len (32 * _4547) + 32]
                _4313 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_4313] = return_data.size
                mem[_4313 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 32, 35, 0x535472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45, mem[mem[64] + 103 len 29]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = mem[(32 * ('cd', 100).length) + 128]
                _4550 = mem[(32 * ('cd', 100).length) + 128]
                mem[mem[64] + 64 len floor32(mem[(32 * ('cd', 100).length) + 128])] = mem[(32 * ('cd', 100).length) + 160 len floor32(mem[(32 * ('cd', 100).length) + 128])]
                return 32, mem[mem[64] + 32 len (32 * _4550) + 32]
            require ('cd', 100).length >= 32
            if not mem[128]:
                revert with 0, 
                            32,
                            36,
                            0x595472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                            mem[(64 * ('cd', 100).length) + 396 len 20],
                            mem[(64 * ('cd', 100).length) + 280 len 4],
                            mem[(64 * ('cd', 100).length) + 420 len 4]
            mem[64] = (98 * ('cd', 100).length) + 324
            mem[(64 * ('cd', 100).length) + 292] = ('cd', 100).length
            mem[(64 * ('cd', 100).length) + 324 len 32 * ('cd', 100).length] = call.data[cd[100] + 36 len 32 * ('cd', 100).length]
            mem[(98 * ('cd', 100).length) + 324] = 0
            idx = 0
            while idx < ('cd', 100).length - 1:
                require idx < mem[(64 * ('cd', 100).length) + 292]
                require idx + 1 < mem[(64 * ('cd', 100).length) + 292]
                if mem[(32 * idx) + (64 * ('cd', 100).length) + 336 len 20] == mem[(32 * idx + 1) + (64 * ('cd', 100).length) + 336 len 20]:
                    revert with 0, 32, 35, 0x5450616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 103 len 29]
                if mem[(32 * idx) + (64 * ('cd', 100).length) + 336 len 20] < mem[(32 * idx + 1) + (64 * ('cd', 100).length) + 336 len 20]:
                    if not mem[(32 * idx) + (64 * ('cd', 100).length) + 336 len 20]:
                        revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                    require idx + 1 < mem[(32 * ('cd', 100).length) + 128]
                    _3541 = mem[(32 * idx + 1) + (32 * ('cd', 100).length) + 160]
                    if mem[(32 * idx) + (64 * ('cd', 100).length) + 336 len 20] == mem[(32 * idx) + (64 * ('cd', 100).length) + 336 len 20]:
                        if idx < mem[(64 * ('cd', 100).length) + 292] - 2:
                            _3669 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_3669 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_3669 + 36] = 0
                            mem[_3669 + 68] = _3541
                            mem[_3669 + 100] = address(cd[4])
                            mem[_3669 + 132] = 128
                            mem[_3669 + 164] = mem[_3669]
                            s = 0
                            while s < mem[_3669]:
                                mem[s + _3669 + 196] = mem[s + _3669 + 32]
                                s = s + 32
                                continue 
                            if not mem[_3669] % 32:
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _3541, address(cd[4]), 128, mem[_3669 + 164 len mem[_3669] + 32]
                            else:
                                mem[floor32(mem[_3669]) + _3669 + 196] = mem[floor32(mem[_3669]) + _3669 + -(mem[_3669] % 32) + 228 len mem[_3669] % 32]
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _3541, address(cd[4]), 128, mem[_3669], mem[_3669 + 196 len floor32(mem[_3669]) + 32]
                        else:
                            _3673 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_3673 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_3673 + 36] = 0
                            mem[_3673 + 68] = _3541
                            mem[_3673 + 100] = address(cd[132])
                            mem[_3673 + 132] = 128
                            mem[_3673 + 164] = mem[_3673]
                            s = 0
                            while s < mem[_3673]:
                                mem[s + _3673 + 196] = mem[s + _3673 + 32]
                                s = s + 32
                                continue 
                            if not mem[_3673] % 32:
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _3541, address(cd[132]), 128, mem[_3673 + 164 len mem[_3673] + 32]
                            else:
                                mem[floor32(mem[_3673]) + _3673 + 196] = mem[floor32(mem[_3673]) + _3673 + -(mem[_3673] % 32) + 228 len mem[_3673] % 32]
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _3541, address(cd[132]), 128, mem[_3673], mem[_3673 + 196 len floor32(mem[_3673]) + 32]
                    else:
                        if idx < mem[(64 * ('cd', 100).length) + 292] - 2:
                            _3677 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_3677 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_3677 + 36] = _3541
                            mem[_3677 + 68] = 0
                            mem[_3677 + 100] = address(cd[4])
                            mem[_3677 + 132] = 128
                            mem[_3677 + 164] = mem[_3677]
                            s = 0
                            while s < mem[_3677]:
                                mem[s + _3677 + 196] = mem[s + _3677 + 32]
                                s = s + 32
                                continue 
                            if not mem[_3677] % 32:
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _3541, 0, address(cd[4]), 128, mem[_3677 + 164 len mem[_3677] + 32]
                            else:
                                mem[floor32(mem[_3677]) + _3677 + 196] = mem[floor32(mem[_3677]) + _3677 + -(mem[_3677] % 32) + 228 len mem[_3677] % 32]
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _3541, 0, address(cd[4]), 128, mem[_3677], mem[_3677 + 196 len floor32(mem[_3677]) + 32]
                        else:
                            _3681 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_3681 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_3681 + 36] = _3541
                            mem[_3681 + 68] = 0
                            mem[_3681 + 100] = address(cd[132])
                            mem[_3681 + 132] = 128
                            mem[_3681 + 164] = mem[_3681]
                            s = 0
                            while s < mem[_3681]:
                                mem[s + _3681 + 196] = mem[s + _3681 + 32]
                                s = s + 32
                                continue 
                            if not mem[_3681] % 32:
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _3541, 0, address(cd[132]), 128, mem[_3681 + 164 len mem[_3681] + 32]
                            else:
                                mem[floor32(mem[_3681]) + _3681 + 196] = mem[floor32(mem[_3681]) + _3681 + -(mem[_3681] % 32) + 228 len mem[_3681] % 32]
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _3541, 0, address(cd[132]), 128, mem[_3681], mem[_3681 + 196 len floor32(mem[_3681]) + 32]
                else:
                    if not mem[(32 * idx + 1) + (64 * ('cd', 100).length) + 336 len 20]:
                        revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                    require idx + 1 < mem[(32 * ('cd', 100).length) + 128]
                    _3542 = mem[(32 * idx + 1) + (32 * ('cd', 100).length) + 160]
                    if mem[(32 * idx) + (64 * ('cd', 100).length) + 336 len 20] == mem[(32 * idx + 1) + (64 * ('cd', 100).length) + 336 len 20]:
                        if idx < mem[(64 * ('cd', 100).length) + 292] - 2:
                            _3685 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_3685 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_3685 + 36] = 0
                            mem[_3685 + 68] = _3542
                            mem[_3685 + 100] = address(cd[4])
                            mem[_3685 + 132] = 128
                            mem[_3685 + 164] = mem[_3685]
                            s = 0
                            while s < mem[_3685]:
                                mem[s + _3685 + 196] = mem[s + _3685 + 32]
                                s = s + 32
                                continue 
                            if not mem[_3685] % 32:
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _3542, address(cd[4]), 128, mem[_3685 + 164 len mem[_3685] + 32]
                            else:
                                mem[floor32(mem[_3685]) + _3685 + 196] = mem[floor32(mem[_3685]) + _3685 + -(mem[_3685] % 32) + 228 len mem[_3685] % 32]
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _3542, address(cd[4]), 128, mem[_3685], mem[_3685 + 196 len floor32(mem[_3685]) + 32]
                        else:
                            _3689 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_3689 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_3689 + 36] = 0
                            mem[_3689 + 68] = _3542
                            mem[_3689 + 100] = address(cd[132])
                            mem[_3689 + 132] = 128
                            mem[_3689 + 164] = mem[_3689]
                            s = 0
                            while s < mem[_3689]:
                                mem[s + _3689 + 196] = mem[s + _3689 + 32]
                                s = s + 32
                                continue 
                            if not mem[_3689] % 32:
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _3542, address(cd[132]), 128, mem[_3689 + 164 len mem[_3689] + 32]
                            else:
                                mem[floor32(mem[_3689]) + _3689 + 196] = mem[floor32(mem[_3689]) + _3689 + -(mem[_3689] % 32) + 228 len mem[_3689] % 32]
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _3542, address(cd[132]), 128, mem[_3689], mem[_3689 + 196 len floor32(mem[_3689]) + 32]
                    else:
                        if idx < mem[(64 * ('cd', 100).length) + 292] - 2:
                            _3693 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_3693 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_3693 + 36] = _3542
                            mem[_3693 + 68] = 0
                            mem[_3693 + 100] = address(cd[4])
                            mem[_3693 + 132] = 128
                            mem[_3693 + 164] = mem[_3693]
                            s = 0
                            while s < mem[_3693]:
                                mem[s + _3693 + 196] = mem[s + _3693 + 32]
                                s = s + 32
                                continue 
                            if not mem[_3693] % 32:
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _3542, 0, address(cd[4]), 128, mem[_3693 + 164 len mem[_3693] + 32]
                            else:
                                mem[floor32(mem[_3693]) + _3693 + 196] = mem[floor32(mem[_3693]) + _3693 + -(mem[_3693] % 32) + 228 len mem[_3693] % 32]
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _3542, 0, address(cd[4]), 128, mem[_3693], mem[_3693 + 196 len floor32(mem[_3693]) + 32]
                        else:
                            _3697 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_3697 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_3697 + 36] = _3542
                            mem[_3697 + 68] = 0
                            mem[_3697 + 100] = address(cd[132])
                            mem[_3697 + 132] = 128
                            mem[_3697 + 164] = mem[_3697]
                            s = 0
                            while s < mem[_3697]:
                                mem[s + _3697 + 196] = mem[s + _3697 + 32]
                                s = s + 32
                                continue 
                            if not mem[_3697] % 32:
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _3542, 0, address(cd[132]), 128, mem[_3697 + 164 len mem[_3697] + 32]
                            else:
                                mem[floor32(mem[_3697]) + _3697 + 196] = mem[floor32(mem[_3697]) + _3697 + -(mem[_3697] % 32) + 228 len mem[_3697] % 32]
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _3542, 0, address(cd[132]), 128, mem[_3697], mem[_3697 + 196 len floor32(mem[_3697]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
            require mem[(32 * ('cd', 100).length) + 128] - 1 < mem[(32 * ('cd', 100).length) + 128]
            _3365 = mem[(32 * mem[(32 * ('cd', 100).length) + 128] - 1) + (32 * ('cd', 100).length) + 160]
            mem[mem[64]] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _3365
            require ext_code.size(WETHAddress)
            call WETHAddress.withdraw(uint256 arg1) with:
                 gas gas_remaining wei
                args _3365
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require mem[(32 * ('cd', 100).length) + 128] - 1 < mem[(32 * ('cd', 100).length) + 128]
            _3426 = mem[(32 * mem[(32 * ('cd', 100).length) + 128] - 1) + (32 * ('cd', 100).length) + 160]
            _3436 = mem[64]
            mem[mem[64]] = 0
            mem[64] = mem[64] + 32
            _3438 = mem[_3436]
            mem[mem[64] len floor32(mem[_3436])] = mem[_3436 + 32 len floor32(mem[_3436])]
            mem[mem[64] + floor32(mem[_3436]) + -(mem[_3436] % 32) + 32 len mem[_3436] % 32] = mem[_3436 + floor32(mem[_3436]) + -(mem[_3436] % 32) + 64 len mem[_3436] % 32]
            call address(cd[132]) with:
               value _3426 wei
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _3438 + _3436 + -mem[64] + 28]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 32, 35, 0x535472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45, mem[mem[64] + 103 len 29]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = mem[(32 * ('cd', 100).length) + 128]
                _4553 = mem[(32 * ('cd', 100).length) + 128]
                mem[mem[64] + 64 len floor32(mem[(32 * ('cd', 100).length) + 128])] = mem[(32 * ('cd', 100).length) + 160 len floor32(mem[(32 * ('cd', 100).length) + 128])]
                return 32, mem[mem[64] + 32 len (32 * _4553) + 32]
            _4330 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_4330] = return_data.size
            mem[_4330 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 32, 35, 0x535472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45, mem[mem[64] + 103 len 29]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = mem[(32 * ('cd', 100).length) + 128]
            _4556 = mem[(32 * ('cd', 100).length) + 128]
            mem[mem[64] + 64 len floor32(mem[(32 * ('cd', 100).length) + 128])] = mem[(32 * ('cd', 100).length) + 160 len floor32(mem[(32 * ('cd', 100).length) + 128])]
            return 32, mem[mem[64] + 32 len (32 * _4556) + 32]
        mem[(64 * ('cd', 100).length) + 292] = return_data.size
        mem[(64 * ('cd', 100).length) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 
                        32,
                        36,
                        0x595472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                        mem[(64 * ('cd', 100).length) + ceil32(return_data.size) + 397 len 28]
        if return_data.size:
            require return_data.size >= 32
            if not mem[(64 * ('cd', 100).length) + 324]:
                revert with 0, 
                            32,
                            36,
                            0x595472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                            mem[(64 * ('cd', 100).length) + ceil32(return_data.size) + 397 len 28]
            mem[64] = (98 * ('cd', 100).length) + ceil32(return_data.size) + 325
            mem[(64 * ('cd', 100).length) + ceil32(return_data.size) + 293] = ('cd', 100).length
            mem[(64 * ('cd', 100).length) + ceil32(return_data.size) + 325 len 32 * ('cd', 100).length] = call.data[cd[100] + 36 len 32 * ('cd', 100).length]
            mem[(98 * ('cd', 100).length) + ceil32(return_data.size) + 325] = 0
            idx = 0
            while idx < ('cd', 100).length - 1:
                require idx < mem[(64 * ('cd', 100).length) + ceil32(return_data.size) + 293]
                require idx + 1 < mem[(64 * ('cd', 100).length) + ceil32(return_data.size) + 293]
                if mem[(32 * idx) + (64 * ('cd', 100).length) + ceil32(return_data.size) + 337 len 20] == mem[(32 * idx + 1) + (64 * ('cd', 100).length) + ceil32(return_data.size) + 337 len 20]:
                    revert with 0, 32, 35, 0x5450616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 103 len 29]
                if mem[(32 * idx) + (64 * ('cd', 100).length) + ceil32(return_data.size) + 337 len 20] < mem[(32 * idx + 1) + (64 * ('cd', 100).length) + ceil32(return_data.size) + 337 len 20]:
                    if not mem[(32 * idx) + (64 * ('cd', 100).length) + ceil32(return_data.size) + 337 len 20]:
                        revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                    require idx + 1 < mem[(32 * ('cd', 100).length) + 128]
                    _3547 = mem[(32 * idx + 1) + (32 * ('cd', 100).length) + 160]
                    if mem[(32 * idx) + (64 * ('cd', 100).length) + ceil32(return_data.size) + 337 len 20] == mem[(32 * idx) + (64 * ('cd', 100).length) + ceil32(return_data.size) + 337 len 20]:
                        if idx < mem[(64 * ('cd', 100).length) + ceil32(return_data.size) + 293] - 2:
                            _3745 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_3745 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_3745 + 36] = 0
                            mem[_3745 + 68] = _3547
                            mem[_3745 + 100] = address(cd[4])
                            mem[_3745 + 132] = 128
                            mem[_3745 + 164] = mem[_3745]
                            s = 0
                            while s < mem[_3745]:
                                mem[s + _3745 + 196] = mem[s + _3745 + 32]
                                s = s + 32
                                continue 
                            if not mem[_3745] % 32:
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _3547, address(cd[4]), 128, mem[_3745 + 164 len mem[_3745] + 32]
                            else:
                                mem[floor32(mem[_3745]) + _3745 + 196] = mem[floor32(mem[_3745]) + _3745 + -(mem[_3745] % 32) + 228 len mem[_3745] % 32]
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _3547, address(cd[4]), 128, mem[_3745], mem[_3745 + 196 len floor32(mem[_3745]) + 32]
                        else:
                            _3749 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_3749 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_3749 + 36] = 0
                            mem[_3749 + 68] = _3547
                            mem[_3749 + 100] = address(cd[132])
                            mem[_3749 + 132] = 128
                            mem[_3749 + 164] = mem[_3749]
                            s = 0
                            while s < mem[_3749]:
                                mem[s + _3749 + 196] = mem[s + _3749 + 32]
                                s = s + 32
                                continue 
                            if not mem[_3749] % 32:
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _3547, address(cd[132]), 128, mem[_3749 + 164 len mem[_3749] + 32]
                            else:
                                mem[floor32(mem[_3749]) + _3749 + 196] = mem[floor32(mem[_3749]) + _3749 + -(mem[_3749] % 32) + 228 len mem[_3749] % 32]
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _3547, address(cd[132]), 128, mem[_3749], mem[_3749 + 196 len floor32(mem[_3749]) + 32]
                    else:
                        if idx < mem[(64 * ('cd', 100).length) + ceil32(return_data.size) + 293] - 2:
                            _3753 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_3753 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_3753 + 36] = _3547
                            mem[_3753 + 68] = 0
                            mem[_3753 + 100] = address(cd[4])
                            mem[_3753 + 132] = 128
                            mem[_3753 + 164] = mem[_3753]
                            s = 0
                            while s < mem[_3753]:
                                mem[s + _3753 + 196] = mem[s + _3753 + 32]
                                s = s + 32
                                continue 
                            if not mem[_3753] % 32:
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _3547, 0, address(cd[4]), 128, mem[_3753 + 164 len mem[_3753] + 32]
                            else:
                                mem[floor32(mem[_3753]) + _3753 + 196] = mem[floor32(mem[_3753]) + _3753 + -(mem[_3753] % 32) + 228 len mem[_3753] % 32]
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _3547, 0, address(cd[4]), 128, mem[_3753], mem[_3753 + 196 len floor32(mem[_3753]) + 32]
                        else:
                            _3757 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_3757 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_3757 + 36] = _3547
                            mem[_3757 + 68] = 0
                            mem[_3757 + 100] = address(cd[132])
                            mem[_3757 + 132] = 128
                            mem[_3757 + 164] = mem[_3757]
                            s = 0
                            while s < mem[_3757]:
                                mem[s + _3757 + 196] = mem[s + _3757 + 32]
                                s = s + 32
                                continue 
                            if not mem[_3757] % 32:
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _3547, 0, address(cd[132]), 128, mem[_3757 + 164 len mem[_3757] + 32]
                            else:
                                mem[floor32(mem[_3757]) + _3757 + 196] = mem[floor32(mem[_3757]) + _3757 + -(mem[_3757] % 32) + 228 len mem[_3757] % 32]
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _3547, 0, address(cd[132]), 128, mem[_3757], mem[_3757 + 196 len floor32(mem[_3757]) + 32]
                else:
                    if not mem[(32 * idx + 1) + (64 * ('cd', 100).length) + ceil32(return_data.size) + 337 len 20]:
                        revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                    require idx + 1 < mem[(32 * ('cd', 100).length) + 128]
                    _3548 = mem[(32 * idx + 1) + (32 * ('cd', 100).length) + 160]
                    if mem[(32 * idx) + (64 * ('cd', 100).length) + ceil32(return_data.size) + 337 len 20] == mem[(32 * idx + 1) + (64 * ('cd', 100).length) + ceil32(return_data.size) + 337 len 20]:
                        if idx < mem[(64 * ('cd', 100).length) + ceil32(return_data.size) + 293] - 2:
                            _3761 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_3761 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_3761 + 36] = 0
                            mem[_3761 + 68] = _3548
                            mem[_3761 + 100] = address(cd[4])
                            mem[_3761 + 132] = 128
                            mem[_3761 + 164] = mem[_3761]
                            s = 0
                            while s < mem[_3761]:
                                mem[s + _3761 + 196] = mem[s + _3761 + 32]
                                s = s + 32
                                continue 
                            if not mem[_3761] % 32:
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _3548, address(cd[4]), 128, mem[_3761 + 164 len mem[_3761] + 32]
                            else:
                                mem[floor32(mem[_3761]) + _3761 + 196] = mem[floor32(mem[_3761]) + _3761 + -(mem[_3761] % 32) + 228 len mem[_3761] % 32]
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _3548, address(cd[4]), 128, mem[_3761], mem[_3761 + 196 len floor32(mem[_3761]) + 32]
                        else:
                            _3765 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_3765 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_3765 + 36] = 0
                            mem[_3765 + 68] = _3548
                            mem[_3765 + 100] = address(cd[132])
                            mem[_3765 + 132] = 128
                            mem[_3765 + 164] = mem[_3765]
                            s = 0
                            while s < mem[_3765]:
                                mem[s + _3765 + 196] = mem[s + _3765 + 32]
                                s = s + 32
                                continue 
                            if not mem[_3765] % 32:
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _3548, address(cd[132]), 128, mem[_3765 + 164 len mem[_3765] + 32]
                            else:
                                mem[floor32(mem[_3765]) + _3765 + 196] = mem[floor32(mem[_3765]) + _3765 + -(mem[_3765] % 32) + 228 len mem[_3765] % 32]
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _3548, address(cd[132]), 128, mem[_3765], mem[_3765 + 196 len floor32(mem[_3765]) + 32]
                    else:
                        if idx < mem[(64 * ('cd', 100).length) + ceil32(return_data.size) + 293] - 2:
                            _3769 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_3769 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_3769 + 36] = _3548
                            mem[_3769 + 68] = 0
                            mem[_3769 + 100] = address(cd[4])
                            mem[_3769 + 132] = 128
                            mem[_3769 + 164] = mem[_3769]
                            s = 0
                            while s < mem[_3769]:
                                mem[s + _3769 + 196] = mem[s + _3769 + 32]
                                s = s + 32
                                continue 
                            if not mem[_3769] % 32:
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _3548, 0, address(cd[4]), 128, mem[_3769 + 164 len mem[_3769] + 32]
                            else:
                                mem[floor32(mem[_3769]) + _3769 + 196] = mem[floor32(mem[_3769]) + _3769 + -(mem[_3769] % 32) + 228 len mem[_3769] % 32]
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _3548, 0, address(cd[4]), 128, mem[_3769], mem[_3769 + 196 len floor32(mem[_3769]) + 32]
                        else:
                            _3773 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_3773 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_3773 + 36] = _3548
                            mem[_3773 + 68] = 0
                            mem[_3773 + 100] = address(cd[132])
                            mem[_3773 + 132] = 128
                            mem[_3773 + 164] = mem[_3773]
                            s = 0
                            while s < mem[_3773]:
                                mem[s + _3773 + 196] = mem[s + _3773 + 32]
                                s = s + 32
                                continue 
                            if not mem[_3773] % 32:
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _3548, 0, address(cd[132]), 128, mem[_3773 + 164 len mem[_3773] + 32]
                            else:
                                mem[floor32(mem[_3773]) + _3773 + 196] = mem[floor32(mem[_3773]) + _3773 + -(mem[_3773] % 32) + 228 len mem[_3773] % 32]
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _3548, 0, address(cd[132]), 128, mem[_3773], mem[_3773 + 196 len floor32(mem[_3773]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
            require mem[(32 * ('cd', 100).length) + 128] - 1 < mem[(32 * ('cd', 100).length) + 128]
            _3373 = mem[(32 * mem[(32 * ('cd', 100).length) + 128] - 1) + (32 * ('cd', 100).length) + 160]
            mem[mem[64]] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _3373
            require ext_code.size(WETHAddress)
            call WETHAddress.withdraw(uint256 arg1) with:
                 gas gas_remaining wei
                args _3373
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require mem[(32 * ('cd', 100).length) + 128] - 1 < mem[(32 * ('cd', 100).length) + 128]
            _3428 = mem[(32 * mem[(32 * ('cd', 100).length) + 128] - 1) + (32 * ('cd', 100).length) + 160]
            _3442 = mem[64]
            mem[mem[64]] = 0
            mem[64] = mem[64] + 32
            mem[_3442 + floor32(mem[_3442]) + -(mem[_3442] % 32) + 64 len mem[_3442] % 32] = mem[_3442 + -(mem[_3442] % 32) + floor32(mem[_3442]) + 64 len mem[_3442] % 32]
            call address(cd[132]).mem[_3442 + 32 len 4] with:
               value _3428 wei
                 gas gas_remaining wei
                args mem[_3442 + 36 len mem[_3442] - 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 32, 35, 0x535472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45, mem[_3442 + 135 len 29]
                mem[_3442 + 32] = 32
                mem[_3442 + 64] = mem[(32 * ('cd', 100).length) + 128]
                _4565 = mem[(32 * ('cd', 100).length) + 128]
                mem[_3442 + 96 len floor32(mem[(32 * ('cd', 100).length) + 128])] = mem[(32 * ('cd', 100).length) + 160 len floor32(mem[(32 * ('cd', 100).length) + 128])]
                return memory
                  from mem[64]
                   len (32 * _4565) + _3442 + -mem[64] + 96
            mem[64] = _3442 + ceil32(return_data.size) + 33
            mem[_3442 + 32] = return_data.size
            mem[_3442 + 64 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 
                            32,
                            35,
                            0x535472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                            mem[_3442 + ceil32(return_data.size) + 136 len 29]
            mem[_3442 + ceil32(return_data.size) + 33] = 32
            mem[_3442 + ceil32(return_data.size) + 65] = mem[(32 * ('cd', 100).length) + 128]
            _4568 = mem[(32 * ('cd', 100).length) + 128]
            mem[_3442 + ceil32(return_data.size) + 97 len floor32(mem[(32 * ('cd', 100).length) + 128])] = mem[(32 * ('cd', 100).length) + 160 len floor32(mem[(32 * ('cd', 100).length) + 128])]
            return 32, mem[_3442 + ceil32(return_data.size) + 65 len (32 * _4568) + 32]
        mem[64] = (98 * ('cd', 100).length) + ceil32(return_data.size) + 325
        mem[(64 * ('cd', 100).length) + ceil32(return_data.size) + 293] = ('cd', 100).length
        mem[(64 * ('cd', 100).length) + ceil32(return_data.size) + 325 len 32 * ('cd', 100).length] = call.data[cd[100] + 36 len 32 * ('cd', 100).length]
        mem[(98 * ('cd', 100).length) + ceil32(return_data.size) + 325] = 0
        idx = 0
        while idx < ('cd', 100).length - 1:
            require idx < mem[(64 * ('cd', 100).length) + ceil32(return_data.size) + 293]
            require idx + 1 < mem[(64 * ('cd', 100).length) + ceil32(return_data.size) + 293]
            if mem[(32 * idx) + (64 * ('cd', 100).length) + ceil32(return_data.size) + 337 len 20] == mem[(32 * idx + 1) + (64 * ('cd', 100).length) + ceil32(return_data.size) + 337 len 20]:
                revert with 0, 32, 35, 0x5450616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 103 len 29]
            if mem[(32 * idx) + (64 * ('cd', 100).length) + ceil32(return_data.size) + 337 len 20] < mem[(32 * idx + 1) + (64 * ('cd', 100).length) + ceil32(return_data.size) + 337 len 20]:
                if not mem[(32 * idx) + (64 * ('cd', 100).length) + ceil32(return_data.size) + 337 len 20]:
                    revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                require idx + 1 < mem[(32 * ('cd', 100).length) + 128]
                _3544 = mem[(32 * idx + 1) + (32 * ('cd', 100).length) + 160]
                if mem[(32 * idx) + (64 * ('cd', 100).length) + ceil32(return_data.size) + 337 len 20] == mem[(32 * idx) + (64 * ('cd', 100).length) + ceil32(return_data.size) + 337 len 20]:
                    if idx < mem[(64 * ('cd', 100).length) + ceil32(return_data.size) + 293] - 2:
                        _3707 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_3707 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_3707 + 36] = 0
                        mem[_3707 + 68] = _3544
                        mem[_3707 + 100] = address(cd[4])
                        mem[_3707 + 132] = 128
                        mem[_3707 + 164] = mem[_3707]
                        s = 0
                        while s < mem[_3707]:
                            mem[s + _3707 + 196] = mem[s + _3707 + 32]
                            s = s + 32
                            continue 
                        if not mem[_3707] % 32:
                            require ext_code.size(address(cd[4]))
                            call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _3544, address(cd[4]), 128, mem[_3707 + 164 len mem[_3707] + 32]
                        else:
                            mem[floor32(mem[_3707]) + _3707 + 196] = mem[floor32(mem[_3707]) + _3707 + -(mem[_3707] % 32) + 228 len mem[_3707] % 32]
                            require ext_code.size(address(cd[4]))
                            call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _3544, address(cd[4]), 128, mem[_3707], mem[_3707 + 196 len floor32(mem[_3707]) + 32]
                    else:
                        _3711 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_3711 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_3711 + 36] = 0
                        mem[_3711 + 68] = _3544
                        mem[_3711 + 100] = address(cd[132])
                        mem[_3711 + 132] = 128
                        mem[_3711 + 164] = mem[_3711]
                        s = 0
                        while s < mem[_3711]:
                            mem[s + _3711 + 196] = mem[s + _3711 + 32]
                            s = s + 32
                            continue 
                        if not mem[_3711] % 32:
                            require ext_code.size(address(cd[4]))
                            call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _3544, address(cd[132]), 128, mem[_3711 + 164 len mem[_3711] + 32]
                        else:
                            mem[floor32(mem[_3711]) + _3711 + 196] = mem[floor32(mem[_3711]) + _3711 + -(mem[_3711] % 32) + 228 len mem[_3711] % 32]
                            require ext_code.size(address(cd[4]))
                            call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _3544, address(cd[132]), 128, mem[_3711], mem[_3711 + 196 len floor32(mem[_3711]) + 32]
                else:
                    if idx < mem[(64 * ('cd', 100).length) + ceil32(return_data.size) + 293] - 2:
                        _3715 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_3715 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_3715 + 36] = _3544
                        mem[_3715 + 68] = 0
                        mem[_3715 + 100] = address(cd[4])
                        mem[_3715 + 132] = 128
                        mem[_3715 + 164] = mem[_3715]
                        s = 0
                        while s < mem[_3715]:
                            mem[s + _3715 + 196] = mem[s + _3715 + 32]
                            s = s + 32
                            continue 
                        if not mem[_3715] % 32:
                            require ext_code.size(address(cd[4]))
                            call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _3544, 0, address(cd[4]), 128, mem[_3715 + 164 len mem[_3715] + 32]
                        else:
                            mem[floor32(mem[_3715]) + _3715 + 196] = mem[floor32(mem[_3715]) + _3715 + -(mem[_3715] % 32) + 228 len mem[_3715] % 32]
                            require ext_code.size(address(cd[4]))
                            call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _3544, 0, address(cd[4]), 128, mem[_3715], mem[_3715 + 196 len floor32(mem[_3715]) + 32]
                    else:
                        _3719 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_3719 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_3719 + 36] = _3544
                        mem[_3719 + 68] = 0
                        mem[_3719 + 100] = address(cd[132])
                        mem[_3719 + 132] = 128
                        mem[_3719 + 164] = mem[_3719]
                        s = 0
                        while s < mem[_3719]:
                            mem[s + _3719 + 196] = mem[s + _3719 + 32]
                            s = s + 32
                            continue 
                        if not mem[_3719] % 32:
                            require ext_code.size(address(cd[4]))
                            call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _3544, 0, address(cd[132]), 128, mem[_3719 + 164 len mem[_3719] + 32]
                        else:
                            mem[floor32(mem[_3719]) + _3719 + 196] = mem[floor32(mem[_3719]) + _3719 + -(mem[_3719] % 32) + 228 len mem[_3719] % 32]
                            require ext_code.size(address(cd[4]))
                            call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _3544, 0, address(cd[132]), 128, mem[_3719], mem[_3719 + 196 len floor32(mem[_3719]) + 32]
            else:
                if not mem[(32 * idx + 1) + (64 * ('cd', 100).length) + ceil32(return_data.size) + 337 len 20]:
                    revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                require idx + 1 < mem[(32 * ('cd', 100).length) + 128]
                _3545 = mem[(32 * idx + 1) + (32 * ('cd', 100).length) + 160]
                if mem[(32 * idx) + (64 * ('cd', 100).length) + ceil32(return_data.size) + 337 len 20] == mem[(32 * idx + 1) + (64 * ('cd', 100).length) + ceil32(return_data.size) + 337 len 20]:
                    if idx < mem[(64 * ('cd', 100).length) + ceil32(return_data.size) + 293] - 2:
                        _3723 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_3723 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_3723 + 36] = 0
                        mem[_3723 + 68] = _3545
                        mem[_3723 + 100] = address(cd[4])
                        mem[_3723 + 132] = 128
                        mem[_3723 + 164] = mem[_3723]
                        s = 0
                        while s < mem[_3723]:
                            mem[s + _3723 + 196] = mem[s + _3723 + 32]
                            s = s + 32
                            continue 
                        if not mem[_3723] % 32:
                            require ext_code.size(address(cd[4]))
                            call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _3545, address(cd[4]), 128, mem[_3723 + 164 len mem[_3723] + 32]
                        else:
                            mem[floor32(mem[_3723]) + _3723 + 196] = mem[floor32(mem[_3723]) + _3723 + -(mem[_3723] % 32) + 228 len mem[_3723] % 32]
                            require ext_code.size(address(cd[4]))
                            call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _3545, address(cd[4]), 128, mem[_3723], mem[_3723 + 196 len floor32(mem[_3723]) + 32]
                    else:
                        _3727 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_3727 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_3727 + 36] = 0
                        mem[_3727 + 68] = _3545
                        mem[_3727 + 100] = address(cd[132])
                        mem[_3727 + 132] = 128
                        mem[_3727 + 164] = mem[_3727]
                        s = 0
                        while s < mem[_3727]:
                            mem[s + _3727 + 196] = mem[s + _3727 + 32]
                            s = s + 32
                            continue 
                        if not mem[_3727] % 32:
                            require ext_code.size(address(cd[4]))
                            call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _3545, address(cd[132]), 128, mem[_3727 + 164 len mem[_3727] + 32]
                        else:
                            mem[floor32(mem[_3727]) + _3727 + 196] = mem[floor32(mem[_3727]) + _3727 + -(mem[_3727] % 32) + 228 len mem[_3727] % 32]
                            require ext_code.size(address(cd[4]))
                            call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _3545, address(cd[132]), 128, mem[_3727], mem[_3727 + 196 len floor32(mem[_3727]) + 32]
                else:
                    if idx < mem[(64 * ('cd', 100).length) + ceil32(return_data.size) + 293] - 2:
                        _3731 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_3731 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_3731 + 36] = _3545
                        mem[_3731 + 68] = 0
                        mem[_3731 + 100] = address(cd[4])
                        mem[_3731 + 132] = 128
                        mem[_3731 + 164] = mem[_3731]
                        s = 0
                        while s < mem[_3731]:
                            mem[s + _3731 + 196] = mem[s + _3731 + 32]
                            s = s + 32
                            continue 
                        if not mem[_3731] % 32:
                            require ext_code.size(address(cd[4]))
                            call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _3545, 0, address(cd[4]), 128, mem[_3731 + 164 len mem[_3731] + 32]
                        else:
                            mem[floor32(mem[_3731]) + _3731 + 196] = mem[floor32(mem[_3731]) + _3731 + -(mem[_3731] % 32) + 228 len mem[_3731] % 32]
                            require ext_code.size(address(cd[4]))
                            call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _3545, 0, address(cd[4]), 128, mem[_3731], mem[_3731 + 196 len floor32(mem[_3731]) + 32]
                    else:
                        _3735 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_3735 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_3735 + 36] = _3545
                        mem[_3735 + 68] = 0
                        mem[_3735 + 100] = address(cd[132])
                        mem[_3735 + 132] = 128
                        mem[_3735 + 164] = mem[_3735]
                        s = 0
                        while s < mem[_3735]:
                            mem[s + _3735 + 196] = mem[s + _3735 + 32]
                            s = s + 32
                            continue 
                        if not mem[_3735] % 32:
                            require ext_code.size(address(cd[4]))
                            call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _3545, 0, address(cd[132]), 128, mem[_3735 + 164 len mem[_3735] + 32]
                        else:
                            mem[floor32(mem[_3735]) + _3735 + 196] = mem[floor32(mem[_3735]) + _3735 + -(mem[_3735] % 32) + 228 len mem[_3735] % 32]
                            require ext_code.size(address(cd[4]))
                            call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _3545, 0, address(cd[132]), 128, mem[_3735], mem[_3735 + 196 len floor32(mem[_3735]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            continue 
        require mem[(32 * ('cd', 100).length) + 128] - 1 < mem[(32 * ('cd', 100).length) + 128]
        _3369 = mem[(32 * mem[(32 * ('cd', 100).length) + 128] - 1) + (32 * ('cd', 100).length) + 160]
        mem[mem[64]] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _3369
        require ext_code.size(WETHAddress)
        call WETHAddress.withdraw(uint256 arg1) with:
             gas gas_remaining wei
            args _3369
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require mem[(32 * ('cd', 100).length) + 128] - 1 < mem[(32 * ('cd', 100).length) + 128]
        _3427 = mem[(32 * mem[(32 * ('cd', 100).length) + 128] - 1) + (32 * ('cd', 100).length) + 160]
        _3439 = mem[64]
        mem[mem[64]] = 0
        mem[64] = mem[64] + 32
        _3441 = mem[_3439]
        mem[mem[64] len floor32(mem[_3439])] = mem[_3439 + 32 len floor32(mem[_3439])]
        mem[mem[64] + floor32(mem[_3439]) + -(mem[_3439] % 32) + 32 len mem[_3439] % 32] = mem[_3439 + floor32(mem[_3439]) + -(mem[_3439] % 32) + 64 len mem[_3439] % 32]
        call address(cd[132]) with:
           value _3427 wei
             gas gas_remaining wei
            args mem[mem[64] + 4 len _3441 + _3439 + -mem[64] + 28]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 32, 35, 0x535472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45, mem[mem[64] + 103 len 29]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = mem[(32 * ('cd', 100).length) + 128]
            _4559 = mem[(32 * ('cd', 100).length) + 128]
            mem[mem[64] + 64 len floor32(mem[(32 * ('cd', 100).length) + 128])] = mem[(32 * ('cd', 100).length) + 160 len floor32(mem[(32 * ('cd', 100).length) + 128])]
            return 32, mem[mem[64] + 32 len (32 * _4559) + 32]
        _4347 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size) + 1
        mem[_4347] = return_data.size
        mem[_4347 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 32, 35, 0x535472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45, mem[mem[64] + 103 len 29]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = mem[(32 * ('cd', 100).length) + 128]
        _4562 = mem[(32 * ('cd', 100).length) + 128]
        mem[mem[64] + 64 len floor32(mem[(32 * ('cd', 100).length) + 128])] = mem[(32 * ('cd', 100).length) + 160 len floor32(mem[(32 * ('cd', 100).length) + 128])]
        return 32, mem[mem[64] + 32 len (32 * _4562) + 32]
    mem[(32 * ('cd', 100).length) + 160 len 32 * ('cd', 100).length] = call.data[calldata.size len 32 * ('cd', 100).length]
    require 0 < ('cd', 100).length
    mem[(32 * ('cd', 100).length) + 160] = cd[36]
    idx = 0
    while idx < ('cd', 100).length - 1:
        require idx < ('cd', 100).length
        _1205 = mem[(32 * idx) + 128]
        require idx + 1 < ('cd', 100).length
        _1210 = mem[(32 * idx + 1) + 128]
        if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
            revert with 0, 
                        32,
                        35,
                        0x5450616e63616b654c6962726172793a204944454e544943414c5f4144445245535345,
                        mem[(64 * ('cd', 100).length) + 263 len 29]
        if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
            if not mem[(32 * idx) + 140 len 20]:
                revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
            require ext_code.size(address(cd[4]))
            staticcall address(cd[4]).getReserves() with:
                    gas gas_remaining wei
            mem[(64 * ('cd', 100).length) + 160 len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require idx < mem[(32 * ('cd', 100).length) + 128]
            if mem[(32 * idx) + (32 * ('cd', 100).length) + 160] <= 0:
                revert with 0, 
                            32,
                            41,
                            0xfe50616e63616b654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                            mem[(64 * ('cd', 100).length) + 269 len 23]
            if address(_1205) == address(_1205):
                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                    revert with 0, 
                                32,
                                38,
                                0x4450616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                mem[(64 * ('cd', 100).length) + 266 len 26]
                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                    revert with 0, 
                                32,
                                38,
                                0x4450616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                mem[(64 * ('cd', 100).length) + 266 len 26]
                if 9975 * mem[(32 * idx) + (32 * ('cd', 100).length) + 160] / 9975 != mem[(32 * idx) + (32 * ('cd', 100).length) + 160]:
                    revert with 0, 'ds-math-mul-overflow'
                if not Mask(112, 0, ext_call.return_data[32]):
                    if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'ds-math-mul-overflow'
                    if (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + (32 * ('cd', 100).length) + 160]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'ds-math-add-overflow'
                    require (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + (32 * ('cd', 100).length) + 160])
                    require idx + 1 < mem[(32 * ('cd', 100).length) + 128]
                    mem[(32 * idx + 1) + (32 * ('cd', 100).length) + 160] = 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + (32 * ('cd', 100).length) + 160])
                else:
                    require Mask(112, 0, ext_call.return_data[32])
                    if 9975 * mem[(32 * idx) + (32 * ('cd', 100).length) + 160] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 9975 * mem[(32 * idx) + (32 * ('cd', 100).length) + 160]:
                        revert with 0, 'ds-math-mul-overflow'
                    if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'ds-math-mul-overflow'
                    if (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + (32 * ('cd', 100).length) + 160]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'ds-math-add-overflow'
                    require (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + (32 * ('cd', 100).length) + 160])
                    require idx + 1 < mem[(32 * ('cd', 100).length) + 128]
                    mem[(32 * idx + 1) + (32 * ('cd', 100).length) + 160] = 9975 * mem[(32 * idx) + (32 * ('cd', 100).length) + 160] * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + (32 * ('cd', 100).length) + 160])
            else:
                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                    revert with 0, 
                                32,
                                38,
                                0x4450616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                mem[(64 * ('cd', 100).length) + 266 len 26]
                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                    revert with 0, 
                                32,
                                38,
                                0x4450616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                mem[(64 * ('cd', 100).length) + 266 len 26]
                if 9975 * mem[(32 * idx) + (32 * ('cd', 100).length) + 160] / 9975 != mem[(32 * idx) + (32 * ('cd', 100).length) + 160]:
                    revert with 0, 'ds-math-mul-overflow'
                if not Mask(112, 0, ext_call.return_data[0]):
                    if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'ds-math-mul-overflow'
                    if (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + (32 * ('cd', 100).length) + 160]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'ds-math-add-overflow'
                    require (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + (32 * ('cd', 100).length) + 160])
                    require idx + 1 < mem[(32 * ('cd', 100).length) + 128]
                    mem[(32 * idx + 1) + (32 * ('cd', 100).length) + 160] = 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + (32 * ('cd', 100).length) + 160])
                else:
                    require Mask(112, 0, ext_call.return_data[0])
                    if 9975 * mem[(32 * idx) + (32 * ('cd', 100).length) + 160] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 9975 * mem[(32 * idx) + (32 * ('cd', 100).length) + 160]:
                        revert with 0, 'ds-math-mul-overflow'
                    if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'ds-math-mul-overflow'
                    if (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + (32 * ('cd', 100).length) + 160]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'ds-math-add-overflow'
                    require (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + (32 * ('cd', 100).length) + 160])
                    require idx + 1 < mem[(32 * ('cd', 100).length) + 128]
                    mem[(32 * idx + 1) + (32 * ('cd', 100).length) + 160] = 9975 * mem[(32 * idx) + (32 * ('cd', 100).length) + 160] * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + (32 * ('cd', 100).length) + 160])
        else:
            if not mem[(32 * idx + 1) + 140 len 20]:
                revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
            require ext_code.size(address(cd[4]))
            staticcall address(cd[4]).getReserves() with:
                    gas gas_remaining wei
            mem[(64 * ('cd', 100).length) + 160 len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require idx < mem[(32 * ('cd', 100).length) + 128]
            if mem[(32 * idx) + (32 * ('cd', 100).length) + 160] <= 0:
                revert with 0, 
                            32,
                            41,
                            0xfe50616e63616b654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                            mem[(64 * ('cd', 100).length) + 269 len 23]
            if address(_1210) == address(_1205):
                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                    revert with 0, 
                                32,
                                38,
                                0x4450616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                mem[(64 * ('cd', 100).length) + 266 len 26]
                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                    revert with 0, 
                                32,
                                38,
                                0x4450616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                mem[(64 * ('cd', 100).length) + 266 len 26]
                if 9975 * mem[(32 * idx) + (32 * ('cd', 100).length) + 160] / 9975 != mem[(32 * idx) + (32 * ('cd', 100).length) + 160]:
                    revert with 0, 'ds-math-mul-overflow'
                if not Mask(112, 0, ext_call.return_data[32]):
                    if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'ds-math-mul-overflow'
                    if (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + (32 * ('cd', 100).length) + 160]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'ds-math-add-overflow'
                    require (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + (32 * ('cd', 100).length) + 160])
                    require idx + 1 < mem[(32 * ('cd', 100).length) + 128]
                    mem[(32 * idx + 1) + (32 * ('cd', 100).length) + 160] = 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + (32 * ('cd', 100).length) + 160])
                else:
                    require Mask(112, 0, ext_call.return_data[32])
                    if 9975 * mem[(32 * idx) + (32 * ('cd', 100).length) + 160] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 9975 * mem[(32 * idx) + (32 * ('cd', 100).length) + 160]:
                        revert with 0, 'ds-math-mul-overflow'
                    if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'ds-math-mul-overflow'
                    if (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + (32 * ('cd', 100).length) + 160]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'ds-math-add-overflow'
                    require (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + (32 * ('cd', 100).length) + 160])
                    require idx + 1 < mem[(32 * ('cd', 100).length) + 128]
                    mem[(32 * idx + 1) + (32 * ('cd', 100).length) + 160] = 9975 * mem[(32 * idx) + (32 * ('cd', 100).length) + 160] * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + (32 * ('cd', 100).length) + 160])
            else:
                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                    revert with 0, 
                                32,
                                38,
                                0x4450616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                mem[(64 * ('cd', 100).length) + 266 len 26]
                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                    revert with 0, 
                                32,
                                38,
                                0x4450616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                mem[(64 * ('cd', 100).length) + 266 len 26]
                if 9975 * mem[(32 * idx) + (32 * ('cd', 100).length) + 160] / 9975 != mem[(32 * idx) + (32 * ('cd', 100).length) + 160]:
                    revert with 0, 'ds-math-mul-overflow'
                if not Mask(112, 0, ext_call.return_data[0]):
                    if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'ds-math-mul-overflow'
                    if (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + (32 * ('cd', 100).length) + 160]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'ds-math-add-overflow'
                    require (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + (32 * ('cd', 100).length) + 160])
                    require idx + 1 < mem[(32 * ('cd', 100).length) + 128]
                    mem[(32 * idx + 1) + (32 * ('cd', 100).length) + 160] = 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + (32 * ('cd', 100).length) + 160])
                else:
                    require Mask(112, 0, ext_call.return_data[0])
                    if 9975 * mem[(32 * idx) + (32 * ('cd', 100).length) + 160] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 9975 * mem[(32 * idx) + (32 * ('cd', 100).length) + 160]:
                        revert with 0, 'ds-math-mul-overflow'
                    if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'ds-math-mul-overflow'
                    if (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + (32 * ('cd', 100).length) + 160]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'ds-math-add-overflow'
                    require (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + (32 * ('cd', 100).length) + 160])
                    require idx + 1 < mem[(32 * ('cd', 100).length) + 128]
                    mem[(32 * idx + 1) + (32 * ('cd', 100).length) + 160] = 9975 * mem[(32 * idx) + (32 * ('cd', 100).length) + 160] * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + (32 * ('cd', 100).length) + 160])
        idx = idx + 1
        continue 
    require mem[(32 * ('cd', 100).length) + 128] - 1 < mem[(32 * ('cd', 100).length) + 128]
    if mem[(32 * mem[(32 * ('cd', 100).length) + 128] - 1) + (32 * ('cd', 100).length) + 160] < cd[68]:
        revert with 0, 
                    32,
                    41,
                    0x2150616e63616b65526f757465723a20494e53554646494349454e545f4f55545055545f414d4f554e,
                    mem[(64 * ('cd', 100).length) + 269 len 23]
    require 0 < ('cd', 100).length
    require 0 < mem[(32 * ('cd', 100).length) + 128]
    mem[(64 * ('cd', 100).length) + 196] = this.address
    mem[(64 * ('cd', 100).length) + 228] = address(cd[4])
    mem[(64 * ('cd', 100).length) + 260] = mem[(32 * ('cd', 100).length) + 160]
    mem[(64 * ('cd', 100).length) + 160] = 100
    mem[(64 * ('cd', 100).length) + 192 len 4] = unknown_0x23b872dd(?????)
    mem[(64 * ('cd', 100).length) + 292 len 96] = 0, address(this.address), address(cd[4]), mem[(64 * ('cd', 100).length) + 260 len 28]
    mem[(64 * ('cd', 100).length) + 416 len 4] = mem[(64 * ('cd', 100).length) + 280 len 4]
    call address(('cd', 100)[0]) with:
         gas gas_remaining wei
        args mem[(64 * ('cd', 100).length) + 260], address(cd[4]), mem[(64 * ('cd', 100).length) + 260 len 28] >> 224, mem[(64 * ('cd', 100).length) + 388 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 
                        32,
                        36,
                        0x595472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                        mem[(64 * ('cd', 100).length) + 396 len 20],
                        mem[(64 * ('cd', 100).length) + 280 len 4],
                        mem[(64 * ('cd', 100).length) + 420 len 4]
        if ('cd', 100).length:
            require ('cd', 100).length >= 32
            if not mem[128]:
                revert with 0, 
                            32,
                            36,
                            0x595472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                            mem[(64 * ('cd', 100).length) + 396 len 20],
                            mem[(64 * ('cd', 100).length) + 280 len 4],
                            mem[(64 * ('cd', 100).length) + 420 len 4]
            mem[64] = (98 * ('cd', 100).length) + 324
            mem[(64 * ('cd', 100).length) + 292] = ('cd', 100).length
            mem[(64 * ('cd', 100).length) + 324 len 32 * ('cd', 100).length] = call.data[cd[100] + 36 len 32 * ('cd', 100).length]
            mem[(98 * ('cd', 100).length) + 324] = 0
            idx = 0
            while idx < ('cd', 100).length - 1:
                require idx < mem[(64 * ('cd', 100).length) + 292]
                require idx + 1 < mem[(64 * ('cd', 100).length) + 292]
                if mem[(32 * idx) + (64 * ('cd', 100).length) + 336 len 20] == mem[(32 * idx + 1) + (64 * ('cd', 100).length) + 336 len 20]:
                    revert with 0, 32, 35, 0x5450616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 103 len 29]
                if mem[(32 * idx) + (64 * ('cd', 100).length) + 336 len 20] < mem[(32 * idx + 1) + (64 * ('cd', 100).length) + 336 len 20]:
                    if not mem[(32 * idx) + (64 * ('cd', 100).length) + 336 len 20]:
                        revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                    require idx + 1 < mem[(32 * ('cd', 100).length) + 128]
                    _3553 = mem[(32 * idx + 1) + (32 * ('cd', 100).length) + 160]
                    if mem[(32 * idx) + (64 * ('cd', 100).length) + 336 len 20] == mem[(32 * idx) + (64 * ('cd', 100).length) + 336 len 20]:
                        if idx < mem[(64 * ('cd', 100).length) + 292] - 2:
                            _3821 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_3821 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_3821 + 36] = 0
                            mem[_3821 + 68] = _3553
                            mem[_3821 + 100] = address(cd[4])
                            mem[_3821 + 132] = 128
                            mem[_3821 + 164] = mem[_3821]
                            s = 0
                            while s < mem[_3821]:
                                mem[s + _3821 + 196] = mem[s + _3821 + 32]
                                s = s + 32
                                continue 
                            if not mem[_3821] % 32:
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _3553, address(cd[4]), 128, mem[_3821 + 164 len mem[_3821] + 32]
                            else:
                                mem[floor32(mem[_3821]) + _3821 + 196] = mem[floor32(mem[_3821]) + _3821 + -(mem[_3821] % 32) + 228 len mem[_3821] % 32]
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _3553, address(cd[4]), 128, mem[_3821], mem[_3821 + 196 len floor32(mem[_3821]) + 32]
                        else:
                            _3825 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_3825 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_3825 + 36] = 0
                            mem[_3825 + 68] = _3553
                            mem[_3825 + 100] = address(cd[132])
                            mem[_3825 + 132] = 128
                            mem[_3825 + 164] = mem[_3825]
                            s = 0
                            while s < mem[_3825]:
                                mem[s + _3825 + 196] = mem[s + _3825 + 32]
                                s = s + 32
                                continue 
                            if not mem[_3825] % 32:
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _3553, address(cd[132]), 128, mem[_3825 + 164 len mem[_3825] + 32]
                            else:
                                mem[floor32(mem[_3825]) + _3825 + 196] = mem[floor32(mem[_3825]) + _3825 + -(mem[_3825] % 32) + 228 len mem[_3825] % 32]
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _3553, address(cd[132]), 128, mem[_3825], mem[_3825 + 196 len floor32(mem[_3825]) + 32]
                    else:
                        if idx < mem[(64 * ('cd', 100).length) + 292] - 2:
                            _3829 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_3829 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_3829 + 36] = _3553
                            mem[_3829 + 68] = 0
                            mem[_3829 + 100] = address(cd[4])
                            mem[_3829 + 132] = 128
                            mem[_3829 + 164] = mem[_3829]
                            s = 0
                            while s < mem[_3829]:
                                mem[s + _3829 + 196] = mem[s + _3829 + 32]
                                s = s + 32
                                continue 
                            if not mem[_3829] % 32:
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _3553, 0, address(cd[4]), 128, mem[_3829 + 164 len mem[_3829] + 32]
                            else:
                                mem[floor32(mem[_3829]) + _3829 + 196] = mem[floor32(mem[_3829]) + _3829 + -(mem[_3829] % 32) + 228 len mem[_3829] % 32]
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _3553, 0, address(cd[4]), 128, mem[_3829], mem[_3829 + 196 len floor32(mem[_3829]) + 32]
                        else:
                            _3833 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_3833 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_3833 + 36] = _3553
                            mem[_3833 + 68] = 0
                            mem[_3833 + 100] = address(cd[132])
                            mem[_3833 + 132] = 128
                            mem[_3833 + 164] = mem[_3833]
                            s = 0
                            while s < mem[_3833]:
                                mem[s + _3833 + 196] = mem[s + _3833 + 32]
                                s = s + 32
                                continue 
                            if not mem[_3833] % 32:
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _3553, 0, address(cd[132]), 128, mem[_3833 + 164 len mem[_3833] + 32]
                            else:
                                mem[floor32(mem[_3833]) + _3833 + 196] = mem[floor32(mem[_3833]) + _3833 + -(mem[_3833] % 32) + 228 len mem[_3833] % 32]
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _3553, 0, address(cd[132]), 128, mem[_3833], mem[_3833 + 196 len floor32(mem[_3833]) + 32]
                else:
                    if not mem[(32 * idx + 1) + (64 * ('cd', 100).length) + 336 len 20]:
                        revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                    require idx + 1 < mem[(32 * ('cd', 100).length) + 128]
                    _3554 = mem[(32 * idx + 1) + (32 * ('cd', 100).length) + 160]
                    if mem[(32 * idx) + (64 * ('cd', 100).length) + 336 len 20] == mem[(32 * idx + 1) + (64 * ('cd', 100).length) + 336 len 20]:
                        if idx < mem[(64 * ('cd', 100).length) + 292] - 2:
                            _3837 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_3837 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_3837 + 36] = 0
                            mem[_3837 + 68] = _3554
                            mem[_3837 + 100] = address(cd[4])
                            mem[_3837 + 132] = 128
                            mem[_3837 + 164] = mem[_3837]
                            s = 0
                            while s < mem[_3837]:
                                mem[s + _3837 + 196] = mem[s + _3837 + 32]
                                s = s + 32
                                continue 
                            if not mem[_3837] % 32:
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _3554, address(cd[4]), 128, mem[_3837 + 164 len mem[_3837] + 32]
                            else:
                                mem[floor32(mem[_3837]) + _3837 + 196] = mem[floor32(mem[_3837]) + _3837 + -(mem[_3837] % 32) + 228 len mem[_3837] % 32]
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _3554, address(cd[4]), 128, mem[_3837], mem[_3837 + 196 len floor32(mem[_3837]) + 32]
                        else:
                            _3841 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_3841 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_3841 + 36] = 0
                            mem[_3841 + 68] = _3554
                            mem[_3841 + 100] = address(cd[132])
                            mem[_3841 + 132] = 128
                            mem[_3841 + 164] = mem[_3841]
                            s = 0
                            while s < mem[_3841]:
                                mem[s + _3841 + 196] = mem[s + _3841 + 32]
                                s = s + 32
                                continue 
                            if not mem[_3841] % 32:
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _3554, address(cd[132]), 128, mem[_3841 + 164 len mem[_3841] + 32]
                            else:
                                mem[floor32(mem[_3841]) + _3841 + 196] = mem[floor32(mem[_3841]) + _3841 + -(mem[_3841] % 32) + 228 len mem[_3841] % 32]
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _3554, address(cd[132]), 128, mem[_3841], mem[_3841 + 196 len floor32(mem[_3841]) + 32]
                    else:
                        if idx < mem[(64 * ('cd', 100).length) + 292] - 2:
                            _3845 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_3845 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_3845 + 36] = _3554
                            mem[_3845 + 68] = 0
                            mem[_3845 + 100] = address(cd[4])
                            mem[_3845 + 132] = 128
                            mem[_3845 + 164] = mem[_3845]
                            s = 0
                            while s < mem[_3845]:
                                mem[s + _3845 + 196] = mem[s + _3845 + 32]
                                s = s + 32
                                continue 
                            if not mem[_3845] % 32:
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _3554, 0, address(cd[4]), 128, mem[_3845 + 164 len mem[_3845] + 32]
                            else:
                                mem[floor32(mem[_3845]) + _3845 + 196] = mem[floor32(mem[_3845]) + _3845 + -(mem[_3845] % 32) + 228 len mem[_3845] % 32]
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _3554, 0, address(cd[4]), 128, mem[_3845], mem[_3845 + 196 len floor32(mem[_3845]) + 32]
                        else:
                            _3849 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_3849 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_3849 + 36] = _3554
                            mem[_3849 + 68] = 0
                            mem[_3849 + 100] = address(cd[132])
                            mem[_3849 + 132] = 128
                            mem[_3849 + 164] = mem[_3849]
                            s = 0
                            while s < mem[_3849]:
                                mem[s + _3849 + 196] = mem[s + _3849 + 32]
                                s = s + 32
                                continue 
                            if not mem[_3849] % 32:
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _3554, 0, address(cd[132]), 128, mem[_3849 + 164 len mem[_3849] + 32]
                            else:
                                mem[floor32(mem[_3849]) + _3849 + 196] = mem[floor32(mem[_3849]) + _3849 + -(mem[_3849] % 32) + 228 len mem[_3849] % 32]
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _3554, 0, address(cd[132]), 128, mem[_3849], mem[_3849 + 196 len floor32(mem[_3849]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
            require mem[(32 * ('cd', 100).length) + 128] - 1 < mem[(32 * ('cd', 100).length) + 128]
            _3381 = mem[(32 * mem[(32 * ('cd', 100).length) + 128] - 1) + (32 * ('cd', 100).length) + 160]
            mem[mem[64]] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _3381
            require ext_code.size(WETHAddress)
            call WETHAddress.withdraw(uint256 arg1) with:
                 gas gas_remaining wei
                args _3381
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require mem[(32 * ('cd', 100).length) + 128] - 1 < mem[(32 * ('cd', 100).length) + 128]
            _3430 = mem[(32 * mem[(32 * ('cd', 100).length) + 128] - 1) + (32 * ('cd', 100).length) + 160]
            _3448 = mem[64]
            mem[mem[64]] = 0
            mem[64] = mem[64] + 32
            mem[_3448 + floor32(mem[_3448]) + -(mem[_3448] % 32) + 64 len mem[_3448] % 32] = mem[_3448 + -(mem[_3448] % 32) + floor32(mem[_3448]) + 64 len mem[_3448] % 32]
            call address(cd[132]).mem[_3448 + 32 len 4] with:
               value _3430 wei
                 gas gas_remaining wei
                args mem[_3448 + 36 len mem[_3448] - 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 32, 35, 0x535472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45, mem[_3448 + 135 len 29]
                mem[_3448 + 32] = 32
                mem[_3448 + 64] = mem[(32 * ('cd', 100).length) + 128]
                _4577 = mem[(32 * ('cd', 100).length) + 128]
                mem[_3448 + 96 len floor32(mem[(32 * ('cd', 100).length) + 128])] = mem[(32 * ('cd', 100).length) + 160 len floor32(mem[(32 * ('cd', 100).length) + 128])]
                return memory
                  from mem[64]
                   len (32 * _4577) + _3448 + -mem[64] + 96
            mem[64] = _3448 + ceil32(return_data.size) + 33
            mem[_3448 + 32] = return_data.size
            mem[_3448 + 64 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 
                            32,
                            35,
                            0x535472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                            mem[_3448 + ceil32(return_data.size) + 136 len 29]
            mem[_3448 + ceil32(return_data.size) + 33] = 32
            mem[_3448 + ceil32(return_data.size) + 65] = mem[(32 * ('cd', 100).length) + 128]
            _4580 = mem[(32 * ('cd', 100).length) + 128]
            mem[_3448 + ceil32(return_data.size) + 97 len floor32(mem[(32 * ('cd', 100).length) + 128])] = mem[(32 * ('cd', 100).length) + 160 len floor32(mem[(32 * ('cd', 100).length) + 128])]
            return 32, mem[_3448 + ceil32(return_data.size) + 65 len (32 * _4580) + 32]
        mem[64] = (98 * ('cd', 100).length) + 324
        mem[(64 * ('cd', 100).length) + 292] = ('cd', 100).length
        mem[(64 * ('cd', 100).length) + 324 len 32 * ('cd', 100).length] = call.data[cd[100] + 36 len 32 * ('cd', 100).length]
        mem[(98 * ('cd', 100).length) + 324] = 0
        idx = 0
        while idx < ('cd', 100).length - 1:
            require idx < mem[(64 * ('cd', 100).length) + 292]
            require idx + 1 < mem[(64 * ('cd', 100).length) + 292]
            if mem[(32 * idx) + (64 * ('cd', 100).length) + 336 len 20] == mem[(32 * idx + 1) + (64 * ('cd', 100).length) + 336 len 20]:
                revert with 0, 32, 35, 0x5450616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 103 len 29]
            if mem[(32 * idx) + (64 * ('cd', 100).length) + 336 len 20] < mem[(32 * idx + 1) + (64 * ('cd', 100).length) + 336 len 20]:
                if not mem[(32 * idx) + (64 * ('cd', 100).length) + 336 len 20]:
                    revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                require idx + 1 < mem[(32 * ('cd', 100).length) + 128]
                _3550 = mem[(32 * idx + 1) + (32 * ('cd', 100).length) + 160]
                if mem[(32 * idx) + (64 * ('cd', 100).length) + 336 len 20] == mem[(32 * idx) + (64 * ('cd', 100).length) + 336 len 20]:
                    if idx < mem[(64 * ('cd', 100).length) + 292] - 2:
                        _3783 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_3783 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_3783 + 36] = 0
                        mem[_3783 + 68] = _3550
                        mem[_3783 + 100] = address(cd[4])
                        mem[_3783 + 132] = 128
                        mem[_3783 + 164] = mem[_3783]
                        s = 0
                        while s < mem[_3783]:
                            mem[s + _3783 + 196] = mem[s + _3783 + 32]
                            s = s + 32
                            continue 
                        if not mem[_3783] % 32:
                            require ext_code.size(address(cd[4]))
                            call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _3550, address(cd[4]), 128, mem[_3783 + 164 len mem[_3783] + 32]
                        else:
                            mem[floor32(mem[_3783]) + _3783 + 196] = mem[floor32(mem[_3783]) + _3783 + -(mem[_3783] % 32) + 228 len mem[_3783] % 32]
                            require ext_code.size(address(cd[4]))
                            call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _3550, address(cd[4]), 128, mem[_3783], mem[_3783 + 196 len floor32(mem[_3783]) + 32]
                    else:
                        _3787 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_3787 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_3787 + 36] = 0
                        mem[_3787 + 68] = _3550
                        mem[_3787 + 100] = address(cd[132])
                        mem[_3787 + 132] = 128
                        mem[_3787 + 164] = mem[_3787]
                        s = 0
                        while s < mem[_3787]:
                            mem[s + _3787 + 196] = mem[s + _3787 + 32]
                            s = s + 32
                            continue 
                        if not mem[_3787] % 32:
                            require ext_code.size(address(cd[4]))
                            call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _3550, address(cd[132]), 128, mem[_3787 + 164 len mem[_3787] + 32]
                        else:
                            mem[floor32(mem[_3787]) + _3787 + 196] = mem[floor32(mem[_3787]) + _3787 + -(mem[_3787] % 32) + 228 len mem[_3787] % 32]
                            require ext_code.size(address(cd[4]))
                            call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _3550, address(cd[132]), 128, mem[_3787], mem[_3787 + 196 len floor32(mem[_3787]) + 32]
                else:
                    if idx < mem[(64 * ('cd', 100).length) + 292] - 2:
                        _3791 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_3791 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_3791 + 36] = _3550
                        mem[_3791 + 68] = 0
                        mem[_3791 + 100] = address(cd[4])
                        mem[_3791 + 132] = 128
                        mem[_3791 + 164] = mem[_3791]
                        s = 0
                        while s < mem[_3791]:
                            mem[s + _3791 + 196] = mem[s + _3791 + 32]
                            s = s + 32
                            continue 
                        if not mem[_3791] % 32:
                            require ext_code.size(address(cd[4]))
                            call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _3550, 0, address(cd[4]), 128, mem[_3791 + 164 len mem[_3791] + 32]
                        else:
                            mem[floor32(mem[_3791]) + _3791 + 196] = mem[floor32(mem[_3791]) + _3791 + -(mem[_3791] % 32) + 228 len mem[_3791] % 32]
                            require ext_code.size(address(cd[4]))
                            call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _3550, 0, address(cd[4]), 128, mem[_3791], mem[_3791 + 196 len floor32(mem[_3791]) + 32]
                    else:
                        _3795 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_3795 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_3795 + 36] = _3550
                        mem[_3795 + 68] = 0
                        mem[_3795 + 100] = address(cd[132])
                        mem[_3795 + 132] = 128
                        mem[_3795 + 164] = mem[_3795]
                        s = 0
                        while s < mem[_3795]:
                            mem[s + _3795 + 196] = mem[s + _3795 + 32]
                            s = s + 32
                            continue 
                        if not mem[_3795] % 32:
                            require ext_code.size(address(cd[4]))
                            call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _3550, 0, address(cd[132]), 128, mem[_3795 + 164 len mem[_3795] + 32]
                        else:
                            mem[floor32(mem[_3795]) + _3795 + 196] = mem[floor32(mem[_3795]) + _3795 + -(mem[_3795] % 32) + 228 len mem[_3795] % 32]
                            require ext_code.size(address(cd[4]))
                            call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _3550, 0, address(cd[132]), 128, mem[_3795], mem[_3795 + 196 len floor32(mem[_3795]) + 32]
            else:
                if not mem[(32 * idx + 1) + (64 * ('cd', 100).length) + 336 len 20]:
                    revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                require idx + 1 < mem[(32 * ('cd', 100).length) + 128]
                _3551 = mem[(32 * idx + 1) + (32 * ('cd', 100).length) + 160]
                if mem[(32 * idx) + (64 * ('cd', 100).length) + 336 len 20] == mem[(32 * idx + 1) + (64 * ('cd', 100).length) + 336 len 20]:
                    if idx < mem[(64 * ('cd', 100).length) + 292] - 2:
                        _3799 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_3799 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_3799 + 36] = 0
                        mem[_3799 + 68] = _3551
                        mem[_3799 + 100] = address(cd[4])
                        mem[_3799 + 132] = 128
                        mem[_3799 + 164] = mem[_3799]
                        s = 0
                        while s < mem[_3799]:
                            mem[s + _3799 + 196] = mem[s + _3799 + 32]
                            s = s + 32
                            continue 
                        if not mem[_3799] % 32:
                            require ext_code.size(address(cd[4]))
                            call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _3551, address(cd[4]), 128, mem[_3799 + 164 len mem[_3799] + 32]
                        else:
                            mem[floor32(mem[_3799]) + _3799 + 196] = mem[floor32(mem[_3799]) + _3799 + -(mem[_3799] % 32) + 228 len mem[_3799] % 32]
                            require ext_code.size(address(cd[4]))
                            call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _3551, address(cd[4]), 128, mem[_3799], mem[_3799 + 196 len floor32(mem[_3799]) + 32]
                    else:
                        _3803 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_3803 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_3803 + 36] = 0
                        mem[_3803 + 68] = _3551
                        mem[_3803 + 100] = address(cd[132])
                        mem[_3803 + 132] = 128
                        mem[_3803 + 164] = mem[_3803]
                        s = 0
                        while s < mem[_3803]:
                            mem[s + _3803 + 196] = mem[s + _3803 + 32]
                            s = s + 32
                            continue 
                        if not mem[_3803] % 32:
                            require ext_code.size(address(cd[4]))
                            call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _3551, address(cd[132]), 128, mem[_3803 + 164 len mem[_3803] + 32]
                        else:
                            mem[floor32(mem[_3803]) + _3803 + 196] = mem[floor32(mem[_3803]) + _3803 + -(mem[_3803] % 32) + 228 len mem[_3803] % 32]
                            require ext_code.size(address(cd[4]))
                            call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _3551, address(cd[132]), 128, mem[_3803], mem[_3803 + 196 len floor32(mem[_3803]) + 32]
                else:
                    if idx < mem[(64 * ('cd', 100).length) + 292] - 2:
                        _3807 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_3807 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_3807 + 36] = _3551
                        mem[_3807 + 68] = 0
                        mem[_3807 + 100] = address(cd[4])
                        mem[_3807 + 132] = 128
                        mem[_3807 + 164] = mem[_3807]
                        s = 0
                        while s < mem[_3807]:
                            mem[s + _3807 + 196] = mem[s + _3807 + 32]
                            s = s + 32
                            continue 
                        if not mem[_3807] % 32:
                            require ext_code.size(address(cd[4]))
                            call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _3551, 0, address(cd[4]), 128, mem[_3807 + 164 len mem[_3807] + 32]
                        else:
                            mem[floor32(mem[_3807]) + _3807 + 196] = mem[floor32(mem[_3807]) + _3807 + -(mem[_3807] % 32) + 228 len mem[_3807] % 32]
                            require ext_code.size(address(cd[4]))
                            call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _3551, 0, address(cd[4]), 128, mem[_3807], mem[_3807 + 196 len floor32(mem[_3807]) + 32]
                    else:
                        _3811 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_3811 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_3811 + 36] = _3551
                        mem[_3811 + 68] = 0
                        mem[_3811 + 100] = address(cd[132])
                        mem[_3811 + 132] = 128
                        mem[_3811 + 164] = mem[_3811]
                        s = 0
                        while s < mem[_3811]:
                            mem[s + _3811 + 196] = mem[s + _3811 + 32]
                            s = s + 32
                            continue 
                        if not mem[_3811] % 32:
                            require ext_code.size(address(cd[4]))
                            call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _3551, 0, address(cd[132]), 128, mem[_3811 + 164 len mem[_3811] + 32]
                        else:
                            mem[floor32(mem[_3811]) + _3811 + 196] = mem[floor32(mem[_3811]) + _3811 + -(mem[_3811] % 32) + 228 len mem[_3811] % 32]
                            require ext_code.size(address(cd[4]))
                            call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _3551, 0, address(cd[132]), 128, mem[_3811], mem[_3811 + 196 len floor32(mem[_3811]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            continue 
        require mem[(32 * ('cd', 100).length) + 128] - 1 < mem[(32 * ('cd', 100).length) + 128]
        _3377 = mem[(32 * mem[(32 * ('cd', 100).length) + 128] - 1) + (32 * ('cd', 100).length) + 160]
        mem[mem[64]] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _3377
        require ext_code.size(WETHAddress)
        call WETHAddress.withdraw(uint256 arg1) with:
             gas gas_remaining wei
            args _3377
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require mem[(32 * ('cd', 100).length) + 128] - 1 < mem[(32 * ('cd', 100).length) + 128]
        _3429 = mem[(32 * mem[(32 * ('cd', 100).length) + 128] - 1) + (32 * ('cd', 100).length) + 160]
        _3445 = mem[64]
        mem[mem[64]] = 0
        mem[64] = mem[64] + 32
        _3447 = mem[_3445]
        mem[mem[64] len floor32(mem[_3445])] = mem[_3445 + 32 len floor32(mem[_3445])]
        mem[mem[64] + floor32(mem[_3445]) + -(mem[_3445] % 32) + 32 len mem[_3445] % 32] = mem[_3445 + floor32(mem[_3445]) + -(mem[_3445] % 32) + 64 len mem[_3445] % 32]
        call address(cd[132]) with:
           value _3429 wei
             gas gas_remaining wei
            args mem[mem[64] + 4 len _3447 + _3445 + -mem[64] + 28]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 32, 35, 0x535472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45, mem[mem[64] + 103 len 29]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = mem[(32 * ('cd', 100).length) + 128]
            _4571 = mem[(32 * ('cd', 100).length) + 128]
            mem[mem[64] + 64 len floor32(mem[(32 * ('cd', 100).length) + 128])] = mem[(32 * ('cd', 100).length) + 160 len floor32(mem[(32 * ('cd', 100).length) + 128])]
            return 32, mem[mem[64] + 32 len (32 * _4571) + 32]
        _4381 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size) + 1
        mem[_4381] = return_data.size
        mem[_4381 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 32, 35, 0x535472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45, mem[mem[64] + 103 len 29]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = mem[(32 * ('cd', 100).length) + 128]
        _4574 = mem[(32 * ('cd', 100).length) + 128]
        mem[mem[64] + 64 len floor32(mem[(32 * ('cd', 100).length) + 128])] = mem[(32 * ('cd', 100).length) + 160 len floor32(mem[(32 * ('cd', 100).length) + 128])]
        return 32, mem[mem[64] + 32 len (32 * _4574) + 32]
    mem[(64 * ('cd', 100).length) + 292] = return_data.size
    mem[(64 * ('cd', 100).length) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        revert with 0, 
                    32,
                    36,
                    0x595472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                    mem[(64 * ('cd', 100).length) + ceil32(return_data.size) + 397 len 28]
    if not return_data.size:
        mem[64] = (98 * ('cd', 100).length) + ceil32(return_data.size) + 325
        mem[(64 * ('cd', 100).length) + ceil32(return_data.size) + 293] = ('cd', 100).length
        mem[(64 * ('cd', 100).length) + ceil32(return_data.size) + 325 len 32 * ('cd', 100).length] = call.data[cd[100] + 36 len 32 * ('cd', 100).length]
        mem[(98 * ('cd', 100).length) + ceil32(return_data.size) + 325] = 0
        idx = 0
        while idx < ('cd', 100).length - 1:
            require idx < mem[(64 * ('cd', 100).length) + ceil32(return_data.size) + 293]
            require idx + 1 < mem[(64 * ('cd', 100).length) + ceil32(return_data.size) + 293]
            if mem[(32 * idx) + (64 * ('cd', 100).length) + ceil32(return_data.size) + 337 len 20] == mem[(32 * idx + 1) + (64 * ('cd', 100).length) + ceil32(return_data.size) + 337 len 20]:
                revert with 0, 32, 35, 0x5450616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 103 len 29]
            if mem[(32 * idx) + (64 * ('cd', 100).length) + ceil32(return_data.size) + 337 len 20] < mem[(32 * idx + 1) + (64 * ('cd', 100).length) + ceil32(return_data.size) + 337 len 20]:
                if not mem[(32 * idx) + (64 * ('cd', 100).length) + ceil32(return_data.size) + 337 len 20]:
                    revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                require idx + 1 < mem[(32 * ('cd', 100).length) + 128]
                _3556 = mem[(32 * idx + 1) + (32 * ('cd', 100).length) + 160]
                if mem[(32 * idx) + (64 * ('cd', 100).length) + ceil32(return_data.size) + 337 len 20] == mem[(32 * idx) + (64 * ('cd', 100).length) + ceil32(return_data.size) + 337 len 20]:
                    if idx < mem[(64 * ('cd', 100).length) + ceil32(return_data.size) + 293] - 2:
                        _3859 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_3859 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_3859 + 36] = 0
                        mem[_3859 + 68] = _3556
                        mem[_3859 + 100] = address(cd[4])
                        mem[_3859 + 132] = 128
                        mem[_3859 + 164] = mem[_3859]
                        s = 0
                        while s < mem[_3859]:
                            mem[s + _3859 + 196] = mem[s + _3859 + 32]
                            s = s + 32
                            continue 
                        if not mem[_3859] % 32:
                            require ext_code.size(address(cd[4]))
                            call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _3556, address(cd[4]), 128, mem[_3859 + 164 len mem[_3859] + 32]
                        else:
                            mem[floor32(mem[_3859]) + _3859 + 196] = mem[floor32(mem[_3859]) + _3859 + -(mem[_3859] % 32) + 228 len mem[_3859] % 32]
                            require ext_code.size(address(cd[4]))
                            call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _3556, address(cd[4]), 128, mem[_3859], mem[_3859 + 196 len floor32(mem[_3859]) + 32]
                    else:
                        _3863 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_3863 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_3863 + 36] = 0
                        mem[_3863 + 68] = _3556
                        mem[_3863 + 100] = address(cd[132])
                        mem[_3863 + 132] = 128
                        mem[_3863 + 164] = mem[_3863]
                        s = 0
                        while s < mem[_3863]:
                            mem[s + _3863 + 196] = mem[s + _3863 + 32]
                            s = s + 32
                            continue 
                        if not mem[_3863] % 32:
                            require ext_code.size(address(cd[4]))
                            call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _3556, address(cd[132]), 128, mem[_3863 + 164 len mem[_3863] + 32]
                        else:
                            mem[floor32(mem[_3863]) + _3863 + 196] = mem[floor32(mem[_3863]) + _3863 + -(mem[_3863] % 32) + 228 len mem[_3863] % 32]
                            require ext_code.size(address(cd[4]))
                            call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _3556, address(cd[132]), 128, mem[_3863], mem[_3863 + 196 len floor32(mem[_3863]) + 32]
                else:
                    if idx < mem[(64 * ('cd', 100).length) + ceil32(return_data.size) + 293] - 2:
                        _3867 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_3867 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_3867 + 36] = _3556
                        mem[_3867 + 68] = 0
                        mem[_3867 + 100] = address(cd[4])
                        mem[_3867 + 132] = 128
                        mem[_3867 + 164] = mem[_3867]
                        s = 0
                        while s < mem[_3867]:
                            mem[s + _3867 + 196] = mem[s + _3867 + 32]
                            s = s + 32
                            continue 
                        if not mem[_3867] % 32:
                            require ext_code.size(address(cd[4]))
                            call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _3556, 0, address(cd[4]), 128, mem[_3867 + 164 len mem[_3867] + 32]
                        else:
                            mem[floor32(mem[_3867]) + _3867 + 196] = mem[floor32(mem[_3867]) + _3867 + -(mem[_3867] % 32) + 228 len mem[_3867] % 32]
                            require ext_code.size(address(cd[4]))
                            call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _3556, 0, address(cd[4]), 128, mem[_3867], mem[_3867 + 196 len floor32(mem[_3867]) + 32]
                    else:
                        _3871 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_3871 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_3871 + 36] = _3556
                        mem[_3871 + 68] = 0
                        mem[_3871 + 100] = address(cd[132])
                        mem[_3871 + 132] = 128
                        mem[_3871 + 164] = mem[_3871]
                        s = 0
                        while s < mem[_3871]:
                            mem[s + _3871 + 196] = mem[s + _3871 + 32]
                            s = s + 32
                            continue 
                        if not mem[_3871] % 32:
                            require ext_code.size(address(cd[4]))
                            call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _3556, 0, address(cd[132]), 128, mem[_3871 + 164 len mem[_3871] + 32]
                        else:
                            mem[floor32(mem[_3871]) + _3871 + 196] = mem[floor32(mem[_3871]) + _3871 + -(mem[_3871] % 32) + 228 len mem[_3871] % 32]
                            require ext_code.size(address(cd[4]))
                            call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _3556, 0, address(cd[132]), 128, mem[_3871], mem[_3871 + 196 len floor32(mem[_3871]) + 32]
            else:
                if not mem[(32 * idx + 1) + (64 * ('cd', 100).length) + ceil32(return_data.size) + 337 len 20]:
                    revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                require idx + 1 < mem[(32 * ('cd', 100).length) + 128]
                _3557 = mem[(32 * idx + 1) + (32 * ('cd', 100).length) + 160]
                if mem[(32 * idx) + (64 * ('cd', 100).length) + ceil32(return_data.size) + 337 len 20] == mem[(32 * idx + 1) + (64 * ('cd', 100).length) + ceil32(return_data.size) + 337 len 20]:
                    if idx < mem[(64 * ('cd', 100).length) + ceil32(return_data.size) + 293] - 2:
                        _3875 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_3875 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_3875 + 36] = 0
                        mem[_3875 + 68] = _3557
                        mem[_3875 + 100] = address(cd[4])
                        mem[_3875 + 132] = 128
                        mem[_3875 + 164] = mem[_3875]
                        s = 0
                        while s < mem[_3875]:
                            mem[s + _3875 + 196] = mem[s + _3875 + 32]
                            s = s + 32
                            continue 
                        if not mem[_3875] % 32:
                            require ext_code.size(address(cd[4]))
                            call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _3557, address(cd[4]), 128, mem[_3875 + 164 len mem[_3875] + 32]
                        else:
                            mem[floor32(mem[_3875]) + _3875 + 196] = mem[floor32(mem[_3875]) + _3875 + -(mem[_3875] % 32) + 228 len mem[_3875] % 32]
                            require ext_code.size(address(cd[4]))
                            call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _3557, address(cd[4]), 128, mem[_3875], mem[_3875 + 196 len floor32(mem[_3875]) + 32]
                    else:
                        _3879 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_3879 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_3879 + 36] = 0
                        mem[_3879 + 68] = _3557
                        mem[_3879 + 100] = address(cd[132])
                        mem[_3879 + 132] = 128
                        mem[_3879 + 164] = mem[_3879]
                        s = 0
                        while s < mem[_3879]:
                            mem[s + _3879 + 196] = mem[s + _3879 + 32]
                            s = s + 32
                            continue 
                        if not mem[_3879] % 32:
                            require ext_code.size(address(cd[4]))
                            call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _3557, address(cd[132]), 128, mem[_3879 + 164 len mem[_3879] + 32]
                        else:
                            mem[floor32(mem[_3879]) + _3879 + 196] = mem[floor32(mem[_3879]) + _3879 + -(mem[_3879] % 32) + 228 len mem[_3879] % 32]
                            require ext_code.size(address(cd[4]))
                            call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _3557, address(cd[132]), 128, mem[_3879], mem[_3879 + 196 len floor32(mem[_3879]) + 32]
                else:
                    if idx < mem[(64 * ('cd', 100).length) + ceil32(return_data.size) + 293] - 2:
                        _3883 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_3883 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_3883 + 36] = _3557
                        mem[_3883 + 68] = 0
                        mem[_3883 + 100] = address(cd[4])
                        mem[_3883 + 132] = 128
                        mem[_3883 + 164] = mem[_3883]
                        s = 0
                        while s < mem[_3883]:
                            mem[s + _3883 + 196] = mem[s + _3883 + 32]
                            s = s + 32
                            continue 
                        if not mem[_3883] % 32:
                            require ext_code.size(address(cd[4]))
                            call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _3557, 0, address(cd[4]), 128, mem[_3883 + 164 len mem[_3883] + 32]
                        else:
                            mem[floor32(mem[_3883]) + _3883 + 196] = mem[floor32(mem[_3883]) + _3883 + -(mem[_3883] % 32) + 228 len mem[_3883] % 32]
                            require ext_code.size(address(cd[4]))
                            call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _3557, 0, address(cd[4]), 128, mem[_3883], mem[_3883 + 196 len floor32(mem[_3883]) + 32]
                    else:
                        _3887 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_3887 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_3887 + 36] = _3557
                        mem[_3887 + 68] = 0
                        mem[_3887 + 100] = address(cd[132])
                        mem[_3887 + 132] = 128
                        mem[_3887 + 164] = mem[_3887]
                        s = 0
                        while s < mem[_3887]:
                            mem[s + _3887 + 196] = mem[s + _3887 + 32]
                            s = s + 32
                            continue 
                        if not mem[_3887] % 32:
                            require ext_code.size(address(cd[4]))
                            call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _3557, 0, address(cd[132]), 128, mem[_3887 + 164 len mem[_3887] + 32]
                        else:
                            mem[floor32(mem[_3887]) + _3887 + 196] = mem[floor32(mem[_3887]) + _3887 + -(mem[_3887] % 32) + 228 len mem[_3887] % 32]
                            require ext_code.size(address(cd[4]))
                            call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _3557, 0, address(cd[132]), 128, mem[_3887], mem[_3887 + 196 len floor32(mem[_3887]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            continue 
        require mem[(32 * ('cd', 100).length) + 128] - 1 < mem[(32 * ('cd', 100).length) + 128]
        _3385 = mem[(32 * mem[(32 * ('cd', 100).length) + 128] - 1) + (32 * ('cd', 100).length) + 160]
        mem[mem[64]] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _3385
        require ext_code.size(WETHAddress)
        call WETHAddress.withdraw(uint256 arg1) with:
             gas gas_remaining wei
            args _3385
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require mem[(32 * ('cd', 100).length) + 128] - 1 < mem[(32 * ('cd', 100).length) + 128]
        _3431 = mem[(32 * mem[(32 * ('cd', 100).length) + 128] - 1) + (32 * ('cd', 100).length) + 160]
        _3451 = mem[64]
        mem[mem[64]] = 0
        mem[64] = mem[64] + 32
        _3453 = mem[_3451]
        mem[mem[64] len floor32(mem[_3451])] = mem[_3451 + 32 len floor32(mem[_3451])]
        mem[mem[64] + floor32(mem[_3451]) + -(mem[_3451] % 32) + 32 len mem[_3451] % 32] = mem[_3451 + floor32(mem[_3451]) + -(mem[_3451] % 32) + 64 len mem[_3451] % 32]
        call address(cd[132]) with:
           value _3431 wei
             gas gas_remaining wei
            args mem[mem[64] + 4 len _3453 + _3451 + -mem[64] + 28]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 32, 35, 0x535472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45, mem[mem[64] + 103 len 29]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = mem[(32 * ('cd', 100).length) + 128]
            _4583 = mem[(32 * ('cd', 100).length) + 128]
            mem[mem[64] + 64 len floor32(mem[(32 * ('cd', 100).length) + 128])] = mem[(32 * ('cd', 100).length) + 160 len floor32(mem[(32 * ('cd', 100).length) + 128])]
            return 32, mem[mem[64] + 32 len (32 * _4583) + 32]
        _4415 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size) + 1
        mem[_4415] = return_data.size
        mem[_4415 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 32, 35, 0x535472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45, mem[mem[64] + 103 len 29]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = mem[(32 * ('cd', 100).length) + 128]
        _4586 = mem[(32 * ('cd', 100).length) + 128]
        mem[mem[64] + 64 len floor32(mem[(32 * ('cd', 100).length) + 128])] = mem[(32 * ('cd', 100).length) + 160 len floor32(mem[(32 * ('cd', 100).length) + 128])]
        return 32, mem[mem[64] + 32 len (32 * _4586) + 32]
    require return_data.size >= 32
    if not mem[(64 * ('cd', 100).length) + 324]:
        revert with 0, 
                    32,
                    36,
                    0x595472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                    mem[(64 * ('cd', 100).length) + ceil32(return_data.size) + 397 len 28]
    mem[64] = (98 * ('cd', 100).length) + ceil32(return_data.size) + 325
    mem[(64 * ('cd', 100).length) + ceil32(return_data.size) + 293] = ('cd', 100).length
    mem[(64 * ('cd', 100).length) + ceil32(return_data.size) + 325 len 32 * ('cd', 100).length] = call.data[cd[100] + 36 len 32 * ('cd', 100).length]
    mem[(98 * ('cd', 100).length) + ceil32(return_data.size) + 325] = 0
    idx = 0
    while idx < ('cd', 100).length - 1:
        require idx < mem[(64 * ('cd', 100).length) + ceil32(return_data.size) + 293]
        require idx + 1 < mem[(64 * ('cd', 100).length) + ceil32(return_data.size) + 293]
        if mem[(32 * idx) + (64 * ('cd', 100).length) + ceil32(return_data.size) + 337 len 20] == mem[(32 * idx + 1) + (64 * ('cd', 100).length) + ceil32(return_data.size) + 337 len 20]:
            revert with 0, 32, 35, 0x5450616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 103 len 29]
        if mem[(32 * idx) + (64 * ('cd', 100).length) + ceil32(return_data.size) + 337 len 20] < mem[(32 * idx + 1) + (64 * ('cd', 100).length) + ceil32(return_data.size) + 337 len 20]:
            if not mem[(32 * idx) + (64 * ('cd', 100).length) + ceil32(return_data.size) + 337 len 20]:
                revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
            require idx + 1 < mem[(32 * ('cd', 100).length) + 128]
            _3559 = mem[(32 * idx + 1) + (32 * ('cd', 100).length) + 160]
            if mem[(32 * idx) + (64 * ('cd', 100).length) + ceil32(return_data.size) + 337 len 20] == mem[(32 * idx) + (64 * ('cd', 100).length) + ceil32(return_data.size) + 337 len 20]:
                if idx < mem[(64 * ('cd', 100).length) + ceil32(return_data.size) + 293] - 2:
                    _3897 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_3897 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_3897 + 36] = 0
                    mem[_3897 + 68] = _3559
                    mem[_3897 + 100] = address(cd[4])
                    mem[_3897 + 132] = 128
                    mem[_3897 + 164] = mem[_3897]
                    s = 0
                    while s < mem[_3897]:
                        mem[s + _3897 + 196] = mem[s + _3897 + 32]
                        s = s + 32
                        continue 
                    if not mem[_3897] % 32:
                        require ext_code.size(address(cd[4]))
                        call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, _3559, address(cd[4]), 128, mem[_3897 + 164 len mem[_3897] + 32]
                    else:
                        mem[floor32(mem[_3897]) + _3897 + 196] = mem[floor32(mem[_3897]) + _3897 + -(mem[_3897] % 32) + 228 len mem[_3897] % 32]
                        require ext_code.size(address(cd[4]))
                        call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, _3559, address(cd[4]), 128, mem[_3897], mem[_3897 + 196 len floor32(mem[_3897]) + 32]
                else:
                    _3901 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_3901 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_3901 + 36] = 0
                    mem[_3901 + 68] = _3559
                    mem[_3901 + 100] = address(cd[132])
                    mem[_3901 + 132] = 128
                    mem[_3901 + 164] = mem[_3901]
                    s = 0
                    while s < mem[_3901]:
                        mem[s + _3901 + 196] = mem[s + _3901 + 32]
                        s = s + 32
                        continue 
                    if not mem[_3901] % 32:
                        require ext_code.size(address(cd[4]))
                        call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, _3559, address(cd[132]), 128, mem[_3901 + 164 len mem[_3901] + 32]
                    else:
                        mem[floor32(mem[_3901]) + _3901 + 196] = mem[floor32(mem[_3901]) + _3901 + -(mem[_3901] % 32) + 228 len mem[_3901] % 32]
                        require ext_code.size(address(cd[4]))
                        call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, _3559, address(cd[132]), 128, mem[_3901], mem[_3901 + 196 len floor32(mem[_3901]) + 32]
            else:
                if idx < mem[(64 * ('cd', 100).length) + ceil32(return_data.size) + 293] - 2:
                    _3905 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_3905 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_3905 + 36] = _3559
                    mem[_3905 + 68] = 0
                    mem[_3905 + 100] = address(cd[4])
                    mem[_3905 + 132] = 128
                    mem[_3905 + 164] = mem[_3905]
                    s = 0
                    while s < mem[_3905]:
                        mem[s + _3905 + 196] = mem[s + _3905 + 32]
                        s = s + 32
                        continue 
                    if not mem[_3905] % 32:
                        require ext_code.size(address(cd[4]))
                        call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args _3559, 0, address(cd[4]), 128, mem[_3905 + 164 len mem[_3905] + 32]
                    else:
                        mem[floor32(mem[_3905]) + _3905 + 196] = mem[floor32(mem[_3905]) + _3905 + -(mem[_3905] % 32) + 228 len mem[_3905] % 32]
                        require ext_code.size(address(cd[4]))
                        call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args _3559, 0, address(cd[4]), 128, mem[_3905], mem[_3905 + 196 len floor32(mem[_3905]) + 32]
                else:
                    _3909 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_3909 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_3909 + 36] = _3559
                    mem[_3909 + 68] = 0
                    mem[_3909 + 100] = address(cd[132])
                    mem[_3909 + 132] = 128
                    mem[_3909 + 164] = mem[_3909]
                    s = 0
                    while s < mem[_3909]:
                        mem[s + _3909 + 196] = mem[s + _3909 + 32]
                        s = s + 32
                        continue 
                    if not mem[_3909] % 32:
                        require ext_code.size(address(cd[4]))
                        call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args _3559, 0, address(cd[132]), 128, mem[_3909 + 164 len mem[_3909] + 32]
                    else:
                        mem[floor32(mem[_3909]) + _3909 + 196] = mem[floor32(mem[_3909]) + _3909 + -(mem[_3909] % 32) + 228 len mem[_3909] % 32]
                        require ext_code.size(address(cd[4]))
                        call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args _3559, 0, address(cd[132]), 128, mem[_3909], mem[_3909 + 196 len floor32(mem[_3909]) + 32]
        else:
            if not mem[(32 * idx + 1) + (64 * ('cd', 100).length) + ceil32(return_data.size) + 337 len 20]:
                revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
            require idx + 1 < mem[(32 * ('cd', 100).length) + 128]
            _3560 = mem[(32 * idx + 1) + (32 * ('cd', 100).length) + 160]
            if mem[(32 * idx) + (64 * ('cd', 100).length) + ceil32(return_data.size) + 337 len 20] == mem[(32 * idx + 1) + (64 * ('cd', 100).length) + ceil32(return_data.size) + 337 len 20]:
                if idx < mem[(64 * ('cd', 100).length) + ceil32(return_data.size) + 293] - 2:
                    _3913 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_3913 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_3913 + 36] = 0
                    mem[_3913 + 68] = _3560
                    mem[_3913 + 100] = address(cd[4])
                    mem[_3913 + 132] = 128
                    mem[_3913 + 164] = mem[_3913]
                    s = 0
                    while s < mem[_3913]:
                        mem[s + _3913 + 196] = mem[s + _3913 + 32]
                        s = s + 32
                        continue 
                    if not mem[_3913] % 32:
                        require ext_code.size(address(cd[4]))
                        call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, _3560, address(cd[4]), 128, mem[_3913 + 164 len mem[_3913] + 32]
                    else:
                        mem[floor32(mem[_3913]) + _3913 + 196] = mem[floor32(mem[_3913]) + _3913 + -(mem[_3913] % 32) + 228 len mem[_3913] % 32]
                        require ext_code.size(address(cd[4]))
                        call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, _3560, address(cd[4]), 128, mem[_3913], mem[_3913 + 196 len floor32(mem[_3913]) + 32]
                else:
                    _3917 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_3917 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_3917 + 36] = 0
                    mem[_3917 + 68] = _3560
                    mem[_3917 + 100] = address(cd[132])
                    mem[_3917 + 132] = 128
                    mem[_3917 + 164] = mem[_3917]
                    s = 0
                    while s < mem[_3917]:
                        mem[s + _3917 + 196] = mem[s + _3917 + 32]
                        s = s + 32
                        continue 
                    if not mem[_3917] % 32:
                        require ext_code.size(address(cd[4]))
                        call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, _3560, address(cd[132]), 128, mem[_3917 + 164 len mem[_3917] + 32]
                    else:
                        mem[floor32(mem[_3917]) + _3917 + 196] = mem[floor32(mem[_3917]) + _3917 + -(mem[_3917] % 32) + 228 len mem[_3917] % 32]
                        require ext_code.size(address(cd[4]))
                        call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, _3560, address(cd[132]), 128, mem[_3917], mem[_3917 + 196 len floor32(mem[_3917]) + 32]
            else:
                if idx < mem[(64 * ('cd', 100).length) + ceil32(return_data.size) + 293] - 2:
                    _3921 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_3921 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_3921 + 36] = _3560
                    mem[_3921 + 68] = 0
                    mem[_3921 + 100] = address(cd[4])
                    mem[_3921 + 132] = 128
                    mem[_3921 + 164] = mem[_3921]
                    s = 0
                    while s < mem[_3921]:
                        mem[s + _3921 + 196] = mem[s + _3921 + 32]
                        s = s + 32
                        continue 
                    if not mem[_3921] % 32:
                        require ext_code.size(address(cd[4]))
                        call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args _3560, 0, address(cd[4]), 128, mem[_3921 + 164 len mem[_3921] + 32]
                    else:
                        mem[floor32(mem[_3921]) + _3921 + 196] = mem[floor32(mem[_3921]) + _3921 + -(mem[_3921] % 32) + 228 len mem[_3921] % 32]
                        require ext_code.size(address(cd[4]))
                        call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args _3560, 0, address(cd[4]), 128, mem[_3921], mem[_3921 + 196 len floor32(mem[_3921]) + 32]
                else:
                    _3925 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_3925 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_3925 + 36] = _3560
                    mem[_3925 + 68] = 0
                    mem[_3925 + 100] = address(cd[132])
                    mem[_3925 + 132] = 128
                    mem[_3925 + 164] = mem[_3925]
                    s = 0
                    while s < mem[_3925]:
                        mem[s + _3925 + 196] = mem[s + _3925 + 32]
                        s = s + 32
                        continue 
                    if not mem[_3925] % 32:
                        require ext_code.size(address(cd[4]))
                        call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args _3560, 0, address(cd[132]), 128, mem[_3925 + 164 len mem[_3925] + 32]
                    else:
                        mem[floor32(mem[_3925]) + _3925 + 196] = mem[floor32(mem[_3925]) + _3925 + -(mem[_3925] % 32) + 228 len mem[_3925] % 32]
                        require ext_code.size(address(cd[4]))
                        call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args _3560, 0, address(cd[132]), 128, mem[_3925], mem[_3925 + 196 len floor32(mem[_3925]) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
    require mem[(32 * ('cd', 100).length) + 128] - 1 < mem[(32 * ('cd', 100).length) + 128]
    _3389 = mem[(32 * mem[(32 * ('cd', 100).length) + 128] - 1) + (32 * ('cd', 100).length) + 160]
    mem[mem[64]] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = _3389
    require ext_code.size(WETHAddress)
    call WETHAddress.withdraw(uint256 arg1) with:
         gas gas_remaining wei
        args _3389
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require mem[(32 * ('cd', 100).length) + 128] - 1 < mem[(32 * ('cd', 100).length) + 128]
    _3432 = mem[(32 * mem[(32 * ('cd', 100).length) + 128] - 1) + (32 * ('cd', 100).length) + 160]
    _3454 = mem[64]
    mem[mem[64]] = 0
    mem[64] = mem[64] + 32
    _3456 = mem[_3454]
    mem[mem[64] len floor32(mem[_3454])] = mem[_3454 + 32 len floor32(mem[_3454])]
    mem[mem[64] + floor32(mem[_3454]) + -(mem[_3454] % 32) + 32 len mem[_3454] % 32] = mem[_3454 + floor32(mem[_3454]) + -(mem[_3454] % 32) + 64 len mem[_3454] % 32]
    call address(cd[132]) with:
       value _3432 wei
         gas gas_remaining wei
        args mem[mem[64] + 4 len _3456 + _3454 + -mem[64] + 28]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 32, 35, 0x535472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45, mem[mem[64] + 103 len 29]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = mem[(32 * ('cd', 100).length) + 128]
        _4589 = mem[(32 * ('cd', 100).length) + 128]
        mem[mem[64] + 64 len floor32(mem[(32 * ('cd', 100).length) + 128])] = mem[(32 * ('cd', 100).length) + 160 len floor32(mem[(32 * ('cd', 100).length) + 128])]
        return 32, mem[mem[64] + 32 len (32 * _4589) + 32]
    _4432 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size) + 1
    mem[_4432] = return_data.size
    mem[_4432 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        revert with 0, 32, 35, 0x535472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45, mem[mem[64] + 103 len 29]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[(32 * ('cd', 100).length) + 128]
    _4592 = mem[(32 * ('cd', 100).length) + 128]
    mem[mem[64] + 64 len floor32(mem[(32 * ('cd', 100).length) + 128])] = mem[(32 * ('cd', 100).length) + 160 len floor32(mem[(32 * ('cd', 100).length) + 128])]
    return 32, mem[mem[64] + 32 len (32 * _4592) + 32]
}



}
