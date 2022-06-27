contract main {




// =====================  Runtime code  =====================


#
#  - sub_e21f34ee(?)
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
    call WETHAddress.0x2e1a7d4d with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
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
            _1524 = mem[(32 * idx) + 288]
            require idx + 1 < ('cd', 36).length
            _1529 = mem[(32 * idx + 1) + 288]
            if mem[(32 * idx) + 300 len 20] == mem[(32 * idx + 1) + 300 len 20]:
                revert with 0, 
                            32,
                            35,
                            0x5450616e63616b654c6962726172793a204944454e544943414c5f4144445245535345,
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
                if address(_1524) == address(_1524):
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
                if address(_1529) == address(_1524):
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
        mem[64] = (64 * ('cd', 36).length) + 416
        require 1 < ('cd', 36).length
        mem[(64 * ('cd', 36).length) + 352] = address(('cd', 36)[1])
        require 0 < ('cd', 36).length
        mem[(64 * ('cd', 36).length) + 384] = address(('cd', 36)[0])
        require mem[(32 * ('cd', 36).length) + 288] - 1 < mem[(32 * ('cd', 36).length) + 288]
        _1543 = mem[(32 * mem[(32 * ('cd', 36).length) + 288] - 1) + (32 * ('cd', 36).length) + 320]
        mem[(64 * ('cd', 36).length) + 416] = 2
        mem[64] = (64 * ('cd', 36).length) + 512
        mem[(64 * ('cd', 36).length) + 448 len 64] = call.data[calldata.size len 64]
        mem[(64 * ('cd', 36).length) + 448] = _1543
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
                revert with 0, 32, 35, 0x5450616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 103 len 29]
            if mem[(32 * idx) + (64 * ('cd', 36).length) + 556 len 20] < mem[(32 * idx + 1) + (64 * ('cd', 36).length) + 556 len 20]:
                if not mem[(32 * idx) + (64 * ('cd', 36).length) + 556 len 20]:
                    revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                require idx + 1 < mem[(32 * ('cd', 36).length) + 288]
                _4381 = mem[(32 * idx + 1) + (32 * ('cd', 36).length) + 320]
                if mem[(32 * idx) + (64 * ('cd', 36).length) + 556 len 20] == mem[(32 * idx) + (64 * ('cd', 36).length) + 556 len 20]:
                    if idx < mem[(64 * ('cd', 36).length) + 512] - 2:
                        _4473 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_4473 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_4473 + 36] = 0
                        mem[_4473 + 68] = _4381
                        mem[_4473 + 100] = address(ext_call.return_data[12 len 20])
                        mem[_4473 + 132] = 128
                        mem[_4473 + 164] = mem[_4473]
                        s = 0
                        while s < mem[_4473]:
                            mem[s + _4473 + 196] = mem[s + _4473 + 32]
                            s = s + 32
                            continue 
                        if not mem[_4473] % 32:
                            require ext_code.size(address(ext_call.return_data[12 len 20]))
                            call address(ext_call.return_data[12 len 20]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _4381, address(ext_call.return_data[12 len 20]), 128, mem[_4473 + 164 len mem[_4473] + 32]
                        else:
                            mem[floor32(mem[_4473]) + _4473 + 196] = mem[floor32(mem[_4473]) + _4473 + -(mem[_4473] % 32) + 228 len mem[_4473] % 32]
                            require ext_code.size(address(ext_call.return_data[12 len 20]))
                            call address(ext_call.return_data[12 len 20]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _4381, address(ext_call.return_data[12 len 20]), 128, mem[_4473], mem[_4473 + 196 len floor32(mem[_4473]) + 32]
                    else:
                        _4477 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_4477 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_4477 + 36] = 0
                        mem[_4477 + 68] = _4381
                        mem[_4477 + 100] = this.address
                        mem[_4477 + 132] = 128
                        mem[_4477 + 164] = mem[_4477]
                        s = 0
                        while s < mem[_4477]:
                            mem[s + _4477 + 196] = mem[s + _4477 + 32]
                            s = s + 32
                            continue 
                        if not mem[_4477] % 32:
                            require ext_code.size(address(ext_call.return_data[12 len 20]))
                            call address(ext_call.return_data[12 len 20]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _4381, address(this.address), 128, mem[_4477 + 164 len mem[_4477] + 32]
                        else:
                            mem[floor32(mem[_4477]) + _4477 + 196] = mem[floor32(mem[_4477]) + _4477 + -(mem[_4477] % 32) + 228 len mem[_4477] % 32]
                            require ext_code.size(address(ext_call.return_data[12 len 20]))
                            call address(ext_call.return_data[12 len 20]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _4381, address(this.address), 128, mem[_4477], mem[_4477 + 196 len floor32(mem[_4477]) + 32]
                else:
                    if idx < mem[(64 * ('cd', 36).length) + 512] - 2:
                        _4481 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_4481 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_4481 + 36] = _4381
                        mem[_4481 + 68] = 0
                        mem[_4481 + 100] = address(ext_call.return_data[12 len 20])
                        mem[_4481 + 132] = 128
                        mem[_4481 + 164] = mem[_4481]
                        s = 0
                        while s < mem[_4481]:
                            mem[s + _4481 + 196] = mem[s + _4481 + 32]
                            s = s + 32
                            continue 
                        if not mem[_4481] % 32:
                            require ext_code.size(address(ext_call.return_data[12 len 20]))
                            call address(ext_call.return_data[12 len 20]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _4381, 0, address(ext_call.return_data[12 len 20]), 128, mem[_4481 + 164 len mem[_4481] + 32]
                        else:
                            mem[floor32(mem[_4481]) + _4481 + 196] = mem[floor32(mem[_4481]) + _4481 + -(mem[_4481] % 32) + 228 len mem[_4481] % 32]
                            require ext_code.size(address(ext_call.return_data[12 len 20]))
                            call address(ext_call.return_data[12 len 20]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _4381, 0, address(ext_call.return_data[12 len 20]), 128, mem[_4481], mem[_4481 + 196 len floor32(mem[_4481]) + 32]
                    else:
                        _4485 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_4485 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_4485 + 36] = _4381
                        mem[_4485 + 68] = 0
                        mem[_4485 + 100] = this.address
                        mem[_4485 + 132] = 128
                        mem[_4485 + 164] = mem[_4485]
                        s = 0
                        while s < mem[_4485]:
                            mem[s + _4485 + 196] = mem[s + _4485 + 32]
                            s = s + 32
                            continue 
                        if not mem[_4485] % 32:
                            require ext_code.size(address(ext_call.return_data[12 len 20]))
                            call address(ext_call.return_data[12 len 20]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _4381, 0, address(this.address), 128, mem[_4485 + 164 len mem[_4485] + 32]
                        else:
                            mem[floor32(mem[_4485]) + _4485 + 196] = mem[floor32(mem[_4485]) + _4485 + -(mem[_4485] % 32) + 228 len mem[_4485] % 32]
                            require ext_code.size(address(ext_call.return_data[12 len 20]))
                            call address(ext_call.return_data[12 len 20]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _4381, 0, address(this.address), 128, mem[_4485], mem[_4485 + 196 len floor32(mem[_4485]) + 32]
            else:
                if not mem[(32 * idx + 1) + (64 * ('cd', 36).length) + 556 len 20]:
                    revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                require idx + 1 < mem[(32 * ('cd', 36).length) + 288]
                _4382 = mem[(32 * idx + 1) + (32 * ('cd', 36).length) + 320]
                if mem[(32 * idx) + (64 * ('cd', 36).length) + 556 len 20] == mem[(32 * idx + 1) + (64 * ('cd', 36).length) + 556 len 20]:
                    if idx < mem[(64 * ('cd', 36).length) + 512] - 2:
                        _4489 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_4489 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_4489 + 36] = 0
                        mem[_4489 + 68] = _4382
                        mem[_4489 + 100] = address(ext_call.return_data[12 len 20])
                        mem[_4489 + 132] = 128
                        mem[_4489 + 164] = mem[_4489]
                        s = 0
                        while s < mem[_4489]:
                            mem[s + _4489 + 196] = mem[s + _4489 + 32]
                            s = s + 32
                            continue 
                        if not mem[_4489] % 32:
                            require ext_code.size(address(ext_call.return_data[12 len 20]))
                            call address(ext_call.return_data[12 len 20]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _4382, address(ext_call.return_data[12 len 20]), 128, mem[_4489 + 164 len mem[_4489] + 32]
                        else:
                            mem[floor32(mem[_4489]) + _4489 + 196] = mem[floor32(mem[_4489]) + _4489 + -(mem[_4489] % 32) + 228 len mem[_4489] % 32]
                            require ext_code.size(address(ext_call.return_data[12 len 20]))
                            call address(ext_call.return_data[12 len 20]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _4382, address(ext_call.return_data[12 len 20]), 128, mem[_4489], mem[_4489 + 196 len floor32(mem[_4489]) + 32]
                    else:
                        _4493 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_4493 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_4493 + 36] = 0
                        mem[_4493 + 68] = _4382
                        mem[_4493 + 100] = this.address
                        mem[_4493 + 132] = 128
                        mem[_4493 + 164] = mem[_4493]
                        s = 0
                        while s < mem[_4493]:
                            mem[s + _4493 + 196] = mem[s + _4493 + 32]
                            s = s + 32
                            continue 
                        if not mem[_4493] % 32:
                            require ext_code.size(address(ext_call.return_data[12 len 20]))
                            call address(ext_call.return_data[12 len 20]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _4382, address(this.address), 128, mem[_4493 + 164 len mem[_4493] + 32]
                        else:
                            mem[floor32(mem[_4493]) + _4493 + 196] = mem[floor32(mem[_4493]) + _4493 + -(mem[_4493] % 32) + 228 len mem[_4493] % 32]
                            require ext_code.size(address(ext_call.return_data[12 len 20]))
                            call address(ext_call.return_data[12 len 20]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _4382, address(this.address), 128, mem[_4493], mem[_4493 + 196 len floor32(mem[_4493]) + 32]
                else:
                    if idx < mem[(64 * ('cd', 36).length) + 512] - 2:
                        _4497 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_4497 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_4497 + 36] = _4382
                        mem[_4497 + 68] = 0
                        mem[_4497 + 100] = address(ext_call.return_data[12 len 20])
                        mem[_4497 + 132] = 128
                        mem[_4497 + 164] = mem[_4497]
                        s = 0
                        while s < mem[_4497]:
                            mem[s + _4497 + 196] = mem[s + _4497 + 32]
                            s = s + 32
                            continue 
                        if not mem[_4497] % 32:
                            require ext_code.size(address(ext_call.return_data[12 len 20]))
                            call address(ext_call.return_data[12 len 20]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _4382, 0, address(ext_call.return_data[12 len 20]), 128, mem[_4497 + 164 len mem[_4497] + 32]
                        else:
                            mem[floor32(mem[_4497]) + _4497 + 196] = mem[floor32(mem[_4497]) + _4497 + -(mem[_4497] % 32) + 228 len mem[_4497] % 32]
                            require ext_code.size(address(ext_call.return_data[12 len 20]))
                            call address(ext_call.return_data[12 len 20]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _4382, 0, address(ext_call.return_data[12 len 20]), 128, mem[_4497], mem[_4497 + 196 len floor32(mem[_4497]) + 32]
                    else:
                        _4501 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_4501 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_4501 + 36] = _4382
                        mem[_4501 + 68] = 0
                        mem[_4501 + 100] = this.address
                        mem[_4501 + 132] = 128
                        mem[_4501 + 164] = mem[_4501]
                        s = 0
                        while s < mem[_4501]:
                            mem[s + _4501 + 196] = mem[s + _4501 + 32]
                            s = s + 32
                            continue 
                        if not mem[_4501] % 32:
                            require ext_code.size(address(ext_call.return_data[12 len 20]))
                            call address(ext_call.return_data[12 len 20]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _4382, 0, address(this.address), 128, mem[_4501 + 164 len mem[_4501] + 32]
                        else:
                            mem[floor32(mem[_4501]) + _4501 + 196] = mem[floor32(mem[_4501]) + _4501 + -(mem[_4501] % 32) + 228 len mem[_4501] % 32]
                            require ext_code.size(address(ext_call.return_data[12 len 20]))
                            call address(ext_call.return_data[12 len 20]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _4382, 0, address(this.address), 128, mem[_4501], mem[_4501 + 196 len floor32(mem[_4501]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            continue 
        mem[224] = msg.value * cd[132] / 100
        require 1 < mem[(64 * ('cd', 36).length) + 416]
        if mem[(64 * ('cd', 36).length) + 480] < msg.value * cd[132] / 100:
            revert with 0, '-,'
        _4302 = mem[96]
        _5340 = mem[(64 * ('cd', 36).length) + 320]
        idx = 0
        while idx < _5340 - 1:
            require idx < mem[(64 * ('cd', 36).length) + 320]
            require idx + 1 < mem[(64 * ('cd', 36).length) + 320]
            if mem[(32 * idx) + (64 * ('cd', 36).length) + 364 len 20] == mem[(32 * idx + 1) + (64 * ('cd', 36).length) + 364 len 20]:
                revert with 0, 32, 35, 0x5450616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 103 len 29]
            if mem[(32 * idx) + (64 * ('cd', 36).length) + 364 len 20] < mem[(32 * idx + 1) + (64 * ('cd', 36).length) + 364 len 20]:
                if not mem[(32 * idx) + (64 * ('cd', 36).length) + 364 len 20]:
                    revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                require idx + 1 < mem[(64 * ('cd', 36).length) + 416]
                _5569 = mem[(32 * idx + 1) + (64 * ('cd', 36).length) + 448]
                if mem[(32 * idx) + (64 * ('cd', 36).length) + 364 len 20] == mem[(32 * idx) + (64 * ('cd', 36).length) + 364 len 20]:
                    if idx < mem[(64 * ('cd', 36).length) + 320] - 2:
                        _5639 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_5639 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_5639 + 36] = 0
                        mem[_5639 + 68] = _5569
                        mem[_5639 + 100] = address(_4302)
                        mem[_5639 + 132] = 128
                        mem[_5639 + 164] = mem[_5639]
                        s = 0
                        while s < mem[_5639]:
                            mem[s + _5639 + 196] = mem[s + _5639 + 32]
                            s = s + 32
                            continue 
                        if not mem[_5639] % 32:
                            require ext_code.size(address(_4302))
                            call address(_4302).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _5569, address(_4302), 128, mem[_5639 + 164 len mem[_5639] + 32]
                        else:
                            mem[floor32(mem[_5639]) + _5639 + 196] = mem[floor32(mem[_5639]) + _5639 + -(mem[_5639] % 32) + 228 len mem[_5639] % 32]
                            require ext_code.size(address(_4302))
                            call address(_4302).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _5569, address(_4302), 128, mem[_5639], mem[_5639 + 196 len floor32(mem[_5639]) + 32]
                    else:
                        _5643 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_5643 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_5643 + 36] = 0
                        mem[_5643 + 68] = _5569
                        mem[_5643 + 100] = this.address
                        mem[_5643 + 132] = 128
                        mem[_5643 + 164] = mem[_5643]
                        s = 0
                        while s < mem[_5643]:
                            mem[s + _5643 + 196] = mem[s + _5643 + 32]
                            s = s + 32
                            continue 
                        if not mem[_5643] % 32:
                            require ext_code.size(address(_4302))
                            call address(_4302).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _5569, address(this.address), 128, mem[_5643 + 164 len mem[_5643] + 32]
                        else:
                            mem[floor32(mem[_5643]) + _5643 + 196] = mem[floor32(mem[_5643]) + _5643 + -(mem[_5643] % 32) + 228 len mem[_5643] % 32]
                            require ext_code.size(address(_4302))
                            call address(_4302).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _5569, address(this.address), 128, mem[_5643], mem[_5643 + 196 len floor32(mem[_5643]) + 32]
                else:
                    if idx < mem[(64 * ('cd', 36).length) + 320] - 2:
                        _5647 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_5647 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_5647 + 36] = _5569
                        mem[_5647 + 68] = 0
                        mem[_5647 + 100] = address(_4302)
                        mem[_5647 + 132] = 128
                        mem[_5647 + 164] = mem[_5647]
                        s = 0
                        while s < mem[_5647]:
                            mem[s + _5647 + 196] = mem[s + _5647 + 32]
                            s = s + 32
                            continue 
                        if not mem[_5647] % 32:
                            require ext_code.size(address(_4302))
                            call address(_4302).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _5569, 0, address(_4302), 128, mem[_5647 + 164 len mem[_5647] + 32]
                        else:
                            mem[floor32(mem[_5647]) + _5647 + 196] = mem[floor32(mem[_5647]) + _5647 + -(mem[_5647] % 32) + 228 len mem[_5647] % 32]
                            require ext_code.size(address(_4302))
                            call address(_4302).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _5569, 0, address(_4302), 128, mem[_5647], mem[_5647 + 196 len floor32(mem[_5647]) + 32]
                    else:
                        _5651 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_5651 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_5651 + 36] = _5569
                        mem[_5651 + 68] = 0
                        mem[_5651 + 100] = this.address
                        mem[_5651 + 132] = 128
                        mem[_5651 + 164] = mem[_5651]
                        s = 0
                        while s < mem[_5651]:
                            mem[s + _5651 + 196] = mem[s + _5651 + 32]
                            s = s + 32
                            continue 
                        if not mem[_5651] % 32:
                            require ext_code.size(address(_4302))
                            call address(_4302).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _5569, 0, address(this.address), 128, mem[_5651 + 164 len mem[_5651] + 32]
                        else:
                            mem[floor32(mem[_5651]) + _5651 + 196] = mem[floor32(mem[_5651]) + _5651 + -(mem[_5651] % 32) + 228 len mem[_5651] % 32]
                            require ext_code.size(address(_4302))
                            call address(_4302).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _5569, 0, address(this.address), 128, mem[_5651], mem[_5651 + 196 len floor32(mem[_5651]) + 32]
            else:
                if not mem[(32 * idx + 1) + (64 * ('cd', 36).length) + 364 len 20]:
                    revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                require idx + 1 < mem[(64 * ('cd', 36).length) + 416]
                _5570 = mem[(32 * idx + 1) + (64 * ('cd', 36).length) + 448]
                if mem[(32 * idx) + (64 * ('cd', 36).length) + 364 len 20] == mem[(32 * idx + 1) + (64 * ('cd', 36).length) + 364 len 20]:
                    if idx < mem[(64 * ('cd', 36).length) + 320] - 2:
                        _5655 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_5655 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_5655 + 36] = 0
                        mem[_5655 + 68] = _5570
                        mem[_5655 + 100] = address(_4302)
                        mem[_5655 + 132] = 128
                        mem[_5655 + 164] = mem[_5655]
                        s = 0
                        while s < mem[_5655]:
                            mem[s + _5655 + 196] = mem[s + _5655 + 32]
                            s = s + 32
                            continue 
                        if not mem[_5655] % 32:
                            require ext_code.size(address(_4302))
                            call address(_4302).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _5570, address(_4302), 128, mem[_5655 + 164 len mem[_5655] + 32]
                        else:
                            mem[floor32(mem[_5655]) + _5655 + 196] = mem[floor32(mem[_5655]) + _5655 + -(mem[_5655] % 32) + 228 len mem[_5655] % 32]
                            require ext_code.size(address(_4302))
                            call address(_4302).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _5570, address(_4302), 128, mem[_5655], mem[_5655 + 196 len floor32(mem[_5655]) + 32]
                    else:
                        _5659 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_5659 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_5659 + 36] = 0
                        mem[_5659 + 68] = _5570
                        mem[_5659 + 100] = this.address
                        mem[_5659 + 132] = 128
                        mem[_5659 + 164] = mem[_5659]
                        s = 0
                        while s < mem[_5659]:
                            mem[s + _5659 + 196] = mem[s + _5659 + 32]
                            s = s + 32
                            continue 
                        if not mem[_5659] % 32:
                            require ext_code.size(address(_4302))
                            call address(_4302).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _5570, address(this.address), 128, mem[_5659 + 164 len mem[_5659] + 32]
                        else:
                            mem[floor32(mem[_5659]) + _5659 + 196] = mem[floor32(mem[_5659]) + _5659 + -(mem[_5659] % 32) + 228 len mem[_5659] % 32]
                            require ext_code.size(address(_4302))
                            call address(_4302).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _5570, address(this.address), 128, mem[_5659], mem[_5659 + 196 len floor32(mem[_5659]) + 32]
                else:
                    if idx < mem[(64 * ('cd', 36).length) + 320] - 2:
                        _5663 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_5663 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_5663 + 36] = _5570
                        mem[_5663 + 68] = 0
                        mem[_5663 + 100] = address(_4302)
                        mem[_5663 + 132] = 128
                        mem[_5663 + 164] = mem[_5663]
                        s = 0
                        while s < mem[_5663]:
                            mem[s + _5663 + 196] = mem[s + _5663 + 32]
                            s = s + 32
                            continue 
                        if not mem[_5663] % 32:
                            require ext_code.size(address(_4302))
                            call address(_4302).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _5570, 0, address(_4302), 128, mem[_5663 + 164 len mem[_5663] + 32]
                        else:
                            mem[floor32(mem[_5663]) + _5663 + 196] = mem[floor32(mem[_5663]) + _5663 + -(mem[_5663] % 32) + 228 len mem[_5663] % 32]
                            require ext_code.size(address(_4302))
                            call address(_4302).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _5570, 0, address(_4302), 128, mem[_5663], mem[_5663 + 196 len floor32(mem[_5663]) + 32]
                    else:
                        _5667 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_5667 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_5667 + 36] = _5570
                        mem[_5667 + 68] = 0
                        mem[_5667 + 100] = this.address
                        mem[_5667 + 132] = 128
                        mem[_5667 + 164] = mem[_5667]
                        s = 0
                        while s < mem[_5667]:
                            mem[s + _5667 + 196] = mem[s + _5667 + 32]
                            s = s + 32
                            continue 
                        if not mem[_5667] % 32:
                            require ext_code.size(address(_4302))
                            call address(_4302).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _5570, 0, address(this.address), 128, mem[_5667 + 164 len mem[_5667] + 32]
                        else:
                            mem[floor32(mem[_5667]) + _5667 + 196] = mem[floor32(mem[_5667]) + _5667 + -(mem[_5667] % 32) + 228 len mem[_5667] % 32]
                            require ext_code.size(address(_4302))
                            call address(_4302).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _5570, 0, address(this.address), 128, mem[_5667], mem[_5667 + 196 len floor32(mem[_5667]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            continue 
        require mem[(64 * ('cd', 36).length) + 416] - 1 < mem[(64 * ('cd', 36).length) + 416]
        _5467 = mem[(32 * mem[(64 * ('cd', 36).length) + 416] - 1) + (64 * ('cd', 36).length) + 448]
        mem[mem[64]] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _5467
        require ext_code.size(WETHAddress)
        call WETHAddress.0x2e1a7d4d with:
             gas gas_remaining wei
            args _5467
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require mem[(64 * ('cd', 36).length) + 416] - 1 < mem[(64 * ('cd', 36).length) + 416]
        _5522 = mem[(32 * mem[(64 * ('cd', 36).length) + 416] - 1) + (64 * ('cd', 36).length) + 448]
        mem[mem[64] + 4] = mem[108 len 20]
        mem[mem[64] + 36] = _5522
        require ext_code.size(WETHAddress)
        call WETHAddress.0xa9059cbb with:
             gas gas_remaining wei
            args mem[mem[64] + 4], _5522
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        _5567 = mem[96]
        _5568 = mem[64]
        mem[64] = mem[64] + (32 * ('cd', 36).length) + 32
        mem[_5568] = ('cd', 36).length
        mem[_5568 + 32 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
        mem[_5568 + (32 * ('cd', 36).length) + 32] = 0
        idx = 0
        while idx < ('cd', 36).length - 1:
            require idx < mem[_5568]
            require idx + 1 < mem[_5568]
            if mem[(32 * idx) + _5568 + 44 len 20] == mem[(32 * idx + 1) + _5568 + 44 len 20]:
                revert with 0, 32, 35, 0x5450616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 103 len 29]
            if mem[(32 * idx) + _5568 + 44 len 20] < mem[(32 * idx + 1) + _5568 + 44 len 20]:
                if not mem[(32 * idx) + _5568 + 44 len 20]:
                    revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                require idx + 1 < mem[(32 * ('cd', 36).length) + 288]
                _6365 = mem[(32 * idx + 1) + (32 * ('cd', 36).length) + 320]
                if mem[(32 * idx) + _5568 + 44 len 20] == mem[(32 * idx) + _5568 + 44 len 20]:
                    if idx < mem[_5568] - 2:
                        _6419 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_6419 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_6419 + 36] = 0
                        mem[_6419 + 68] = _6365
                        mem[_6419 + 100] = address(_5567)
                        mem[_6419 + 132] = 128
                        mem[_6419 + 164] = mem[_6419]
                        s = 0
                        while s < mem[_6419]:
                            mem[s + _6419 + 196] = mem[s + _6419 + 32]
                            s = s + 32
                            continue 
                        if not mem[_6419] % 32:
                            require ext_code.size(address(_5567))
                            call address(_5567).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _6365, address(_5567), 128, mem[_6419 + 164 len mem[_6419] + 32]
                        else:
                            mem[floor32(mem[_6419]) + _6419 + 196] = mem[floor32(mem[_6419]) + _6419 + -(mem[_6419] % 32) + 228 len mem[_6419] % 32]
                            require ext_code.size(address(_5567))
                            call address(_5567).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _6365, address(_5567), 128, mem[_6419], mem[_6419 + 196 len floor32(mem[_6419]) + 32]
                    else:
                        _6423 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_6423 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_6423 + 36] = 0
                        mem[_6423 + 68] = _6365
                        mem[_6423 + 100] = address(cd[68])
                        mem[_6423 + 132] = 128
                        mem[_6423 + 164] = mem[_6423]
                        s = 0
                        while s < mem[_6423]:
                            mem[s + _6423 + 196] = mem[s + _6423 + 32]
                            s = s + 32
                            continue 
                        if not mem[_6423] % 32:
                            require ext_code.size(address(_5567))
                            call address(_5567).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _6365, address(cd[68]), 128, mem[_6423 + 164 len mem[_6423] + 32]
                        else:
                            mem[floor32(mem[_6423]) + _6423 + 196] = mem[floor32(mem[_6423]) + _6423 + -(mem[_6423] % 32) + 228 len mem[_6423] % 32]
                            require ext_code.size(address(_5567))
                            call address(_5567).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _6365, address(cd[68]), 128, mem[_6423], mem[_6423 + 196 len floor32(mem[_6423]) + 32]
                else:
                    if idx < mem[_5568] - 2:
                        _6427 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_6427 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_6427 + 36] = _6365
                        mem[_6427 + 68] = 0
                        mem[_6427 + 100] = address(_5567)
                        mem[_6427 + 132] = 128
                        mem[_6427 + 164] = mem[_6427]
                        s = 0
                        while s < mem[_6427]:
                            mem[s + _6427 + 196] = mem[s + _6427 + 32]
                            s = s + 32
                            continue 
                        if not mem[_6427] % 32:
                            require ext_code.size(address(_5567))
                            call address(_5567).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _6365, 0, address(_5567), 128, mem[_6427 + 164 len mem[_6427] + 32]
                        else:
                            mem[floor32(mem[_6427]) + _6427 + 196] = mem[floor32(mem[_6427]) + _6427 + -(mem[_6427] % 32) + 228 len mem[_6427] % 32]
                            require ext_code.size(address(_5567))
                            call address(_5567).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _6365, 0, address(_5567), 128, mem[_6427], mem[_6427 + 196 len floor32(mem[_6427]) + 32]
                    else:
                        _6431 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_6431 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_6431 + 36] = _6365
                        mem[_6431 + 68] = 0
                        mem[_6431 + 100] = address(cd[68])
                        mem[_6431 + 132] = 128
                        mem[_6431 + 164] = mem[_6431]
                        s = 0
                        while s < mem[_6431]:
                            mem[s + _6431 + 196] = mem[s + _6431 + 32]
                            s = s + 32
                            continue 
                        if not mem[_6431] % 32:
                            require ext_code.size(address(_5567))
                            call address(_5567).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _6365, 0, address(cd[68]), 128, mem[_6431 + 164 len mem[_6431] + 32]
                        else:
                            mem[floor32(mem[_6431]) + _6431 + 196] = mem[floor32(mem[_6431]) + _6431 + -(mem[_6431] % 32) + 228 len mem[_6431] % 32]
                            require ext_code.size(address(_5567))
                            call address(_5567).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _6365, 0, address(cd[68]), 128, mem[_6431], mem[_6431 + 196 len floor32(mem[_6431]) + 32]
            else:
                if not mem[(32 * idx + 1) + _5568 + 44 len 20]:
                    revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                require idx + 1 < mem[(32 * ('cd', 36).length) + 288]
                _6366 = mem[(32 * idx + 1) + (32 * ('cd', 36).length) + 320]
                if mem[(32 * idx) + _5568 + 44 len 20] == mem[(32 * idx + 1) + _5568 + 44 len 20]:
                    if idx < mem[_5568] - 2:
                        _6435 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_6435 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_6435 + 36] = 0
                        mem[_6435 + 68] = _6366
                        mem[_6435 + 100] = address(_5567)
                        mem[_6435 + 132] = 128
                        mem[_6435 + 164] = mem[_6435]
                        s = 0
                        while s < mem[_6435]:
                            mem[s + _6435 + 196] = mem[s + _6435 + 32]
                            s = s + 32
                            continue 
                        if not mem[_6435] % 32:
                            require ext_code.size(address(_5567))
                            call address(_5567).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _6366, address(_5567), 128, mem[_6435 + 164 len mem[_6435] + 32]
                        else:
                            mem[floor32(mem[_6435]) + _6435 + 196] = mem[floor32(mem[_6435]) + _6435 + -(mem[_6435] % 32) + 228 len mem[_6435] % 32]
                            require ext_code.size(address(_5567))
                            call address(_5567).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _6366, address(_5567), 128, mem[_6435], mem[_6435 + 196 len floor32(mem[_6435]) + 32]
                    else:
                        _6439 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_6439 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_6439 + 36] = 0
                        mem[_6439 + 68] = _6366
                        mem[_6439 + 100] = address(cd[68])
                        mem[_6439 + 132] = 128
                        mem[_6439 + 164] = mem[_6439]
                        s = 0
                        while s < mem[_6439]:
                            mem[s + _6439 + 196] = mem[s + _6439 + 32]
                            s = s + 32
                            continue 
                        if not mem[_6439] % 32:
                            require ext_code.size(address(_5567))
                            call address(_5567).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _6366, address(cd[68]), 128, mem[_6439 + 164 len mem[_6439] + 32]
                        else:
                            mem[floor32(mem[_6439]) + _6439 + 196] = mem[floor32(mem[_6439]) + _6439 + -(mem[_6439] % 32) + 228 len mem[_6439] % 32]
                            require ext_code.size(address(_5567))
                            call address(_5567).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _6366, address(cd[68]), 128, mem[_6439], mem[_6439 + 196 len floor32(mem[_6439]) + 32]
                else:
                    if idx < mem[_5568] - 2:
                        _6443 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_6443 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_6443 + 36] = _6366
                        mem[_6443 + 68] = 0
                        mem[_6443 + 100] = address(_5567)
                        mem[_6443 + 132] = 128
                        mem[_6443 + 164] = mem[_6443]
                        s = 0
                        while s < mem[_6443]:
                            mem[s + _6443 + 196] = mem[s + _6443 + 32]
                            s = s + 32
                            continue 
                        if not mem[_6443] % 32:
                            require ext_code.size(address(_5567))
                            call address(_5567).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _6366, 0, address(_5567), 128, mem[_6443 + 164 len mem[_6443] + 32]
                        else:
                            mem[floor32(mem[_6443]) + _6443 + 196] = mem[floor32(mem[_6443]) + _6443 + -(mem[_6443] % 32) + 228 len mem[_6443] % 32]
                            require ext_code.size(address(_5567))
                            call address(_5567).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _6366, 0, address(_5567), 128, mem[_6443], mem[_6443 + 196 len floor32(mem[_6443]) + 32]
                    else:
                        _6447 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_6447 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_6447 + 36] = _6366
                        mem[_6447 + 68] = 0
                        mem[_6447 + 100] = address(cd[68])
                        mem[_6447 + 132] = 128
                        mem[_6447 + 164] = mem[_6447]
                        s = 0
                        while s < mem[_6447]:
                            mem[s + _6447 + 196] = mem[s + _6447 + 32]
                            s = s + 32
                            continue 
                        if not mem[_6447] % 32:
                            require ext_code.size(address(_5567))
                            call address(_5567).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _6366, 0, address(cd[68]), 128, mem[_6447 + 164 len mem[_6447] + 32]
                        else:
                            mem[floor32(mem[_6447]) + _6447 + 196] = mem[floor32(mem[_6447]) + _6447 + -(mem[_6447] % 32) + 228 len mem[_6447] % 32]
                            require ext_code.size(address(_5567))
                            call address(_5567).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _6366, 0, address(cd[68]), 128, mem[_6447], mem[_6447 + 196 len floor32(mem[_6447]) + 32]
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
            _1527 = mem[(32 * idx) + 288]
            require idx + 1 < ('cd', 36).length
            _1530 = mem[(32 * idx + 1) + 288]
            if mem[(32 * idx) + 300 len 20] == mem[(32 * idx + 1) + 300 len 20]:
                revert with 0, 
                            32,
                            35,
                            0x5450616e63616b654c6962726172793a204944454e544943414c5f4144445245535345,
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
                if address(_1527) == address(_1527):
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
                if address(_1530) == address(_1527):
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
        mem[64] = (64 * ('cd', 36).length) + 416
        require 1 < ('cd', 36).length
        mem[(64 * ('cd', 36).length) + 352] = address(('cd', 36)[1])
        require 0 < ('cd', 36).length
        mem[(64 * ('cd', 36).length) + 384] = address(('cd', 36)[0])
        require mem[(32 * ('cd', 36).length) + 288] - 1 < mem[(32 * ('cd', 36).length) + 288]
        _1550 = mem[(32 * mem[(32 * ('cd', 36).length) + 288] - 1) + (32 * ('cd', 36).length) + 320]
        mem[(64 * ('cd', 36).length) + 416] = 2
        mem[64] = (64 * ('cd', 36).length) + 512
        mem[(64 * ('cd', 36).length) + 448 len 64] = call.data[calldata.size len 64]
        mem[(64 * ('cd', 36).length) + 448] = _1550
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
                revert with 0, 32, 35, 0x5450616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 103 len 29]
            if mem[(32 * idx) + (64 * ('cd', 36).length) + 556 len 20] < mem[(32 * idx + 1) + (64 * ('cd', 36).length) + 556 len 20]:
                if not mem[(32 * idx) + (64 * ('cd', 36).length) + 556 len 20]:
                    revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                require idx + 1 < mem[(32 * ('cd', 36).length) + 288]
                _4385 = mem[(32 * idx + 1) + (32 * ('cd', 36).length) + 320]
                if mem[(32 * idx) + (64 * ('cd', 36).length) + 556 len 20] == mem[(32 * idx) + (64 * ('cd', 36).length) + 556 len 20]:
                    if idx < mem[(64 * ('cd', 36).length) + 512] - 2:
                        _4547 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_4547 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_4547 + 36] = 0
                        mem[_4547 + 68] = _4385
                        mem[_4547 + 100] = address(ext_call.return_data[12 len 20])
                        mem[_4547 + 132] = 128
                        mem[_4547 + 164] = mem[_4547]
                        s = 0
                        while s < mem[_4547]:
                            mem[s + _4547 + 196] = mem[s + _4547 + 32]
                            s = s + 32
                            continue 
                        if not mem[_4547] % 32:
                            require ext_code.size(address(ext_call.return_data[12 len 20]))
                            call address(ext_call.return_data[12 len 20]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _4385, address(ext_call.return_data[12 len 20]), 128, mem[_4547 + 164 len mem[_4547] + 32]
                        else:
                            mem[floor32(mem[_4547]) + _4547 + 196] = mem[floor32(mem[_4547]) + _4547 + -(mem[_4547] % 32) + 228 len mem[_4547] % 32]
                            require ext_code.size(address(ext_call.return_data[12 len 20]))
                            call address(ext_call.return_data[12 len 20]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _4385, address(ext_call.return_data[12 len 20]), 128, mem[_4547], mem[_4547 + 196 len floor32(mem[_4547]) + 32]
                    else:
                        _4551 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_4551 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_4551 + 36] = 0
                        mem[_4551 + 68] = _4385
                        mem[_4551 + 100] = this.address
                        mem[_4551 + 132] = 128
                        mem[_4551 + 164] = mem[_4551]
                        s = 0
                        while s < mem[_4551]:
                            mem[s + _4551 + 196] = mem[s + _4551 + 32]
                            s = s + 32
                            continue 
                        if not mem[_4551] % 32:
                            require ext_code.size(address(ext_call.return_data[12 len 20]))
                            call address(ext_call.return_data[12 len 20]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _4385, address(this.address), 128, mem[_4551 + 164 len mem[_4551] + 32]
                        else:
                            mem[floor32(mem[_4551]) + _4551 + 196] = mem[floor32(mem[_4551]) + _4551 + -(mem[_4551] % 32) + 228 len mem[_4551] % 32]
                            require ext_code.size(address(ext_call.return_data[12 len 20]))
                            call address(ext_call.return_data[12 len 20]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _4385, address(this.address), 128, mem[_4551], mem[_4551 + 196 len floor32(mem[_4551]) + 32]
                else:
                    if idx < mem[(64 * ('cd', 36).length) + 512] - 2:
                        _4555 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_4555 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_4555 + 36] = _4385
                        mem[_4555 + 68] = 0
                        mem[_4555 + 100] = address(ext_call.return_data[12 len 20])
                        mem[_4555 + 132] = 128
                        mem[_4555 + 164] = mem[_4555]
                        s = 0
                        while s < mem[_4555]:
                            mem[s + _4555 + 196] = mem[s + _4555 + 32]
                            s = s + 32
                            continue 
                        if not mem[_4555] % 32:
                            require ext_code.size(address(ext_call.return_data[12 len 20]))
                            call address(ext_call.return_data[12 len 20]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _4385, 0, address(ext_call.return_data[12 len 20]), 128, mem[_4555 + 164 len mem[_4555] + 32]
                        else:
                            mem[floor32(mem[_4555]) + _4555 + 196] = mem[floor32(mem[_4555]) + _4555 + -(mem[_4555] % 32) + 228 len mem[_4555] % 32]
                            require ext_code.size(address(ext_call.return_data[12 len 20]))
                            call address(ext_call.return_data[12 len 20]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _4385, 0, address(ext_call.return_data[12 len 20]), 128, mem[_4555], mem[_4555 + 196 len floor32(mem[_4555]) + 32]
                    else:
                        _4559 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_4559 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_4559 + 36] = _4385
                        mem[_4559 + 68] = 0
                        mem[_4559 + 100] = this.address
                        mem[_4559 + 132] = 128
                        mem[_4559 + 164] = mem[_4559]
                        s = 0
                        while s < mem[_4559]:
                            mem[s + _4559 + 196] = mem[s + _4559 + 32]
                            s = s + 32
                            continue 
                        if not mem[_4559] % 32:
                            require ext_code.size(address(ext_call.return_data[12 len 20]))
                            call address(ext_call.return_data[12 len 20]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _4385, 0, address(this.address), 128, mem[_4559 + 164 len mem[_4559] + 32]
                        else:
                            mem[floor32(mem[_4559]) + _4559 + 196] = mem[floor32(mem[_4559]) + _4559 + -(mem[_4559] % 32) + 228 len mem[_4559] % 32]
                            require ext_code.size(address(ext_call.return_data[12 len 20]))
                            call address(ext_call.return_data[12 len 20]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _4385, 0, address(this.address), 128, mem[_4559], mem[_4559 + 196 len floor32(mem[_4559]) + 32]
            else:
                if not mem[(32 * idx + 1) + (64 * ('cd', 36).length) + 556 len 20]:
                    revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                require idx + 1 < mem[(32 * ('cd', 36).length) + 288]
                _4386 = mem[(32 * idx + 1) + (32 * ('cd', 36).length) + 320]
                if mem[(32 * idx) + (64 * ('cd', 36).length) + 556 len 20] == mem[(32 * idx + 1) + (64 * ('cd', 36).length) + 556 len 20]:
                    if idx < mem[(64 * ('cd', 36).length) + 512] - 2:
                        _4563 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_4563 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_4563 + 36] = 0
                        mem[_4563 + 68] = _4386
                        mem[_4563 + 100] = address(ext_call.return_data[12 len 20])
                        mem[_4563 + 132] = 128
                        mem[_4563 + 164] = mem[_4563]
                        s = 0
                        while s < mem[_4563]:
                            mem[s + _4563 + 196] = mem[s + _4563 + 32]
                            s = s + 32
                            continue 
                        if not mem[_4563] % 32:
                            require ext_code.size(address(ext_call.return_data[12 len 20]))
                            call address(ext_call.return_data[12 len 20]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _4386, address(ext_call.return_data[12 len 20]), 128, mem[_4563 + 164 len mem[_4563] + 32]
                        else:
                            mem[floor32(mem[_4563]) + _4563 + 196] = mem[floor32(mem[_4563]) + _4563 + -(mem[_4563] % 32) + 228 len mem[_4563] % 32]
                            require ext_code.size(address(ext_call.return_data[12 len 20]))
                            call address(ext_call.return_data[12 len 20]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _4386, address(ext_call.return_data[12 len 20]), 128, mem[_4563], mem[_4563 + 196 len floor32(mem[_4563]) + 32]
                    else:
                        _4567 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_4567 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_4567 + 36] = 0
                        mem[_4567 + 68] = _4386
                        mem[_4567 + 100] = this.address
                        mem[_4567 + 132] = 128
                        mem[_4567 + 164] = mem[_4567]
                        s = 0
                        while s < mem[_4567]:
                            mem[s + _4567 + 196] = mem[s + _4567 + 32]
                            s = s + 32
                            continue 
                        if not mem[_4567] % 32:
                            require ext_code.size(address(ext_call.return_data[12 len 20]))
                            call address(ext_call.return_data[12 len 20]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _4386, address(this.address), 128, mem[_4567 + 164 len mem[_4567] + 32]
                        else:
                            mem[floor32(mem[_4567]) + _4567 + 196] = mem[floor32(mem[_4567]) + _4567 + -(mem[_4567] % 32) + 228 len mem[_4567] % 32]
                            require ext_code.size(address(ext_call.return_data[12 len 20]))
                            call address(ext_call.return_data[12 len 20]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _4386, address(this.address), 128, mem[_4567], mem[_4567 + 196 len floor32(mem[_4567]) + 32]
                else:
                    if idx < mem[(64 * ('cd', 36).length) + 512] - 2:
                        _4571 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_4571 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_4571 + 36] = _4386
                        mem[_4571 + 68] = 0
                        mem[_4571 + 100] = address(ext_call.return_data[12 len 20])
                        mem[_4571 + 132] = 128
                        mem[_4571 + 164] = mem[_4571]
                        s = 0
                        while s < mem[_4571]:
                            mem[s + _4571 + 196] = mem[s + _4571 + 32]
                            s = s + 32
                            continue 
                        if not mem[_4571] % 32:
                            require ext_code.size(address(ext_call.return_data[12 len 20]))
                            call address(ext_call.return_data[12 len 20]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _4386, 0, address(ext_call.return_data[12 len 20]), 128, mem[_4571 + 164 len mem[_4571] + 32]
                        else:
                            mem[floor32(mem[_4571]) + _4571 + 196] = mem[floor32(mem[_4571]) + _4571 + -(mem[_4571] % 32) + 228 len mem[_4571] % 32]
                            require ext_code.size(address(ext_call.return_data[12 len 20]))
                            call address(ext_call.return_data[12 len 20]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _4386, 0, address(ext_call.return_data[12 len 20]), 128, mem[_4571], mem[_4571 + 196 len floor32(mem[_4571]) + 32]
                    else:
                        _4575 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_4575 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_4575 + 36] = _4386
                        mem[_4575 + 68] = 0
                        mem[_4575 + 100] = this.address
                        mem[_4575 + 132] = 128
                        mem[_4575 + 164] = mem[_4575]
                        s = 0
                        while s < mem[_4575]:
                            mem[s + _4575 + 196] = mem[s + _4575 + 32]
                            s = s + 32
                            continue 
                        if not mem[_4575] % 32:
                            require ext_code.size(address(ext_call.return_data[12 len 20]))
                            call address(ext_call.return_data[12 len 20]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _4386, 0, address(this.address), 128, mem[_4575 + 164 len mem[_4575] + 32]
                        else:
                            mem[floor32(mem[_4575]) + _4575 + 196] = mem[floor32(mem[_4575]) + _4575 + -(mem[_4575] % 32) + 228 len mem[_4575] % 32]
                            require ext_code.size(address(ext_call.return_data[12 len 20]))
                            call address(ext_call.return_data[12 len 20]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _4386, 0, address(this.address), 128, mem[_4575], mem[_4575 + 196 len floor32(mem[_4575]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            continue 
        mem[224] = msg.value * cd[132] / 100
        require 1 < mem[(64 * ('cd', 36).length) + 416]
        if mem[(64 * ('cd', 36).length) + 480] < msg.value * cd[132] / 100:
            revert with 0, '-,'
        _4308 = mem[96]
        _5342 = mem[(64 * ('cd', 36).length) + 320]
        idx = 0
        while idx < _5342 - 1:
            require idx < mem[(64 * ('cd', 36).length) + 320]
            require idx + 1 < mem[(64 * ('cd', 36).length) + 320]
            if mem[(32 * idx) + (64 * ('cd', 36).length) + 364 len 20] == mem[(32 * idx + 1) + (64 * ('cd', 36).length) + 364 len 20]:
                revert with 0, 32, 35, 0x5450616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 103 len 29]
            if mem[(32 * idx) + (64 * ('cd', 36).length) + 364 len 20] < mem[(32 * idx + 1) + (64 * ('cd', 36).length) + 364 len 20]:
                if not mem[(32 * idx) + (64 * ('cd', 36).length) + 364 len 20]:
                    revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                require idx + 1 < mem[(64 * ('cd', 36).length) + 416]
                _5577 = mem[(32 * idx + 1) + (64 * ('cd', 36).length) + 448]
                if mem[(32 * idx) + (64 * ('cd', 36).length) + 364 len 20] == mem[(32 * idx) + (64 * ('cd', 36).length) + 364 len 20]:
                    if idx < mem[(64 * ('cd', 36).length) + 320] - 2:
                        _5707 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_5707 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_5707 + 36] = 0
                        mem[_5707 + 68] = _5577
                        mem[_5707 + 100] = address(_4308)
                        mem[_5707 + 132] = 128
                        mem[_5707 + 164] = mem[_5707]
                        s = 0
                        while s < mem[_5707]:
                            mem[s + _5707 + 196] = mem[s + _5707 + 32]
                            s = s + 32
                            continue 
                        if not mem[_5707] % 32:
                            require ext_code.size(address(_4308))
                            call address(_4308).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _5577, address(_4308), 128, mem[_5707 + 164 len mem[_5707] + 32]
                        else:
                            mem[floor32(mem[_5707]) + _5707 + 196] = mem[floor32(mem[_5707]) + _5707 + -(mem[_5707] % 32) + 228 len mem[_5707] % 32]
                            require ext_code.size(address(_4308))
                            call address(_4308).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _5577, address(_4308), 128, mem[_5707], mem[_5707 + 196 len floor32(mem[_5707]) + 32]
                    else:
                        _5711 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_5711 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_5711 + 36] = 0
                        mem[_5711 + 68] = _5577
                        mem[_5711 + 100] = this.address
                        mem[_5711 + 132] = 128
                        mem[_5711 + 164] = mem[_5711]
                        s = 0
                        while s < mem[_5711]:
                            mem[s + _5711 + 196] = mem[s + _5711 + 32]
                            s = s + 32
                            continue 
                        if not mem[_5711] % 32:
                            require ext_code.size(address(_4308))
                            call address(_4308).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _5577, address(this.address), 128, mem[_5711 + 164 len mem[_5711] + 32]
                        else:
                            mem[floor32(mem[_5711]) + _5711 + 196] = mem[floor32(mem[_5711]) + _5711 + -(mem[_5711] % 32) + 228 len mem[_5711] % 32]
                            require ext_code.size(address(_4308))
                            call address(_4308).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _5577, address(this.address), 128, mem[_5711], mem[_5711 + 196 len floor32(mem[_5711]) + 32]
                else:
                    if idx < mem[(64 * ('cd', 36).length) + 320] - 2:
                        _5715 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_5715 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_5715 + 36] = _5577
                        mem[_5715 + 68] = 0
                        mem[_5715 + 100] = address(_4308)
                        mem[_5715 + 132] = 128
                        mem[_5715 + 164] = mem[_5715]
                        s = 0
                        while s < mem[_5715]:
                            mem[s + _5715 + 196] = mem[s + _5715 + 32]
                            s = s + 32
                            continue 
                        if not mem[_5715] % 32:
                            require ext_code.size(address(_4308))
                            call address(_4308).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _5577, 0, address(_4308), 128, mem[_5715 + 164 len mem[_5715] + 32]
                        else:
                            mem[floor32(mem[_5715]) + _5715 + 196] = mem[floor32(mem[_5715]) + _5715 + -(mem[_5715] % 32) + 228 len mem[_5715] % 32]
                            require ext_code.size(address(_4308))
                            call address(_4308).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _5577, 0, address(_4308), 128, mem[_5715], mem[_5715 + 196 len floor32(mem[_5715]) + 32]
                    else:
                        _5719 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_5719 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_5719 + 36] = _5577
                        mem[_5719 + 68] = 0
                        mem[_5719 + 100] = this.address
                        mem[_5719 + 132] = 128
                        mem[_5719 + 164] = mem[_5719]
                        s = 0
                        while s < mem[_5719]:
                            mem[s + _5719 + 196] = mem[s + _5719 + 32]
                            s = s + 32
                            continue 
                        if not mem[_5719] % 32:
                            require ext_code.size(address(_4308))
                            call address(_4308).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _5577, 0, address(this.address), 128, mem[_5719 + 164 len mem[_5719] + 32]
                        else:
                            mem[floor32(mem[_5719]) + _5719 + 196] = mem[floor32(mem[_5719]) + _5719 + -(mem[_5719] % 32) + 228 len mem[_5719] % 32]
                            require ext_code.size(address(_4308))
                            call address(_4308).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _5577, 0, address(this.address), 128, mem[_5719], mem[_5719 + 196 len floor32(mem[_5719]) + 32]
            else:
                if not mem[(32 * idx + 1) + (64 * ('cd', 36).length) + 364 len 20]:
                    revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                require idx + 1 < mem[(64 * ('cd', 36).length) + 416]
                _5578 = mem[(32 * idx + 1) + (64 * ('cd', 36).length) + 448]
                if mem[(32 * idx) + (64 * ('cd', 36).length) + 364 len 20] == mem[(32 * idx + 1) + (64 * ('cd', 36).length) + 364 len 20]:
                    if idx < mem[(64 * ('cd', 36).length) + 320] - 2:
                        _5723 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_5723 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_5723 + 36] = 0
                        mem[_5723 + 68] = _5578
                        mem[_5723 + 100] = address(_4308)
                        mem[_5723 + 132] = 128
                        mem[_5723 + 164] = mem[_5723]
                        s = 0
                        while s < mem[_5723]:
                            mem[s + _5723 + 196] = mem[s + _5723 + 32]
                            s = s + 32
                            continue 
                        if not mem[_5723] % 32:
                            require ext_code.size(address(_4308))
                            call address(_4308).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _5578, address(_4308), 128, mem[_5723 + 164 len mem[_5723] + 32]
                        else:
                            mem[floor32(mem[_5723]) + _5723 + 196] = mem[floor32(mem[_5723]) + _5723 + -(mem[_5723] % 32) + 228 len mem[_5723] % 32]
                            require ext_code.size(address(_4308))
                            call address(_4308).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _5578, address(_4308), 128, mem[_5723], mem[_5723 + 196 len floor32(mem[_5723]) + 32]
                    else:
                        _5727 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_5727 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_5727 + 36] = 0
                        mem[_5727 + 68] = _5578
                        mem[_5727 + 100] = this.address
                        mem[_5727 + 132] = 128
                        mem[_5727 + 164] = mem[_5727]
                        s = 0
                        while s < mem[_5727]:
                            mem[s + _5727 + 196] = mem[s + _5727 + 32]
                            s = s + 32
                            continue 
                        if not mem[_5727] % 32:
                            require ext_code.size(address(_4308))
                            call address(_4308).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _5578, address(this.address), 128, mem[_5727 + 164 len mem[_5727] + 32]
                        else:
                            mem[floor32(mem[_5727]) + _5727 + 196] = mem[floor32(mem[_5727]) + _5727 + -(mem[_5727] % 32) + 228 len mem[_5727] % 32]
                            require ext_code.size(address(_4308))
                            call address(_4308).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _5578, address(this.address), 128, mem[_5727], mem[_5727 + 196 len floor32(mem[_5727]) + 32]
                else:
                    if idx < mem[(64 * ('cd', 36).length) + 320] - 2:
                        _5731 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_5731 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_5731 + 36] = _5578
                        mem[_5731 + 68] = 0
                        mem[_5731 + 100] = address(_4308)
                        mem[_5731 + 132] = 128
                        mem[_5731 + 164] = mem[_5731]
                        s = 0
                        while s < mem[_5731]:
                            mem[s + _5731 + 196] = mem[s + _5731 + 32]
                            s = s + 32
                            continue 
                        if not mem[_5731] % 32:
                            require ext_code.size(address(_4308))
                            call address(_4308).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _5578, 0, address(_4308), 128, mem[_5731 + 164 len mem[_5731] + 32]
                        else:
                            mem[floor32(mem[_5731]) + _5731 + 196] = mem[floor32(mem[_5731]) + _5731 + -(mem[_5731] % 32) + 228 len mem[_5731] % 32]
                            require ext_code.size(address(_4308))
                            call address(_4308).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _5578, 0, address(_4308), 128, mem[_5731], mem[_5731 + 196 len floor32(mem[_5731]) + 32]
                    else:
                        _5735 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_5735 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_5735 + 36] = _5578
                        mem[_5735 + 68] = 0
                        mem[_5735 + 100] = this.address
                        mem[_5735 + 132] = 128
                        mem[_5735 + 164] = mem[_5735]
                        s = 0
                        while s < mem[_5735]:
                            mem[s + _5735 + 196] = mem[s + _5735 + 32]
                            s = s + 32
                            continue 
                        if not mem[_5735] % 32:
                            require ext_code.size(address(_4308))
                            call address(_4308).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _5578, 0, address(this.address), 128, mem[_5735 + 164 len mem[_5735] + 32]
                        else:
                            mem[floor32(mem[_5735]) + _5735 + 196] = mem[floor32(mem[_5735]) + _5735 + -(mem[_5735] % 32) + 228 len mem[_5735] % 32]
                            require ext_code.size(address(_4308))
                            call address(_4308).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _5578, 0, address(this.address), 128, mem[_5735], mem[_5735 + 196 len floor32(mem[_5735]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            continue 
        require mem[(64 * ('cd', 36).length) + 416] - 1 < mem[(64 * ('cd', 36).length) + 416]
        _5491 = mem[(32 * mem[(64 * ('cd', 36).length) + 416] - 1) + (64 * ('cd', 36).length) + 448]
        mem[mem[64]] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _5491
        require ext_code.size(WETHAddress)
        call WETHAddress.0x2e1a7d4d with:
             gas gas_remaining wei
            args _5491
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require mem[(64 * ('cd', 36).length) + 416] - 1 < mem[(64 * ('cd', 36).length) + 416]
        _5528 = mem[(32 * mem[(64 * ('cd', 36).length) + 416] - 1) + (64 * ('cd', 36).length) + 448]
        mem[mem[64] + 4] = mem[108 len 20]
        mem[mem[64] + 36] = _5528
        require ext_code.size(WETHAddress)
        call WETHAddress.0xa9059cbb with:
             gas gas_remaining wei
            args mem[mem[64] + 4], _5528
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        _5575 = mem[96]
        _5576 = mem[64]
        mem[64] = mem[64] + (32 * ('cd', 36).length) + 32
        mem[_5576] = ('cd', 36).length
        mem[_5576 + 32 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
        mem[_5576 + (32 * ('cd', 36).length) + 32] = 0
        idx = 0
        while idx < ('cd', 36).length - 1:
            require idx < mem[_5576]
            require idx + 1 < mem[_5576]
            if mem[(32 * idx) + _5576 + 44 len 20] == mem[(32 * idx + 1) + _5576 + 44 len 20]:
                revert with 0, 32, 35, 0x5450616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 103 len 29]
            if mem[(32 * idx) + _5576 + 44 len 20] < mem[(32 * idx + 1) + _5576 + 44 len 20]:
                if not mem[(32 * idx) + _5576 + 44 len 20]:
                    revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                require idx + 1 < mem[(32 * ('cd', 36).length) + 288]
                _6369 = mem[(32 * idx + 1) + (32 * ('cd', 36).length) + 320]
                if mem[(32 * idx) + _5576 + 44 len 20] == mem[(32 * idx) + _5576 + 44 len 20]:
                    if idx < mem[_5576] - 2:
                        _6483 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_6483 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_6483 + 36] = 0
                        mem[_6483 + 68] = _6369
                        mem[_6483 + 100] = address(_5575)
                        mem[_6483 + 132] = 128
                        mem[_6483 + 164] = mem[_6483]
                        s = 0
                        while s < mem[_6483]:
                            mem[s + _6483 + 196] = mem[s + _6483 + 32]
                            s = s + 32
                            continue 
                        if not mem[_6483] % 32:
                            require ext_code.size(address(_5575))
                            call address(_5575).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _6369, address(_5575), 128, mem[_6483 + 164 len mem[_6483] + 32]
                        else:
                            mem[floor32(mem[_6483]) + _6483 + 196] = mem[floor32(mem[_6483]) + _6483 + -(mem[_6483] % 32) + 228 len mem[_6483] % 32]
                            require ext_code.size(address(_5575))
                            call address(_5575).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _6369, address(_5575), 128, mem[_6483], mem[_6483 + 196 len floor32(mem[_6483]) + 32]
                    else:
                        _6487 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_6487 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_6487 + 36] = 0
                        mem[_6487 + 68] = _6369
                        mem[_6487 + 100] = address(cd[68])
                        mem[_6487 + 132] = 128
                        mem[_6487 + 164] = mem[_6487]
                        s = 0
                        while s < mem[_6487]:
                            mem[s + _6487 + 196] = mem[s + _6487 + 32]
                            s = s + 32
                            continue 
                        if not mem[_6487] % 32:
                            require ext_code.size(address(_5575))
                            call address(_5575).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _6369, address(cd[68]), 128, mem[_6487 + 164 len mem[_6487] + 32]
                        else:
                            mem[floor32(mem[_6487]) + _6487 + 196] = mem[floor32(mem[_6487]) + _6487 + -(mem[_6487] % 32) + 228 len mem[_6487] % 32]
                            require ext_code.size(address(_5575))
                            call address(_5575).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _6369, address(cd[68]), 128, mem[_6487], mem[_6487 + 196 len floor32(mem[_6487]) + 32]
                else:
                    if idx < mem[_5576] - 2:
                        _6491 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_6491 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_6491 + 36] = _6369
                        mem[_6491 + 68] = 0
                        mem[_6491 + 100] = address(_5575)
                        mem[_6491 + 132] = 128
                        mem[_6491 + 164] = mem[_6491]
                        s = 0
                        while s < mem[_6491]:
                            mem[s + _6491 + 196] = mem[s + _6491 + 32]
                            s = s + 32
                            continue 
                        if not mem[_6491] % 32:
                            require ext_code.size(address(_5575))
                            call address(_5575).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _6369, 0, address(_5575), 128, mem[_6491 + 164 len mem[_6491] + 32]
                        else:
                            mem[floor32(mem[_6491]) + _6491 + 196] = mem[floor32(mem[_6491]) + _6491 + -(mem[_6491] % 32) + 228 len mem[_6491] % 32]
                            require ext_code.size(address(_5575))
                            call address(_5575).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _6369, 0, address(_5575), 128, mem[_6491], mem[_6491 + 196 len floor32(mem[_6491]) + 32]
                    else:
                        _6495 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_6495 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_6495 + 36] = _6369
                        mem[_6495 + 68] = 0
                        mem[_6495 + 100] = address(cd[68])
                        mem[_6495 + 132] = 128
                        mem[_6495 + 164] = mem[_6495]
                        s = 0
                        while s < mem[_6495]:
                            mem[s + _6495 + 196] = mem[s + _6495 + 32]
                            s = s + 32
                            continue 
                        if not mem[_6495] % 32:
                            require ext_code.size(address(_5575))
                            call address(_5575).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _6369, 0, address(cd[68]), 128, mem[_6495 + 164 len mem[_6495] + 32]
                        else:
                            mem[floor32(mem[_6495]) + _6495 + 196] = mem[floor32(mem[_6495]) + _6495 + -(mem[_6495] % 32) + 228 len mem[_6495] % 32]
                            require ext_code.size(address(_5575))
                            call address(_5575).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _6369, 0, address(cd[68]), 128, mem[_6495], mem[_6495 + 196 len floor32(mem[_6495]) + 32]
            else:
                if not mem[(32 * idx + 1) + _5576 + 44 len 20]:
                    revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                require idx + 1 < mem[(32 * ('cd', 36).length) + 288]
                _6370 = mem[(32 * idx + 1) + (32 * ('cd', 36).length) + 320]
                if mem[(32 * idx) + _5576 + 44 len 20] == mem[(32 * idx + 1) + _5576 + 44 len 20]:
                    if idx < mem[_5576] - 2:
                        _6499 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_6499 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_6499 + 36] = 0
                        mem[_6499 + 68] = _6370
                        mem[_6499 + 100] = address(_5575)
                        mem[_6499 + 132] = 128
                        mem[_6499 + 164] = mem[_6499]
                        s = 0
                        while s < mem[_6499]:
                            mem[s + _6499 + 196] = mem[s + _6499 + 32]
                            s = s + 32
                            continue 
                        if not mem[_6499] % 32:
                            require ext_code.size(address(_5575))
                            call address(_5575).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _6370, address(_5575), 128, mem[_6499 + 164 len mem[_6499] + 32]
                        else:
                            mem[floor32(mem[_6499]) + _6499 + 196] = mem[floor32(mem[_6499]) + _6499 + -(mem[_6499] % 32) + 228 len mem[_6499] % 32]
                            require ext_code.size(address(_5575))
                            call address(_5575).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _6370, address(_5575), 128, mem[_6499], mem[_6499 + 196 len floor32(mem[_6499]) + 32]
                    else:
                        _6503 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_6503 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_6503 + 36] = 0
                        mem[_6503 + 68] = _6370
                        mem[_6503 + 100] = address(cd[68])
                        mem[_6503 + 132] = 128
                        mem[_6503 + 164] = mem[_6503]
                        s = 0
                        while s < mem[_6503]:
                            mem[s + _6503 + 196] = mem[s + _6503 + 32]
                            s = s + 32
                            continue 
                        if not mem[_6503] % 32:
                            require ext_code.size(address(_5575))
                            call address(_5575).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _6370, address(cd[68]), 128, mem[_6503 + 164 len mem[_6503] + 32]
                        else:
                            mem[floor32(mem[_6503]) + _6503 + 196] = mem[floor32(mem[_6503]) + _6503 + -(mem[_6503] % 32) + 228 len mem[_6503] % 32]
                            require ext_code.size(address(_5575))
                            call address(_5575).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _6370, address(cd[68]), 128, mem[_6503], mem[_6503 + 196 len floor32(mem[_6503]) + 32]
                else:
                    if idx < mem[_5576] - 2:
                        _6507 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_6507 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_6507 + 36] = _6370
                        mem[_6507 + 68] = 0
                        mem[_6507 + 100] = address(_5575)
                        mem[_6507 + 132] = 128
                        mem[_6507 + 164] = mem[_6507]
                        s = 0
                        while s < mem[_6507]:
                            mem[s + _6507 + 196] = mem[s + _6507 + 32]
                            s = s + 32
                            continue 
                        if not mem[_6507] % 32:
                            require ext_code.size(address(_5575))
                            call address(_5575).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _6370, 0, address(_5575), 128, mem[_6507 + 164 len mem[_6507] + 32]
                        else:
                            mem[floor32(mem[_6507]) + _6507 + 196] = mem[floor32(mem[_6507]) + _6507 + -(mem[_6507] % 32) + 228 len mem[_6507] % 32]
                            require ext_code.size(address(_5575))
                            call address(_5575).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _6370, 0, address(_5575), 128, mem[_6507], mem[_6507 + 196 len floor32(mem[_6507]) + 32]
                    else:
                        _6511 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_6511 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_6511 + 36] = _6370
                        mem[_6511 + 68] = 0
                        mem[_6511 + 100] = address(cd[68])
                        mem[_6511 + 132] = 128
                        mem[_6511 + 164] = mem[_6511]
                        s = 0
                        while s < mem[_6511]:
                            mem[s + _6511 + 196] = mem[s + _6511 + 32]
                            s = s + 32
                            continue 
                        if not mem[_6511] % 32:
                            require ext_code.size(address(_5575))
                            call address(_5575).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _6370, 0, address(cd[68]), 128, mem[_6511 + 164 len mem[_6511] + 32]
                        else:
                            mem[floor32(mem[_6511]) + _6511 + 196] = mem[floor32(mem[_6511]) + _6511 + -(mem[_6511] % 32) + 228 len mem[_6511] % 32]
                            require ext_code.size(address(_5575))
                            call address(_5575).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _6370, 0, address(cd[68]), 128, mem[_6511], mem[_6511 + 196 len floor32(mem[_6511]) + 32]
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
                                    0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                    mem[(64 * ('cd', 100).length) + 266 len 26]
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
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
                                    0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                    mem[(64 * ('cd', 100).length) + 266 len 26]
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
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
                                    0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                    mem[(64 * ('cd', 100).length) + 266 len 26]
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
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
                                    0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                    mem[(64 * ('cd', 100).length) + 266 len 26]
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
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
                                0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                mem[(64 * ('cd', 100).length) + 266 len 26]
                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                    revert with 0, 
                                32,
                                38,
                                0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
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
                                0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                mem[(64 * ('cd', 100).length) + 266 len 26]
                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                    revert with 0, 
                                32,
                                38,
                                0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
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
                                0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                mem[(64 * ('cd', 100).length) + 266 len 26]
                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                    revert with 0, 
                                32,
                                38,
                                0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
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
                                0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                mem[(64 * ('cd', 100).length) + 266 len 26]
                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                    revert with 0, 
                                32,
                                38,
                                0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
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
