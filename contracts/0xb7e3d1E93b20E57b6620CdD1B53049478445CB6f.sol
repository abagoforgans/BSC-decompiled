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

function getBalanceBNB() {
    require ext_code.size(WETHAddress)
    staticcall WETHAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getBalanceOfToken(address arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
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

function transferToMe(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if stor3 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0x5446756e6374696f6e2061636365737369626c65206f6e6c7920627920746865206f776e65722021,
                    mem[204 len 24]
    require ext_code.size(arg1)
    call arg1.0x23b872dd with:
         gas gas_remaining wei
        args this.address, stor3, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
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
            _1009 = mem[(32 * idx) + 128]
            require idx + 1 < ('cd', 100).length
            _1016 = mem[(32 * idx + 1) + 128]
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
                if address(_1009) == address(_1009):
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
                if address(_1016) == address(_1009):
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
        mem[(64 * ('cd', 100).length) + 196] = msg.sender
        mem[(64 * ('cd', 100).length) + 228] = address(cd[4])
        mem[(64 * ('cd', 100).length) + 260] = mem[(32 * ('cd', 100).length) + 160]
        mem[(64 * ('cd', 100).length) + 160] = 100
        mem[(64 * ('cd', 100).length) + 192 len 4] = unknown_0x23b872dd(?????)
        mem[(64 * ('cd', 100).length) + 292 len 96] = 0, msg.sender, address(cd[4]), mem[(64 * ('cd', 100).length) + 260 len 28]
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
                        _2889 = mem[(32 * idx + 1) + (32 * ('cd', 100).length) + 160]
                        if mem[(32 * idx) + (64 * ('cd', 100).length) + 336 len 20] == mem[(32 * idx) + (64 * ('cd', 100).length) + 336 len 20]:
                            if idx < mem[(64 * ('cd', 100).length) + 292] - 2:
                                _2937 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2937 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_2937 + 36] = 0
                                mem[_2937 + 68] = _2889
                                mem[_2937 + 100] = address(cd[4])
                                mem[_2937 + 132] = 128
                                mem[_2937 + 164] = mem[_2937]
                                s = 0
                                while s < mem[_2937]:
                                    mem[s + _2937 + 196] = mem[s + _2937 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_2937] % 32:
                                    require ext_code.size(address(cd[4]))
                                    call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _2889, address(cd[4]), 128, mem[_2937 + 164 len mem[_2937] + 32]
                                else:
                                    mem[floor32(mem[_2937]) + _2937 + 196] = mem[floor32(mem[_2937]) + _2937 + -(mem[_2937] % 32) + 228 len mem[_2937] % 32]
                                    require ext_code.size(address(cd[4]))
                                    call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _2889, address(cd[4]), 128, mem[_2937], mem[_2937 + 196 len floor32(mem[_2937]) + 32]
                            else:
                                _2941 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2941 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_2941 + 36] = 0
                                mem[_2941 + 68] = _2889
                                mem[_2941 + 100] = address(cd[132])
                                mem[_2941 + 132] = 128
                                mem[_2941 + 164] = mem[_2941]
                                s = 0
                                while s < mem[_2941]:
                                    mem[s + _2941 + 196] = mem[s + _2941 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_2941] % 32:
                                    require ext_code.size(address(cd[4]))
                                    call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _2889, address(cd[132]), 128, mem[_2941 + 164 len mem[_2941] + 32]
                                else:
                                    mem[floor32(mem[_2941]) + _2941 + 196] = mem[floor32(mem[_2941]) + _2941 + -(mem[_2941] % 32) + 228 len mem[_2941] % 32]
                                    require ext_code.size(address(cd[4]))
                                    call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _2889, address(cd[132]), 128, mem[_2941], mem[_2941 + 196 len floor32(mem[_2941]) + 32]
                        else:
                            if idx < mem[(64 * ('cd', 100).length) + 292] - 2:
                                _2945 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2945 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_2945 + 36] = _2889
                                mem[_2945 + 68] = 0
                                mem[_2945 + 100] = address(cd[4])
                                mem[_2945 + 132] = 128
                                mem[_2945 + 164] = mem[_2945]
                                s = 0
                                while s < mem[_2945]:
                                    mem[s + _2945 + 196] = mem[s + _2945 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_2945] % 32:
                                    require ext_code.size(address(cd[4]))
                                    call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _2889, 0, address(cd[4]), 128, mem[_2945 + 164 len mem[_2945] + 32]
                                else:
                                    mem[floor32(mem[_2945]) + _2945 + 196] = mem[floor32(mem[_2945]) + _2945 + -(mem[_2945] % 32) + 228 len mem[_2945] % 32]
                                    require ext_code.size(address(cd[4]))
                                    call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _2889, 0, address(cd[4]), 128, mem[_2945], mem[_2945 + 196 len floor32(mem[_2945]) + 32]
                            else:
                                _2949 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2949 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_2949 + 36] = _2889
                                mem[_2949 + 68] = 0
                                mem[_2949 + 100] = address(cd[132])
                                mem[_2949 + 132] = 128
                                mem[_2949 + 164] = mem[_2949]
                                s = 0
                                while s < mem[_2949]:
                                    mem[s + _2949 + 196] = mem[s + _2949 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_2949] % 32:
                                    require ext_code.size(address(cd[4]))
                                    call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _2889, 0, address(cd[132]), 128, mem[_2949 + 164 len mem[_2949] + 32]
                                else:
                                    mem[floor32(mem[_2949]) + _2949 + 196] = mem[floor32(mem[_2949]) + _2949 + -(mem[_2949] % 32) + 228 len mem[_2949] % 32]
                                    require ext_code.size(address(cd[4]))
                                    call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _2889, 0, address(cd[132]), 128, mem[_2949], mem[_2949 + 196 len floor32(mem[_2949]) + 32]
                    else:
                        if not mem[(32 * idx + 1) + (64 * ('cd', 100).length) + 336 len 20]:
                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                        require idx + 1 < mem[(32 * ('cd', 100).length) + 128]
                        _2890 = mem[(32 * idx + 1) + (32 * ('cd', 100).length) + 160]
                        if mem[(32 * idx) + (64 * ('cd', 100).length) + 336 len 20] == mem[(32 * idx + 1) + (64 * ('cd', 100).length) + 336 len 20]:
                            if idx < mem[(64 * ('cd', 100).length) + 292] - 2:
                                _2953 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2953 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_2953 + 36] = 0
                                mem[_2953 + 68] = _2890
                                mem[_2953 + 100] = address(cd[4])
                                mem[_2953 + 132] = 128
                                mem[_2953 + 164] = mem[_2953]
                                s = 0
                                while s < mem[_2953]:
                                    mem[s + _2953 + 196] = mem[s + _2953 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_2953] % 32:
                                    require ext_code.size(address(cd[4]))
                                    call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _2890, address(cd[4]), 128, mem[_2953 + 164 len mem[_2953] + 32]
                                else:
                                    mem[floor32(mem[_2953]) + _2953 + 196] = mem[floor32(mem[_2953]) + _2953 + -(mem[_2953] % 32) + 228 len mem[_2953] % 32]
                                    require ext_code.size(address(cd[4]))
                                    call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _2890, address(cd[4]), 128, mem[_2953], mem[_2953 + 196 len floor32(mem[_2953]) + 32]
                            else:
                                _2957 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2957 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_2957 + 36] = 0
                                mem[_2957 + 68] = _2890
                                mem[_2957 + 100] = address(cd[132])
                                mem[_2957 + 132] = 128
                                mem[_2957 + 164] = mem[_2957]
                                s = 0
                                while s < mem[_2957]:
                                    mem[s + _2957 + 196] = mem[s + _2957 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_2957] % 32:
                                    require ext_code.size(address(cd[4]))
                                    call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _2890, address(cd[132]), 128, mem[_2957 + 164 len mem[_2957] + 32]
                                else:
                                    mem[floor32(mem[_2957]) + _2957 + 196] = mem[floor32(mem[_2957]) + _2957 + -(mem[_2957] % 32) + 228 len mem[_2957] % 32]
                                    require ext_code.size(address(cd[4]))
                                    call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _2890, address(cd[132]), 128, mem[_2957], mem[_2957 + 196 len floor32(mem[_2957]) + 32]
                        else:
                            if idx < mem[(64 * ('cd', 100).length) + 292] - 2:
                                _2961 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2961 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_2961 + 36] = _2890
                                mem[_2961 + 68] = 0
                                mem[_2961 + 100] = address(cd[4])
                                mem[_2961 + 132] = 128
                                mem[_2961 + 164] = mem[_2961]
                                s = 0
                                while s < mem[_2961]:
                                    mem[s + _2961 + 196] = mem[s + _2961 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_2961] % 32:
                                    require ext_code.size(address(cd[4]))
                                    call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _2890, 0, address(cd[4]), 128, mem[_2961 + 164 len mem[_2961] + 32]
                                else:
                                    mem[floor32(mem[_2961]) + _2961 + 196] = mem[floor32(mem[_2961]) + _2961 + -(mem[_2961] % 32) + 228 len mem[_2961] % 32]
                                    require ext_code.size(address(cd[4]))
                                    call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _2890, 0, address(cd[4]), 128, mem[_2961], mem[_2961 + 196 len floor32(mem[_2961]) + 32]
                            else:
                                _2965 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2965 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_2965 + 36] = _2890
                                mem[_2965 + 68] = 0
                                mem[_2965 + 100] = address(cd[132])
                                mem[_2965 + 132] = 128
                                mem[_2965 + 164] = mem[_2965]
                                s = 0
                                while s < mem[_2965]:
                                    mem[s + _2965 + 196] = mem[s + _2965 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_2965] % 32:
                                    require ext_code.size(address(cd[4]))
                                    call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _2890, 0, address(cd[132]), 128, mem[_2965 + 164 len mem[_2965] + 32]
                                else:
                                    mem[floor32(mem[_2965]) + _2965 + 196] = mem[floor32(mem[_2965]) + _2965 + -(mem[_2965] % 32) + 228 len mem[_2965] % 32]
                                    require ext_code.size(address(cd[4]))
                                    call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _2890, 0, address(cd[132]), 128, mem[_2965], mem[_2965 + 196 len floor32(mem[_2965]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
                mem[mem[64]] = 32
                mem[mem[64] + 32] = mem[(32 * ('cd', 100).length) + 128]
                _2779 = mem[(32 * ('cd', 100).length) + 128]
                mem[mem[64] + 64 len floor32(mem[(32 * ('cd', 100).length) + 128])] = mem[(32 * ('cd', 100).length) + 160 len floor32(mem[(32 * ('cd', 100).length) + 128])]
                return 32, mem[mem[64] + 32 len (32 * _2779) + 32]
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
                    _2891 = mem[(32 * idx + 1) + (32 * ('cd', 100).length) + 160]
                    if mem[(32 * idx) + (64 * ('cd', 100).length) + 336 len 20] == mem[(32 * idx) + (64 * ('cd', 100).length) + 336 len 20]:
                        if idx < mem[(64 * ('cd', 100).length) + 292] - 2:
                            _2969 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2969 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2969 + 36] = 0
                            mem[_2969 + 68] = _2891
                            mem[_2969 + 100] = address(cd[4])
                            mem[_2969 + 132] = 128
                            mem[_2969 + 164] = mem[_2969]
                            s = 0
                            while s < mem[_2969]:
                                mem[s + _2969 + 196] = mem[s + _2969 + 32]
                                s = s + 32
                                continue 
                            if not mem[_2969] % 32:
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _2891, address(cd[4]), 128, mem[_2969 + 164 len mem[_2969] + 32]
                            else:
                                mem[floor32(mem[_2969]) + _2969 + 196] = mem[floor32(mem[_2969]) + _2969 + -(mem[_2969] % 32) + 228 len mem[_2969] % 32]
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _2891, address(cd[4]), 128, mem[_2969], mem[_2969 + 196 len floor32(mem[_2969]) + 32]
                        else:
                            _2973 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2973 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2973 + 36] = 0
                            mem[_2973 + 68] = _2891
                            mem[_2973 + 100] = address(cd[132])
                            mem[_2973 + 132] = 128
                            mem[_2973 + 164] = mem[_2973]
                            s = 0
                            while s < mem[_2973]:
                                mem[s + _2973 + 196] = mem[s + _2973 + 32]
                                s = s + 32
                                continue 
                            if not mem[_2973] % 32:
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _2891, address(cd[132]), 128, mem[_2973 + 164 len mem[_2973] + 32]
                            else:
                                mem[floor32(mem[_2973]) + _2973 + 196] = mem[floor32(mem[_2973]) + _2973 + -(mem[_2973] % 32) + 228 len mem[_2973] % 32]
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _2891, address(cd[132]), 128, mem[_2973], mem[_2973 + 196 len floor32(mem[_2973]) + 32]
                    else:
                        if idx < mem[(64 * ('cd', 100).length) + 292] - 2:
                            _2977 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2977 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2977 + 36] = _2891
                            mem[_2977 + 68] = 0
                            mem[_2977 + 100] = address(cd[4])
                            mem[_2977 + 132] = 128
                            mem[_2977 + 164] = mem[_2977]
                            s = 0
                            while s < mem[_2977]:
                                mem[s + _2977 + 196] = mem[s + _2977 + 32]
                                s = s + 32
                                continue 
                            if not mem[_2977] % 32:
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _2891, 0, address(cd[4]), 128, mem[_2977 + 164 len mem[_2977] + 32]
                            else:
                                mem[floor32(mem[_2977]) + _2977 + 196] = mem[floor32(mem[_2977]) + _2977 + -(mem[_2977] % 32) + 228 len mem[_2977] % 32]
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _2891, 0, address(cd[4]), 128, mem[_2977], mem[_2977 + 196 len floor32(mem[_2977]) + 32]
                        else:
                            _2981 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2981 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2981 + 36] = _2891
                            mem[_2981 + 68] = 0
                            mem[_2981 + 100] = address(cd[132])
                            mem[_2981 + 132] = 128
                            mem[_2981 + 164] = mem[_2981]
                            s = 0
                            while s < mem[_2981]:
                                mem[s + _2981 + 196] = mem[s + _2981 + 32]
                                s = s + 32
                                continue 
                            if not mem[_2981] % 32:
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _2891, 0, address(cd[132]), 128, mem[_2981 + 164 len mem[_2981] + 32]
                            else:
                                mem[floor32(mem[_2981]) + _2981 + 196] = mem[floor32(mem[_2981]) + _2981 + -(mem[_2981] % 32) + 228 len mem[_2981] % 32]
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _2891, 0, address(cd[132]), 128, mem[_2981], mem[_2981 + 196 len floor32(mem[_2981]) + 32]
                else:
                    if not mem[(32 * idx + 1) + (64 * ('cd', 100).length) + 336 len 20]:
                        revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                    require idx + 1 < mem[(32 * ('cd', 100).length) + 128]
                    _2892 = mem[(32 * idx + 1) + (32 * ('cd', 100).length) + 160]
                    if mem[(32 * idx) + (64 * ('cd', 100).length) + 336 len 20] == mem[(32 * idx + 1) + (64 * ('cd', 100).length) + 336 len 20]:
                        if idx < mem[(64 * ('cd', 100).length) + 292] - 2:
                            _2985 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2985 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2985 + 36] = 0
                            mem[_2985 + 68] = _2892
                            mem[_2985 + 100] = address(cd[4])
                            mem[_2985 + 132] = 128
                            mem[_2985 + 164] = mem[_2985]
                            s = 0
                            while s < mem[_2985]:
                                mem[s + _2985 + 196] = mem[s + _2985 + 32]
                                s = s + 32
                                continue 
                            if not mem[_2985] % 32:
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _2892, address(cd[4]), 128, mem[_2985 + 164 len mem[_2985] + 32]
                            else:
                                mem[floor32(mem[_2985]) + _2985 + 196] = mem[floor32(mem[_2985]) + _2985 + -(mem[_2985] % 32) + 228 len mem[_2985] % 32]
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _2892, address(cd[4]), 128, mem[_2985], mem[_2985 + 196 len floor32(mem[_2985]) + 32]
                        else:
                            _2989 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2989 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2989 + 36] = 0
                            mem[_2989 + 68] = _2892
                            mem[_2989 + 100] = address(cd[132])
                            mem[_2989 + 132] = 128
                            mem[_2989 + 164] = mem[_2989]
                            s = 0
                            while s < mem[_2989]:
                                mem[s + _2989 + 196] = mem[s + _2989 + 32]
                                s = s + 32
                                continue 
                            if not mem[_2989] % 32:
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _2892, address(cd[132]), 128, mem[_2989 + 164 len mem[_2989] + 32]
                            else:
                                mem[floor32(mem[_2989]) + _2989 + 196] = mem[floor32(mem[_2989]) + _2989 + -(mem[_2989] % 32) + 228 len mem[_2989] % 32]
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _2892, address(cd[132]), 128, mem[_2989], mem[_2989 + 196 len floor32(mem[_2989]) + 32]
                    else:
                        if idx < mem[(64 * ('cd', 100).length) + 292] - 2:
                            _2993 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2993 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2993 + 36] = _2892
                            mem[_2993 + 68] = 0
                            mem[_2993 + 100] = address(cd[4])
                            mem[_2993 + 132] = 128
                            mem[_2993 + 164] = mem[_2993]
                            s = 0
                            while s < mem[_2993]:
                                mem[s + _2993 + 196] = mem[s + _2993 + 32]
                                s = s + 32
                                continue 
                            if not mem[_2993] % 32:
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _2892, 0, address(cd[4]), 128, mem[_2993 + 164 len mem[_2993] + 32]
                            else:
                                mem[floor32(mem[_2993]) + _2993 + 196] = mem[floor32(mem[_2993]) + _2993 + -(mem[_2993] % 32) + 228 len mem[_2993] % 32]
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _2892, 0, address(cd[4]), 128, mem[_2993], mem[_2993 + 196 len floor32(mem[_2993]) + 32]
                        else:
                            _2997 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2997 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2997 + 36] = _2892
                            mem[_2997 + 68] = 0
                            mem[_2997 + 100] = address(cd[132])
                            mem[_2997 + 132] = 128
                            mem[_2997 + 164] = mem[_2997]
                            s = 0
                            while s < mem[_2997]:
                                mem[s + _2997 + 196] = mem[s + _2997 + 32]
                                s = s + 32
                                continue 
                            if not mem[_2997] % 32:
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _2892, 0, address(cd[132]), 128, mem[_2997 + 164 len mem[_2997] + 32]
                            else:
                                mem[floor32(mem[_2997]) + _2997 + 196] = mem[floor32(mem[_2997]) + _2997 + -(mem[_2997] % 32) + 228 len mem[_2997] % 32]
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _2892, 0, address(cd[132]), 128, mem[_2997], mem[_2997 + 196 len floor32(mem[_2997]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
            mem[mem[64]] = 32
            mem[mem[64] + 32] = mem[(32 * ('cd', 100).length) + 128]
            _2783 = mem[(32 * ('cd', 100).length) + 128]
            mem[mem[64] + 64 len floor32(mem[(32 * ('cd', 100).length) + 128])] = mem[(32 * ('cd', 100).length) + 160 len floor32(mem[(32 * ('cd', 100).length) + 128])]
            return 32, mem[mem[64] + 32 len (32 * _2783) + 32]
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
                    _2893 = mem[(32 * idx + 1) + (32 * ('cd', 100).length) + 160]
                    if mem[(32 * idx) + (64 * ('cd', 100).length) + ceil32(return_data.size) + 337 len 20] == mem[(32 * idx) + (64 * ('cd', 100).length) + ceil32(return_data.size) + 337 len 20]:
                        if idx < mem[(64 * ('cd', 100).length) + ceil32(return_data.size) + 293] - 2:
                            _3001 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_3001 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_3001 + 36] = 0
                            mem[_3001 + 68] = _2893
                            mem[_3001 + 100] = address(cd[4])
                            mem[_3001 + 132] = 128
                            mem[_3001 + 164] = mem[_3001]
                            s = 0
                            while s < mem[_3001]:
                                mem[s + _3001 + 196] = mem[s + _3001 + 32]
                                s = s + 32
                                continue 
                            if not mem[_3001] % 32:
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _2893, address(cd[4]), 128, mem[_3001 + 164 len mem[_3001] + 32]
                            else:
                                mem[floor32(mem[_3001]) + _3001 + 196] = mem[floor32(mem[_3001]) + _3001 + -(mem[_3001] % 32) + 228 len mem[_3001] % 32]
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _2893, address(cd[4]), 128, mem[_3001], mem[_3001 + 196 len floor32(mem[_3001]) + 32]
                        else:
                            _3005 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_3005 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_3005 + 36] = 0
                            mem[_3005 + 68] = _2893
                            mem[_3005 + 100] = address(cd[132])
                            mem[_3005 + 132] = 128
                            mem[_3005 + 164] = mem[_3005]
                            s = 0
                            while s < mem[_3005]:
                                mem[s + _3005 + 196] = mem[s + _3005 + 32]
                                s = s + 32
                                continue 
                            if not mem[_3005] % 32:
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _2893, address(cd[132]), 128, mem[_3005 + 164 len mem[_3005] + 32]
                            else:
                                mem[floor32(mem[_3005]) + _3005 + 196] = mem[floor32(mem[_3005]) + _3005 + -(mem[_3005] % 32) + 228 len mem[_3005] % 32]
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _2893, address(cd[132]), 128, mem[_3005], mem[_3005 + 196 len floor32(mem[_3005]) + 32]
                    else:
                        if idx < mem[(64 * ('cd', 100).length) + ceil32(return_data.size) + 293] - 2:
                            _3009 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_3009 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_3009 + 36] = _2893
                            mem[_3009 + 68] = 0
                            mem[_3009 + 100] = address(cd[4])
                            mem[_3009 + 132] = 128
                            mem[_3009 + 164] = mem[_3009]
                            s = 0
                            while s < mem[_3009]:
                                mem[s + _3009 + 196] = mem[s + _3009 + 32]
                                s = s + 32
                                continue 
                            if not mem[_3009] % 32:
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _2893, 0, address(cd[4]), 128, mem[_3009 + 164 len mem[_3009] + 32]
                            else:
                                mem[floor32(mem[_3009]) + _3009 + 196] = mem[floor32(mem[_3009]) + _3009 + -(mem[_3009] % 32) + 228 len mem[_3009] % 32]
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _2893, 0, address(cd[4]), 128, mem[_3009], mem[_3009 + 196 len floor32(mem[_3009]) + 32]
                        else:
                            _3013 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_3013 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_3013 + 36] = _2893
                            mem[_3013 + 68] = 0
                            mem[_3013 + 100] = address(cd[132])
                            mem[_3013 + 132] = 128
                            mem[_3013 + 164] = mem[_3013]
                            s = 0
                            while s < mem[_3013]:
                                mem[s + _3013 + 196] = mem[s + _3013 + 32]
                                s = s + 32
                                continue 
                            if not mem[_3013] % 32:
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _2893, 0, address(cd[132]), 128, mem[_3013 + 164 len mem[_3013] + 32]
                            else:
                                mem[floor32(mem[_3013]) + _3013 + 196] = mem[floor32(mem[_3013]) + _3013 + -(mem[_3013] % 32) + 228 len mem[_3013] % 32]
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _2893, 0, address(cd[132]), 128, mem[_3013], mem[_3013 + 196 len floor32(mem[_3013]) + 32]
                else:
                    if not mem[(32 * idx + 1) + (64 * ('cd', 100).length) + ceil32(return_data.size) + 337 len 20]:
                        revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                    require idx + 1 < mem[(32 * ('cd', 100).length) + 128]
                    _2894 = mem[(32 * idx + 1) + (32 * ('cd', 100).length) + 160]
                    if mem[(32 * idx) + (64 * ('cd', 100).length) + ceil32(return_data.size) + 337 len 20] == mem[(32 * idx + 1) + (64 * ('cd', 100).length) + ceil32(return_data.size) + 337 len 20]:
                        if idx < mem[(64 * ('cd', 100).length) + ceil32(return_data.size) + 293] - 2:
                            _3017 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_3017 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_3017 + 36] = 0
                            mem[_3017 + 68] = _2894
                            mem[_3017 + 100] = address(cd[4])
                            mem[_3017 + 132] = 128
                            mem[_3017 + 164] = mem[_3017]
                            s = 0
                            while s < mem[_3017]:
                                mem[s + _3017 + 196] = mem[s + _3017 + 32]
                                s = s + 32
                                continue 
                            if not mem[_3017] % 32:
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _2894, address(cd[4]), 128, mem[_3017 + 164 len mem[_3017] + 32]
                            else:
                                mem[floor32(mem[_3017]) + _3017 + 196] = mem[floor32(mem[_3017]) + _3017 + -(mem[_3017] % 32) + 228 len mem[_3017] % 32]
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _2894, address(cd[4]), 128, mem[_3017], mem[_3017 + 196 len floor32(mem[_3017]) + 32]
                        else:
                            _3021 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_3021 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_3021 + 36] = 0
                            mem[_3021 + 68] = _2894
                            mem[_3021 + 100] = address(cd[132])
                            mem[_3021 + 132] = 128
                            mem[_3021 + 164] = mem[_3021]
                            s = 0
                            while s < mem[_3021]:
                                mem[s + _3021 + 196] = mem[s + _3021 + 32]
                                s = s + 32
                                continue 
                            if not mem[_3021] % 32:
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _2894, address(cd[132]), 128, mem[_3021 + 164 len mem[_3021] + 32]
                            else:
                                mem[floor32(mem[_3021]) + _3021 + 196] = mem[floor32(mem[_3021]) + _3021 + -(mem[_3021] % 32) + 228 len mem[_3021] % 32]
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _2894, address(cd[132]), 128, mem[_3021], mem[_3021 + 196 len floor32(mem[_3021]) + 32]
                    else:
                        if idx < mem[(64 * ('cd', 100).length) + ceil32(return_data.size) + 293] - 2:
                            _3025 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_3025 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_3025 + 36] = _2894
                            mem[_3025 + 68] = 0
                            mem[_3025 + 100] = address(cd[4])
                            mem[_3025 + 132] = 128
                            mem[_3025 + 164] = mem[_3025]
                            s = 0
                            while s < mem[_3025]:
                                mem[s + _3025 + 196] = mem[s + _3025 + 32]
                                s = s + 32
                                continue 
                            if not mem[_3025] % 32:
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _2894, 0, address(cd[4]), 128, mem[_3025 + 164 len mem[_3025] + 32]
                            else:
                                mem[floor32(mem[_3025]) + _3025 + 196] = mem[floor32(mem[_3025]) + _3025 + -(mem[_3025] % 32) + 228 len mem[_3025] % 32]
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _2894, 0, address(cd[4]), 128, mem[_3025], mem[_3025 + 196 len floor32(mem[_3025]) + 32]
                        else:
                            _3029 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_3029 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_3029 + 36] = _2894
                            mem[_3029 + 68] = 0
                            mem[_3029 + 100] = address(cd[132])
                            mem[_3029 + 132] = 128
                            mem[_3029 + 164] = mem[_3029]
                            s = 0
                            while s < mem[_3029]:
                                mem[s + _3029 + 196] = mem[s + _3029 + 32]
                                s = s + 32
                                continue 
                            if not mem[_3029] % 32:
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _2894, 0, address(cd[132]), 128, mem[_3029 + 164 len mem[_3029] + 32]
                            else:
                                mem[floor32(mem[_3029]) + _3029 + 196] = mem[floor32(mem[_3029]) + _3029 + -(mem[_3029] % 32) + 228 len mem[_3029] % 32]
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _2894, 0, address(cd[132]), 128, mem[_3029], mem[_3029 + 196 len floor32(mem[_3029]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
            mem[mem[64]] = 32
            mem[mem[64] + 32] = mem[(32 * ('cd', 100).length) + 128]
            _2787 = mem[(32 * ('cd', 100).length) + 128]
            mem[mem[64] + 64 len floor32(mem[(32 * ('cd', 100).length) + 128])] = mem[(32 * ('cd', 100).length) + 160 len floor32(mem[(32 * ('cd', 100).length) + 128])]
            return 32, mem[mem[64] + 32 len (32 * _2787) + 32]
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
                _2895 = mem[(32 * idx + 1) + (32 * ('cd', 100).length) + 160]
                if mem[(32 * idx) + (64 * ('cd', 100).length) + ceil32(return_data.size) + 337 len 20] == mem[(32 * idx) + (64 * ('cd', 100).length) + ceil32(return_data.size) + 337 len 20]:
                    if idx < mem[(64 * ('cd', 100).length) + ceil32(return_data.size) + 293] - 2:
                        _3033 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_3033 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_3033 + 36] = 0
                        mem[_3033 + 68] = _2895
                        mem[_3033 + 100] = address(cd[4])
                        mem[_3033 + 132] = 128
                        mem[_3033 + 164] = mem[_3033]
                        s = 0
                        while s < mem[_3033]:
                            mem[s + _3033 + 196] = mem[s + _3033 + 32]
                            s = s + 32
                            continue 
                        if not mem[_3033] % 32:
                            require ext_code.size(address(cd[4]))
                            call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _2895, address(cd[4]), 128, mem[_3033 + 164 len mem[_3033] + 32]
                        else:
                            mem[floor32(mem[_3033]) + _3033 + 196] = mem[floor32(mem[_3033]) + _3033 + -(mem[_3033] % 32) + 228 len mem[_3033] % 32]
                            require ext_code.size(address(cd[4]))
                            call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _2895, address(cd[4]), 128, mem[_3033], mem[_3033 + 196 len floor32(mem[_3033]) + 32]
                    else:
                        _3037 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_3037 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_3037 + 36] = 0
                        mem[_3037 + 68] = _2895
                        mem[_3037 + 100] = address(cd[132])
                        mem[_3037 + 132] = 128
                        mem[_3037 + 164] = mem[_3037]
                        s = 0
                        while s < mem[_3037]:
                            mem[s + _3037 + 196] = mem[s + _3037 + 32]
                            s = s + 32
                            continue 
                        if not mem[_3037] % 32:
                            require ext_code.size(address(cd[4]))
                            call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _2895, address(cd[132]), 128, mem[_3037 + 164 len mem[_3037] + 32]
                        else:
                            mem[floor32(mem[_3037]) + _3037 + 196] = mem[floor32(mem[_3037]) + _3037 + -(mem[_3037] % 32) + 228 len mem[_3037] % 32]
                            require ext_code.size(address(cd[4]))
                            call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _2895, address(cd[132]), 128, mem[_3037], mem[_3037 + 196 len floor32(mem[_3037]) + 32]
                else:
                    if idx < mem[(64 * ('cd', 100).length) + ceil32(return_data.size) + 293] - 2:
                        _3041 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_3041 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_3041 + 36] = _2895
                        mem[_3041 + 68] = 0
                        mem[_3041 + 100] = address(cd[4])
                        mem[_3041 + 132] = 128
                        mem[_3041 + 164] = mem[_3041]
                        s = 0
                        while s < mem[_3041]:
                            mem[s + _3041 + 196] = mem[s + _3041 + 32]
                            s = s + 32
                            continue 
                        if not mem[_3041] % 32:
                            require ext_code.size(address(cd[4]))
                            call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _2895, 0, address(cd[4]), 128, mem[_3041 + 164 len mem[_3041] + 32]
                        else:
                            mem[floor32(mem[_3041]) + _3041 + 196] = mem[floor32(mem[_3041]) + _3041 + -(mem[_3041] % 32) + 228 len mem[_3041] % 32]
                            require ext_code.size(address(cd[4]))
                            call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _2895, 0, address(cd[4]), 128, mem[_3041], mem[_3041 + 196 len floor32(mem[_3041]) + 32]
                    else:
                        _3045 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_3045 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_3045 + 36] = _2895
                        mem[_3045 + 68] = 0
                        mem[_3045 + 100] = address(cd[132])
                        mem[_3045 + 132] = 128
                        mem[_3045 + 164] = mem[_3045]
                        s = 0
                        while s < mem[_3045]:
                            mem[s + _3045 + 196] = mem[s + _3045 + 32]
                            s = s + 32
                            continue 
                        if not mem[_3045] % 32:
                            require ext_code.size(address(cd[4]))
                            call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _2895, 0, address(cd[132]), 128, mem[_3045 + 164 len mem[_3045] + 32]
                        else:
                            mem[floor32(mem[_3045]) + _3045 + 196] = mem[floor32(mem[_3045]) + _3045 + -(mem[_3045] % 32) + 228 len mem[_3045] % 32]
                            require ext_code.size(address(cd[4]))
                            call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _2895, 0, address(cd[132]), 128, mem[_3045], mem[_3045 + 196 len floor32(mem[_3045]) + 32]
            else:
                if not mem[(32 * idx + 1) + (64 * ('cd', 100).length) + ceil32(return_data.size) + 337 len 20]:
                    revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                require idx + 1 < mem[(32 * ('cd', 100).length) + 128]
                _2896 = mem[(32 * idx + 1) + (32 * ('cd', 100).length) + 160]
                if mem[(32 * idx) + (64 * ('cd', 100).length) + ceil32(return_data.size) + 337 len 20] == mem[(32 * idx + 1) + (64 * ('cd', 100).length) + ceil32(return_data.size) + 337 len 20]:
                    if idx < mem[(64 * ('cd', 100).length) + ceil32(return_data.size) + 293] - 2:
                        _3049 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_3049 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_3049 + 36] = 0
                        mem[_3049 + 68] = _2896
                        mem[_3049 + 100] = address(cd[4])
                        mem[_3049 + 132] = 128
                        mem[_3049 + 164] = mem[_3049]
                        s = 0
                        while s < mem[_3049]:
                            mem[s + _3049 + 196] = mem[s + _3049 + 32]
                            s = s + 32
                            continue 
                        if not mem[_3049] % 32:
                            require ext_code.size(address(cd[4]))
                            call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _2896, address(cd[4]), 128, mem[_3049 + 164 len mem[_3049] + 32]
                        else:
                            mem[floor32(mem[_3049]) + _3049 + 196] = mem[floor32(mem[_3049]) + _3049 + -(mem[_3049] % 32) + 228 len mem[_3049] % 32]
                            require ext_code.size(address(cd[4]))
                            call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _2896, address(cd[4]), 128, mem[_3049], mem[_3049 + 196 len floor32(mem[_3049]) + 32]
                    else:
                        _3053 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_3053 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_3053 + 36] = 0
                        mem[_3053 + 68] = _2896
                        mem[_3053 + 100] = address(cd[132])
                        mem[_3053 + 132] = 128
                        mem[_3053 + 164] = mem[_3053]
                        s = 0
                        while s < mem[_3053]:
                            mem[s + _3053 + 196] = mem[s + _3053 + 32]
                            s = s + 32
                            continue 
                        if not mem[_3053] % 32:
                            require ext_code.size(address(cd[4]))
                            call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _2896, address(cd[132]), 128, mem[_3053 + 164 len mem[_3053] + 32]
                        else:
                            mem[floor32(mem[_3053]) + _3053 + 196] = mem[floor32(mem[_3053]) + _3053 + -(mem[_3053] % 32) + 228 len mem[_3053] % 32]
                            require ext_code.size(address(cd[4]))
                            call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _2896, address(cd[132]), 128, mem[_3053], mem[_3053 + 196 len floor32(mem[_3053]) + 32]
                else:
                    if idx < mem[(64 * ('cd', 100).length) + ceil32(return_data.size) + 293] - 2:
                        _3057 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_3057 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_3057 + 36] = _2896
                        mem[_3057 + 68] = 0
                        mem[_3057 + 100] = address(cd[4])
                        mem[_3057 + 132] = 128
                        mem[_3057 + 164] = mem[_3057]
                        s = 0
                        while s < mem[_3057]:
                            mem[s + _3057 + 196] = mem[s + _3057 + 32]
                            s = s + 32
                            continue 
                        if not mem[_3057] % 32:
                            require ext_code.size(address(cd[4]))
                            call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _2896, 0, address(cd[4]), 128, mem[_3057 + 164 len mem[_3057] + 32]
                        else:
                            mem[floor32(mem[_3057]) + _3057 + 196] = mem[floor32(mem[_3057]) + _3057 + -(mem[_3057] % 32) + 228 len mem[_3057] % 32]
                            require ext_code.size(address(cd[4]))
                            call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _2896, 0, address(cd[4]), 128, mem[_3057], mem[_3057 + 196 len floor32(mem[_3057]) + 32]
                    else:
                        _3061 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_3061 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_3061 + 36] = _2896
                        mem[_3061 + 68] = 0
                        mem[_3061 + 100] = address(cd[132])
                        mem[_3061 + 132] = 128
                        mem[_3061 + 164] = mem[_3061]
                        s = 0
                        while s < mem[_3061]:
                            mem[s + _3061 + 196] = mem[s + _3061 + 32]
                            s = s + 32
                            continue 
                        if not mem[_3061] % 32:
                            require ext_code.size(address(cd[4]))
                            call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _2896, 0, address(cd[132]), 128, mem[_3061 + 164 len mem[_3061] + 32]
                        else:
                            mem[floor32(mem[_3061]) + _3061 + 196] = mem[floor32(mem[_3061]) + _3061 + -(mem[_3061] % 32) + 228 len mem[_3061] % 32]
                            require ext_code.size(address(cd[4]))
                            call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _2896, 0, address(cd[132]), 128, mem[_3061], mem[_3061 + 196 len floor32(mem[_3061]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        mem[mem[64] + 32] = mem[(32 * ('cd', 100).length) + 128]
        _2791 = mem[(32 * ('cd', 100).length) + 128]
        mem[mem[64] + 64 len floor32(mem[(32 * ('cd', 100).length) + 128])] = mem[(32 * ('cd', 100).length) + 160 len floor32(mem[(32 * ('cd', 100).length) + 128])]
        return 32, mem[mem[64] + 32 len (32 * _2791) + 32]
    mem[(32 * ('cd', 100).length) + 160 len 32 * ('cd', 100).length] = call.data[calldata.size len 32 * ('cd', 100).length]
    require 0 < ('cd', 100).length
    mem[(32 * ('cd', 100).length) + 160] = cd[36]
    idx = 0
    while idx < ('cd', 100).length - 1:
        require idx < ('cd', 100).length
        _1013 = mem[(32 * idx) + 128]
        require idx + 1 < ('cd', 100).length
        _1018 = mem[(32 * idx + 1) + 128]
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
            if address(_1013) == address(_1013):
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
            if address(_1018) == address(_1013):
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
    mem[(64 * ('cd', 100).length) + 196] = msg.sender
    mem[(64 * ('cd', 100).length) + 228] = address(cd[4])
    mem[(64 * ('cd', 100).length) + 260] = mem[(32 * ('cd', 100).length) + 160]
    mem[(64 * ('cd', 100).length) + 160] = 100
    mem[(64 * ('cd', 100).length) + 192 len 4] = unknown_0x23b872dd(?????)
    mem[(64 * ('cd', 100).length) + 292 len 96] = 0, msg.sender, address(cd[4]), mem[(64 * ('cd', 100).length) + 260 len 28]
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
                    _2897 = mem[(32 * idx + 1) + (32 * ('cd', 100).length) + 160]
                    if mem[(32 * idx) + (64 * ('cd', 100).length) + 336 len 20] == mem[(32 * idx) + (64 * ('cd', 100).length) + 336 len 20]:
                        if idx < mem[(64 * ('cd', 100).length) + 292] - 2:
                            _3065 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_3065 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_3065 + 36] = 0
                            mem[_3065 + 68] = _2897
                            mem[_3065 + 100] = address(cd[4])
                            mem[_3065 + 132] = 128
                            mem[_3065 + 164] = mem[_3065]
                            s = 0
                            while s < mem[_3065]:
                                mem[s + _3065 + 196] = mem[s + _3065 + 32]
                                s = s + 32
                                continue 
                            if not mem[_3065] % 32:
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _2897, address(cd[4]), 128, mem[_3065 + 164 len mem[_3065] + 32]
                            else:
                                mem[floor32(mem[_3065]) + _3065 + 196] = mem[floor32(mem[_3065]) + _3065 + -(mem[_3065] % 32) + 228 len mem[_3065] % 32]
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _2897, address(cd[4]), 128, mem[_3065], mem[_3065 + 196 len floor32(mem[_3065]) + 32]
                        else:
                            _3069 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_3069 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_3069 + 36] = 0
                            mem[_3069 + 68] = _2897
                            mem[_3069 + 100] = address(cd[132])
                            mem[_3069 + 132] = 128
                            mem[_3069 + 164] = mem[_3069]
                            s = 0
                            while s < mem[_3069]:
                                mem[s + _3069 + 196] = mem[s + _3069 + 32]
                                s = s + 32
                                continue 
                            if not mem[_3069] % 32:
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _2897, address(cd[132]), 128, mem[_3069 + 164 len mem[_3069] + 32]
                            else:
                                mem[floor32(mem[_3069]) + _3069 + 196] = mem[floor32(mem[_3069]) + _3069 + -(mem[_3069] % 32) + 228 len mem[_3069] % 32]
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _2897, address(cd[132]), 128, mem[_3069], mem[_3069 + 196 len floor32(mem[_3069]) + 32]
                    else:
                        if idx < mem[(64 * ('cd', 100).length) + 292] - 2:
                            _3073 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_3073 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_3073 + 36] = _2897
                            mem[_3073 + 68] = 0
                            mem[_3073 + 100] = address(cd[4])
                            mem[_3073 + 132] = 128
                            mem[_3073 + 164] = mem[_3073]
                            s = 0
                            while s < mem[_3073]:
                                mem[s + _3073 + 196] = mem[s + _3073 + 32]
                                s = s + 32
                                continue 
                            if not mem[_3073] % 32:
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _2897, 0, address(cd[4]), 128, mem[_3073 + 164 len mem[_3073] + 32]
                            else:
                                mem[floor32(mem[_3073]) + _3073 + 196] = mem[floor32(mem[_3073]) + _3073 + -(mem[_3073] % 32) + 228 len mem[_3073] % 32]
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _2897, 0, address(cd[4]), 128, mem[_3073], mem[_3073 + 196 len floor32(mem[_3073]) + 32]
                        else:
                            _3077 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_3077 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_3077 + 36] = _2897
                            mem[_3077 + 68] = 0
                            mem[_3077 + 100] = address(cd[132])
                            mem[_3077 + 132] = 128
                            mem[_3077 + 164] = mem[_3077]
                            s = 0
                            while s < mem[_3077]:
                                mem[s + _3077 + 196] = mem[s + _3077 + 32]
                                s = s + 32
                                continue 
                            if not mem[_3077] % 32:
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _2897, 0, address(cd[132]), 128, mem[_3077 + 164 len mem[_3077] + 32]
                            else:
                                mem[floor32(mem[_3077]) + _3077 + 196] = mem[floor32(mem[_3077]) + _3077 + -(mem[_3077] % 32) + 228 len mem[_3077] % 32]
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _2897, 0, address(cd[132]), 128, mem[_3077], mem[_3077 + 196 len floor32(mem[_3077]) + 32]
                else:
                    if not mem[(32 * idx + 1) + (64 * ('cd', 100).length) + 336 len 20]:
                        revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                    require idx + 1 < mem[(32 * ('cd', 100).length) + 128]
                    _2898 = mem[(32 * idx + 1) + (32 * ('cd', 100).length) + 160]
                    if mem[(32 * idx) + (64 * ('cd', 100).length) + 336 len 20] == mem[(32 * idx + 1) + (64 * ('cd', 100).length) + 336 len 20]:
                        if idx < mem[(64 * ('cd', 100).length) + 292] - 2:
                            _3081 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_3081 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_3081 + 36] = 0
                            mem[_3081 + 68] = _2898
                            mem[_3081 + 100] = address(cd[4])
                            mem[_3081 + 132] = 128
                            mem[_3081 + 164] = mem[_3081]
                            s = 0
                            while s < mem[_3081]:
                                mem[s + _3081 + 196] = mem[s + _3081 + 32]
                                s = s + 32
                                continue 
                            if not mem[_3081] % 32:
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _2898, address(cd[4]), 128, mem[_3081 + 164 len mem[_3081] + 32]
                            else:
                                mem[floor32(mem[_3081]) + _3081 + 196] = mem[floor32(mem[_3081]) + _3081 + -(mem[_3081] % 32) + 228 len mem[_3081] % 32]
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _2898, address(cd[4]), 128, mem[_3081], mem[_3081 + 196 len floor32(mem[_3081]) + 32]
                        else:
                            _3085 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_3085 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_3085 + 36] = 0
                            mem[_3085 + 68] = _2898
                            mem[_3085 + 100] = address(cd[132])
                            mem[_3085 + 132] = 128
                            mem[_3085 + 164] = mem[_3085]
                            s = 0
                            while s < mem[_3085]:
                                mem[s + _3085 + 196] = mem[s + _3085 + 32]
                                s = s + 32
                                continue 
                            if not mem[_3085] % 32:
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _2898, address(cd[132]), 128, mem[_3085 + 164 len mem[_3085] + 32]
                            else:
                                mem[floor32(mem[_3085]) + _3085 + 196] = mem[floor32(mem[_3085]) + _3085 + -(mem[_3085] % 32) + 228 len mem[_3085] % 32]
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _2898, address(cd[132]), 128, mem[_3085], mem[_3085 + 196 len floor32(mem[_3085]) + 32]
                    else:
                        if idx < mem[(64 * ('cd', 100).length) + 292] - 2:
                            _3089 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_3089 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_3089 + 36] = _2898
                            mem[_3089 + 68] = 0
                            mem[_3089 + 100] = address(cd[4])
                            mem[_3089 + 132] = 128
                            mem[_3089 + 164] = mem[_3089]
                            s = 0
                            while s < mem[_3089]:
                                mem[s + _3089 + 196] = mem[s + _3089 + 32]
                                s = s + 32
                                continue 
                            if not mem[_3089] % 32:
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _2898, 0, address(cd[4]), 128, mem[_3089 + 164 len mem[_3089] + 32]
                            else:
                                mem[floor32(mem[_3089]) + _3089 + 196] = mem[floor32(mem[_3089]) + _3089 + -(mem[_3089] % 32) + 228 len mem[_3089] % 32]
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _2898, 0, address(cd[4]), 128, mem[_3089], mem[_3089 + 196 len floor32(mem[_3089]) + 32]
                        else:
                            _3093 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_3093 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_3093 + 36] = _2898
                            mem[_3093 + 68] = 0
                            mem[_3093 + 100] = address(cd[132])
                            mem[_3093 + 132] = 128
                            mem[_3093 + 164] = mem[_3093]
                            s = 0
                            while s < mem[_3093]:
                                mem[s + _3093 + 196] = mem[s + _3093 + 32]
                                s = s + 32
                                continue 
                            if not mem[_3093] % 32:
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _2898, 0, address(cd[132]), 128, mem[_3093 + 164 len mem[_3093] + 32]
                            else:
                                mem[floor32(mem[_3093]) + _3093 + 196] = mem[floor32(mem[_3093]) + _3093 + -(mem[_3093] % 32) + 228 len mem[_3093] % 32]
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _2898, 0, address(cd[132]), 128, mem[_3093], mem[_3093 + 196 len floor32(mem[_3093]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
            mem[mem[64]] = 32
            mem[mem[64] + 32] = mem[(32 * ('cd', 100).length) + 128]
            _2795 = mem[(32 * ('cd', 100).length) + 128]
            mem[mem[64] + 64 len floor32(mem[(32 * ('cd', 100).length) + 128])] = mem[(32 * ('cd', 100).length) + 160 len floor32(mem[(32 * ('cd', 100).length) + 128])]
            return 32, mem[mem[64] + 32 len (32 * _2795) + 32]
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
                _2899 = mem[(32 * idx + 1) + (32 * ('cd', 100).length) + 160]
                if mem[(32 * idx) + (64 * ('cd', 100).length) + 336 len 20] == mem[(32 * idx) + (64 * ('cd', 100).length) + 336 len 20]:
                    if idx < mem[(64 * ('cd', 100).length) + 292] - 2:
                        _3097 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_3097 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_3097 + 36] = 0
                        mem[_3097 + 68] = _2899
                        mem[_3097 + 100] = address(cd[4])
                        mem[_3097 + 132] = 128
                        mem[_3097 + 164] = mem[_3097]
                        s = 0
                        while s < mem[_3097]:
                            mem[s + _3097 + 196] = mem[s + _3097 + 32]
                            s = s + 32
                            continue 
                        if not mem[_3097] % 32:
                            require ext_code.size(address(cd[4]))
                            call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _2899, address(cd[4]), 128, mem[_3097 + 164 len mem[_3097] + 32]
                        else:
                            mem[floor32(mem[_3097]) + _3097 + 196] = mem[floor32(mem[_3097]) + _3097 + -(mem[_3097] % 32) + 228 len mem[_3097] % 32]
                            require ext_code.size(address(cd[4]))
                            call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _2899, address(cd[4]), 128, mem[_3097], mem[_3097 + 196 len floor32(mem[_3097]) + 32]
                    else:
                        _3101 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_3101 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_3101 + 36] = 0
                        mem[_3101 + 68] = _2899
                        mem[_3101 + 100] = address(cd[132])
                        mem[_3101 + 132] = 128
                        mem[_3101 + 164] = mem[_3101]
                        s = 0
                        while s < mem[_3101]:
                            mem[s + _3101 + 196] = mem[s + _3101 + 32]
                            s = s + 32
                            continue 
                        if not mem[_3101] % 32:
                            require ext_code.size(address(cd[4]))
                            call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _2899, address(cd[132]), 128, mem[_3101 + 164 len mem[_3101] + 32]
                        else:
                            mem[floor32(mem[_3101]) + _3101 + 196] = mem[floor32(mem[_3101]) + _3101 + -(mem[_3101] % 32) + 228 len mem[_3101] % 32]
                            require ext_code.size(address(cd[4]))
                            call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _2899, address(cd[132]), 128, mem[_3101], mem[_3101 + 196 len floor32(mem[_3101]) + 32]
                else:
                    if idx < mem[(64 * ('cd', 100).length) + 292] - 2:
                        _3105 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_3105 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_3105 + 36] = _2899
                        mem[_3105 + 68] = 0
                        mem[_3105 + 100] = address(cd[4])
                        mem[_3105 + 132] = 128
                        mem[_3105 + 164] = mem[_3105]
                        s = 0
                        while s < mem[_3105]:
                            mem[s + _3105 + 196] = mem[s + _3105 + 32]
                            s = s + 32
                            continue 
                        if not mem[_3105] % 32:
                            require ext_code.size(address(cd[4]))
                            call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _2899, 0, address(cd[4]), 128, mem[_3105 + 164 len mem[_3105] + 32]
                        else:
                            mem[floor32(mem[_3105]) + _3105 + 196] = mem[floor32(mem[_3105]) + _3105 + -(mem[_3105] % 32) + 228 len mem[_3105] % 32]
                            require ext_code.size(address(cd[4]))
                            call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _2899, 0, address(cd[4]), 128, mem[_3105], mem[_3105 + 196 len floor32(mem[_3105]) + 32]
                    else:
                        _3109 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_3109 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_3109 + 36] = _2899
                        mem[_3109 + 68] = 0
                        mem[_3109 + 100] = address(cd[132])
                        mem[_3109 + 132] = 128
                        mem[_3109 + 164] = mem[_3109]
                        s = 0
                        while s < mem[_3109]:
                            mem[s + _3109 + 196] = mem[s + _3109 + 32]
                            s = s + 32
                            continue 
                        if not mem[_3109] % 32:
                            require ext_code.size(address(cd[4]))
                            call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _2899, 0, address(cd[132]), 128, mem[_3109 + 164 len mem[_3109] + 32]
                        else:
                            mem[floor32(mem[_3109]) + _3109 + 196] = mem[floor32(mem[_3109]) + _3109 + -(mem[_3109] % 32) + 228 len mem[_3109] % 32]
                            require ext_code.size(address(cd[4]))
                            call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _2899, 0, address(cd[132]), 128, mem[_3109], mem[_3109 + 196 len floor32(mem[_3109]) + 32]
            else:
                if not mem[(32 * idx + 1) + (64 * ('cd', 100).length) + 336 len 20]:
                    revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                require idx + 1 < mem[(32 * ('cd', 100).length) + 128]
                _2900 = mem[(32 * idx + 1) + (32 * ('cd', 100).length) + 160]
                if mem[(32 * idx) + (64 * ('cd', 100).length) + 336 len 20] == mem[(32 * idx + 1) + (64 * ('cd', 100).length) + 336 len 20]:
                    if idx < mem[(64 * ('cd', 100).length) + 292] - 2:
                        _3113 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_3113 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_3113 + 36] = 0
                        mem[_3113 + 68] = _2900
                        mem[_3113 + 100] = address(cd[4])
                        mem[_3113 + 132] = 128
                        mem[_3113 + 164] = mem[_3113]
                        s = 0
                        while s < mem[_3113]:
                            mem[s + _3113 + 196] = mem[s + _3113 + 32]
                            s = s + 32
                            continue 
                        if not mem[_3113] % 32:
                            require ext_code.size(address(cd[4]))
                            call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _2900, address(cd[4]), 128, mem[_3113 + 164 len mem[_3113] + 32]
                        else:
                            mem[floor32(mem[_3113]) + _3113 + 196] = mem[floor32(mem[_3113]) + _3113 + -(mem[_3113] % 32) + 228 len mem[_3113] % 32]
                            require ext_code.size(address(cd[4]))
                            call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _2900, address(cd[4]), 128, mem[_3113], mem[_3113 + 196 len floor32(mem[_3113]) + 32]
                    else:
                        _3117 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_3117 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_3117 + 36] = 0
                        mem[_3117 + 68] = _2900
                        mem[_3117 + 100] = address(cd[132])
                        mem[_3117 + 132] = 128
                        mem[_3117 + 164] = mem[_3117]
                        s = 0
                        while s < mem[_3117]:
                            mem[s + _3117 + 196] = mem[s + _3117 + 32]
                            s = s + 32
                            continue 
                        if not mem[_3117] % 32:
                            require ext_code.size(address(cd[4]))
                            call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _2900, address(cd[132]), 128, mem[_3117 + 164 len mem[_3117] + 32]
                        else:
                            mem[floor32(mem[_3117]) + _3117 + 196] = mem[floor32(mem[_3117]) + _3117 + -(mem[_3117] % 32) + 228 len mem[_3117] % 32]
                            require ext_code.size(address(cd[4]))
                            call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _2900, address(cd[132]), 128, mem[_3117], mem[_3117 + 196 len floor32(mem[_3117]) + 32]
                else:
                    if idx < mem[(64 * ('cd', 100).length) + 292] - 2:
                        _3121 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_3121 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_3121 + 36] = _2900
                        mem[_3121 + 68] = 0
                        mem[_3121 + 100] = address(cd[4])
                        mem[_3121 + 132] = 128
                        mem[_3121 + 164] = mem[_3121]
                        s = 0
                        while s < mem[_3121]:
                            mem[s + _3121 + 196] = mem[s + _3121 + 32]
                            s = s + 32
                            continue 
                        if not mem[_3121] % 32:
                            require ext_code.size(address(cd[4]))
                            call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _2900, 0, address(cd[4]), 128, mem[_3121 + 164 len mem[_3121] + 32]
                        else:
                            mem[floor32(mem[_3121]) + _3121 + 196] = mem[floor32(mem[_3121]) + _3121 + -(mem[_3121] % 32) + 228 len mem[_3121] % 32]
                            require ext_code.size(address(cd[4]))
                            call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _2900, 0, address(cd[4]), 128, mem[_3121], mem[_3121 + 196 len floor32(mem[_3121]) + 32]
                    else:
                        _3125 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_3125 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_3125 + 36] = _2900
                        mem[_3125 + 68] = 0
                        mem[_3125 + 100] = address(cd[132])
                        mem[_3125 + 132] = 128
                        mem[_3125 + 164] = mem[_3125]
                        s = 0
                        while s < mem[_3125]:
                            mem[s + _3125 + 196] = mem[s + _3125 + 32]
                            s = s + 32
                            continue 
                        if not mem[_3125] % 32:
                            require ext_code.size(address(cd[4]))
                            call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _2900, 0, address(cd[132]), 128, mem[_3125 + 164 len mem[_3125] + 32]
                        else:
                            mem[floor32(mem[_3125]) + _3125 + 196] = mem[floor32(mem[_3125]) + _3125 + -(mem[_3125] % 32) + 228 len mem[_3125] % 32]
                            require ext_code.size(address(cd[4]))
                            call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _2900, 0, address(cd[132]), 128, mem[_3125], mem[_3125 + 196 len floor32(mem[_3125]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        mem[mem[64] + 32] = mem[(32 * ('cd', 100).length) + 128]
        _2799 = mem[(32 * ('cd', 100).length) + 128]
        mem[mem[64] + 64 len floor32(mem[(32 * ('cd', 100).length) + 128])] = mem[(32 * ('cd', 100).length) + 160 len floor32(mem[(32 * ('cd', 100).length) + 128])]
        return 32, mem[mem[64] + 32 len (32 * _2799) + 32]
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
                _2901 = mem[(32 * idx + 1) + (32 * ('cd', 100).length) + 160]
                if mem[(32 * idx) + (64 * ('cd', 100).length) + ceil32(return_data.size) + 337 len 20] == mem[(32 * idx) + (64 * ('cd', 100).length) + ceil32(return_data.size) + 337 len 20]:
                    if idx < mem[(64 * ('cd', 100).length) + ceil32(return_data.size) + 293] - 2:
                        _3129 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_3129 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_3129 + 36] = 0
                        mem[_3129 + 68] = _2901
                        mem[_3129 + 100] = address(cd[4])
                        mem[_3129 + 132] = 128
                        mem[_3129 + 164] = mem[_3129]
                        s = 0
                        while s < mem[_3129]:
                            mem[s + _3129 + 196] = mem[s + _3129 + 32]
                            s = s + 32
                            continue 
                        if not mem[_3129] % 32:
                            require ext_code.size(address(cd[4]))
                            call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _2901, address(cd[4]), 128, mem[_3129 + 164 len mem[_3129] + 32]
                        else:
                            mem[floor32(mem[_3129]) + _3129 + 196] = mem[floor32(mem[_3129]) + _3129 + -(mem[_3129] % 32) + 228 len mem[_3129] % 32]
                            require ext_code.size(address(cd[4]))
                            call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _2901, address(cd[4]), 128, mem[_3129], mem[_3129 + 196 len floor32(mem[_3129]) + 32]
                    else:
                        _3133 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_3133 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_3133 + 36] = 0
                        mem[_3133 + 68] = _2901
                        mem[_3133 + 100] = address(cd[132])
                        mem[_3133 + 132] = 128
                        mem[_3133 + 164] = mem[_3133]
                        s = 0
                        while s < mem[_3133]:
                            mem[s + _3133 + 196] = mem[s + _3133 + 32]
                            s = s + 32
                            continue 
                        if not mem[_3133] % 32:
                            require ext_code.size(address(cd[4]))
                            call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _2901, address(cd[132]), 128, mem[_3133 + 164 len mem[_3133] + 32]
                        else:
                            mem[floor32(mem[_3133]) + _3133 + 196] = mem[floor32(mem[_3133]) + _3133 + -(mem[_3133] % 32) + 228 len mem[_3133] % 32]
                            require ext_code.size(address(cd[4]))
                            call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _2901, address(cd[132]), 128, mem[_3133], mem[_3133 + 196 len floor32(mem[_3133]) + 32]
                else:
                    if idx < mem[(64 * ('cd', 100).length) + ceil32(return_data.size) + 293] - 2:
                        _3137 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_3137 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_3137 + 36] = _2901
                        mem[_3137 + 68] = 0
                        mem[_3137 + 100] = address(cd[4])
                        mem[_3137 + 132] = 128
                        mem[_3137 + 164] = mem[_3137]
                        s = 0
                        while s < mem[_3137]:
                            mem[s + _3137 + 196] = mem[s + _3137 + 32]
                            s = s + 32
                            continue 
                        if not mem[_3137] % 32:
                            require ext_code.size(address(cd[4]))
                            call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _2901, 0, address(cd[4]), 128, mem[_3137 + 164 len mem[_3137] + 32]
                        else:
                            mem[floor32(mem[_3137]) + _3137 + 196] = mem[floor32(mem[_3137]) + _3137 + -(mem[_3137] % 32) + 228 len mem[_3137] % 32]
                            require ext_code.size(address(cd[4]))
                            call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _2901, 0, address(cd[4]), 128, mem[_3137], mem[_3137 + 196 len floor32(mem[_3137]) + 32]
                    else:
                        _3141 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_3141 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_3141 + 36] = _2901
                        mem[_3141 + 68] = 0
                        mem[_3141 + 100] = address(cd[132])
                        mem[_3141 + 132] = 128
                        mem[_3141 + 164] = mem[_3141]
                        s = 0
                        while s < mem[_3141]:
                            mem[s + _3141 + 196] = mem[s + _3141 + 32]
                            s = s + 32
                            continue 
                        if not mem[_3141] % 32:
                            require ext_code.size(address(cd[4]))
                            call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _2901, 0, address(cd[132]), 128, mem[_3141 + 164 len mem[_3141] + 32]
                        else:
                            mem[floor32(mem[_3141]) + _3141 + 196] = mem[floor32(mem[_3141]) + _3141 + -(mem[_3141] % 32) + 228 len mem[_3141] % 32]
                            require ext_code.size(address(cd[4]))
                            call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _2901, 0, address(cd[132]), 128, mem[_3141], mem[_3141 + 196 len floor32(mem[_3141]) + 32]
            else:
                if not mem[(32 * idx + 1) + (64 * ('cd', 100).length) + ceil32(return_data.size) + 337 len 20]:
                    revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                require idx + 1 < mem[(32 * ('cd', 100).length) + 128]
                _2902 = mem[(32 * idx + 1) + (32 * ('cd', 100).length) + 160]
                if mem[(32 * idx) + (64 * ('cd', 100).length) + ceil32(return_data.size) + 337 len 20] == mem[(32 * idx + 1) + (64 * ('cd', 100).length) + ceil32(return_data.size) + 337 len 20]:
                    if idx < mem[(64 * ('cd', 100).length) + ceil32(return_data.size) + 293] - 2:
                        _3145 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_3145 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_3145 + 36] = 0
                        mem[_3145 + 68] = _2902
                        mem[_3145 + 100] = address(cd[4])
                        mem[_3145 + 132] = 128
                        mem[_3145 + 164] = mem[_3145]
                        s = 0
                        while s < mem[_3145]:
                            mem[s + _3145 + 196] = mem[s + _3145 + 32]
                            s = s + 32
                            continue 
                        if not mem[_3145] % 32:
                            require ext_code.size(address(cd[4]))
                            call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _2902, address(cd[4]), 128, mem[_3145 + 164 len mem[_3145] + 32]
                        else:
                            mem[floor32(mem[_3145]) + _3145 + 196] = mem[floor32(mem[_3145]) + _3145 + -(mem[_3145] % 32) + 228 len mem[_3145] % 32]
                            require ext_code.size(address(cd[4]))
                            call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _2902, address(cd[4]), 128, mem[_3145], mem[_3145 + 196 len floor32(mem[_3145]) + 32]
                    else:
                        _3149 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_3149 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_3149 + 36] = 0
                        mem[_3149 + 68] = _2902
                        mem[_3149 + 100] = address(cd[132])
                        mem[_3149 + 132] = 128
                        mem[_3149 + 164] = mem[_3149]
                        s = 0
                        while s < mem[_3149]:
                            mem[s + _3149 + 196] = mem[s + _3149 + 32]
                            s = s + 32
                            continue 
                        if not mem[_3149] % 32:
                            require ext_code.size(address(cd[4]))
                            call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _2902, address(cd[132]), 128, mem[_3149 + 164 len mem[_3149] + 32]
                        else:
                            mem[floor32(mem[_3149]) + _3149 + 196] = mem[floor32(mem[_3149]) + _3149 + -(mem[_3149] % 32) + 228 len mem[_3149] % 32]
                            require ext_code.size(address(cd[4]))
                            call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _2902, address(cd[132]), 128, mem[_3149], mem[_3149 + 196 len floor32(mem[_3149]) + 32]
                else:
                    if idx < mem[(64 * ('cd', 100).length) + ceil32(return_data.size) + 293] - 2:
                        _3153 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_3153 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_3153 + 36] = _2902
                        mem[_3153 + 68] = 0
                        mem[_3153 + 100] = address(cd[4])
                        mem[_3153 + 132] = 128
                        mem[_3153 + 164] = mem[_3153]
                        s = 0
                        while s < mem[_3153]:
                            mem[s + _3153 + 196] = mem[s + _3153 + 32]
                            s = s + 32
                            continue 
                        if not mem[_3153] % 32:
                            require ext_code.size(address(cd[4]))
                            call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _2902, 0, address(cd[4]), 128, mem[_3153 + 164 len mem[_3153] + 32]
                        else:
                            mem[floor32(mem[_3153]) + _3153 + 196] = mem[floor32(mem[_3153]) + _3153 + -(mem[_3153] % 32) + 228 len mem[_3153] % 32]
                            require ext_code.size(address(cd[4]))
                            call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _2902, 0, address(cd[4]), 128, mem[_3153], mem[_3153 + 196 len floor32(mem[_3153]) + 32]
                    else:
                        _3157 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_3157 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_3157 + 36] = _2902
                        mem[_3157 + 68] = 0
                        mem[_3157 + 100] = address(cd[132])
                        mem[_3157 + 132] = 128
                        mem[_3157 + 164] = mem[_3157]
                        s = 0
                        while s < mem[_3157]:
                            mem[s + _3157 + 196] = mem[s + _3157 + 32]
                            s = s + 32
                            continue 
                        if not mem[_3157] % 32:
                            require ext_code.size(address(cd[4]))
                            call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _2902, 0, address(cd[132]), 128, mem[_3157 + 164 len mem[_3157] + 32]
                        else:
                            mem[floor32(mem[_3157]) + _3157 + 196] = mem[floor32(mem[_3157]) + _3157 + -(mem[_3157] % 32) + 228 len mem[_3157] % 32]
                            require ext_code.size(address(cd[4]))
                            call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _2902, 0, address(cd[132]), 128, mem[_3157], mem[_3157 + 196 len floor32(mem[_3157]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        mem[mem[64] + 32] = mem[(32 * ('cd', 100).length) + 128]
        _2803 = mem[(32 * ('cd', 100).length) + 128]
        mem[mem[64] + 64 len floor32(mem[(32 * ('cd', 100).length) + 128])] = mem[(32 * ('cd', 100).length) + 160 len floor32(mem[(32 * ('cd', 100).length) + 128])]
        return 32, mem[mem[64] + 32 len (32 * _2803) + 32]
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
            _2903 = mem[(32 * idx + 1) + (32 * ('cd', 100).length) + 160]
            if mem[(32 * idx) + (64 * ('cd', 100).length) + ceil32(return_data.size) + 337 len 20] == mem[(32 * idx) + (64 * ('cd', 100).length) + ceil32(return_data.size) + 337 len 20]:
                if idx < mem[(64 * ('cd', 100).length) + ceil32(return_data.size) + 293] - 2:
                    _3161 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_3161 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_3161 + 36] = 0
                    mem[_3161 + 68] = _2903
                    mem[_3161 + 100] = address(cd[4])
                    mem[_3161 + 132] = 128
                    mem[_3161 + 164] = mem[_3161]
                    s = 0
                    while s < mem[_3161]:
                        mem[s + _3161 + 196] = mem[s + _3161 + 32]
                        s = s + 32
                        continue 
                    if not mem[_3161] % 32:
                        require ext_code.size(address(cd[4]))
                        call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, _2903, address(cd[4]), 128, mem[_3161 + 164 len mem[_3161] + 32]
                    else:
                        mem[floor32(mem[_3161]) + _3161 + 196] = mem[floor32(mem[_3161]) + _3161 + -(mem[_3161] % 32) + 228 len mem[_3161] % 32]
                        require ext_code.size(address(cd[4]))
                        call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, _2903, address(cd[4]), 128, mem[_3161], mem[_3161 + 196 len floor32(mem[_3161]) + 32]
                else:
                    _3165 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_3165 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_3165 + 36] = 0
                    mem[_3165 + 68] = _2903
                    mem[_3165 + 100] = address(cd[132])
                    mem[_3165 + 132] = 128
                    mem[_3165 + 164] = mem[_3165]
                    s = 0
                    while s < mem[_3165]:
                        mem[s + _3165 + 196] = mem[s + _3165 + 32]
                        s = s + 32
                        continue 
                    if not mem[_3165] % 32:
                        require ext_code.size(address(cd[4]))
                        call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, _2903, address(cd[132]), 128, mem[_3165 + 164 len mem[_3165] + 32]
                    else:
                        mem[floor32(mem[_3165]) + _3165 + 196] = mem[floor32(mem[_3165]) + _3165 + -(mem[_3165] % 32) + 228 len mem[_3165] % 32]
                        require ext_code.size(address(cd[4]))
                        call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, _2903, address(cd[132]), 128, mem[_3165], mem[_3165 + 196 len floor32(mem[_3165]) + 32]
            else:
                if idx < mem[(64 * ('cd', 100).length) + ceil32(return_data.size) + 293] - 2:
                    _3169 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_3169 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_3169 + 36] = _2903
                    mem[_3169 + 68] = 0
                    mem[_3169 + 100] = address(cd[4])
                    mem[_3169 + 132] = 128
                    mem[_3169 + 164] = mem[_3169]
                    s = 0
                    while s < mem[_3169]:
                        mem[s + _3169 + 196] = mem[s + _3169 + 32]
                        s = s + 32
                        continue 
                    if not mem[_3169] % 32:
                        require ext_code.size(address(cd[4]))
                        call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args _2903, 0, address(cd[4]), 128, mem[_3169 + 164 len mem[_3169] + 32]
                    else:
                        mem[floor32(mem[_3169]) + _3169 + 196] = mem[floor32(mem[_3169]) + _3169 + -(mem[_3169] % 32) + 228 len mem[_3169] % 32]
                        require ext_code.size(address(cd[4]))
                        call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args _2903, 0, address(cd[4]), 128, mem[_3169], mem[_3169 + 196 len floor32(mem[_3169]) + 32]
                else:
                    _3173 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_3173 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_3173 + 36] = _2903
                    mem[_3173 + 68] = 0
                    mem[_3173 + 100] = address(cd[132])
                    mem[_3173 + 132] = 128
                    mem[_3173 + 164] = mem[_3173]
                    s = 0
                    while s < mem[_3173]:
                        mem[s + _3173 + 196] = mem[s + _3173 + 32]
                        s = s + 32
                        continue 
                    if not mem[_3173] % 32:
                        require ext_code.size(address(cd[4]))
                        call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args _2903, 0, address(cd[132]), 128, mem[_3173 + 164 len mem[_3173] + 32]
                    else:
                        mem[floor32(mem[_3173]) + _3173 + 196] = mem[floor32(mem[_3173]) + _3173 + -(mem[_3173] % 32) + 228 len mem[_3173] % 32]
                        require ext_code.size(address(cd[4]))
                        call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args _2903, 0, address(cd[132]), 128, mem[_3173], mem[_3173 + 196 len floor32(mem[_3173]) + 32]
        else:
            if not mem[(32 * idx + 1) + (64 * ('cd', 100).length) + ceil32(return_data.size) + 337 len 20]:
                revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
            require idx + 1 < mem[(32 * ('cd', 100).length) + 128]
            _2904 = mem[(32 * idx + 1) + (32 * ('cd', 100).length) + 160]
            if mem[(32 * idx) + (64 * ('cd', 100).length) + ceil32(return_data.size) + 337 len 20] == mem[(32 * idx + 1) + (64 * ('cd', 100).length) + ceil32(return_data.size) + 337 len 20]:
                if idx < mem[(64 * ('cd', 100).length) + ceil32(return_data.size) + 293] - 2:
                    _3177 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_3177 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_3177 + 36] = 0
                    mem[_3177 + 68] = _2904
                    mem[_3177 + 100] = address(cd[4])
                    mem[_3177 + 132] = 128
                    mem[_3177 + 164] = mem[_3177]
                    s = 0
                    while s < mem[_3177]:
                        mem[s + _3177 + 196] = mem[s + _3177 + 32]
                        s = s + 32
                        continue 
                    if not mem[_3177] % 32:
                        require ext_code.size(address(cd[4]))
                        call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, _2904, address(cd[4]), 128, mem[_3177 + 164 len mem[_3177] + 32]
                    else:
                        mem[floor32(mem[_3177]) + _3177 + 196] = mem[floor32(mem[_3177]) + _3177 + -(mem[_3177] % 32) + 228 len mem[_3177] % 32]
                        require ext_code.size(address(cd[4]))
                        call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, _2904, address(cd[4]), 128, mem[_3177], mem[_3177 + 196 len floor32(mem[_3177]) + 32]
                else:
                    _3181 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_3181 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_3181 + 36] = 0
                    mem[_3181 + 68] = _2904
                    mem[_3181 + 100] = address(cd[132])
                    mem[_3181 + 132] = 128
                    mem[_3181 + 164] = mem[_3181]
                    s = 0
                    while s < mem[_3181]:
                        mem[s + _3181 + 196] = mem[s + _3181 + 32]
                        s = s + 32
                        continue 
                    if not mem[_3181] % 32:
                        require ext_code.size(address(cd[4]))
                        call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, _2904, address(cd[132]), 128, mem[_3181 + 164 len mem[_3181] + 32]
                    else:
                        mem[floor32(mem[_3181]) + _3181 + 196] = mem[floor32(mem[_3181]) + _3181 + -(mem[_3181] % 32) + 228 len mem[_3181] % 32]
                        require ext_code.size(address(cd[4]))
                        call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, _2904, address(cd[132]), 128, mem[_3181], mem[_3181 + 196 len floor32(mem[_3181]) + 32]
            else:
                if idx < mem[(64 * ('cd', 100).length) + ceil32(return_data.size) + 293] - 2:
                    _3185 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_3185 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_3185 + 36] = _2904
                    mem[_3185 + 68] = 0
                    mem[_3185 + 100] = address(cd[4])
                    mem[_3185 + 132] = 128
                    mem[_3185 + 164] = mem[_3185]
                    s = 0
                    while s < mem[_3185]:
                        mem[s + _3185 + 196] = mem[s + _3185 + 32]
                        s = s + 32
                        continue 
                    if not mem[_3185] % 32:
                        require ext_code.size(address(cd[4]))
                        call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args _2904, 0, address(cd[4]), 128, mem[_3185 + 164 len mem[_3185] + 32]
                    else:
                        mem[floor32(mem[_3185]) + _3185 + 196] = mem[floor32(mem[_3185]) + _3185 + -(mem[_3185] % 32) + 228 len mem[_3185] % 32]
                        require ext_code.size(address(cd[4]))
                        call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args _2904, 0, address(cd[4]), 128, mem[_3185], mem[_3185 + 196 len floor32(mem[_3185]) + 32]
                else:
                    _3189 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_3189 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_3189 + 36] = _2904
                    mem[_3189 + 68] = 0
                    mem[_3189 + 100] = address(cd[132])
                    mem[_3189 + 132] = 128
                    mem[_3189 + 164] = mem[_3189]
                    s = 0
                    while s < mem[_3189]:
                        mem[s + _3189 + 196] = mem[s + _3189 + 32]
                        s = s + 32
                        continue 
                    if not mem[_3189] % 32:
                        require ext_code.size(address(cd[4]))
                        call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args _2904, 0, address(cd[132]), 128, mem[_3189 + 164 len mem[_3189] + 32]
                    else:
                        mem[floor32(mem[_3189]) + _3189 + 196] = mem[floor32(mem[_3189]) + _3189 + -(mem[_3189] % 32) + 228 len mem[_3189] % 32]
                        require ext_code.size(address(cd[4]))
                        call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args _2904, 0, address(cd[132]), 128, mem[_3189], mem[_3189 + 196 len floor32(mem[_3189]) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[(32 * ('cd', 100).length) + 128]
    _2807 = mem[(32 * ('cd', 100).length) + 128]
    mem[mem[64] + 64 len floor32(mem[(32 * ('cd', 100).length) + 128])] = mem[(32 * ('cd', 100).length) + 160 len floor32(mem[(32 * ('cd', 100).length) + 128])]
    return 32, mem[mem[64] + 32 len (32 * _2807) + 32]
}



}
