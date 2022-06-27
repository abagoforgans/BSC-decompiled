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
  stop
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
        while idx < ('cd', 36).length - 1:
            require idx < ('cd', 36).length
            _853 = mem[(32 * idx) + 128]
            require idx + 1 < ('cd', 36).length
            _859 = mem[(32 * idx + 1) + 128]
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
                require idx < mem[(32 * ('cd', 36).length) + 128]
                if mem[(32 * idx) + (32 * ('cd', 36).length) + 160] <= 0:
                    revert with 0, 
                                32,
                                41,
                                0xfe50616e63616b654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                mem[(64 * ('cd', 36).length) + 269 len 23]
                if address(_853) == address(_853):
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
                        require idx + 1 < mem[(32 * ('cd', 36).length) + 128]
                        require 0 < ('cd', 36).length
                        mem[128] = 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + (32 * ('cd', 36).length) + 160])
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
                        require idx + 1 < mem[(32 * ('cd', 36).length) + 128]
                        require 0 < ('cd', 36).length
                        mem[128] = 9975 * mem[(32 * idx) + (32 * ('cd', 36).length) + 160] * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + (32 * ('cd', 36).length) + 160])
                    require idx < ('cd', 36).length
                    if mem[(32 * idx) + 128] <= 0:
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
                    if 9975 * mem[(32 * idx) + 128] / 9975 != mem[(32 * idx) + 128]:
                        revert with 0, 'ds-math-mul-overflow'
                    if not Mask(112, 0, ext_call.return_data[0]):
                        if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + 128]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-add-overflow'
                        require (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + 128])
                        require idx + 1 < ('cd', 36).length
                        mem[(32 * idx + 1) + 128] = 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + 128])
                    else:
                        require Mask(112, 0, ext_call.return_data[0])
                        if 9975 * mem[(32 * idx) + 128] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 9975 * mem[(32 * idx) + 128]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + 128]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-add-overflow'
                        require (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + 128])
                        require idx + 1 < ('cd', 36).length
                        mem[(32 * idx + 1) + 128] = 9975 * mem[(32 * idx) + 128] * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + 128])
                else:
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
                        require idx + 1 < mem[(32 * ('cd', 36).length) + 128]
                        require 0 < ('cd', 36).length
                        mem[128] = 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + (32 * ('cd', 36).length) + 160])
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
                        require idx + 1 < mem[(32 * ('cd', 36).length) + 128]
                        require 0 < ('cd', 36).length
                        mem[128] = 9975 * mem[(32 * idx) + (32 * ('cd', 36).length) + 160] * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + (32 * ('cd', 36).length) + 160])
                    require idx < ('cd', 36).length
                    if mem[(32 * idx) + 128] <= 0:
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
                    if 9975 * mem[(32 * idx) + 128] / 9975 != mem[(32 * idx) + 128]:
                        revert with 0, 'ds-math-mul-overflow'
                    if not Mask(112, 0, ext_call.return_data[32]):
                        if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + 128]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-add-overflow'
                        require (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + 128])
                        require idx + 1 < ('cd', 36).length
                        mem[(32 * idx + 1) + 128] = 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + 128])
                    else:
                        require Mask(112, 0, ext_call.return_data[32])
                        if 9975 * mem[(32 * idx) + 128] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 9975 * mem[(32 * idx) + 128]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + 128]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-add-overflow'
                        require (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + 128])
                        require idx + 1 < ('cd', 36).length
                        mem[(32 * idx + 1) + 128] = 9975 * mem[(32 * idx) + 128] * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + 128])
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
                require idx < mem[(32 * ('cd', 36).length) + 128]
                if mem[(32 * idx) + (32 * ('cd', 36).length) + 160] <= 0:
                    revert with 0, 
                                32,
                                41,
                                0xfe50616e63616b654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                mem[(64 * ('cd', 36).length) + 269 len 23]
                if address(_859) == address(_853):
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
                        require idx + 1 < mem[(32 * ('cd', 36).length) + 128]
                        require 0 < ('cd', 36).length
                        mem[128] = 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + (32 * ('cd', 36).length) + 160])
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
                        require idx + 1 < mem[(32 * ('cd', 36).length) + 128]
                        require 0 < ('cd', 36).length
                        mem[128] = 9975 * mem[(32 * idx) + (32 * ('cd', 36).length) + 160] * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + (32 * ('cd', 36).length) + 160])
                    require idx < ('cd', 36).length
                    if mem[(32 * idx) + 128] <= 0:
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
                    if 9975 * mem[(32 * idx) + 128] / 9975 != mem[(32 * idx) + 128]:
                        revert with 0, 'ds-math-mul-overflow'
                    if not Mask(112, 0, ext_call.return_data[0]):
                        if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + 128]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-add-overflow'
                        require (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + 128])
                        require idx + 1 < ('cd', 36).length
                        mem[(32 * idx + 1) + 128] = 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + 128])
                    else:
                        require Mask(112, 0, ext_call.return_data[0])
                        if 9975 * mem[(32 * idx) + 128] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 9975 * mem[(32 * idx) + 128]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + 128]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-add-overflow'
                        require (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + 128])
                        require idx + 1 < ('cd', 36).length
                        mem[(32 * idx + 1) + 128] = 9975 * mem[(32 * idx) + 128] * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + 128])
                else:
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
                        require idx + 1 < mem[(32 * ('cd', 36).length) + 128]
                        require 0 < ('cd', 36).length
                        mem[128] = 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + (32 * ('cd', 36).length) + 160])
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
                        require idx + 1 < mem[(32 * ('cd', 36).length) + 128]
                        require 0 < ('cd', 36).length
                        mem[128] = 9975 * mem[(32 * idx) + (32 * ('cd', 36).length) + 160] * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + (32 * ('cd', 36).length) + 160])
                    require idx < ('cd', 36).length
                    if mem[(32 * idx) + 128] <= 0:
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
                    if 9975 * mem[(32 * idx) + 128] / 9975 != mem[(32 * idx) + 128]:
                        revert with 0, 'ds-math-mul-overflow'
                    if not Mask(112, 0, ext_call.return_data[32]):
                        if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + 128]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-add-overflow'
                        require (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + 128])
                        require idx + 1 < ('cd', 36).length
                        mem[(32 * idx + 1) + 128] = 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + 128])
                    else:
                        require Mask(112, 0, ext_call.return_data[32])
                        if 9975 * mem[(32 * idx) + 128] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 9975 * mem[(32 * idx) + 128]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + 128]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-add-overflow'
                        require (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + 128])
                        require idx + 1 < ('cd', 36).length
                        mem[(32 * idx + 1) + 128] = 9975 * mem[(32 * idx) + 128] * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + 128])
            idx = idx + 1
            continue 
        mem[(64 * ('cd', 36).length) + 160] = 2
        mem[64] = (64 * ('cd', 36).length) + 256
        require 1 < ('cd', 36).length
        mem[(64 * ('cd', 36).length) + 192] = address(('cd', 36)[1])
        require 0 < ('cd', 36).length
        mem[(64 * ('cd', 36).length) + 224] = address(('cd', 36)[0])
        require mem[(32 * ('cd', 36).length) + 128] - 1 < mem[(32 * ('cd', 36).length) + 128]
        if mem[(32 * mem[(32 * ('cd', 36).length) + 128] - 1) + (32 * ('cd', 36).length) + 160] < cd[4]:
            revert with 0, '-,'
        require 1 < ('cd', 36).length
        if mem[160] < msg.value * cd[100] / 100:
            revert with 0, '-,'
        require mem[(32 * ('cd', 36).length) + 128]
        mem[(64 * ('cd', 36).length) + 256] = 0xd0e30db000000000000000000000000000000000000000000000000000000000
        require ext_code.size(WETHAddress)
        call WETHAddress.deposit() with:
           value mem[(32 * ('cd', 36).length) + 160] wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require mem[(32 * ('cd', 36).length) + 128]
        mem[(64 * ('cd', 36).length) + 260] = address(ext_call.return_data[0])
        mem[(64 * ('cd', 36).length) + 292] = mem[(32 * ('cd', 36).length) + 160]
        require ext_code.size(WETHAddress)
        call WETHAddress.0xa9059cbb with:
             gas gas_remaining wei
            args address(ext_call.return_data[0]), mem[(32 * ('cd', 36).length) + 160]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        mem[64] = (98 * ('cd', 36).length) + 288
        mem[(64 * ('cd', 36).length) + 256] = ('cd', 36).length
        mem[(64 * ('cd', 36).length) + 288 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
        mem[(98 * ('cd', 36).length) + 288] = 0
        idx = 0
        while idx < ('cd', 36).length - 1:
            require idx < mem[(64 * ('cd', 36).length) + 256]
            require idx + 1 < mem[(64 * ('cd', 36).length) + 256]
            if mem[(32 * idx) + (64 * ('cd', 36).length) + 300 len 20] == mem[(32 * idx + 1) + (64 * ('cd', 36).length) + 300 len 20]:
                revert with 0, 32, 35, 0x2150616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 103 len 29]
            if mem[(32 * idx) + (64 * ('cd', 36).length) + 300 len 20] < mem[(32 * idx + 1) + (64 * ('cd', 36).length) + 300 len 20]:
                if not mem[(32 * idx) + (64 * ('cd', 36).length) + 300 len 20]:
                    revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                require idx + 1 < mem[(32 * ('cd', 36).length) + 128]
                _1704 = mem[(32 * idx + 1) + (32 * ('cd', 36).length) + 160]
                if mem[(32 * idx) + (64 * ('cd', 36).length) + 300 len 20] == mem[(32 * idx) + (64 * ('cd', 36).length) + 300 len 20]:
                    if idx < mem[(64 * ('cd', 36).length) + 256] - 2:
                        _1716 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_1716 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_1716 + 36] = 0
                        mem[_1716 + 68] = _1704
                        mem[_1716 + 100] = address(ext_call.return_data[0])
                        mem[_1716 + 132] = 128
                        mem[_1716 + 164] = mem[_1716]
                        s = 0
                        while s < mem[_1716]:
                            mem[s + _1716 + 196] = mem[s + _1716 + 32]
                            s = s + 32
                            continue 
                        if not mem[_1716] % 32:
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _1704, address(ext_call.return_data[0]), 128, mem[_1716 + 164 len mem[_1716] + 32]
                        else:
                            mem[floor32(mem[_1716]) + _1716 + 196] = mem[floor32(mem[_1716]) + _1716 + -(mem[_1716] % 32) + 228 len mem[_1716] % 32]
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _1704, address(ext_call.return_data[0]), 128, mem[_1716], mem[_1716 + 196 len floor32(mem[_1716]) + 32]
                    else:
                        _1720 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_1720 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_1720 + 36] = 0
                        mem[_1720 + 68] = _1704
                        mem[_1720 + 100] = address(cd[68])
                        mem[_1720 + 132] = 128
                        mem[_1720 + 164] = mem[_1720]
                        s = 0
                        while s < mem[_1720]:
                            mem[s + _1720 + 196] = mem[s + _1720 + 32]
                            s = s + 32
                            continue 
                        if not mem[_1720] % 32:
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _1704, address(cd[68]), 128, mem[_1720 + 164 len mem[_1720] + 32]
                        else:
                            mem[floor32(mem[_1720]) + _1720 + 196] = mem[floor32(mem[_1720]) + _1720 + -(mem[_1720] % 32) + 228 len mem[_1720] % 32]
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _1704, address(cd[68]), 128, mem[_1720], mem[_1720 + 196 len floor32(mem[_1720]) + 32]
                else:
                    if idx < mem[(64 * ('cd', 36).length) + 256] - 2:
                        _1724 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_1724 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_1724 + 36] = _1704
                        mem[_1724 + 68] = 0
                        mem[_1724 + 100] = address(ext_call.return_data[0])
                        mem[_1724 + 132] = 128
                        mem[_1724 + 164] = mem[_1724]
                        s = 0
                        while s < mem[_1724]:
                            mem[s + _1724 + 196] = mem[s + _1724 + 32]
                            s = s + 32
                            continue 
                        if not mem[_1724] % 32:
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _1704, 0, address(ext_call.return_data[0]), 128, mem[_1724 + 164 len mem[_1724] + 32]
                        else:
                            mem[floor32(mem[_1724]) + _1724 + 196] = mem[floor32(mem[_1724]) + _1724 + -(mem[_1724] % 32) + 228 len mem[_1724] % 32]
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _1704, 0, address(ext_call.return_data[0]), 128, mem[_1724], mem[_1724 + 196 len floor32(mem[_1724]) + 32]
                    else:
                        _1728 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_1728 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_1728 + 36] = _1704
                        mem[_1728 + 68] = 0
                        mem[_1728 + 100] = address(cd[68])
                        mem[_1728 + 132] = 128
                        mem[_1728 + 164] = mem[_1728]
                        s = 0
                        while s < mem[_1728]:
                            mem[s + _1728 + 196] = mem[s + _1728 + 32]
                            s = s + 32
                            continue 
                        if not mem[_1728] % 32:
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _1704, 0, address(cd[68]), 128, mem[_1728 + 164 len mem[_1728] + 32]
                        else:
                            mem[floor32(mem[_1728]) + _1728 + 196] = mem[floor32(mem[_1728]) + _1728 + -(mem[_1728] % 32) + 228 len mem[_1728] % 32]
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _1704, 0, address(cd[68]), 128, mem[_1728], mem[_1728 + 196 len floor32(mem[_1728]) + 32]
            else:
                if not mem[(32 * idx + 1) + (64 * ('cd', 36).length) + 300 len 20]:
                    revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                require idx + 1 < mem[(32 * ('cd', 36).length) + 128]
                _1705 = mem[(32 * idx + 1) + (32 * ('cd', 36).length) + 160]
                if mem[(32 * idx) + (64 * ('cd', 36).length) + 300 len 20] == mem[(32 * idx + 1) + (64 * ('cd', 36).length) + 300 len 20]:
                    if idx < mem[(64 * ('cd', 36).length) + 256] - 2:
                        _1732 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_1732 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_1732 + 36] = 0
                        mem[_1732 + 68] = _1705
                        mem[_1732 + 100] = address(ext_call.return_data[0])
                        mem[_1732 + 132] = 128
                        mem[_1732 + 164] = mem[_1732]
                        s = 0
                        while s < mem[_1732]:
                            mem[s + _1732 + 196] = mem[s + _1732 + 32]
                            s = s + 32
                            continue 
                        if not mem[_1732] % 32:
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _1705, address(ext_call.return_data[0]), 128, mem[_1732 + 164 len mem[_1732] + 32]
                        else:
                            mem[floor32(mem[_1732]) + _1732 + 196] = mem[floor32(mem[_1732]) + _1732 + -(mem[_1732] % 32) + 228 len mem[_1732] % 32]
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _1705, address(ext_call.return_data[0]), 128, mem[_1732], mem[_1732 + 196 len floor32(mem[_1732]) + 32]
                    else:
                        _1736 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_1736 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_1736 + 36] = 0
                        mem[_1736 + 68] = _1705
                        mem[_1736 + 100] = address(cd[68])
                        mem[_1736 + 132] = 128
                        mem[_1736 + 164] = mem[_1736]
                        s = 0
                        while s < mem[_1736]:
                            mem[s + _1736 + 196] = mem[s + _1736 + 32]
                            s = s + 32
                            continue 
                        if not mem[_1736] % 32:
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _1705, address(cd[68]), 128, mem[_1736 + 164 len mem[_1736] + 32]
                        else:
                            mem[floor32(mem[_1736]) + _1736 + 196] = mem[floor32(mem[_1736]) + _1736 + -(mem[_1736] % 32) + 228 len mem[_1736] % 32]
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _1705, address(cd[68]), 128, mem[_1736], mem[_1736 + 196 len floor32(mem[_1736]) + 32]
                else:
                    if idx < mem[(64 * ('cd', 36).length) + 256] - 2:
                        _1740 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_1740 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_1740 + 36] = _1705
                        mem[_1740 + 68] = 0
                        mem[_1740 + 100] = address(ext_call.return_data[0])
                        mem[_1740 + 132] = 128
                        mem[_1740 + 164] = mem[_1740]
                        s = 0
                        while s < mem[_1740]:
                            mem[s + _1740 + 196] = mem[s + _1740 + 32]
                            s = s + 32
                            continue 
                        if not mem[_1740] % 32:
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _1705, 0, address(ext_call.return_data[0]), 128, mem[_1740 + 164 len mem[_1740] + 32]
                        else:
                            mem[floor32(mem[_1740]) + _1740 + 196] = mem[floor32(mem[_1740]) + _1740 + -(mem[_1740] % 32) + 228 len mem[_1740] % 32]
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _1705, 0, address(ext_call.return_data[0]), 128, mem[_1740], mem[_1740 + 196 len floor32(mem[_1740]) + 32]
                    else:
                        _1744 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_1744 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_1744 + 36] = _1705
                        mem[_1744 + 68] = 0
                        mem[_1744 + 100] = address(cd[68])
                        mem[_1744 + 132] = 128
                        mem[_1744 + 164] = mem[_1744]
                        s = 0
                        while s < mem[_1744]:
                            mem[s + _1744 + 196] = mem[s + _1744 + 32]
                            s = s + 32
                            continue 
                        if not mem[_1744] % 32:
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _1705, 0, address(cd[68]), 128, mem[_1744 + 164 len mem[_1744] + 32]
                        else:
                            mem[floor32(mem[_1744]) + _1744 + 196] = mem[floor32(mem[_1744]) + _1744 + -(mem[_1744] % 32) + 228 len mem[_1744] % 32]
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _1705, 0, address(cd[68]), 128, mem[_1744], mem[_1744 + 196 len floor32(mem[_1744]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            continue 
    else:
        mem[(32 * ('cd', 36).length) + 160 len 32 * ('cd', 36).length] = call.data[calldata.size len 32 * ('cd', 36).length]
        require 0 < ('cd', 36).length
        mem[(32 * ('cd', 36).length) + 160] = msg.value
        idx = 0
        while idx < ('cd', 36).length - 1:
            require idx < ('cd', 36).length
            _856 = mem[(32 * idx) + 128]
            require idx + 1 < ('cd', 36).length
            _861 = mem[(32 * idx + 1) + 128]
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
                require idx < mem[(32 * ('cd', 36).length) + 128]
                if mem[(32 * idx) + (32 * ('cd', 36).length) + 160] <= 0:
                    revert with 0, 
                                32,
                                41,
                                0xfe50616e63616b654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                mem[(64 * ('cd', 36).length) + 269 len 23]
                if address(_856) == address(_856):
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
                        require idx + 1 < mem[(32 * ('cd', 36).length) + 128]
                        require 0 < ('cd', 36).length
                        mem[128] = 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + (32 * ('cd', 36).length) + 160])
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
                        require idx + 1 < mem[(32 * ('cd', 36).length) + 128]
                        require 0 < ('cd', 36).length
                        mem[128] = 9975 * mem[(32 * idx) + (32 * ('cd', 36).length) + 160] * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + (32 * ('cd', 36).length) + 160])
                    require idx < ('cd', 36).length
                    if mem[(32 * idx) + 128] <= 0:
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
                    if 9975 * mem[(32 * idx) + 128] / 9975 != mem[(32 * idx) + 128]:
                        revert with 0, 'ds-math-mul-overflow'
                    if not Mask(112, 0, ext_call.return_data[0]):
                        if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + 128]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-add-overflow'
                        require (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + 128])
                        require idx + 1 < ('cd', 36).length
                        mem[(32 * idx + 1) + 128] = 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + 128])
                    else:
                        require Mask(112, 0, ext_call.return_data[0])
                        if 9975 * mem[(32 * idx) + 128] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 9975 * mem[(32 * idx) + 128]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + 128]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-add-overflow'
                        require (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + 128])
                        require idx + 1 < ('cd', 36).length
                        mem[(32 * idx + 1) + 128] = 9975 * mem[(32 * idx) + 128] * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + 128])
                else:
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
                        require idx + 1 < mem[(32 * ('cd', 36).length) + 128]
                        require 0 < ('cd', 36).length
                        mem[128] = 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + (32 * ('cd', 36).length) + 160])
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
                        require idx + 1 < mem[(32 * ('cd', 36).length) + 128]
                        require 0 < ('cd', 36).length
                        mem[128] = 9975 * mem[(32 * idx) + (32 * ('cd', 36).length) + 160] * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + (32 * ('cd', 36).length) + 160])
                    require idx < ('cd', 36).length
                    if mem[(32 * idx) + 128] <= 0:
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
                    if 9975 * mem[(32 * idx) + 128] / 9975 != mem[(32 * idx) + 128]:
                        revert with 0, 'ds-math-mul-overflow'
                    if not Mask(112, 0, ext_call.return_data[32]):
                        if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + 128]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-add-overflow'
                        require (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + 128])
                        require idx + 1 < ('cd', 36).length
                        mem[(32 * idx + 1) + 128] = 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + 128])
                    else:
                        require Mask(112, 0, ext_call.return_data[32])
                        if 9975 * mem[(32 * idx) + 128] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 9975 * mem[(32 * idx) + 128]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + 128]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-add-overflow'
                        require (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + 128])
                        require idx + 1 < ('cd', 36).length
                        mem[(32 * idx + 1) + 128] = 9975 * mem[(32 * idx) + 128] * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + 128])
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
                require idx < mem[(32 * ('cd', 36).length) + 128]
                if mem[(32 * idx) + (32 * ('cd', 36).length) + 160] <= 0:
                    revert with 0, 
                                32,
                                41,
                                0xfe50616e63616b654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                mem[(64 * ('cd', 36).length) + 269 len 23]
                if address(_861) == address(_856):
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
                        require idx + 1 < mem[(32 * ('cd', 36).length) + 128]
                        require 0 < ('cd', 36).length
                        mem[128] = 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + (32 * ('cd', 36).length) + 160])
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
                        require idx + 1 < mem[(32 * ('cd', 36).length) + 128]
                        require 0 < ('cd', 36).length
                        mem[128] = 9975 * mem[(32 * idx) + (32 * ('cd', 36).length) + 160] * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + (32 * ('cd', 36).length) + 160])
                    require idx < ('cd', 36).length
                    if mem[(32 * idx) + 128] <= 0:
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
                    if 9975 * mem[(32 * idx) + 128] / 9975 != mem[(32 * idx) + 128]:
                        revert with 0, 'ds-math-mul-overflow'
                    if not Mask(112, 0, ext_call.return_data[0]):
                        if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + 128]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-add-overflow'
                        require (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + 128])
                        require idx + 1 < ('cd', 36).length
                        mem[(32 * idx + 1) + 128] = 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + 128])
                    else:
                        require Mask(112, 0, ext_call.return_data[0])
                        if 9975 * mem[(32 * idx) + 128] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 9975 * mem[(32 * idx) + 128]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + 128]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-add-overflow'
                        require (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + 128])
                        require idx + 1 < ('cd', 36).length
                        mem[(32 * idx + 1) + 128] = 9975 * mem[(32 * idx) + 128] * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + 128])
                else:
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
                        require idx + 1 < mem[(32 * ('cd', 36).length) + 128]
                        require 0 < ('cd', 36).length
                        mem[128] = 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + (32 * ('cd', 36).length) + 160])
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
                        require idx + 1 < mem[(32 * ('cd', 36).length) + 128]
                        require 0 < ('cd', 36).length
                        mem[128] = 9975 * mem[(32 * idx) + (32 * ('cd', 36).length) + 160] * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + (32 * ('cd', 36).length) + 160])
                    require idx < ('cd', 36).length
                    if mem[(32 * idx) + 128] <= 0:
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
                    if 9975 * mem[(32 * idx) + 128] / 9975 != mem[(32 * idx) + 128]:
                        revert with 0, 'ds-math-mul-overflow'
                    if not Mask(112, 0, ext_call.return_data[32]):
                        if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + 128]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-add-overflow'
                        require (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + 128])
                        require idx + 1 < ('cd', 36).length
                        mem[(32 * idx + 1) + 128] = 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + 128])
                    else:
                        require Mask(112, 0, ext_call.return_data[32])
                        if 9975 * mem[(32 * idx) + 128] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 9975 * mem[(32 * idx) + 128]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + 128]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-add-overflow'
                        require (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + 128])
                        require idx + 1 < ('cd', 36).length
                        mem[(32 * idx + 1) + 128] = 9975 * mem[(32 * idx) + 128] * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + 128])
            idx = idx + 1
            continue 
        mem[(64 * ('cd', 36).length) + 160] = 2
        mem[64] = (64 * ('cd', 36).length) + 256
        require 1 < ('cd', 36).length
        mem[(64 * ('cd', 36).length) + 192] = address(('cd', 36)[1])
        require 0 < ('cd', 36).length
        mem[(64 * ('cd', 36).length) + 224] = address(('cd', 36)[0])
        require mem[(32 * ('cd', 36).length) + 128] - 1 < mem[(32 * ('cd', 36).length) + 128]
        if mem[(32 * mem[(32 * ('cd', 36).length) + 128] - 1) + (32 * ('cd', 36).length) + 160] < cd[4]:
            revert with 0, '-,'
        require 1 < ('cd', 36).length
        if mem[160] < msg.value * cd[100] / 100:
            revert with 0, '-,'
        require mem[(32 * ('cd', 36).length) + 128]
        mem[(64 * ('cd', 36).length) + 256] = 0xd0e30db000000000000000000000000000000000000000000000000000000000
        require ext_code.size(WETHAddress)
        call WETHAddress.deposit() with:
           value mem[(32 * ('cd', 36).length) + 160] wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require mem[(32 * ('cd', 36).length) + 128]
        mem[(64 * ('cd', 36).length) + 260] = address(ext_call.return_data[0])
        mem[(64 * ('cd', 36).length) + 292] = mem[(32 * ('cd', 36).length) + 160]
        require ext_code.size(WETHAddress)
        call WETHAddress.0xa9059cbb with:
             gas gas_remaining wei
            args address(ext_call.return_data[0]), mem[(32 * ('cd', 36).length) + 160]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        mem[64] = (98 * ('cd', 36).length) + 288
        mem[(64 * ('cd', 36).length) + 256] = ('cd', 36).length
        mem[(64 * ('cd', 36).length) + 288 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
        mem[(98 * ('cd', 36).length) + 288] = 0
        idx = 0
        while idx < ('cd', 36).length - 1:
            require idx < mem[(64 * ('cd', 36).length) + 256]
            require idx + 1 < mem[(64 * ('cd', 36).length) + 256]
            if mem[(32 * idx) + (64 * ('cd', 36).length) + 300 len 20] == mem[(32 * idx + 1) + (64 * ('cd', 36).length) + 300 len 20]:
                revert with 0, 32, 35, 0x2150616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 103 len 29]
            if mem[(32 * idx) + (64 * ('cd', 36).length) + 300 len 20] < mem[(32 * idx + 1) + (64 * ('cd', 36).length) + 300 len 20]:
                if not mem[(32 * idx) + (64 * ('cd', 36).length) + 300 len 20]:
                    revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                require idx + 1 < mem[(32 * ('cd', 36).length) + 128]
                _1706 = mem[(32 * idx + 1) + (32 * ('cd', 36).length) + 160]
                if mem[(32 * idx) + (64 * ('cd', 36).length) + 300 len 20] == mem[(32 * idx) + (64 * ('cd', 36).length) + 300 len 20]:
                    if idx < mem[(64 * ('cd', 36).length) + 256] - 2:
                        _1748 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_1748 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_1748 + 36] = 0
                        mem[_1748 + 68] = _1706
                        mem[_1748 + 100] = address(ext_call.return_data[0])
                        mem[_1748 + 132] = 128
                        mem[_1748 + 164] = mem[_1748]
                        s = 0
                        while s < mem[_1748]:
                            mem[s + _1748 + 196] = mem[s + _1748 + 32]
                            s = s + 32
                            continue 
                        if not mem[_1748] % 32:
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _1706, address(ext_call.return_data[0]), 128, mem[_1748 + 164 len mem[_1748] + 32]
                        else:
                            mem[floor32(mem[_1748]) + _1748 + 196] = mem[floor32(mem[_1748]) + _1748 + -(mem[_1748] % 32) + 228 len mem[_1748] % 32]
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _1706, address(ext_call.return_data[0]), 128, mem[_1748], mem[_1748 + 196 len floor32(mem[_1748]) + 32]
                    else:
                        _1752 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_1752 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_1752 + 36] = 0
                        mem[_1752 + 68] = _1706
                        mem[_1752 + 100] = address(cd[68])
                        mem[_1752 + 132] = 128
                        mem[_1752 + 164] = mem[_1752]
                        s = 0
                        while s < mem[_1752]:
                            mem[s + _1752 + 196] = mem[s + _1752 + 32]
                            s = s + 32
                            continue 
                        if not mem[_1752] % 32:
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _1706, address(cd[68]), 128, mem[_1752 + 164 len mem[_1752] + 32]
                        else:
                            mem[floor32(mem[_1752]) + _1752 + 196] = mem[floor32(mem[_1752]) + _1752 + -(mem[_1752] % 32) + 228 len mem[_1752] % 32]
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _1706, address(cd[68]), 128, mem[_1752], mem[_1752 + 196 len floor32(mem[_1752]) + 32]
                else:
                    if idx < mem[(64 * ('cd', 36).length) + 256] - 2:
                        _1756 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_1756 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_1756 + 36] = _1706
                        mem[_1756 + 68] = 0
                        mem[_1756 + 100] = address(ext_call.return_data[0])
                        mem[_1756 + 132] = 128
                        mem[_1756 + 164] = mem[_1756]
                        s = 0
                        while s < mem[_1756]:
                            mem[s + _1756 + 196] = mem[s + _1756 + 32]
                            s = s + 32
                            continue 
                        if not mem[_1756] % 32:
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _1706, 0, address(ext_call.return_data[0]), 128, mem[_1756 + 164 len mem[_1756] + 32]
                        else:
                            mem[floor32(mem[_1756]) + _1756 + 196] = mem[floor32(mem[_1756]) + _1756 + -(mem[_1756] % 32) + 228 len mem[_1756] % 32]
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _1706, 0, address(ext_call.return_data[0]), 128, mem[_1756], mem[_1756 + 196 len floor32(mem[_1756]) + 32]
                    else:
                        _1760 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_1760 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_1760 + 36] = _1706
                        mem[_1760 + 68] = 0
                        mem[_1760 + 100] = address(cd[68])
                        mem[_1760 + 132] = 128
                        mem[_1760 + 164] = mem[_1760]
                        s = 0
                        while s < mem[_1760]:
                            mem[s + _1760 + 196] = mem[s + _1760 + 32]
                            s = s + 32
                            continue 
                        if not mem[_1760] % 32:
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _1706, 0, address(cd[68]), 128, mem[_1760 + 164 len mem[_1760] + 32]
                        else:
                            mem[floor32(mem[_1760]) + _1760 + 196] = mem[floor32(mem[_1760]) + _1760 + -(mem[_1760] % 32) + 228 len mem[_1760] % 32]
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _1706, 0, address(cd[68]), 128, mem[_1760], mem[_1760 + 196 len floor32(mem[_1760]) + 32]
            else:
                if not mem[(32 * idx + 1) + (64 * ('cd', 36).length) + 300 len 20]:
                    revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                require idx + 1 < mem[(32 * ('cd', 36).length) + 128]
                _1707 = mem[(32 * idx + 1) + (32 * ('cd', 36).length) + 160]
                if mem[(32 * idx) + (64 * ('cd', 36).length) + 300 len 20] == mem[(32 * idx + 1) + (64 * ('cd', 36).length) + 300 len 20]:
                    if idx < mem[(64 * ('cd', 36).length) + 256] - 2:
                        _1764 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_1764 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_1764 + 36] = 0
                        mem[_1764 + 68] = _1707
                        mem[_1764 + 100] = address(ext_call.return_data[0])
                        mem[_1764 + 132] = 128
                        mem[_1764 + 164] = mem[_1764]
                        s = 0
                        while s < mem[_1764]:
                            mem[s + _1764 + 196] = mem[s + _1764 + 32]
                            s = s + 32
                            continue 
                        if not mem[_1764] % 32:
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _1707, address(ext_call.return_data[0]), 128, mem[_1764 + 164 len mem[_1764] + 32]
                        else:
                            mem[floor32(mem[_1764]) + _1764 + 196] = mem[floor32(mem[_1764]) + _1764 + -(mem[_1764] % 32) + 228 len mem[_1764] % 32]
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _1707, address(ext_call.return_data[0]), 128, mem[_1764], mem[_1764 + 196 len floor32(mem[_1764]) + 32]
                    else:
                        _1768 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_1768 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_1768 + 36] = 0
                        mem[_1768 + 68] = _1707
                        mem[_1768 + 100] = address(cd[68])
                        mem[_1768 + 132] = 128
                        mem[_1768 + 164] = mem[_1768]
                        s = 0
                        while s < mem[_1768]:
                            mem[s + _1768 + 196] = mem[s + _1768 + 32]
                            s = s + 32
                            continue 
                        if not mem[_1768] % 32:
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _1707, address(cd[68]), 128, mem[_1768 + 164 len mem[_1768] + 32]
                        else:
                            mem[floor32(mem[_1768]) + _1768 + 196] = mem[floor32(mem[_1768]) + _1768 + -(mem[_1768] % 32) + 228 len mem[_1768] % 32]
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _1707, address(cd[68]), 128, mem[_1768], mem[_1768 + 196 len floor32(mem[_1768]) + 32]
                else:
                    if idx < mem[(64 * ('cd', 36).length) + 256] - 2:
                        _1772 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_1772 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_1772 + 36] = _1707
                        mem[_1772 + 68] = 0
                        mem[_1772 + 100] = address(ext_call.return_data[0])
                        mem[_1772 + 132] = 128
                        mem[_1772 + 164] = mem[_1772]
                        s = 0
                        while s < mem[_1772]:
                            mem[s + _1772 + 196] = mem[s + _1772 + 32]
                            s = s + 32
                            continue 
                        if not mem[_1772] % 32:
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _1707, 0, address(ext_call.return_data[0]), 128, mem[_1772 + 164 len mem[_1772] + 32]
                        else:
                            mem[floor32(mem[_1772]) + _1772 + 196] = mem[floor32(mem[_1772]) + _1772 + -(mem[_1772] % 32) + 228 len mem[_1772] % 32]
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _1707, 0, address(ext_call.return_data[0]), 128, mem[_1772], mem[_1772 + 196 len floor32(mem[_1772]) + 32]
                    else:
                        _1776 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_1776 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_1776 + 36] = _1707
                        mem[_1776 + 68] = 0
                        mem[_1776 + 100] = address(cd[68])
                        mem[_1776 + 132] = 128
                        mem[_1776 + 164] = mem[_1776]
                        s = 0
                        while s < mem[_1776]:
                            mem[s + _1776 + 196] = mem[s + _1776 + 32]
                            s = s + 32
                            continue 
                        if not mem[_1776] % 32:
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _1707, 0, address(cd[68]), 128, mem[_1776 + 164 len mem[_1776] + 32]
                        else:
                            mem[floor32(mem[_1776]) + _1776 + 196] = mem[floor32(mem[_1776]) + _1776 + -(mem[_1776] % 32) + 228 len mem[_1776] % 32]
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _1707, 0, address(cd[68]), 128, mem[_1776], mem[_1776 + 196 len floor32(mem[_1776]) + 32]
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
        while idx < ('cd', 36).length - 1:
            require idx < ('cd', 36).length
            _1285 = mem[(32 * idx) + 128]
            require idx + 1 < ('cd', 36).length
            _1291 = mem[(32 * idx + 1) + 128]
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
                require idx < mem[(32 * ('cd', 36).length) + 128]
                if mem[(32 * idx) + (32 * ('cd', 36).length) + 160] <= 0:
                    revert with 0, 
                                32,
                                41,
                                0xfe50616e63616b654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                mem[(64 * ('cd', 36).length) + 269 len 23]
                if address(_1285) == address(_1285):
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
                        require idx + 1 < mem[(32 * ('cd', 36).length) + 128]
                        require 0 < ('cd', 36).length
                        mem[128] = 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + (32 * ('cd', 36).length) + 160])
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
                        require idx + 1 < mem[(32 * ('cd', 36).length) + 128]
                        require 0 < ('cd', 36).length
                        mem[128] = 9975 * mem[(32 * idx) + (32 * ('cd', 36).length) + 160] * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + (32 * ('cd', 36).length) + 160])
                    require idx < ('cd', 36).length
                    if mem[(32 * idx) + 128] <= 0:
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
                    if 9975 * mem[(32 * idx) + 128] / 9975 != mem[(32 * idx) + 128]:
                        revert with 0, 'ds-math-mul-overflow'
                    if not Mask(112, 0, ext_call.return_data[0]):
                        if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + 128]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-add-overflow'
                        require (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + 128])
                        require idx + 1 < ('cd', 36).length
                        mem[(32 * idx + 1) + 128] = 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + 128])
                    else:
                        require Mask(112, 0, ext_call.return_data[0])
                        if 9975 * mem[(32 * idx) + 128] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 9975 * mem[(32 * idx) + 128]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + 128]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-add-overflow'
                        require (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + 128])
                        require idx + 1 < ('cd', 36).length
                        mem[(32 * idx + 1) + 128] = 9975 * mem[(32 * idx) + 128] * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + 128])
                else:
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
                        require idx + 1 < mem[(32 * ('cd', 36).length) + 128]
                        require 0 < ('cd', 36).length
                        mem[128] = 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + (32 * ('cd', 36).length) + 160])
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
                        require idx + 1 < mem[(32 * ('cd', 36).length) + 128]
                        require 0 < ('cd', 36).length
                        mem[128] = 9975 * mem[(32 * idx) + (32 * ('cd', 36).length) + 160] * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + (32 * ('cd', 36).length) + 160])
                    require idx < ('cd', 36).length
                    if mem[(32 * idx) + 128] <= 0:
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
                    if 9975 * mem[(32 * idx) + 128] / 9975 != mem[(32 * idx) + 128]:
                        revert with 0, 'ds-math-mul-overflow'
                    if not Mask(112, 0, ext_call.return_data[32]):
                        if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + 128]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-add-overflow'
                        require (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + 128])
                        require idx + 1 < ('cd', 36).length
                        mem[(32 * idx + 1) + 128] = 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + 128])
                    else:
                        require Mask(112, 0, ext_call.return_data[32])
                        if 9975 * mem[(32 * idx) + 128] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 9975 * mem[(32 * idx) + 128]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + 128]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-add-overflow'
                        require (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + 128])
                        require idx + 1 < ('cd', 36).length
                        mem[(32 * idx + 1) + 128] = 9975 * mem[(32 * idx) + 128] * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + 128])
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
                require idx < mem[(32 * ('cd', 36).length) + 128]
                if mem[(32 * idx) + (32 * ('cd', 36).length) + 160] <= 0:
                    revert with 0, 
                                32,
                                41,
                                0xfe50616e63616b654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                mem[(64 * ('cd', 36).length) + 269 len 23]
                if address(_1291) == address(_1285):
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
                        require idx + 1 < mem[(32 * ('cd', 36).length) + 128]
                        require 0 < ('cd', 36).length
                        mem[128] = 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + (32 * ('cd', 36).length) + 160])
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
                        require idx + 1 < mem[(32 * ('cd', 36).length) + 128]
                        require 0 < ('cd', 36).length
                        mem[128] = 9975 * mem[(32 * idx) + (32 * ('cd', 36).length) + 160] * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + (32 * ('cd', 36).length) + 160])
                    require idx < ('cd', 36).length
                    if mem[(32 * idx) + 128] <= 0:
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
                    if 9975 * mem[(32 * idx) + 128] / 9975 != mem[(32 * idx) + 128]:
                        revert with 0, 'ds-math-mul-overflow'
                    if not Mask(112, 0, ext_call.return_data[0]):
                        if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + 128]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-add-overflow'
                        require (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + 128])
                        require idx + 1 < ('cd', 36).length
                        mem[(32 * idx + 1) + 128] = 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + 128])
                    else:
                        require Mask(112, 0, ext_call.return_data[0])
                        if 9975 * mem[(32 * idx) + 128] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 9975 * mem[(32 * idx) + 128]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + 128]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-add-overflow'
                        require (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + 128])
                        require idx + 1 < ('cd', 36).length
                        mem[(32 * idx + 1) + 128] = 9975 * mem[(32 * idx) + 128] * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + 128])
                else:
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
                        require idx + 1 < mem[(32 * ('cd', 36).length) + 128]
                        require 0 < ('cd', 36).length
                        mem[128] = 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + (32 * ('cd', 36).length) + 160])
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
                        require idx + 1 < mem[(32 * ('cd', 36).length) + 128]
                        require 0 < ('cd', 36).length
                        mem[128] = 9975 * mem[(32 * idx) + (32 * ('cd', 36).length) + 160] * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + (32 * ('cd', 36).length) + 160])
                    require idx < ('cd', 36).length
                    if mem[(32 * idx) + 128] <= 0:
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
                    if 9975 * mem[(32 * idx) + 128] / 9975 != mem[(32 * idx) + 128]:
                        revert with 0, 'ds-math-mul-overflow'
                    if not Mask(112, 0, ext_call.return_data[32]):
                        if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + 128]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-add-overflow'
                        require (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + 128])
                        require idx + 1 < ('cd', 36).length
                        mem[(32 * idx + 1) + 128] = 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + 128])
                    else:
                        require Mask(112, 0, ext_call.return_data[32])
                        if 9975 * mem[(32 * idx) + 128] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 9975 * mem[(32 * idx) + 128]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + 128]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-add-overflow'
                        require (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + 128])
                        require idx + 1 < ('cd', 36).length
                        mem[(32 * idx + 1) + 128] = 9975 * mem[(32 * idx) + 128] * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + 128])
            idx = idx + 1
            continue 
        mem[(64 * ('cd', 36).length) + 160] = 2
        mem[64] = (64 * ('cd', 36).length) + 256
        require 1 < ('cd', 36).length
        mem[(64 * ('cd', 36).length) + 192] = address(('cd', 36)[1])
        require 0 < ('cd', 36).length
        mem[(64 * ('cd', 36).length) + 224] = address(('cd', 36)[0])
        require mem[(32 * ('cd', 36).length) + 128] - 1 < mem[(32 * ('cd', 36).length) + 128]
        if mem[(32 * mem[(32 * ('cd', 36).length) + 128] - 1) + (32 * ('cd', 36).length) + 160] < cd[4]:
            revert with 0, '-,'
        require 1 < ('cd', 36).length
        if mem[160] < msg.value * cd[100] / 100:
            revert with 0, '-,'
        require mem[(32 * ('cd', 36).length) + 128]
        mem[(64 * ('cd', 36).length) + 256] = 0xd0e30db000000000000000000000000000000000000000000000000000000000
        require ext_code.size(WETHAddress)
        call WETHAddress.deposit() with:
           value mem[(32 * ('cd', 36).length) + 160] wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require mem[(32 * ('cd', 36).length) + 128]
        mem[(64 * ('cd', 36).length) + 260] = address(ext_call.return_data[0])
        mem[(64 * ('cd', 36).length) + 292] = mem[(32 * ('cd', 36).length) + 160]
        require ext_code.size(WETHAddress)
        call WETHAddress.0xa9059cbb with:
             gas gas_remaining wei
            args address(ext_call.return_data[0]), mem[(32 * ('cd', 36).length) + 160]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        mem[64] = (98 * ('cd', 36).length) + 288
        mem[(64 * ('cd', 36).length) + 256] = ('cd', 36).length
        mem[(64 * ('cd', 36).length) + 288 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
        mem[(98 * ('cd', 36).length) + 288] = 0
        idx = 0
        while idx < ('cd', 36).length - 1:
            require idx < mem[(64 * ('cd', 36).length) + 256]
            require idx + 1 < mem[(64 * ('cd', 36).length) + 256]
            if mem[(32 * idx) + (64 * ('cd', 36).length) + 300 len 20] == mem[(32 * idx + 1) + (64 * ('cd', 36).length) + 300 len 20]:
                revert with 0, 32, 35, 0x2150616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 103 len 29]
            if mem[(32 * idx) + (64 * ('cd', 36).length) + 300 len 20] < mem[(32 * idx + 1) + (64 * ('cd', 36).length) + 300 len 20]:
                if not mem[(32 * idx) + (64 * ('cd', 36).length) + 300 len 20]:
                    revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                require idx + 1 < mem[(32 * ('cd', 36).length) + 128]
                _2594 = mem[(32 * idx + 1) + (32 * ('cd', 36).length) + 160]
                if mem[(32 * idx) + (64 * ('cd', 36).length) + 300 len 20] == mem[(32 * idx) + (64 * ('cd', 36).length) + 300 len 20]:
                    if idx < mem[(64 * ('cd', 36).length) + 256] - 2:
                        _2612 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_2612 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_2612 + 36] = 0
                        mem[_2612 + 68] = _2594
                        mem[_2612 + 100] = address(ext_call.return_data[0])
                        mem[_2612 + 132] = 128
                        mem[_2612 + 164] = mem[_2612]
                        s = 0
                        while s < mem[_2612]:
                            mem[s + _2612 + 196] = mem[s + _2612 + 32]
                            s = s + 32
                            continue 
                        if not mem[_2612] % 32:
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _2594, address(ext_call.return_data[0]), 128, mem[_2612 + 164 len mem[_2612] + 32]
                        else:
                            mem[floor32(mem[_2612]) + _2612 + 196] = mem[floor32(mem[_2612]) + _2612 + -(mem[_2612] % 32) + 228 len mem[_2612] % 32]
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _2594, address(ext_call.return_data[0]), 128, mem[_2612], mem[_2612 + 196 len floor32(mem[_2612]) + 32]
                    else:
                        _2616 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_2616 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_2616 + 36] = 0
                        mem[_2616 + 68] = _2594
                        mem[_2616 + 100] = address(cd[68])
                        mem[_2616 + 132] = 128
                        mem[_2616 + 164] = mem[_2616]
                        s = 0
                        while s < mem[_2616]:
                            mem[s + _2616 + 196] = mem[s + _2616 + 32]
                            s = s + 32
                            continue 
                        if not mem[_2616] % 32:
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _2594, address(cd[68]), 128, mem[_2616 + 164 len mem[_2616] + 32]
                        else:
                            mem[floor32(mem[_2616]) + _2616 + 196] = mem[floor32(mem[_2616]) + _2616 + -(mem[_2616] % 32) + 228 len mem[_2616] % 32]
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _2594, address(cd[68]), 128, mem[_2616], mem[_2616 + 196 len floor32(mem[_2616]) + 32]
                else:
                    if idx < mem[(64 * ('cd', 36).length) + 256] - 2:
                        _2620 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_2620 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_2620 + 36] = _2594
                        mem[_2620 + 68] = 0
                        mem[_2620 + 100] = address(ext_call.return_data[0])
                        mem[_2620 + 132] = 128
                        mem[_2620 + 164] = mem[_2620]
                        s = 0
                        while s < mem[_2620]:
                            mem[s + _2620 + 196] = mem[s + _2620 + 32]
                            s = s + 32
                            continue 
                        if not mem[_2620] % 32:
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _2594, 0, address(ext_call.return_data[0]), 128, mem[_2620 + 164 len mem[_2620] + 32]
                        else:
                            mem[floor32(mem[_2620]) + _2620 + 196] = mem[floor32(mem[_2620]) + _2620 + -(mem[_2620] % 32) + 228 len mem[_2620] % 32]
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _2594, 0, address(ext_call.return_data[0]), 128, mem[_2620], mem[_2620 + 196 len floor32(mem[_2620]) + 32]
                    else:
                        _2624 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_2624 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_2624 + 36] = _2594
                        mem[_2624 + 68] = 0
                        mem[_2624 + 100] = address(cd[68])
                        mem[_2624 + 132] = 128
                        mem[_2624 + 164] = mem[_2624]
                        s = 0
                        while s < mem[_2624]:
                            mem[s + _2624 + 196] = mem[s + _2624 + 32]
                            s = s + 32
                            continue 
                        if not mem[_2624] % 32:
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _2594, 0, address(cd[68]), 128, mem[_2624 + 164 len mem[_2624] + 32]
                        else:
                            mem[floor32(mem[_2624]) + _2624 + 196] = mem[floor32(mem[_2624]) + _2624 + -(mem[_2624] % 32) + 228 len mem[_2624] % 32]
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _2594, 0, address(cd[68]), 128, mem[_2624], mem[_2624 + 196 len floor32(mem[_2624]) + 32]
            else:
                if not mem[(32 * idx + 1) + (64 * ('cd', 36).length) + 300 len 20]:
                    revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                require idx + 1 < mem[(32 * ('cd', 36).length) + 128]
                _2595 = mem[(32 * idx + 1) + (32 * ('cd', 36).length) + 160]
                if mem[(32 * idx) + (64 * ('cd', 36).length) + 300 len 20] == mem[(32 * idx + 1) + (64 * ('cd', 36).length) + 300 len 20]:
                    if idx < mem[(64 * ('cd', 36).length) + 256] - 2:
                        _2628 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_2628 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_2628 + 36] = 0
                        mem[_2628 + 68] = _2595
                        mem[_2628 + 100] = address(ext_call.return_data[0])
                        mem[_2628 + 132] = 128
                        mem[_2628 + 164] = mem[_2628]
                        s = 0
                        while s < mem[_2628]:
                            mem[s + _2628 + 196] = mem[s + _2628 + 32]
                            s = s + 32
                            continue 
                        if not mem[_2628] % 32:
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _2595, address(ext_call.return_data[0]), 128, mem[_2628 + 164 len mem[_2628] + 32]
                        else:
                            mem[floor32(mem[_2628]) + _2628 + 196] = mem[floor32(mem[_2628]) + _2628 + -(mem[_2628] % 32) + 228 len mem[_2628] % 32]
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _2595, address(ext_call.return_data[0]), 128, mem[_2628], mem[_2628 + 196 len floor32(mem[_2628]) + 32]
                    else:
                        _2632 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_2632 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_2632 + 36] = 0
                        mem[_2632 + 68] = _2595
                        mem[_2632 + 100] = address(cd[68])
                        mem[_2632 + 132] = 128
                        mem[_2632 + 164] = mem[_2632]
                        s = 0
                        while s < mem[_2632]:
                            mem[s + _2632 + 196] = mem[s + _2632 + 32]
                            s = s + 32
                            continue 
                        if not mem[_2632] % 32:
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _2595, address(cd[68]), 128, mem[_2632 + 164 len mem[_2632] + 32]
                        else:
                            mem[floor32(mem[_2632]) + _2632 + 196] = mem[floor32(mem[_2632]) + _2632 + -(mem[_2632] % 32) + 228 len mem[_2632] % 32]
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _2595, address(cd[68]), 128, mem[_2632], mem[_2632 + 196 len floor32(mem[_2632]) + 32]
                else:
                    if idx < mem[(64 * ('cd', 36).length) + 256] - 2:
                        _2636 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_2636 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_2636 + 36] = _2595
                        mem[_2636 + 68] = 0
                        mem[_2636 + 100] = address(ext_call.return_data[0])
                        mem[_2636 + 132] = 128
                        mem[_2636 + 164] = mem[_2636]
                        s = 0
                        while s < mem[_2636]:
                            mem[s + _2636 + 196] = mem[s + _2636 + 32]
                            s = s + 32
                            continue 
                        if not mem[_2636] % 32:
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _2595, 0, address(ext_call.return_data[0]), 128, mem[_2636 + 164 len mem[_2636] + 32]
                        else:
                            mem[floor32(mem[_2636]) + _2636 + 196] = mem[floor32(mem[_2636]) + _2636 + -(mem[_2636] % 32) + 228 len mem[_2636] % 32]
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _2595, 0, address(ext_call.return_data[0]), 128, mem[_2636], mem[_2636 + 196 len floor32(mem[_2636]) + 32]
                    else:
                        _2640 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_2640 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_2640 + 36] = _2595
                        mem[_2640 + 68] = 0
                        mem[_2640 + 100] = address(cd[68])
                        mem[_2640 + 132] = 128
                        mem[_2640 + 164] = mem[_2640]
                        s = 0
                        while s < mem[_2640]:
                            mem[s + _2640 + 196] = mem[s + _2640 + 32]
                            s = s + 32
                            continue 
                        if not mem[_2640] % 32:
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _2595, 0, address(cd[68]), 128, mem[_2640 + 164 len mem[_2640] + 32]
                        else:
                            mem[floor32(mem[_2640]) + _2640 + 196] = mem[floor32(mem[_2640]) + _2640 + -(mem[_2640] % 32) + 228 len mem[_2640] % 32]
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _2595, 0, address(cd[68]), 128, mem[_2640], mem[_2640 + 196 len floor32(mem[_2640]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            continue 
        require 1 < mem[96]
        if mem[160] < msg.value * cd[132] / 100:
            revert with 0, '-,'
        require 1 < mem[96]
        _2562 = mem[160]
        mem[mem[64]] = 0x3f4e48bb00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = address(ext_call.return_data[0])
        mem[mem[64] + 36] = _2562
        mem[mem[64] + 68] = msg.value * cd[132] / 100
        mem[mem[64] + 132] = this.address
        mem[mem[64] + 100] = 160
        mem[mem[64] + 164] = mem[(64 * ('cd', 36).length) + 160]
        _2565 = mem[(64 * ('cd', 36).length) + 160]
        mem[mem[64] + 196 len floor32(mem[(64 * ('cd', 36).length) + 160])] = mem[(64 * ('cd', 36).length) + 192 len floor32(mem[(64 * ('cd', 36).length) + 160])]
        require ext_code.size(this.address)
        call this.address.0x3f4e48bb with:
             gas gas_remaining wei
            args address(ext_call.return_data[0]), _2562, msg.value * cd[132] / 100, 160, address(this.address), mem[mem[64] + 164 len (32 * _2565) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _3192 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _3210 = mem[_3192]
        require mem[_3192] <= 4294967296
        require mem[_3192] + 32 <= return_data.size
        require mem[_3192 + mem[_3192]] <= 4294967296 and mem[_3192] + (32 * mem[_3192 + mem[_3192]]) + 32 <= return_data.size
        mem[_3192 + ceil32(return_data.size)] = mem[_3192 + mem[_3192]]
        _3216 = mem[_3192 + _3210]
        mem[_3192 + ceil32(return_data.size) + 32 len floor32(mem[_3192 + _3210])] = mem[_3192 + _3210 + 32 len floor32(mem[_3192 + _3210])]
        require mem[96] - 1 < mem[96]
        _3622 = mem[(32 * mem[96] - 1) + 128]
        mem[(32 * _3216) + _3192 + ceil32(return_data.size) + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
        mem[(32 * _3216) + _3192 + ceil32(return_data.size) + 36] = _3622
        require ext_code.size(WETHAddress)
        call WETHAddress.withdraw(uint256 arg1) with:
             gas gas_remaining wei
            args _3622
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require mem[96] - 1 < mem[96]
        _3632 = mem[(32 * mem[96] - 1) + 128]
        mem[(32 * _3216) + _3192 + ceil32(return_data.size) + 32] = 0
        mem[64] = (32 * _3216) + _3192 + ceil32(return_data.size) + 64
        mem[(32 * _3216) + _3192 + ceil32(return_data.size) + 64 len 0] = None
        mem[(32 * _3216) + _3192 + ceil32(return_data.size) + 64] = None or uint32(_3622), mem[(32 * _3216) + _3192 + ceil32(return_data.size) + 68 len 28]
        call this.address with:
           value _3632 wei
             gas gas_remaining wei
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 
                            32,
                            35,
                            0x535472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                            mem[(32 * _3216) + _3192 + ceil32(return_data.size) + 167 len 29]
            require mem[96] - 1 < mem[96]
            _4040 = mem[(32 * mem[96] - 1) + 128]
            mem[(32 * _3216) + _3192 + ceil32(return_data.size) + 68] = address(ext_call.return_data[0])
            mem[(32 * _3216) + _3192 + ceil32(return_data.size) + 100] = _4040
            require ext_code.size(WETHAddress)
            call WETHAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args address(ext_call.return_data[0]), _4040
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            mem[64] = (32 * _3216) + _3192 + ceil32(return_data.size) + (32 * ('cd', 36).length) + 96
            mem[(32 * _3216) + _3192 + ceil32(return_data.size) + 64] = ('cd', 36).length
            mem[(32 * _3216) + _3192 + ceil32(return_data.size) + 96 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
            mem[(32 * _3216) + _3192 + ceil32(return_data.size) + (32 * ('cd', 36).length) + 96] = 0
            idx = 0
            while idx < ('cd', 36).length - 1:
                require idx < mem[(32 * _3216) + _3192 + ceil32(return_data.size) + 64]
                require idx + 1 < mem[(32 * _3216) + _3192 + ceil32(return_data.size) + 64]
                if mem[(32 * idx) + (32 * _3216) + _3192 + ceil32(return_data.size) + 108 len 20] == mem[(32 * idx + 1) + (32 * _3216) + _3192 + ceil32(return_data.size) + 108 len 20]:
                    revert with 0, 32, 35, 0x2150616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 103 len 29]
                if mem[(32 * idx) + (32 * _3216) + _3192 + ceil32(return_data.size) + 108 len 20] < mem[(32 * idx + 1) + (32 * _3216) + _3192 + ceil32(return_data.size) + 108 len 20]:
                    if not mem[(32 * idx) + (32 * _3216) + _3192 + ceil32(return_data.size) + 108 len 20]:
                        revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                    require idx + 1 < mem[96]
                    _4448 = mem[(32 * idx + 1) + 128]
                    if mem[(32 * idx) + (32 * _3216) + _3192 + ceil32(return_data.size) + 108 len 20] == mem[(32 * idx) + (32 * _3216) + _3192 + ceil32(return_data.size) + 108 len 20]:
                        if idx < mem[(32 * _3216) + _3192 + ceil32(return_data.size) + 64] - 2:
                            _4472 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_4472 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_4472 + 36] = 0
                            mem[_4472 + 68] = _4448
                            mem[_4472 + 100] = address(ext_call.return_data[0])
                            mem[_4472 + 132] = 128
                            mem[_4472 + 164] = mem[_4472]
                            s = 0
                            while s < mem[_4472]:
                                mem[s + _4472 + 196] = mem[s + _4472 + 32]
                                s = s + 32
                                continue 
                            if not mem[_4472] % 32:
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _4448, address(ext_call.return_data[0]), 128, mem[_4472 + 164 len mem[_4472] + 32]
                            else:
                                mem[floor32(mem[_4472]) + _4472 + 196] = mem[floor32(mem[_4472]) + _4472 + -(mem[_4472] % 32) + 228 len mem[_4472] % 32]
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _4448, address(ext_call.return_data[0]), 128, mem[_4472], mem[_4472 + 196 len floor32(mem[_4472]) + 32]
                        else:
                            _4476 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_4476 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_4476 + 36] = 0
                            mem[_4476 + 68] = _4448
                            mem[_4476 + 100] = address(cd[68])
                            mem[_4476 + 132] = 128
                            mem[_4476 + 164] = mem[_4476]
                            s = 0
                            while s < mem[_4476]:
                                mem[s + _4476 + 196] = mem[s + _4476 + 32]
                                s = s + 32
                                continue 
                            if not mem[_4476] % 32:
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _4448, address(cd[68]), 128, mem[_4476 + 164 len mem[_4476] + 32]
                            else:
                                mem[floor32(mem[_4476]) + _4476 + 196] = mem[floor32(mem[_4476]) + _4476 + -(mem[_4476] % 32) + 228 len mem[_4476] % 32]
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _4448, address(cd[68]), 128, mem[_4476], mem[_4476 + 196 len floor32(mem[_4476]) + 32]
                    else:
                        if idx < mem[(32 * _3216) + _3192 + ceil32(return_data.size) + 64] - 2:
                            _4480 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_4480 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_4480 + 36] = _4448
                            mem[_4480 + 68] = 0
                            mem[_4480 + 100] = address(ext_call.return_data[0])
                            mem[_4480 + 132] = 128
                            mem[_4480 + 164] = mem[_4480]
                            s = 0
                            while s < mem[_4480]:
                                mem[s + _4480 + 196] = mem[s + _4480 + 32]
                                s = s + 32
                                continue 
                            if not mem[_4480] % 32:
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _4448, 0, address(ext_call.return_data[0]), 128, mem[_4480 + 164 len mem[_4480] + 32]
                            else:
                                mem[floor32(mem[_4480]) + _4480 + 196] = mem[floor32(mem[_4480]) + _4480 + -(mem[_4480] % 32) + 228 len mem[_4480] % 32]
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _4448, 0, address(ext_call.return_data[0]), 128, mem[_4480], mem[_4480 + 196 len floor32(mem[_4480]) + 32]
                        else:
                            _4484 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_4484 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_4484 + 36] = _4448
                            mem[_4484 + 68] = 0
                            mem[_4484 + 100] = address(cd[68])
                            mem[_4484 + 132] = 128
                            mem[_4484 + 164] = mem[_4484]
                            s = 0
                            while s < mem[_4484]:
                                mem[s + _4484 + 196] = mem[s + _4484 + 32]
                                s = s + 32
                                continue 
                            if not mem[_4484] % 32:
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _4448, 0, address(cd[68]), 128, mem[_4484 + 164 len mem[_4484] + 32]
                            else:
                                mem[floor32(mem[_4484]) + _4484 + 196] = mem[floor32(mem[_4484]) + _4484 + -(mem[_4484] % 32) + 228 len mem[_4484] % 32]
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _4448, 0, address(cd[68]), 128, mem[_4484], mem[_4484 + 196 len floor32(mem[_4484]) + 32]
                else:
                    if not mem[(32 * idx + 1) + (32 * _3216) + _3192 + ceil32(return_data.size) + 108 len 20]:
                        revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                    require idx + 1 < mem[96]
                    _4449 = mem[(32 * idx + 1) + 128]
                    if mem[(32 * idx) + (32 * _3216) + _3192 + ceil32(return_data.size) + 108 len 20] == mem[(32 * idx + 1) + (32 * _3216) + _3192 + ceil32(return_data.size) + 108 len 20]:
                        if idx < mem[(32 * _3216) + _3192 + ceil32(return_data.size) + 64] - 2:
                            _4488 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_4488 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_4488 + 36] = 0
                            mem[_4488 + 68] = _4449
                            mem[_4488 + 100] = address(ext_call.return_data[0])
                            mem[_4488 + 132] = 128
                            mem[_4488 + 164] = mem[_4488]
                            s = 0
                            while s < mem[_4488]:
                                mem[s + _4488 + 196] = mem[s + _4488 + 32]
                                s = s + 32
                                continue 
                            if not mem[_4488] % 32:
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _4449, address(ext_call.return_data[0]), 128, mem[_4488 + 164 len mem[_4488] + 32]
                            else:
                                mem[floor32(mem[_4488]) + _4488 + 196] = mem[floor32(mem[_4488]) + _4488 + -(mem[_4488] % 32) + 228 len mem[_4488] % 32]
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _4449, address(ext_call.return_data[0]), 128, mem[_4488], mem[_4488 + 196 len floor32(mem[_4488]) + 32]
                        else:
                            _4492 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_4492 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_4492 + 36] = 0
                            mem[_4492 + 68] = _4449
                            mem[_4492 + 100] = address(cd[68])
                            mem[_4492 + 132] = 128
                            mem[_4492 + 164] = mem[_4492]
                            s = 0
                            while s < mem[_4492]:
                                mem[s + _4492 + 196] = mem[s + _4492 + 32]
                                s = s + 32
                                continue 
                            if not mem[_4492] % 32:
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _4449, address(cd[68]), 128, mem[_4492 + 164 len mem[_4492] + 32]
                            else:
                                mem[floor32(mem[_4492]) + _4492 + 196] = mem[floor32(mem[_4492]) + _4492 + -(mem[_4492] % 32) + 228 len mem[_4492] % 32]
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _4449, address(cd[68]), 128, mem[_4492], mem[_4492 + 196 len floor32(mem[_4492]) + 32]
                    else:
                        if idx < mem[(32 * _3216) + _3192 + ceil32(return_data.size) + 64] - 2:
                            _4496 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_4496 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_4496 + 36] = _4449
                            mem[_4496 + 68] = 0
                            mem[_4496 + 100] = address(ext_call.return_data[0])
                            mem[_4496 + 132] = 128
                            mem[_4496 + 164] = mem[_4496]
                            s = 0
                            while s < mem[_4496]:
                                mem[s + _4496 + 196] = mem[s + _4496 + 32]
                                s = s + 32
                                continue 
                            if not mem[_4496] % 32:
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _4449, 0, address(ext_call.return_data[0]), 128, mem[_4496 + 164 len mem[_4496] + 32]
                            else:
                                mem[floor32(mem[_4496]) + _4496 + 196] = mem[floor32(mem[_4496]) + _4496 + -(mem[_4496] % 32) + 228 len mem[_4496] % 32]
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _4449, 0, address(ext_call.return_data[0]), 128, mem[_4496], mem[_4496 + 196 len floor32(mem[_4496]) + 32]
                        else:
                            _4500 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_4500 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_4500 + 36] = _4449
                            mem[_4500 + 68] = 0
                            mem[_4500 + 100] = address(cd[68])
                            mem[_4500 + 132] = 128
                            mem[_4500 + 164] = mem[_4500]
                            s = 0
                            while s < mem[_4500]:
                                mem[s + _4500 + 196] = mem[s + _4500 + 32]
                                s = s + 32
                                continue 
                            if not mem[_4500] % 32:
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _4449, 0, address(cd[68]), 128, mem[_4500 + 164 len mem[_4500] + 32]
                            else:
                                mem[floor32(mem[_4500]) + _4500 + 196] = mem[floor32(mem[_4500]) + _4500 + -(mem[_4500] % 32) + 228 len mem[_4500] % 32]
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _4449, 0, address(cd[68]), 128, mem[_4500], mem[_4500 + 196 len floor32(mem[_4500]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
        else:
            mem[64] = (32 * _3216) + _3192 + ceil32(return_data.size) + ceil32(return_data.size) + 65
            mem[(32 * _3216) + _3192 + ceil32(return_data.size) + 64] = return_data.size
            mem[(32 * _3216) + _3192 + ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 
                            32,
                            35,
                            0x535472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                            mem[(32 * _3216) + _3192 + ceil32(return_data.size) + ceil32(return_data.size) + 168 len 29]
            require mem[96] - 1 < mem[96]
            _4043 = mem[(32 * mem[96] - 1) + 128]
            mem[(32 * _3216) + _3192 + ceil32(return_data.size) + ceil32(return_data.size) + 69] = address(ext_call.return_data[0])
            mem[(32 * _3216) + _3192 + ceil32(return_data.size) + ceil32(return_data.size) + 101] = _4043
            require ext_code.size(WETHAddress)
            call WETHAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args address(ext_call.return_data[0]), _4043
            mem[(32 * _3216) + _3192 + ceil32(return_data.size) + ceil32(return_data.size) + 65] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            mem[64] = (32 * _3216) + _3192 + ceil32(return_data.size) + ceil32(return_data.size) + (32 * ('cd', 36).length) + 97
            mem[(32 * _3216) + _3192 + ceil32(return_data.size) + ceil32(return_data.size) + 65] = ('cd', 36).length
            mem[(32 * _3216) + _3192 + ceil32(return_data.size) + ceil32(return_data.size) + 97 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
            mem[(32 * _3216) + _3192 + ceil32(return_data.size) + ceil32(return_data.size) + (32 * ('cd', 36).length) + 97] = 0
            idx = 0
            while idx < ('cd', 36).length - 1:
                require idx < mem[(32 * _3216) + _3192 + ceil32(return_data.size) + ceil32(return_data.size) + 65]
                require idx + 1 < mem[(32 * _3216) + _3192 + ceil32(return_data.size) + ceil32(return_data.size) + 65]
                if mem[(32 * idx) + (32 * _3216) + _3192 + ceil32(return_data.size) + ceil32(return_data.size) + 109 len 20] == mem[(32 * idx + 1) + (32 * _3216) + _3192 + ceil32(return_data.size) + ceil32(return_data.size) + 109 len 20]:
                    revert with 0, 32, 35, 0x2150616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 103 len 29]
                if mem[(32 * idx) + (32 * _3216) + _3192 + ceil32(return_data.size) + ceil32(return_data.size) + 109 len 20] < mem[(32 * idx + 1) + (32 * _3216) + _3192 + ceil32(return_data.size) + ceil32(return_data.size) + 109 len 20]:
                    if not mem[(32 * idx) + (32 * _3216) + _3192 + ceil32(return_data.size) + ceil32(return_data.size) + 109 len 20]:
                        revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                    require idx + 1 < mem[96]
                    _4450 = mem[(32 * idx + 1) + 128]
                    if mem[(32 * idx) + (32 * _3216) + _3192 + ceil32(return_data.size) + ceil32(return_data.size) + 109 len 20] == mem[(32 * idx) + (32 * _3216) + _3192 + ceil32(return_data.size) + ceil32(return_data.size) + 109 len 20]:
                        if idx < mem[(32 * _3216) + _3192 + ceil32(return_data.size) + ceil32(return_data.size) + 65] - 2:
                            _4504 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_4504 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_4504 + 36] = 0
                            mem[_4504 + 68] = _4450
                            mem[_4504 + 100] = address(ext_call.return_data[0])
                            mem[_4504 + 132] = 128
                            mem[_4504 + 164] = mem[_4504]
                            s = 0
                            while s < mem[_4504]:
                                mem[s + _4504 + 196] = mem[s + _4504 + 32]
                                s = s + 32
                                continue 
                            if not mem[_4504] % 32:
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _4450, address(ext_call.return_data[0]), 128, mem[_4504 + 164 len mem[_4504] + 32]
                            else:
                                mem[floor32(mem[_4504]) + _4504 + 196] = mem[floor32(mem[_4504]) + _4504 + -(mem[_4504] % 32) + 228 len mem[_4504] % 32]
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _4450, address(ext_call.return_data[0]), 128, mem[_4504], mem[_4504 + 196 len floor32(mem[_4504]) + 32]
                        else:
                            _4508 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_4508 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_4508 + 36] = 0
                            mem[_4508 + 68] = _4450
                            mem[_4508 + 100] = address(cd[68])
                            mem[_4508 + 132] = 128
                            mem[_4508 + 164] = mem[_4508]
                            s = 0
                            while s < mem[_4508]:
                                mem[s + _4508 + 196] = mem[s + _4508 + 32]
                                s = s + 32
                                continue 
                            if not mem[_4508] % 32:
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _4450, address(cd[68]), 128, mem[_4508 + 164 len mem[_4508] + 32]
                            else:
                                mem[floor32(mem[_4508]) + _4508 + 196] = mem[floor32(mem[_4508]) + _4508 + -(mem[_4508] % 32) + 228 len mem[_4508] % 32]
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _4450, address(cd[68]), 128, mem[_4508], mem[_4508 + 196 len floor32(mem[_4508]) + 32]
                    else:
                        if idx < mem[(32 * _3216) + _3192 + ceil32(return_data.size) + ceil32(return_data.size) + 65] - 2:
                            _4512 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_4512 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_4512 + 36] = _4450
                            mem[_4512 + 68] = 0
                            mem[_4512 + 100] = address(ext_call.return_data[0])
                            mem[_4512 + 132] = 128
                            mem[_4512 + 164] = mem[_4512]
                            s = 0
                            while s < mem[_4512]:
                                mem[s + _4512 + 196] = mem[s + _4512 + 32]
                                s = s + 32
                                continue 
                            if not mem[_4512] % 32:
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _4450, 0, address(ext_call.return_data[0]), 128, mem[_4512 + 164 len mem[_4512] + 32]
                            else:
                                mem[floor32(mem[_4512]) + _4512 + 196] = mem[floor32(mem[_4512]) + _4512 + -(mem[_4512] % 32) + 228 len mem[_4512] % 32]
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _4450, 0, address(ext_call.return_data[0]), 128, mem[_4512], mem[_4512 + 196 len floor32(mem[_4512]) + 32]
                        else:
                            _4516 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_4516 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_4516 + 36] = _4450
                            mem[_4516 + 68] = 0
                            mem[_4516 + 100] = address(cd[68])
                            mem[_4516 + 132] = 128
                            mem[_4516 + 164] = mem[_4516]
                            s = 0
                            while s < mem[_4516]:
                                mem[s + _4516 + 196] = mem[s + _4516 + 32]
                                s = s + 32
                                continue 
                            if not mem[_4516] % 32:
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _4450, 0, address(cd[68]), 128, mem[_4516 + 164 len mem[_4516] + 32]
                            else:
                                mem[floor32(mem[_4516]) + _4516 + 196] = mem[floor32(mem[_4516]) + _4516 + -(mem[_4516] % 32) + 228 len mem[_4516] % 32]
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _4450, 0, address(cd[68]), 128, mem[_4516], mem[_4516 + 196 len floor32(mem[_4516]) + 32]
                else:
                    if not mem[(32 * idx + 1) + (32 * _3216) + _3192 + ceil32(return_data.size) + ceil32(return_data.size) + 109 len 20]:
                        revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                    require idx + 1 < mem[96]
                    _4451 = mem[(32 * idx + 1) + 128]
                    if mem[(32 * idx) + (32 * _3216) + _3192 + ceil32(return_data.size) + ceil32(return_data.size) + 109 len 20] == mem[(32 * idx + 1) + (32 * _3216) + _3192 + ceil32(return_data.size) + ceil32(return_data.size) + 109 len 20]:
                        if idx < mem[(32 * _3216) + _3192 + ceil32(return_data.size) + ceil32(return_data.size) + 65] - 2:
                            _4520 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_4520 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_4520 + 36] = 0
                            mem[_4520 + 68] = _4451
                            mem[_4520 + 100] = address(ext_call.return_data[0])
                            mem[_4520 + 132] = 128
                            mem[_4520 + 164] = mem[_4520]
                            s = 0
                            while s < mem[_4520]:
                                mem[s + _4520 + 196] = mem[s + _4520 + 32]
                                s = s + 32
                                continue 
                            if not mem[_4520] % 32:
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _4451, address(ext_call.return_data[0]), 128, mem[_4520 + 164 len mem[_4520] + 32]
                            else:
                                mem[floor32(mem[_4520]) + _4520 + 196] = mem[floor32(mem[_4520]) + _4520 + -(mem[_4520] % 32) + 228 len mem[_4520] % 32]
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _4451, address(ext_call.return_data[0]), 128, mem[_4520], mem[_4520 + 196 len floor32(mem[_4520]) + 32]
                        else:
                            _4524 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_4524 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_4524 + 36] = 0
                            mem[_4524 + 68] = _4451
                            mem[_4524 + 100] = address(cd[68])
                            mem[_4524 + 132] = 128
                            mem[_4524 + 164] = mem[_4524]
                            s = 0
                            while s < mem[_4524]:
                                mem[s + _4524 + 196] = mem[s + _4524 + 32]
                                s = s + 32
                                continue 
                            if not mem[_4524] % 32:
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _4451, address(cd[68]), 128, mem[_4524 + 164 len mem[_4524] + 32]
                            else:
                                mem[floor32(mem[_4524]) + _4524 + 196] = mem[floor32(mem[_4524]) + _4524 + -(mem[_4524] % 32) + 228 len mem[_4524] % 32]
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _4451, address(cd[68]), 128, mem[_4524], mem[_4524 + 196 len floor32(mem[_4524]) + 32]
                    else:
                        if idx < mem[(32 * _3216) + _3192 + ceil32(return_data.size) + ceil32(return_data.size) + 65] - 2:
                            _4528 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_4528 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_4528 + 36] = _4451
                            mem[_4528 + 68] = 0
                            mem[_4528 + 100] = address(ext_call.return_data[0])
                            mem[_4528 + 132] = 128
                            mem[_4528 + 164] = mem[_4528]
                            s = 0
                            while s < mem[_4528]:
                                mem[s + _4528 + 196] = mem[s + _4528 + 32]
                                s = s + 32
                                continue 
                            if not mem[_4528] % 32:
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _4451, 0, address(ext_call.return_data[0]), 128, mem[_4528 + 164 len mem[_4528] + 32]
                            else:
                                mem[floor32(mem[_4528]) + _4528 + 196] = mem[floor32(mem[_4528]) + _4528 + -(mem[_4528] % 32) + 228 len mem[_4528] % 32]
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _4451, 0, address(ext_call.return_data[0]), 128, mem[_4528], mem[_4528 + 196 len floor32(mem[_4528]) + 32]
                        else:
                            _4532 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_4532 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_4532 + 36] = _4451
                            mem[_4532 + 68] = 0
                            mem[_4532 + 100] = address(cd[68])
                            mem[_4532 + 132] = 128
                            mem[_4532 + 164] = mem[_4532]
                            s = 0
                            while s < mem[_4532]:
                                mem[s + _4532 + 196] = mem[s + _4532 + 32]
                                s = s + 32
                                continue 
                            if not mem[_4532] % 32:
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _4451, 0, address(cd[68]), 128, mem[_4532 + 164 len mem[_4532] + 32]
                            else:
                                mem[floor32(mem[_4532]) + _4532 + 196] = mem[floor32(mem[_4532]) + _4532 + -(mem[_4532] % 32) + 228 len mem[_4532] % 32]
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _4451, 0, address(cd[68]), 128, mem[_4532], mem[_4532 + 196 len floor32(mem[_4532]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
    else:
        mem[(32 * ('cd', 36).length) + 160 len 32 * ('cd', 36).length] = call.data[calldata.size len 32 * ('cd', 36).length]
        require 0 < ('cd', 36).length
        mem[(32 * ('cd', 36).length) + 160] = msg.value
        idx = 0
        while idx < ('cd', 36).length - 1:
            require idx < ('cd', 36).length
            _1288 = mem[(32 * idx) + 128]
            require idx + 1 < ('cd', 36).length
            _1293 = mem[(32 * idx + 1) + 128]
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
                require idx < mem[(32 * ('cd', 36).length) + 128]
                if mem[(32 * idx) + (32 * ('cd', 36).length) + 160] <= 0:
                    revert with 0, 
                                32,
                                41,
                                0xfe50616e63616b654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                mem[(64 * ('cd', 36).length) + 269 len 23]
                if address(_1288) == address(_1288):
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
                        require idx + 1 < mem[(32 * ('cd', 36).length) + 128]
                        require 0 < ('cd', 36).length
                        mem[128] = 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + (32 * ('cd', 36).length) + 160])
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
                        require idx + 1 < mem[(32 * ('cd', 36).length) + 128]
                        require 0 < ('cd', 36).length
                        mem[128] = 9975 * mem[(32 * idx) + (32 * ('cd', 36).length) + 160] * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + (32 * ('cd', 36).length) + 160])
                    require idx < ('cd', 36).length
                    if mem[(32 * idx) + 128] <= 0:
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
                    if 9975 * mem[(32 * idx) + 128] / 9975 != mem[(32 * idx) + 128]:
                        revert with 0, 'ds-math-mul-overflow'
                    if not Mask(112, 0, ext_call.return_data[0]):
                        if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + 128]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-add-overflow'
                        require (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + 128])
                        require idx + 1 < ('cd', 36).length
                        mem[(32 * idx + 1) + 128] = 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + 128])
                    else:
                        require Mask(112, 0, ext_call.return_data[0])
                        if 9975 * mem[(32 * idx) + 128] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 9975 * mem[(32 * idx) + 128]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + 128]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-add-overflow'
                        require (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + 128])
                        require idx + 1 < ('cd', 36).length
                        mem[(32 * idx + 1) + 128] = 9975 * mem[(32 * idx) + 128] * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + 128])
                else:
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
                        require idx + 1 < mem[(32 * ('cd', 36).length) + 128]
                        require 0 < ('cd', 36).length
                        mem[128] = 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + (32 * ('cd', 36).length) + 160])
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
                        require idx + 1 < mem[(32 * ('cd', 36).length) + 128]
                        require 0 < ('cd', 36).length
                        mem[128] = 9975 * mem[(32 * idx) + (32 * ('cd', 36).length) + 160] * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + (32 * ('cd', 36).length) + 160])
                    require idx < ('cd', 36).length
                    if mem[(32 * idx) + 128] <= 0:
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
                    if 9975 * mem[(32 * idx) + 128] / 9975 != mem[(32 * idx) + 128]:
                        revert with 0, 'ds-math-mul-overflow'
                    if not Mask(112, 0, ext_call.return_data[32]):
                        if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + 128]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-add-overflow'
                        require (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + 128])
                        require idx + 1 < ('cd', 36).length
                        mem[(32 * idx + 1) + 128] = 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + 128])
                    else:
                        require Mask(112, 0, ext_call.return_data[32])
                        if 9975 * mem[(32 * idx) + 128] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 9975 * mem[(32 * idx) + 128]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + 128]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-add-overflow'
                        require (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + 128])
                        require idx + 1 < ('cd', 36).length
                        mem[(32 * idx + 1) + 128] = 9975 * mem[(32 * idx) + 128] * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + 128])
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
                require idx < mem[(32 * ('cd', 36).length) + 128]
                if mem[(32 * idx) + (32 * ('cd', 36).length) + 160] <= 0:
                    revert with 0, 
                                32,
                                41,
                                0xfe50616e63616b654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                mem[(64 * ('cd', 36).length) + 269 len 23]
                if address(_1293) == address(_1288):
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
                        require idx + 1 < mem[(32 * ('cd', 36).length) + 128]
                        require 0 < ('cd', 36).length
                        mem[128] = 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + (32 * ('cd', 36).length) + 160])
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
                        require idx + 1 < mem[(32 * ('cd', 36).length) + 128]
                        require 0 < ('cd', 36).length
                        mem[128] = 9975 * mem[(32 * idx) + (32 * ('cd', 36).length) + 160] * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + (32 * ('cd', 36).length) + 160])
                    require idx < ('cd', 36).length
                    if mem[(32 * idx) + 128] <= 0:
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
                    if 9975 * mem[(32 * idx) + 128] / 9975 != mem[(32 * idx) + 128]:
                        revert with 0, 'ds-math-mul-overflow'
                    if not Mask(112, 0, ext_call.return_data[0]):
                        if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + 128]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-add-overflow'
                        require (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + 128])
                        require idx + 1 < ('cd', 36).length
                        mem[(32 * idx + 1) + 128] = 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + 128])
                    else:
                        require Mask(112, 0, ext_call.return_data[0])
                        if 9975 * mem[(32 * idx) + 128] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 9975 * mem[(32 * idx) + 128]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + 128]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-add-overflow'
                        require (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + 128])
                        require idx + 1 < ('cd', 36).length
                        mem[(32 * idx + 1) + 128] = 9975 * mem[(32 * idx) + 128] * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + 128])
                else:
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
                        require idx + 1 < mem[(32 * ('cd', 36).length) + 128]
                        require 0 < ('cd', 36).length
                        mem[128] = 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + (32 * ('cd', 36).length) + 160])
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
                        require idx + 1 < mem[(32 * ('cd', 36).length) + 128]
                        require 0 < ('cd', 36).length
                        mem[128] = 9975 * mem[(32 * idx) + (32 * ('cd', 36).length) + 160] * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + (32 * ('cd', 36).length) + 160])
                    require idx < ('cd', 36).length
                    if mem[(32 * idx) + 128] <= 0:
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
                    if 9975 * mem[(32 * idx) + 128] / 9975 != mem[(32 * idx) + 128]:
                        revert with 0, 'ds-math-mul-overflow'
                    if not Mask(112, 0, ext_call.return_data[32]):
                        if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + 128]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-add-overflow'
                        require (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + 128])
                        require idx + 1 < ('cd', 36).length
                        mem[(32 * idx + 1) + 128] = 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + 128])
                    else:
                        require Mask(112, 0, ext_call.return_data[32])
                        if 9975 * mem[(32 * idx) + 128] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 9975 * mem[(32 * idx) + 128]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + 128]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-add-overflow'
                        require (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + 128])
                        require idx + 1 < ('cd', 36).length
                        mem[(32 * idx + 1) + 128] = 9975 * mem[(32 * idx) + 128] * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + 128])
            idx = idx + 1
            continue 
        mem[(64 * ('cd', 36).length) + 160] = 2
        mem[64] = (64 * ('cd', 36).length) + 256
        require 1 < ('cd', 36).length
        mem[(64 * ('cd', 36).length) + 192] = address(('cd', 36)[1])
        require 0 < ('cd', 36).length
        mem[(64 * ('cd', 36).length) + 224] = address(('cd', 36)[0])
        require mem[(32 * ('cd', 36).length) + 128] - 1 < mem[(32 * ('cd', 36).length) + 128]
        if mem[(32 * mem[(32 * ('cd', 36).length) + 128] - 1) + (32 * ('cd', 36).length) + 160] < cd[4]:
            revert with 0, '-,'
        require 1 < ('cd', 36).length
        if mem[160] < msg.value * cd[100] / 100:
            revert with 0, '-,'
        require mem[(32 * ('cd', 36).length) + 128]
        mem[(64 * ('cd', 36).length) + 256] = 0xd0e30db000000000000000000000000000000000000000000000000000000000
        require ext_code.size(WETHAddress)
        call WETHAddress.deposit() with:
           value mem[(32 * ('cd', 36).length) + 160] wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require mem[(32 * ('cd', 36).length) + 128]
        mem[(64 * ('cd', 36).length) + 260] = address(ext_call.return_data[0])
        mem[(64 * ('cd', 36).length) + 292] = mem[(32 * ('cd', 36).length) + 160]
        require ext_code.size(WETHAddress)
        call WETHAddress.0xa9059cbb with:
             gas gas_remaining wei
            args address(ext_call.return_data[0]), mem[(32 * ('cd', 36).length) + 160]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        mem[64] = (98 * ('cd', 36).length) + 288
        mem[(64 * ('cd', 36).length) + 256] = ('cd', 36).length
        mem[(64 * ('cd', 36).length) + 288 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
        mem[(98 * ('cd', 36).length) + 288] = 0
        idx = 0
        while idx < ('cd', 36).length - 1:
            require idx < mem[(64 * ('cd', 36).length) + 256]
            require idx + 1 < mem[(64 * ('cd', 36).length) + 256]
            if mem[(32 * idx) + (64 * ('cd', 36).length) + 300 len 20] == mem[(32 * idx + 1) + (64 * ('cd', 36).length) + 300 len 20]:
                revert with 0, 32, 35, 0x2150616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 103 len 29]
            if mem[(32 * idx) + (64 * ('cd', 36).length) + 300 len 20] < mem[(32 * idx + 1) + (64 * ('cd', 36).length) + 300 len 20]:
                if not mem[(32 * idx) + (64 * ('cd', 36).length) + 300 len 20]:
                    revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                require idx + 1 < mem[(32 * ('cd', 36).length) + 128]
                _2598 = mem[(32 * idx + 1) + (32 * ('cd', 36).length) + 160]
                if mem[(32 * idx) + (64 * ('cd', 36).length) + 300 len 20] == mem[(32 * idx) + (64 * ('cd', 36).length) + 300 len 20]:
                    if idx < mem[(64 * ('cd', 36).length) + 256] - 2:
                        _2644 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_2644 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_2644 + 36] = 0
                        mem[_2644 + 68] = _2598
                        mem[_2644 + 100] = address(ext_call.return_data[0])
                        mem[_2644 + 132] = 128
                        mem[_2644 + 164] = mem[_2644]
                        s = 0
                        while s < mem[_2644]:
                            mem[s + _2644 + 196] = mem[s + _2644 + 32]
                            s = s + 32
                            continue 
                        if not mem[_2644] % 32:
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _2598, address(ext_call.return_data[0]), 128, mem[_2644 + 164 len mem[_2644] + 32]
                        else:
                            mem[floor32(mem[_2644]) + _2644 + 196] = mem[floor32(mem[_2644]) + _2644 + -(mem[_2644] % 32) + 228 len mem[_2644] % 32]
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _2598, address(ext_call.return_data[0]), 128, mem[_2644], mem[_2644 + 196 len floor32(mem[_2644]) + 32]
                    else:
                        _2648 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_2648 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_2648 + 36] = 0
                        mem[_2648 + 68] = _2598
                        mem[_2648 + 100] = address(cd[68])
                        mem[_2648 + 132] = 128
                        mem[_2648 + 164] = mem[_2648]
                        s = 0
                        while s < mem[_2648]:
                            mem[s + _2648 + 196] = mem[s + _2648 + 32]
                            s = s + 32
                            continue 
                        if not mem[_2648] % 32:
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _2598, address(cd[68]), 128, mem[_2648 + 164 len mem[_2648] + 32]
                        else:
                            mem[floor32(mem[_2648]) + _2648 + 196] = mem[floor32(mem[_2648]) + _2648 + -(mem[_2648] % 32) + 228 len mem[_2648] % 32]
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _2598, address(cd[68]), 128, mem[_2648], mem[_2648 + 196 len floor32(mem[_2648]) + 32]
                else:
                    if idx < mem[(64 * ('cd', 36).length) + 256] - 2:
                        _2652 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_2652 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_2652 + 36] = _2598
                        mem[_2652 + 68] = 0
                        mem[_2652 + 100] = address(ext_call.return_data[0])
                        mem[_2652 + 132] = 128
                        mem[_2652 + 164] = mem[_2652]
                        s = 0
                        while s < mem[_2652]:
                            mem[s + _2652 + 196] = mem[s + _2652 + 32]
                            s = s + 32
                            continue 
                        if not mem[_2652] % 32:
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _2598, 0, address(ext_call.return_data[0]), 128, mem[_2652 + 164 len mem[_2652] + 32]
                        else:
                            mem[floor32(mem[_2652]) + _2652 + 196] = mem[floor32(mem[_2652]) + _2652 + -(mem[_2652] % 32) + 228 len mem[_2652] % 32]
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _2598, 0, address(ext_call.return_data[0]), 128, mem[_2652], mem[_2652 + 196 len floor32(mem[_2652]) + 32]
                    else:
                        _2656 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_2656 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_2656 + 36] = _2598
                        mem[_2656 + 68] = 0
                        mem[_2656 + 100] = address(cd[68])
                        mem[_2656 + 132] = 128
                        mem[_2656 + 164] = mem[_2656]
                        s = 0
                        while s < mem[_2656]:
                            mem[s + _2656 + 196] = mem[s + _2656 + 32]
                            s = s + 32
                            continue 
                        if not mem[_2656] % 32:
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _2598, 0, address(cd[68]), 128, mem[_2656 + 164 len mem[_2656] + 32]
                        else:
                            mem[floor32(mem[_2656]) + _2656 + 196] = mem[floor32(mem[_2656]) + _2656 + -(mem[_2656] % 32) + 228 len mem[_2656] % 32]
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _2598, 0, address(cd[68]), 128, mem[_2656], mem[_2656 + 196 len floor32(mem[_2656]) + 32]
            else:
                if not mem[(32 * idx + 1) + (64 * ('cd', 36).length) + 300 len 20]:
                    revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                require idx + 1 < mem[(32 * ('cd', 36).length) + 128]
                _2599 = mem[(32 * idx + 1) + (32 * ('cd', 36).length) + 160]
                if mem[(32 * idx) + (64 * ('cd', 36).length) + 300 len 20] == mem[(32 * idx + 1) + (64 * ('cd', 36).length) + 300 len 20]:
                    if idx < mem[(64 * ('cd', 36).length) + 256] - 2:
                        _2660 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_2660 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_2660 + 36] = 0
                        mem[_2660 + 68] = _2599
                        mem[_2660 + 100] = address(ext_call.return_data[0])
                        mem[_2660 + 132] = 128
                        mem[_2660 + 164] = mem[_2660]
                        s = 0
                        while s < mem[_2660]:
                            mem[s + _2660 + 196] = mem[s + _2660 + 32]
                            s = s + 32
                            continue 
                        if not mem[_2660] % 32:
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _2599, address(ext_call.return_data[0]), 128, mem[_2660 + 164 len mem[_2660] + 32]
                        else:
                            mem[floor32(mem[_2660]) + _2660 + 196] = mem[floor32(mem[_2660]) + _2660 + -(mem[_2660] % 32) + 228 len mem[_2660] % 32]
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _2599, address(ext_call.return_data[0]), 128, mem[_2660], mem[_2660 + 196 len floor32(mem[_2660]) + 32]
                    else:
                        _2664 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_2664 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_2664 + 36] = 0
                        mem[_2664 + 68] = _2599
                        mem[_2664 + 100] = address(cd[68])
                        mem[_2664 + 132] = 128
                        mem[_2664 + 164] = mem[_2664]
                        s = 0
                        while s < mem[_2664]:
                            mem[s + _2664 + 196] = mem[s + _2664 + 32]
                            s = s + 32
                            continue 
                        if not mem[_2664] % 32:
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _2599, address(cd[68]), 128, mem[_2664 + 164 len mem[_2664] + 32]
                        else:
                            mem[floor32(mem[_2664]) + _2664 + 196] = mem[floor32(mem[_2664]) + _2664 + -(mem[_2664] % 32) + 228 len mem[_2664] % 32]
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _2599, address(cd[68]), 128, mem[_2664], mem[_2664 + 196 len floor32(mem[_2664]) + 32]
                else:
                    if idx < mem[(64 * ('cd', 36).length) + 256] - 2:
                        _2668 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_2668 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_2668 + 36] = _2599
                        mem[_2668 + 68] = 0
                        mem[_2668 + 100] = address(ext_call.return_data[0])
                        mem[_2668 + 132] = 128
                        mem[_2668 + 164] = mem[_2668]
                        s = 0
                        while s < mem[_2668]:
                            mem[s + _2668 + 196] = mem[s + _2668 + 32]
                            s = s + 32
                            continue 
                        if not mem[_2668] % 32:
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _2599, 0, address(ext_call.return_data[0]), 128, mem[_2668 + 164 len mem[_2668] + 32]
                        else:
                            mem[floor32(mem[_2668]) + _2668 + 196] = mem[floor32(mem[_2668]) + _2668 + -(mem[_2668] % 32) + 228 len mem[_2668] % 32]
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _2599, 0, address(ext_call.return_data[0]), 128, mem[_2668], mem[_2668 + 196 len floor32(mem[_2668]) + 32]
                    else:
                        _2672 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_2672 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_2672 + 36] = _2599
                        mem[_2672 + 68] = 0
                        mem[_2672 + 100] = address(cd[68])
                        mem[_2672 + 132] = 128
                        mem[_2672 + 164] = mem[_2672]
                        s = 0
                        while s < mem[_2672]:
                            mem[s + _2672 + 196] = mem[s + _2672 + 32]
                            s = s + 32
                            continue 
                        if not mem[_2672] % 32:
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _2599, 0, address(cd[68]), 128, mem[_2672 + 164 len mem[_2672] + 32]
                        else:
                            mem[floor32(mem[_2672]) + _2672 + 196] = mem[floor32(mem[_2672]) + _2672 + -(mem[_2672] % 32) + 228 len mem[_2672] % 32]
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _2599, 0, address(cd[68]), 128, mem[_2672], mem[_2672 + 196 len floor32(mem[_2672]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            continue 
        require 1 < mem[96]
        if mem[160] < msg.value * cd[132] / 100:
            revert with 0, '-,'
        require 1 < mem[96]
        _2568 = mem[160]
        mem[mem[64]] = 0x3f4e48bb00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = address(ext_call.return_data[0])
        mem[mem[64] + 36] = _2568
        mem[mem[64] + 68] = msg.value * cd[132] / 100
        mem[mem[64] + 132] = this.address
        mem[mem[64] + 100] = 160
        mem[mem[64] + 164] = mem[(64 * ('cd', 36).length) + 160]
        _2571 = mem[(64 * ('cd', 36).length) + 160]
        mem[mem[64] + 196 len floor32(mem[(64 * ('cd', 36).length) + 160])] = mem[(64 * ('cd', 36).length) + 192 len floor32(mem[(64 * ('cd', 36).length) + 160])]
        require ext_code.size(this.address)
        call this.address.0x3f4e48bb with:
             gas gas_remaining wei
            args address(ext_call.return_data[0]), _2568, msg.value * cd[132] / 100, 160, address(this.address), mem[mem[64] + 164 len (32 * _2571) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _3201 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _3212 = mem[_3201]
        require mem[_3201] <= 4294967296
        require mem[_3201] + 32 <= return_data.size
        require mem[_3201 + mem[_3201]] <= 4294967296 and mem[_3201] + (32 * mem[_3201 + mem[_3201]]) + 32 <= return_data.size
        mem[_3201 + ceil32(return_data.size)] = mem[_3201 + mem[_3201]]
        _3217 = mem[_3201 + _3212]
        mem[_3201 + ceil32(return_data.size) + 32 len floor32(mem[_3201 + _3212])] = mem[_3201 + _3212 + 32 len floor32(mem[_3201 + _3212])]
        require mem[96] - 1 < mem[96]
        _3625 = mem[(32 * mem[96] - 1) + 128]
        mem[(32 * _3217) + _3201 + ceil32(return_data.size) + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
        mem[(32 * _3217) + _3201 + ceil32(return_data.size) + 36] = _3625
        require ext_code.size(WETHAddress)
        call WETHAddress.withdraw(uint256 arg1) with:
             gas gas_remaining wei
            args _3625
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require mem[96] - 1 < mem[96]
        _3633 = mem[(32 * mem[96] - 1) + 128]
        mem[(32 * _3217) + _3201 + ceil32(return_data.size) + 32] = 0
        mem[64] = (32 * _3217) + _3201 + ceil32(return_data.size) + 64
        mem[(32 * _3217) + _3201 + ceil32(return_data.size) + 64 len 0] = None
        mem[(32 * _3217) + _3201 + ceil32(return_data.size) + 64] = None or uint32(_3625), mem[(32 * _3217) + _3201 + ceil32(return_data.size) + 68 len 28]
        call this.address with:
           value _3633 wei
             gas gas_remaining wei
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 
                            32,
                            35,
                            0x535472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                            mem[(32 * _3217) + _3201 + ceil32(return_data.size) + 167 len 29]
            require mem[96] - 1 < mem[96]
            _4046 = mem[(32 * mem[96] - 1) + 128]
            mem[(32 * _3217) + _3201 + ceil32(return_data.size) + 68] = address(ext_call.return_data[0])
            mem[(32 * _3217) + _3201 + ceil32(return_data.size) + 100] = _4046
            require ext_code.size(WETHAddress)
            call WETHAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args address(ext_call.return_data[0]), _4046
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            mem[64] = (32 * _3217) + _3201 + ceil32(return_data.size) + (32 * ('cd', 36).length) + 96
            mem[(32 * _3217) + _3201 + ceil32(return_data.size) + 64] = ('cd', 36).length
            mem[(32 * _3217) + _3201 + ceil32(return_data.size) + 96 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
            mem[(32 * _3217) + _3201 + ceil32(return_data.size) + (32 * ('cd', 36).length) + 96] = 0
            idx = 0
            while idx < ('cd', 36).length - 1:
                require idx < mem[(32 * _3217) + _3201 + ceil32(return_data.size) + 64]
                require idx + 1 < mem[(32 * _3217) + _3201 + ceil32(return_data.size) + 64]
                if mem[(32 * idx) + (32 * _3217) + _3201 + ceil32(return_data.size) + 108 len 20] == mem[(32 * idx + 1) + (32 * _3217) + _3201 + ceil32(return_data.size) + 108 len 20]:
                    revert with 0, 32, 35, 0x2150616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 103 len 29]
                if mem[(32 * idx) + (32 * _3217) + _3201 + ceil32(return_data.size) + 108 len 20] < mem[(32 * idx + 1) + (32 * _3217) + _3201 + ceil32(return_data.size) + 108 len 20]:
                    if not mem[(32 * idx) + (32 * _3217) + _3201 + ceil32(return_data.size) + 108 len 20]:
                        revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                    require idx + 1 < mem[96]
                    _4452 = mem[(32 * idx + 1) + 128]
                    if mem[(32 * idx) + (32 * _3217) + _3201 + ceil32(return_data.size) + 108 len 20] == mem[(32 * idx) + (32 * _3217) + _3201 + ceil32(return_data.size) + 108 len 20]:
                        if idx < mem[(32 * _3217) + _3201 + ceil32(return_data.size) + 64] - 2:
                            _4536 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_4536 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_4536 + 36] = 0
                            mem[_4536 + 68] = _4452
                            mem[_4536 + 100] = address(ext_call.return_data[0])
                            mem[_4536 + 132] = 128
                            mem[_4536 + 164] = mem[_4536]
                            s = 0
                            while s < mem[_4536]:
                                mem[s + _4536 + 196] = mem[s + _4536 + 32]
                                s = s + 32
                                continue 
                            if not mem[_4536] % 32:
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _4452, address(ext_call.return_data[0]), 128, mem[_4536 + 164 len mem[_4536] + 32]
                            else:
                                mem[floor32(mem[_4536]) + _4536 + 196] = mem[floor32(mem[_4536]) + _4536 + -(mem[_4536] % 32) + 228 len mem[_4536] % 32]
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _4452, address(ext_call.return_data[0]), 128, mem[_4536], mem[_4536 + 196 len floor32(mem[_4536]) + 32]
                        else:
                            _4540 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_4540 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_4540 + 36] = 0
                            mem[_4540 + 68] = _4452
                            mem[_4540 + 100] = address(cd[68])
                            mem[_4540 + 132] = 128
                            mem[_4540 + 164] = mem[_4540]
                            s = 0
                            while s < mem[_4540]:
                                mem[s + _4540 + 196] = mem[s + _4540 + 32]
                                s = s + 32
                                continue 
                            if not mem[_4540] % 32:
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _4452, address(cd[68]), 128, mem[_4540 + 164 len mem[_4540] + 32]
                            else:
                                mem[floor32(mem[_4540]) + _4540 + 196] = mem[floor32(mem[_4540]) + _4540 + -(mem[_4540] % 32) + 228 len mem[_4540] % 32]
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _4452, address(cd[68]), 128, mem[_4540], mem[_4540 + 196 len floor32(mem[_4540]) + 32]
                    else:
                        if idx < mem[(32 * _3217) + _3201 + ceil32(return_data.size) + 64] - 2:
                            _4544 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_4544 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_4544 + 36] = _4452
                            mem[_4544 + 68] = 0
                            mem[_4544 + 100] = address(ext_call.return_data[0])
                            mem[_4544 + 132] = 128
                            mem[_4544 + 164] = mem[_4544]
                            s = 0
                            while s < mem[_4544]:
                                mem[s + _4544 + 196] = mem[s + _4544 + 32]
                                s = s + 32
                                continue 
                            if not mem[_4544] % 32:
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _4452, 0, address(ext_call.return_data[0]), 128, mem[_4544 + 164 len mem[_4544] + 32]
                            else:
                                mem[floor32(mem[_4544]) + _4544 + 196] = mem[floor32(mem[_4544]) + _4544 + -(mem[_4544] % 32) + 228 len mem[_4544] % 32]
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _4452, 0, address(ext_call.return_data[0]), 128, mem[_4544], mem[_4544 + 196 len floor32(mem[_4544]) + 32]
                        else:
                            _4548 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_4548 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_4548 + 36] = _4452
                            mem[_4548 + 68] = 0
                            mem[_4548 + 100] = address(cd[68])
                            mem[_4548 + 132] = 128
                            mem[_4548 + 164] = mem[_4548]
                            s = 0
                            while s < mem[_4548]:
                                mem[s + _4548 + 196] = mem[s + _4548 + 32]
                                s = s + 32
                                continue 
                            if not mem[_4548] % 32:
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _4452, 0, address(cd[68]), 128, mem[_4548 + 164 len mem[_4548] + 32]
                            else:
                                mem[floor32(mem[_4548]) + _4548 + 196] = mem[floor32(mem[_4548]) + _4548 + -(mem[_4548] % 32) + 228 len mem[_4548] % 32]
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _4452, 0, address(cd[68]), 128, mem[_4548], mem[_4548 + 196 len floor32(mem[_4548]) + 32]
                else:
                    if not mem[(32 * idx + 1) + (32 * _3217) + _3201 + ceil32(return_data.size) + 108 len 20]:
                        revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                    require idx + 1 < mem[96]
                    _4453 = mem[(32 * idx + 1) + 128]
                    if mem[(32 * idx) + (32 * _3217) + _3201 + ceil32(return_data.size) + 108 len 20] == mem[(32 * idx + 1) + (32 * _3217) + _3201 + ceil32(return_data.size) + 108 len 20]:
                        if idx < mem[(32 * _3217) + _3201 + ceil32(return_data.size) + 64] - 2:
                            _4552 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_4552 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_4552 + 36] = 0
                            mem[_4552 + 68] = _4453
                            mem[_4552 + 100] = address(ext_call.return_data[0])
                            mem[_4552 + 132] = 128
                            mem[_4552 + 164] = mem[_4552]
                            s = 0
                            while s < mem[_4552]:
                                mem[s + _4552 + 196] = mem[s + _4552 + 32]
                                s = s + 32
                                continue 
                            if not mem[_4552] % 32:
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _4453, address(ext_call.return_data[0]), 128, mem[_4552 + 164 len mem[_4552] + 32]
                            else:
                                mem[floor32(mem[_4552]) + _4552 + 196] = mem[floor32(mem[_4552]) + _4552 + -(mem[_4552] % 32) + 228 len mem[_4552] % 32]
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _4453, address(ext_call.return_data[0]), 128, mem[_4552], mem[_4552 + 196 len floor32(mem[_4552]) + 32]
                        else:
                            _4556 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_4556 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_4556 + 36] = 0
                            mem[_4556 + 68] = _4453
                            mem[_4556 + 100] = address(cd[68])
                            mem[_4556 + 132] = 128
                            mem[_4556 + 164] = mem[_4556]
                            s = 0
                            while s < mem[_4556]:
                                mem[s + _4556 + 196] = mem[s + _4556 + 32]
                                s = s + 32
                                continue 
                            if not mem[_4556] % 32:
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _4453, address(cd[68]), 128, mem[_4556 + 164 len mem[_4556] + 32]
                            else:
                                mem[floor32(mem[_4556]) + _4556 + 196] = mem[floor32(mem[_4556]) + _4556 + -(mem[_4556] % 32) + 228 len mem[_4556] % 32]
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _4453, address(cd[68]), 128, mem[_4556], mem[_4556 + 196 len floor32(mem[_4556]) + 32]
                    else:
                        if idx < mem[(32 * _3217) + _3201 + ceil32(return_data.size) + 64] - 2:
                            _4560 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_4560 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_4560 + 36] = _4453
                            mem[_4560 + 68] = 0
                            mem[_4560 + 100] = address(ext_call.return_data[0])
                            mem[_4560 + 132] = 128
                            mem[_4560 + 164] = mem[_4560]
                            s = 0
                            while s < mem[_4560]:
                                mem[s + _4560 + 196] = mem[s + _4560 + 32]
                                s = s + 32
                                continue 
                            if not mem[_4560] % 32:
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _4453, 0, address(ext_call.return_data[0]), 128, mem[_4560 + 164 len mem[_4560] + 32]
                            else:
                                mem[floor32(mem[_4560]) + _4560 + 196] = mem[floor32(mem[_4560]) + _4560 + -(mem[_4560] % 32) + 228 len mem[_4560] % 32]
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _4453, 0, address(ext_call.return_data[0]), 128, mem[_4560], mem[_4560 + 196 len floor32(mem[_4560]) + 32]
                        else:
                            _4564 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_4564 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_4564 + 36] = _4453
                            mem[_4564 + 68] = 0
                            mem[_4564 + 100] = address(cd[68])
                            mem[_4564 + 132] = 128
                            mem[_4564 + 164] = mem[_4564]
                            s = 0
                            while s < mem[_4564]:
                                mem[s + _4564 + 196] = mem[s + _4564 + 32]
                                s = s + 32
                                continue 
                            if not mem[_4564] % 32:
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _4453, 0, address(cd[68]), 128, mem[_4564 + 164 len mem[_4564] + 32]
                            else:
                                mem[floor32(mem[_4564]) + _4564 + 196] = mem[floor32(mem[_4564]) + _4564 + -(mem[_4564] % 32) + 228 len mem[_4564] % 32]
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _4453, 0, address(cd[68]), 128, mem[_4564], mem[_4564 + 196 len floor32(mem[_4564]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
        else:
            mem[64] = (32 * _3217) + _3201 + ceil32(return_data.size) + ceil32(return_data.size) + 65
            mem[(32 * _3217) + _3201 + ceil32(return_data.size) + 64] = return_data.size
            mem[(32 * _3217) + _3201 + ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 
                            32,
                            35,
                            0x535472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                            mem[(32 * _3217) + _3201 + ceil32(return_data.size) + ceil32(return_data.size) + 168 len 29]
            require mem[96] - 1 < mem[96]
            _4049 = mem[(32 * mem[96] - 1) + 128]
            mem[(32 * _3217) + _3201 + ceil32(return_data.size) + ceil32(return_data.size) + 69] = address(ext_call.return_data[0])
            mem[(32 * _3217) + _3201 + ceil32(return_data.size) + ceil32(return_data.size) + 101] = _4049
            require ext_code.size(WETHAddress)
            call WETHAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args address(ext_call.return_data[0]), _4049
            mem[(32 * _3217) + _3201 + ceil32(return_data.size) + ceil32(return_data.size) + 65] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            mem[64] = (32 * _3217) + _3201 + ceil32(return_data.size) + ceil32(return_data.size) + (32 * ('cd', 36).length) + 97
            mem[(32 * _3217) + _3201 + ceil32(return_data.size) + ceil32(return_data.size) + 65] = ('cd', 36).length
            mem[(32 * _3217) + _3201 + ceil32(return_data.size) + ceil32(return_data.size) + 97 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
            mem[(32 * _3217) + _3201 + ceil32(return_data.size) + ceil32(return_data.size) + (32 * ('cd', 36).length) + 97] = 0
            idx = 0
            while idx < ('cd', 36).length - 1:
                require idx < mem[(32 * _3217) + _3201 + ceil32(return_data.size) + ceil32(return_data.size) + 65]
                require idx + 1 < mem[(32 * _3217) + _3201 + ceil32(return_data.size) + ceil32(return_data.size) + 65]
                if mem[(32 * idx) + (32 * _3217) + _3201 + ceil32(return_data.size) + ceil32(return_data.size) + 109 len 20] == mem[(32 * idx + 1) + (32 * _3217) + _3201 + ceil32(return_data.size) + ceil32(return_data.size) + 109 len 20]:
                    revert with 0, 32, 35, 0x2150616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 103 len 29]
                if mem[(32 * idx) + (32 * _3217) + _3201 + ceil32(return_data.size) + ceil32(return_data.size) + 109 len 20] < mem[(32 * idx + 1) + (32 * _3217) + _3201 + ceil32(return_data.size) + ceil32(return_data.size) + 109 len 20]:
                    if not mem[(32 * idx) + (32 * _3217) + _3201 + ceil32(return_data.size) + ceil32(return_data.size) + 109 len 20]:
                        revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                    require idx + 1 < mem[96]
                    _4454 = mem[(32 * idx + 1) + 128]
                    if mem[(32 * idx) + (32 * _3217) + _3201 + ceil32(return_data.size) + ceil32(return_data.size) + 109 len 20] == mem[(32 * idx) + (32 * _3217) + _3201 + ceil32(return_data.size) + ceil32(return_data.size) + 109 len 20]:
                        if idx < mem[(32 * _3217) + _3201 + ceil32(return_data.size) + ceil32(return_data.size) + 65] - 2:
                            _4568 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_4568 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_4568 + 36] = 0
                            mem[_4568 + 68] = _4454
                            mem[_4568 + 100] = address(ext_call.return_data[0])
                            mem[_4568 + 132] = 128
                            mem[_4568 + 164] = mem[_4568]
                            s = 0
                            while s < mem[_4568]:
                                mem[s + _4568 + 196] = mem[s + _4568 + 32]
                                s = s + 32
                                continue 
                            if not mem[_4568] % 32:
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _4454, address(ext_call.return_data[0]), 128, mem[_4568 + 164 len mem[_4568] + 32]
                            else:
                                mem[floor32(mem[_4568]) + _4568 + 196] = mem[floor32(mem[_4568]) + _4568 + -(mem[_4568] % 32) + 228 len mem[_4568] % 32]
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _4454, address(ext_call.return_data[0]), 128, mem[_4568], mem[_4568 + 196 len floor32(mem[_4568]) + 32]
                        else:
                            _4572 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_4572 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_4572 + 36] = 0
                            mem[_4572 + 68] = _4454
                            mem[_4572 + 100] = address(cd[68])
                            mem[_4572 + 132] = 128
                            mem[_4572 + 164] = mem[_4572]
                            s = 0
                            while s < mem[_4572]:
                                mem[s + _4572 + 196] = mem[s + _4572 + 32]
                                s = s + 32
                                continue 
                            if not mem[_4572] % 32:
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _4454, address(cd[68]), 128, mem[_4572 + 164 len mem[_4572] + 32]
                            else:
                                mem[floor32(mem[_4572]) + _4572 + 196] = mem[floor32(mem[_4572]) + _4572 + -(mem[_4572] % 32) + 228 len mem[_4572] % 32]
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _4454, address(cd[68]), 128, mem[_4572], mem[_4572 + 196 len floor32(mem[_4572]) + 32]
                    else:
                        if idx < mem[(32 * _3217) + _3201 + ceil32(return_data.size) + ceil32(return_data.size) + 65] - 2:
                            _4576 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_4576 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_4576 + 36] = _4454
                            mem[_4576 + 68] = 0
                            mem[_4576 + 100] = address(ext_call.return_data[0])
                            mem[_4576 + 132] = 128
                            mem[_4576 + 164] = mem[_4576]
                            s = 0
                            while s < mem[_4576]:
                                mem[s + _4576 + 196] = mem[s + _4576 + 32]
                                s = s + 32
                                continue 
                            if not mem[_4576] % 32:
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _4454, 0, address(ext_call.return_data[0]), 128, mem[_4576 + 164 len mem[_4576] + 32]
                            else:
                                mem[floor32(mem[_4576]) + _4576 + 196] = mem[floor32(mem[_4576]) + _4576 + -(mem[_4576] % 32) + 228 len mem[_4576] % 32]
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _4454, 0, address(ext_call.return_data[0]), 128, mem[_4576], mem[_4576 + 196 len floor32(mem[_4576]) + 32]
                        else:
                            _4580 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_4580 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_4580 + 36] = _4454
                            mem[_4580 + 68] = 0
                            mem[_4580 + 100] = address(cd[68])
                            mem[_4580 + 132] = 128
                            mem[_4580 + 164] = mem[_4580]
                            s = 0
                            while s < mem[_4580]:
                                mem[s + _4580 + 196] = mem[s + _4580 + 32]
                                s = s + 32
                                continue 
                            if not mem[_4580] % 32:
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _4454, 0, address(cd[68]), 128, mem[_4580 + 164 len mem[_4580] + 32]
                            else:
                                mem[floor32(mem[_4580]) + _4580 + 196] = mem[floor32(mem[_4580]) + _4580 + -(mem[_4580] % 32) + 228 len mem[_4580] % 32]
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _4454, 0, address(cd[68]), 128, mem[_4580], mem[_4580 + 196 len floor32(mem[_4580]) + 32]
                else:
                    if not mem[(32 * idx + 1) + (32 * _3217) + _3201 + ceil32(return_data.size) + ceil32(return_data.size) + 109 len 20]:
                        revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                    require idx + 1 < mem[96]
                    _4455 = mem[(32 * idx + 1) + 128]
                    if mem[(32 * idx) + (32 * _3217) + _3201 + ceil32(return_data.size) + ceil32(return_data.size) + 109 len 20] == mem[(32 * idx + 1) + (32 * _3217) + _3201 + ceil32(return_data.size) + ceil32(return_data.size) + 109 len 20]:
                        if idx < mem[(32 * _3217) + _3201 + ceil32(return_data.size) + ceil32(return_data.size) + 65] - 2:
                            _4584 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_4584 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_4584 + 36] = 0
                            mem[_4584 + 68] = _4455
                            mem[_4584 + 100] = address(ext_call.return_data[0])
                            mem[_4584 + 132] = 128
                            mem[_4584 + 164] = mem[_4584]
                            s = 0
                            while s < mem[_4584]:
                                mem[s + _4584 + 196] = mem[s + _4584 + 32]
                                s = s + 32
                                continue 
                            if not mem[_4584] % 32:
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _4455, address(ext_call.return_data[0]), 128, mem[_4584 + 164 len mem[_4584] + 32]
                            else:
                                mem[floor32(mem[_4584]) + _4584 + 196] = mem[floor32(mem[_4584]) + _4584 + -(mem[_4584] % 32) + 228 len mem[_4584] % 32]
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _4455, address(ext_call.return_data[0]), 128, mem[_4584], mem[_4584 + 196 len floor32(mem[_4584]) + 32]
                        else:
                            _4588 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_4588 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_4588 + 36] = 0
                            mem[_4588 + 68] = _4455
                            mem[_4588 + 100] = address(cd[68])
                            mem[_4588 + 132] = 128
                            mem[_4588 + 164] = mem[_4588]
                            s = 0
                            while s < mem[_4588]:
                                mem[s + _4588 + 196] = mem[s + _4588 + 32]
                                s = s + 32
                                continue 
                            if not mem[_4588] % 32:
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _4455, address(cd[68]), 128, mem[_4588 + 164 len mem[_4588] + 32]
                            else:
                                mem[floor32(mem[_4588]) + _4588 + 196] = mem[floor32(mem[_4588]) + _4588 + -(mem[_4588] % 32) + 228 len mem[_4588] % 32]
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _4455, address(cd[68]), 128, mem[_4588], mem[_4588 + 196 len floor32(mem[_4588]) + 32]
                    else:
                        if idx < mem[(32 * _3217) + _3201 + ceil32(return_data.size) + ceil32(return_data.size) + 65] - 2:
                            _4592 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_4592 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_4592 + 36] = _4455
                            mem[_4592 + 68] = 0
                            mem[_4592 + 100] = address(ext_call.return_data[0])
                            mem[_4592 + 132] = 128
                            mem[_4592 + 164] = mem[_4592]
                            s = 0
                            while s < mem[_4592]:
                                mem[s + _4592 + 196] = mem[s + _4592 + 32]
                                s = s + 32
                                continue 
                            if not mem[_4592] % 32:
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _4455, 0, address(ext_call.return_data[0]), 128, mem[_4592 + 164 len mem[_4592] + 32]
                            else:
                                mem[floor32(mem[_4592]) + _4592 + 196] = mem[floor32(mem[_4592]) + _4592 + -(mem[_4592] % 32) + 228 len mem[_4592] % 32]
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _4455, 0, address(ext_call.return_data[0]), 128, mem[_4592], mem[_4592 + 196 len floor32(mem[_4592]) + 32]
                        else:
                            _4596 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_4596 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_4596 + 36] = _4455
                            mem[_4596 + 68] = 0
                            mem[_4596 + 100] = address(cd[68])
                            mem[_4596 + 132] = 128
                            mem[_4596 + 164] = mem[_4596]
                            s = 0
                            while s < mem[_4596]:
                                mem[s + _4596 + 196] = mem[s + _4596 + 32]
                                s = s + 32
                                continue 
                            if not mem[_4596] % 32:
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _4455, 0, address(cd[68]), 128, mem[_4596 + 164 len mem[_4596] + 32]
                            else:
                                mem[floor32(mem[_4596]) + _4596 + 196] = mem[floor32(mem[_4596]) + _4596 + -(mem[_4596] % 32) + 228 len mem[_4596] % 32]
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _4455, 0, address(cd[68]), 128, mem[_4596], mem[_4596 + 196 len floor32(mem[_4596]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
}



}
